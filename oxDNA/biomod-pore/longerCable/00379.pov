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
	<24.154001, 34.402393, 35.026932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209724, 34.790745, 35.104889>,  <24.243158, 35.023758, 35.151665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209724, 34.790745, 35.104889>,  <24.154001, 34.402393, 35.026932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209724, 34.790745, 35.104889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818088, -0.223733, 0.529788,
		0.557966, 0.085639, -0.825433,
		0.139306, 0.970881, 0.194896,
		24.251516, 35.082008, 35.163357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377220, 34.452751, 34.322056>,  <24.154001, 34.402393, 35.026932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377220, 34.452751, 34.322056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513844, 34.696701, 34.608101>,  <24.595818, 34.843071, 34.779728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513844, 34.696701, 34.608101>,  <24.377220, 34.452751, 34.322056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513844, 34.696701, 34.608101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930280, -0.111022, -0.349647,
		-0.133848, 0.784682, -0.605276,
		0.341561, 0.609876, 0.715114,
		24.616312, 34.879665, 34.822636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731951, 35.043785, 33.982567>,  <24.377220, 34.452751, 34.322056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731951, 35.043785, 33.982567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848196, 34.941021, 34.351250>,  <24.917944, 34.879364, 34.572460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848196, 34.941021, 34.351250>,  <24.731951, 35.043785, 33.982567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848196, 34.941021, 34.351250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927101, -0.162692, -0.337663,
		0.236702, 0.952643, 0.190900,
		0.290614, -0.256909, 0.921706,
		24.935381, 34.863949, 34.627762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391233, 35.447437, 34.055355>,  <24.731951, 35.043785, 33.982567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391233, 35.447437, 34.055355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389622, 35.142639, 34.314384>,  <25.388655, 34.959763, 34.469803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389622, 35.142639, 34.314384>,  <25.391233, 35.447437, 34.055355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389622, 35.142639, 34.314384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947043, -0.210835, -0.242196,
		0.321083, 0.612303, 0.722489,
		-0.004029, -0.761993, 0.647573,
		25.388412, 34.914040, 34.508656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986794, 35.467201, 34.513683>,  <25.391233, 35.447437, 34.055355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986794, 35.467201, 34.513683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892746, 35.078636, 34.500580>,  <25.836317, 34.845497, 34.492718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892746, 35.078636, 34.500580>,  <25.986794, 35.467201, 34.513683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892746, 35.078636, 34.500580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956289, -0.225165, -0.186580,
		0.173871, -0.075194, 0.981894,
		-0.235118, -0.971415, -0.032757,
		25.822210, 34.787212, 34.490753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642466, 35.319466, 34.584743>,  <25.986794, 35.467201, 34.513683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642466, 35.319466, 34.584743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505642, 34.972290, 34.440697>,  <26.423548, 34.763985, 34.354271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505642, 34.972290, 34.440697>,  <26.642466, 35.319466, 34.584743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505642, 34.972290, 34.440697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916256, -0.223036, -0.332761,
		0.208498, -0.443779, 0.871544,
		-0.342058, -0.867937, -0.360113,
		26.403025, 34.711910, 34.332664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110943, 34.855679, 34.773560>,  <26.642466, 35.319466, 34.584743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110943, 34.855679, 34.773560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912024, 34.686657, 34.470470>,  <26.792673, 34.585243, 34.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912024, 34.686657, 34.470470>,  <27.110943, 34.855679, 34.773560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912024, 34.686657, 34.470470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854234, -0.391087, -0.342543,
		-0.151595, -0.817620, 0.555442,
		-0.497296, -0.422550, -0.757726,
		26.762835, 34.559891, 34.243153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421236, 34.077816, 34.724243>,  <27.110943, 34.855679, 34.773560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421236, 34.077816, 34.724243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248341, 34.190052, 34.381447>,  <27.144604, 34.257393, 34.175770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248341, 34.190052, 34.381447>,  <27.421236, 34.077816, 34.724243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248341, 34.190052, 34.381447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806327, -0.305237, -0.506623,
		-0.403739, -0.910000, -0.094312,
		-0.432239, 0.280590, -0.856994,
		27.118670, 34.274227, 34.124348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439888, 33.469311, 34.312298>,  <27.421236, 34.077816, 34.724243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439888, 33.469311, 34.312298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432831, 33.787800, 34.070400>,  <27.428596, 33.978893, 33.925262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432831, 33.787800, 34.070400>,  <27.439888, 33.469311, 34.312298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432831, 33.787800, 34.070400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720877, -0.408993, -0.559518,
		-0.692838, -0.445821, -0.566762,
		-0.017643, 0.796222, -0.604748,
		27.427538, 34.026665, 33.888977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510456, 33.210403, 33.683914>,  <27.439888, 33.469311, 34.312298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510456, 33.210403, 33.683914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589981, 33.591141, 33.590561>,  <27.637697, 33.819584, 33.534550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589981, 33.591141, 33.590561>,  <27.510456, 33.210403, 33.683914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589981, 33.591141, 33.590561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640257, -0.306441, -0.704390,
		-0.741986, -0.009381, -0.670350,
		0.198815, 0.951844, -0.233381,
		27.649626, 33.876694, 33.520546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425863, 33.245445, 32.917889>,  <27.510456, 33.210403, 33.683914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425863, 33.245445, 32.917889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657936, 33.538593, 33.060036>,  <27.797180, 33.714481, 33.145325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657936, 33.538593, 33.060036>,  <27.425863, 33.245445, 32.917889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657936, 33.538593, 33.060036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749899, -0.310378, -0.584224,
		-0.317865, 0.605445, -0.729656,
		0.580184, 0.732873, 0.355364,
		27.831991, 33.758453, 33.166645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715647, 33.750790, 32.340439>,  <27.425863, 33.245445, 32.917889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715647, 33.750790, 32.340439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964272, 33.744160, 32.653717>,  <28.113445, 33.740181, 32.841682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964272, 33.744160, 32.653717>,  <27.715647, 33.750790, 32.340439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964272, 33.744160, 32.653717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746192, -0.291800, -0.598373,
		0.238454, 0.956336, -0.169003,
		0.621560, -0.016575, 0.783191,
		28.150740, 33.739185, 32.888676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288025, 33.405132, 31.996351>,  <27.715647, 33.750790, 32.340439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288025, 33.405132, 31.996351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665304, 33.441334, 32.124218>,  <28.891672, 33.463055, 32.200939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665304, 33.441334, 32.124218>,  <28.288025, 33.405132, 31.996351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665304, 33.441334, 32.124218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316667, 0.535948, 0.782612,
		-0.100498, -0.839386, 0.534164,
		0.943198, 0.090501, 0.319667,
		28.948263, 33.468483, 32.220119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485983, 33.065453, 32.655697>,  <28.288025, 33.405132, 31.996351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485983, 33.065453, 32.655697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693232, 33.402214, 32.595375>,  <28.817581, 33.604271, 32.559181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693232, 33.402214, 32.595375>,  <28.485983, 33.065453, 32.655697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693232, 33.402214, 32.595375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553068, 0.464279, 0.691781,
		0.652431, -0.275021, 0.706185,
		0.518121, 0.841908, -0.150804,
		28.848667, 33.654785, 32.550133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639872, 33.325474, 33.308193>,  <28.485983, 33.065453, 32.655697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639872, 33.325474, 33.308193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633989, 33.625481, 33.043694>,  <28.630459, 33.805485, 32.884995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633989, 33.625481, 33.043694>,  <28.639872, 33.325474, 33.308193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633989, 33.625481, 33.043694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515652, 0.560908, 0.647677,
		0.856672, 0.350501, 0.378500,
		-0.014708, 0.750021, -0.661250,
		28.629578, 33.850487, 32.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924234, 33.939056, 33.718094>,  <28.639872, 33.325474, 33.308193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924234, 33.939056, 33.718094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677979, 33.995171, 33.407917>,  <28.530224, 34.028839, 33.221813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677979, 33.995171, 33.407917>,  <28.924234, 33.939056, 33.718094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677979, 33.995171, 33.407917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671517, 0.421542, 0.609399,
		0.412372, 0.895891, -0.165312,
		-0.615641, 0.140289, -0.775438,
		28.493286, 34.037258, 33.175285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687729, 34.717468, 33.650673>,  <28.924234, 33.939056, 33.718094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687729, 34.717468, 33.650673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432274, 34.469559, 33.468235>,  <28.279001, 34.320812, 33.358772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432274, 34.469559, 33.468235>,  <28.687729, 34.717468, 33.650673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432274, 34.469559, 33.468235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767326, 0.468334, 0.438034,
		-0.057877, 0.629719, -0.774664,
		-0.638639, -0.619772, -0.456094,
		28.240683, 34.283627, 33.331406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969828, 35.085087, 33.337509>,  <28.687729, 34.717468, 33.650673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969828, 35.085087, 33.337509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860191, 34.706532, 33.405880>,  <27.794411, 34.479397, 33.446903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860191, 34.706532, 33.405880>,  <27.969828, 35.085087, 33.337509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860191, 34.706532, 33.405880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905846, 0.313751, 0.284612,
		-0.322985, -0.076828, -0.943281,
		-0.274089, -0.946392, 0.170931,
		27.777966, 34.422615, 33.457161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345127, 35.030384, 33.028419>,  <27.969828, 35.085087, 33.337509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345127, 35.030384, 33.028419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369661, 34.738533, 33.300854>,  <27.384382, 34.563423, 33.464314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369661, 34.738533, 33.300854>,  <27.345127, 35.030384, 33.028419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369661, 34.738533, 33.300854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966336, 0.127412, 0.223521,
		-0.249866, -0.671868, -0.697252,
		0.061338, -0.729630, 0.681085,
		27.388063, 34.519646, 33.505180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699120, 34.569180, 32.955498>,  <27.345127, 35.030384, 33.028419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699120, 34.569180, 32.955498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832397, 34.486702, 33.323513>,  <26.912363, 34.437218, 33.544323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832397, 34.486702, 33.323513>,  <26.699120, 34.569180, 32.955498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832397, 34.486702, 33.323513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940592, -0.005062, 0.339502,
		-0.065345, -0.978498, -0.195629,
		0.333192, -0.206192, 0.920036,
		26.932356, 34.424843, 33.599525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021158, 34.408062, 32.629147>,  <26.699120, 34.569180, 32.955498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021158, 34.408062, 32.629147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837294, 34.086121, 32.478989>,  <25.726974, 33.892956, 32.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837294, 34.086121, 32.478989>,  <26.021158, 34.408062, 32.629147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837294, 34.086121, 32.478989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204486, 0.315418, -0.926659,
		0.864233, -0.502710, 0.019597,
		-0.459660, -0.804856, -0.375392,
		25.699396, 33.844666, 32.366371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166590, 34.058060, 33.233479>,  <26.021158, 34.408062, 32.629147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166590, 34.058060, 33.233479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358910, 34.214573, 33.547352>,  <26.474302, 34.308479, 33.735676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358910, 34.214573, 33.547352>,  <26.166590, 34.058060, 33.233479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358910, 34.214573, 33.547352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819410, -0.118019, 0.560927,
		0.312090, -0.912670, 0.263880,
		0.480799, 0.391286, 0.784684,
		26.503149, 34.331959, 33.782757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942303, 33.650856, 33.703327>,  <26.166590, 34.058060, 33.233479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942303, 33.650856, 33.703327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095301, 33.950211, 33.920074>,  <26.187099, 34.129822, 34.050121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095301, 33.950211, 33.920074>,  <25.942303, 33.650856, 33.703327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095301, 33.950211, 33.920074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690802, -0.157829, 0.705609,
		0.613588, -0.644214, 0.456616,
		0.382496, 0.748384, 0.541866,
		26.210049, 34.174725, 34.082634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423424, 33.678371, 34.151043>,  <25.942303, 33.650856, 33.703327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423424, 33.678371, 34.151043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648314, 33.967995, 34.310863>,  <25.783247, 34.141769, 34.406757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648314, 33.967995, 34.310863>,  <25.423424, 33.678371, 34.151043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648314, 33.967995, 34.310863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761313, 0.264479, 0.591991,
		0.322965, -0.637014, 0.699934,
		0.562224, 0.724061, 0.399549,
		25.816982, 34.185211, 34.430729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438284, 33.662151, 34.855972>,  <25.423424, 33.678371, 34.151043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438284, 33.662151, 34.855972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534325, 34.036797, 34.753910>,  <25.591949, 34.261585, 34.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534325, 34.036797, 34.753910>,  <25.438284, 33.662151, 34.855972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534325, 34.036797, 34.753910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598823, 0.349778, 0.720463,
		0.764043, -0.020193, 0.644849,
		0.240102, 0.936615, -0.255154,
		25.606356, 34.317780, 34.677364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339025, 34.018238, 35.464466>,  <25.438284, 33.662151, 34.855972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339025, 34.018238, 35.464466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359760, 34.294540, 35.175976>,  <25.372200, 34.460323, 35.002884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359760, 34.294540, 35.175976>,  <25.339025, 34.018238, 35.464466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359760, 34.294540, 35.175976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638276, 0.578351, 0.508048,
		0.768060, 0.434005, 0.470875,
		0.051836, 0.690760, -0.721224,
		25.375311, 34.501770, 34.959610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601400, 34.749641, 35.767586>,  <25.339025, 34.018238, 35.464466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601400, 34.749641, 35.767586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370340, 34.777706, 35.442280>,  <25.231705, 34.794544, 35.247097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370340, 34.777706, 35.442280>,  <25.601400, 34.749641, 35.767586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370340, 34.777706, 35.442280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530290, 0.725173, 0.439223,
		0.620575, 0.684983, -0.381687,
		-0.577649, 0.070166, -0.813264,
		25.197046, 34.798756, 35.198299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047447, 35.184769, 35.814751>,  <25.601400, 34.749641, 35.767586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047447, 35.184769, 35.814751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356922, 35.212200, 35.562813>,  <25.542606, 35.228657, 35.411652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356922, 35.212200, 35.562813>,  <25.047447, 35.184769, 35.814751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356922, 35.212200, 35.562813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591882, 0.432869, -0.679927,
		0.226014, 0.898845, 0.375494,
		0.773688, 0.068575, -0.629845,
		25.589029, 35.232773, 35.373859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011711, 35.869308, 35.571949>,  <25.047447, 35.184769, 35.814751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011711, 35.869308, 35.571949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182716, 35.598446, 35.332386>,  <25.285320, 35.435928, 35.188648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182716, 35.598446, 35.332386>,  <25.011711, 35.869308, 35.571949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182716, 35.598446, 35.332386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470548, 0.398990, -0.787014,
		0.771891, 0.618273, -0.148062,
		0.427514, -0.677160, -0.598904,
		25.310970, 35.395298, 35.152714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178572, 36.158150, 34.874897>,  <25.011711, 35.869308, 35.571949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178572, 36.158150, 34.874897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172230, 35.761616, 34.822731>,  <25.168425, 35.523697, 34.791431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172230, 35.761616, 34.822731>,  <25.178572, 36.158150, 34.874897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172230, 35.761616, 34.822731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493964, 0.121169, -0.860998,
		0.869338, 0.050767, -0.491604,
		-0.015857, -0.991333, -0.130414,
		25.167473, 35.464214, 34.783607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727146, 36.148830, 35.362396>,  <25.178572, 36.158150, 34.874897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727146, 36.148830, 35.362396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104485, 36.136253, 35.494522>,  <26.330889, 36.128708, 35.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104485, 36.136253, 35.494522>,  <25.727146, 36.148830, 35.362396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104485, 36.136253, 35.494522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234830, 0.640026, 0.731588,
		-0.234414, -0.767709, 0.596382,
		0.943347, -0.031446, 0.330312,
		26.387489, 36.126820, 35.593616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686930, 36.212666, 36.046841>,  <25.727146, 36.148830, 35.362396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686930, 36.212666, 36.046841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050884, 36.338749, 35.938953>,  <26.269257, 36.414398, 35.874222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050884, 36.338749, 35.938953>,  <25.686930, 36.212666, 36.046841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050884, 36.338749, 35.938953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078551, 0.769299, 0.634042,
		0.407350, -0.555720, 0.724735,
		0.909888, 0.315205, -0.269722,
		26.323851, 36.433311, 35.858036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150646, 36.156158, 36.612053>,  <25.686930, 36.212666, 36.046841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150646, 36.156158, 36.612053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260029, 36.437035, 36.349102>,  <26.325659, 36.605560, 36.191330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260029, 36.437035, 36.349102>,  <26.150646, 36.156158, 36.612053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260029, 36.437035, 36.349102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203630, 0.710200, 0.673907,
		0.940084, -0.050421, 0.337195,
		0.273455, 0.702192, -0.657380,
		26.342066, 36.647694, 36.151886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605980, 36.576778, 37.018810>,  <26.150646, 36.156158, 36.612053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605980, 36.576778, 37.018810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541527, 36.794678, 36.689621>,  <26.502855, 36.925419, 36.492107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541527, 36.794678, 36.689621>,  <26.605980, 36.576778, 37.018810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541527, 36.794678, 36.689621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005987, 0.834393, 0.551137,
		0.986915, 0.083880, -0.137710,
		-0.161134, 0.544749, -0.822973,
		26.493187, 36.958103, 36.442730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243940, 37.033997, 36.969658>,  <26.605980, 36.576778, 37.018810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243940, 37.033997, 36.969658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905321, 37.162708, 36.800037>,  <26.702150, 37.239933, 36.698265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905321, 37.162708, 36.800037>,  <27.243940, 37.033997, 36.969658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905321, 37.162708, 36.800037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154186, 0.910689, 0.383238,
		0.509495, 0.259046, -0.820554,
		-0.846547, 0.321776, -0.424051,
		26.651358, 37.259243, 36.672821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305664, 37.683475, 36.738880>,  <27.243940, 37.033997, 36.969658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305664, 37.683475, 36.738880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986193, 37.746029, 36.506447>,  <26.794510, 37.783562, 36.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986193, 37.746029, 36.506447>,  <27.305664, 37.683475, 36.738880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986193, 37.746029, 36.506447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355549, 0.656422, 0.665354,
		0.485488, 0.738006, -0.468666,
		-0.798678, 0.156387, -0.581082,
		26.746590, 37.792946, 36.332123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258844, 38.393307, 36.570759>,  <27.305664, 37.683475, 36.738880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258844, 38.393307, 36.570759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911192, 38.195541, 36.565548>,  <26.702600, 38.076881, 36.562420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911192, 38.195541, 36.565548>,  <27.258844, 38.393307, 36.570759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911192, 38.195541, 36.565548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375314, 0.642159, 0.668410,
		-0.322104, 0.585824, -0.743679,
		-0.869131, -0.494410, -0.013026,
		26.650452, 38.047218, 36.561642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626621, 38.892517, 36.371914>,  <27.258844, 38.393307, 36.570759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626621, 38.892517, 36.371914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475632, 38.600876, 36.600269>,  <26.385038, 38.425892, 36.737282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475632, 38.600876, 36.600269>,  <26.626621, 38.892517, 36.371914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475632, 38.600876, 36.600269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515857, 0.677547, 0.524234,
		-0.769028, -0.096614, -0.631871,
		-0.377474, -0.729107, 0.570892,
		26.362389, 38.382145, 36.771538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837826, 38.920303, 36.354137>,  <26.626621, 38.892517, 36.371914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837826, 38.920303, 36.354137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987291, 38.740181, 36.678509>,  <26.076971, 38.632107, 36.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987291, 38.740181, 36.678509>,  <25.837826, 38.920303, 36.354137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987291, 38.740181, 36.678509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469301, 0.662317, 0.584031,
		-0.800083, -0.598799, 0.036153,
		0.373662, -0.450307, 0.810926,
		26.099390, 38.605087, 36.921787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026302, 39.240936, 36.978771>,  <25.837826, 38.920303, 36.354137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026302, 39.240936, 36.978771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657316, 39.292572, 37.124313>,  <25.435925, 39.323555, 37.211639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657316, 39.292572, 37.124313>,  <26.026302, 39.240936, 36.978771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657316, 39.292572, 37.124313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047738, -0.973348, 0.224308,
		0.383117, 0.189546, 0.904043,
		-0.922465, 0.129094, 0.363858,
		25.380577, 39.331299, 37.233471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994516, 39.034698, 37.724724>,  <26.026302, 39.240936, 36.978771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994516, 39.034698, 37.724724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682018, 39.003517, 37.476990>,  <25.494518, 38.984810, 37.328350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682018, 39.003517, 37.476990>,  <25.994516, 39.034698, 37.724724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682018, 39.003517, 37.476990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025038, -0.987460, 0.155872,
		-0.623721, 0.137281, 0.769497,
		-0.781246, -0.077954, -0.619336,
		25.447645, 38.980129, 37.291187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257452, 38.365612, 38.097462>,  <25.994516, 39.034698, 37.724724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257452, 38.365612, 38.097462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987930, 38.378006, 37.802158>,  <25.826218, 38.385445, 37.624977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987930, 38.378006, 37.802158>,  <26.257452, 38.365612, 38.097462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987930, 38.378006, 37.802158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569224, -0.615284, -0.545352,
		-0.471140, -0.787696, 0.396941,
		-0.673804, 0.030989, -0.738260,
		25.785789, 38.387302, 37.580681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154261, 37.658455, 37.783405>,  <26.257452, 38.365612, 38.097462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154261, 37.658455, 37.783405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038067, 37.914330, 37.498753>,  <25.968349, 38.067852, 37.327961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038067, 37.914330, 37.498753>,  <26.154261, 37.658455, 37.783405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038067, 37.914330, 37.498753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544006, -0.501420, -0.672782,
		-0.787195, -0.582567, -0.202335,
		-0.290486, 0.639682, -0.711635,
		25.950922, 38.106236, 37.285263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945456, 37.269096, 37.269398>,  <26.154261, 37.658455, 37.783405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945456, 37.269096, 37.269398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038313, 37.609497, 37.080971>,  <26.094028, 37.813736, 36.967915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038313, 37.609497, 37.080971>,  <25.945456, 37.269096, 37.269398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038313, 37.609497, 37.080971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420400, -0.524514, -0.740371,
		-0.877139, -0.026165, -0.479524,
		0.232145, 0.851000, -0.471071,
		26.107956, 37.864796, 36.939648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460958, 37.497341, 36.588737>,  <25.945456, 37.269096, 37.269398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460958, 37.497341, 36.588737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830280, 37.650879, 36.583469>,  <26.051872, 37.743004, 36.580307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830280, 37.650879, 36.583469>,  <25.460958, 37.497341, 36.588737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830280, 37.650879, 36.583469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273080, -0.680209, -0.680253,
		-0.270073, 0.624482, -0.732859,
		0.923303, 0.383847, -0.013173,
		26.107271, 37.766033, 36.579517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671490, 37.727596, 35.808205>,  <25.460958, 37.497341, 36.588737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671490, 37.727596, 35.808205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979153, 37.620564, 36.040344>,  <26.163750, 37.556343, 36.179626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979153, 37.620564, 36.040344>,  <25.671490, 37.727596, 35.808205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979153, 37.620564, 36.040344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294478, -0.657565, -0.693463,
		0.567171, 0.704280, -0.426974,
		0.769155, -0.267578, 0.580347,
		26.209900, 37.540291, 36.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319248, 37.703857, 35.421059>,  <25.671490, 37.727596, 35.808205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319248, 37.703857, 35.421059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386290, 37.475815, 35.742775>,  <26.426514, 37.338989, 35.935806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386290, 37.475815, 35.742775>,  <26.319248, 37.703857, 35.421059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386290, 37.475815, 35.742775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330317, -0.736201, -0.590676,
		0.928870, 0.364671, 0.064927,
		0.167603, -0.570108, 0.804292,
		26.436571, 37.304783, 35.984062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005146, 37.427444, 35.220722>,  <26.319248, 37.703857, 35.421059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005146, 37.427444, 35.220722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816742, 37.222740, 35.508121>,  <26.703699, 37.099915, 35.680561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816742, 37.222740, 35.508121>,  <27.005146, 37.427444, 35.220722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816742, 37.222740, 35.508121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229794, -0.857572, -0.460180,
		0.851671, -0.051643, 0.521527,
		-0.471012, -0.511765, 0.718501,
		26.675438, 37.069210, 35.723671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448376, 36.948685, 35.404766>,  <27.005146, 37.427444, 35.220722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448376, 36.948685, 35.404766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090609, 36.811348, 35.519402>,  <26.875948, 36.728947, 35.588184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090609, 36.811348, 35.519402>,  <27.448376, 36.948685, 35.404766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090609, 36.811348, 35.519402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121198, -0.802903, -0.583659,
		0.430500, -0.487301, 0.759742,
		-0.894416, -0.343344, 0.286589,
		26.822283, 36.708344, 35.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989241, 37.402931, 35.732170>,  <27.448376, 36.948685, 35.404766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989241, 37.402931, 35.732170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017149, 37.539425, 35.357216>,  <28.033894, 37.621323, 35.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017149, 37.539425, 35.357216>,  <27.989241, 37.402931, 35.732170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017149, 37.539425, 35.357216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875851, 0.428848, 0.221303,
		0.477512, -0.836450, -0.268950,
		0.069771, 0.341235, -0.937385,
		28.038080, 37.641796, 35.076000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611135, 37.149620, 35.285534>,  <27.989241, 37.402931, 35.732170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611135, 37.149620, 35.285534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494011, 37.522526, 35.200546>,  <28.423737, 37.746269, 35.149555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494011, 37.522526, 35.200546>,  <28.611135, 37.149620, 35.285534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494011, 37.522526, 35.200546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951048, 0.306932, 0.036068,
		0.098838, -0.191506, -0.976502,
		-0.292812, 0.932265, -0.212468,
		28.406168, 37.802204, 35.136806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998215, 37.490177, 34.758972>,  <28.611135, 37.149620, 35.285534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998215, 37.490177, 34.758972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912092, 37.823177, 34.963161>,  <28.860418, 38.022976, 35.085674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912092, 37.823177, 34.963161>,  <28.998215, 37.490177, 34.758972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912092, 37.823177, 34.963161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969310, 0.118667, 0.215307,
		0.118667, 0.541166, -0.832501,
		-0.215307, 0.832501, 0.510476,
		28.847500, 38.072929, 35.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567656, 37.977146, 34.703964>,  <28.998215, 37.490177, 34.758972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567656, 37.977146, 34.703964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390146, 38.142776, 35.021858>,  <29.283640, 38.242153, 35.212597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390146, 38.142776, 35.021858>,  <29.567656, 37.977146, 34.703964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390146, 38.142776, 35.021858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896019, 0.219558, 0.385934,
		-0.014687, 0.883368, -0.468450,
		-0.443773, 0.414072, 0.794739,
		29.257013, 38.266998, 35.260281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798582, 38.717789, 34.913864>,  <29.567656, 37.977146, 34.703964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798582, 38.717789, 34.913864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676792, 38.531555, 35.246258>,  <29.603718, 38.419815, 35.445694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676792, 38.531555, 35.246258>,  <29.798582, 38.717789, 34.913864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676792, 38.531555, 35.246258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862258, 0.235968, 0.448141,
		-0.404732, 0.852966, 0.329607,
		-0.304473, -0.465583, 0.830981,
		29.585451, 38.391880, 35.495552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307987, 38.800247, 35.389351>,  <29.798582, 38.717789, 34.913864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307987, 38.800247, 35.389351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088301, 38.576180, 35.637405>,  <29.956488, 38.441738, 35.786240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088301, 38.576180, 35.637405>,  <30.307987, 38.800247, 35.389351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088301, 38.576180, 35.637405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727852, 0.043960, 0.684324,
		-0.410598, 0.827211, 0.383576,
		-0.549218, -0.560169, 0.620137,
		29.923534, 38.408131, 35.823448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252020, 39.112053, 35.993523>,  <30.307987, 38.800247, 35.389351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252020, 39.112053, 35.993523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252752, 38.716553, 36.053356>,  <30.253191, 38.479252, 36.089256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252752, 38.716553, 36.053356>,  <30.252020, 39.112053, 35.993523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252752, 38.716553, 36.053356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809579, 0.089273, 0.580183,
		-0.587008, 0.120037, 0.800633,
		0.001832, -0.988747, 0.149584,
		30.253302, 38.419930, 36.098232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405664, 39.933945, 35.876232>,  <30.252020, 39.112053, 35.993523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405664, 39.933945, 35.876232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586557, 40.273975, 35.768261>,  <30.695093, 40.477993, 35.703476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586557, 40.273975, 35.768261>,  <30.405664, 39.933945, 35.876232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586557, 40.273975, 35.768261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753216, -0.201923, 0.626013,
		0.477652, -0.486419, -0.731605,
		0.452232, 0.850073, -0.269930,
		30.722227, 40.528996, 35.687283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034874, 39.785091, 35.476166>,  <30.405664, 39.933945, 35.876232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034874, 39.785091, 35.476166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053913, 40.127541, 35.681995>,  <31.065336, 40.333012, 35.805492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053913, 40.127541, 35.681995>,  <31.034874, 39.785091, 35.476166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053913, 40.127541, 35.681995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640816, -0.421345, 0.641734,
		0.766217, 0.299202, -0.568673,
		0.047599, 0.856123, 0.514576,
		31.068193, 40.384377, 35.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696497, 40.087978, 35.533596>,  <31.034874, 39.785091, 35.476166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696497, 40.087978, 35.533596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429676, 40.123032, 35.829529>,  <31.269583, 40.144066, 36.007088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429676, 40.123032, 35.829529>,  <31.696497, 40.087978, 35.533596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429676, 40.123032, 35.829529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628007, -0.468108, 0.621677,
		0.400806, 0.879315, 0.257216,
		-0.667054, 0.087638, 0.739837,
		31.229559, 40.149323, 36.051479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929636, 40.501495, 36.229698>,  <31.696497, 40.087978, 35.533596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929636, 40.501495, 36.229698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663074, 40.214836, 36.311985>,  <31.503138, 40.042839, 36.361355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663074, 40.214836, 36.311985>,  <31.929636, 40.501495, 36.229698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663074, 40.214836, 36.311985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586340, -0.333294, 0.738323,
		-0.460558, 0.612637, 0.642310,
		-0.666402, -0.716653, 0.205712,
		31.463154, 39.999840, 36.373699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893751, 40.482979, 36.925911>,  <31.929636, 40.501495, 36.229698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893751, 40.482979, 36.925911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806440, 40.122814, 36.775379>,  <31.754053, 39.906715, 36.685062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806440, 40.122814, 36.775379>,  <31.893751, 40.482979, 36.925911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806440, 40.122814, 36.775379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660032, -0.420259, 0.622688,
		-0.718827, -0.112467, 0.686031,
		-0.218279, -0.900407, -0.376326,
		31.740957, 39.852692, 36.662483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527264, 40.120365, 37.447140>,  <31.893751, 40.482979, 36.925911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527264, 40.120365, 37.447140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712635, 39.842720, 37.226795>,  <31.823858, 39.676132, 37.094589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712635, 39.842720, 37.226795>,  <31.527264, 40.120365, 37.447140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712635, 39.842720, 37.226795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350290, -0.427512, 0.833385,
		-0.813960, -0.579173, 0.045020,
		0.463428, -0.694112, -0.550857,
		31.851664, 39.634487, 37.061539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392891, 39.507591, 37.767941>,  <31.527264, 40.120365, 37.447140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392891, 39.507591, 37.767941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738174, 39.435806, 37.579193>,  <31.945345, 39.392735, 37.465942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738174, 39.435806, 37.579193>,  <31.392891, 39.507591, 37.767941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738174, 39.435806, 37.579193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354112, -0.450955, 0.819295,
		-0.359825, -0.874318, -0.325719,
		0.863209, -0.179462, -0.471871,
		31.997137, 39.381969, 37.437634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483490, 38.805683, 37.949387>,  <31.392891, 39.507591, 37.767941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483490, 38.805683, 37.949387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819614, 39.011829, 37.882126>,  <32.021290, 39.135517, 37.841770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819614, 39.011829, 37.882126>,  <31.483490, 38.805683, 37.949387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819614, 39.011829, 37.882126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341729, -0.262791, 0.902309,
		0.420827, -0.815685, -0.396941,
		0.840313, 0.515363, -0.168154,
		32.071709, 39.166439, 37.831680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850275, 38.142529, 37.609402>,  <31.483490, 38.805683, 37.949387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850275, 38.142529, 37.609402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015640, 38.100765, 37.971218>,  <32.114861, 38.075706, 38.188309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015640, 38.100765, 37.971218>,  <31.850275, 38.142529, 37.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015640, 38.100765, 37.971218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139757, -0.988909, -0.050269,
		0.899754, -0.105634, -0.423419,
		0.413413, -0.104406, 0.904538,
		32.139664, 38.069443, 38.242580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531712, 37.730110, 37.611004>,  <31.850275, 38.142529, 37.609402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531712, 37.730110, 37.611004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287651, 37.661301, 37.920357>,  <32.141216, 37.620014, 38.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287651, 37.661301, 37.920357>,  <32.531712, 37.730110, 37.611004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287651, 37.661301, 37.920357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205311, -0.908469, -0.364049,
		0.765220, -0.380910, 0.518985,
		-0.610152, -0.172024, 0.773384,
		32.104607, 37.609692, 38.152370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703655, 37.025612, 37.880180>,  <32.531712, 37.730110, 37.611004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703655, 37.025612, 37.880180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321476, 37.126762, 37.941074>,  <32.092167, 37.187454, 37.977612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321476, 37.126762, 37.941074>,  <32.703655, 37.025612, 37.880180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321476, 37.126762, 37.941074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291263, -0.891302, -0.347487,
		0.047814, -0.376345, 0.925245,
		-0.955447, 0.252875, 0.152232,
		32.034843, 37.202625, 37.986744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282162, 36.619793, 38.310291>,  <32.703655, 37.025612, 37.880180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282162, 36.619793, 38.310291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986834, 36.737991, 38.067780>,  <31.809637, 36.808910, 37.922272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986834, 36.737991, 38.067780>,  <32.282162, 36.619793, 38.310291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986834, 36.737991, 38.067780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239013, -0.955209, -0.174494,
		-0.630681, 0.016075, 0.775876,
		-0.738318, 0.295495, -0.606275,
		31.765339, 36.826641, 37.885899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767443, 36.208313, 38.488697>,  <32.282162, 36.619793, 38.310291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767443, 36.208313, 38.488697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689749, 36.330681, 38.115883>,  <31.643133, 36.404102, 37.892197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689749, 36.330681, 38.115883>,  <31.767443, 36.208313, 38.488697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689749, 36.330681, 38.115883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166311, -0.946642, -0.276060,
		-0.966754, 0.101387, 0.234748,
		-0.194234, 0.305923, -0.932032,
		31.631479, 36.422459, 37.836273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160044, 35.804611, 38.242252>,  <31.767443, 36.208313, 38.488697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160044, 35.804611, 38.242252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340271, 35.938137, 37.911060>,  <31.448408, 36.018253, 37.712345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340271, 35.938137, 37.911060>,  <31.160044, 35.804611, 38.242252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340271, 35.938137, 37.911060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096577, -0.903793, -0.416930,
		-0.887502, 0.267820, -0.374983,
		0.450569, 0.333812, -0.827984,
		31.475441, 36.038280, 37.662666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720238, 35.767506, 37.720871>,  <31.160044, 35.804611, 38.242252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720238, 35.767506, 37.720871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069576, 35.765015, 37.526047>,  <31.279179, 35.763519, 37.409153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069576, 35.765015, 37.526047>,  <30.720238, 35.767506, 37.720871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069576, 35.765015, 37.526047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228583, -0.888218, -0.398521,
		-0.430135, 0.459381, -0.777144,
		0.873346, -0.006223, -0.487060,
		31.331579, 35.763149, 37.379929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613113, 35.539207, 37.034279>,  <30.720238, 35.767506, 37.720871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613113, 35.539207, 37.034279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011742, 35.507294, 37.043034>,  <31.250919, 35.488148, 37.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011742, 35.507294, 37.043034>,  <30.613113, 35.539207, 37.034279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011742, 35.507294, 37.043034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062285, -0.897688, -0.436208,
		0.054452, 0.433349, -0.899579,
		0.996572, -0.079783, 0.021890,
		31.310713, 35.483360, 37.049599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891333, 35.348343, 36.371311>,  <30.613113, 35.539207, 37.034279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891333, 35.348343, 36.371311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204901, 35.246845, 36.597969>,  <31.393042, 35.185947, 36.733963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204901, 35.246845, 36.597969>,  <30.891333, 35.348343, 36.371311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204901, 35.246845, 36.597969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001908, -0.913651, -0.406496,
		0.620860, 0.317579, -0.716713,
		0.783920, -0.253744, 0.566643,
		31.440077, 35.170723, 36.767963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347797, 35.159279, 35.912872>,  <30.891333, 35.348343, 36.371311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347797, 35.159279, 35.912872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446295, 34.992241, 36.262726>,  <31.505394, 34.892017, 36.472637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446295, 34.992241, 36.262726>,  <31.347797, 35.159279, 35.912872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446295, 34.992241, 36.262726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102059, -0.886228, -0.451867,
		0.963819, 0.200534, -0.175610,
		0.246246, -0.417595, 0.874630,
		31.520168, 34.866962, 36.525116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932913, 34.730114, 35.744576>,  <31.347797, 35.159279, 35.912872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932913, 34.730114, 35.744576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766911, 34.603325, 36.085701>,  <31.667309, 34.527252, 36.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766911, 34.603325, 36.085701>,  <31.932913, 34.730114, 35.744576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766911, 34.603325, 36.085701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047402, -0.943607, -0.327655,
		0.908583, -0.095554, 0.406628,
		-0.415006, -0.316977, 0.852816,
		31.642408, 34.508232, 36.341545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444508, 34.291065, 35.934784>,  <31.932913, 34.730114, 35.744576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444508, 34.291065, 35.934784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103237, 34.162563, 36.099163>,  <31.898474, 34.085461, 36.197792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103237, 34.162563, 36.099163>,  <32.444508, 34.291065, 35.934784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103237, 34.162563, 36.099163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223357, -0.936957, -0.268745,
		0.471380, -0.137498, 0.871146,
		-0.853178, -0.321257, 0.410952,
		31.847284, 34.066185, 36.222450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620922, 33.707253, 36.194553>,  <32.444508, 34.291065, 35.934784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620922, 33.707253, 36.194553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221462, 33.686794, 36.198238>,  <31.981787, 33.674519, 36.200451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221462, 33.686794, 36.198238>,  <32.620922, 33.707253, 36.194553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221462, 33.686794, 36.198238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041971, -0.898337, -0.437298,
		0.030643, -0.436320, 0.899270,
		-0.998649, -0.051144, 0.009215,
		31.921867, 33.671452, 36.201004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516323, 32.976280, 36.309067>,  <32.620922, 33.707253, 36.194553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516323, 32.976280, 36.309067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159523, 33.121403, 36.201210>,  <31.945444, 33.208477, 36.136494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159523, 33.121403, 36.201210>,  <32.516323, 32.976280, 36.309067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159523, 33.121403, 36.201210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110820, -0.753821, -0.647667,
		-0.438243, -0.547836, 0.712614,
		-0.891999, 0.362808, -0.269645,
		31.891924, 33.230244, 36.120316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956663, 32.399879, 36.421768>,  <32.516323, 32.976280, 36.309067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956663, 32.399879, 36.421768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833071, 32.665516, 36.149441>,  <31.758915, 32.824898, 35.986046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833071, 32.665516, 36.149441>,  <31.956663, 32.399879, 36.421768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833071, 32.665516, 36.149441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179276, -0.743679, -0.644051,
		-0.934018, -0.076947, 0.348839,
		-0.308982, 0.664094, -0.680815,
		31.740376, 32.864742, 35.945198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330044, 32.208851, 36.162819>,  <31.956663, 32.399879, 36.421768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330044, 32.208851, 36.162819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420433, 32.482159, 35.885094>,  <31.474667, 32.646145, 35.718456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420433, 32.482159, 35.885094>,  <31.330044, 32.208851, 36.162819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420433, 32.482159, 35.885094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332247, -0.615955, -0.714291,
		-0.915723, 0.392095, 0.087825,
		0.225973, 0.683272, -0.694317,
		31.488226, 32.687141, 35.676800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727150, 32.233589, 35.584389>,  <31.330044, 32.208851, 36.162819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727150, 32.233589, 35.584389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025789, 32.425552, 35.400093>,  <31.204973, 32.540730, 35.289516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025789, 32.425552, 35.400093>,  <30.727150, 32.233589, 35.584389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025789, 32.425552, 35.400093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315949, -0.353698, -0.880383,
		-0.585464, 0.802862, -0.112444,
		0.746597, 0.479906, -0.460742,
		31.249769, 32.569523, 35.261871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455738, 32.498562, 34.900078>,  <30.727150, 32.233589, 35.584389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455738, 32.498562, 34.900078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853325, 32.504509, 34.856609>,  <31.091877, 32.508080, 34.830528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853325, 32.504509, 34.856609>,  <30.455738, 32.498562, 34.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853325, 32.504509, 34.856609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090083, -0.454493, -0.886183,
		-0.062568, 0.890626, -0.450412,
		0.993967, 0.014872, -0.108667,
		31.151516, 32.508972, 34.824009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556688, 32.755573, 34.234726>,  <30.455738, 32.498562, 34.900078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556688, 32.755573, 34.234726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897881, 32.559349, 34.306023>,  <31.102596, 32.441612, 34.348801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897881, 32.559349, 34.306023>,  <30.556688, 32.755573, 34.234726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897881, 32.559349, 34.306023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048226, -0.414109, -0.908949,
		0.519707, 0.766721, -0.376885,
		0.852982, -0.490563, 0.178239,
		31.153774, 32.412182, 34.359493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998920, 32.881115, 33.720993>,  <30.556688, 32.755573, 34.234726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998920, 32.881115, 33.720993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123306, 32.541340, 33.891525>,  <31.197937, 32.337475, 33.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123306, 32.541340, 33.891525>,  <30.998920, 32.881115, 33.720993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123306, 32.541340, 33.891525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070009, -0.467825, -0.881044,
		0.947840, 0.244125, -0.204944,
		0.310963, -0.849437, 0.426332,
		31.216595, 32.286510, 34.019424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333714, 32.484833, 33.209614>,  <30.998920, 32.881115, 33.720993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333714, 32.484833, 33.209614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302668, 32.185753, 33.473408>,  <31.284040, 32.006306, 33.631683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302668, 32.185753, 33.473408>,  <31.333714, 32.484833, 33.209614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302668, 32.185753, 33.473408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086723, -0.653910, -0.751585,
		0.993205, -0.115526, -0.014091,
		-0.077614, -0.747700, 0.659485,
		31.279383, 31.961443, 33.671253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815422, 31.898497, 32.993401>,  <31.333714, 32.484833, 33.209614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815422, 31.898497, 32.993401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530411, 31.732164, 33.219456>,  <31.359404, 31.632364, 33.355091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530411, 31.732164, 33.219456>,  <31.815422, 31.898497, 32.993401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530411, 31.732164, 33.219456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208599, -0.643489, -0.736484,
		0.669916, -0.642654, 0.371764,
		-0.712530, -0.415833, 0.565141,
		31.316652, 31.607414, 33.388996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949846, 31.273319, 32.999023>,  <31.815422, 31.898497, 32.993401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949846, 31.273319, 32.999023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562847, 31.283789, 33.099632>,  <31.330648, 31.290071, 33.159996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562847, 31.283789, 33.099632>,  <31.949846, 31.273319, 32.999023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562847, 31.283789, 33.099632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188639, -0.737115, -0.648904,
		0.168415, -0.675260, 0.718095,
		-0.967498, 0.026175, 0.251521,
		31.272598, 31.291641, 33.175087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780233, 30.635107, 32.838295>,  <31.949846, 31.273319, 32.999023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780233, 30.635107, 32.838295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440208, 30.839691, 32.888577>,  <31.236193, 30.962442, 32.918747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440208, 30.839691, 32.888577>,  <31.780233, 30.635107, 32.838295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440208, 30.839691, 32.888577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443214, -0.565732, -0.695347,
		-0.284527, -0.646803, 0.707595,
		-0.850062, 0.511461, 0.125707,
		31.185190, 30.993130, 32.926289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296690, 30.138380, 32.915020>,  <31.780233, 30.635107, 32.838295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296690, 30.138380, 32.915020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112007, 30.477234, 32.809803>,  <31.001198, 30.680546, 32.746674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112007, 30.477234, 32.809803>,  <31.296690, 30.138380, 32.915020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112007, 30.477234, 32.809803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337540, -0.442024, -0.831073,
		-0.820301, -0.294924, 0.490027,
		-0.461706, 0.847134, -0.263044,
		30.973495, 30.731375, 32.730888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595572, 29.891632, 32.618729>,  <31.296690, 30.138380, 32.915020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595572, 29.891632, 32.618729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679258, 30.257219, 32.479652>,  <30.729471, 30.476572, 32.396206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679258, 30.257219, 32.479652>,  <30.595572, 29.891632, 32.618729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679258, 30.257219, 32.479652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242688, -0.295901, -0.923875,
		-0.947275, 0.277670, 0.159902,
		0.209217, 0.913970, -0.347687,
		30.742023, 30.531410, 32.375347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914249, 30.051498, 32.223450>,  <30.595572, 29.891632, 32.618729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914249, 30.051498, 32.223450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233946, 30.253096, 32.092480>,  <30.425764, 30.374054, 32.013897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233946, 30.253096, 32.092480>,  <29.914249, 30.051498, 32.223450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233946, 30.253096, 32.092480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228440, -0.249159, -0.941135,
		-0.555907, 0.826989, -0.084006,
		0.799239, 0.503993, -0.327426,
		30.473717, 30.404293, 31.994251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642412, 30.286240, 31.569662>,  <29.914249, 30.051498, 32.223450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642412, 30.286240, 31.569662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040539, 30.324444, 31.563656>,  <30.279415, 30.347366, 31.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040539, 30.324444, 31.563656>,  <29.642412, 30.286240, 31.569662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040539, 30.324444, 31.563656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022731, -0.382136, -0.923827,
		-0.093975, 0.919157, -0.382517,
		0.995315, 0.095512, -0.015018,
		30.339134, 30.353098, 31.559151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761745, 30.692324, 30.910917>,  <29.642412, 30.286240, 31.569662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761745, 30.692324, 30.910917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091471, 30.500324, 31.030989>,  <30.289307, 30.385124, 31.103031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091471, 30.500324, 31.030989>,  <29.761745, 30.692324, 30.910917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091471, 30.500324, 31.030989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259935, -0.150135, -0.953883,
		0.502931, 0.864326, 0.001010,
		0.824315, -0.480000, 0.300176,
		30.338764, 30.356325, 31.121042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366545, 30.901752, 30.528624>,  <29.761745, 30.692324, 30.910917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366545, 30.901752, 30.528624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516857, 30.556055, 30.662415>,  <30.607044, 30.348637, 30.742689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516857, 30.556055, 30.662415>,  <30.366545, 30.901752, 30.528624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516857, 30.556055, 30.662415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484636, -0.124368, -0.865830,
		0.789884, 0.487462, 0.372107,
		0.375781, -0.864241, 0.334478,
		30.629591, 30.296783, 30.762758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917372, 30.928896, 30.304869>,  <30.366545, 30.901752, 30.528624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917372, 30.928896, 30.304869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857319, 30.537222, 30.359499>,  <30.821287, 30.302217, 30.392277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857319, 30.537222, 30.359499>,  <30.917372, 30.928896, 30.304869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857319, 30.537222, 30.359499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352668, -0.182095, -0.917860,
		0.923627, -0.089633, 0.372666,
		-0.150131, -0.979187, 0.136577,
		30.812279, 30.243465, 30.400473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257273, 30.688080, 29.803753>,  <30.917372, 30.928896, 30.304869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257273, 30.688080, 29.803753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069309, 30.352354, 29.913107>,  <30.956532, 30.150919, 29.978720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069309, 30.352354, 29.913107>,  <31.257273, 30.688080, 29.803753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069309, 30.352354, 29.913107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149938, -0.381101, -0.912294,
		0.869889, -0.387702, 0.304927,
		-0.469907, -0.839315, 0.273384,
		30.928337, 30.100559, 29.995123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776533, 30.173424, 29.584682>,  <31.257273, 30.688080, 29.803753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776533, 30.173424, 29.584682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390787, 30.067677, 29.580536>,  <31.159340, 30.004229, 29.578049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390787, 30.067677, 29.580536>,  <31.776533, 30.173424, 29.584682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390787, 30.067677, 29.580536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113358, -0.377471, -0.919057,
		0.239059, -0.887482, 0.393988,
		-0.964366, -0.264371, -0.010365,
		31.101477, 29.988365, 29.577427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773243, 29.465796, 29.226440>,  <31.776533, 30.173424, 29.584682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773243, 29.465796, 29.226440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417706, 29.645382, 29.189806>,  <31.204384, 29.753134, 29.167826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417706, 29.645382, 29.189806>,  <31.773243, 29.465796, 29.226440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417706, 29.645382, 29.189806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000963, -0.198045, -0.980192,
		-0.458213, -0.871324, 0.175598,
		-0.888842, 0.448968, -0.091586,
		31.151052, 29.780071, 29.162331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533533, 29.098324, 28.667746>,  <31.773243, 29.465796, 29.226440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533533, 29.098324, 28.667746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273155, 29.401852, 28.676346>,  <31.116928, 29.583969, 28.681505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273155, 29.401852, 28.676346>,  <31.533533, 29.098324, 28.667746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273155, 29.401852, 28.676346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088791, -0.047979, -0.994894,
		-0.753913, -0.649532, 0.098609,
		-0.650947, 0.758819, 0.021500,
		31.077871, 29.629498, 28.682796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910612, 28.864059, 28.433996>,  <31.533533, 29.098324, 28.667746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910612, 28.864059, 28.433996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931868, 29.261494, 28.394075>,  <30.944620, 29.499954, 28.370123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931868, 29.261494, 28.394075>,  <30.910612, 28.864059, 28.433996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931868, 29.261494, 28.394075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298513, -0.079568, -0.951083,
		-0.952925, 0.080332, 0.292371,
		0.053139, 0.993587, -0.099802,
		30.947809, 29.559570, 28.364134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298689, 29.191612, 28.084612>,  <30.910612, 28.864059, 28.433996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298689, 29.191612, 28.084612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574663, 29.473455, 28.018257>,  <30.740248, 29.642561, 27.978443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574663, 29.473455, 28.018257>,  <30.298689, 29.191612, 28.084612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574663, 29.473455, 28.018257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358782, 0.133823, -0.923779,
		-0.628700, 0.696866, 0.345129,
		0.689936, 0.704606, -0.165888,
		30.781645, 29.684837, 27.968491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960701, 29.752184, 27.662848>,  <30.298689, 29.191612, 28.084612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960701, 29.752184, 27.662848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352644, 29.790272, 27.592630>,  <30.587809, 29.813124, 27.550499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352644, 29.790272, 27.592630>,  <29.960701, 29.752184, 27.662848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352644, 29.790272, 27.592630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181708, 0.060393, -0.981496,
		-0.082854, 0.993623, 0.076479,
		0.979856, 0.095218, -0.175545,
		30.646601, 29.818836, 27.539967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943949, 30.235044, 27.133677>,  <29.960701, 29.752184, 27.662848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943949, 30.235044, 27.133677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313210, 30.081583, 27.123892>,  <30.534767, 29.989506, 27.118021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313210, 30.081583, 27.123892>,  <29.943949, 30.235044, 27.133677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313210, 30.081583, 27.123892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028994, 0.132931, -0.990701,
		0.383338, 0.913859, 0.133839,
		0.923153, -0.383654, -0.024461,
		30.590155, 29.966486, 27.116554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448833, 30.541744, 26.725588>,  <29.943949, 30.235044, 27.133677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448833, 30.541744, 26.725588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657738, 30.200783, 26.735811>,  <30.783081, 29.996206, 26.741945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657738, 30.200783, 26.735811>,  <30.448833, 30.541744, 26.725588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657738, 30.200783, 26.735811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096093, 0.029041, -0.994949,
		0.847354, 0.522080, 0.097077,
		0.522262, -0.852402, 0.025560,
		30.814417, 29.945063, 26.743479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057716, 30.651810, 26.406397>,  <30.448833, 30.541744, 26.725588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057716, 30.651810, 26.406397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998207, 30.260351, 26.349659>,  <30.962502, 30.025476, 26.315617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998207, 30.260351, 26.349659>,  <31.057716, 30.651810, 26.406397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998207, 30.260351, 26.349659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039058, 0.137515, -0.989729,
		0.988100, -0.152784, 0.017766,
		-0.148772, -0.978645, -0.141846,
		30.953575, 29.966757, 26.307106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566664, 30.418337, 25.820377>,  <31.057716, 30.651810, 26.406397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566664, 30.418337, 25.820377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304796, 30.117369, 25.849434>,  <31.147676, 29.936789, 25.866869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304796, 30.117369, 25.849434>,  <31.566664, 30.418337, 25.820377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304796, 30.117369, 25.849434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017314, -0.081149, -0.996552,
		0.755719, -0.653667, 0.040098,
		-0.654667, -0.752419, 0.072643,
		31.108397, 29.891644, 25.871227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784912, 29.840519, 25.267429>,  <31.566664, 30.418337, 25.820377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784912, 29.840519, 25.267429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404621, 29.764460, 25.365379>,  <31.176447, 29.718824, 25.424149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404621, 29.764460, 25.365379>,  <31.784912, 29.840519, 25.267429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404621, 29.764460, 25.365379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195109, -0.246860, -0.949206,
		0.240941, -0.950212, 0.197596,
		-0.950726, -0.190150, 0.244874,
		31.119404, 29.707415, 25.438841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556404, 29.151009, 25.074863>,  <31.784912, 29.840519, 25.267429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556404, 29.151009, 25.074863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214964, 29.353716, 25.123117>,  <31.010099, 29.475340, 25.152069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214964, 29.353716, 25.123117>,  <31.556404, 29.151009, 25.074863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214964, 29.353716, 25.123117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266607, -0.226042, -0.936924,
		-0.447534, -0.831920, 0.328057,
		-0.853600, 0.506768, 0.120634,
		30.958883, 29.505747, 25.159307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069450, 28.637903, 24.999390>,  <31.556404, 29.151009, 25.074863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069450, 28.637903, 24.999390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901575, 28.996677, 24.943722>,  <30.800850, 29.211941, 24.910320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901575, 28.996677, 24.943722>,  <31.069450, 28.637903, 24.999390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901575, 28.996677, 24.943722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399793, -0.320325, -0.858811,
		-0.814877, -0.304796, 0.493026,
		-0.419691, 0.896934, -0.139170,
		30.775667, 29.265759, 24.901970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512907, 28.417789, 24.646099>,  <31.069450, 28.637903, 24.999390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512907, 28.417789, 24.646099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507038, 28.814060, 24.591925>,  <30.503517, 29.051823, 24.559420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507038, 28.814060, 24.591925>,  <30.512907, 28.417789, 24.646099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507038, 28.814060, 24.591925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206305, -0.135538, -0.969055,
		-0.978378, 0.013722, 0.206371,
		-0.014674, 0.990677, -0.135438,
		30.502636, 29.111263, 24.551292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952343, 28.581625, 24.204601>,  <30.512907, 28.417789, 24.646099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952343, 28.581625, 24.204601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229134, 28.869780, 24.185785>,  <30.395208, 29.042673, 24.174496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229134, 28.869780, 24.185785>,  <29.952343, 28.581625, 24.204601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229134, 28.869780, 24.185785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054057, -0.013273, -0.998450,
		-0.719895, 0.693444, 0.029758,
		0.691974, 0.720388, -0.047041,
		30.436726, 29.085896, 24.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705408, 29.116432, 23.705786>,  <29.952343, 28.581625, 24.204601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705408, 29.116432, 23.705786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105202, 29.123880, 23.716269>,  <30.345078, 29.128349, 23.722559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105202, 29.123880, 23.716269>,  <29.705408, 29.116432, 23.705786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105202, 29.123880, 23.716269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023868, 0.116366, -0.992920,
		-0.021538, 0.993032, 0.115862,
		0.999483, 0.018620, 0.026208,
		30.405046, 29.129467, 23.724131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524553, 29.825838, 23.655476>,  <29.705408, 29.116432, 23.705786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524553, 29.825838, 23.655476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415558, 30.094130, 23.379541>,  <29.350161, 30.255104, 23.213982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415558, 30.094130, 23.379541>,  <29.524553, 29.825838, 23.655476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415558, 30.094130, 23.379541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420332, -0.727914, -0.541722,
		-0.865489, 0.142347, 0.480277,
		-0.272488, 0.670730, -0.689834,
		29.333811, 30.295349, 23.172590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874735, 29.585297, 23.424507>,  <29.524553, 29.825838, 23.655476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874735, 29.585297, 23.424507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963741, 29.819370, 23.112598>,  <29.017145, 29.959814, 22.925453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963741, 29.819370, 23.112598>,  <28.874735, 29.585297, 23.424507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963741, 29.819370, 23.112598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347198, -0.699821, -0.624263,
		-0.911011, 0.409643, 0.047455,
		0.222515, 0.585186, -0.779772,
		29.030497, 29.994926, 22.878666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490118, 29.203358, 22.955521>,  <28.874735, 29.585297, 23.424507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490118, 29.203358, 22.955521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702374, 29.470936, 22.747314>,  <28.829727, 29.631483, 22.622391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702374, 29.470936, 22.747314>,  <28.490118, 29.203358, 22.955521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702374, 29.470936, 22.747314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308757, -0.419357, -0.853703,
		-0.789363, 0.613719, -0.015985,
		0.530637, 0.668946, -0.520514,
		28.861565, 29.671619, 22.591160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346138, 29.771070, 22.571045>,  <28.490118, 29.203358, 22.955521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346138, 29.771070, 22.571045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185371, 29.793592, 22.205467>,  <28.088911, 29.807106, 21.986120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185371, 29.793592, 22.205467>,  <28.346138, 29.771070, 22.571045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185371, 29.793592, 22.205467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128699, 0.991674, 0.004499,
		0.906587, -0.115816, -0.405816,
		-0.401916, 0.056307, -0.913944,
		28.064796, 29.810484, 21.931284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742125, 30.147821, 22.124910>,  <28.346138, 29.771070, 22.571045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742125, 30.147821, 22.124910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359901, 30.227821, 22.038277>,  <28.130568, 30.275822, 21.986296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359901, 30.227821, 22.038277>,  <28.742125, 30.147821, 22.124910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359901, 30.227821, 22.038277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196968, 0.979759, 0.035733,
		0.219348, -0.008516, -0.975609,
		-0.955558, 0.200001, -0.216585,
		28.073235, 30.287823, 21.973301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285326, 30.015490, 21.615099>,  <28.742125, 30.147821, 22.124910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285326, 30.015490, 21.615099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563736, 29.952139, 21.334967>,  <29.730782, 29.914127, 21.166887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563736, 29.952139, 21.334967>,  <29.285326, 30.015490, 21.615099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563736, 29.952139, 21.334967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350024, -0.776781, 0.523540,
		-0.626922, -0.609530, -0.485224,
		0.696026, -0.158378, -0.700332,
		29.772543, 29.904625, 21.124866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445147, 30.726179, 21.912153>,  <29.285326, 30.015490, 21.615099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445147, 30.726179, 21.912153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291353, 30.521927, 22.219770>,  <29.199078, 30.399376, 22.404341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291353, 30.521927, 22.219770>,  <29.445147, 30.726179, 21.912153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291353, 30.521927, 22.219770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245740, 0.746406, 0.618458,
		-0.889822, 0.426773, -0.161500,
		-0.384485, -0.510631, 0.769043,
		29.176008, 30.368738, 22.450483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879219, 31.141394, 22.252602>,  <29.445147, 30.726179, 21.912153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879219, 31.141394, 22.252602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010185, 30.875711, 22.521416>,  <29.088764, 30.716301, 22.682703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010185, 30.875711, 22.521416>,  <28.879219, 31.141394, 22.252602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010185, 30.875711, 22.521416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038568, 0.720038, 0.692862,
		-0.944094, -0.200933, 0.261367,
		0.327413, -0.664207, 0.672033,
		29.108410, 30.676449, 22.723026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665636, 31.427942, 22.811741>,  <28.879219, 31.141394, 22.252602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665636, 31.427942, 22.811741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896124, 31.150991, 22.985447>,  <29.034416, 30.984821, 23.089670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896124, 31.150991, 22.985447>,  <28.665636, 31.427942, 22.811741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896124, 31.150991, 22.985447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195176, 0.632542, 0.749531,
		-0.793650, -0.347135, 0.499617,
		0.576217, -0.692378, 0.434264,
		29.068989, 30.943277, 23.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488583, 31.393114, 23.543285>,  <28.665636, 31.427942, 22.811741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488583, 31.393114, 23.543285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872492, 31.300110, 23.480324>,  <29.102837, 31.244307, 23.442547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872492, 31.300110, 23.480324>,  <28.488583, 31.393114, 23.543285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872492, 31.300110, 23.480324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265186, 0.566410, 0.780292,
		-0.092271, -0.790644, 0.605283,
		0.959772, -0.232511, -0.157405,
		29.160423, 31.230356, 23.433102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650152, 31.347597, 24.184601>,  <28.488583, 31.393114, 23.543285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650152, 31.347597, 24.184601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987732, 31.387138, 23.973705>,  <29.190279, 31.410864, 23.847168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987732, 31.387138, 23.973705>,  <28.650152, 31.347597, 24.184601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987732, 31.387138, 23.973705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388766, 0.564511, 0.728140,
		0.369610, -0.819485, 0.437988,
		0.843948, 0.098853, -0.527237,
		29.240917, 31.416794, 23.815535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274063, 31.263355, 24.671186>,  <28.650152, 31.347597, 24.184601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274063, 31.263355, 24.671186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378778, 31.467659, 24.343628>,  <29.441608, 31.590240, 24.147093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378778, 31.467659, 24.343628>,  <29.274063, 31.263355, 24.671186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378778, 31.467659, 24.343628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445157, 0.688940, 0.572011,
		0.856330, -0.514284, -0.047010,
		0.261789, 0.510757, -0.818897,
		29.457315, 31.620886, 24.097960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055782, 31.333839, 24.732624>,  <29.274063, 31.263355, 24.671186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055782, 31.333839, 24.732624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906155, 31.608377, 24.483143>,  <29.816378, 31.773100, 24.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906155, 31.608377, 24.483143>,  <30.055782, 31.333839, 24.732624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906155, 31.608377, 24.483143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374709, 0.727043, 0.575328,
		0.848332, -0.018496, -0.529142,
		-0.374068, 0.686343, -0.623704,
		29.793934, 31.814280, 24.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578304, 31.817545, 24.712719>,  <30.055782, 31.333839, 24.732624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578304, 31.817545, 24.712719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283451, 32.032955, 24.549438>,  <30.106539, 32.162201, 24.451469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283451, 32.032955, 24.549438>,  <30.578304, 31.817545, 24.712719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283451, 32.032955, 24.549438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345241, 0.819409, 0.457578,
		0.580901, 0.196367, -0.789933,
		-0.737131, 0.538525, -0.408202,
		30.062311, 32.194511, 24.426977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987040, 32.336384, 24.457050>,  <30.578304, 31.817545, 24.712719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987040, 32.336384, 24.457050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606865, 32.446404, 24.515043>,  <30.378759, 32.512413, 24.549839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606865, 32.446404, 24.515043>,  <30.987040, 32.336384, 24.457050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606865, 32.446404, 24.515043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309655, 0.795356, 0.521078,
		0.028006, 0.540147, -0.841105,
		-0.950437, 0.275045, 0.144984,
		30.321733, 32.528915, 24.558538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974768, 33.106049, 24.464083>,  <30.987040, 32.336384, 24.457050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974768, 33.106049, 24.464083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630762, 33.007973, 24.643082>,  <30.424358, 32.949127, 24.750481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630762, 33.007973, 24.643082>,  <30.974768, 33.106049, 24.464083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630762, 33.007973, 24.643082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107530, 0.770213, 0.628657,
		-0.498808, 0.588775, -0.636030,
		-0.860016, -0.245187, 0.447500,
		30.372757, 32.934418, 24.777332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585432, 33.694340, 24.508402>,  <30.974768, 33.106049, 24.464083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585432, 33.694340, 24.508402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454075, 33.448017, 24.794882>,  <30.375261, 33.300224, 24.966770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454075, 33.448017, 24.794882>,  <30.585432, 33.694340, 24.508402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454075, 33.448017, 24.794882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050207, 0.745799, 0.664277,
		-0.943206, 0.254102, -0.213998,
		-0.328393, -0.615805, 0.716199,
		30.355556, 33.263275, 25.009741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181896, 34.178764, 24.959808>,  <30.585432, 33.694340, 24.508402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181896, 34.178764, 24.959808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236349, 33.843445, 25.170986>,  <30.269022, 33.642254, 25.297693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236349, 33.843445, 25.170986>,  <30.181896, 34.178764, 24.959808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236349, 33.843445, 25.170986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079431, 0.540427, 0.837633,
		-0.987501, -0.072095, 0.140157,
		0.136134, -0.838297, 0.527946,
		30.277189, 33.591957, 25.329370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748528, 34.351955, 25.524149>,  <30.181896, 34.178764, 24.959808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748528, 34.351955, 25.524149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966717, 34.035912, 25.635992>,  <30.097631, 33.846283, 25.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966717, 34.035912, 25.635992>,  <29.748528, 34.351955, 25.524149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966717, 34.035912, 25.635992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123590, 0.405792, 0.905571,
		-0.828966, -0.459408, 0.318999,
		0.545474, -0.790112, 0.279609,
		30.130360, 33.798878, 25.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528488, 34.208061, 26.202826>,  <29.748528, 34.351955, 25.524149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528488, 34.208061, 26.202826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892538, 34.045902, 26.168583>,  <30.110968, 33.948608, 26.148037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892538, 34.045902, 26.168583>,  <29.528488, 34.208061, 26.202826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892538, 34.045902, 26.168583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265803, 0.412772, 0.871188,
		-0.317837, -0.815644, 0.483429,
		0.910126, -0.405393, -0.085606,
		30.165575, 33.924286, 26.142900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682447, 33.865135, 26.808613>,  <29.528488, 34.208061, 26.202826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682447, 33.865135, 26.808613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028673, 33.948544, 26.626486>,  <30.236408, 33.998589, 26.517210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028673, 33.948544, 26.626486>,  <29.682447, 33.865135, 26.808613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028673, 33.948544, 26.626486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370687, 0.344550, 0.862483,
		0.336711, -0.915320, 0.220942,
		0.865573, 0.208507, -0.455311,
		30.288343, 34.011101, 26.489891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203466, 33.496193, 27.176321>,  <29.682447, 33.865135, 26.808613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203466, 33.496193, 27.176321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398874, 33.788063, 26.984936>,  <30.516119, 33.963184, 26.870104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398874, 33.788063, 26.984936>,  <30.203466, 33.496193, 27.176321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398874, 33.788063, 26.984936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596504, 0.120920, 0.793449,
		0.636813, -0.673021, -0.376180,
		0.488520, 0.729672, -0.478463,
		30.545431, 34.006966, 26.841396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831388, 33.443016, 27.415989>,  <30.203466, 33.496193, 27.176321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831388, 33.443016, 27.415989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796196, 33.818737, 27.283340>,  <30.775080, 34.044170, 27.203751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796196, 33.818737, 27.283340>,  <30.831388, 33.443016, 27.415989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796196, 33.818737, 27.283340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423532, 0.336596, 0.841026,
		0.901598, -0.066456, -0.427438,
		-0.087982, 0.939301, -0.331620,
		30.769802, 34.100529, 27.183855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494698, 33.747784, 27.604492>,  <30.831388, 33.443016, 27.415989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494698, 33.747784, 27.604492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229177, 34.038063, 27.532129>,  <31.069866, 34.212231, 27.488712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229177, 34.038063, 27.532129>,  <31.494698, 33.747784, 27.604492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229177, 34.038063, 27.532129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211050, 0.413804, 0.885565,
		0.717515, 0.549658, -0.427842,
		-0.663800, 0.725702, -0.180905,
		31.030037, 34.255772, 27.477858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836149, 34.368511, 27.767241>,  <31.494698, 33.747784, 27.604492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836149, 34.368511, 27.767241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450331, 34.474072, 27.768450>,  <31.218840, 34.537407, 27.769175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450331, 34.474072, 27.768450>,  <31.836149, 34.368511, 27.767241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450331, 34.474072, 27.768450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114020, 0.406353, 0.906574,
		0.238017, 0.874776, -0.422036,
		-0.964545, 0.263901, 0.003023,
		31.160967, 34.553242, 27.769356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827253, 35.007957, 28.164043>,  <31.836149, 34.368511, 27.767241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827253, 35.007957, 28.164043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440113, 34.908379, 28.178387>,  <31.207829, 34.848629, 28.186993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440113, 34.908379, 28.178387>,  <31.827253, 35.007957, 28.164043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440113, 34.908379, 28.178387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089449, 0.473925, 0.876010,
		-0.235078, 0.844641, -0.480958,
		-0.967852, -0.248952, 0.035857,
		31.149757, 34.833694, 28.189144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505650, 35.640865, 28.328890>,  <31.827253, 35.007957, 28.164043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505650, 35.640865, 28.328890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251884, 35.340286, 28.401377>,  <31.099625, 35.159939, 28.444870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251884, 35.340286, 28.401377>,  <31.505650, 35.640865, 28.328890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251884, 35.340286, 28.401377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218347, 0.399098, 0.890531,
		-0.741515, 0.525396, -0.417270,
		-0.634413, -0.751452, 0.181218,
		31.061560, 35.114849, 28.455742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816799, 35.907532, 28.403015>,  <31.505650, 35.640865, 28.328890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816799, 35.907532, 28.403015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827002, 35.560989, 28.602524>,  <30.833122, 35.353062, 28.722229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827002, 35.560989, 28.602524>,  <30.816799, 35.907532, 28.403015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827002, 35.560989, 28.602524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293476, 0.470461, 0.832189,
		-0.955626, -0.167602, -0.242257,
		0.025504, -0.866358, 0.498772,
		30.834652, 35.301083, 28.752155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371878, 36.051643, 29.067768>,  <30.816799, 35.907532, 28.403015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371878, 36.051643, 29.067768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568396, 35.710896, 29.140373>,  <30.686306, 35.506447, 29.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568396, 35.710896, 29.140373>,  <30.371878, 36.051643, 29.067768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568396, 35.710896, 29.140373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209338, 0.086802, 0.973983,
		-0.845461, -0.516512, -0.135683,
		0.491297, -0.851869, 0.181513,
		30.715784, 35.455334, 29.194828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919180, 35.644035, 29.628498>,  <30.371878, 36.051643, 29.067768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919180, 35.644035, 29.628498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282669, 35.477150, 29.623528>,  <30.500763, 35.377018, 29.620544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282669, 35.477150, 29.623528>,  <29.919180, 35.644035, 29.628498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282669, 35.477150, 29.623528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041671, 0.061055, 0.997264,
		-0.415311, -0.906756, 0.072868,
		0.908725, -0.417212, -0.012429,
		30.555286, 35.351986, 29.619799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959146, 35.081158, 30.167376>,  <29.919180, 35.644035, 29.628498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959146, 35.081158, 30.167376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339588, 35.178787, 30.091658>,  <30.567852, 35.237366, 30.046227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339588, 35.178787, 30.091658>,  <29.959146, 35.081158, 30.167376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339588, 35.178787, 30.091658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202133, -0.028433, 0.978945,
		0.233552, -0.969340, -0.076378,
		0.951102, 0.244073, -0.189295,
		30.624920, 35.252010, 30.034868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350267, 34.548885, 30.457253>,  <29.959146, 35.081158, 30.167376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350267, 34.548885, 30.457253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594608, 34.865337, 30.444815>,  <30.741213, 35.055210, 30.437351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594608, 34.865337, 30.444815>,  <30.350267, 34.548885, 30.457253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594608, 34.865337, 30.444815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245597, -0.152000, 0.957381,
		0.752689, -0.592456, -0.287149,
		0.610853, 0.791133, -0.031097,
		30.777864, 35.102676, 30.435486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064663, 34.329754, 30.633133>,  <30.350267, 34.548885, 30.457253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064663, 34.329754, 30.633133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022934, 34.722980, 30.693390>,  <30.997896, 34.958916, 30.729544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022934, 34.722980, 30.693390>,  <31.064663, 34.329754, 30.633133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022934, 34.722980, 30.693390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290362, -0.114762, 0.950010,
		0.951213, 0.142847, -0.273474,
		-0.104322, 0.983069, 0.150640,
		30.991638, 35.017902, 30.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574409, 34.499699, 31.080582>,  <31.064663, 34.329754, 30.633133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574409, 34.499699, 31.080582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334593, 34.816616, 31.125860>,  <31.190702, 35.006767, 31.153027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334593, 34.816616, 31.125860>,  <31.574409, 34.499699, 31.080582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334593, 34.816616, 31.125860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120584, -0.050398, 0.991423,
		0.791206, 0.608051, -0.065322,
		-0.599543, 0.792297, 0.113196,
		31.154730, 35.054306, 31.159819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924093, 34.911385, 31.574427>,  <31.574409, 34.499699, 31.080582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924093, 34.911385, 31.574427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550491, 35.054272, 31.572336>,  <31.326330, 35.140003, 31.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550491, 35.054272, 31.572336>,  <31.924093, 34.911385, 31.574427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550491, 35.054272, 31.572336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040696, 0.120911, 0.991829,
		0.354931, 0.926162, -0.127468,
		-0.934006, 0.357218, -0.005224,
		31.270288, 35.161438, 31.570768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977634, 35.232994, 32.136211>,  <31.924093, 34.911385, 31.574427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977634, 35.232994, 32.136211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582882, 35.258591, 32.076916>,  <31.346031, 35.273949, 32.041340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582882, 35.258591, 32.076916>,  <31.977634, 35.232994, 32.136211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582882, 35.258591, 32.076916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127675, 0.252708, 0.959082,
		0.098834, 0.965424, -0.241222,
		-0.986879, 0.063991, -0.148237,
		31.286818, 35.277786, 32.032444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767132, 35.824589, 32.338600>,  <31.977634, 35.232994, 32.136211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767132, 35.824589, 32.338600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418575, 35.630806, 32.369545>,  <31.209442, 35.514538, 32.388111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418575, 35.630806, 32.369545>,  <31.767132, 35.824589, 32.338600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418575, 35.630806, 32.369545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097944, 0.326299, 0.940179,
		-0.480716, 0.811685, -0.331783,
		-0.871389, -0.484455, 0.077358,
		31.157158, 35.485470, 32.392754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141336, 36.309853, 32.541431>,  <31.767132, 35.824589, 32.338600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141336, 36.309853, 32.541431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077757, 35.932133, 32.656696>,  <31.039610, 35.705502, 32.725857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077757, 35.932133, 32.656696>,  <31.141336, 36.309853, 32.541431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077757, 35.932133, 32.656696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144547, 0.310989, 0.939357,
		-0.976649, 0.107655, -0.185926,
		-0.158947, -0.944297, 0.288166,
		31.030073, 35.648842, 32.743145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586004, 36.425018, 32.965557>,  <31.141336, 36.309853, 32.541431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586004, 36.425018, 32.965557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723608, 36.058979, 33.049709>,  <30.806170, 35.839355, 33.100201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723608, 36.058979, 33.049709>,  <30.586004, 36.425018, 32.965557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723608, 36.058979, 33.049709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385318, 0.066738, 0.920367,
		-0.856264, -0.397677, -0.329644,
		0.344009, -0.915095, 0.210377,
		30.826811, 35.784451, 33.112823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149994, 36.258488, 33.437607>,  <30.586004, 36.425018, 32.965557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149994, 36.258488, 33.437607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428823, 35.977055, 33.492836>,  <30.596121, 35.808197, 33.525974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428823, 35.977055, 33.492836>,  <30.149994, 36.258488, 33.437607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428823, 35.977055, 33.492836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167930, 0.027008, 0.985429,
		-0.697056, -0.710104, -0.099326,
		0.697074, -0.703579, 0.138074,
		30.637945, 35.765980, 33.534260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846478, 35.781525, 33.847534>,  <30.149994, 36.258488, 33.437607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846478, 35.781525, 33.847534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243336, 35.795650, 33.895538>,  <30.481451, 35.804127, 33.924343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243336, 35.795650, 33.895538>,  <29.846478, 35.781525, 33.847534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243336, 35.795650, 33.895538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123241, 0.110975, 0.986152,
		0.021508, -0.993195, 0.114456,
		0.992143, 0.035315, 0.120015,
		30.540979, 35.806248, 33.931541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994257, 35.329990, 34.415070>,  <29.846478, 35.781525, 33.847534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994257, 35.329990, 34.415070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311985, 35.568508, 34.368622>,  <30.502623, 35.711620, 34.340752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311985, 35.568508, 34.368622>,  <29.994257, 35.329990, 34.415070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311985, 35.568508, 34.368622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037170, 0.238488, 0.970434,
		0.606359, -0.766521, 0.211601,
		0.794322, 0.596296, -0.116118,
		30.550282, 35.747398, 34.333786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188719, 35.424625, 35.119396>,  <29.994257, 35.329990, 34.415070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188719, 35.424625, 35.119396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449663, 35.653423, 34.920498>,  <30.606230, 35.790703, 34.801159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449663, 35.653423, 34.920498>,  <30.188719, 35.424625, 35.119396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449663, 35.653423, 34.920498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224469, 0.480824, 0.847598,
		0.723906, -0.664555, 0.185276,
		0.652360, 0.571992, -0.497243,
		30.645372, 35.825020, 34.771324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618509, 35.483433, 35.532051>,  <30.188719, 35.424625, 35.119396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618509, 35.483433, 35.532051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666512, 35.811367, 35.308098>,  <30.695312, 36.008125, 35.173725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666512, 35.811367, 35.308098>,  <30.618509, 35.483433, 35.532051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666512, 35.811367, 35.308098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021177, 0.561721, 0.827056,
		0.992547, -0.111108, 0.050048,
		0.120005, 0.819832, -0.559887,
		30.702513, 36.057316, 35.140133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274200, 36.012390, 35.704849>,  <30.618509, 35.483433, 35.532051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274200, 36.012390, 35.704849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970583, 36.205036, 35.529625>,  <30.788412, 36.320625, 35.424488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970583, 36.205036, 35.529625>,  <31.274200, 36.012390, 35.704849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970583, 36.205036, 35.529625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004497, 0.668973, 0.743273,
		0.651024, 0.566147, -0.505613,
		-0.759044, 0.481615, -0.438064,
		30.742870, 36.349522, 35.398205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489315, 36.794128, 35.666157>,  <31.274200, 36.012390, 35.704849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489315, 36.794128, 35.666157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093365, 36.750195, 35.630203>,  <30.855795, 36.723835, 35.608631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093365, 36.750195, 35.630203>,  <31.489315, 36.794128, 35.666157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093365, 36.750195, 35.630203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139206, 0.628123, 0.765561,
		-0.027628, 0.770323, -0.637055,
		-0.989878, -0.109832, -0.089880,
		30.796402, 36.717243, 35.603241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110744, 37.457054, 35.514160>,  <31.489315, 36.794128, 35.666157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110744, 37.457054, 35.514160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860958, 37.199764, 35.691383>,  <30.711086, 37.045391, 35.797718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860958, 37.199764, 35.691383>,  <31.110744, 37.457054, 35.514160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860958, 37.199764, 35.691383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124294, 0.641874, 0.756670,
		-0.771099, 0.417444, -0.480777,
		-0.624466, -0.643225, 0.443062,
		30.673618, 37.006798, 35.824303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508417, 37.134315, 34.816666>,  <31.110744, 37.457054, 35.514160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508417, 37.134315, 34.816666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901751, 37.139000, 34.889240>,  <32.137749, 37.141811, 34.932785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901751, 37.139000, 34.889240>,  <31.508417, 37.134315, 34.816666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901751, 37.139000, 34.889240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121476, 0.700153, -0.703583,
		-0.135274, 0.713897, 0.687061,
		0.983333, 0.011715, 0.181434,
		32.196751, 37.142513, 34.943672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643074, 37.842125, 34.742355>,  <31.508417, 37.134315, 34.816666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643074, 37.842125, 34.742355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979523, 37.644398, 34.654575>,  <32.181393, 37.525761, 34.601906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979523, 37.644398, 34.654575>,  <31.643074, 37.842125, 34.742355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979523, 37.644398, 34.654575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181231, 0.639908, -0.746776,
		0.509577, 0.588358, 0.627827,
		0.841122, -0.494321, -0.219454,
		32.231861, 37.496101, 34.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049408, 38.340065, 34.545731>,  <31.643074, 37.842125, 34.742355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049408, 38.340065, 34.545731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217457, 38.011715, 34.390984>,  <32.318287, 37.814705, 34.298134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217457, 38.011715, 34.390984>,  <32.049408, 38.340065, 34.545731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217457, 38.011715, 34.390984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324071, 0.533917, -0.780968,
		0.847631, 0.202727, 0.490330,
		0.420119, -0.820874, -0.386867,
		32.343494, 37.765453, 34.274925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686459, 38.570896, 34.193745>,  <32.049408, 38.340065, 34.545731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686459, 38.570896, 34.193745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625874, 38.210888, 34.030273>,  <32.589523, 37.994884, 33.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625874, 38.210888, 34.030273>,  <32.686459, 38.570896, 34.193745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625874, 38.210888, 34.030273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431455, 0.311791, -0.846542,
		0.889329, -0.304545, 0.341095,
		-0.151459, -0.900022, -0.408683,
		32.580437, 37.940880, 33.907669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301285, 38.323586, 33.889698>,  <32.686459, 38.570896, 34.193745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301285, 38.323586, 33.889698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992020, 38.153912, 33.701111>,  <32.806461, 38.052109, 33.587959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992020, 38.153912, 33.701111>,  <33.301285, 38.323586, 33.889698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992020, 38.153912, 33.701111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447168, 0.162549, -0.879556,
		0.449733, -0.890867, 0.064006,
		-0.773163, -0.424186, -0.471471,
		32.760071, 38.026657, 33.559669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583530, 38.011482, 33.392334>,  <33.301285, 38.323586, 33.889698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583530, 38.011482, 33.392334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201958, 38.051544, 33.279202>,  <32.973015, 38.075581, 33.211323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201958, 38.051544, 33.279202>,  <33.583530, 38.011482, 33.392334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201958, 38.051544, 33.279202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282041, -0.022231, -0.959145,
		-0.102350, -0.994724, -0.007041,
		-0.953927, 0.100154, -0.282828,
		32.915779, 38.081589, 33.194351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473339, 37.500763, 32.882030>,  <33.583530, 38.011482, 33.392334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473339, 37.500763, 32.882030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187607, 37.774574, 32.823856>,  <33.016167, 37.938862, 32.788952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187607, 37.774574, 32.823856>,  <33.473339, 37.500763, 32.882030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187607, 37.774574, 32.823856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191184, -0.009024, -0.981513,
		-0.673189, -0.728927, -0.124426,
		-0.714329, 0.684532, -0.145434,
		32.973309, 37.979935, 32.780228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159058, 37.291328, 32.300781>,  <33.473339, 37.500763, 32.882030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159058, 37.291328, 32.300781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007248, 37.660477, 32.326935>,  <32.916164, 37.881966, 32.342625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007248, 37.660477, 32.326935>,  <33.159058, 37.291328, 32.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007248, 37.660477, 32.326935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063891, 0.096643, -0.993266,
		-0.922974, -0.372789, -0.095641,
		-0.379521, 0.922870, 0.065381,
		32.893391, 37.937336, 32.346550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479366, 37.256012, 31.794777>,  <33.159058, 37.291328, 32.300781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479366, 37.256012, 31.794777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604523, 37.629280, 31.865543>,  <32.679615, 37.853241, 31.908003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604523, 37.629280, 31.865543>,  <32.479366, 37.256012, 31.794777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604523, 37.629280, 31.865543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031270, 0.196288, -0.980047,
		-0.949274, 0.301116, 0.090597,
		0.312891, 0.933167, 0.176916,
		32.698391, 37.909229, 31.918617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990137, 37.816868, 31.406826>,  <32.479366, 37.256012, 31.794777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990137, 37.816868, 31.406826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365845, 37.941551, 31.464254>,  <32.591270, 38.016361, 31.498713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365845, 37.941551, 31.464254>,  <31.990137, 37.816868, 31.406826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365845, 37.941551, 31.464254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040670, 0.314306, -0.948450,
		-0.340766, 0.896688, 0.282541,
		0.939268, 0.311709, 0.143573,
		32.647625, 38.035065, 31.507326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074081, 38.296093, 30.857306>,  <31.990137, 37.816868, 31.406826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074081, 38.296093, 30.857306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447811, 38.271030, 30.997660>,  <32.672047, 38.255993, 31.081873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447811, 38.271030, 30.997660>,  <32.074081, 38.296093, 30.857306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447811, 38.271030, 30.997660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355478, 0.091669, -0.930179,
		0.026112, 0.993817, 0.107920,
		0.934320, -0.062652, 0.350886,
		32.728107, 38.252235, 31.102926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355370, 38.919273, 30.466906>,  <32.074081, 38.296093, 30.857306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355370, 38.919273, 30.466906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618038, 38.644108, 30.590561>,  <32.775639, 38.479008, 30.664753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618038, 38.644108, 30.590561>,  <32.355370, 38.919273, 30.466906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618038, 38.644108, 30.590561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401727, -0.027856, -0.915336,
		0.638280, 0.725261, 0.258060,
		0.656669, -0.687910, 0.309137,
		32.815041, 38.437737, 30.683302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009361, 39.156796, 30.295116>,  <32.355370, 38.919273, 30.466906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009361, 39.156796, 30.295116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032864, 38.758461, 30.323019>,  <33.046967, 38.519463, 30.339762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032864, 38.758461, 30.323019>,  <33.009361, 39.156796, 30.295116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032864, 38.758461, 30.323019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307577, -0.048421, -0.950290,
		0.949707, 0.077292, 0.303450,
		0.058756, -0.995832, 0.069759,
		33.050491, 38.459713, 30.343946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441170, 39.019146, 29.810305>,  <33.009361, 39.156796, 30.295116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441170, 39.019146, 29.810305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304981, 38.646561, 29.861607>,  <33.223267, 38.423008, 29.892387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304981, 38.646561, 29.861607>,  <33.441170, 39.019146, 29.810305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304981, 38.646561, 29.861607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281874, -0.231248, -0.931167,
		0.897009, -0.280886, 0.341290,
		-0.340474, -0.931465, 0.128257,
		33.202839, 38.367123, 29.900084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857998, 38.530457, 29.359835>,  <33.441170, 39.019146, 29.810305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857998, 38.530457, 29.359835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547066, 38.296780, 29.453196>,  <33.360508, 38.156574, 29.509212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547066, 38.296780, 29.453196>,  <33.857998, 38.530457, 29.359835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547066, 38.296780, 29.453196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100867, -0.481952, -0.870373,
		0.620953, -0.653025, 0.433562,
		-0.777331, -0.584193, 0.233401,
		33.313866, 38.121521, 29.523216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004276, 37.912766, 29.002537>,  <33.857998, 38.530457, 29.359835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004276, 37.912766, 29.002537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611115, 37.861446, 29.055353>,  <33.375217, 37.830654, 29.087044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611115, 37.861446, 29.055353>,  <34.004276, 37.912766, 29.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611115, 37.861446, 29.055353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066985, -0.418830, -0.905591,
		0.171493, -0.898955, 0.403076,
		-0.982905, -0.128302, 0.132043,
		33.316242, 37.822956, 29.094967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852646, 37.194027, 29.076225>,  <34.004276, 37.912766, 29.002537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852646, 37.194027, 29.076225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503765, 37.355518, 28.965757>,  <33.294437, 37.452412, 28.899477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503765, 37.355518, 28.965757>,  <33.852646, 37.194027, 29.076225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503765, 37.355518, 28.965757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126766, -0.731871, -0.669548,
		-0.472436, -0.548972, 0.689517,
		-0.872201, 0.403726, -0.276172,
		33.242104, 37.476635, 28.882906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408566, 36.654114, 29.085320>,  <33.852646, 37.194027, 29.076225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408566, 36.654114, 29.085320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240124, 36.930798, 28.850643>,  <33.139057, 37.096809, 28.709837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240124, 36.930798, 28.850643>,  <33.408566, 36.654114, 29.085320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240124, 36.930798, 28.850643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214115, -0.704369, -0.676771,
		-0.881377, -0.159373, 0.444719,
		-0.421105, 0.691711, -0.586691,
		33.113792, 37.138309, 28.674637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840195, 36.313068, 28.839338>,  <33.408566, 36.654114, 29.085320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840195, 36.313068, 28.839338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883049, 36.613266, 28.578484>,  <32.908760, 36.793385, 28.421970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883049, 36.613266, 28.578484>,  <32.840195, 36.313068, 28.839338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883049, 36.613266, 28.578484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199516, -0.626340, -0.753586,
		-0.974020, 0.210845, 0.082634,
		0.107133, 0.750495, -0.652134,
		32.915188, 36.838413, 28.382843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300785, 36.190781, 28.364822>,  <32.840195, 36.313068, 28.839338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300785, 36.190781, 28.364822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571728, 36.425423, 28.187246>,  <32.734291, 36.566208, 28.080700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571728, 36.425423, 28.187246>,  <32.300785, 36.190781, 28.364822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571728, 36.425423, 28.187246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126219, -0.501842, -0.855701,
		-0.724750, 0.635645, -0.265882,
		0.677353, 0.586610, -0.443940,
		32.774933, 36.601406, 28.054064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003643, 36.476456, 27.760675>,  <32.300785, 36.190781, 28.364822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003643, 36.476456, 27.760675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400349, 36.496044, 27.713345>,  <32.638374, 36.507797, 27.684946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400349, 36.496044, 27.713345>,  <32.003643, 36.476456, 27.760675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400349, 36.496044, 27.713345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062211, -0.623395, -0.779428,
		-0.111937, 0.780372, -0.615215,
		0.991766, 0.048973, -0.118329,
		32.697880, 36.510735, 27.677845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073082, 36.599045, 27.076525>,  <32.003643, 36.476456, 27.760675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073082, 36.599045, 27.076525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424789, 36.459724, 27.206497>,  <32.635815, 36.376133, 27.284481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424789, 36.459724, 27.206497>,  <32.073082, 36.599045, 27.076525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424789, 36.459724, 27.206497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056026, -0.753037, -0.655588,
		0.473028, 0.558231, -0.681632,
		0.879264, -0.348301, 0.324933,
		32.688568, 36.355236, 27.303976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391281, 36.521461, 26.461294>,  <32.073082, 36.599045, 27.076525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391281, 36.521461, 26.461294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621895, 36.311676, 26.711906>,  <32.760265, 36.185802, 26.862274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621895, 36.311676, 26.711906>,  <32.391281, 36.521461, 26.461294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621895, 36.311676, 26.711906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067112, -0.794605, -0.603406,
		0.814310, 0.305839, -0.493317,
		0.576538, -0.524467, 0.626529,
		32.794857, 36.154335, 26.899864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852242, 36.210125, 26.013409>,  <32.391281, 36.521461, 26.461294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852242, 36.210125, 26.013409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856140, 35.996262, 26.351414>,  <32.858479, 35.867943, 26.554216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856140, 35.996262, 26.351414>,  <32.852242, 36.210125, 26.013409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856140, 35.996262, 26.351414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015146, -0.844878, -0.534744,
		0.999838, 0.018010, -0.000136,
		0.009746, -0.534655, 0.845014,
		32.859062, 35.835865, 26.604918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432903, 35.707943, 25.965267>,  <32.852242, 36.210125, 26.013409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432903, 35.707943, 25.965267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172913, 35.568462, 26.235357>,  <33.016918, 35.484776, 26.397411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172913, 35.568462, 26.235357>,  <33.432903, 35.707943, 25.965267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172913, 35.568462, 26.235357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021689, -0.879641, -0.475143,
		0.759641, -0.323479, 0.564187,
		-0.649980, -0.348702, 0.675228,
		32.977917, 35.463852, 26.437925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716553, 35.084915, 26.151026>,  <33.432903, 35.707943, 25.965267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716553, 35.084915, 26.151026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327488, 35.045712, 26.235235>,  <33.094048, 35.022190, 26.285761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327488, 35.045712, 26.235235>,  <33.716553, 35.084915, 26.151026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327488, 35.045712, 26.235235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001844, -0.909796, -0.415051,
		0.232212, -0.403316, 0.885106,
		-0.972663, -0.098011, 0.210522,
		33.035690, 35.016308, 26.298391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570381, 34.429672, 26.374924>,  <33.716553, 35.084915, 26.151026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570381, 34.429672, 26.374924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215939, 34.556686, 26.239882>,  <33.003273, 34.632896, 26.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215939, 34.556686, 26.239882>,  <33.570381, 34.429672, 26.374924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215939, 34.556686, 26.239882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149015, -0.884943, -0.441215,
		-0.438864, -0.340657, 0.831475,
		-0.886111, 0.317535, -0.337607,
		32.950104, 34.651947, 26.138599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128136, 33.874249, 26.657753>,  <33.570381, 34.429672, 26.374924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128136, 33.874249, 26.657753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987675, 34.059368, 26.332174>,  <32.903397, 34.170441, 26.136827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987675, 34.059368, 26.332174>,  <33.128136, 33.874249, 26.657753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987675, 34.059368, 26.332174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113943, -0.883968, -0.453450,
		-0.929359, -0.066487, 0.363141,
		-0.351154, 0.462795, -0.813948,
		32.882328, 34.198208, 26.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766098, 33.325642, 26.369312>,  <33.128136, 33.874249, 26.657753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766098, 33.325642, 26.369312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735085, 33.601624, 26.081438>,  <32.716476, 33.767212, 25.908712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735085, 33.601624, 26.081438>,  <32.766098, 33.325642, 26.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735085, 33.601624, 26.081438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363287, -0.691783, -0.624066,
		-0.928445, 0.213066, 0.304289,
		-0.077534, 0.689956, -0.719687,
		32.711823, 33.808609, 25.865532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177299, 33.086353, 25.880325>,  <32.766098, 33.325642, 26.369312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177299, 33.086353, 25.880325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408314, 33.342720, 25.678066>,  <32.546921, 33.496540, 25.556711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408314, 33.342720, 25.678066>,  <32.177299, 33.086353, 25.880325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408314, 33.342720, 25.678066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163481, -0.516040, -0.840819,
		-0.799832, 0.568263, -0.193252,
		0.577532, 0.640921, -0.505645,
		32.581573, 33.534996, 25.526373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845825, 33.285362, 25.131300>,  <32.177299, 33.086353, 25.880325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845825, 33.285362, 25.131300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240376, 33.350727, 25.138893>,  <32.477104, 33.389946, 25.143450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240376, 33.350727, 25.138893>,  <31.845825, 33.285362, 25.131300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240376, 33.350727, 25.138893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075212, -0.345314, -0.935468,
		-0.146308, 0.924151, -0.352900,
		0.986376, 0.163408, 0.018985,
		32.536289, 33.399750, 25.144588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986023, 33.657936, 24.530807>,  <31.845825, 33.285362, 25.131300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986023, 33.657936, 24.530807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325985, 33.482719, 24.647963>,  <32.529961, 33.377590, 24.718256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325985, 33.482719, 24.647963>,  <31.986023, 33.657936, 24.530807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325985, 33.482719, 24.647963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097710, -0.415176, -0.904479,
		0.517800, 0.797337, -0.310059,
		0.849903, -0.438043, 0.292886,
		32.580956, 33.351307, 24.735828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442051, 33.812027, 23.985935>,  <31.986023, 33.657936, 24.530807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442051, 33.812027, 23.985935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623219, 33.509529, 24.174809>,  <32.731918, 33.328030, 24.288132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623219, 33.509529, 24.174809>,  <32.442051, 33.812027, 23.985935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623219, 33.509529, 24.174809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118237, -0.473992, -0.872555,
		0.883677, 0.451026, -0.125264,
		0.452919, -0.756246, 0.472184,
		32.759094, 33.282654, 24.316463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988171, 33.768429, 23.569754>,  <32.442051, 33.812027, 23.985935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988171, 33.768429, 23.569754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940479, 33.427269, 23.773066>,  <32.911865, 33.222572, 23.895054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940479, 33.427269, 23.773066>,  <32.988171, 33.768429, 23.569754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940479, 33.427269, 23.773066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095388, -0.519405, -0.849188,
		0.988274, -0.052766, 0.143285,
		-0.119231, -0.852897, 0.508281,
		32.904709, 33.171398, 23.925550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472488, 33.349697, 23.275164>,  <32.988171, 33.768429, 23.569754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472488, 33.349697, 23.275164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226311, 33.101360, 23.469397>,  <33.078606, 32.952358, 23.585938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226311, 33.101360, 23.469397>,  <33.472488, 33.349697, 23.275164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226311, 33.101360, 23.469397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111000, -0.541669, -0.833231,
		0.780328, -0.566704, 0.264452,
		-0.615440, -0.620840, 0.485584,
		33.041679, 32.915108, 23.615072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732792, 32.676205, 23.284256>,  <33.472488, 33.349697, 23.275164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732792, 32.676205, 23.284256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336014, 32.646561, 23.325354>,  <33.097946, 32.628773, 23.350012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336014, 32.646561, 23.325354>,  <33.732792, 32.676205, 23.284256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336014, 32.646561, 23.325354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037247, -0.604556, -0.795691,
		0.121087, -0.793107, 0.596925,
		-0.991943, -0.074114, 0.102745,
		33.038429, 32.624325, 23.356176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560413, 32.065937, 22.825470>,  <33.732792, 32.676205, 23.284256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560413, 32.065937, 22.825470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196793, 32.200516, 22.923800>,  <32.978619, 32.281261, 22.982798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196793, 32.200516, 22.923800>,  <33.560413, 32.065937, 22.825470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196793, 32.200516, 22.923800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408446, -0.602765, -0.685453,
		-0.082446, -0.723517, 0.685365,
		-0.909051, 0.336448, 0.245822,
		32.924076, 32.301449, 22.997545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165173, 31.500235, 23.022028>,  <33.560413, 32.065937, 22.825470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165173, 31.500235, 23.022028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926491, 31.784840, 22.873602>,  <32.783279, 31.955603, 22.784546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926491, 31.784840, 22.873602>,  <33.165173, 31.500235, 23.022028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926491, 31.784840, 22.873602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316452, -0.633579, -0.706000,
		-0.737427, -0.303851, 0.603221,
		-0.596707, 0.711514, -0.371064,
		32.747478, 31.998295, 22.762283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657131, 31.118889, 23.430882>,  <33.165173, 31.500235, 23.022028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657131, 31.118889, 23.430882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999046, 30.934427, 23.335657>,  <34.204197, 30.823750, 23.278522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999046, 30.934427, 23.335657>,  <33.657131, 31.118889, 23.430882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999046, 30.934427, 23.335657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513344, 0.683901, 0.518418,
		-0.076259, -0.565346, 0.821321,
		0.854788, -0.461154, -0.238063,
		34.255482, 30.796082, 23.264238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070576, 31.072092, 24.101954>,  <33.657131, 31.118889, 23.430882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070576, 31.072092, 24.101954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296474, 31.071083, 23.771851>,  <34.432014, 31.070478, 23.573788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296474, 31.071083, 23.771851>,  <34.070576, 31.072092, 24.101954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296474, 31.071083, 23.771851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543445, 0.753704, 0.369592,
		0.621068, -0.657209, 0.427025,
		0.564750, -0.002523, -0.825258,
		34.465900, 31.070326, 23.524273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700199, 30.985111, 24.363882>,  <34.070576, 31.072092, 24.101954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700199, 30.985111, 24.363882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772018, 31.129555, 23.997852>,  <34.815109, 31.216221, 23.778234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772018, 31.129555, 23.997852>,  <34.700199, 30.985111, 24.363882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772018, 31.129555, 23.997852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581384, 0.711416, 0.394816,
		0.793571, -0.602898, -0.082212,
		0.179547, 0.361111, -0.915075,
		34.825882, 31.237888, 23.723330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425491, 30.973246, 24.307535>,  <34.700199, 30.985111, 24.363882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425491, 30.973246, 24.307535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268265, 31.253271, 24.069069>,  <35.173927, 31.421286, 23.925989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268265, 31.253271, 24.069069>,  <35.425491, 30.973246, 24.307535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268265, 31.253271, 24.069069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726944, 0.633612, 0.264742,
		0.563073, -0.329316, -0.757958,
		-0.393068, 0.700062, -0.596164,
		35.150345, 31.463289, 23.890219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998379, 31.320789, 23.936430>,  <35.425491, 30.973246, 24.307535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998379, 31.320789, 23.936430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696270, 31.574183, 23.869188>,  <35.515003, 31.726219, 23.828842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696270, 31.574183, 23.869188>,  <35.998379, 31.320789, 23.936430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696270, 31.574183, 23.869188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550409, 0.752308, 0.362055,
		0.355822, 0.180925, -0.916874,
		-0.755275, 0.633482, -0.168105,
		35.469688, 31.764227, 23.818756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270718, 31.911741, 23.657089>,  <35.998379, 31.320789, 23.936430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270718, 31.911741, 23.657089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925560, 32.020863, 23.827263>,  <35.718468, 32.086334, 23.929367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925560, 32.020863, 23.827263>,  <36.270718, 31.911741, 23.657089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925560, 32.020863, 23.827263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469037, 0.745763, 0.473120,
		-0.188206, 0.607797, -0.771467,
		-0.862892, 0.272803, 0.425437,
		35.666691, 32.102703, 23.954893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218456, 32.693859, 23.653746>,  <36.270718, 31.911741, 23.657089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218456, 32.693859, 23.653746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929272, 32.605919, 23.915733>,  <35.755760, 32.553154, 24.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929272, 32.605919, 23.915733>,  <36.218456, 32.693859, 23.653746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929272, 32.605919, 23.915733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364211, 0.684310, 0.631720,
		-0.587088, 0.695259, -0.414660,
		-0.722965, -0.219852, 0.654971,
		35.712383, 32.539963, 24.112225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059422, 33.294289, 23.933275>,  <36.218456, 32.693859, 23.653746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059422, 33.294289, 23.933275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904644, 33.045235, 24.205334>,  <35.811779, 32.895802, 24.368568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904644, 33.045235, 24.205334>,  <36.059422, 33.294289, 23.933275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904644, 33.045235, 24.205334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259532, 0.634248, 0.728267,
		-0.884827, 0.458318, -0.083824,
		-0.386943, -0.622635, 0.680148,
		35.788563, 32.858444, 24.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713154, 33.689842, 24.401081>,  <36.059422, 33.294289, 23.933275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713154, 33.689842, 24.401081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754364, 33.350006, 24.607996>,  <35.779091, 33.146107, 24.732145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754364, 33.350006, 24.607996>,  <35.713154, 33.689842, 24.401081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754364, 33.350006, 24.607996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144127, 0.527320, 0.837354,
		-0.984181, -0.011716, 0.176778,
		0.103029, -0.849586, 0.517290,
		35.785275, 33.095131, 24.763184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217686, 33.655537, 24.976696>,  <35.713154, 33.689842, 24.401081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217686, 33.655537, 24.976696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505772, 33.394642, 25.071245>,  <35.678623, 33.238106, 25.127975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505772, 33.394642, 25.071245>,  <35.217686, 33.655537, 24.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505772, 33.394642, 25.071245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096272, 0.431388, 0.897015,
		-0.687035, -0.623290, 0.373486,
		0.720218, -0.652237, 0.236374,
		35.721836, 33.198971, 25.142157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998211, 33.366665, 25.592201>,  <35.217686, 33.655537, 24.976696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998211, 33.366665, 25.592201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393124, 33.319660, 25.549389>,  <35.630074, 33.291458, 25.523701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393124, 33.319660, 25.549389>,  <34.998211, 33.366665, 25.592201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393124, 33.319660, 25.549389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148743, 0.445598, 0.882790,
		-0.056049, -0.887487, 0.457412,
		0.987287, -0.117516, -0.107032,
		35.689308, 33.284405, 25.517279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252972, 33.027264, 26.167532>,  <34.998211, 33.366665, 25.592201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252972, 33.027264, 26.167532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568184, 33.215603, 26.008883>,  <35.757313, 33.328606, 25.913692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568184, 33.215603, 26.008883>,  <35.252972, 33.027264, 26.167532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568184, 33.215603, 26.008883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267947, 0.317710, 0.909541,
		0.554269, -0.823019, 0.124202,
		0.788029, 0.470851, -0.396622,
		35.804592, 33.356857, 25.889896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936131, 32.910942, 26.566273>,  <35.252972, 33.027264, 26.167532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936131, 32.910942, 26.566273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019432, 33.241161, 26.356474>,  <36.069412, 33.439293, 26.230595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019432, 33.241161, 26.356474>,  <35.936131, 32.910942, 26.566273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019432, 33.241161, 26.356474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113866, 0.512145, 0.851318,
		0.971424, -0.237014, 0.012655,
		0.208255, 0.825549, -0.524498,
		36.081909, 33.488827, 26.199125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365627, 33.254650, 27.066721>,  <35.936131, 32.910942, 26.566273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365627, 33.254650, 27.066721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266907, 33.543518, 26.808247>,  <36.207676, 33.716839, 26.653162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266907, 33.543518, 26.808247>,  <36.365627, 33.254650, 27.066721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266907, 33.543518, 26.808247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046556, 0.657208, 0.752270,
		0.967947, 0.215745, -0.128578,
		-0.246802, 0.722172, -0.646186,
		36.192867, 33.760170, 26.614391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726765, 33.847134, 27.260059>,  <36.365627, 33.254650, 27.066721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726765, 33.847134, 27.260059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388515, 33.956776, 27.076845>,  <36.185566, 34.022560, 26.966917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388515, 33.956776, 27.076845>,  <36.726765, 33.847134, 27.260059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388515, 33.956776, 27.076845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176818, 0.665800, 0.724876,
		0.503652, 0.693958, -0.514546,
		-0.845618, 0.274104, -0.458036,
		36.134830, 34.039005, 26.939434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687687, 34.535492, 27.442255>,  <36.726765, 33.847134, 27.260059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687687, 34.535492, 27.442255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321312, 34.511684, 27.283499>,  <36.101486, 34.497398, 27.188246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321312, 34.511684, 27.283499>,  <36.687687, 34.535492, 27.442255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321312, 34.511684, 27.283499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360560, 0.556328, 0.748662,
		0.176242, 0.828828, -0.531020,
		-0.915934, -0.059519, -0.396891,
		36.046532, 34.493828, 27.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422340, 35.208107, 27.377617>,  <36.687687, 34.535492, 27.442255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422340, 35.208107, 27.377617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107174, 34.961819, 27.380995>,  <35.918072, 34.814045, 27.383020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107174, 34.961819, 27.380995>,  <36.422340, 35.208107, 27.377617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107174, 34.961819, 27.380995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456646, 0.593443, 0.662797,
		-0.413109, 0.518375, -0.748752,
		-0.787918, -0.615722, 0.008443,
		35.870800, 34.777103, 27.383528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781456, 35.712608, 27.447851>,  <36.422340, 35.208107, 27.377617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781456, 35.712608, 27.447851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640781, 35.353420, 27.553650>,  <35.556377, 35.137905, 27.617130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640781, 35.353420, 27.553650>,  <35.781456, 35.712608, 27.447851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640781, 35.353420, 27.553650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503849, 0.419709, 0.754970,
		-0.788955, 0.132248, -0.600050,
		-0.351690, -0.897972, 0.264499,
		35.535275, 35.084030, 27.632999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227886, 35.940018, 27.692225>,  <35.781456, 35.712608, 27.447851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227886, 35.940018, 27.692225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233116, 35.559570, 27.815641>,  <35.236252, 35.331303, 27.889690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233116, 35.559570, 27.815641>,  <35.227886, 35.940018, 27.692225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233116, 35.559570, 27.815641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368807, 0.282225, 0.885625,
		-0.929414, -0.125368, -0.347091,
		0.013071, -0.951121, 0.308540,
		35.237038, 35.274235, 27.908203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553913, 35.787960, 27.972050>,  <35.227886, 35.940018, 27.692225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553913, 35.787960, 27.972050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847328, 35.573612, 28.139271>,  <35.023376, 35.445004, 28.239603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847328, 35.573612, 28.139271>,  <34.553913, 35.787960, 27.972050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847328, 35.573612, 28.139271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244601, 0.365737, 0.898001,
		-0.634112, -0.760971, 0.137206,
		0.733534, -0.535873, 0.418053,
		35.067387, 35.412849, 28.264687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283180, 35.420105, 28.479780>,  <34.553913, 35.787960, 27.972050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283180, 35.420105, 28.479780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670143, 35.436771, 28.579687>,  <34.902321, 35.446774, 28.639631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670143, 35.436771, 28.579687>,  <34.283180, 35.420105, 28.479780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670143, 35.436771, 28.579687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247329, 0.366968, 0.896751,
		-0.054287, -0.929300, 0.365314,
		0.967410, 0.041671, 0.249765,
		34.960365, 35.449272, 28.654617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200546, 35.400539, 29.133678>,  <34.283180, 35.420105, 28.479780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200546, 35.400539, 29.133678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592480, 35.475838, 29.106853>,  <34.827641, 35.521019, 29.090759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592480, 35.475838, 29.106853>,  <34.200546, 35.400539, 29.133678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592480, 35.475838, 29.106853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039738, 0.512420, 0.857815,
		0.195846, -0.837847, 0.509565,
		0.979829, 0.188249, -0.067061,
		34.886429, 35.532314, 29.086735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468716, 35.176998, 29.726038>,  <34.200546, 35.400539, 29.133678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468716, 35.176998, 29.726038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677387, 35.480602, 29.570217>,  <34.802589, 35.662766, 29.476725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677387, 35.480602, 29.570217>,  <34.468716, 35.176998, 29.726038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677387, 35.480602, 29.570217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208037, 0.555999, 0.804727,
		0.827388, -0.338768, 0.447956,
		0.521679, 0.759013, -0.389551,
		34.833893, 35.708305, 29.453352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811371, 35.381222, 30.267826>,  <34.468716, 35.176998, 29.726038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811371, 35.381222, 30.267826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840549, 35.709717, 30.041466>,  <34.858055, 35.906815, 29.905649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840549, 35.709717, 30.041466>,  <34.811371, 35.381222, 30.267826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840549, 35.709717, 30.041466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006419, 0.567787, 0.823151,
		0.997315, -0.056413, 0.046689,
		0.072946, 0.821240, -0.565900,
		34.862434, 35.956089, 29.871696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495388, 35.697701, 30.490793>,  <34.811371, 35.381222, 30.267826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495388, 35.697701, 30.490793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300072, 35.990574, 30.300854>,  <35.182884, 36.166298, 30.186890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300072, 35.990574, 30.300854>,  <35.495388, 35.697701, 30.490793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300072, 35.990574, 30.300854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263580, 0.642451, 0.719571,
		0.831926, 0.226196, -0.506690,
		-0.488288, 0.732183, -0.474851,
		35.153584, 36.210228, 30.158398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899654, 36.246120, 30.423975>,  <35.495388, 35.697701, 30.490793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899654, 36.246120, 30.423975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536339, 36.412201, 30.403540>,  <35.318348, 36.511848, 30.391279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536339, 36.412201, 30.403540>,  <35.899654, 36.246120, 30.423975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536339, 36.412201, 30.403540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256237, 0.648711, 0.716601,
		0.330678, 0.637792, -0.695610,
		-0.908292, 0.415205, -0.051089,
		35.263851, 36.536762, 30.388212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964428, 36.954109, 30.326342>,  <35.899654, 36.246120, 30.423975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964428, 36.954109, 30.326342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597424, 36.923820, 30.482517>,  <35.377220, 36.905647, 30.576223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597424, 36.923820, 30.482517>,  <35.964428, 36.954109, 30.326342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597424, 36.923820, 30.482517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166556, 0.818316, 0.550107,
		-0.361161, 0.569758, -0.738199,
		-0.917509, -0.075726, 0.390440,
		35.322170, 36.901104, 30.599649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716232, 37.670494, 30.376514>,  <35.964428, 36.954109, 30.326342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716232, 37.670494, 30.376514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474632, 37.450199, 30.606945>,  <35.329670, 37.318020, 30.745203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474632, 37.450199, 30.606945>,  <35.716232, 37.670494, 30.376514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474632, 37.450199, 30.606945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119896, 0.651805, 0.748849,
		-0.787911, 0.521377, -0.327661,
		-0.604004, -0.550741, 0.576076,
		35.293430, 37.284977, 30.779768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428608, 38.118694, 30.724628>,  <35.716232, 37.670494, 30.376514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428608, 38.118694, 30.724628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358154, 37.803505, 30.960621>,  <35.315884, 37.614391, 31.102217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358154, 37.803505, 30.960621>,  <35.428608, 38.118694, 30.724628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358154, 37.803505, 30.960621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177293, 0.564157, 0.806408,
		-0.968269, 0.246633, 0.040337,
		-0.176130, -0.787971, 0.589983,
		35.305317, 37.567112, 31.137615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955723, 38.293846, 31.254124>,  <35.428608, 38.118694, 30.724628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955723, 38.293846, 31.254124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150337, 37.970711, 31.387201>,  <35.267105, 37.776829, 31.467047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150337, 37.970711, 31.387201>,  <34.955723, 38.293846, 31.254124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150337, 37.970711, 31.387201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284065, 0.506388, 0.814173,
		-0.826188, -0.301621, 0.475855,
		0.486539, -0.807834, 0.332692,
		35.296299, 37.728359, 31.487009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877388, 38.348030, 32.029221>,  <34.955723, 38.293846, 31.254124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877388, 38.348030, 32.029221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165073, 38.072929, 31.989744>,  <35.337685, 37.907871, 31.966057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165073, 38.072929, 31.989744>,  <34.877388, 38.348030, 32.029221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165073, 38.072929, 31.989744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317538, 0.199017, 0.927126,
		-0.617987, -0.698136, 0.361521,
		0.719209, -0.687749, -0.098695,
		35.380836, 37.866604, 31.960136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836517, 37.874367, 32.638618>,  <34.877388, 38.348030, 32.029221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836517, 37.874367, 32.638618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210369, 37.864334, 32.496727>,  <35.434681, 37.858315, 32.411594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210369, 37.864334, 32.496727>,  <34.836517, 37.874367, 32.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210369, 37.864334, 32.496727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355318, 0.106335, 0.928678,
		0.014427, -0.994014, 0.108296,
		0.934634, -0.025081, -0.354726,
		35.490761, 37.856812, 32.390308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233425, 37.460464, 33.103367>,  <34.836517, 37.874367, 32.638618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233425, 37.460464, 33.103367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537674, 37.640656, 32.916386>,  <35.720222, 37.748772, 32.804195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537674, 37.640656, 32.916386>,  <35.233425, 37.460464, 33.103367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537674, 37.640656, 32.916386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542639, -0.045917, 0.838710,
		0.356358, -0.891605, -0.279373,
		0.760626, 0.450480, -0.467456,
		35.765862, 37.775799, 32.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775291, 37.191490, 33.403286>,  <35.233425, 37.460464, 33.103367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775291, 37.191490, 33.403286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937572, 37.509945, 33.223701>,  <36.034943, 37.701019, 33.115952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937572, 37.509945, 33.223701>,  <35.775291, 37.191490, 33.403286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937572, 37.509945, 33.223701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619977, 0.121223, 0.775199,
		0.671589, -0.592850, -0.444406,
		0.405704, 0.796137, -0.448965,
		36.059284, 37.748787, 33.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579948, 37.092449, 33.360744>,  <35.775291, 37.191490, 33.403286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579948, 37.092449, 33.360744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512474, 37.486290, 33.342403>,  <36.471989, 37.722595, 33.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512474, 37.486290, 33.342403>,  <36.579948, 37.092449, 33.360744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512474, 37.486290, 33.342403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562357, 0.134341, 0.815909,
		0.809506, 0.111845, -0.576359,
		-0.168684, 0.984603, -0.045853,
		36.461868, 37.781670, 33.328648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229744, 37.487820, 33.411148>,  <36.579948, 37.092449, 33.360744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229744, 37.487820, 33.411148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970974, 37.783501, 33.486053>,  <36.815712, 37.960911, 33.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970974, 37.783501, 33.486053>,  <37.229744, 37.487820, 33.411148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970974, 37.783501, 33.486053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467552, 0.190502, 0.863194,
		0.602403, 0.645976, -0.468856,
		-0.646921, 0.739205, 0.187268,
		36.776897, 38.005260, 33.542233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676033, 38.093853, 33.647015>,  <37.229744, 37.487820, 33.411148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676033, 38.093853, 33.647015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321541, 38.136517, 33.827335>,  <37.108845, 38.162113, 33.935528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321541, 38.136517, 33.827335>,  <37.676033, 38.093853, 33.647015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321541, 38.136517, 33.827335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462693, 0.156240, 0.872642,
		0.022642, 0.981944, -0.187814,
		-0.886230, 0.106659, 0.450801,
		37.055672, 38.168514, 33.962574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729176, 38.761803, 33.897709>,  <37.676033, 38.093853, 33.647015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729176, 38.761803, 33.897709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448334, 38.580585, 34.117455>,  <37.279827, 38.471855, 34.249302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448334, 38.580585, 34.117455>,  <37.729176, 38.761803, 33.897709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448334, 38.580585, 34.117455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372257, 0.424150, 0.825543,
		-0.607019, 0.784123, -0.129150,
		-0.702106, -0.453044, 0.549362,
		37.237701, 38.444672, 34.282265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489357, 39.305515, 34.272320>,  <37.729176, 38.761803, 33.897709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489357, 39.305515, 34.272320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386723, 38.969814, 34.464077>,  <37.325142, 38.768394, 34.579132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386723, 38.969814, 34.464077>,  <37.489357, 39.305515, 34.272320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386723, 38.969814, 34.464077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314426, 0.396533, 0.862495,
		-0.913947, 0.372039, 0.162138,
		-0.256588, -0.839255, 0.479389,
		37.309746, 38.718037, 34.607895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422756, 39.555214, 35.022499>,  <37.489357, 39.305515, 34.272320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422756, 39.555214, 35.022499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379665, 39.157734, 35.034863>,  <37.353809, 38.919247, 35.042278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379665, 39.157734, 35.034863>,  <37.422756, 39.555214, 35.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379665, 39.157734, 35.034863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328988, -0.006298, 0.944313,
		-0.938169, 0.111897, 0.327594,
		-0.107729, -0.993700, 0.030905,
		37.347347, 38.859623, 35.044132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012520, 39.374409, 35.647957>,  <37.422756, 39.555214, 35.022499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012520, 39.374409, 35.647957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252808, 39.078506, 35.526695>,  <37.396980, 38.900967, 35.453938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252808, 39.078506, 35.526695>,  <37.012520, 39.374409, 35.647957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252808, 39.078506, 35.526695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490812, 0.041939, 0.870255,
		-0.631060, -0.671571, 0.388273,
		0.600722, -0.739752, -0.303149,
		37.433025, 38.856583, 35.435749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143772, 38.799698, 36.177414>,  <37.012520, 39.374409, 35.647957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143772, 38.799698, 36.177414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471802, 38.809074, 35.948704>,  <37.668621, 38.814701, 35.811478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471802, 38.809074, 35.948704>,  <37.143772, 38.799698, 36.177414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471802, 38.809074, 35.948704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562589, 0.149813, 0.813050,
		0.104717, -0.988437, 0.109672,
		0.820078, 0.023440, -0.571771,
		37.717827, 38.816105, 35.777172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626114, 38.544453, 36.682011>,  <37.143772, 38.799698, 36.177414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626114, 38.544453, 36.682011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853882, 38.689762, 36.387039>,  <37.990543, 38.776947, 36.210056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853882, 38.689762, 36.387039>,  <37.626114, 38.544453, 36.682011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853882, 38.689762, 36.387039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666046, 0.321900, 0.672877,
		0.481816, -0.874307, -0.058662,
		0.569417, 0.363274, -0.737425,
		38.024708, 38.798744, 36.165813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242229, 38.173351, 36.730133>,  <37.626114, 38.544453, 36.682011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242229, 38.173351, 36.730133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309284, 38.511250, 36.526840>,  <38.349518, 38.713989, 36.404865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309284, 38.511250, 36.526840>,  <38.242229, 38.173351, 36.730133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309284, 38.511250, 36.526840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833657, 0.153708, 0.530461,
		0.526226, -0.512614, -0.678464,
		0.167636, 0.844749, -0.508229,
		38.359573, 38.764675, 36.374371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904789, 38.100685, 36.443905>,  <38.242229, 38.173351, 36.730133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904789, 38.100685, 36.443905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834915, 38.494316, 36.430744>,  <38.792992, 38.730495, 36.422848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834915, 38.494316, 36.430744>,  <38.904789, 38.100685, 36.443905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834915, 38.494316, 36.430744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906276, 0.173756, 0.385320,
		0.384900, 0.037495, -0.922196,
		-0.174685, 0.984075, -0.032898,
		38.782509, 38.789539, 36.420876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384571, 38.385654, 36.084366>,  <38.904789, 38.100685, 36.443905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384571, 38.385654, 36.084366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262974, 38.687881, 36.316471>,  <39.190014, 38.869217, 36.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262974, 38.687881, 36.316471>,  <39.384571, 38.385654, 36.084366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262974, 38.687881, 36.316471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947923, 0.179139, 0.263346,
		0.095030, 0.630096, -0.770680,
		-0.303992, 0.755571, 0.580259,
		39.171776, 38.914555, 36.490547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933353, 38.842808, 36.120361>,  <39.384571, 38.385654, 36.084366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933353, 38.842808, 36.120361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701298, 39.022953, 36.391834>,  <39.562065, 39.131039, 36.554718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701298, 39.022953, 36.391834>,  <39.933353, 38.842808, 36.120361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701298, 39.022953, 36.391834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814422, 0.333484, 0.474873,
		-0.012468, 0.828230, -0.560250,
		-0.580139, 0.450359, 0.678687,
		39.527256, 39.158062, 36.595440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277431, 39.484680, 36.073341>,  <39.933353, 38.842808, 36.120361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277431, 39.484680, 36.073341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074856, 39.393894, 36.406090>,  <39.953312, 39.339424, 36.605740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074856, 39.393894, 36.406090>,  <40.277431, 39.484680, 36.073341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074856, 39.393894, 36.406090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803361, 0.226290, 0.550821,
		-0.313259, 0.947249, 0.067731,
		-0.506438, -0.226962, 0.831871,
		39.922924, 39.325806, 36.655651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517937, 39.987442, 36.542824>,  <40.277431, 39.484680, 36.073341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517937, 39.987442, 36.542824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389950, 39.660141, 36.733860>,  <40.313160, 39.463760, 36.848480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389950, 39.660141, 36.733860>,  <40.517937, 39.987442, 36.542824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389950, 39.660141, 36.733860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863760, -0.044812, 0.501907,
		-0.389283, 0.573114, 0.721110,
		-0.319964, -0.818250, 0.477588,
		40.293961, 39.414665, 36.877136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521561, 40.198513, 37.332672>,  <40.517937, 39.987442, 36.542824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521561, 40.198513, 37.332672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530746, 39.798702, 37.340836>,  <40.536259, 39.558815, 37.345734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530746, 39.798702, 37.340836>,  <40.521561, 40.198513, 37.332672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530746, 39.798702, 37.340836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804323, 0.030600, 0.593404,
		-0.593749, 0.002789, 0.804646,
		0.022967, -0.999528, 0.020412,
		40.537636, 39.498844, 37.346958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001556, 40.103241, 37.719009>,  <40.521561, 40.198513, 37.332672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001556, 40.103241, 37.719009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974731, 39.735088, 37.564919>,  <40.958637, 39.514198, 37.472466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974731, 39.735088, 37.564919>,  <41.001556, 40.103241, 37.719009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974731, 39.735088, 37.564919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641699, -0.335437, 0.689713,
		-0.764019, -0.200944, 0.613104,
		-0.067064, -0.920382, -0.385226,
		40.954613, 39.458973, 37.449352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686504, 39.702637, 38.280678>,  <41.001556, 40.103241, 37.719009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686504, 39.702637, 38.280678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910881, 39.465748, 38.049294>,  <41.045509, 39.323616, 37.910461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910881, 39.465748, 38.049294>,  <40.686504, 39.702637, 38.280678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910881, 39.465748, 38.049294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443244, -0.375303, 0.814053,
		-0.699196, -0.713039, 0.051974,
		0.560946, -0.592220, -0.578460,
		41.079166, 39.288082, 37.875755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673145, 39.001324, 38.482983>,  <40.686504, 39.702637, 38.280678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673145, 39.001324, 38.482983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027596, 39.028973, 38.299675>,  <41.240265, 39.045563, 38.189690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027596, 39.028973, 38.299675>,  <40.673145, 39.001324, 38.482983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027596, 39.028973, 38.299675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409157, -0.581083, 0.703515,
		-0.217661, -0.810904, -0.543194,
		0.886123, 0.069124, -0.458266,
		41.293434, 39.049709, 38.162193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949532, 38.296700, 38.373447>,  <40.673145, 39.001324, 38.482983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949532, 38.296700, 38.373447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263973, 38.542961, 38.395397>,  <41.452637, 38.690716, 38.408566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263973, 38.542961, 38.395397>,  <40.949532, 38.296700, 38.373447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263973, 38.542961, 38.395397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396124, -0.569958, 0.719884,
		0.474472, -0.544170, -0.691922,
		0.786106, 0.615652, 0.054870,
		41.499805, 38.727657, 38.411858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493843, 37.815907, 38.356049>,  <40.949532, 38.296700, 38.373447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493843, 37.815907, 38.356049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626472, 38.162865, 38.504475>,  <41.706051, 38.371040, 38.593529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626472, 38.162865, 38.504475>,  <41.493843, 37.815907, 38.356049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626472, 38.162865, 38.504475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408078, -0.486481, 0.772534,
		0.850606, -0.104730, -0.515269,
		0.331576, 0.867391, 0.371066,
		41.725945, 38.423080, 38.615795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200436, 37.778519, 38.444019>,  <41.493843, 37.815907, 38.356049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200436, 37.778519, 38.444019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084103, 38.065514, 38.697201>,  <42.014301, 38.237709, 38.849110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084103, 38.065514, 38.697201>,  <42.200436, 37.778519, 38.444019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084103, 38.065514, 38.697201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476321, -0.465167, 0.746149,
		0.829781, 0.518493, -0.206468,
		-0.290831, 0.717485, 0.632956,
		41.996853, 38.280758, 38.887089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264511, 37.449596, 39.021111>,  <42.200436, 37.778519, 38.444019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264511, 37.449596, 39.021111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193295, 37.807770, 39.184326>,  <42.150562, 38.022675, 39.282257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193295, 37.807770, 39.184326>,  <42.264511, 37.449596, 39.021111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193295, 37.807770, 39.184326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221576, -0.367537, 0.903228,
		0.958751, 0.251227, -0.132969,
		-0.178044, 0.895434, 0.408043,
		42.139881, 38.076401, 39.306740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842064, 37.664246, 39.547707>,  <42.264511, 37.449596, 39.021111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842064, 37.664246, 39.547707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506321, 37.869759, 39.618702>,  <42.304874, 37.993065, 39.661301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506321, 37.869759, 39.618702>,  <42.842064, 37.664246, 39.547707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506321, 37.869759, 39.618702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051914, -0.249265, 0.967043,
		0.541091, 0.820912, 0.182550,
		-0.839360, 0.513781, 0.177492,
		42.254513, 38.023891, 39.671951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003418, 38.063736, 40.104160>,  <42.842064, 37.664246, 39.547707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003418, 38.063736, 40.104160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607918, 38.005051, 40.092514>,  <42.370617, 37.969841, 40.085526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607918, 38.005051, 40.092514>,  <43.003418, 38.063736, 40.104160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607918, 38.005051, 40.092514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017562, -0.079446, 0.996685,
		-0.148536, 0.985984, 0.075976,
		-0.988751, -0.146709, -0.029116,
		42.311291, 37.961037, 40.083778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721100, 38.495689, 40.623341>,  <43.003418, 38.063736, 40.104160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721100, 38.495689, 40.623341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433487, 38.220821, 40.581787>,  <42.260918, 38.055901, 40.556854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433487, 38.220821, 40.581787>,  <42.721100, 38.495689, 40.623341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433487, 38.220821, 40.581787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297184, 0.168899, 0.939763,
		-0.628231, 0.706591, -0.325660,
		-0.719032, -0.687170, -0.103880,
		42.217777, 38.014671, 40.550625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962254, 38.509251, 40.672596>,  <42.721100, 38.495689, 40.623341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962254, 38.509251, 40.672596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732929, 38.460732, 40.996719>,  <41.595333, 38.431622, 41.191193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732929, 38.460732, 40.996719>,  <41.962254, 38.509251, 40.672596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732929, 38.460732, 40.996719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199481, -0.979886, -0.005541,
		0.794681, 0.158464, 0.585979,
		-0.573315, -0.121295, 0.810307,
		41.560936, 38.424343, 41.239811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346851, 38.148270, 41.187050>,  <41.962254, 38.509251, 40.672596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346851, 38.148270, 41.187050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958111, 38.054050, 41.188759>,  <41.724865, 37.997520, 41.189785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958111, 38.054050, 41.188759>,  <42.346851, 38.148270, 41.187050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958111, 38.054050, 41.188759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234086, -0.963470, 0.130115,
		-0.026532, 0.127452, 0.991490,
		-0.971854, -0.235546, 0.004272,
		41.666553, 37.983387, 41.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850067, 37.751213, 41.296566>,  <42.346851, 38.148270, 41.187050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850067, 37.751213, 41.296566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607162, 37.435127, 41.329521>,  <42.461418, 37.245476, 41.349293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607162, 37.435127, 41.329521>,  <42.850067, 37.751213, 41.296566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607162, 37.435127, 41.329521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596329, 0.384819, -0.704489,
		0.524997, -0.476939, -0.704917,
		-0.607264, -0.790218, 0.082383,
		42.424984, 37.198063, 41.354237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739620, 37.267143, 40.672710>,  <42.850067, 37.751213, 41.296566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739620, 37.267143, 40.672710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398960, 37.277424, 40.882103>,  <42.194565, 37.283592, 41.007740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398960, 37.277424, 40.882103>,  <42.739620, 37.267143, 40.672710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398960, 37.277424, 40.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485017, 0.339879, -0.805755,
		-0.198627, -0.940118, -0.276994,
		-0.851649, 0.025698, 0.523482,
		42.143467, 37.285133, 41.039146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142307, 36.992199, 40.285305>,  <42.739620, 37.267143, 40.672710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142307, 36.992199, 40.285305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030781, 37.281475, 40.538055>,  <41.963867, 37.455040, 40.689705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030781, 37.281475, 40.538055>,  <42.142307, 36.992199, 40.285305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030781, 37.281475, 40.538055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522535, 0.437802, -0.731633,
		-0.805742, -0.534165, 0.255826,
		-0.278812, 0.723185, 0.631875,
		41.947136, 37.498432, 40.727619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395901, 37.102089, 40.227036>,  <42.142307, 36.992199, 40.285305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395901, 37.102089, 40.227036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618469, 37.410843, 40.350060>,  <41.752010, 37.596096, 40.423874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618469, 37.410843, 40.350060>,  <41.395901, 37.102089, 40.227036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618469, 37.410843, 40.350060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, 0.534275, -0.788175,
		-0.772702, 0.344596, 0.533090,
		0.556419, 0.771883, 0.307562,
		41.785397, 37.642406, 40.442329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057529, 37.670845, 39.998672>,  <41.395901, 37.102089, 40.227036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057529, 37.670845, 39.998672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443558, 37.764786, 40.045109>,  <41.675175, 37.821152, 40.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443558, 37.764786, 40.045109>,  <41.057529, 37.670845, 39.998672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443558, 37.764786, 40.045109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037384, 0.562040, -0.826265,
		-0.259297, 0.793067, 0.551189,
		0.965074, 0.234853, 0.116087,
		41.733078, 37.835243, 40.079933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096066, 38.489098, 39.993504>,  <41.057529, 37.670845, 39.998672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096066, 38.489098, 39.993504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433014, 38.311337, 39.871578>,  <41.635185, 38.204681, 39.798424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433014, 38.311337, 39.871578>,  <41.096066, 38.489098, 39.993504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433014, 38.311337, 39.871578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024307, 0.596389, -0.802327,
		0.538344, 0.668451, 0.513185,
		0.842375, -0.444402, -0.304814,
		41.685726, 38.178017, 39.780132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512894, 39.075489, 39.829895>,  <41.096066, 38.489098, 39.993504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512894, 39.075489, 39.829895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707821, 38.764843, 39.670200>,  <41.824776, 38.578457, 39.574383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707821, 38.764843, 39.670200>,  <41.512894, 39.075489, 39.829895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707821, 38.764843, 39.670200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142400, 0.521753, -0.841128,
		0.861535, 0.353047, 0.364851,
		0.487319, -0.776615, -0.399235,
		41.854015, 38.531857, 39.550430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166332, 39.336052, 39.549587>,  <41.512894, 39.075489, 39.829895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166332, 39.336052, 39.549587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044422, 39.011383, 39.350269>,  <41.971275, 38.816582, 39.230679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044422, 39.011383, 39.350269>,  <42.166332, 39.336052, 39.549587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044422, 39.011383, 39.350269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107639, 0.490484, -0.864777,
		0.946322, -0.317201, -0.062121,
		-0.304777, -0.811671, -0.498298,
		41.952988, 38.767883, 39.200779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357380, 39.550537, 39.020847>,  <42.166332, 39.336052, 39.549587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357380, 39.550537, 39.020847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170773, 39.219227, 38.896709>,  <42.058807, 39.020439, 38.822227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170773, 39.219227, 38.896709>,  <42.357380, 39.550537, 39.020847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170773, 39.219227, 38.896709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032581, 0.366722, -0.929760,
		0.883911, -0.423640, -0.198069,
		-0.466520, -0.828278, -0.310347,
		42.030815, 38.970745, 38.803604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577084, 39.439556, 38.383678>,  <42.357380, 39.550537, 39.020847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577084, 39.439556, 38.383678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228710, 39.243176, 38.392036>,  <42.019688, 39.125347, 38.397049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228710, 39.243176, 38.392036>,  <42.577084, 39.439556, 38.383678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228710, 39.243176, 38.392036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270127, 0.442813, -0.854955,
		0.410489, -0.750256, -0.518281,
		-0.870937, -0.490951, 0.020894,
		41.967430, 39.095890, 38.398304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445583, 39.096588, 37.756248>,  <42.577084, 39.439556, 38.383678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445583, 39.096588, 37.756248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075172, 39.151337, 37.896961>,  <41.852928, 39.184185, 37.981388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075172, 39.151337, 37.896961>,  <42.445583, 39.096588, 37.756248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075172, 39.151337, 37.896961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309064, 0.260104, -0.914782,
		-0.216707, -0.955831, -0.198560,
		-0.926022, 0.136872, 0.351779,
		41.797367, 39.192398, 38.002495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816532, 38.872742, 37.310055>,  <42.445583, 39.096588, 37.756248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816532, 38.872742, 37.310055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684982, 39.163296, 37.551453>,  <41.606052, 39.337627, 37.696293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684982, 39.163296, 37.551453>,  <41.816532, 38.872742, 37.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684982, 39.163296, 37.551453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452858, 0.439471, -0.775748,
		-0.828711, -0.528419, 0.184421,
		-0.328873, 0.726388, 0.603493,
		41.586319, 39.381210, 37.732502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091373, 38.655910, 37.156071>,  <41.816532, 38.872742, 37.310055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091373, 38.655910, 37.156071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915302, 38.869221, 37.445034>,  <40.809662, 38.997208, 37.618412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915302, 38.869221, 37.445034>,  <41.091373, 38.655910, 37.156071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915302, 38.869221, 37.445034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897866, -0.253177, -0.360192,
		-0.009184, -0.807169, 0.590248,
		-0.440173, 0.533272, 0.722405,
		40.783249, 39.029202, 37.661755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462162, 38.234798, 37.374657>,  <41.091373, 38.655910, 37.156071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462162, 38.234798, 37.374657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480995, 38.634014, 37.391109>,  <40.492294, 38.873543, 37.400982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480995, 38.634014, 37.391109>,  <40.462162, 38.234798, 37.374657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480995, 38.634014, 37.391109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814908, 0.062193, -0.576243,
		-0.577674, -0.006388, 0.816242,
		0.047083, 0.998044, 0.041133,
		40.495121, 38.933426, 37.403450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798943, 38.408783, 37.621613>,  <40.462162, 38.234798, 37.374657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798943, 38.408783, 37.621613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959106, 38.694969, 37.392605>,  <40.055206, 38.866680, 37.255199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959106, 38.694969, 37.392605>,  <39.798943, 38.408783, 37.621613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959106, 38.694969, 37.392605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763408, -0.085112, -0.640285,
		-0.506831, 0.693442, 0.512113,
		0.400414, 0.715468, -0.572517,
		40.079231, 38.909611, 37.220848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568596, 38.597404, 38.269264>,  <39.798943, 38.408783, 37.621613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568596, 38.597404, 38.269264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424847, 38.940109, 38.417213>,  <39.338596, 39.145733, 38.505981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424847, 38.940109, 38.417213>,  <39.568596, 38.597404, 38.269264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424847, 38.940109, 38.417213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910298, 0.409103, -0.063180,
		-0.205446, 0.313988, -0.926932,
		-0.359373, 0.856765, 0.369872,
		39.317036, 39.197140, 38.528175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307705, 39.133232, 37.835743>,  <39.568596, 38.597404, 38.269264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307705, 39.133232, 37.835743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478081, 39.213993, 37.482967>,  <39.580307, 39.262447, 37.271301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478081, 39.213993, 37.482967>,  <39.307705, 39.133232, 37.835743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478081, 39.213993, 37.482967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885539, 0.292860, -0.360631,
		0.185473, 0.934596, 0.303531,
		0.425936, 0.201901, -0.881938,
		39.605862, 39.274563, 37.218388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895046, 39.775768, 37.523266>,  <39.307705, 39.133232, 37.835743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895046, 39.775768, 37.523266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088245, 39.585220, 37.229385>,  <39.204166, 39.470890, 37.053059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088245, 39.585220, 37.229385>,  <38.895046, 39.775768, 37.523266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088245, 39.585220, 37.229385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829962, 0.018343, -0.557518,
		0.279064, 0.879051, -0.386513,
		0.482997, -0.476374, -0.734698,
		39.233143, 39.442307, 37.008976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627445, 40.096809, 36.929207>,  <38.895046, 39.775768, 37.523266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627445, 40.096809, 36.929207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780773, 39.738770, 36.838104>,  <38.872768, 39.523945, 36.783443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780773, 39.738770, 36.838104>,  <38.627445, 40.096809, 36.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780773, 39.738770, 36.838104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820935, -0.217181, -0.528107,
		0.423242, 0.389406, -0.818065,
		0.383316, -0.895095, -0.227757,
		38.895767, 39.470242, 36.769775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586292, 40.015594, 36.227566>,  <38.627445, 40.096809, 36.929207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586292, 40.015594, 36.227566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658104, 39.631992, 36.315266>,  <38.701191, 39.401829, 36.367886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658104, 39.631992, 36.315266>,  <38.586292, 40.015594, 36.227566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658104, 39.631992, 36.315266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672362, -0.282309, -0.684274,
		0.718121, -0.024567, -0.695484,
		0.179530, -0.959009, 0.219250,
		38.711964, 39.344288, 36.381042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690514, 39.830196, 35.591751>,  <38.586292, 40.015594, 36.227566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690514, 39.830196, 35.591751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612949, 39.504734, 35.810974>,  <38.566410, 39.309456, 35.942509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612949, 39.504734, 35.810974>,  <38.690514, 39.830196, 35.591751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612949, 39.504734, 35.810974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588818, -0.350314, -0.728404,
		0.784661, -0.463951, -0.411164,
		-0.193907, -0.813651, 0.548061,
		38.554779, 39.260639, 35.975391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773987, 39.228714, 35.188038>,  <38.690514, 39.830196, 35.591751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773987, 39.228714, 35.188038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556957, 39.082932, 35.490768>,  <38.426739, 38.995464, 35.672409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556957, 39.082932, 35.490768>,  <38.773987, 39.228714, 35.188038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556957, 39.082932, 35.490768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582716, -0.485642, -0.651608,
		0.605029, -0.794561, 0.051122,
		-0.542569, -0.364452, 0.756831,
		38.394188, 38.973595, 35.717819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647419, 38.506104, 34.967438>,  <38.773987, 39.228714, 35.188038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647419, 38.506104, 34.967438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362267, 38.608505, 35.228596>,  <38.191177, 38.669945, 35.385288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362267, 38.608505, 35.228596>,  <38.647419, 38.506104, 34.967438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362267, 38.608505, 35.228596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682636, -0.466602, -0.562398,
		0.160664, -0.846608, 0.507387,
		-0.712878, 0.256004, 0.652891,
		38.148403, 38.685307, 35.424461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258701, 37.888237, 35.046913>,  <38.647419, 38.506104, 34.967438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258701, 37.888237, 35.046913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011208, 38.180908, 35.161320>,  <37.862713, 38.356510, 35.229965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011208, 38.180908, 35.161320>,  <38.258701, 37.888237, 35.046913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011208, 38.180908, 35.161320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603127, -0.209129, -0.769742,
		-0.503393, -0.648771, 0.570694,
		-0.618735, 0.731684, 0.286018,
		37.825588, 38.400414, 35.247124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744537, 37.786221, 35.599537>,  <38.258701, 37.888237, 35.046913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744537, 37.786221, 35.599537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997715, 37.767273, 35.908634>,  <39.149624, 37.755905, 36.094093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997715, 37.767273, 35.908634>,  <38.744537, 37.786221, 35.599537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997715, 37.767273, 35.908634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256416, -0.928967, -0.266968,
		0.730498, 0.367121, -0.575843,
		0.632949, -0.047365, 0.772744,
		39.187599, 37.753063, 36.140457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267845, 37.438580, 35.332951>,  <38.744537, 37.786221, 35.599537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267845, 37.438580, 35.332951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296970, 37.389786, 35.728893>,  <39.314445, 37.360512, 35.966457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296970, 37.389786, 35.728893>,  <39.267845, 37.438580, 35.332951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296970, 37.389786, 35.728893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239554, -0.961299, -0.136083,
		0.968149, 0.247034, -0.040777,
		0.072816, -0.121980, 0.989858,
		39.318817, 37.353191, 36.025852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957600, 37.177483, 35.563889>,  <39.267845, 37.438580, 35.332951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957600, 37.177483, 35.563889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649639, 37.075470, 35.797882>,  <39.464863, 37.014263, 35.938278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649639, 37.075470, 35.797882>,  <39.957600, 37.177483, 35.563889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649639, 37.075470, 35.797882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368739, -0.925942, 0.081625,
		0.520845, 0.278550, 0.806927,
		-0.769904, -0.255032, 0.584984,
		39.418667, 36.998959, 35.973377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677666, 36.930061, 35.390224>,  <39.957600, 37.177483, 35.563889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677666, 36.930061, 35.390224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448391, 36.805069, 35.693226>,  <40.310825, 36.730076, 35.875027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448391, 36.805069, 35.693226>,  <40.677666, 36.930061, 35.390224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448391, 36.805069, 35.693226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091680, -0.894175, -0.438229,
		0.814277, -0.320637, 0.483885,
		-0.573190, -0.312478, 0.757503,
		40.276432, 36.711327, 35.920475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286148, 36.431301, 35.151276>,  <40.677666, 36.930061, 35.390224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286148, 36.431301, 35.151276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495861, 36.172184, 35.372364>,  <41.621689, 36.016716, 35.505016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495861, 36.172184, 35.372364>,  <41.286148, 36.431301, 35.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495861, 36.172184, 35.372364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803076, 0.160275, -0.573917,
		0.283190, 0.744769, 0.604253,
		0.524283, -0.647789, 0.552718,
		41.653145, 35.977848, 35.538177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609398, 36.648155, 35.771626>,  <41.286148, 36.431301, 35.151276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609398, 36.648155, 35.771626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860462, 36.352222, 35.674721>,  <42.011101, 36.174664, 35.616577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860462, 36.352222, 35.674721>,  <41.609398, 36.648155, 35.771626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860462, 36.352222, 35.674721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759643, 0.650112, -0.017234,
		0.170246, -0.173214, 0.970058,
		0.627661, -0.739832, -0.242260,
		42.048759, 36.130272, 35.602043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204834, 36.495724, 36.192997>,  <41.609398, 36.648155, 35.771626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204834, 36.495724, 36.192997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330765, 36.399456, 35.825745>,  <42.406322, 36.341694, 35.605392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330765, 36.399456, 35.825745>,  <42.204834, 36.495724, 36.192997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330765, 36.399456, 35.825745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782882, 0.612755, 0.107831,
		0.536636, -0.752735, 0.381330,
		0.314829, -0.240670, -0.918128,
		42.425213, 36.327255, 35.550304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949608, 36.187023, 36.168125>,  <42.204834, 36.495724, 36.192997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949608, 36.187023, 36.168125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871216, 36.358566, 35.815380>,  <42.824181, 36.461491, 35.603733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871216, 36.358566, 35.815380>,  <42.949608, 36.187023, 36.168125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871216, 36.358566, 35.815380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923584, 0.382924, -0.019032,
		0.329524, -0.818202, -0.471127,
		-0.195978, 0.428854, -0.881860,
		42.812424, 36.487221, 35.550823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402206, 35.865105, 35.772434>,  <42.949608, 36.187023, 36.168125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402206, 35.865105, 35.772434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300720, 36.228809, 35.640450>,  <43.239826, 36.447033, 35.561260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300720, 36.228809, 35.640450>,  <43.402206, 35.865105, 35.772434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300720, 36.228809, 35.640450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963717, 0.266865, -0.005650,
		0.082918, -0.319423, -0.943977,
		-0.253720, 0.909259, -0.329961,
		43.224606, 36.501587, 35.541462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807995, 36.163246, 35.065044>,  <43.402206, 35.865105, 35.772434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807995, 36.163246, 35.065044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706585, 36.434559, 35.340916>,  <43.645741, 36.597347, 35.506439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706585, 36.434559, 35.340916>,  <43.807995, 36.163246, 35.065044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706585, 36.434559, 35.340916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952182, 0.300661, 0.054326,
		-0.170512, 0.670474, -0.722073,
		-0.253523, 0.678282, 0.689680,
		43.630527, 36.638042, 35.547821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061710, 36.867481, 34.920757>,  <43.807995, 36.163246, 35.065044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061710, 36.867481, 34.920757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039360, 36.786755, 35.311890>,  <44.025951, 36.738319, 35.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039360, 36.786755, 35.311890>,  <44.061710, 36.867481, 34.920757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039360, 36.786755, 35.311890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914419, 0.382889, 0.131278,
		-0.400893, 0.901481, 0.163147,
		-0.055877, -0.201813, 0.977829,
		44.022598, 36.726212, 35.605240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241104, 37.474503, 35.268066>,  <44.061710, 36.867481, 34.920757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241104, 37.474503, 35.268066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357365, 37.132816, 35.440502>,  <44.427120, 36.927803, 35.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357365, 37.132816, 35.440502>,  <44.241104, 37.474503, 35.268066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357365, 37.132816, 35.440502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955367, 0.234170, -0.180108,
		0.052903, 0.464196, 0.884151,
		0.290647, -0.854217, 0.431089,
		44.444557, 36.876553, 35.569828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801655, 37.651371, 35.619976>,  <44.241104, 37.474503, 35.268066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801655, 37.651371, 35.619976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828869, 37.255901, 35.566479>,  <44.845196, 37.018620, 35.534378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828869, 37.255901, 35.566479>,  <44.801655, 37.651371, 35.619976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828869, 37.255901, 35.566479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989213, 0.084279, -0.119809,
		0.129725, -0.124154, 0.983747,
		0.068035, -0.988677, -0.133748,
		44.849277, 36.959297, 35.526356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492828, 37.599598, 35.612640>,  <44.801655, 37.651371, 35.619976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492828, 37.599598, 35.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371632, 37.249378, 35.462120>,  <45.298916, 37.039246, 35.371807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371632, 37.249378, 35.462120>,  <45.492828, 37.599598, 35.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371632, 37.249378, 35.462120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952901, -0.272824, -0.132463,
		0.013314, -0.398713, 0.916979,
		-0.302988, -0.875554, -0.376302,
		45.280735, 36.986713, 35.349228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069496, 37.184109, 35.665257>,  <45.492828, 37.599598, 35.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069496, 37.184109, 35.665257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803650, 36.938354, 35.495163>,  <45.644142, 36.790901, 35.393108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803650, 36.938354, 35.495163>,  <46.069496, 37.184109, 35.665257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803650, 36.938354, 35.495163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742660, -0.605727, -0.285572,
		-0.082123, -0.505597, 0.858852,
		-0.664614, -0.614383, -0.425231,
		45.604267, 36.754040, 35.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941433, 36.485664, 35.997154>,  <46.069496, 37.184109, 35.665257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941433, 36.485664, 35.997154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832584, 36.455746, 35.613415>,  <45.767277, 36.437794, 35.383171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832584, 36.455746, 35.613415>,  <45.941433, 36.485664, 35.997154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.832584, 36.455746, 35.613415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605496, -0.788169, -0.110296,
		-0.747881, -0.610897, 0.259767,
		-0.272120, -0.074800, -0.959352,
		45.750950, 36.433308, 35.325607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610641, 35.860706, 35.781700>,  <45.941433, 36.485664, 35.997154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610641, 35.860706, 35.781700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856434, 35.987659, 35.492790>,  <46.003910, 36.063831, 35.319447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856434, 35.987659, 35.492790>,  <45.610641, 35.860706, 35.781700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856434, 35.987659, 35.492790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600647, -0.781778, 0.167473,
		-0.511503, -0.536740, -0.671025,
		0.614482, 0.317387, -0.722273,
		46.040779, 36.082874, 35.276108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849339, 35.319485, 35.320171>,  <45.610641, 35.860706, 35.781700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849339, 35.319485, 35.320171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130672, 35.603313, 35.337280>,  <46.299473, 35.773609, 35.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130672, 35.603313, 35.337280>,  <45.849339, 35.319485, 35.320171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130672, 35.603313, 35.337280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698016, -0.700766, 0.147310,
		0.134502, -0.073751, -0.988165,
		0.703337, 0.709569, 0.042775,
		46.341675, 35.816185, 35.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402420, 34.993214, 34.966240>,  <45.849339, 35.319485, 35.320171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402420, 34.993214, 34.966240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544903, 35.277355, 35.209064>,  <46.630394, 35.447838, 35.354759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544903, 35.277355, 35.209064>,  <46.402420, 34.993214, 34.966240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544903, 35.277355, 35.209064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722897, -0.621143, 0.302656,
		0.592062, 0.331032, -0.734765,
		0.356206, 0.710351, 0.607058,
		46.651764, 35.490459, 35.391182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029339, 34.889339, 34.912636>,  <46.402420, 34.993214, 34.966240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029339, 34.889339, 34.912636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.033905, 35.112091, 35.244843>,  <47.036644, 35.245743, 35.444164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.033905, 35.112091, 35.244843>,  <47.029339, 34.889339, 34.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.033905, 35.112091, 35.244843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881289, -0.398019, 0.254774,
		0.472439, 0.729015, -0.495317,
		0.011412, 0.556882, 0.830513,
		47.037327, 35.279156, 35.493996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763367, 34.858883, 35.157154>,  <47.029339, 34.889339, 34.912636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763367, 34.858883, 35.157154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634075, 35.182945, 34.961529>,  <47.556499, 35.377380, 34.844154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634075, 35.182945, 34.961529>,  <47.763367, 34.858883, 35.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634075, 35.182945, 34.961529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550932, 0.259091, 0.793314,
		0.769415, 0.525858, 0.362594,
		-0.323226, 0.810151, -0.489060,
		47.537109, 35.425991, 34.814812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.481293, 30.620382, 31.489101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.087914, 30.549883, 31.472282>,  <34.851887, 30.507584, 31.462191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.087914, 30.549883, 31.472282>,  <35.481293, 30.620382, 31.489101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087914, 30.549883, 31.472282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139921, 0.591268, 0.794244,
		-0.115121, 0.786981, -0.606142,
		-0.983448, -0.176247, -0.042048,
		34.792881, 30.497009, 31.459667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113850, 31.286655, 31.609879>,  <35.481293, 30.620382, 31.489101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113850, 31.286655, 31.609879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877327, 30.988968, 31.734129>,  <34.735413, 30.810356, 31.808680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877327, 30.988968, 31.734129>,  <35.113850, 31.286655, 31.609879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877327, 30.988968, 31.734129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120577, 0.462440, 0.878414,
		-0.797378, 0.481962, -0.363182,
		-0.591311, -0.744219, 0.310626,
		34.699932, 30.765701, 31.827316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628239, 31.663580, 31.965780>,  <35.113850, 31.286655, 31.609879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628239, 31.663580, 31.965780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536961, 31.293800, 32.087975>,  <34.482193, 31.071932, 32.161289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536961, 31.293800, 32.087975>,  <34.628239, 31.663580, 31.965780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536961, 31.293800, 32.087975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381236, 0.373551, 0.845647,
		-0.895872, 0.076509, -0.437675,
		-0.228194, -0.924449, 0.305486,
		34.468502, 31.016466, 32.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843506, 31.578558, 32.072128>,  <34.628239, 31.663580, 31.965780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843506, 31.578558, 32.072128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045925, 31.320047, 32.300598>,  <34.167377, 31.164940, 32.437679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045925, 31.320047, 32.300598>,  <33.843506, 31.578558, 32.072128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045925, 31.320047, 32.300598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419812, 0.393928, 0.817667,
		-0.753442, -0.653564, -0.071970,
		0.506047, -0.646278, 0.571175,
		34.197739, 31.126163, 32.471951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411221, 31.459429, 32.510582>,  <33.843506, 31.578558, 32.072128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411221, 31.459429, 32.510582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.748486, 31.315504, 32.670391>,  <33.950844, 31.229149, 32.766277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.748486, 31.315504, 32.670391>,  <33.411221, 31.459429, 32.510582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748486, 31.315504, 32.670391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338477, 0.222122, 0.914382,
		-0.417746, -0.906200, 0.065498,
		0.843162, -0.359810, 0.399518,
		34.001434, 31.207561, 32.790245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189804, 31.115858, 33.011223>,  <33.411221, 31.459429, 32.510582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189804, 31.115858, 33.011223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568111, 31.189554, 33.118233>,  <33.795097, 31.233772, 33.182438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568111, 31.189554, 33.118233>,  <33.189804, 31.115858, 33.011223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568111, 31.189554, 33.118233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310766, 0.273516, 0.910282,
		0.094539, -0.944057, 0.315940,
		0.945773, 0.184240, 0.267524,
		33.851845, 31.244827, 33.198490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212009, 30.795559, 33.657913>,  <33.189804, 31.115858, 33.011223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212009, 30.795559, 33.657913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520195, 31.049231, 33.631958>,  <33.705105, 31.201433, 33.616383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520195, 31.049231, 33.631958>,  <33.212009, 30.795559, 33.657913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520195, 31.049231, 33.631958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177437, 0.311105, 0.933665,
		0.612297, -0.707837, 0.352220,
		0.770460, 0.634177, -0.064892,
		33.751331, 31.239483, 33.612492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574581, 30.692764, 34.305454>,  <33.212009, 30.795559, 33.657913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574581, 30.692764, 34.305454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715908, 31.043354, 34.174637>,  <33.800705, 31.253708, 34.096146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715908, 31.043354, 34.174637>,  <33.574581, 30.692764, 34.305454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715908, 31.043354, 34.174637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111177, 0.307776, 0.944941,
		0.928873, -0.370227, 0.011300,
		0.353321, 0.876474, -0.327045,
		33.821903, 31.306295, 34.076523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923412, 30.882849, 34.848770>,  <33.574581, 30.692764, 34.305454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923412, 30.882849, 34.848770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.903839, 31.226173, 34.644455>,  <33.892094, 31.432169, 34.521866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.903839, 31.226173, 34.644455>,  <33.923412, 30.882849, 34.848770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903839, 31.226173, 34.644455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093989, 0.513089, 0.853174,
		0.994370, -0.006261, -0.105779,
		-0.048933, 0.858312, -0.510789,
		33.889160, 31.483667, 34.491219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507362, 31.250284, 35.028828>,  <33.923412, 30.882849, 34.848770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507362, 31.250284, 35.028828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251198, 31.532173, 34.906685>,  <34.097500, 31.701305, 34.833397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251198, 31.532173, 34.906685>,  <34.507362, 31.250284, 35.028828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251198, 31.532173, 34.906685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178089, 0.523004, 0.833518,
		0.747101, 0.479412, -0.460440,
		-0.640410, 0.704721, -0.305359,
		34.059074, 31.743589, 34.815079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875751, 31.971695, 35.016235>,  <34.507362, 31.250284, 35.028828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875751, 31.971695, 35.016235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481541, 32.035042, 35.040436>,  <34.245014, 32.073048, 35.054955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481541, 32.035042, 35.040436>,  <34.875751, 31.971695, 35.016235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481541, 32.035042, 35.040436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146792, 0.618629, 0.771848,
		0.084806, 0.769557, -0.632922,
		-0.985525, 0.158365, 0.060502,
		34.185883, 32.082550, 35.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824051, 32.752625, 35.025517>,  <34.875751, 31.971695, 35.016235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824051, 32.752625, 35.025517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464035, 32.643841, 35.161728>,  <34.248024, 32.578571, 35.243454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464035, 32.643841, 35.161728>,  <34.824051, 32.752625, 35.025517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464035, 32.643841, 35.161728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033073, 0.736506, 0.675622,
		-0.434546, 0.619351, -0.653891,
		-0.900042, -0.271962, 0.340529,
		34.194023, 32.562252, 35.263885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359898, 33.454269, 35.064213>,  <34.824051, 32.752625, 35.025517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359898, 33.454269, 35.064213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221245, 33.174892, 35.314659>,  <34.138054, 33.007267, 35.464928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221245, 33.174892, 35.314659>,  <34.359898, 33.454269, 35.064213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221245, 33.174892, 35.314659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065635, 0.683926, 0.726593,
		-0.935702, 0.210765, -0.282912,
		-0.346632, -0.698444, 0.626117,
		34.117256, 32.965359, 35.502495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731434, 33.731049, 35.343918>,  <34.359898, 33.454269, 35.064213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731434, 33.731049, 35.343918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.876064, 33.486023, 35.625065>,  <33.962841, 33.339008, 35.793755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.876064, 33.486023, 35.625065>,  <33.731434, 33.731049, 35.343918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876064, 33.486023, 35.625065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089141, 0.727709, 0.680069,
		-0.928073, -0.308550, 0.208515,
		0.361573, -0.612566, 0.702871,
		33.984535, 33.302254, 35.835926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497726, 33.998333, 35.965977>,  <33.731434, 33.731049, 35.343918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497726, 33.998333, 35.965977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751415, 33.713257, 36.085869>,  <33.903629, 33.542210, 36.157803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751415, 33.713257, 36.085869>,  <33.497726, 33.998333, 35.965977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751415, 33.713257, 36.085869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083713, 0.448687, 0.889760,
		-0.768609, -0.539210, 0.344227,
		0.634218, -0.712694, 0.299726,
		33.941681, 33.499447, 36.175785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302608, 33.876186, 36.636425>,  <33.497726, 33.998333, 35.965977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302608, 33.876186, 36.636425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678738, 33.740463, 36.626175>,  <33.904415, 33.659031, 36.620026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678738, 33.740463, 36.626175>,  <33.302608, 33.876186, 36.636425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678738, 33.740463, 36.626175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220190, 0.549350, 0.806059,
		-0.259428, -0.763600, 0.591280,
		0.940326, -0.339308, -0.025620,
		33.960835, 33.638672, 36.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423347, 33.651642, 37.303909>,  <33.302608, 33.876186, 36.636425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423347, 33.651642, 37.303909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771015, 33.725952, 37.120590>,  <33.979614, 33.770538, 37.010601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771015, 33.725952, 37.120590>,  <33.423347, 33.651642, 37.303909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771015, 33.725952, 37.120590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263397, 0.610434, 0.746989,
		0.418533, -0.769972, 0.481636,
		0.869168, 0.185778, -0.458294,
		34.031765, 33.781685, 36.983101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844734, 33.659042, 37.818130>,  <33.423347, 33.651642, 37.303909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844734, 33.659042, 37.818130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076584, 33.853802, 37.556759>,  <34.215694, 33.970657, 37.399937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076584, 33.853802, 37.556759>,  <33.844734, 33.659042, 37.818130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076584, 33.853802, 37.556759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255428, 0.652900, 0.713077,
		0.773817, -0.580220, 0.254070,
		0.579624, 0.486894, -0.653430,
		34.250469, 33.999870, 37.360729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372959, 33.791191, 38.214867>,  <33.844734, 33.659042, 37.818130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372959, 33.791191, 38.214867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431839, 34.025146, 37.895809>,  <34.467167, 34.165520, 37.704372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431839, 34.025146, 37.895809>,  <34.372959, 33.791191, 38.214867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431839, 34.025146, 37.895809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358687, 0.719972, 0.594125,
		0.921779, -0.373559, -0.103814,
		0.147197, 0.584889, -0.797645,
		34.475998, 34.200615, 37.656517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069939, 34.061474, 38.350269>,  <34.372959, 33.791191, 38.214867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069939, 34.061474, 38.350269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872086, 34.293530, 38.091415>,  <34.753376, 34.432762, 37.936104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872086, 34.293530, 38.091415>,  <35.069939, 34.061474, 38.350269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872086, 34.293530, 38.091415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477280, 0.803591, 0.355590,
		0.726322, -0.132979, -0.674368,
		-0.494630, 0.580136, -0.647135,
		34.723698, 34.467571, 37.897274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547646, 34.454510, 38.074474>,  <35.069939, 34.061474, 38.350269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547646, 34.454510, 38.074474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207161, 34.660820, 38.035660>,  <35.002872, 34.784607, 38.012371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207161, 34.660820, 38.035660>,  <35.547646, 34.454510, 38.074474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207161, 34.660820, 38.035660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447121, 0.809494, 0.380528,
		0.274819, 0.280522, -0.919664,
		-0.851209, 0.515778, -0.097037,
		34.951797, 34.815552, 38.006550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767590, 34.963585, 37.712013>,  <35.547646, 34.454510, 38.074474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767590, 34.963585, 37.712013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424644, 35.085205, 37.878136>,  <35.218876, 35.158176, 37.977810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424644, 35.085205, 37.878136>,  <35.767590, 34.963585, 37.712013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424644, 35.085205, 37.878136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430560, 0.865786, 0.255014,
		-0.282028, 0.397453, -0.873208,
		-0.857367, 0.304047, 0.415303,
		35.167435, 35.176418, 38.002728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683041, 35.581326, 37.477085>,  <35.767590, 34.963585, 37.712013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683041, 35.581326, 37.477085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521698, 35.576950, 37.843075>,  <35.424892, 35.574326, 38.062668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521698, 35.576950, 37.843075>,  <35.683041, 35.581326, 37.477085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521698, 35.576950, 37.843075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502038, 0.833346, 0.231285,
		-0.765023, 0.552643, -0.330644,
		-0.403358, -0.010943, 0.914977,
		35.400692, 35.573666, 38.117569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524548, 35.947563, 36.730625>,  <35.683041, 35.581326, 37.477085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524548, 35.947563, 36.730625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908951, 36.037373, 36.795193>,  <36.139591, 36.091259, 36.833935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908951, 36.037373, 36.795193>,  <35.524548, 35.947563, 36.730625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908951, 36.037373, 36.795193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230451, -0.327634, -0.916269,
		-0.152838, 0.917739, -0.366600,
		0.961006, 0.224524, 0.161419,
		36.197254, 36.104729, 36.843620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717037, 36.464848, 36.221310>,  <35.524548, 35.947563, 36.730625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717037, 36.464848, 36.221310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053986, 36.289574, 36.346783>,  <36.256157, 36.184410, 36.422066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053986, 36.289574, 36.346783>,  <35.717037, 36.464848, 36.221310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053986, 36.289574, 36.346783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205959, -0.276116, -0.938798,
		0.497982, 0.855425, -0.142344,
		0.842375, -0.438187, 0.313684,
		36.306698, 36.158119, 36.440887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156105, 36.553066, 35.632496>,  <35.717037, 36.464848, 36.221310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156105, 36.553066, 35.632496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.302818, 36.258488, 35.859871>,  <36.390846, 36.081741, 35.996296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.302818, 36.258488, 35.859871>,  <36.156105, 36.553066, 35.632496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302818, 36.258488, 35.859871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293940, -0.487981, -0.821872,
		0.882649, 0.468536, 0.037487,
		0.366784, -0.736443, 0.568437,
		36.412853, 36.037556, 36.030403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751534, 36.350830, 35.263706>,  <36.156105, 36.553066, 35.632496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751534, 36.350830, 35.263706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694771, 36.044292, 35.514332>,  <36.660713, 35.860371, 35.664707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694771, 36.044292, 35.514332>,  <36.751534, 36.350830, 35.263706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694771, 36.044292, 35.514332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233217, -0.641036, -0.731220,
		0.962014, 0.042359, 0.269692,
		-0.141908, -0.766341, 0.626565,
		36.652199, 35.814388, 35.702301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323227, 35.984081, 35.149864>,  <36.751534, 36.350830, 35.263706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323227, 35.984081, 35.149864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051048, 35.733070, 35.301231>,  <36.887741, 35.582462, 35.392052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051048, 35.733070, 35.301231>,  <37.323227, 35.984081, 35.149864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051048, 35.733070, 35.301231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310816, -0.714797, -0.626465,
		0.663616, -0.308659, 0.681427,
		-0.680446, -0.627531, 0.378415,
		36.846916, 35.544811, 35.414757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632225, 35.317291, 35.364132>,  <37.323227, 35.984081, 35.149864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632225, 35.317291, 35.364132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243111, 35.245827, 35.305122>,  <37.009640, 35.202950, 35.269718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243111, 35.245827, 35.305122>,  <37.632225, 35.317291, 35.364132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243111, 35.245827, 35.305122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231648, -0.736895, -0.635079,
		0.004755, -0.651970, 0.758230,
		-0.972788, -0.178662, -0.147523,
		36.951275, 35.192226, 35.260864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658058, 34.587433, 35.182953>,  <37.632225, 35.317291, 35.364132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658058, 34.587433, 35.182953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292004, 34.713757, 35.082718>,  <37.072372, 34.789551, 35.022579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292004, 34.713757, 35.082718>,  <37.658058, 34.587433, 35.182953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292004, 34.713757, 35.082718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037434, -0.685447, -0.727160,
		-0.401410, -0.656067, 0.639097,
		-0.915133, 0.315813, -0.250586,
		37.017464, 34.808502, 35.007542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335197, 33.999775, 35.141102>,  <37.658058, 34.587433, 35.182953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335197, 33.999775, 35.141102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152313, 34.265553, 34.904636>,  <37.042583, 34.425018, 34.762756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152313, 34.265553, 34.904636>,  <37.335197, 33.999775, 35.141102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152313, 34.265553, 34.904636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056892, -0.685196, -0.726133,
		-0.887537, -0.298363, 0.351080,
		-0.457210, 0.664444, -0.591162,
		37.015152, 34.464886, 34.727287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908455, 33.563751, 34.960926>,  <37.335197, 33.999775, 35.141102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908455, 33.563751, 34.960926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892128, 33.878433, 34.714535>,  <36.882332, 34.067242, 34.566700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892128, 33.878433, 34.714535>,  <36.908455, 33.563751, 34.960926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892128, 33.878433, 34.714535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005384, -0.616658, -0.787212,
		-0.999152, -0.028819, 0.029409,
		-0.040822, 0.786703, -0.615980,
		36.879883, 34.114445, 34.529739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296978, 33.537670, 34.538731>,  <36.908455, 33.563751, 34.960926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296978, 33.537670, 34.538731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535915, 33.775799, 34.323780>,  <36.679279, 33.918674, 34.194809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535915, 33.775799, 34.323780>,  <36.296978, 33.537670, 34.538731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535915, 33.775799, 34.323780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144758, -0.579015, -0.802364,
		-0.788813, 0.557076, -0.259692,
		0.597343, 0.595322, -0.537376,
		36.715118, 33.954395, 34.162567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988373, 33.628105, 33.794540>,  <36.296978, 33.537670, 34.538731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988373, 33.628105, 33.794540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367268, 33.737999, 33.728485>,  <36.594604, 33.803936, 33.688850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.367268, 33.737999, 33.728485>,  <35.988373, 33.628105, 33.794540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367268, 33.737999, 33.728485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054134, -0.370675, -0.927184,
		-0.315942, 0.887199, -0.336243,
		0.947233, 0.274734, -0.165140,
		36.651436, 33.820419, 33.678944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058243, 34.039734, 33.112286>,  <35.988373, 33.628105, 33.794540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058243, 34.039734, 33.112286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410019, 33.878273, 33.213207>,  <36.621082, 33.781399, 33.273762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410019, 33.878273, 33.213207>,  <36.058243, 34.039734, 33.112286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410019, 33.878273, 33.213207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132845, -0.300864, -0.944369,
		0.457105, 0.864030, -0.210968,
		0.879436, -0.403650, 0.252309,
		36.673851, 33.757179, 33.288898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363739, 34.156605, 32.553654>,  <36.058243, 34.039734, 33.112286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363739, 34.156605, 32.553654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605377, 33.888832, 32.726597>,  <36.750359, 33.728168, 32.830364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605377, 33.888832, 32.726597>,  <36.363739, 34.156605, 32.553654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605377, 33.888832, 32.726597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271603, -0.337112, -0.901436,
		0.749201, 0.661982, -0.021828,
		0.604093, -0.669429, 0.432361,
		36.786606, 33.688004, 32.856304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928337, 34.047905, 32.008495>,  <36.363739, 34.156605, 32.553654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928337, 34.047905, 32.008495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941792, 33.725838, 32.245331>,  <36.949863, 33.532597, 32.387432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941792, 33.725838, 32.245331>,  <36.928337, 34.047905, 32.008495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941792, 33.725838, 32.245331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144394, -0.582291, -0.800055,
		0.988948, 0.112408, 0.096674,
		0.033640, -0.805172, 0.592086,
		36.951885, 33.484287, 32.422958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567753, 33.691620, 31.890594>,  <36.928337, 34.047905, 32.008495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567753, 33.691620, 31.890594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320076, 33.421391, 32.050697>,  <37.171471, 33.259254, 32.146759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320076, 33.421391, 32.050697>,  <37.567753, 33.691620, 31.890594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320076, 33.421391, 32.050697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223638, -0.640332, -0.734820,
		0.752723, -0.365479, 0.547570,
		-0.619188, -0.675574, 0.400258,
		37.134319, 33.218719, 32.170776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917706, 33.044567, 31.857229>,  <37.567753, 33.691620, 31.890594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917706, 33.044567, 31.857229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534275, 32.934696, 31.887405>,  <37.304218, 32.868774, 31.905512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534275, 32.934696, 31.887405>,  <37.917706, 33.044567, 31.857229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534275, 32.934696, 31.887405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132126, -0.663395, -0.736512,
		0.252349, -0.696033, 0.672204,
		-0.958573, -0.274674, 0.075443,
		37.246704, 32.852295, 31.910038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932957, 32.322624, 31.794792>,  <37.917706, 33.044567, 31.857229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932957, 32.322624, 31.794792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549053, 32.403923, 31.717272>,  <37.318710, 32.452702, 31.670759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549053, 32.403923, 31.717272>,  <37.932957, 32.322624, 31.794792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549053, 32.403923, 31.717272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003739, -0.680778, -0.732480,
		-0.280808, -0.703728, 0.652621,
		-0.959757, 0.203246, -0.193799,
		37.261127, 32.464897, 31.659132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.488678, 31.784145, 31.498287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275101, 32.104683, 31.390396>,  <37.146954, 32.297005, 31.325663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275101, 32.104683, 31.390396>,  <37.488678, 31.784145, 31.498287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275101, 32.104683, 31.390396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427329, -0.531021, -0.731715,
		-0.729586, -0.275431, 0.625972,
		-0.533941, 0.801345, -0.269726,
		37.114918, 32.345085, 31.309479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002209, 31.392048, 31.361944>,  <37.488678, 31.784145, 31.498287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002209, 31.392048, 31.361944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920963, 31.747202, 31.196825>,  <36.872215, 31.960295, 31.097754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920963, 31.747202, 31.196825>,  <37.002209, 31.392048, 31.361944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920963, 31.747202, 31.196825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367932, -0.459899, -0.808158,
		-0.907399, -0.012263, 0.420092,
		-0.203110, 0.887887, -0.412800,
		36.860031, 32.013569, 31.072985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317181, 31.375225, 31.205923>,  <37.002209, 31.392048, 31.361944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317181, 31.375225, 31.205923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495403, 31.646349, 30.971983>,  <36.602337, 31.809023, 30.831619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495403, 31.646349, 30.971983>,  <36.317181, 31.375225, 31.205923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495403, 31.646349, 30.971983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546205, -0.311788, -0.777463,
		-0.709321, 0.665855, 0.231302,
		0.445561, 0.677809, -0.584851,
		36.629070, 31.849691, 30.796528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762085, 31.645132, 30.693884>,  <36.317181, 31.375225, 31.205923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762085, 31.645132, 30.693884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130886, 31.726101, 30.561859>,  <36.352165, 31.774681, 30.482643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130886, 31.726101, 30.561859>,  <35.762085, 31.645132, 30.693884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130886, 31.726101, 30.561859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292562, -0.194173, -0.936325,
		-0.253621, 0.959855, -0.119806,
		0.922000, 0.202421, -0.330064,
		36.407486, 31.786827, 30.462839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659111, 32.227600, 30.192183>,  <35.762085, 31.645132, 30.693884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659111, 32.227600, 30.192183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015423, 32.064049, 30.112862>,  <36.229210, 31.965918, 30.065269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015423, 32.064049, 30.112862>,  <35.659111, 32.227600, 30.192183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015423, 32.064049, 30.112862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309389, -0.226066, -0.923673,
		0.332842, 0.884145, -0.327878,
		0.890783, -0.408879, -0.198301,
		36.282658, 31.941385, 30.053371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786247, 32.372002, 29.537079>,  <35.659111, 32.227600, 30.192183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786247, 32.372002, 29.537079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043556, 32.069664, 29.585917>,  <36.197941, 31.888262, 29.615219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043556, 32.069664, 29.585917>,  <35.786247, 32.372002, 29.537079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043556, 32.069664, 29.585917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293099, -0.390423, -0.872733,
		0.707318, 0.525615, -0.472683,
		0.643268, -0.755843, 0.122096,
		36.236538, 31.842911, 29.622545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056999, 32.240845, 28.889208>,  <35.786247, 32.372002, 29.537079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056999, 32.240845, 28.889208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144844, 31.906572, 29.090565>,  <36.197552, 31.706009, 29.211380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144844, 31.906572, 29.090565>,  <36.056999, 32.240845, 28.889208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144844, 31.906572, 29.090565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065846, -0.527510, -0.846993,
		0.973363, 0.152862, -0.170873,
		0.219610, -0.835683, 0.503393,
		36.210728, 31.655867, 29.241583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567749, 31.940641, 28.514753>,  <36.056999, 32.240845, 28.889208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567749, 31.940641, 28.514753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377773, 31.663324, 28.731560>,  <36.263786, 31.496935, 28.861643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377773, 31.663324, 28.731560>,  <36.567749, 31.940641, 28.514753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377773, 31.663324, 28.731560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177320, -0.527886, -0.830598,
		0.861970, -0.490593, 0.127778,
		-0.474938, -0.693293, 0.542014,
		36.235291, 31.455336, 28.894163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018330, 31.350122, 28.400473>,  <36.567749, 31.940641, 28.514753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018330, 31.350122, 28.400473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654812, 31.230637, 28.517000>,  <36.436703, 31.158945, 28.586916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654812, 31.230637, 28.517000>,  <37.018330, 31.350122, 28.400473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654812, 31.230637, 28.517000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021388, -0.730618, -0.682451,
		0.416702, -0.613975, 0.670369,
		-0.908792, -0.298716, 0.291318,
		36.382175, 31.141022, 28.604395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064621, 30.649923, 28.206642>,  <37.018330, 31.350122, 28.400473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064621, 30.649923, 28.206642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670578, 30.706528, 28.245722>,  <36.434155, 30.740490, 28.269169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670578, 30.706528, 28.245722>,  <37.064621, 30.649923, 28.206642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670578, 30.706528, 28.245722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168879, -0.689074, -0.704739,
		-0.032406, -0.710741, 0.702707,
		-0.985104, 0.141510, 0.097699,
		36.375046, 30.748981, 28.275032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709114, 30.070971, 28.148298>,  <37.064621, 30.649923, 28.206642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709114, 30.070971, 28.148298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400517, 30.313219, 28.070295>,  <36.215359, 30.458569, 28.023495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400517, 30.313219, 28.070295>,  <36.709114, 30.070971, 28.148298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400517, 30.313219, 28.070295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278766, -0.597266, -0.752039,
		-0.571916, -0.525833, 0.629612,
		-0.771493, 0.605617, -0.195002,
		36.169071, 30.494905, 28.011793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097382, 29.658485, 28.151466>,  <36.709114, 30.070971, 28.148298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097382, 29.658485, 28.151466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008255, 29.983183, 27.935532>,  <35.954781, 30.178001, 27.805971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008255, 29.983183, 27.935532>,  <36.097382, 29.658485, 28.151466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008255, 29.983183, 27.935532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231546, -0.581978, -0.779543,
		-0.946963, -0.048699, 0.317632,
		-0.222817, 0.811745, -0.539835,
		35.941410, 30.226706, 27.773581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374592, 29.506746, 27.876064>,  <36.097382, 29.658485, 28.151466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374592, 29.506746, 27.876064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556736, 29.777872, 27.645164>,  <35.666023, 29.940548, 27.506624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556736, 29.777872, 27.645164>,  <35.374592, 29.506746, 27.876064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556736, 29.777872, 27.645164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423464, -0.405443, -0.810120,
		-0.783153, 0.613338, 0.102409,
		0.455356, 0.677815, -0.577250,
		35.693344, 29.981216, 27.471989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894588, 29.685358, 27.435612>,  <35.374592, 29.506746, 27.876064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894588, 29.685358, 27.435612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241447, 29.798992, 27.271975>,  <35.449562, 29.867172, 27.173792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241447, 29.798992, 27.271975>,  <34.894588, 29.685358, 27.435612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241447, 29.798992, 27.271975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312980, -0.328135, -0.891275,
		-0.387434, 0.900902, -0.195628,
		0.867144, 0.284083, -0.409095,
		35.501591, 29.884216, 27.149246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655048, 29.872461, 26.804495>,  <34.894588, 29.685358, 27.435612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655048, 29.872461, 26.804495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048256, 29.804363, 26.777086>,  <35.284180, 29.763504, 26.760641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048256, 29.804363, 26.777086>,  <34.655048, 29.872461, 26.804495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048256, 29.804363, 26.777086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132838, -0.402472, -0.905743,
		0.126622, 0.899463, -0.418251,
		0.983016, -0.170246, -0.068521,
		35.343163, 29.753290, 26.756531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799599, 30.029211, 26.154615>,  <34.655048, 29.872461, 26.804495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799599, 30.029211, 26.154615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132996, 29.828953, 26.248117>,  <35.333035, 29.708797, 26.304218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132996, 29.828953, 26.248117>,  <34.799599, 30.029211, 26.154615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132996, 29.828953, 26.248117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069284, -0.514428, -0.854730,
		0.548167, 0.696217, -0.463459,
		0.833494, -0.500645, 0.233756,
		35.383045, 29.678759, 26.318245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310246, 30.025387, 25.492519>,  <34.799599, 30.029211, 26.154615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310246, 30.025387, 25.492519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423267, 29.715635, 25.718969>,  <35.491081, 29.529783, 25.854839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423267, 29.715635, 25.718969>,  <35.310246, 30.025387, 25.492519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423267, 29.715635, 25.718969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026881, -0.583551, -0.811631,
		0.958874, 0.244548, -0.144069,
		0.282555, -0.774380, 0.566126,
		35.508034, 29.483322, 25.888807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741898, 29.818508, 25.112371>,  <35.310246, 30.025387, 25.492519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741898, 29.818508, 25.112371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657143, 29.522577, 25.367796>,  <35.606289, 29.345018, 25.521051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657143, 29.522577, 25.367796>,  <35.741898, 29.818508, 25.112371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657143, 29.522577, 25.367796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029892, -0.648184, -0.760897,
		0.976838, -0.180309, 0.115224,
		-0.211883, -0.739828, 0.638561,
		35.593578, 29.300629, 25.559364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171253, 29.362291, 24.760384>,  <35.741898, 29.818508, 25.112371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171253, 29.362291, 24.760384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916718, 29.162655, 24.995663>,  <35.763996, 29.042873, 25.136831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916718, 29.162655, 24.995663>,  <36.171253, 29.362291, 24.760384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916718, 29.162655, 24.995663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219304, -0.613995, -0.758232,
		0.739578, -0.611489, 0.281257,
		-0.636341, -0.499091, 0.588199,
		35.725815, 29.012928, 25.172123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301941, 28.690783, 24.578701>,  <36.171253, 29.362291, 24.760384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301941, 28.690783, 24.578701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929943, 28.690388, 24.725733>,  <35.706745, 28.690151, 24.813951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929943, 28.690388, 24.725733>,  <36.301941, 28.690783, 24.578701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929943, 28.690388, 24.725733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304999, -0.556063, -0.773155,
		0.205160, -0.831140, 0.516833,
		-0.929992, -0.000986, 0.367579,
		35.650944, 28.690092, 24.836006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115852, 28.028128, 24.455952>,  <36.301941, 28.690783, 24.578701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115852, 28.028128, 24.455952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764851, 28.212448, 24.509083>,  <35.554249, 28.323040, 24.540962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764851, 28.212448, 24.509083>,  <36.115852, 28.028128, 24.455952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764851, 28.212448, 24.509083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381299, -0.502424, -0.776003,
		-0.290848, -0.731596, 0.616584,
		-0.877507, 0.460802, 0.132828,
		35.501598, 28.350689, 24.548931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523918, 27.510620, 24.445934>,  <36.115852, 28.028128, 24.455952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523918, 27.510620, 24.445934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368011, 27.868177, 24.357361>,  <35.274467, 28.082712, 24.304216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368011, 27.868177, 24.357361>,  <35.523918, 27.510620, 24.445934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368011, 27.868177, 24.357361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346487, -0.365131, -0.864075,
		-0.853244, -0.260067, 0.452039,
		-0.389771, 0.893893, -0.221436,
		35.251080, 28.136345, 24.290930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785591, 27.382475, 24.376173>,  <35.523918, 27.510620, 24.445934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785591, 27.382475, 24.376173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862049, 27.725021, 24.184299>,  <34.907925, 27.930550, 24.069176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862049, 27.725021, 24.184299>,  <34.785591, 27.382475, 24.376173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862049, 27.725021, 24.184299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350049, -0.397092, -0.848401,
		-0.917023, 0.330078, 0.223870,
		0.191141, 0.856368, -0.479686,
		34.919392, 27.981932, 24.040394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168896, 27.594467, 24.067942>,  <34.785591, 27.382475, 24.376173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168896, 27.594467, 24.067942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481941, 27.750473, 23.873871>,  <34.669769, 27.844076, 23.757429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481941, 27.750473, 23.873871>,  <34.168896, 27.594467, 24.067942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481941, 27.750473, 23.873871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346729, -0.374192, -0.860093,
		-0.516999, 0.841349, -0.157620,
		0.782619, 0.390015, -0.485177,
		34.716728, 27.867477, 23.728317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535439, 27.932100, 23.775860>,  <34.168896, 27.594467, 24.067942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535439, 27.932100, 23.775860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196369, 27.823267, 23.958031>,  <32.992928, 27.757967, 24.067333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196369, 27.823267, 23.958031>,  <33.535439, 27.932100, 23.775860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196369, 27.823267, 23.958031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308736, 0.445120, 0.840565,
		-0.431424, 0.853135, -0.293316,
		-0.847676, -0.272083, 0.455429,
		32.942066, 27.741642, 24.094660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345123, 28.463139, 24.344034>,  <33.535439, 27.932100, 23.775860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345123, 28.463139, 24.344034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126404, 28.148539, 24.458878>,  <32.995174, 27.959778, 24.527784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126404, 28.148539, 24.458878>,  <33.345123, 28.463139, 24.344034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126404, 28.148539, 24.458878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088848, 0.286471, 0.953960,
		-0.832539, 0.547130, -0.086762,
		-0.546795, -0.786501, 0.287110,
		32.962364, 27.912588, 24.545010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860321, 28.730659, 24.780325>,  <33.345123, 28.463139, 24.344034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860321, 28.730659, 24.780325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866318, 28.340698, 24.869177>,  <32.869915, 28.106722, 24.922487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866318, 28.340698, 24.869177>,  <32.860321, 28.730659, 24.780325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866318, 28.340698, 24.869177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030233, 0.221609, 0.974667,
		-0.999431, -0.021326, -0.026153,
		0.014990, -0.974902, 0.222128,
		32.870815, 28.048227, 24.935816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368454, 28.674637, 25.222538>,  <32.860321, 28.730659, 24.780325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368454, 28.674637, 25.222538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609493, 28.364737, 25.299093>,  <32.754116, 28.178795, 25.345026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609493, 28.364737, 25.299093>,  <32.368454, 28.674637, 25.222538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609493, 28.364737, 25.299093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085911, 0.301405, 0.949618,
		-0.793404, -0.555799, 0.248187,
		0.602601, -0.774753, 0.191387,
		32.790276, 28.132311, 25.356510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126392, 28.351374, 25.818634>,  <32.368454, 28.674637, 25.222538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126392, 28.351374, 25.818634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.499119, 28.207237, 25.801359>,  <32.722755, 28.120754, 25.790995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.499119, 28.207237, 25.801359>,  <32.126392, 28.351374, 25.818634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499119, 28.207237, 25.801359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108042, 0.161825, 0.980887,
		-0.346467, -0.918676, 0.189724,
		0.931820, -0.360343, -0.043189,
		32.778664, 28.099134, 25.788403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126274, 27.897861, 26.418575>,  <32.126392, 28.351374, 25.818634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126274, 27.897861, 26.418575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503963, 27.986641, 26.321270>,  <32.730579, 28.039909, 26.262886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503963, 27.986641, 26.321270>,  <32.126274, 27.897861, 26.418575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503963, 27.986641, 26.321270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216365, 0.138740, 0.966404,
		0.248245, -0.965136, 0.082980,
		0.944224, 0.221951, -0.243264,
		32.787231, 28.053226, 26.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539246, 27.654839, 26.852549>,  <32.126274, 27.897861, 26.418575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539246, 27.654839, 26.852549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758305, 27.957552, 26.709795>,  <32.889740, 28.139181, 26.624144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758305, 27.957552, 26.709795>,  <32.539246, 27.654839, 26.852549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758305, 27.957552, 26.709795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135683, 0.340560, 0.930381,
		0.825638, -0.557939, 0.083822,
		0.547643, 0.756785, -0.356882,
		32.922596, 28.184587, 26.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018951, 27.794512, 27.450546>,  <32.539246, 27.654839, 26.852549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018951, 27.794512, 27.450546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098774, 28.107647, 27.214802>,  <33.146667, 28.295528, 27.073355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098774, 28.107647, 27.214802>,  <33.018951, 27.794512, 27.450546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098774, 28.107647, 27.214802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175582, 0.563156, 0.807482,
		0.964027, -0.264619, -0.025071,
		0.199556, 0.782836, -0.589360,
		33.158642, 28.342497, 27.037994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745575, 28.015970, 27.530426>,  <33.018951, 27.794512, 27.450546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745575, 28.015970, 27.530426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518963, 28.333487, 27.441940>,  <33.382996, 28.523996, 27.388849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518963, 28.333487, 27.441940>,  <33.745575, 28.015970, 27.530426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518963, 28.333487, 27.441940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425160, 0.511530, 0.746710,
		0.705891, 0.328983, -0.627287,
		-0.566531, 0.793793, -0.221214,
		33.349003, 28.571625, 27.375576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158329, 28.612026, 27.662020>,  <33.745575, 28.015970, 27.530426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158329, 28.612026, 27.662020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795673, 28.780058, 27.646334>,  <33.578079, 28.880877, 27.636921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795673, 28.780058, 27.646334>,  <34.158329, 28.612026, 27.662020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795673, 28.780058, 27.646334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256105, 0.621833, 0.740091,
		0.335283, 0.660952, -0.671363,
		-0.906640, 0.420079, -0.039217,
		33.523682, 28.906082, 27.634569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318462, 29.332304, 27.675968>,  <34.158329, 28.612026, 27.662020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318462, 29.332304, 27.675968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932129, 29.299622, 27.774353>,  <33.700329, 29.280012, 27.833384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932129, 29.299622, 27.774353>,  <34.318462, 29.332304, 27.675968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932129, 29.299622, 27.774353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173833, 0.499686, 0.848585,
		-0.192237, 0.862344, -0.468409,
		-0.965830, -0.081704, 0.245962,
		33.642380, 29.275110, 27.848141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156601, 29.953394, 27.947021>,  <34.318462, 29.332304, 27.675968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156601, 29.953394, 27.947021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876987, 29.710056, 28.097364>,  <33.709221, 29.564053, 28.187571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876987, 29.710056, 28.097364>,  <34.156601, 29.953394, 27.947021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876987, 29.710056, 28.097364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102023, 0.435387, 0.894444,
		-0.707774, 0.663592, -0.242285,
		-0.699033, -0.608345, 0.375857,
		33.667278, 29.527554, 28.210121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653969, 30.497919, 28.208458>,  <34.156601, 29.953394, 27.947021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653969, 30.497919, 28.208458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634335, 30.139084, 28.384104>,  <33.622555, 29.923782, 28.489491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634335, 30.139084, 28.384104>,  <33.653969, 30.497919, 28.208458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634335, 30.139084, 28.384104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176170, 0.424975, 0.887897,
		-0.983135, 0.120943, 0.137179,
		-0.049087, -0.897089, 0.439114,
		33.619610, 29.869957, 28.515839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393173, 30.608517, 28.883863>,  <33.653969, 30.497919, 28.208458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393173, 30.608517, 28.883863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555283, 30.244810, 28.921783>,  <33.652550, 30.026587, 28.944534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555283, 30.244810, 28.921783>,  <33.393173, 30.608517, 28.883863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555283, 30.244810, 28.921783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142875, 0.165418, 0.975820,
		-0.902962, -0.381928, 0.196951,
		0.405272, -0.909268, 0.094798,
		33.676865, 29.972031, 28.950222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072224, 30.165058, 29.472893>,  <33.393173, 30.608517, 28.883863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072224, 30.165058, 29.472893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440506, 30.037054, 29.383543>,  <33.661476, 29.960253, 29.329933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440506, 30.037054, 29.383543>,  <33.072224, 30.165058, 29.472893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440506, 30.037054, 29.383543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301168, 0.218609, 0.928174,
		-0.248193, -0.921848, 0.297651,
		0.920705, -0.320009, -0.223374,
		33.716717, 29.941051, 29.316530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211132, 29.798841, 30.000828>,  <33.072224, 30.165058, 29.472893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211132, 29.798841, 30.000828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577492, 29.847580, 29.847841>,  <33.797310, 29.876823, 29.756050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577492, 29.847580, 29.847841>,  <33.211132, 29.798841, 30.000828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577492, 29.847580, 29.847841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328907, 0.318380, 0.889075,
		0.230097, -0.940100, 0.251529,
		0.915901, 0.121844, -0.382464,
		33.852261, 29.884134, 29.733103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573883, 29.408638, 30.395905>,  <33.211132, 29.798841, 30.000828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573883, 29.408638, 30.395905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835754, 29.659243, 30.226728>,  <33.992878, 29.809605, 30.125223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835754, 29.659243, 30.226728>,  <33.573883, 29.408638, 30.395905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835754, 29.659243, 30.226728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409483, 0.176365, 0.895109,
		0.635385, -0.759198, -0.141081,
		0.654683, 0.626509, -0.422938,
		34.032158, 29.847195, 30.099848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267719, 29.207453, 30.719204>,  <33.573883, 29.408638, 30.395905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267719, 29.207453, 30.719204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303932, 29.569649, 30.553364>,  <34.325661, 29.786966, 30.453859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.303932, 29.569649, 30.553364>,  <34.267719, 29.207453, 30.719204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303932, 29.569649, 30.553364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504778, 0.317150, 0.802880,
		0.858489, -0.281964, -0.428360,
		0.090529, 0.905490, -0.414599,
		34.331093, 29.841295, 30.428984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899021, 29.441404, 30.846886>,  <34.267719, 29.207453, 30.719204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899021, 29.441404, 30.846886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689323, 29.778872, 30.800596>,  <34.563503, 29.981352, 30.772821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689323, 29.778872, 30.800596>,  <34.899021, 29.441404, 30.846886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689323, 29.778872, 30.800596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224799, 0.268183, 0.936773,
		0.821361, 0.465082, -0.330248,
		-0.524243, 0.843669, -0.115725,
		34.532051, 30.031973, 30.765879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348427, 29.902946, 31.081945>,  <34.899021, 29.441404, 30.846886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348427, 29.902946, 31.081945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.001797, 30.102509, 31.077063>,  <34.793819, 30.222246, 31.074133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.001797, 30.102509, 31.077063>,  <35.348427, 29.902946, 31.081945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001797, 30.102509, 31.077063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115169, 0.223720, 0.967825,
		0.485584, 0.837283, -0.251328,
		-0.866571, 0.498905, -0.012206,
		34.741825, 30.252180, 31.073400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.897907, 34.129730, 33.575241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514214, 34.023849, 33.614830>,  <37.283997, 33.960323, 33.638584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514214, 34.023849, 33.614830>,  <37.897907, 34.129730, 33.575241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514214, 34.023849, 33.614830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126014, 0.714127, 0.688581,
		-0.252947, 0.648041, -0.718374,
		-0.959238, -0.264700, 0.098974,
		37.226440, 33.944439, 33.644524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518494, 34.728649, 33.609356>,  <37.897907, 34.129730, 33.575241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518494, 34.728649, 33.609356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260521, 34.471073, 33.773991>,  <37.105736, 34.316528, 33.872772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260521, 34.471073, 33.773991>,  <37.518494, 34.728649, 33.609356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260521, 34.471073, 33.773991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334538, 0.722087, 0.605537,
		-0.687130, 0.252840, -0.681120,
		-0.644932, -0.643943, 0.411583,
		37.067039, 34.277889, 33.897465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846462, 35.111000, 33.685081>,  <37.518494, 34.728649, 33.609356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846462, 35.111000, 33.685081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873188, 34.823257, 33.961647>,  <36.889221, 34.650612, 34.127586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873188, 34.823257, 33.961647>,  <36.846462, 35.111000, 33.685081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873188, 34.823257, 33.961647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339857, 0.635120, 0.693628,
		-0.938101, -0.281325, -0.202047,
		0.066811, -0.719360, 0.691416,
		36.893230, 34.607449, 34.169071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321541, 35.387161, 34.114296>,  <36.846462, 35.111000, 33.685081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321541, 35.387161, 34.114296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.520267, 35.094387, 34.300819>,  <36.639503, 34.918724, 34.412731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.520267, 35.094387, 34.300819>,  <36.321541, 35.387161, 34.114296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520267, 35.094387, 34.300819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393750, 0.288715, 0.872700,
		-0.773389, -0.617183, -0.144760,
		0.496821, -0.731935, 0.466304,
		36.669315, 34.874805, 34.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813396, 35.003933, 34.589062>,  <36.321541, 35.387161, 34.114296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813396, 35.003933, 34.589062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.189232, 34.948318, 34.714184>,  <36.414734, 34.914948, 34.789257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.189232, 34.948318, 34.714184>,  <35.813396, 35.003933, 34.589062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189232, 34.948318, 34.714184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252156, 0.336875, 0.907156,
		-0.231506, -0.931227, 0.281463,
		0.939586, -0.139040, 0.312803,
		36.471107, 34.906605, 34.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730789, 34.823536, 35.329239>,  <35.813396, 35.003933, 34.589062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730789, 34.823536, 35.329239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.113712, 34.933159, 35.292465>,  <36.343468, 34.998932, 35.270401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.113712, 34.933159, 35.292465>,  <35.730789, 34.823536, 35.329239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113712, 34.933159, 35.292465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028194, 0.405039, 0.913865,
		0.287682, -0.872261, 0.395475,
		0.957311, 0.274052, -0.091930,
		36.400906, 35.015373, 35.264885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978054, 34.800240, 35.945499>,  <35.730789, 34.823536, 35.329239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978054, 34.800240, 35.945499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.267956, 35.024426, 35.785194>,  <36.441898, 35.158936, 35.689011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.267956, 35.024426, 35.785194>,  <35.978054, 34.800240, 35.945499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267956, 35.024426, 35.785194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058245, 0.529740, 0.846158,
		0.686540, -0.636600, 0.351288,
		0.724755, 0.560461, -0.400766,
		36.485382, 35.192562, 35.664963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438427, 34.817928, 36.502724>,  <35.978054, 34.800240, 35.945499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438427, 34.817928, 36.502724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.524212, 35.118908, 36.253620>,  <36.575684, 35.299496, 36.104156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.524212, 35.118908, 36.253620>,  <36.438427, 34.817928, 36.502724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524212, 35.118908, 36.253620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069035, 0.624324, 0.778110,
		0.974290, -0.209868, 0.081949,
		0.214462, 0.752447, -0.622760,
		36.588551, 35.344643, 36.066792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027988, 35.142159, 36.744091>,  <36.438427, 34.817928, 36.502724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027988, 35.142159, 36.744091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842121, 35.421482, 36.526302>,  <36.730598, 35.589077, 36.395630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842121, 35.421482, 36.526302>,  <37.027988, 35.142159, 36.744091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842121, 35.421482, 36.526302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051991, 0.592309, 0.804032,
		0.883955, 0.401919, -0.238924,
		-0.464673, 0.698306, -0.544471,
		36.702721, 35.630974, 36.362961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460632, 35.676830, 36.790195>,  <37.027988, 35.142159, 36.744091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460632, 35.676830, 36.790195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.089161, 35.799450, 36.706696>,  <36.866276, 35.873020, 36.656593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.089161, 35.799450, 36.706696>,  <37.460632, 35.676830, 36.790195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089161, 35.799450, 36.706696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033875, 0.490399, 0.870840,
		0.369324, 0.815806, -0.445041,
		-0.928683, 0.306546, -0.208752,
		36.810555, 35.891415, 36.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459480, 36.420109, 36.843876>,  <37.460632, 35.676830, 36.790195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459480, 36.420109, 36.843876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094994, 36.267395, 36.905739>,  <36.876301, 36.175766, 36.942856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.094994, 36.267395, 36.905739>,  <37.459480, 36.420109, 36.843876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094994, 36.267395, 36.905739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093700, 0.557737, 0.824712,
		-0.401119, 0.737003, -0.543994,
		-0.911221, -0.381780, 0.154662,
		36.821629, 36.152863, 36.952137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871456, 36.950397, 36.805527>,  <37.459480, 36.420109, 36.843876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871456, 36.950397, 36.805527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.795666, 36.663620, 37.073879>,  <36.750191, 36.491554, 37.234890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.795666, 36.663620, 37.073879>,  <36.871456, 36.950397, 36.805527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795666, 36.663620, 37.073879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104296, 0.694092, 0.712291,
		-0.976331, 0.064990, -0.206287,
		-0.189474, -0.716947, 0.670885,
		36.738823, 36.448536, 37.275146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305840, 37.351952, 36.384544>,  <36.871456, 36.950397, 36.805527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305840, 37.351952, 36.384544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048409, 37.554047, 36.154575>,  <36.893948, 37.675304, 36.016594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048409, 37.554047, 36.154575>,  <37.305840, 37.351952, 36.384544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048409, 37.554047, 36.154575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459939, 0.855704, 0.237120,
		0.611767, -0.111824, -0.783095,
		-0.643582, 0.505238, -0.574923,
		36.855335, 37.705620, 35.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642876, 37.890022, 36.042534>,  <37.305840, 37.351952, 36.384544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642876, 37.890022, 36.042534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265194, 38.021049, 36.028835>,  <37.038586, 38.099667, 36.020615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265194, 38.021049, 36.028835>,  <37.642876, 37.890022, 36.042534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265194, 38.021049, 36.028835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295706, 0.888942, 0.349770,
		0.145020, 0.320128, -0.936209,
		-0.944207, 0.327566, -0.034251,
		36.981934, 38.119320, 36.018559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484089, 37.601181, 35.285732>,  <37.642876, 37.890022, 36.042534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484089, 37.601181, 35.285732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.456387, 37.987442, 35.185558>,  <37.439766, 38.219200, 35.125454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.456387, 37.987442, 35.185558>,  <37.484089, 37.601181, 35.285732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456387, 37.987442, 35.185558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660415, -0.232533, -0.713989,
		-0.747700, 0.115943, 0.653836,
		-0.069257, 0.965653, -0.250435,
		37.435608, 38.277138, 35.110428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790276, 37.626968, 35.195583>,  <37.484089, 37.601181, 35.285732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790276, 37.626968, 35.195583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944546, 37.950653, 35.018303>,  <37.037109, 38.144863, 34.911934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944546, 37.950653, 35.018303>,  <36.790276, 37.626968, 35.195583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944546, 37.950653, 35.018303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620090, -0.128358, -0.773959,
		-0.683186, 0.573324, 0.452280,
		0.385676, 0.809212, -0.443204,
		37.060249, 38.193417, 34.885342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259159, 38.091179, 35.029060>,  <36.790276, 37.626968, 35.195583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259159, 38.091179, 35.029060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.551975, 38.205891, 34.781876>,  <36.727665, 38.274715, 34.633564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.551975, 38.205891, 34.781876>,  <36.259159, 38.091179, 35.029060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551975, 38.205891, 34.781876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581608, -0.209262, -0.786093,
		-0.354749, 0.934863, 0.013603,
		0.732042, 0.286777, -0.617959,
		36.771587, 38.291924, 34.596489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915428, 38.423298, 34.464424>,  <36.259159, 38.091179, 35.029060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915428, 38.423298, 34.464424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.273338, 38.322407, 34.317043>,  <36.488083, 38.261871, 34.228615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.273338, 38.322407, 34.317043>,  <35.915428, 38.423298, 34.464424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273338, 38.322407, 34.317043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396723, -0.070397, -0.915235,
		0.204906, 0.965105, -0.163053,
		0.894776, -0.252224, -0.368455,
		36.541771, 38.246738, 34.206509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841026, 38.805832, 33.812744>,  <35.915428, 38.423298, 34.464424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841026, 38.805832, 33.812744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152809, 38.561779, 33.755913>,  <36.339878, 38.415348, 33.721813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152809, 38.561779, 33.755913>,  <35.841026, 38.805832, 33.812744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152809, 38.561779, 33.755913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201217, -0.029054, -0.979116,
		0.593261, 0.791768, -0.145415,
		0.779457, -0.610131, -0.142080,
		36.386646, 38.378738, 33.713287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149925, 38.998562, 33.112003>,  <35.841026, 38.805832, 33.812744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149925, 38.998562, 33.112003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.266350, 38.623985, 33.190342>,  <36.336205, 38.399239, 33.237347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.266350, 38.623985, 33.190342>,  <36.149925, 38.998562, 33.112003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266350, 38.623985, 33.190342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263376, -0.275232, -0.924598,
		0.919737, 0.217536, -0.326746,
		0.291065, -0.936443, 0.195847,
		36.353668, 38.343052, 33.249096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470997, 38.849709, 32.531673>,  <36.149925, 38.998562, 33.112003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470997, 38.849709, 32.531673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.360443, 38.499245, 32.689636>,  <36.294109, 38.288967, 32.784416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.360443, 38.499245, 32.689636>,  <36.470997, 38.849709, 32.531673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360443, 38.499245, 32.689636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249285, -0.331493, -0.909928,
		0.928154, -0.349934, -0.126795,
		-0.276384, -0.876161, 0.394910,
		36.277527, 38.236397, 32.808109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743805, 38.241772, 32.173969>,  <36.470997, 38.849709, 32.531673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743805, 38.241772, 32.173969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.423691, 38.102379, 32.369152>,  <36.231625, 38.018742, 32.486263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.423691, 38.102379, 32.369152>,  <36.743805, 38.241772, 32.173969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423691, 38.102379, 32.369152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335455, -0.414315, -0.846057,
		0.497008, -0.840774, 0.214668,
		-0.800283, -0.348485, 0.487960,
		36.183605, 37.997833, 32.515541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666615, 37.608406, 31.896339>,  <36.743805, 38.241772, 32.173969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666615, 37.608406, 31.896339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305016, 37.694965, 32.043831>,  <36.088055, 37.746902, 32.132324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305016, 37.694965, 32.043831>,  <36.666615, 37.608406, 31.896339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305016, 37.694965, 32.043831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427279, -0.487287, -0.761567,
		0.014875, -0.846004, 0.532968,
		-0.903997, 0.216398, 0.368728,
		36.033817, 37.759884, 32.154449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351505, 37.041393, 31.832724>,  <36.666615, 37.608406, 31.896339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351505, 37.041393, 31.832724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.046440, 37.297112, 31.872013>,  <35.863403, 37.450542, 31.895586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.046440, 37.297112, 31.872013>,  <36.351505, 37.041393, 31.832724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046440, 37.297112, 31.872013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559279, -0.575533, -0.596631,
		-0.324896, -0.509960, 0.796482,
		-0.762660, 0.639299, 0.098222,
		35.817642, 37.488903, 31.901480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821655, 36.640766, 31.930189>,  <36.351505, 37.041393, 31.832724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821655, 36.640766, 31.930189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646507, 36.976200, 31.800543>,  <35.541420, 37.177460, 31.722755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646507, 36.976200, 31.800543>,  <35.821655, 36.640766, 31.930189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646507, 36.976200, 31.800543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554679, -0.535704, -0.636674,
		-0.707532, -0.099001, 0.699712,
		-0.437870, 0.838583, -0.324114,
		35.515148, 37.227776, 31.703308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186634, 36.433990, 31.796972>,  <35.821655, 36.640766, 31.930189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186634, 36.433990, 31.796972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.228348, 36.784077, 31.608025>,  <35.253376, 36.994129, 31.494656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.228348, 36.784077, 31.608025>,  <35.186634, 36.433990, 31.796972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228348, 36.784077, 31.608025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388380, -0.401409, -0.829477,
		-0.915580, 0.269957, 0.298055,
		0.104281, 0.875211, -0.472368,
		35.259632, 37.046638, 31.466314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491734, 36.497013, 31.531130>,  <35.186634, 36.433990, 31.796972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491734, 36.497013, 31.531130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.730488, 36.741928, 31.323734>,  <34.873741, 36.888878, 31.199297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.730488, 36.741928, 31.323734>,  <34.491734, 36.497013, 31.531130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730488, 36.741928, 31.323734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237499, -0.482432, -0.843121,
		-0.766369, 0.626388, -0.142539,
		0.596886, 0.612289, -0.518487,
		34.909554, 36.925613, 31.168188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116737, 36.811390, 31.041531>,  <34.491734, 36.497013, 31.531130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116737, 36.811390, 31.041531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490612, 36.803272, 30.899578>,  <34.714939, 36.798401, 30.814405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490612, 36.803272, 30.899578>,  <34.116737, 36.811390, 31.041531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490612, 36.803272, 30.899578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322028, -0.471070, -0.821213,
		-0.150506, 0.881862, -0.446841,
		0.934690, -0.020298, -0.354883,
		34.771019, 36.797184, 30.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623287, 37.407383, 31.090496>,  <34.116737, 36.811390, 31.041531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623287, 37.407383, 31.090496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420052, 37.719650, 30.944952>,  <33.298111, 37.907013, 30.857626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420052, 37.719650, 30.944952>,  <33.623287, 37.407383, 31.090496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420052, 37.719650, 30.944952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308731, 0.229308, 0.923094,
		0.804069, 0.581352, 0.124508,
		-0.508092, 0.780671, -0.363861,
		33.267624, 37.953850, 30.835794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939705, 37.990082, 31.470608>,  <33.623287, 37.407383, 31.090496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939705, 37.990082, 31.470608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568428, 38.076103, 31.349144>,  <33.345661, 38.127716, 31.276266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568428, 38.076103, 31.349144>,  <33.939705, 37.990082, 31.470608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568428, 38.076103, 31.349144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275124, 0.152808, 0.949187,
		0.250526, 0.964574, -0.082669,
		-0.928194, 0.215052, -0.303660,
		33.289970, 38.140617, 31.258045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715591, 38.753536, 31.726837>,  <33.939705, 37.990082, 31.470608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715591, 38.753536, 31.726837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.402782, 38.509560, 31.675594>,  <33.215096, 38.363174, 31.644848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.402782, 38.509560, 31.675594>,  <33.715591, 38.753536, 31.726837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402782, 38.509560, 31.675594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381654, 0.306156, 0.872129,
		-0.492723, 0.730921, -0.472207,
		-0.782026, -0.609937, -0.128109,
		33.168175, 38.326580, 31.637161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124218, 39.096264, 31.988720>,  <33.715591, 38.753536, 31.726837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124218, 39.096264, 31.988720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.983097, 38.722019, 31.983612>,  <32.898426, 38.497471, 31.980547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.983097, 38.722019, 31.983612>,  <33.124218, 39.096264, 31.988720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983097, 38.722019, 31.983612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361155, 0.123570, 0.924282,
		-0.863191, 0.330699, -0.381496,
		-0.352801, -0.935611, -0.012769,
		32.877258, 38.441338, 31.979782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437531, 39.178375, 32.405010>,  <33.124218, 39.096264, 31.988720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437531, 39.178375, 32.405010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.554543, 38.796665, 32.380432>,  <32.624752, 38.567638, 32.365685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.554543, 38.796665, 32.380432>,  <32.437531, 39.178375, 32.405010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554543, 38.796665, 32.380432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393803, -0.178773, 0.901643,
		-0.871404, -0.239563, -0.428095,
		0.292532, -0.954280, -0.061443,
		32.642303, 38.510380, 32.362000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931074, 38.817711, 32.733784>,  <32.437531, 39.178375, 32.405010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931074, 38.817711, 32.733784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.260937, 38.593861, 32.766666>,  <32.458855, 38.459549, 32.786396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.260937, 38.593861, 32.766666>,  <31.931074, 38.817711, 32.733784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260937, 38.593861, 32.766666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255631, -0.239084, 0.936745,
		-0.504576, -0.793507, -0.340220,
		0.824655, -0.559630, 0.082209,
		32.508335, 38.425972, 32.791328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679306, 38.041466, 32.846092>,  <31.931074, 38.817711, 32.733784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679306, 38.041466, 32.846092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.064026, 38.062466, 32.953564>,  <32.294857, 38.075066, 33.018047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.064026, 38.062466, 32.953564>,  <31.679306, 38.041466, 32.846092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064026, 38.062466, 32.953564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209954, -0.488369, 0.847004,
		0.175682, -0.871057, -0.458689,
		0.961798, 0.052499, 0.268679,
		32.352566, 38.078217, 33.034168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781912, 37.309879, 33.028461>,  <31.679306, 38.041466, 32.846092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781912, 37.309879, 33.028461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.079948, 37.529999, 33.179195>,  <32.258770, 37.662071, 33.269638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.079948, 37.529999, 33.179195>,  <31.781912, 37.309879, 33.028461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079948, 37.529999, 33.179195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095389, -0.471276, 0.876812,
		0.660105, -0.689252, -0.298651,
		0.745092, 0.550300, 0.376839,
		32.303474, 37.695087, 33.292248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169529, 36.844212, 33.368126>,  <31.781912, 37.309879, 33.028461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169529, 36.844212, 33.368126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.311863, 37.178997, 33.534439>,  <32.397263, 37.379868, 33.634228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.311863, 37.178997, 33.534439>,  <32.169529, 36.844212, 33.368126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311863, 37.178997, 33.534439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005192, -0.443121, 0.896447,
		0.934536, -0.321143, -0.153331,
		0.355832, 0.836965, 0.415780,
		32.418613, 37.430088, 33.659172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834625, 36.729458, 33.664856>,  <32.169529, 36.844212, 33.368126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834625, 36.729458, 33.664856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.677776, 37.044701, 33.854649>,  <32.583668, 37.233845, 33.968525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.677776, 37.044701, 33.854649>,  <32.834625, 36.729458, 33.664856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677776, 37.044701, 33.854649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067927, -0.489572, 0.869313,
		0.917402, 0.373107, 0.138439,
		-0.392123, 0.788105, 0.474479,
		32.560139, 37.281132, 33.996994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257103, 36.801369, 34.267796>,  <32.834625, 36.729458, 33.664856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257103, 36.801369, 34.267796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.920666, 36.999184, 34.355431>,  <32.718803, 37.117874, 34.408012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.920666, 36.999184, 34.355431>,  <33.257103, 36.801369, 34.267796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920666, 36.999184, 34.355431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068369, -0.304603, 0.950023,
		0.536557, 0.814034, 0.222387,
		-0.841090, 0.494536, 0.219091,
		32.668339, 37.147545, 34.421158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476181, 37.065910, 34.950150>,  <33.257103, 36.801369, 34.267796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476181, 37.065910, 34.950150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.077026, 37.085915, 34.933567>,  <32.837532, 37.097916, 34.923618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.077026, 37.085915, 34.933567>,  <33.476181, 37.065910, 34.950150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077026, 37.085915, 34.933567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055896, -0.335831, 0.940263,
		0.033099, 0.940594, 0.337917,
		-0.997888, 0.050010, -0.041460,
		32.777660, 37.100918, 34.921127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.961521, 36.666813, 27.527567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571857, 36.597042, 27.584976>,  <33.338058, 36.555180, 27.619421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571857, 36.597042, 27.584976>,  <33.961521, 36.666813, 27.527567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571857, 36.597042, 27.584976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047354, 0.778970, 0.625271,
		-0.220861, 0.602314, -0.767097,
		-0.974155, -0.174423, 0.143523,
		33.279610, 36.544716, 27.628033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801262, 37.274754, 27.699154>,  <33.961521, 36.666813, 27.527567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801262, 37.274754, 27.699154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465199, 37.078243, 27.791059>,  <33.263561, 36.960339, 27.846203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465199, 37.078243, 27.791059>,  <33.801262, 37.274754, 27.699154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465199, 37.078243, 27.791059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229755, 0.706148, 0.669752,
		-0.491278, 0.509905, -0.706146,
		-0.840154, -0.491275, 0.229762,
		33.213154, 36.930862, 27.859987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269688, 37.766022, 27.560799>,  <33.801262, 37.274754, 27.699154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269688, 37.766022, 27.560799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146999, 37.490261, 27.823294>,  <33.073387, 37.324806, 27.980791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146999, 37.490261, 27.823294>,  <33.269688, 37.766022, 27.560799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146999, 37.490261, 27.823294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335330, 0.723535, 0.603366,
		-0.890773, -0.034991, -0.453100,
		-0.306721, -0.689400, 0.656239,
		33.054981, 37.283440, 28.020164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611969, 38.081436, 27.929132>,  <33.269688, 37.766022, 27.560799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611969, 38.081436, 27.929132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759850, 37.788864, 28.158335>,  <32.848579, 37.613323, 28.295856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759850, 37.788864, 28.158335>,  <32.611969, 38.081436, 27.929132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759850, 37.788864, 28.158335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134112, 0.568234, 0.811865,
		-0.919421, -0.376993, 0.111983,
		0.369700, -0.731427, 0.573005,
		32.870758, 37.569435, 28.330236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165676, 38.114098, 28.520323>,  <32.611969, 38.081436, 27.929132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165676, 38.114098, 28.520323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487877, 37.905659, 28.633186>,  <32.681198, 37.780594, 28.700905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487877, 37.905659, 28.633186>,  <32.165676, 38.114098, 28.520323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487877, 37.905659, 28.633186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029363, 0.440467, 0.897288,
		-0.591859, -0.731057, 0.339498,
		0.805506, -0.521099, 0.282161,
		32.729530, 37.749329, 28.717834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043442, 37.894588, 29.239862>,  <32.165676, 38.114098, 28.520323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043442, 37.894588, 29.239862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440228, 37.874401, 29.193443>,  <32.678299, 37.862289, 29.165592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440228, 37.874401, 29.193443>,  <32.043442, 37.894588, 29.239862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440228, 37.874401, 29.193443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126234, 0.330295, 0.935398,
		-0.008877, -0.942528, 0.334010,
		0.991961, -0.050468, -0.116047,
		32.737816, 37.859261, 29.158628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288837, 37.334976, 29.665615>,  <32.043442, 37.894588, 29.239862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288837, 37.334976, 29.665615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600384, 37.584694, 29.641508>,  <32.787312, 37.734524, 29.627045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600384, 37.584694, 29.641508>,  <32.288837, 37.334976, 29.665615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600384, 37.584694, 29.641508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004567, 0.101730, 0.994802,
		0.627177, -0.774539, 0.082085,
		0.778863, 0.624291, -0.060265,
		32.834042, 37.771980, 29.623428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761684, 37.229546, 30.185654>,  <32.288837, 37.334976, 29.665615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761684, 37.229546, 30.185654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911102, 37.590561, 30.099970>,  <33.000755, 37.807171, 30.048559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911102, 37.590561, 30.099970>,  <32.761684, 37.229546, 30.185654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911102, 37.590561, 30.099970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153941, 0.167408, 0.973795,
		0.914748, -0.396735, -0.076403,
		0.373548, 0.902539, -0.214210,
		33.023167, 37.861324, 30.035707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486191, 37.255886, 30.398905>,  <32.761684, 37.229546, 30.185654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486191, 37.255886, 30.398905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318039, 37.618820, 30.396664>,  <33.217148, 37.836578, 30.395319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318039, 37.618820, 30.396664>,  <33.486191, 37.255886, 30.398905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318039, 37.618820, 30.396664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051400, 0.029980, 0.998228,
		0.905893, 0.419343, -0.059240,
		-0.420376, 0.907333, -0.005605,
		33.191925, 37.891022, 30.394981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148708, 37.152771, 30.092579>,  <33.486191, 37.255886, 30.398905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148708, 37.152771, 30.092579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484638, 36.960815, 30.194082>,  <34.686195, 36.845642, 30.254984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484638, 36.960815, 30.194082>,  <34.148708, 37.152771, 30.092579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484638, 36.960815, 30.194082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042097, -0.523618, -0.850913,
		0.541217, 0.703938, -0.459951,
		0.839829, -0.479891, 0.253758,
		34.736588, 36.816849, 30.270210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489269, 37.049099, 29.498892>,  <34.148708, 37.152771, 30.092579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489269, 37.049099, 29.498892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708382, 36.790684, 29.711519>,  <34.839848, 36.635635, 29.839096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708382, 36.790684, 29.711519>,  <34.489269, 37.049099, 29.498892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708382, 36.790684, 29.711519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206083, -0.511602, -0.834142,
		0.810842, 0.566476, -0.147108,
		0.547782, -0.646041, 0.531570,
		34.872715, 36.596870, 29.870991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156704, 37.008709, 29.247181>,  <34.489269, 37.049099, 29.498892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156704, 37.008709, 29.247181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071068, 36.664204, 29.431528>,  <35.019688, 36.457500, 29.542135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071068, 36.664204, 29.431528>,  <35.156704, 37.008709, 29.247181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071068, 36.664204, 29.431528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306238, -0.507198, -0.805586,
		0.927569, -0.031333, 0.372336,
		-0.214089, -0.861260, 0.460866,
		35.006840, 36.405827, 29.569788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753960, 36.581856, 29.212091>,  <35.156704, 37.008709, 29.247181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753960, 36.581856, 29.212091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447765, 36.329563, 29.263014>,  <35.264050, 36.178188, 29.293568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447765, 36.329563, 29.263014>,  <35.753960, 36.581856, 29.212091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447765, 36.329563, 29.263014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301176, -0.526050, -0.795339,
		0.568619, -0.570477, 0.592645,
		-0.765484, -0.630735, 0.127308,
		35.218121, 36.140343, 29.301207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051170, 36.024456, 28.967350>,  <35.753960, 36.581856, 29.212091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051170, 36.024456, 28.967350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697586, 35.842735, 29.011555>,  <35.485435, 35.733704, 29.038078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697586, 35.842735, 29.011555>,  <36.051170, 36.024456, 28.967350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697586, 35.842735, 29.011555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172981, -0.537366, -0.825418,
		0.434378, -0.710524, 0.553599,
		-0.883965, -0.454306, 0.110512,
		35.432396, 35.706444, 29.044708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171307, 35.245953, 29.033524>,  <36.051170, 36.024456, 28.967350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171307, 35.245953, 29.033524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803562, 35.339581, 28.907040>,  <35.582916, 35.395756, 28.831150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803562, 35.339581, 28.907040>,  <36.171307, 35.245953, 29.033524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803562, 35.339581, 28.907040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118519, -0.601630, -0.789933,
		-0.375136, -0.763711, 0.525374,
		-0.919362, 0.234066, -0.316208,
		35.527752, 35.409801, 28.812178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015800, 34.662182, 28.750368>,  <36.171307, 35.245953, 29.033524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015800, 34.662182, 28.750368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727676, 34.895264, 28.599848>,  <35.554802, 35.035114, 28.509535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727676, 34.895264, 28.599848>,  <36.015800, 34.662182, 28.750368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727676, 34.895264, 28.599848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004585, -0.546482, -0.837458,
		-0.693636, -0.601505, 0.396309,
		-0.720311, 0.582708, -0.376302,
		35.511581, 35.070076, 28.486958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362488, 34.181938, 28.548853>,  <36.015800, 34.662182, 28.750368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362488, 34.181938, 28.548853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349709, 34.524799, 28.343227>,  <35.342041, 34.730518, 28.219852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349709, 34.524799, 28.343227>,  <35.362488, 34.181938, 28.548853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349709, 34.524799, 28.343227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069614, -0.514986, -0.854367,
		-0.997062, 0.008493, 0.076122,
		-0.031946, 0.857157, -0.514064,
		35.340126, 34.781948, 28.189009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045609, 33.968765, 27.970449>,  <35.362488, 34.181938, 28.548853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045609, 33.968765, 27.970449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205254, 34.319576, 27.863470>,  <35.301041, 34.530064, 27.799282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205254, 34.319576, 27.863470>,  <35.045609, 33.968765, 27.970449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205254, 34.319576, 27.863470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123583, -0.340479, -0.932095,
		-0.908534, 0.338961, -0.244276,
		0.399115, 0.877029, -0.267447,
		35.324989, 34.582684, 27.783236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776787, 34.142624, 27.256971>,  <35.045609, 33.968765, 27.970449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776787, 34.142624, 27.256971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121235, 34.325394, 27.346140>,  <35.327904, 34.435055, 27.399641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121235, 34.325394, 27.346140>,  <34.776787, 34.142624, 27.256971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121235, 34.325394, 27.346140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398163, -0.333453, -0.854561,
		-0.316137, 0.824638, -0.469074,
		0.861117, 0.456926, 0.222923,
		35.379570, 34.462471, 27.413017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877293, 34.300621, 26.662823>,  <34.776787, 34.142624, 27.256971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877293, 34.300621, 26.662823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237488, 34.359955, 26.826342>,  <35.453606, 34.395554, 26.924454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237488, 34.359955, 26.826342>,  <34.877293, 34.300621, 26.662823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237488, 34.359955, 26.826342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432948, -0.217305, -0.874834,
		-0.040933, 0.964767, -0.259901,
		0.900489, 0.148333, 0.408799,
		35.507633, 34.404453, 26.948982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219193, 34.662186, 26.208523>,  <34.877293, 34.300621, 26.662823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219193, 34.662186, 26.208523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494003, 34.467842, 26.424646>,  <35.658890, 34.351234, 26.554321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494003, 34.467842, 26.424646>,  <35.219193, 34.662186, 26.208523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494003, 34.467842, 26.424646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423229, -0.336864, -0.841071,
		0.590655, 0.806512, -0.025804,
		0.687026, -0.485862, 0.540310,
		35.700111, 34.322083, 26.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829887, 34.806595, 25.943338>,  <35.219193, 34.662186, 26.208523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829887, 34.806595, 25.943338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928303, 34.458145, 26.113331>,  <35.987350, 34.249077, 26.215326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928303, 34.458145, 26.113331>,  <35.829887, 34.806595, 25.943338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928303, 34.458145, 26.113331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405466, -0.305746, -0.861462,
		0.880376, 0.384267, 0.277986,
		0.246038, -0.871124, 0.424979,
		36.002113, 34.196808, 26.240824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420570, 34.550697, 25.545757>,  <35.829887, 34.806595, 25.943338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420570, 34.550697, 25.545757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294815, 34.224819, 25.740664>,  <36.219360, 34.029293, 25.857607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294815, 34.224819, 25.740664>,  <36.420570, 34.550697, 25.545757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294815, 34.224819, 25.740664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236295, -0.564298, -0.791033,
		0.919414, -0.133556, 0.369919,
		-0.314391, -0.814697, 0.487265,
		36.200497, 33.980412, 25.886843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.833557, 28.918392, 30.596004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.826321, 29.315701, 30.550240>,  <30.821980, 29.554085, 30.522781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.826321, 29.315701, 30.550240>,  <30.833557, 28.918392, 30.596004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826321, 29.315701, 30.550240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299878, 0.103774, 0.948316,
		0.953806, 0.051464, 0.295983,
		-0.018089, 0.993269, -0.114413,
		30.820894, 29.613682, 30.515915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985580, 29.120907, 31.261160>,  <30.833557, 28.918392, 30.596004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985580, 29.120907, 31.261160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.882267, 29.463055, 31.081543>,  <30.820280, 29.668343, 30.973774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.882267, 29.463055, 31.081543>,  <30.985580, 29.120907, 31.261160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882267, 29.463055, 31.081543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055995, 0.450775, 0.890880,
		0.964445, 0.255242, -0.068531,
		-0.258282, 0.855367, -0.449040,
		30.804783, 29.719666, 30.946831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297117, 29.637123, 31.636230>,  <30.985580, 29.120907, 31.261160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297117, 29.637123, 31.636230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.032551, 29.840538, 31.415716>,  <30.873810, 29.962587, 31.283407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.032551, 29.840538, 31.415716>,  <31.297117, 29.637123, 31.636230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032551, 29.840538, 31.415716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075965, 0.685827, 0.723789,
		0.746161, 0.520606, -0.414987,
		-0.661418, 0.508539, -0.551285,
		30.834126, 29.993099, 31.250330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612705, 30.258125, 31.515240>,  <31.297117, 29.637123, 31.636230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612705, 30.258125, 31.515240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215906, 30.307959, 31.523457>,  <30.977827, 30.337858, 31.528387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215906, 30.307959, 31.523457>,  <31.612705, 30.258125, 31.515240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215906, 30.307959, 31.523457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100519, 0.680727, 0.725608,
		0.076415, 0.721866, -0.687802,
		-0.991996, 0.124584, 0.020543,
		30.918306, 30.345333, 31.529619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534910, 31.089203, 31.623556>,  <31.612705, 30.258125, 31.515240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534910, 31.089203, 31.623556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.204367, 30.887697, 31.724239>,  <31.006041, 30.766794, 31.784649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.204367, 30.887697, 31.724239>,  <31.534910, 31.089203, 31.623556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204367, 30.887697, 31.724239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137019, 0.613391, 0.777803,
		-0.546223, 0.608255, -0.575905,
		-0.826357, -0.503764, 0.251706,
		30.956459, 30.736568, 31.799751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060020, 31.648226, 31.828905>,  <31.534910, 31.089203, 31.623556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060020, 31.648226, 31.828905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.934969, 31.306393, 31.994774>,  <30.859938, 31.101294, 32.094296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.934969, 31.306393, 31.994774>,  <31.060020, 31.648226, 31.828905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934969, 31.306393, 31.994774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095739, 0.462681, 0.881340,
		-0.945038, 0.235834, -0.226465,
		-0.312631, -0.854581, 0.414673,
		30.841179, 31.050018, 32.119175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392567, 31.819405, 32.270996>,  <31.060020, 31.648226, 31.828905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392567, 31.819405, 32.270996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.562639, 31.486414, 32.413097>,  <30.664682, 31.286619, 32.498360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.562639, 31.486414, 32.413097>,  <30.392567, 31.819405, 32.270996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562639, 31.486414, 32.413097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035944, 0.407718, 0.912400,
		-0.904394, -0.375167, 0.203277,
		0.425182, -0.832475, 0.355253,
		30.690193, 31.236671, 32.519672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065372, 31.658545, 32.821007>,  <30.392567, 31.819405, 32.270996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065372, 31.658545, 32.821007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.414612, 31.469021, 32.866978>,  <30.624155, 31.355307, 32.894558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.414612, 31.469021, 32.866978>,  <30.065372, 31.658545, 32.821007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414612, 31.469021, 32.866978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061627, 0.341079, 0.938012,
		-0.483637, -0.811893, 0.326994,
		0.873096, -0.473809, 0.114924,
		30.676540, 31.326878, 32.901455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016523, 31.339531, 33.499195>,  <30.065372, 31.658545, 32.821007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016523, 31.339531, 33.499195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.403904, 31.329393, 33.400032>,  <30.636332, 31.323311, 33.340534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.403904, 31.329393, 33.400032>,  <30.016523, 31.339531, 33.499195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403904, 31.329393, 33.400032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239327, 0.371872, 0.896902,
		0.069459, -0.927938, 0.366206,
		0.968451, -0.025345, -0.247910,
		30.694439, 31.321791, 33.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322649, 31.221788, 34.101566>,  <30.016523, 31.339531, 33.499195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322649, 31.221788, 34.101566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.633505, 31.341324, 33.880028>,  <30.820019, 31.413046, 33.747105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.633505, 31.341324, 33.880028>,  <30.322649, 31.221788, 34.101566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633505, 31.341324, 33.880028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418337, 0.412171, 0.809388,
		0.470158, -0.860703, 0.195299,
		0.777139, 0.298839, -0.553850,
		30.866648, 31.430975, 33.713871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926210, 31.026463, 34.432484>,  <30.322649, 31.221788, 34.101566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926210, 31.026463, 34.432484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.055563, 31.325089, 34.199909>,  <31.133175, 31.504263, 34.060364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.055563, 31.325089, 34.199909>,  <30.926210, 31.026463, 34.432484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055563, 31.325089, 34.199909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480022, 0.400098, 0.780705,
		0.815478, -0.531567, -0.228982,
		0.323382, 0.746564, -0.581435,
		31.152578, 31.549057, 34.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623478, 31.132627, 34.554142>,  <30.926210, 31.026463, 34.432484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623478, 31.132627, 34.554142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.488752, 31.481007, 34.411034>,  <31.407917, 31.690035, 34.325169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.488752, 31.481007, 34.411034>,  <31.623478, 31.132627, 34.554142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488752, 31.481007, 34.411034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459282, 0.483676, 0.745062,
		0.821958, 0.086629, -0.562921,
		-0.336815, 0.870950, -0.357774,
		31.387709, 31.742292, 34.303699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217190, 31.669952, 34.594906>,  <31.623478, 31.132627, 34.554142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217190, 31.669952, 34.594906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.890177, 31.896715, 34.554401>,  <31.693968, 32.032772, 34.530098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.890177, 31.896715, 34.554401>,  <32.217190, 31.669952, 34.594906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890177, 31.896715, 34.554401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300317, 0.569726, 0.764998,
		0.491373, 0.595003, -0.636022,
		-0.817535, 0.566908, -0.101258,
		31.644917, 32.066788, 34.524025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396618, 32.344223, 34.570236>,  <32.217190, 31.669952, 34.594906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396618, 32.344223, 34.570236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010677, 32.377167, 34.670055>,  <31.779112, 32.396931, 34.729946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010677, 32.377167, 34.670055>,  <32.396618, 32.344223, 34.570236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010677, 32.377167, 34.670055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215904, 0.789798, 0.574111,
		-0.149814, 0.607812, -0.779820,
		-0.964853, 0.082356, 0.249552,
		31.721222, 32.401875, 34.744923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113720, 32.499939, 34.442238>,  <32.396618, 32.344223, 34.570236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113720, 32.499939, 34.442238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422771, 32.270222, 34.550480>,  <33.608204, 32.132393, 34.615425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422771, 32.270222, 34.550480>,  <33.113720, 32.499939, 34.442238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422771, 32.270222, 34.550480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104812, -0.305011, -0.946563,
		0.626142, 0.759709, -0.175469,
		0.772632, -0.574292, 0.270607,
		33.654560, 32.097935, 34.631660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629097, 32.614574, 33.935486>,  <33.113720, 32.499939, 34.442238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629097, 32.614574, 33.935486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.717632, 32.262650, 34.103745>,  <33.770756, 32.051495, 34.204700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.717632, 32.262650, 34.103745>,  <33.629097, 32.614574, 33.935486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717632, 32.262650, 34.103745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216728, -0.376180, -0.900843,
		0.950808, 0.290561, 0.107414,
		0.221343, -0.879808, 0.420648,
		33.784035, 31.998707, 34.229939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227192, 32.442101, 33.663979>,  <33.629097, 32.614574, 33.935486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227192, 32.442101, 33.663979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116879, 32.080933, 33.795841>,  <34.050690, 31.864231, 33.874958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116879, 32.080933, 33.795841>,  <34.227192, 32.442101, 33.663979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116879, 32.080933, 33.795841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168159, -0.382992, -0.908317,
		0.946396, -0.195064, 0.257458,
		-0.275785, -0.902921, 0.329661,
		34.034142, 31.810057, 33.894741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732914, 32.060558, 33.514103>,  <34.227192, 32.442101, 33.663979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732914, 32.060558, 33.514103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444298, 31.788986, 33.568405>,  <34.271130, 31.626041, 33.600986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444298, 31.788986, 33.568405>,  <34.732914, 32.060558, 33.514103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444298, 31.788986, 33.568405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250620, -0.438887, -0.862883,
		0.645424, -0.588580, 0.486828,
		-0.721538, -0.678935, 0.135758,
		34.227837, 31.585306, 33.609131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116333, 31.434881, 33.402012>,  <34.732914, 32.060558, 33.514103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116333, 31.434881, 33.402012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726795, 31.369778, 33.338585>,  <34.493073, 31.330715, 33.300529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726795, 31.369778, 33.338585>,  <35.116333, 31.434881, 33.402012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726795, 31.369778, 33.338585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222698, -0.544875, -0.808404,
		0.045173, -0.822569, 0.566867,
		-0.973840, -0.162759, -0.158571,
		34.434643, 31.320950, 33.291012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943630, 30.676901, 33.519405>,  <35.116333, 31.434881, 33.402012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943630, 30.676901, 33.519405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.648994, 30.817162, 33.288071>,  <34.472214, 30.901318, 33.149269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.648994, 30.817162, 33.288071>,  <34.943630, 30.676901, 33.519405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648994, 30.817162, 33.288071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397717, -0.467058, -0.789733,
		-0.547040, -0.811725, 0.204570,
		-0.736592, 0.350654, -0.578336,
		34.428017, 30.922358, 33.114571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660568, 30.084505, 33.095879>,  <34.943630, 30.676901, 33.519405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660568, 30.084505, 33.095879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.495392, 30.396927, 32.908504>,  <34.396286, 30.584381, 32.796078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.495392, 30.396927, 32.908504>,  <34.660568, 30.084505, 33.095879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495392, 30.396927, 32.908504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151937, -0.448053, -0.881002,
		-0.897997, -0.434970, 0.066347,
		-0.412937, 0.781057, -0.468438,
		34.371510, 30.631245, 32.767975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345085, 29.738636, 32.533909>,  <34.660568, 30.084505, 33.095879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345085, 29.738636, 32.533909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377449, 30.129179, 32.453728>,  <34.396870, 30.363504, 32.405617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377449, 30.129179, 32.453728>,  <34.345085, 29.738636, 32.533909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377449, 30.129179, 32.453728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009160, -0.201836, -0.979376,
		-0.996679, 0.077409, -0.025275,
		0.080914, 0.976355, -0.200457,
		34.401722, 30.422085, 32.393589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905743, 29.781813, 31.908707>,  <34.345085, 29.738636, 32.533909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905743, 29.781813, 31.908707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.103367, 30.127253, 31.868509>,  <34.221939, 30.334517, 31.844391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.103367, 30.127253, 31.868509>,  <33.905743, 29.781813, 31.908707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103367, 30.127253, 31.868509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006523, -0.111901, -0.993698,
		-0.869404, 0.491601, -0.049653,
		0.494059, 0.863601, -0.100494,
		34.251583, 30.386333, 31.838362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504906, 30.240892, 31.407972>,  <33.905743, 29.781813, 31.908707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504906, 30.240892, 31.407972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897301, 30.318232, 31.414618>,  <34.132740, 30.364635, 31.418606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897301, 30.318232, 31.414618>,  <33.504906, 30.240892, 31.407972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897301, 30.318232, 31.414618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019952, -0.015330, -0.999683,
		-0.193032, 0.981010, -0.018897,
		0.980990, 0.193348, 0.016614,
		34.191597, 30.376236, 31.419601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570145, 30.741394, 30.914597>,  <33.504906, 30.240892, 31.407972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570145, 30.741394, 30.914597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950600, 30.631304, 30.970575>,  <34.178871, 30.565250, 31.004162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950600, 30.631304, 30.970575>,  <33.570145, 30.741394, 30.914597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950600, 30.631304, 30.970575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149721, 0.014722, -0.988619,
		0.270033, 0.961267, 0.055210,
		0.951139, -0.275226, 0.139946,
		34.235943, 30.548737, 31.012560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884304, 31.112661, 30.450453>,  <33.570145, 30.741394, 30.914597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884304, 31.112661, 30.450453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129749, 30.813555, 30.551903>,  <34.277016, 30.634090, 30.612772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129749, 30.813555, 30.551903>,  <33.884304, 31.112661, 30.450453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129749, 30.813555, 30.551903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049354, -0.284256, -0.957477,
		0.788063, 0.600038, -0.137518,
		0.613614, -0.747765, 0.253625,
		34.313835, 30.589226, 30.627991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518894, 31.169567, 29.996489>,  <33.884304, 31.112661, 30.450453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518894, 31.169567, 29.996489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.449287, 30.796579, 30.123117>,  <34.407524, 30.572786, 30.199095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.449287, 30.796579, 30.123117>,  <34.518894, 31.169567, 29.996489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449287, 30.796579, 30.123117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026791, -0.325840, -0.945045,
		0.984379, -0.155968, 0.081682,
		-0.174012, -0.932471, 0.316572,
		34.397083, 30.516838, 30.218088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001270, 30.643356, 29.604664>,  <34.518894, 31.169567, 29.996489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001270, 30.643356, 29.604664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702385, 30.414124, 29.739275>,  <34.523052, 30.276583, 29.820042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702385, 30.414124, 29.739275>,  <35.001270, 30.643356, 29.604664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702385, 30.414124, 29.739275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070629, -0.435025, -0.897644,
		0.660822, -0.694499, 0.284580,
		-0.747212, -0.573084, 0.336526,
		34.478222, 30.242199, 29.840233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690079, 30.454453, 29.512249>,  <35.001270, 30.643356, 29.604664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690079, 30.454453, 29.512249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.869453, 30.756348, 29.320717>,  <35.977077, 30.937485, 29.205797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.869453, 30.756348, 29.320717>,  <35.690079, 30.454453, 29.512249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869453, 30.756348, 29.320717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334416, 0.355134, 0.872952,
		0.828899, -0.551589, -0.093143,
		0.448433, 0.754738, -0.478830,
		36.003983, 30.982769, 29.177069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356693, 30.470770, 29.812241>,  <35.690079, 30.454453, 29.512249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356693, 30.470770, 29.812241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296242, 30.836527, 29.662018>,  <36.259972, 31.055981, 29.571884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296242, 30.836527, 29.662018>,  <36.356693, 30.470770, 29.812241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296242, 30.836527, 29.662018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558012, 0.392516, 0.731132,
		0.815955, -0.099071, -0.569563,
		-0.151129, 0.914394, -0.375559,
		36.250904, 31.110846, 29.549351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964016, 30.832939, 30.026310>,  <36.356693, 30.470770, 29.812241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964016, 30.832939, 30.026310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751766, 31.139799, 29.882135>,  <36.624416, 31.323915, 29.795631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751766, 31.139799, 29.882135>,  <36.964016, 30.832939, 30.026310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751766, 31.139799, 29.882135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637536, 0.641458, 0.426708,
		0.558554, -0.003367, -0.829461,
		-0.530628, 0.767151, -0.360435,
		36.592579, 31.369944, 29.774004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390011, 31.315966, 29.856220>,  <36.964016, 30.832939, 30.026310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390011, 31.315966, 29.856220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048573, 31.518227, 29.906321>,  <36.843708, 31.639584, 29.936380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048573, 31.518227, 29.906321>,  <37.390011, 31.315966, 29.856220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048573, 31.518227, 29.906321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499126, 0.725035, 0.474550,
		0.149145, 0.467591, -0.871272,
		-0.853598, 0.505651, 0.125251,
		36.792492, 31.669922, 29.943895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426178, 32.102165, 29.759420>,  <37.390011, 31.315966, 29.856220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426178, 32.102165, 29.759420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122616, 31.995789, 29.997189>,  <36.940479, 31.931963, 30.139849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122616, 31.995789, 29.997189>,  <37.426178, 32.102165, 29.759420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122616, 31.995789, 29.997189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311562, 0.653270, 0.690048,
		-0.571827, 0.708882, -0.412916,
		-0.758909, -0.265940, 0.594418,
		36.894943, 31.916006, 30.175514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302654, 32.734032, 30.063444>,  <37.426178, 32.102165, 29.759420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302654, 32.734032, 30.063444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.103634, 32.472206, 30.291122>,  <36.984222, 32.315109, 30.427731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.103634, 32.472206, 30.291122>,  <37.302654, 32.734032, 30.063444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103634, 32.472206, 30.291122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058593, 0.629326, 0.774929,
		-0.865452, 0.418920, -0.274771,
		-0.497554, -0.654564, 0.569197,
		36.954369, 32.275837, 30.461882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702339, 33.109138, 30.380060>,  <37.302654, 32.734032, 30.063444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702339, 33.109138, 30.380060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.742825, 32.779606, 30.603149>,  <36.767117, 32.581886, 30.737003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.742825, 32.779606, 30.603149>,  <36.702339, 33.109138, 30.380060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742825, 32.779606, 30.603149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053509, 0.564299, 0.823835,
		-0.993425, -0.053539, 0.101196,
		0.101212, -0.823833, 0.557723,
		36.773190, 32.532455, 30.770466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470726, 33.342594, 31.008909>,  <36.702339, 33.109138, 30.380060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470726, 33.342594, 31.008909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.620800, 32.980873, 31.090370>,  <36.710846, 32.763840, 31.139248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.620800, 32.980873, 31.090370>,  <36.470726, 33.342594, 31.008909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620800, 32.980873, 31.090370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043477, 0.236630, 0.970627,
		-0.925929, -0.355313, 0.128097,
		0.375188, -0.904300, 0.203655,
		36.733356, 32.709583, 31.151466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993870, 32.897087, 31.429310>,  <36.470726, 33.342594, 31.008909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993870, 32.897087, 31.429310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361919, 32.751766, 31.487793>,  <36.582748, 32.664574, 31.522882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361919, 32.751766, 31.487793>,  <35.993870, 32.897087, 31.429310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361919, 32.751766, 31.487793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023820, 0.320730, 0.946871,
		-0.390896, -0.874724, 0.286458,
		0.920126, -0.363305, 0.146208,
		36.637959, 32.642776, 31.531656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989849, 32.596226, 32.057858>,  <35.993870, 32.897087, 31.429310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989849, 32.596226, 32.057858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375351, 32.683357, 31.996254>,  <36.606651, 32.735638, 31.959291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375351, 32.683357, 31.996254>,  <35.989849, 32.596226, 32.057858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375351, 32.683357, 31.996254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052318, 0.411769, 0.909785,
		0.261595, -0.884871, 0.385449,
		0.963759, 0.217830, -0.154012,
		36.664478, 32.748707, 31.950050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370667, 32.308800, 32.707783>,  <35.989849, 32.596226, 32.057858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370667, 32.308800, 32.707783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573147, 32.591629, 32.510273>,  <36.694633, 32.761326, 32.391769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573147, 32.591629, 32.510273>,  <36.370667, 32.308800, 32.707783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573147, 32.591629, 32.510273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145702, 0.494198, 0.857053,
		0.850021, -0.505781, 0.147140,
		0.506197, 0.707074, -0.493772,
		36.725006, 32.803753, 32.362141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891502, 32.440556, 33.180645>,  <36.370667, 32.308800, 32.707783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891502, 32.440556, 33.180645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938114, 32.758862, 32.942932>,  <36.966084, 32.949844, 32.800304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938114, 32.758862, 32.942932>,  <36.891502, 32.440556, 33.180645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938114, 32.758862, 32.942932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028853, 0.595396, 0.802914,
		0.992768, -0.110713, 0.046423,
		0.116533, 0.795768, -0.594284,
		36.973076, 32.997593, 32.764648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503693, 32.676853, 33.247196>,  <36.891502, 32.440556, 33.180645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503693, 32.676853, 33.247196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281597, 32.993793, 33.146084>,  <37.148338, 33.183956, 33.085419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281597, 32.993793, 33.146084>,  <37.503693, 32.676853, 33.247196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281597, 32.993793, 33.146084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353822, 0.500094, 0.790390,
		0.752676, 0.349416, -0.558021,
		-0.555237, 0.792348, -0.252777,
		37.115025, 33.231499, 33.070251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815464, 33.282108, 33.485878>,  <37.503693, 32.676853, 33.247196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815464, 33.282108, 33.485878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442844, 33.420853, 33.442234>,  <37.219273, 33.504097, 33.416046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442844, 33.420853, 33.442234>,  <37.815464, 33.282108, 33.485878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442844, 33.420853, 33.442234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089727, 0.510080, 0.855434,
		0.352372, 0.787088, -0.506287,
		-0.931549, 0.346859, -0.109115,
		37.163380, 33.524910, 33.409500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.820496, 33.893475, 25.318178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.530567, 33.709305, 25.523174>,  <36.356609, 33.598804, 25.646172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.530567, 33.709305, 25.523174>,  <36.820496, 33.893475, 25.318178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530567, 33.709305, 25.523174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049793, -0.776948, -0.627593,
		0.687135, -0.429375, 0.586074,
		-0.724822, -0.460423, 0.512488,
		36.313122, 33.571178, 25.676920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996815, 33.151005, 25.469883>,  <36.820496, 33.893475, 25.318178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996815, 33.151005, 25.469883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598248, 33.183418, 25.479486>,  <36.359108, 33.202866, 25.485249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598248, 33.183418, 25.479486>,  <36.996815, 33.151005, 25.469883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598248, 33.183418, 25.479486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081420, -0.844198, -0.529811,
		-0.022661, -0.529871, 0.847776,
		-0.996422, 0.081032, 0.024011,
		36.299320, 33.207729, 25.486691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673985, 32.414745, 25.512644>,  <36.996815, 33.151005, 25.469883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673985, 32.414745, 25.512644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.368015, 32.640728, 25.388893>,  <36.184433, 32.776318, 25.314642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.368015, 32.640728, 25.388893>,  <36.673985, 32.414745, 25.512644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368015, 32.640728, 25.388893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348201, -0.766763, -0.539287,
		-0.541894, -0.304787, 0.783234,
		-0.764923, 0.564959, -0.309378,
		36.138538, 32.810215, 25.296080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124111, 31.936972, 25.336706>,  <36.673985, 32.414745, 25.512644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124111, 31.936972, 25.336706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012863, 32.289700, 25.184366>,  <35.946114, 32.501335, 25.092962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012863, 32.289700, 25.184366>,  <36.124111, 31.936972, 25.336706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012863, 32.289700, 25.184366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648581, -0.464858, -0.602702,
		-0.708515, 0.079390, 0.701215,
		-0.278117, 0.881819, -0.380850,
		35.929428, 32.554245, 25.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410686, 31.981583, 25.277174>,  <36.124111, 31.936972, 25.336706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410686, 31.981583, 25.277174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544407, 32.225891, 24.990063>,  <35.624638, 32.372475, 24.817795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544407, 32.225891, 24.990063>,  <35.410686, 31.981583, 25.277174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544407, 32.225891, 24.990063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605467, -0.444470, -0.660195,
		-0.722257, 0.655293, 0.221215,
		0.334297, 0.610769, -0.717779,
		35.644695, 32.409122, 24.774729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731155, 32.227959, 24.943832>,  <35.410686, 31.981583, 25.277174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731155, 32.227959, 24.943832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030464, 32.305317, 24.690001>,  <35.210049, 32.351730, 24.537701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030464, 32.305317, 24.690001>,  <34.731155, 32.227959, 24.943832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030464, 32.305317, 24.690001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532232, -0.396007, -0.748270,
		-0.396007, 0.897651, -0.193391,
		0.748270, 0.193391, -0.634580,
		35.254944, 32.363335, 24.499626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440926, 32.406918, 24.312841>,  <34.731155, 32.227959, 24.943832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440926, 32.406918, 24.312841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815659, 32.311413, 24.210594>,  <35.040497, 32.254112, 24.149246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815659, 32.311413, 24.210594>,  <34.440926, 32.406918, 24.312841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815659, 32.311413, 24.210594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339164, -0.441387, -0.830750,
		0.085523, 0.864969, -0.494484,
		0.936831, -0.238759, -0.255618,
		35.096706, 32.239784, 24.133909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530853, 32.583199, 23.601904>,  <34.440926, 32.406918, 24.312841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530853, 32.583199, 23.601904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837315, 32.332397, 23.658285>,  <35.021191, 32.181915, 23.692114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837315, 32.332397, 23.658285>,  <34.530853, 32.583199, 23.601904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837315, 32.332397, 23.658285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478799, -0.703214, -0.525586,
		0.428665, 0.335194, -0.838982,
		0.766158, -0.627004, 0.140953,
		35.067162, 32.144295, 23.700571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644253, 32.321484, 22.972630>,  <34.530853, 32.583199, 23.601904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644253, 32.321484, 22.972630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820374, 32.067883, 23.226927>,  <34.926048, 31.915722, 23.379505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820374, 32.067883, 23.226927>,  <34.644253, 32.321484, 22.972630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820374, 32.067883, 23.226927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254166, -0.767127, -0.588996,
		0.861121, 0.097754, -0.498913,
		0.440307, -0.634003, 0.635743,
		34.952465, 31.877682, 23.417650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182842, 31.747316, 22.602720>,  <34.644253, 32.321484, 22.972630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182842, 31.747316, 22.602720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.043732, 31.604921, 22.949667>,  <34.960266, 31.519485, 23.157835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.043732, 31.604921, 22.949667>,  <35.182842, 31.747316, 22.602720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043732, 31.604921, 22.949667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292131, -0.837919, -0.461032,
		0.890905, -0.413721, 0.187413,
		-0.347776, -0.355986, 0.867367,
		34.939400, 31.498125, 23.209877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308151, 30.973253, 22.549866>,  <35.182842, 31.747316, 22.602720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308151, 30.973253, 22.549866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040993, 30.997536, 22.846575>,  <34.880695, 31.012104, 23.024601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040993, 30.997536, 22.846575>,  <35.308151, 30.973253, 22.549866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040993, 30.997536, 22.846575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247258, -0.958156, -0.144220,
		0.701980, -0.279734, 0.654960,
		-0.667898, 0.060704, 0.741773,
		34.840622, 31.015747, 23.069107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428581, 30.371256, 22.972235>,  <35.308151, 30.973253, 22.549866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428581, 30.371256, 22.972235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056355, 30.492487, 23.054398>,  <34.833019, 30.565226, 23.103695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056355, 30.492487, 23.054398>,  <35.428581, 30.371256, 22.972235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056355, 30.492487, 23.054398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343446, -0.916988, -0.202922,
		0.126854, -0.259378, 0.957408,
		-0.930566, 0.303076, 0.205406,
		34.777184, 30.583410, 23.116020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122780, 29.889891, 23.399559>,  <35.428581, 30.371256, 22.972235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122780, 29.889891, 23.399559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.835510, 30.084259, 23.200319>,  <34.663147, 30.200880, 23.080776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.835510, 30.084259, 23.200319>,  <35.122780, 29.889891, 23.399559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835510, 30.084259, 23.200319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455288, -0.869452, -0.191744,
		-0.526245, 0.089073, 0.845655,
		-0.718177, 0.485921, -0.498099,
		34.620056, 30.230036, 23.050890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513634, 29.863462, 23.734678>,  <35.122780, 29.889891, 23.399559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513634, 29.863462, 23.734678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454151, 29.883465, 23.339632>,  <34.418461, 29.895466, 23.102604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454151, 29.883465, 23.339632>,  <34.513634, 29.863462, 23.734678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454151, 29.883465, 23.339632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235533, -0.971769, -0.013738,
		-0.960422, 0.230574, 0.156286,
		-0.148706, 0.050005, -0.987616,
		34.409538, 29.898466, 23.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534603, 29.183014, 24.110573>,  <34.513634, 29.863462, 23.734678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534603, 29.183014, 24.110573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760937, 28.858471, 24.169271>,  <34.896736, 28.663746, 24.204491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760937, 28.858471, 24.169271>,  <34.534603, 29.183014, 24.110573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760937, 28.858471, 24.169271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175938, 0.292688, 0.939883,
		-0.805532, -0.505997, 0.308360,
		0.565831, -0.811357, 0.146746,
		34.930687, 28.615065, 24.213295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315002, 28.925472, 24.753479>,  <34.534603, 29.183014, 24.110573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315002, 28.925472, 24.753479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677998, 28.776192, 24.676340>,  <34.895794, 28.686623, 24.630056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677998, 28.776192, 24.676340>,  <34.315002, 28.925472, 24.753479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677998, 28.776192, 24.676340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275485, 0.182137, 0.943893,
		-0.317137, -0.909696, 0.268098,
		0.907486, -0.373201, -0.192845,
		34.950245, 28.664232, 24.618486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466671, 28.651167, 25.337818>,  <34.315002, 28.925472, 24.753479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466671, 28.651167, 25.337818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839581, 28.664766, 25.193762>,  <35.063328, 28.672926, 25.107327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839581, 28.664766, 25.193762>,  <34.466671, 28.651167, 25.337818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839581, 28.664766, 25.193762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330609, 0.324001, 0.886409,
		0.146822, -0.945446, 0.290820,
		0.932277, 0.033997, -0.360143,
		35.119263, 28.674965, 25.085718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801975, 28.292072, 25.861446>,  <34.466671, 28.651167, 25.337818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801975, 28.292072, 25.861446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.077194, 28.496088, 25.654968>,  <35.242325, 28.618498, 25.531082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.077194, 28.496088, 25.654968>,  <34.801975, 28.292072, 25.861446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077194, 28.496088, 25.654968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376109, 0.357694, 0.854750,
		0.620595, -0.782250, 0.054279,
		0.688043, 0.510039, -0.516194,
		35.283607, 28.649099, 25.500111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444584, 28.179722, 26.243551>,  <34.801975, 28.292072, 25.861446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444584, 28.179722, 26.243551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452129, 28.526455, 26.044256>,  <35.456657, 28.734495, 25.924679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452129, 28.526455, 26.044256>,  <35.444584, 28.179722, 26.243551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452129, 28.526455, 26.044256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314026, 0.467973, 0.826068,
		0.949227, -0.172042, -0.263381,
		0.018864, 0.866835, -0.498238,
		35.457790, 28.786505, 25.894785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774940, 28.512012, 26.691076>,  <35.444584, 28.179722, 26.243551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774940, 28.512012, 26.691076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695866, 28.799042, 26.423941>,  <35.648422, 28.971260, 26.263659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695866, 28.799042, 26.423941>,  <35.774940, 28.512012, 26.691076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695866, 28.799042, 26.423941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296002, 0.693179, 0.657180,
		0.934506, -0.067765, -0.349436,
		-0.197688, 0.717573, -0.667838,
		35.636559, 29.014315, 26.223589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322365, 28.880796, 26.604025>,  <35.774940, 28.512012, 26.691076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322365, 28.880796, 26.604025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029583, 29.136452, 26.509583>,  <35.853912, 29.289845, 26.452917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029583, 29.136452, 26.509583>,  <36.322365, 28.880796, 26.604025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029583, 29.136452, 26.509583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370969, 0.664486, 0.648722,
		0.571513, 0.387246, -0.723473,
		-0.731953, 0.639139, -0.236106,
		35.809998, 29.328194, 26.438751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642807, 29.588245, 26.624424>,  <36.322365, 28.880796, 26.604025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642807, 29.588245, 26.624424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247921, 29.633457, 26.669384>,  <36.010990, 29.660583, 26.696360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247921, 29.633457, 26.669384>,  <36.642807, 29.588245, 26.624424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247921, 29.633457, 26.669384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159278, 0.727264, 0.667621,
		-0.006282, 0.676987, -0.735968,
		-0.987214, 0.113029, 0.112398,
		35.951756, 29.667366, 26.703104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621315, 30.258453, 26.575071>,  <36.642807, 29.588245, 26.624424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621315, 30.258453, 26.575071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.270729, 30.150003, 26.734221>,  <36.060379, 30.084932, 26.829710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.270729, 30.150003, 26.734221>,  <36.621315, 30.258453, 26.575071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270729, 30.150003, 26.734221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150934, 0.629992, 0.761793,
		-0.457199, 0.727736, -0.511243,
		-0.876463, -0.271127, 0.397872,
		36.007790, 30.068665, 26.853582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022697, 30.847885, 26.596395>,  <36.621315, 30.258453, 26.575071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022697, 30.847885, 26.596395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925995, 30.587248, 26.884001>,  <35.867973, 30.430864, 27.056564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925995, 30.587248, 26.884001>,  <36.022697, 30.847885, 26.596395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925995, 30.587248, 26.884001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116125, 0.755094, 0.645250,
		-0.963363, 0.072498, -0.258216,
		-0.241757, -0.651595, 0.719011,
		35.853466, 30.391769, 27.099705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410156, 31.133327, 27.056925>,  <36.022697, 30.847885, 26.596395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410156, 31.133327, 27.056925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589905, 30.864042, 27.291821>,  <35.697754, 30.702471, 27.432758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589905, 30.864042, 27.291821>,  <35.410156, 31.133327, 27.056925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589905, 30.864042, 27.291821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004071, 0.655799, 0.754925,
		-0.893334, -0.341634, 0.291958,
		0.449374, -0.673212, 0.587238,
		35.724716, 30.662079, 27.467993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108189, 31.170965, 27.719767>,  <35.410156, 31.133327, 27.056925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108189, 31.170965, 27.719767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433071, 30.963131, 27.825861>,  <35.628002, 30.838430, 27.889517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433071, 30.963131, 27.825861>,  <35.108189, 31.170965, 27.719767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433071, 30.963131, 27.825861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074631, 0.358378, 0.930589,
		-0.578574, -0.775626, 0.252300,
		0.812208, -0.519585, 0.265234,
		35.676735, 30.807255, 27.905432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052891, 30.861099, 28.358936>,  <35.108189, 31.170965, 27.719767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052891, 30.861099, 28.358936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451241, 30.836315, 28.332420>,  <35.690250, 30.821444, 28.316511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451241, 30.836315, 28.332420>,  <35.052891, 30.861099, 28.358936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451241, 30.836315, 28.332420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084432, 0.365105, 0.927130,
		-0.033243, -0.928902, 0.368830,
		0.995874, -0.061962, -0.066292,
		35.750004, 30.817726, 28.312532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231762, 30.627529, 28.940193>,  <35.052891, 30.861099, 28.358936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231762, 30.627529, 28.940193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568825, 30.805637, 28.819092>,  <35.771065, 30.912502, 28.746431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568825, 30.805637, 28.819092>,  <35.231762, 30.627529, 28.940193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568825, 30.805637, 28.819092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106596, 0.413194, 0.904383,
		0.527791, -0.794358, 0.300717,
		0.842659, 0.445270, -0.302755,
		35.821621, 30.939219, 28.728266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024071, 29.988348, 29.263128>,  <35.231762, 30.627529, 28.940193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024071, 29.988348, 29.263128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653214, 29.942839, 29.405939>,  <34.430698, 29.915533, 29.491625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653214, 29.942839, 29.405939>,  <35.024071, 29.988348, 29.263128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653214, 29.942839, 29.405939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193281, -0.671058, -0.715768,
		0.321021, -0.732623, 0.600174,
		-0.927140, -0.113774, 0.357026,
		34.375072, 29.908707, 29.513046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891304, 29.344681, 29.000965>,  <35.024071, 29.988348, 29.263128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891304, 29.344681, 29.000965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551357, 29.536486, 29.088419>,  <34.347389, 29.651569, 29.140892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551357, 29.536486, 29.088419>,  <34.891304, 29.344681, 29.000965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551357, 29.536486, 29.088419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419600, -0.364674, -0.831233,
		-0.318858, -0.798172, 0.511127,
		-0.849862, 0.479514, 0.218634,
		34.296398, 29.680340, 29.154009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297844, 28.874252, 28.881269>,  <34.891304, 29.344681, 29.000965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297844, 28.874252, 28.881269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072777, 29.197403, 28.951401>,  <33.937737, 29.391293, 28.993481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072777, 29.197403, 28.951401>,  <34.297844, 28.874252, 28.881269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072777, 29.197403, 28.951401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664428, -0.315751, -0.677375,
		-0.491876, -0.497630, 0.714439,
		-0.562667, 0.807877, 0.175329,
		33.903976, 29.439766, 29.004000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567627, 28.697893, 29.046347>,  <34.297844, 28.874252, 28.881269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567627, 28.697893, 29.046347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589275, 29.065964, 28.891249>,  <33.602264, 29.286806, 28.798189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589275, 29.065964, 28.891249>,  <33.567627, 28.697893, 29.046347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589275, 29.065964, 28.891249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528305, -0.303125, -0.793101,
		-0.847327, 0.247775, 0.469728,
		0.054124, 0.920176, -0.387747,
		33.605511, 29.342016, 28.774925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810493, 28.844273, 28.800869>,  <33.567627, 28.697893, 29.046347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810493, 28.844273, 28.800869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060280, 29.063227, 28.578011>,  <33.210152, 29.194599, 28.444296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060280, 29.063227, 28.578011>,  <32.810493, 28.844273, 28.800869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060280, 29.063227, 28.578011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550663, -0.197330, -0.811068,
		-0.553908, 0.813284, 0.178199,
		0.624465, 0.547385, -0.557148,
		33.247620, 29.227442, 28.410866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399921, 29.132189, 28.239450>,  <32.810493, 28.844273, 28.800869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399921, 29.132189, 28.239450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774704, 29.189960, 28.112173>,  <32.999573, 29.224623, 28.035807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774704, 29.189960, 28.112173>,  <32.399921, 29.132189, 28.239450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774704, 29.189960, 28.112173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264637, -0.301369, -0.916048,
		-0.228198, 0.942506, -0.244149,
		0.936959, 0.144429, -0.318194,
		33.055790, 29.233290, 28.016714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285576, 29.345331, 27.600195>,  <32.399921, 29.132189, 28.239450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285576, 29.345331, 27.600195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667580, 29.226759, 27.596319>,  <32.896782, 29.155615, 27.593994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667580, 29.226759, 27.596319>,  <32.285576, 29.345331, 27.600195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667580, 29.226759, 27.596319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149349, -0.452418, -0.879211,
		0.256242, 0.841098, -0.476333,
		0.955005, -0.296431, -0.009689,
		32.954082, 29.137829, 27.593412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953506, 30.025764, 27.504864>,  <32.285576, 29.345331, 27.600195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953506, 30.025764, 27.504864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.558475, 29.962927, 27.506107>,  <31.321457, 29.925224, 27.506853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.558475, 29.962927, 27.506107>,  <31.953506, 30.025764, 27.504864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558475, 29.962927, 27.506107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061669, 0.405742, 0.911905,
		-0.144516, 0.900386, -0.410390,
		-0.987579, -0.157093, 0.003110,
		31.262201, 29.915798, 27.507040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688192, 30.624628, 27.819096>,  <31.953506, 30.025764, 27.504864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688192, 30.624628, 27.819096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423653, 30.325920, 27.847244>,  <31.264929, 30.146694, 27.864134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423653, 30.325920, 27.847244>,  <31.688192, 30.624628, 27.819096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423653, 30.325920, 27.847244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154597, 0.227510, 0.961426,
		-0.733974, 0.624958, -0.265912,
		-0.661348, -0.746771, 0.070370,
		31.225248, 30.101889, 27.868355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028105, 30.858078, 28.195942>,  <31.688192, 30.624628, 27.819096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028105, 30.858078, 28.195942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010157, 30.462164, 28.250074>,  <30.999388, 30.224615, 28.282553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010157, 30.462164, 28.250074>,  <31.028105, 30.858078, 28.195942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010157, 30.462164, 28.250074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395154, 0.142002, 0.907573,
		-0.917518, -0.012755, -0.397488,
		-0.044868, -0.989784, 0.135330,
		30.996696, 30.165228, 28.290672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363754, 30.704102, 28.596277>,  <31.028105, 30.858078, 28.195942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363754, 30.704102, 28.596277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.573895, 30.366354, 28.638315>,  <30.699980, 30.163706, 28.663538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.573895, 30.366354, 28.638315>,  <30.363754, 30.704102, 28.596277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573895, 30.366354, 28.638315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345909, -0.099089, 0.933021,
		-0.777401, -0.526518, -0.344132,
		0.525352, -0.844370, 0.105095,
		30.731501, 30.113043, 28.669844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920536, 30.181345, 28.906488>,  <30.363754, 30.704102, 28.596277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920536, 30.181345, 28.906488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.298342, 30.073626, 28.981718>,  <30.525024, 30.008993, 29.026855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.298342, 30.073626, 28.981718>,  <29.920536, 30.181345, 28.906488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298342, 30.073626, 28.981718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240238, -0.175876, 0.954648,
		-0.224015, -0.946859, -0.230815,
		0.944512, -0.269306, 0.188073,
		30.581696, 29.992836, 29.038141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874659, 29.637703, 29.334713>,  <29.920536, 30.181345, 28.906488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874659, 29.637703, 29.334713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245432, 29.761953, 29.418907>,  <30.467896, 29.836504, 29.469423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.245432, 29.761953, 29.418907>,  <29.874659, 29.637703, 29.334713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245432, 29.761953, 29.418907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206826, -0.045070, 0.977339,
		0.313077, -0.949462, 0.022469,
		0.926934, 0.310629, 0.210484,
		30.523512, 29.855143, 29.482052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035885, 29.242220, 29.915682>,  <29.874659, 29.637703, 29.334713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035885, 29.242220, 29.915682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.287769, 29.552031, 29.891771>,  <30.438900, 29.737917, 29.877426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.287769, 29.552031, 29.891771>,  <30.035885, 29.242220, 29.915682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287769, 29.552031, 29.891771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126268, 0.177975, 0.975900,
		0.766500, -0.606986, 0.209871,
		0.629709, 0.774528, -0.059775,
		30.476683, 29.784389, 29.873838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.879454, 32.906807, 22.448580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.103828, 32.604839, 22.584484>,  <32.238453, 32.423656, 22.666027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.103828, 32.604839, 22.584484>,  <31.879454, 32.906807, 22.448580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103828, 32.604839, 22.584484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327035, 0.579100, 0.746787,
		-0.760523, -0.307788, 0.571726,
		0.560939, -0.754924, 0.339761,
		32.272110, 32.378361, 22.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738123, 32.749432, 23.106546>,  <31.879454, 32.906807, 22.448580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738123, 32.749432, 23.106546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106312, 32.599754, 23.061451>,  <32.327225, 32.509949, 23.034393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106312, 32.599754, 23.061451>,  <31.738123, 32.749432, 23.106546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106312, 32.599754, 23.061451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286531, 0.450005, 0.845811,
		-0.265761, -0.810849, 0.521434,
		0.920473, -0.374190, -0.112740,
		32.382454, 32.487495, 23.027630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793892, 32.461010, 23.716534>,  <31.738123, 32.749432, 23.106546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793892, 32.461010, 23.716534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.162655, 32.516266, 23.571758>,  <32.383915, 32.549419, 23.484894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.162655, 32.516266, 23.571758>,  <31.793892, 32.461010, 23.716534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162655, 32.516266, 23.571758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307859, 0.305898, 0.900916,
		0.235167, -0.941990, 0.239484,
		0.921911, 0.138138, -0.361937,
		32.439228, 32.557709, 23.463177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180561, 32.096363, 24.171499>,  <31.793892, 32.461010, 23.716534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180561, 32.096363, 24.171499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445442, 32.350021, 24.011827>,  <32.604370, 32.502216, 23.916023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445442, 32.350021, 24.011827>,  <32.180561, 32.096363, 24.171499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445442, 32.350021, 24.011827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309724, 0.253443, 0.916427,
		0.682321, -0.730494, -0.028581,
		0.662200, 0.634149, -0.399181,
		32.644104, 32.540268, 23.892073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779224, 32.102554, 24.619413>,  <32.180561, 32.096363, 24.171499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779224, 32.102554, 24.619413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.826893, 32.431274, 24.396545>,  <32.855495, 32.628506, 24.262825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.826893, 32.431274, 24.396545>,  <32.779224, 32.102554, 24.619413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826893, 32.431274, 24.396545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227402, 0.523661, 0.821016,
		0.966481, -0.224545, -0.124473,
		0.119173, 0.821802, -0.557171,
		32.862644, 32.677814, 24.229395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299862, 32.359039, 24.997835>,  <32.779224, 32.102554, 24.619413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299862, 32.359039, 24.997835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128277, 32.646370, 24.778749>,  <33.025326, 32.818771, 24.647297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128277, 32.646370, 24.778749>,  <33.299862, 32.359039, 24.997835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128277, 32.646370, 24.778749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144432, 0.653074, 0.743393,
		0.891702, 0.239779, -0.383893,
		-0.428961, 0.718331, -0.547716,
		32.999588, 32.861870, 24.614435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766636, 32.891010, 25.156868>,  <33.299862, 32.359039, 24.997835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766636, 32.891010, 25.156868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.420620, 33.025410, 25.007835>,  <33.213013, 33.106049, 24.918415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.420620, 33.025410, 25.007835>,  <33.766636, 32.891010, 25.156868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420620, 33.025410, 25.007835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005900, 0.749388, 0.662105,
		0.501672, 0.570547, -0.650231,
		-0.865037, 0.335996, -0.372581,
		33.161110, 33.126209, 24.896061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829811, 33.614738, 25.120779>,  <33.766636, 32.891010, 25.156868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829811, 33.614738, 25.120779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.432507, 33.572872, 25.100876>,  <33.194122, 33.547752, 25.088934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.432507, 33.572872, 25.100876>,  <33.829811, 33.614738, 25.120779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432507, 33.572872, 25.100876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110211, 0.720266, 0.684887,
		-0.035850, 0.685755, -0.726949,
		-0.993262, -0.104670, -0.049756,
		33.134529, 33.541470, 25.085949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498795, 34.262218, 24.902544>,  <33.829811, 33.614738, 25.120779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498795, 34.262218, 24.902544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.213898, 34.047924, 25.083958>,  <33.042957, 33.919346, 25.192806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.213898, 34.047924, 25.083958>,  <33.498795, 34.262218, 24.902544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213898, 34.047924, 25.083958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136279, 0.739373, 0.659360,
		-0.688575, 0.407818, -0.599624,
		-0.712245, -0.535735, 0.453536,
		33.000225, 33.887203, 25.220018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807747, 34.680641, 24.927267>,  <33.498795, 34.262218, 24.902544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807747, 34.680641, 24.927267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.794018, 34.404560, 25.216389>,  <32.785778, 34.238911, 25.389862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.794018, 34.404560, 25.216389>,  <32.807747, 34.680641, 24.927267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794018, 34.404560, 25.216389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122957, 0.720653, 0.682306,
		-0.991818, -0.065453, -0.109602,
		-0.034326, -0.690200, 0.722804,
		32.783722, 34.197498, 25.433229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210888, 34.833420, 25.192070>,  <32.807747, 34.680641, 24.927267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210888, 34.833420, 25.192070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418865, 34.622185, 25.460630>,  <32.543652, 34.495441, 25.621767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418865, 34.622185, 25.460630>,  <32.210888, 34.833420, 25.192070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418865, 34.622185, 25.460630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156593, 0.713751, 0.682670,
		-0.839723, -0.460089, 0.288417,
		0.519947, -0.528090, 0.671399,
		32.574848, 34.463757, 25.662050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743635, 34.787930, 25.808874>,  <32.210888, 34.833420, 25.192070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743635, 34.787930, 25.808874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.134964, 34.769970, 25.889738>,  <32.369762, 34.759193, 25.938255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.134964, 34.769970, 25.889738>,  <31.743635, 34.787930, 25.808874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134964, 34.769970, 25.889738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126694, 0.642414, 0.755813,
		-0.163808, -0.765041, 0.622799,
		0.978323, -0.044903, 0.202159,
		32.428459, 34.756500, 25.950386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467512, 34.194664, 26.012167>,  <31.743635, 34.787930, 25.808874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467512, 34.194664, 26.012167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.100378, 34.115299, 26.149694>,  <30.880096, 34.067680, 26.232210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.100378, 34.115299, 26.149694>,  <31.467512, 34.194664, 26.012167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100378, 34.115299, 26.149694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239169, -0.414870, -0.877885,
		0.316819, -0.887985, 0.333329,
		-0.917837, -0.198408, 0.343817,
		30.825027, 34.055779, 26.252840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384409, 33.516430, 25.965929>,  <31.467512, 34.194664, 26.012167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384409, 33.516430, 25.965929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.011366, 33.639790, 26.040905>,  <30.787540, 33.713806, 26.085892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.011366, 33.639790, 26.040905>,  <31.384409, 33.516430, 25.965929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011366, 33.639790, 26.040905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345316, -0.611591, -0.711838,
		-0.104894, -0.728591, 0.676869,
		-0.932606, 0.308402, 0.187442,
		30.731585, 33.732311, 26.097137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972851, 32.855206, 26.069216>,  <31.384409, 33.516430, 25.965929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972851, 32.855206, 26.069216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.734476, 33.155704, 25.955734>,  <30.591452, 33.336002, 25.887646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.734476, 33.155704, 25.955734>,  <30.972851, 32.855206, 26.069216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734476, 33.155704, 25.955734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391927, -0.580451, -0.713771,
		-0.700896, -0.314170, 0.640345,
		-0.595935, 0.751248, -0.283704,
		30.555695, 33.381081, 25.870623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322203, 32.579075, 26.113312>,  <30.972851, 32.855206, 26.069216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322203, 32.579075, 26.113312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342573, 32.885918, 25.857512>,  <30.354795, 33.070023, 25.704031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342573, 32.885918, 25.857512>,  <30.322203, 32.579075, 26.113312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342573, 32.885918, 25.857512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391362, -0.573789, -0.719445,
		-0.918827, 0.286914, 0.270994,
		0.050925, 0.767103, -0.639500,
		30.357851, 33.116047, 25.665661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753632, 32.497139, 25.902578>,  <30.322203, 32.579075, 26.113312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753632, 32.497139, 25.902578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919086, 32.740417, 25.631580>,  <30.018360, 32.886383, 25.468981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919086, 32.740417, 25.631580>,  <29.753632, 32.497139, 25.902578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919086, 32.740417, 25.631580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352926, -0.578844, -0.735108,
		-0.839254, 0.543175, -0.024784,
		0.413638, 0.608195, -0.677497,
		30.043179, 32.922874, 25.428331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228462, 32.630444, 25.333445>,  <29.753632, 32.497139, 25.902578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228462, 32.630444, 25.333445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583546, 32.723240, 25.174372>,  <29.796597, 32.778919, 25.078928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583546, 32.723240, 25.174372>,  <29.228462, 32.630444, 25.333445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583546, 32.723240, 25.174372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237697, -0.508812, -0.827412,
		-0.394297, 0.829030, -0.396534,
		0.887711, 0.231992, -0.397681,
		29.849859, 32.792839, 25.055067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120693, 33.020908, 24.825436>,  <29.228462, 32.630444, 25.333445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120693, 33.020908, 24.825436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473642, 32.855061, 24.736433>,  <29.685411, 32.755554, 24.683031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473642, 32.855061, 24.736433>,  <29.120693, 33.020908, 24.825436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473642, 32.855061, 24.736433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430591, -0.520787, -0.737138,
		0.189751, 0.746241, -0.638059,
		0.882375, -0.414615, -0.222505,
		29.738356, 32.730675, 24.669682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057714, 32.907204, 24.169044>,  <29.120693, 33.020908, 24.825436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057714, 32.907204, 24.169044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388794, 32.688915, 24.221359>,  <29.587442, 32.557941, 24.252748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388794, 32.688915, 24.221359>,  <29.057714, 32.907204, 24.169044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388794, 32.688915, 24.221359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272209, -0.594244, -0.756820,
		0.490729, 0.590819, -0.640405,
		0.827700, -0.545718, 0.130786,
		29.637104, 32.525200, 24.260595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413572, 32.814724, 23.532713>,  <29.057714, 32.907204, 24.169044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413572, 32.814724, 23.532713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538542, 32.507069, 23.755718>,  <29.613523, 32.322475, 23.889521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538542, 32.507069, 23.755718>,  <29.413572, 32.814724, 23.532713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538542, 32.507069, 23.755718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362653, -0.639009, -0.678344,
		0.877995, 0.009747, -0.478571,
		0.312423, -0.769137, 0.557512,
		29.632269, 32.276329, 23.922972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814850, 32.373299, 23.094057>,  <29.413572, 32.814724, 23.532713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814850, 32.373299, 23.094057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696774, 32.140404, 23.397072>,  <29.625927, 32.000668, 23.578880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696774, 32.140404, 23.397072>,  <29.814850, 32.373299, 23.094057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696774, 32.140404, 23.397072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165445, -0.749739, -0.640718,
		0.941005, -0.314465, 0.124987,
		-0.295191, -0.582240, 0.757535,
		29.608215, 31.965733, 23.624332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249374, 31.716066, 23.083044>,  <29.814850, 32.373299, 23.094057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249374, 31.716066, 23.083044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945602, 31.595350, 23.313587>,  <29.763340, 31.522921, 23.451914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945602, 31.595350, 23.313587>,  <30.249374, 31.716066, 23.083044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945602, 31.595350, 23.313587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034217, -0.866147, -0.498617,
		0.649689, -0.398385, 0.647451,
		-0.759430, -0.301792, 0.576358,
		29.717773, 31.504812, 23.486494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416147, 30.957815, 23.292305>,  <30.249374, 31.716066, 23.083044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416147, 30.957815, 23.292305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.026693, 31.029015, 23.349373>,  <29.793022, 31.071733, 23.383614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.026693, 31.029015, 23.349373>,  <30.416147, 30.957815, 23.292305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026693, 31.029015, 23.349373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225635, -0.843474, -0.487484,
		0.033569, -0.506822, 0.861397,
		-0.973633, 0.177997, 0.142671,
		29.734604, 31.082415, 23.392174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136501, 30.274809, 23.612658>,  <30.416147, 30.957815, 23.292305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136501, 30.274809, 23.612658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830976, 30.476187, 23.451101>,  <29.647661, 30.597013, 23.354168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830976, 30.476187, 23.451101>,  <30.136501, 30.274809, 23.612658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830976, 30.476187, 23.451101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212681, -0.787137, -0.578949,
		-0.609388, -0.356309, 0.708301,
		-0.763815, 0.503447, -0.403892,
		29.601831, 30.627220, 23.329933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602356, 30.352158, 24.227266>,  <30.136501, 30.274809, 23.612658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602356, 30.352158, 24.227266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.527506, 29.973318, 24.331564>,  <30.482595, 29.746014, 24.394142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.527506, 29.973318, 24.331564>,  <30.602356, 30.352158, 24.227266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527506, 29.973318, 24.331564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090806, 0.247618, 0.964593,
		-0.978130, 0.204175, 0.039667,
		-0.187123, -0.947100, 0.260743,
		30.471369, 29.689188, 24.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149368, 30.434082, 24.822811>,  <30.602356, 30.352158, 24.227266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149368, 30.434082, 24.822811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332720, 30.078688, 24.814083>,  <30.442732, 29.865450, 24.808847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332720, 30.078688, 24.814083>,  <30.149368, 30.434082, 24.822811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332720, 30.078688, 24.814083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233154, 0.096524, 0.967637,
		-0.857629, -0.448633, 0.251399,
		0.458380, -0.888488, -0.021818,
		30.470234, 29.812141, 24.807537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750134, 30.070726, 25.401434>,  <30.149368, 30.434082, 24.822811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750134, 30.070726, 25.401434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108259, 29.913143, 25.318283>,  <30.323133, 29.818594, 25.268393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108259, 29.913143, 25.318283>,  <29.750134, 30.070726, 25.401434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108259, 29.913143, 25.318283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206713, -0.045919, 0.977324,
		-0.394569, -0.917981, 0.040325,
		0.895313, -0.393957, -0.207876,
		30.376854, 29.794956, 25.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903133, 29.552023, 25.813084>,  <29.750134, 30.070726, 25.401434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903133, 29.552023, 25.813084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.285292, 29.582680, 25.698999>,  <30.514587, 29.601074, 25.630548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.285292, 29.582680, 25.698999>,  <29.903133, 29.552023, 25.813084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285292, 29.582680, 25.698999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294558, -0.177472, 0.939010,
		0.021351, -0.981137, -0.192131,
		0.955395, 0.076642, -0.285212,
		30.571911, 29.605673, 25.613436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296173, 28.856428, 25.866814>,  <29.903133, 29.552023, 25.813084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296173, 28.856428, 25.866814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.546957, 29.166481, 25.898029>,  <30.697428, 29.352512, 25.916759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.546957, 29.166481, 25.898029>,  <30.296173, 28.856428, 25.866814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546957, 29.166481, 25.898029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167184, -0.231708, 0.958311,
		0.760903, -0.587774, -0.274862,
		0.626958, 0.775134, 0.078041,
		30.735044, 29.399021, 25.921442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905020, 28.654785, 26.302000>,  <30.296173, 28.856428, 25.866814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905020, 28.654785, 26.302000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888437, 29.054430, 26.304897>,  <30.878489, 29.294218, 26.306635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888437, 29.054430, 26.304897>,  <30.905020, 28.654785, 26.302000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888437, 29.054430, 26.304897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293264, 0.005239, 0.956017,
		0.955132, 0.041755, -0.293221,
		-0.041455, 0.999114, 0.007241,
		30.876001, 29.354164, 26.307070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374407, 28.800049, 26.820702>,  <30.905020, 28.654785, 26.302000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374407, 28.800049, 26.820702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.212362, 29.164974, 26.796806>,  <31.115135, 29.383930, 26.782469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.212362, 29.164974, 26.796806>,  <31.374407, 28.800049, 26.820702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212362, 29.164974, 26.796806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245437, 0.171464, 0.954128,
		0.880708, 0.371865, -0.293378,
		-0.405111, 0.912314, -0.059740,
		31.090830, 29.438669, 26.778885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767868, 29.400198, 27.120577>,  <31.374407, 28.800049, 26.820702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767868, 29.400198, 27.120577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.404478, 29.567001, 27.131733>,  <31.186443, 29.667084, 27.138426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.404478, 29.567001, 27.131733>,  <31.767868, 29.400198, 27.120577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404478, 29.567001, 27.131733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201881, 0.379420, 0.902931,
		0.365948, 0.825920, -0.428879,
		-0.908475, 0.417008, 0.027890,
		31.131935, 29.692104, 27.140100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500996, 29.553484, 26.873362>,  <31.767868, 29.400198, 27.120577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500996, 29.553484, 26.873362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.760223, 29.282553, 27.012636>,  <32.915760, 29.119995, 27.096201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.760223, 29.282553, 27.012636>,  <32.500996, 29.553484, 26.873362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760223, 29.282553, 27.012636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068475, -0.507162, -0.859126,
		0.758497, 0.532930, -0.375056,
		0.648069, -0.677327, 0.348189,
		32.954643, 29.079355, 27.117092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124306, 29.490620, 26.504959>,  <32.500996, 29.553484, 26.873362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124306, 29.490620, 26.504959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138477, 29.123783, 26.663797>,  <33.146980, 28.903681, 26.759100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138477, 29.123783, 26.663797>,  <33.124306, 29.490620, 26.504959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138477, 29.123783, 26.663797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136364, -0.389192, -0.911007,
		0.990025, 0.086423, 0.111271,
		0.035426, -0.917094, 0.397095,
		33.149105, 28.848656, 26.782927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749950, 29.086823, 26.228180>,  <33.124306, 29.490620, 26.504959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749950, 29.086823, 26.228180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.497379, 28.800755, 26.348066>,  <33.345837, 28.629114, 26.419998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.497379, 28.800755, 26.348066>,  <33.749950, 29.086823, 26.228180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497379, 28.800755, 26.348066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276238, -0.568615, -0.774835,
		0.724561, -0.406461, 0.556598,
		-0.631430, -0.715168, 0.299716,
		33.307949, 28.586205, 26.437981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998413, 28.502953, 25.871164>,  <33.749950, 29.086823, 26.228180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998413, 28.502953, 25.871164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.646992, 28.353319, 25.989958>,  <33.436138, 28.263540, 26.061234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.646992, 28.353319, 25.989958>,  <33.998413, 28.502953, 25.871164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646992, 28.353319, 25.989958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000943, -0.620417, -0.784271,
		0.477635, -0.689308, 0.544720,
		-0.878558, -0.374082, 0.296983,
		33.383423, 28.241095, 26.079052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029808, 27.803997, 25.726358>,  <33.998413, 28.502953, 25.871164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029808, 27.803997, 25.726358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.640808, 27.896589, 25.736677>,  <33.407410, 27.952145, 25.742868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.640808, 27.896589, 25.736677>,  <34.029808, 27.803997, 25.726358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640808, 27.896589, 25.736677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126554, -0.432183, -0.892861,
		-0.195529, -0.871571, 0.449592,
		-0.972498, 0.231478, 0.025796,
		33.349060, 27.966032, 25.744415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657780, 27.173258, 25.464729>,  <34.029808, 27.803997, 25.726358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657780, 27.173258, 25.464729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.383144, 27.464062, 25.461830>,  <33.218365, 27.638544, 25.460091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.383144, 27.464062, 25.461830>,  <33.657780, 27.173258, 25.464729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383144, 27.464062, 25.461830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292832, -0.285649, -0.912499,
		-0.665468, -0.624387, 0.409015,
		-0.686588, 0.727011, -0.007250,
		33.177170, 27.682165, 25.459656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054489, 26.822351, 25.380140>,  <33.657780, 27.173258, 25.464729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054489, 26.822351, 25.380140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021534, 27.196011, 25.241243>,  <33.001762, 27.420206, 25.157906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021534, 27.196011, 25.241243>,  <33.054489, 26.822351, 25.380140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021534, 27.196011, 25.241243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372533, -0.352036, -0.858656,
		-0.924355, 0.058617, 0.377004,
		-0.082387, 0.934149, -0.347243,
		32.996819, 27.476255, 25.137070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354313, 26.889147, 24.902861>,  <33.054489, 26.822351, 25.380140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354313, 26.889147, 24.902861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543655, 27.230059, 24.813818>,  <32.657261, 27.434607, 24.760393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543655, 27.230059, 24.813818>,  <32.354313, 26.889147, 24.902861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543655, 27.230059, 24.813818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354616, -0.046953, -0.933832,
		-0.806338, 0.520975, 0.280007,
		0.473356, 0.852280, -0.222606,
		32.685661, 27.485743, 24.747036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876360, 27.402771, 24.789698>,  <32.354313, 26.889147, 24.902861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876360, 27.402771, 24.789698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.202484, 27.444485, 24.561874>,  <32.398159, 27.469513, 24.425180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.202484, 27.444485, 24.561874>,  <31.876360, 27.402771, 24.789698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202484, 27.444485, 24.561874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575868, 0.043445, -0.816388,
		-0.060391, 0.993598, 0.095474,
		0.815310, 0.104283, -0.569557,
		32.447079, 27.475769, 24.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.076111, 35.647045, 38.470875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414154, 35.500504, 38.315147>,  <34.616982, 35.412579, 38.221710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414154, 35.500504, 38.315147>,  <34.076111, 35.647045, 38.470875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414154, 35.500504, 38.315147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503073, -0.791370, -0.347349,
		-0.180841, 0.489404, -0.853100,
		0.845112, -0.366357, -0.389319,
		34.667686, 35.390598, 38.198353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830097, 35.401451, 37.898769>,  <34.076111, 35.647045, 38.470875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830097, 35.401451, 37.898769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187344, 35.221729, 37.907372>,  <34.401691, 35.113895, 37.912533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187344, 35.221729, 37.907372>,  <33.830097, 35.401451, 37.898769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187344, 35.221729, 37.907372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382234, -0.783264, -0.490300,
		0.237135, 0.429678, -0.871288,
		0.893121, -0.449303, 0.021502,
		34.455280, 35.086937, 37.913822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992970, 35.296410, 37.237873>,  <33.830097, 35.401451, 37.898769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992970, 35.296410, 37.237873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243748, 35.047832, 37.425808>,  <34.394215, 34.898685, 37.538570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243748, 35.047832, 37.425808>,  <33.992970, 35.296410, 37.237873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243748, 35.047832, 37.425808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231371, -0.724396, -0.649399,
		0.743913, 0.298430, -0.597940,
		0.626946, -0.621442, 0.469840,
		34.431831, 34.861401, 37.566761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531914, 35.140022, 36.756100>,  <33.992970, 35.296410, 37.237873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531914, 35.140022, 36.756100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561535, 34.835175, 37.013378>,  <34.579308, 34.652267, 37.167744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561535, 34.835175, 37.013378>,  <34.531914, 35.140022, 36.756100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561535, 34.835175, 37.013378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174622, -0.644908, -0.744044,
		0.981847, -0.057213, -0.180842,
		0.074058, -0.762116, 0.643191,
		34.583752, 34.606541, 37.206337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913792, 34.651745, 36.470688>,  <34.531914, 35.140022, 36.756100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913792, 34.651745, 36.470688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700157, 34.453072, 36.744347>,  <34.571976, 34.333866, 36.908543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700157, 34.453072, 36.744347>,  <34.913792, 34.651745, 36.470688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700157, 34.453072, 36.744347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154461, -0.738286, -0.656563,
		0.831203, -0.456334, 0.317588,
		-0.534082, -0.496683, 0.684151,
		34.539932, 34.304066, 36.949593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239769, 34.009296, 36.518524>,  <34.913792, 34.651745, 36.470688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239769, 34.009296, 36.518524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873924, 33.941971, 36.665577>,  <34.654419, 33.901577, 36.753811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873924, 33.941971, 36.665577>,  <35.239769, 34.009296, 36.518524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873924, 33.941971, 36.665577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124180, -0.748362, -0.651562,
		0.384792, -0.641579, 0.663559,
		-0.914611, -0.168315, 0.367636,
		34.599541, 33.891476, 36.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224026, 33.313026, 36.579754>,  <35.239769, 34.009296, 36.518524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224026, 33.313026, 36.579754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835865, 33.409168, 36.589142>,  <34.602970, 33.466854, 36.594772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835865, 33.409168, 36.589142>,  <35.224026, 33.313026, 36.579754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835865, 33.409168, 36.589142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194536, -0.720437, -0.665677,
		-0.143089, -0.650540, 0.745871,
		-0.970403, 0.240350, 0.023466,
		34.544743, 33.481274, 36.596180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842037, 32.733902, 36.795959>,  <35.224026, 33.313026, 36.579754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842037, 32.733902, 36.795959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569534, 32.967083, 36.618847>,  <34.406033, 33.106991, 36.512581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569534, 32.967083, 36.618847>,  <34.842037, 32.733902, 36.795959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569534, 32.967083, 36.618847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261919, -0.758917, -0.596191,
		-0.683586, -0.290186, 0.669703,
		-0.681256, 0.582956, -0.442780,
		34.365158, 33.141972, 36.486012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094494, 32.283791, 36.666744>,  <34.842037, 32.733902, 36.795959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094494, 32.283791, 36.666744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096653, 32.587536, 36.406487>,  <34.097946, 32.769783, 36.250332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096653, 32.587536, 36.406487>,  <34.094494, 32.283791, 36.666744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096653, 32.587536, 36.406487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316111, -0.615992, -0.721545,
		-0.948707, 0.209568, 0.236720,
		0.005395, 0.759365, -0.650643,
		34.098270, 32.815346, 36.211292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495811, 32.228977, 36.378765>,  <34.094494, 32.283791, 36.666744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495811, 32.228977, 36.378765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722591, 32.427631, 36.115883>,  <33.858658, 32.546825, 35.958153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722591, 32.427631, 36.115883>,  <33.495811, 32.228977, 36.378765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722591, 32.427631, 36.115883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428696, -0.503383, -0.750217,
		-0.703412, 0.707077, -0.072486,
		0.566950, 0.496637, -0.657206,
		33.892677, 32.576622, 35.918720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167202, 31.976324, 35.753117>,  <33.495811, 32.228977, 36.378765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167202, 31.976324, 35.753117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482662, 32.162857, 35.592831>,  <33.671936, 32.274776, 35.496658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482662, 32.162857, 35.592831>,  <33.167202, 31.976324, 35.753117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482662, 32.162857, 35.592831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124241, -0.517413, -0.846669,
		-0.602163, 0.717507, -0.350119,
		0.788647, 0.466333, -0.400710,
		33.719257, 32.302757, 35.472618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932617, 32.281097, 35.103981>,  <33.167202, 31.976324, 35.753117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932617, 32.281097, 35.103981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325855, 32.208778, 35.115616>,  <33.561798, 32.165386, 35.122597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325855, 32.208778, 35.115616>,  <32.932617, 32.281097, 35.103981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325855, 32.208778, 35.115616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074738, -0.541142, -0.837603,
		0.167172, 0.821266, -0.545504,
		0.983091, -0.180793, 0.029084,
		33.620781, 32.154541, 35.124340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435726, 32.940727, 35.019890>,  <32.932617, 32.281097, 35.103981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435726, 32.940727, 35.019890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054680, 32.823479, 35.052391>,  <31.826052, 32.753128, 35.071892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054680, 32.823479, 35.052391>,  <32.435726, 32.940727, 35.019890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054680, 32.823479, 35.052391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182767, 0.765117, 0.617407,
		-0.243142, 0.573302, -0.782436,
		-0.952616, -0.293121, 0.081251,
		31.768894, 32.735542, 35.076767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990829, 33.474602, 34.772175>,  <32.435726, 32.940727, 35.019890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990829, 33.474602, 34.772175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804447, 33.245056, 35.041561>,  <31.692617, 33.107327, 35.203194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804447, 33.245056, 35.041561>,  <31.990829, 33.474602, 34.772175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804447, 33.245056, 35.041561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018905, 0.767431, 0.640853,
		-0.884606, 0.285878, -0.368439,
		-0.465957, -0.573868, 0.673469,
		31.664660, 33.072895, 35.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324507, 33.751789, 35.094368>,  <31.990829, 33.474602, 34.772175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324507, 33.751789, 35.094368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438831, 33.469456, 35.353630>,  <31.507425, 33.300056, 35.509190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438831, 33.469456, 35.353630>,  <31.324507, 33.751789, 35.094368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438831, 33.469456, 35.353630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136804, 0.639392, 0.756613,
		-0.948471, -0.304917, 0.086183,
		0.285809, -0.705836, 0.648158,
		31.524574, 33.257706, 35.548077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836187, 33.808067, 35.614773>,  <31.324507, 33.751789, 35.094368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836187, 33.808067, 35.614773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172802, 33.637615, 35.747578>,  <31.374771, 33.535343, 35.827259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172802, 33.637615, 35.747578>,  <30.836187, 33.808067, 35.614773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172802, 33.637615, 35.747578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035730, 0.657166, 0.752899,
		-0.539017, -0.621729, 0.568254,
		0.841536, -0.426129, 0.332010,
		31.425262, 33.509777, 35.847179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646984, 33.454582, 36.278637>,  <30.836187, 33.808067, 35.614773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646984, 33.454582, 36.278637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.032280, 33.547688, 36.224983>,  <31.263458, 33.603550, 36.192791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.032280, 33.547688, 36.224983>,  <30.646984, 33.454582, 36.278637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032280, 33.547688, 36.224983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067219, 0.692254, 0.718517,
		0.260099, -0.683087, 0.682452,
		0.963239, 0.232759, -0.134138,
		31.321251, 33.617516, 36.184742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841257, 33.706688, 36.944172>,  <30.646984, 33.454582, 36.278637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841257, 33.706688, 36.944172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159019, 33.818909, 36.728687>,  <31.349676, 33.886242, 36.599396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159019, 33.818909, 36.728687>,  <30.841257, 33.706688, 36.944172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159019, 33.818909, 36.728687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177316, 0.741176, 0.647470,
		0.580931, -0.609876, 0.539046,
		0.794404, 0.280554, -0.538713,
		31.397341, 33.903076, 36.567074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318624, 33.858395, 37.430832>,  <30.841257, 33.706688, 36.944172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318624, 33.858395, 37.430832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.422230, 34.062366, 37.102715>,  <31.484394, 34.184750, 36.905846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.422230, 34.062366, 37.102715>,  <31.318624, 33.858395, 37.430832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422230, 34.062366, 37.102715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266800, 0.778459, 0.568172,
		0.928294, -0.366019, 0.065583,
		0.259015, 0.509933, -0.820293,
		31.499935, 34.215347, 36.856628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790001, 34.325924, 37.715797>,  <31.318624, 33.858395, 37.430832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790001, 34.325924, 37.715797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695820, 34.472755, 37.355839>,  <31.639311, 34.560856, 37.139862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695820, 34.472755, 37.355839>,  <31.790001, 34.325924, 37.715797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695820, 34.472755, 37.355839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226111, 0.921211, 0.316612,
		0.945217, -0.128930, -0.299902,
		-0.235452, 0.367078, -0.899898,
		31.625185, 34.582878, 37.085869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298462, 34.750278, 37.572197>,  <31.790001, 34.325924, 37.715797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298462, 34.750278, 37.572197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001381, 34.874657, 37.334976>,  <31.823133, 34.949284, 37.192646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001381, 34.874657, 37.334976>,  <32.298462, 34.750278, 37.572197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001381, 34.874657, 37.334976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104690, 0.928676, 0.355811,
		0.661388, 0.202175, -0.722282,
		-0.742702, 0.310945, -0.593050,
		31.778570, 34.967941, 37.157063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537491, 35.228111, 36.966686>,  <32.298462, 34.750278, 37.572197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537491, 35.228111, 36.966686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151474, 35.290909, 37.050632>,  <31.919863, 35.328587, 37.101002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151474, 35.290909, 37.050632>,  <32.537491, 35.228111, 36.966686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151474, 35.290909, 37.050632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187196, 0.973321, 0.132677,
		-0.183437, 0.167325, -0.968686,
		-0.965043, 0.156996, 0.209866,
		31.861961, 35.338009, 37.113594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391632, 35.859348, 36.650620>,  <32.537491, 35.228111, 36.966686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391632, 35.859348, 36.650620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068150, 35.823059, 36.883091>,  <31.874062, 35.801285, 37.022575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068150, 35.823059, 36.883091>,  <32.391632, 35.859348, 36.650620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068150, 35.823059, 36.883091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069862, 0.966225, 0.248050,
		-0.584054, 0.241201, -0.775050,
		-0.808703, -0.090728, 0.581178,
		31.825539, 35.795841, 37.057446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087524, 36.492870, 36.612328>,  <32.391632, 35.859348, 36.650620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087524, 36.492870, 36.612328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918039, 36.346420, 36.943729>,  <31.816349, 36.258553, 37.142570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.918039, 36.346420, 36.943729>,  <32.087524, 36.492870, 36.612328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918039, 36.346420, 36.943729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286989, 0.921810, 0.260584,
		-0.859132, -0.127360, -0.495654,
		-0.423710, -0.366123, 0.828507,
		31.790926, 36.236584, 37.192280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337826, 36.767548, 36.625736>,  <32.087524, 36.492870, 36.612328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337826, 36.767548, 36.625736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424858, 36.663166, 37.001942>,  <31.477077, 36.600536, 37.227665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424858, 36.663166, 37.001942>,  <31.337826, 36.767548, 36.625736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424858, 36.663166, 37.001942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232908, 0.921879, 0.309665,
		-0.947846, -0.286430, 0.139806,
		0.217582, -0.260953, 0.940511,
		31.490133, 36.584881, 37.284096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939613, 37.192158, 36.951931>,  <31.337826, 36.767548, 36.625736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939613, 37.192158, 36.951931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185303, 37.085564, 37.249043>,  <31.332716, 37.021606, 37.427307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185303, 37.085564, 37.249043>,  <30.939613, 37.192158, 36.951931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185303, 37.085564, 37.249043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031718, 0.948834, 0.314179,
		-0.788494, -0.169417, 0.591249,
		0.614224, -0.266481, 0.742776,
		31.369570, 37.005619, 37.471874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499971, 36.619926, 37.081406>,  <30.939613, 37.192158, 36.951931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499971, 36.619926, 37.081406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340614, 36.871475, 36.814331>,  <30.245001, 37.022404, 36.654087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340614, 36.871475, 36.814331>,  <30.499971, 36.619926, 37.081406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340614, 36.871475, 36.814331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192185, -0.654561, -0.731174,
		-0.896855, -0.419613, 0.139913,
		-0.398392, 0.628868, -0.667689,
		30.221096, 37.060135, 36.614025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984297, 36.295513, 36.566788>,  <30.499971, 36.619926, 37.081406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984297, 36.295513, 36.566788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104538, 36.629101, 36.381691>,  <30.176683, 36.829254, 36.270634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104538, 36.629101, 36.381691>,  <29.984297, 36.295513, 36.566788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104538, 36.629101, 36.381691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035066, -0.494517, -0.868460,
		-0.953104, 0.244837, -0.177898,
		0.300605, 0.833971, -0.462741,
		30.194719, 36.879292, 36.242870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714697, 36.270439, 35.952286>,  <29.984297, 36.295513, 36.566788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714697, 36.270439, 35.952286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.006796, 36.541088, 35.914524>,  <30.182056, 36.703480, 35.891865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.006796, 36.541088, 35.914524>,  <29.714697, 36.270439, 35.952286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006796, 36.541088, 35.914524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197894, -0.341763, -0.918714,
		-0.653891, 0.652208, -0.383473,
		0.730250, 0.676626, -0.094407,
		30.225870, 36.744076, 35.886204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507593, 36.608421, 35.398064>,  <29.714697, 36.270439, 35.952286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507593, 36.608421, 35.398064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.900005, 36.678654, 35.430935>,  <30.135452, 36.720795, 35.450657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.900005, 36.678654, 35.430935>,  <29.507593, 36.608421, 35.398064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900005, 36.678654, 35.430935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152243, -0.435339, -0.887301,
		-0.120020, 0.882978, -0.453811,
		0.981029, 0.175584, 0.082177,
		30.194313, 36.731327, 35.455589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749836, 36.950378, 34.772854>,  <29.507593, 36.608421, 35.398064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749836, 36.950378, 34.772854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053734, 36.771069, 34.961254>,  <30.236073, 36.663483, 35.074295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053734, 36.771069, 34.961254>,  <29.749836, 36.950378, 34.772854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053734, 36.771069, 34.961254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252076, -0.464661, -0.848851,
		0.599371, 0.763638, -0.240024,
		0.759744, -0.448273, 0.470999,
		30.281656, 36.636585, 35.102554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450668, 37.052830, 34.354557>,  <29.749836, 36.950378, 34.772854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450668, 37.052830, 34.354557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.543055, 36.745659, 34.593536>,  <30.598486, 36.561356, 34.736923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.543055, 36.745659, 34.593536>,  <30.450668, 37.052830, 34.354557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543055, 36.745659, 34.593536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326161, -0.517409, -0.791143,
		0.916664, 0.377591, 0.130964,
		0.230967, -0.767928, 0.597445,
		30.612345, 36.515282, 34.772770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146749, 36.882896, 34.194210>,  <30.450668, 37.052830, 34.354557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146749, 36.882896, 34.194210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.959467, 36.573589, 34.365246>,  <30.847097, 36.388004, 34.467869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.959467, 36.573589, 34.365246>,  <31.146749, 36.882896, 34.194210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959467, 36.573589, 34.365246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109161, -0.530823, -0.840423,
		0.876850, -0.346816, 0.332946,
		-0.468208, -0.773269, 0.427594,
		30.819004, 36.341610, 34.493523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638945, 36.401287, 34.189358>,  <31.146749, 36.882896, 34.194210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638945, 36.401287, 34.189358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296368, 36.204952, 34.253342>,  <31.090822, 36.087151, 34.291733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296368, 36.204952, 34.253342>,  <31.638945, 36.401287, 34.189358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296368, 36.204952, 34.253342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195255, -0.594819, -0.779786,
		0.477894, -0.636609, 0.605266,
		-0.856442, -0.490836, 0.159959,
		31.039434, 36.057701, 34.301331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786457, 35.761784, 34.089252>,  <31.638945, 36.401287, 34.189358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786457, 35.761784, 34.089252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387650, 35.762234, 34.058395>,  <31.148365, 35.762505, 34.039883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387650, 35.762234, 34.058395>,  <31.786457, 35.761784, 34.089252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387650, 35.762234, 34.058395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067749, -0.465607, -0.882395,
		-0.036912, -0.884991, 0.464143,
		-0.997019, 0.001126, -0.077144,
		31.088543, 35.762573, 34.035252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699472, 35.096767, 33.841839>,  <31.786457, 35.761784, 34.089252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699472, 35.096767, 33.841839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.371340, 35.301144, 33.739082>,  <31.174459, 35.423767, 33.677429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.371340, 35.301144, 33.739082>,  <31.699472, 35.096767, 33.841839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371340, 35.301144, 33.739082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070463, -0.536087, -0.841217,
		-0.567527, -0.671978, 0.475773,
		-0.820334, 0.510938, -0.256894,
		31.125240, 35.454426, 33.662014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343945, 34.646706, 33.415867>,  <31.699472, 35.096767, 33.841839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343945, 34.646706, 33.415867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147015, 34.977280, 33.306599>,  <31.028856, 35.175625, 33.241035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147015, 34.977280, 33.306599>,  <31.343945, 34.646706, 33.415867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147015, 34.977280, 33.306599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268803, -0.442864, -0.855346,
		-0.827865, -0.347678, 0.440180,
		-0.492325, 0.826433, -0.273175,
		30.999317, 35.225208, 33.224648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635735, 34.501266, 33.158817>,  <31.343945, 34.646706, 33.415867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635735, 34.501266, 33.158817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762093, 34.851471, 33.012566>,  <30.837908, 35.061596, 32.924816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762093, 34.851471, 33.012566>,  <30.635735, 34.501266, 33.158817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762093, 34.851471, 33.012566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195696, -0.316948, -0.928034,
		-0.928392, 0.364714, 0.071212,
		0.315897, 0.875516, -0.365625,
		30.856861, 35.114124, 32.902878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122976, 34.717239, 32.523224>,  <30.635735, 34.501266, 33.158817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122976, 34.717239, 32.523224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.433079, 34.966492, 32.481873>,  <30.619141, 35.116043, 32.457062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.433079, 34.966492, 32.481873>,  <30.122976, 34.717239, 32.523224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433079, 34.966492, 32.481873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030013, -0.199816, -0.979374,
		-0.630933, 0.756164, -0.173611,
		0.775257, 0.623129, -0.103376,
		30.665655, 35.153431, 32.450859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927555, 35.159439, 31.967554>,  <30.122976, 34.717239, 32.523224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927555, 35.159439, 31.967554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324940, 35.202866, 31.981680>,  <30.563370, 35.228920, 31.990156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324940, 35.202866, 31.981680>,  <29.927555, 35.159439, 31.967554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324940, 35.202866, 31.981680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002045, 0.326210, -0.945295,
		-0.114148, 0.939042, 0.324299,
		0.993462, 0.108566, 0.035316,
		30.622978, 35.235435, 31.992275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150089, 35.817020, 31.622034>,  <29.927555, 35.159439, 31.967554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150089, 35.817020, 31.622034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466087, 35.578121, 31.566605>,  <30.655685, 35.434780, 31.533346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466087, 35.578121, 31.566605>,  <30.150089, 35.817020, 31.622034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466087, 35.578121, 31.566605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100392, 0.348972, -0.931740,
		0.604838, 0.722159, 0.335645,
		0.789996, -0.597247, -0.138573,
		30.703087, 35.398949, 31.525032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450298, 36.099350, 31.095352>,  <30.150089, 35.817020, 31.622034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450298, 36.099350, 31.095352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.686062, 35.780544, 31.148069>,  <30.827520, 35.589260, 31.179699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.686062, 35.780544, 31.148069>,  <30.450298, 36.099350, 31.095352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686062, 35.780544, 31.148069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276318, 0.045603, -0.959984,
		0.759110, 0.602237, 0.247108,
		0.589407, -0.797014, 0.131791,
		30.862885, 35.541439, 31.187607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084150, 36.294701, 30.879267>,  <30.450298, 36.099350, 31.095352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084150, 36.294701, 30.879267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043699, 35.898121, 30.846277>,  <31.019428, 35.660172, 30.826485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043699, 35.898121, 30.846277>,  <31.084150, 36.294701, 30.879267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043699, 35.898121, 30.846277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016694, 0.081194, -0.996559,
		0.994733, -0.102156, 0.008340,
		-0.101128, -0.991449, -0.082472,
		31.013361, 35.600685, 30.821535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605083, 36.115513, 30.283907>,  <31.084150, 36.294701, 30.879267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605083, 36.115513, 30.283907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341909, 35.817841, 30.330072>,  <31.184004, 35.639236, 30.357773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341909, 35.817841, 30.330072>,  <31.605083, 36.115513, 30.283907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341909, 35.817841, 30.330072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051304, -0.108609, -0.992760,
		0.751324, -0.659094, 0.033279,
		-0.657937, -0.744177, 0.115415,
		31.144529, 35.594589, 30.364697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922216, 35.581348, 29.974018>,  <31.605083, 36.115513, 30.283907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922216, 35.581348, 29.974018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533894, 35.485901, 29.983818>,  <31.300900, 35.428635, 29.989698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533894, 35.485901, 29.983818>,  <31.922216, 35.581348, 29.974018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533894, 35.485901, 29.983818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013266, -0.048576, -0.998731,
		0.239502, -0.969899, 0.043993,
		-0.970805, -0.238615, 0.024501,
		31.242653, 35.414318, 29.991169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799379, 34.975346, 29.570185>,  <31.922216, 35.581348, 29.974018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799379, 34.975346, 29.570185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419298, 35.096142, 29.600965>,  <31.191250, 35.168617, 29.619434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419298, 35.096142, 29.600965>,  <31.799379, 34.975346, 29.570185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419298, 35.096142, 29.600965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229563, -0.511281, -0.828186,
		-0.210756, -0.804609, 0.555145,
		-0.950201, 0.301986, 0.076953,
		31.134237, 35.186737, 29.624052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404448, 34.451477, 29.551861>,  <31.799379, 34.975346, 29.570185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404448, 34.451477, 29.551861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165239, 34.746952, 29.427464>,  <31.021715, 34.924236, 29.352825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165239, 34.746952, 29.427464>,  <31.404448, 34.451477, 29.551861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165239, 34.746952, 29.427464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094059, -0.450025, -0.888048,
		-0.795943, -0.501819, 0.338604,
		-0.598020, 0.738684, -0.310994,
		30.985832, 34.968555, 29.334166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760189, 34.147449, 29.324869>,  <31.404448, 34.451477, 29.551861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760189, 34.147449, 29.324869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.792315, 34.499424, 29.137566>,  <30.811590, 34.710609, 29.025183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.792315, 34.499424, 29.137566>,  <30.760189, 34.147449, 29.324869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792315, 34.499424, 29.137566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324687, -0.421062, -0.846927,
		-0.942405, 0.220059, 0.251885,
		0.080315, 0.879932, -0.468261,
		30.816408, 34.763405, 28.997087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244291, 34.144920, 28.771225>,  <30.760189, 34.147449, 29.324869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244291, 34.144920, 28.771225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.514952, 34.422523, 28.672836>,  <30.677347, 34.589085, 28.613804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.514952, 34.422523, 28.672836>,  <30.244291, 34.144920, 28.771225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514952, 34.422523, 28.672836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052751, -0.287509, -0.956324,
		-0.734412, 0.660072, -0.157933,
		0.676650, 0.694005, -0.245969,
		30.717947, 34.630726, 28.599045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904869, 34.480419, 28.295881>,  <30.244291, 34.144920, 28.771225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904869, 34.480419, 28.295881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.282560, 34.603008, 28.247705>,  <30.509176, 34.676559, 28.218800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.282560, 34.603008, 28.247705>,  <29.904869, 34.480419, 28.295881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282560, 34.603008, 28.247705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095850, -0.094122, -0.990936,
		-0.315027, 0.947216, -0.059498,
		0.944230, 0.306468, -0.120441,
		30.565830, 34.694950, 28.211573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894226, 34.857082, 27.693256>,  <29.904869, 34.480419, 28.295881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894226, 34.857082, 27.693256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.282995, 34.774593, 27.738569>,  <30.516256, 34.725098, 27.765757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.282995, 34.774593, 27.738569>,  <29.894226, 34.857082, 27.693256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282995, 34.774593, 27.738569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057985, -0.256669, -0.964758,
		0.228035, 0.944241, -0.237505,
		0.971925, -0.206227, 0.113282,
		30.574574, 34.712727, 27.772554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283768, 35.274029, 27.231472>,  <29.894226, 34.857082, 27.693256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283768, 35.274029, 27.231472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.520868, 34.958843, 27.298117>,  <30.663128, 34.769733, 27.338104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.520868, 34.958843, 27.298117>,  <30.283768, 35.274029, 27.231472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520868, 34.958843, 27.298117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091200, -0.139871, -0.985961,
		0.800207, 0.599622, -0.011047,
		0.592749, -0.787965, 0.166611,
		30.698692, 34.722454, 27.348101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819281, 35.282368, 26.675009>,  <30.283768, 35.274029, 27.231472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819281, 35.282368, 26.675009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838676, 34.906258, 26.809784>,  <30.850315, 34.680592, 26.890648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838676, 34.906258, 26.809784>,  <30.819281, 35.282368, 26.675009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838676, 34.906258, 26.809784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045473, -0.339062, -0.939665,
		0.997788, 0.030244, -0.059199,
		0.048491, -0.940278, 0.336936,
		30.853224, 34.624176, 26.910864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172718, 34.959324, 26.192640>,  <30.819281, 35.282368, 26.675009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172718, 34.959324, 26.192640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003473, 34.655247, 26.389854>,  <30.901926, 34.472801, 26.508183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003473, 34.655247, 26.389854>,  <31.172718, 34.959324, 26.192640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003473, 34.655247, 26.389854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262906, -0.417730, -0.869703,
		0.867098, -0.497601, -0.023114,
		-0.423110, -0.760194, 0.493035,
		30.876541, 34.427189, 26.537766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779102, 34.913521, 26.640739>,  <31.172718, 34.959324, 26.192640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779102, 34.913521, 26.640739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167213, 34.946339, 26.549673>,  <32.400082, 34.966030, 26.495033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167213, 34.946339, 26.549673>,  <31.779102, 34.913521, 26.640739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167213, 34.946339, 26.549673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060148, 0.829501, 0.555257,
		0.234403, -0.552447, 0.799911,
		0.970277, 0.082041, -0.227667,
		32.458298, 34.970951, 26.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159943, 34.954212, 27.328678>,  <31.779102, 34.913521, 26.640739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159943, 34.954212, 27.328678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.414734, 35.105541, 27.060011>,  <32.567608, 35.196339, 26.898811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.414734, 35.105541, 27.060011>,  <32.159943, 34.954212, 27.328678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414734, 35.105541, 27.060011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176267, 0.776732, 0.604663,
		0.750465, -0.503547, 0.428070,
		0.636972, 0.378324, -0.671669,
		32.605827, 35.219036, 26.858511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776073, 35.102413, 27.727251>,  <32.159943, 34.954212, 27.328678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776073, 35.102413, 27.727251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811764, 35.321682, 27.394613>,  <32.833176, 35.453243, 27.195030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811764, 35.321682, 27.394613>,  <32.776073, 35.102413, 27.727251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811764, 35.321682, 27.394613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326100, 0.772828, 0.544423,
		0.941115, -0.319757, -0.109806,
		0.089222, 0.548172, -0.831593,
		32.838531, 35.486134, 27.145136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440655, 35.384308, 27.818243>,  <32.776073, 35.102413, 27.727251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440655, 35.384308, 27.818243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243198, 35.605442, 27.549709>,  <33.124725, 35.738121, 27.388590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243198, 35.605442, 27.549709>,  <33.440655, 35.384308, 27.818243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243198, 35.605442, 27.549709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371955, 0.831991, 0.411632,
		0.786108, -0.046505, -0.616337,
		-0.493644, 0.552837, -0.671332,
		33.095104, 35.771294, 27.348310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860878, 36.006168, 27.816916>,  <33.440655, 35.384308, 27.818243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860878, 36.006168, 27.816916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512318, 36.108978, 27.649780>,  <33.303181, 36.170666, 27.549500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512318, 36.108978, 27.649780>,  <33.860878, 36.006168, 27.816916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512318, 36.108978, 27.649780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063926, 0.903986, 0.422755,
		0.486381, 0.341680, -0.804169,
		-0.871405, 0.257028, -0.417840,
		33.250896, 36.186085, 27.524427>
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
