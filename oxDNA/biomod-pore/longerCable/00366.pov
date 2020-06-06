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
	<24.420765, 34.680580, 35.134403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280567, 34.969379, 34.895782>,  <24.196449, 35.142658, 34.752609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280567, 34.969379, 34.895782>,  <24.420765, 34.680580, 35.134403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280567, 34.969379, 34.895782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228783, -0.683665, -0.693008,
		-0.908192, -0.106413, 0.404800,
		-0.350493, 0.721996, -0.596554,
		24.175419, 35.185978, 34.716816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.904491, 34.845688, 34.595695>,  <24.420765, 34.680580, 35.134403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.904491, 34.845688, 34.595695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281527, 34.761971, 34.491600>,  <25.507748, 34.711739, 34.429142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281527, 34.761971, 34.491600>,  <24.904491, 34.845688, 34.595695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281527, 34.761971, 34.491600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312768, 0.280074, 0.907598,
		-0.117070, -0.936885, 0.329455,
		0.942587, -0.209296, -0.260239,
		25.564302, 34.699181, 34.413528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207579, 34.384872, 35.063847>,  <24.904491, 34.845688, 34.595695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207579, 34.384872, 35.063847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502682, 34.576523, 34.873627>,  <25.679745, 34.691513, 34.759495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502682, 34.576523, 34.873627>,  <25.207579, 34.384872, 35.063847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502682, 34.576523, 34.873627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434689, 0.201802, 0.877679,
		0.516485, -0.854234, -0.059388,
		0.737760, 0.479123, -0.475554,
		25.724010, 34.720261, 34.730961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739735, 33.995304, 35.255470>,  <25.207579, 34.384872, 35.063847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739735, 33.995304, 35.255470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895233, 34.337887, 35.119614>,  <25.988533, 34.543438, 35.038097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895233, 34.337887, 35.119614>,  <25.739735, 33.995304, 35.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895233, 34.337887, 35.119614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484623, 0.123445, 0.865969,
		0.783592, -0.501241, -0.367070,
		0.388746, 0.856457, -0.339644,
		26.011858, 34.594826, 35.017719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512278, 34.052368, 35.442284>,  <25.739735, 33.995304, 35.255470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512278, 34.052368, 35.442284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416170, 34.437000, 35.389153>,  <26.358505, 34.667778, 35.357273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416170, 34.437000, 35.389153>,  <26.512278, 34.052368, 35.442284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416170, 34.437000, 35.389153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519353, 0.242942, 0.819299,
		0.820088, 0.127867, -0.557769,
		-0.240267, 0.961576, -0.132826,
		26.344090, 34.725471, 35.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160015, 34.571941, 35.455383>,  <26.512278, 34.052368, 35.442284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160015, 34.571941, 35.455383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823259, 34.720867, 35.611641>,  <26.621206, 34.810223, 35.705395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823259, 34.720867, 35.611641>,  <27.160015, 34.571941, 35.455383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823259, 34.720867, 35.611641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493153, 0.236845, 0.837081,
		0.219132, 0.897379, -0.383004,
		-0.841891, 0.372311, 0.390645,
		26.570692, 34.832561, 35.728836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288671, 35.276340, 35.782059>,  <27.160015, 34.571941, 35.455383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288671, 35.276340, 35.782059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976971, 35.130817, 35.986179>,  <26.789949, 35.043503, 36.108654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976971, 35.130817, 35.986179>,  <27.288671, 35.276340, 35.782059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976971, 35.130817, 35.986179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485601, 0.164235, 0.858615,
		-0.396181, 0.916881, 0.048685,
		-0.779252, -0.363808, 0.510305,
		26.743195, 35.021675, 36.139271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025757, 35.781185, 36.275261>,  <27.288671, 35.276340, 35.782059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025757, 35.781185, 36.275261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956844, 35.408802, 36.404034>,  <26.915497, 35.185371, 36.481297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956844, 35.408802, 36.404034>,  <27.025757, 35.781185, 36.275261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956844, 35.408802, 36.404034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476449, 0.207288, 0.854417,
		-0.862157, 0.300582, 0.407842,
		-0.172282, -0.930957, 0.321927,
		26.905159, 35.129517, 36.500610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946934, 35.841652, 37.054634>,  <27.025757, 35.781185, 36.275261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946934, 35.841652, 37.054634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042416, 35.455597, 37.011681>,  <27.099705, 35.223965, 36.985909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042416, 35.455597, 37.011681>,  <26.946934, 35.841652, 37.054634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042416, 35.455597, 37.011681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576604, 0.051894, 0.815374,
		-0.781375, -0.256550, 0.568889,
		0.238706, -0.965137, -0.107379,
		27.114027, 35.166058, 36.979465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009729, 35.551029, 37.800766>,  <26.946934, 35.841652, 37.054634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009729, 35.551029, 37.800766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209894, 35.306404, 37.555630>,  <27.329992, 35.159630, 37.408546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209894, 35.306404, 37.555630>,  <27.009729, 35.551029, 37.800766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209894, 35.306404, 37.555630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740152, -0.065058, 0.669285,
		-0.449180, -0.788517, 0.420094,
		0.500413, -0.611563, -0.612845,
		27.360018, 35.122936, 37.371777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023111, 34.909328, 38.091694>,  <27.009729, 35.551029, 37.800766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023111, 34.909328, 38.091694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328186, 34.965076, 37.839066>,  <27.511230, 34.998524, 37.687489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328186, 34.965076, 37.839066>,  <27.023111, 34.909328, 38.091694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328186, 34.965076, 37.839066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625317, 0.090495, 0.775106,
		0.165182, -0.986097, -0.018132,
		0.762688, 0.139372, -0.631571,
		27.556993, 35.006886, 37.649593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621878, 34.773201, 38.451355>,  <27.023111, 34.909328, 38.091694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621878, 34.773201, 38.451355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751690, 34.972584, 38.129803>,  <27.829576, 35.092213, 37.936871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751690, 34.972584, 38.129803>,  <27.621878, 34.773201, 38.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751690, 34.972584, 38.129803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707787, 0.435815, 0.555971,
		0.627470, -0.749404, -0.211366,
		0.324530, 0.498457, -0.803879,
		27.849049, 35.122120, 37.888638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422474, 34.646061, 38.323196>,  <27.621878, 34.773201, 38.451355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422474, 34.646061, 38.323196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271370, 35.006477, 38.237942>,  <28.180708, 35.222729, 38.186790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271370, 35.006477, 38.237942>,  <28.422474, 34.646061, 38.323196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271370, 35.006477, 38.237942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742899, 0.432343, 0.511058,
		0.552630, 0.034720, -0.832703,
		-0.377758, 0.901040, -0.213132,
		28.158043, 35.276791, 38.174004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042318, 34.960556, 38.136261>,  <28.422474, 34.646061, 38.323196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042318, 34.960556, 38.136261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742264, 35.221420, 38.180054>,  <28.562231, 35.377937, 38.206329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742264, 35.221420, 38.180054>,  <29.042318, 34.960556, 38.136261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742264, 35.221420, 38.180054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612488, 0.622775, 0.486836,
		0.249313, 0.432248, -0.866605,
		-0.750134, 0.652160, 0.109481,
		28.517223, 35.417068, 38.212898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145031, 35.628273, 37.784344>,  <29.042318, 34.960556, 38.136261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145031, 35.628273, 37.784344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917036, 35.684196, 38.108212>,  <28.780239, 35.717751, 38.302532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917036, 35.684196, 38.108212>,  <29.145031, 35.628273, 37.784344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917036, 35.684196, 38.108212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741239, 0.512665, 0.433289,
		-0.354512, 0.847129, -0.395844,
		-0.569987, 0.139809, 0.809671,
		28.746040, 35.726139, 38.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926344, 34.906960, 37.435989>,  <29.145031, 35.628273, 37.784344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926344, 34.906960, 37.435989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539442, 34.913383, 37.537304>,  <28.307301, 34.917236, 37.598095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539442, 34.913383, 37.537304>,  <28.926344, 34.906960, 37.435989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539442, 34.913383, 37.537304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253722, -0.085748, -0.963469,
		0.006248, -0.996188, 0.087014,
		-0.967257, 0.016058, 0.253291,
		28.249266, 34.918201, 37.613293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583811, 34.818691, 36.773880>,  <28.926344, 34.906960, 37.435989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583811, 34.818691, 36.773880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277010, 34.865700, 37.026199>,  <28.092930, 34.893906, 37.177589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277010, 34.865700, 37.026199>,  <28.583811, 34.818691, 36.773880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277010, 34.865700, 37.026199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637483, -0.027741, -0.769965,
		-0.072991, -0.992682, 0.096197,
		-0.766999, 0.117524, 0.630793,
		28.046909, 34.900955, 37.215439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025793, 34.317795, 36.629818>,  <28.583811, 34.818691, 36.773880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025793, 34.317795, 36.629818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812790, 34.570282, 36.855381>,  <27.684988, 34.721775, 36.990719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812790, 34.570282, 36.855381>,  <28.025793, 34.317795, 36.629818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812790, 34.570282, 36.855381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808514, -0.182178, -0.559568,
		-0.250481, -0.753902, 0.607364,
		-0.532508, 0.631224, 0.563908,
		27.653038, 34.759647, 37.024555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476612, 33.923912, 36.801422>,  <28.025793, 34.317795, 36.629818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476612, 33.923912, 36.801422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366098, 34.304214, 36.857605>,  <27.299791, 34.532394, 36.891315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366098, 34.304214, 36.857605>,  <27.476612, 33.923912, 36.801422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366098, 34.304214, 36.857605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822242, -0.158169, -0.546719,
		-0.497581, -0.266538, 0.825452,
		-0.276282, 0.950758, 0.140457,
		27.283215, 34.589443, 36.899742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698328, 33.901196, 36.894222>,  <27.476612, 33.923912, 36.801422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698328, 33.901196, 36.894222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767292, 34.275173, 36.770184>,  <26.808670, 34.499557, 36.695759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767292, 34.275173, 36.770184>,  <26.698328, 33.901196, 36.894222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767292, 34.275173, 36.770184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785204, -0.059635, -0.616359,
		-0.594751, 0.349759, 0.723837,
		0.172411, 0.934940, -0.310100,
		26.819016, 34.555656, 36.677155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070410, 34.280872, 36.853916>,  <26.698328, 33.901196, 36.894222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070410, 34.280872, 36.853916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313972, 34.482265, 36.608727>,  <26.460110, 34.603100, 36.461613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313972, 34.482265, 36.608727>,  <26.070410, 34.280872, 36.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313972, 34.482265, 36.608727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771123, 0.194500, -0.606249,
		-0.186010, 0.841831, 0.506676,
		0.608908, 0.503478, -0.612977,
		26.496645, 34.633308, 36.424835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610889, 34.874424, 36.698059>,  <26.070410, 34.280872, 36.853916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610889, 34.874424, 36.698059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963734, 34.930458, 36.518169>,  <26.175440, 34.964081, 36.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963734, 34.930458, 36.518169>,  <25.610889, 34.874424, 36.698059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963734, 34.930458, 36.518169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465359, 0.111363, -0.878088,
		-0.072928, 0.983856, 0.163426,
		0.882113, 0.140089, -0.449725,
		26.228367, 34.972485, 36.383251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482323, 35.400928, 36.262493>,  <25.610889, 34.874424, 36.698059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482323, 35.400928, 36.262493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820917, 35.235363, 36.128544>,  <26.024075, 35.136024, 36.048176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820917, 35.235363, 36.128544>,  <25.482323, 35.400928, 36.262493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820917, 35.235363, 36.128544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361479, 0.014978, -0.932260,
		0.390887, 0.910194, -0.136941,
		0.846487, -0.413910, -0.334871,
		26.074863, 35.111191, 36.028084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598288, 35.703686, 35.594810>,  <25.482323, 35.400928, 36.262493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598288, 35.703686, 35.594810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930725, 35.482906, 35.622047>,  <26.130188, 35.350437, 35.638390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930725, 35.482906, 35.622047>,  <25.598288, 35.703686, 35.594810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930725, 35.482906, 35.622047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103577, -0.273926, -0.956157,
		0.546402, 0.787603, -0.284828,
		0.831094, -0.551948, 0.068096,
		26.180054, 35.317322, 35.642475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103741, 35.936699, 35.107368>,  <25.598288, 35.703686, 35.594810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103741, 35.936699, 35.107368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220543, 35.559532, 35.171425>,  <26.290625, 35.333233, 35.209858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220543, 35.559532, 35.171425>,  <26.103741, 35.936699, 35.107368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220543, 35.559532, 35.171425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106512, -0.198455, -0.974305,
		0.950468, 0.267444, -0.158381,
		0.292004, -0.942915, 0.160139,
		26.308144, 35.276657, 35.219467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585848, 35.728973, 34.644508>,  <26.103741, 35.936699, 35.107368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585848, 35.728973, 34.644508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421247, 35.383816, 34.761868>,  <26.322487, 35.176720, 34.832283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421247, 35.383816, 34.761868>,  <26.585848, 35.728973, 34.644508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421247, 35.383816, 34.761868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149353, -0.253724, -0.955677,
		0.899089, -0.437082, -0.024468,
		-0.411500, -0.862893, 0.293400,
		26.297798, 35.124947, 34.849888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832043, 35.171375, 34.201569>,  <26.585848, 35.728973, 34.644508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832043, 35.171375, 34.201569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494118, 35.024826, 34.357548>,  <26.291363, 34.936897, 34.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494118, 35.024826, 34.357548>,  <26.832043, 35.171375, 34.201569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494118, 35.024826, 34.357548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026241, -0.699549, -0.714102,
		0.534416, -0.613517, 0.581375,
		-0.844814, -0.366372, 0.389950,
		26.240673, 34.914913, 34.474533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764908, 34.409389, 34.358448>,  <26.832043, 35.171375, 34.201569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764908, 34.409389, 34.358448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404421, 34.555965, 34.265903>,  <26.188128, 34.643909, 34.210377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404421, 34.555965, 34.265903>,  <26.764908, 34.409389, 34.358448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404421, 34.555965, 34.265903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023411, -0.574262, -0.818337,
		-0.432731, -0.732085, 0.526114,
		-0.901219, 0.366437, -0.231361,
		26.134056, 34.665897, 34.196495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303114, 33.831177, 34.304031>,  <26.764908, 34.409389, 34.358448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303114, 33.831177, 34.304031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142189, 34.121761, 34.081177>,  <26.045633, 34.296112, 33.947464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142189, 34.121761, 34.081177>,  <26.303114, 33.831177, 34.304031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142189, 34.121761, 34.081177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019887, -0.601480, -0.798641,
		-0.915286, -0.332385, 0.227536,
		-0.402314, 0.726459, -0.557136,
		26.021494, 34.339699, 33.914036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619682, 33.796345, 34.124233>,  <26.303114, 33.831177, 34.304031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619682, 33.796345, 34.124233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847919, 33.964111, 33.841812>,  <25.984861, 34.064774, 33.672359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847919, 33.964111, 33.841812>,  <25.619682, 33.796345, 34.124233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847919, 33.964111, 33.841812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255847, -0.726174, -0.638133,
		-0.780362, 0.544757, -0.307043,
		0.570594, 0.419419, -0.706053,
		26.019098, 34.089935, 33.629997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199709, 33.991501, 33.424946>,  <25.619682, 33.796345, 34.124233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199709, 33.991501, 33.424946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586763, 33.913509, 33.360863>,  <25.818996, 33.866714, 33.322414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586763, 33.913509, 33.360863>,  <25.199709, 33.991501, 33.424946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586763, 33.913509, 33.360863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252278, -0.763076, -0.595039,
		-0.006229, 0.616197, -0.787568,
		0.967635, -0.194979, -0.160207,
		25.877054, 33.855015, 33.312801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135273, 33.565277, 32.825756>,  <25.199709, 33.991501, 33.424946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135273, 33.565277, 32.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529621, 33.529907, 32.882660>,  <25.766230, 33.508686, 32.916801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529621, 33.529907, 32.882660>,  <25.135273, 33.565277, 32.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529621, 33.529907, 32.882660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031854, -0.932781, -0.359033,
		0.164443, 0.349429, -0.922419,
		0.985872, -0.088423, 0.142258,
		25.825382, 33.503380, 32.925339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365887, 33.248291, 32.220329>,  <25.135273, 33.565277, 32.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365887, 33.248291, 32.220329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650972, 33.174484, 32.491028>,  <25.822023, 33.130199, 32.653446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650972, 33.174484, 32.491028>,  <25.365887, 33.248291, 32.220329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650972, 33.174484, 32.491028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116844, -0.920076, -0.373908,
		0.691653, 0.345564, -0.634194,
		0.712716, -0.184513, 0.676750,
		25.864788, 33.119129, 32.694054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976189, 32.978180, 31.888456>,  <25.365887, 33.248291, 32.220329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976189, 32.978180, 31.888456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994638, 32.851639, 32.267464>,  <26.005709, 32.775715, 32.494869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994638, 32.851639, 32.267464>,  <25.976189, 32.978180, 31.888456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994638, 32.851639, 32.267464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204227, -0.925507, -0.318949,
		0.977836, 0.208220, 0.021921,
		0.046124, -0.316357, 0.947518,
		26.008476, 32.756733, 32.551720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540283, 32.588020, 31.813938>,  <25.976189, 32.978180, 31.888456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540283, 32.588020, 31.813938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349092, 32.471470, 32.145393>,  <26.234377, 32.401539, 32.344265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349092, 32.471470, 32.145393>,  <26.540283, 32.588020, 31.813938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349092, 32.471470, 32.145393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137406, -0.956567, -0.257097,
		0.867558, -0.009027, 0.497254,
		-0.477978, -0.291372, 0.828637,
		26.205700, 32.384060, 32.393986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118156, 32.862530, 32.234634>,  <26.540283, 32.588020, 31.813938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118156, 32.862530, 32.234634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008375, 32.689747, 32.578281>,  <26.942507, 32.586075, 32.784470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008375, 32.689747, 32.578281>,  <27.118156, 32.862530, 32.234634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008375, 32.689747, 32.578281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301096, -0.887102, -0.349845,
		0.913246, 0.162662, 0.373528,
		-0.274451, -0.431962, 0.859119,
		26.926041, 32.560158, 32.836018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658730, 32.325737, 32.664646>,  <27.118156, 32.862530, 32.234634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658730, 32.325737, 32.664646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280668, 32.195965, 32.679768>,  <27.053831, 32.118103, 32.688839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280668, 32.195965, 32.679768>,  <27.658730, 32.325737, 32.664646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280668, 32.195965, 32.679768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319222, -0.942027, -0.103352,
		0.069141, -0.085616, 0.993926,
		-0.945154, -0.324429, 0.037802,
		26.997122, 32.098637, 32.691109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715240, 31.653616, 32.987831>,  <27.658730, 32.325737, 32.664646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715240, 31.653616, 32.987831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351522, 31.644691, 32.821609>,  <27.133291, 31.639336, 32.721878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351522, 31.644691, 32.821609>,  <27.715240, 31.653616, 32.987831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351522, 31.644691, 32.821609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059496, -0.995274, -0.076747,
		-0.411877, -0.094509, 0.906325,
		-0.909295, -0.022313, -0.415553,
		27.078733, 31.637997, 32.696945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206463, 31.302803, 33.401264>,  <27.715240, 31.653616, 32.987831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206463, 31.302803, 33.401264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127922, 31.261337, 33.011250>,  <27.080797, 31.236458, 32.777241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127922, 31.261337, 33.011250>,  <27.206463, 31.302803, 33.401264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127922, 31.261337, 33.011250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105321, -0.990873, 0.084137,
		-0.974861, -0.086172, 0.205476,
		-0.196350, -0.103663, -0.975039,
		27.069017, 31.230238, 32.718739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868502, 30.641037, 33.181480>,  <27.206463, 31.302803, 33.401264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868502, 30.641037, 33.181480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001163, 30.737387, 32.816628>,  <27.080761, 30.795197, 32.597717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001163, 30.737387, 32.816628>,  <26.868502, 30.641037, 33.181480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001163, 30.737387, 32.816628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022375, -0.968591, -0.247650,
		-0.943136, 0.061725, -0.326625,
		0.331653, 0.240876, -0.912132,
		27.100658, 30.809650, 32.542988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317127, 30.481125, 32.817406>,  <26.868502, 30.641037, 33.181480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317127, 30.481125, 32.817406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667168, 30.460032, 32.624985>,  <26.877192, 30.447374, 32.509533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667168, 30.460032, 32.624985>,  <26.317127, 30.481125, 32.817406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667168, 30.460032, 32.624985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218343, -0.930144, -0.295227,
		-0.431883, 0.363389, -0.825485,
		0.875102, -0.052736, -0.481057,
		26.929699, 30.444210, 32.480667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205030, 30.370712, 32.102325>,  <26.317127, 30.481125, 32.817406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205030, 30.370712, 32.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538206, 30.224478, 32.268486>,  <26.738111, 30.136738, 32.368183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538206, 30.224478, 32.268486>,  <26.205030, 30.370712, 32.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538206, 30.224478, 32.268486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303266, -0.929492, -0.209937,
		0.462867, 0.048886, -0.885079,
		0.832937, -0.365587, 0.415406,
		26.788088, 30.114801, 32.393108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357204, 30.994917, 31.769693>,  <26.205030, 30.370712, 32.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357204, 30.994917, 31.769693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510321, 31.086361, 32.127735>,  <26.602190, 31.141228, 32.342560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510321, 31.086361, 32.127735>,  <26.357204, 30.994917, 31.769693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510321, 31.086361, 32.127735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560662, 0.827557, 0.028408,
		-0.734255, -0.512725, 0.444952,
		0.382789, 0.228609, 0.895104,
		26.625156, 31.154943, 32.396267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820843, 31.479723, 32.197723>,  <26.357204, 30.994917, 31.769693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820843, 31.479723, 32.197723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169519, 31.508619, 32.391605>,  <26.378725, 31.525957, 32.507935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169519, 31.508619, 32.391605>,  <25.820843, 31.479723, 32.197723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169519, 31.508619, 32.391605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260866, 0.905696, 0.334160,
		-0.414853, -0.417727, 0.808332,
		0.871691, 0.072240, 0.484701,
		26.431026, 31.530291, 32.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648983, 31.665592, 32.899483>,  <25.820843, 31.479723, 32.197723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648983, 31.665592, 32.899483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020292, 31.769840, 32.793362>,  <26.243078, 31.832390, 32.729687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020292, 31.769840, 32.793362>,  <25.648983, 31.665592, 32.899483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020292, 31.769840, 32.793362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193628, 0.947750, 0.253531,
		0.317519, -0.183975, 0.930233,
		0.928273, 0.260620, -0.265306,
		26.298775, 31.848026, 32.713768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837896, 32.069134, 33.595097>,  <25.648983, 31.665592, 32.899483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837896, 32.069134, 33.595097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026346, 32.147373, 33.251053>,  <26.139416, 32.194317, 33.044628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026346, 32.147373, 33.251053>,  <25.837896, 32.069134, 33.595097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026346, 32.147373, 33.251053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055600, 0.979749, 0.192353,
		0.880312, -0.042800, 0.472461,
		0.471126, 0.195600, -0.860105,
		26.167685, 32.206055, 32.993023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244511, 32.586861, 33.804283>,  <25.837896, 32.069134, 33.595097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244511, 32.586861, 33.804283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186478, 32.615322, 33.409542>,  <26.151657, 32.632401, 33.172695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186478, 32.615322, 33.409542>,  <26.244511, 32.586861, 33.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186478, 32.615322, 33.409542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018667, 0.997036, 0.074636,
		0.989244, 0.029251, -0.143324,
		-0.145083, 0.071158, -0.986857,
		26.142952, 32.636669, 33.113483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775572, 32.912472, 33.598930>,  <26.244511, 32.586861, 33.804283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775572, 32.912472, 33.598930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496061, 32.974457, 33.319588>,  <26.328356, 33.011650, 33.151981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496061, 32.974457, 33.319588>,  <26.775572, 32.912472, 33.598930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496061, 32.974457, 33.319588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126331, 0.987642, 0.092752,
		0.704096, -0.023411, -0.709718,
		-0.698776, 0.154966, -0.698353,
		26.286428, 33.020947, 33.110081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043362, 33.434845, 33.275921>,  <26.775572, 32.912472, 33.598930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043362, 33.434845, 33.275921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655352, 33.448322, 33.179661>,  <26.422544, 33.456409, 33.121902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655352, 33.448322, 33.179661>,  <27.043362, 33.434845, 33.275921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655352, 33.448322, 33.179661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028696, 0.999294, 0.024240,
		0.241300, 0.016608, -0.970309,
		-0.970026, 0.033693, -0.240653,
		26.364344, 33.458431, 33.107464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034472, 33.944466, 32.788586>,  <27.043362, 33.434845, 33.275921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034472, 33.944466, 32.788586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681643, 33.902630, 32.972332>,  <26.469946, 33.877529, 33.082581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681643, 33.902630, 32.972332>,  <27.034472, 33.944466, 32.788586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681643, 33.902630, 32.972332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013837, 0.980377, 0.196644,
		-0.470914, 0.167097, -0.866209,
		-0.882070, -0.104588, 0.459362,
		26.417021, 33.871254, 33.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805531, 34.616203, 32.760406>,  <27.034472, 33.944466, 32.788586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805531, 34.616203, 32.760406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537531, 34.477249, 33.022831>,  <26.376730, 34.393875, 33.180286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537531, 34.477249, 33.022831>,  <26.805531, 34.616203, 32.760406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537531, 34.477249, 33.022831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104996, 0.919213, 0.379503,
		-0.734898, 0.185383, -0.652348,
		-0.670000, -0.347390, 0.656064,
		26.336531, 34.373032, 33.219650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343777, 35.140285, 32.445312>,  <26.805531, 34.616203, 32.760406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343777, 35.140285, 32.445312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712418, 35.024876, 32.549160>,  <27.933601, 34.955627, 32.611469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712418, 35.024876, 32.549160>,  <27.343777, 35.140285, 32.445312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712418, 35.024876, 32.549160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245172, -0.951292, -0.186906,
		0.300905, 0.108600, -0.947450,
		0.921600, -0.288529, 0.259623,
		27.988897, 34.938316, 32.627048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528053, 34.601959, 31.879602>,  <27.343777, 35.140285, 32.445312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528053, 34.601959, 31.879602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699379, 34.573994, 32.239971>,  <27.802174, 34.557213, 32.456192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699379, 34.573994, 32.239971>,  <27.528053, 34.601959, 31.879602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699379, 34.573994, 32.239971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007898, -0.997254, -0.073634,
		0.903595, 0.024423, -0.427691,
		0.428315, -0.069913, 0.900921,
		27.827873, 34.553020, 32.510246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120564, 34.062157, 31.985556>,  <27.528053, 34.601959, 31.879602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120564, 34.062157, 31.985556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971676, 34.110550, 32.353645>,  <27.882343, 34.139587, 32.574501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971676, 34.110550, 32.353645>,  <28.120564, 34.062157, 31.985556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971676, 34.110550, 32.353645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024461, -0.989845, 0.140032,
		0.927822, 0.074632, 0.365481,
		-0.372220, 0.120985, 0.920226,
		27.860010, 34.146847, 32.629711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644041, 33.785366, 32.352791>,  <28.120564, 34.062157, 31.985556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644041, 33.785366, 32.352791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294338, 33.759029, 32.545181>,  <28.084517, 33.743229, 32.660618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294338, 33.759029, 32.545181>,  <28.644041, 33.785366, 32.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294338, 33.759029, 32.545181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198120, -0.952890, 0.229672,
		0.443200, 0.296084, 0.846114,
		-0.874255, -0.065842, 0.480981,
		28.032063, 33.739277, 32.689476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736395, 33.483772, 33.047440>,  <28.644041, 33.785366, 32.352791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736395, 33.483772, 33.047440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372078, 33.396866, 32.907005>,  <28.153488, 33.344723, 32.822746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372078, 33.396866, 32.907005>,  <28.736395, 33.483772, 33.047440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372078, 33.396866, 32.907005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122553, -0.954286, 0.272615,
		-0.394261, 0.205269, 0.895781,
		-0.910791, -0.217262, -0.351081,
		28.098841, 33.331688, 32.801682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256191, 33.955399, 33.250000>,  <28.736395, 33.483772, 33.047440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256191, 33.955399, 33.250000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650501, 33.910816, 33.199677>,  <29.887087, 33.884068, 33.169483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650501, 33.910816, 33.199677>,  <29.256191, 33.955399, 33.250000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650501, 33.910816, 33.199677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044347, -0.549493, 0.834321,
		-0.162119, -0.828031, -0.536733,
		0.985774, -0.111457, -0.125804,
		29.946234, 33.877380, 33.161934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441425, 33.185474, 33.036636>,  <29.256191, 33.955399, 33.250000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441425, 33.185474, 33.036636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739731, 33.389057, 33.208591>,  <29.918715, 33.511208, 33.311764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739731, 33.389057, 33.208591>,  <29.441425, 33.185474, 33.036636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739731, 33.389057, 33.208591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059975, -0.693942, 0.717528,
		0.663507, -0.509323, -0.548041,
		0.745763, 0.508954, 0.429889,
		29.963459, 33.541744, 33.337559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019793, 32.680878, 33.383923>,  <29.441425, 33.185474, 33.036636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019793, 32.680878, 33.383923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118061, 33.060833, 33.461243>,  <29.177023, 33.288807, 33.507633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118061, 33.060833, 33.461243>,  <29.019793, 32.680878, 33.383923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118061, 33.060833, 33.461243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870550, 0.128490, 0.475009,
		0.426366, -0.284975, 0.858488,
		0.245672, 0.949884, 0.193301,
		29.191763, 33.345798, 33.519234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053898, 32.057613, 33.773838>,  <29.019793, 32.680878, 33.383923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053898, 32.057613, 33.773838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406668, 31.973848, 33.942764>,  <29.618330, 31.923588, 34.044121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406668, 31.973848, 33.942764>,  <29.053898, 32.057613, 33.773838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406668, 31.973848, 33.942764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117659, -0.769749, -0.627409,
		0.456467, 0.603018, -0.654222,
		0.881926, -0.209417, 0.422316,
		29.671246, 31.911024, 34.069458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660736, 32.067490, 33.256653>,  <29.053898, 32.057613, 33.773838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660736, 32.067490, 33.256653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732790, 31.825552, 33.566936>,  <29.776022, 31.680389, 33.753105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732790, 31.825552, 33.566936>,  <29.660736, 32.067490, 33.256653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732790, 31.825552, 33.566936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040737, -0.783342, -0.620255,
		0.982798, 0.143330, -0.116468,
		0.180135, -0.604840, 0.775706,
		29.786831, 31.644100, 33.799648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353718, 31.698015, 33.116665>,  <29.660736, 32.067490, 33.256653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353718, 31.698015, 33.116665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094191, 31.506912, 33.353573>,  <29.938475, 31.392250, 33.495716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094191, 31.506912, 33.353573>,  <30.353718, 31.698015, 33.116665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094191, 31.506912, 33.353573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124315, -0.834430, -0.536910,
		0.750721, -0.274729, 0.600785,
		-0.648818, -0.477756, 0.592271,
		29.899546, 31.363586, 33.531254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573551, 31.040037, 33.574249>,  <30.353718, 31.698015, 33.116665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573551, 31.040037, 33.574249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201599, 30.990894, 33.435555>,  <29.978428, 30.961409, 33.352337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201599, 30.990894, 33.435555>,  <30.573551, 31.040037, 33.574249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201599, 30.990894, 33.435555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283657, -0.839625, -0.463216,
		-0.234218, -0.529090, 0.815601,
		-0.929882, -0.122858, -0.346735,
		29.922634, 30.954037, 33.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033875, 30.431931, 33.567997>,  <30.573551, 31.040037, 33.574249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033875, 30.431931, 33.567997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384373, 30.624016, 33.583920>,  <31.594671, 30.739267, 33.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384373, 30.624016, 33.583920>,  <31.033875, 30.431931, 33.567997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384373, 30.624016, 33.583920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193254, -0.425893, 0.883894,
		0.441411, -0.766817, -0.465991,
		0.876247, 0.480216, 0.039803,
		31.647247, 30.768080, 33.595860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642429, 29.897520, 33.639946>,  <31.033875, 30.431931, 33.567997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642429, 29.897520, 33.639946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746752, 30.251917, 33.793304>,  <31.809345, 30.464556, 33.885319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746752, 30.251917, 33.793304>,  <31.642429, 29.897520, 33.639946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746752, 30.251917, 33.793304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222192, -0.441571, 0.869279,
		0.939474, -0.141524, -0.312025,
		0.260805, 0.885994, 0.383399,
		31.824993, 30.517715, 33.908325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061069, 30.145042, 33.085476>,  <31.642429, 29.897520, 33.639946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061069, 30.145042, 33.085476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722330, 30.102606, 32.877018>,  <31.519087, 30.077145, 32.751945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722330, 30.102606, 32.877018>,  <32.061069, 30.145042, 33.085476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722330, 30.102606, 32.877018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465967, -0.620350, -0.630905,
		-0.256357, -0.777117, 0.574778,
		-0.846851, -0.106090, -0.521142,
		31.468275, 30.070780, 32.720676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902744, 29.429525, 32.830021>,  <32.061069, 30.145042, 33.085476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902744, 29.429525, 32.830021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752632, 29.721081, 32.600975>,  <31.662565, 29.896013, 32.463547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752632, 29.721081, 32.600975>,  <31.902744, 29.429525, 32.830021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752632, 29.721081, 32.600975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517224, -0.347970, -0.781918,
		-0.769183, -0.589608, -0.246413,
		-0.375281, 0.728889, -0.572613,
		31.640047, 29.939747, 32.429192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633842, 29.094513, 32.247952>,  <31.902744, 29.429525, 32.830021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633842, 29.094513, 32.247952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713938, 29.476912, 32.162182>,  <31.761995, 29.706350, 32.110722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713938, 29.476912, 32.162182>,  <31.633842, 29.094513, 32.247952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713938, 29.476912, 32.162182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434928, -0.282843, -0.854890,
		-0.877919, 0.077922, -0.472425,
		0.200237, 0.955996, -0.214422,
		31.774010, 29.763710, 32.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292301, 29.194220, 31.572836>,  <31.633842, 29.094513, 32.247952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292301, 29.194220, 31.572836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601440, 29.438702, 31.641111>,  <31.786924, 29.585390, 31.682077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601440, 29.438702, 31.641111>,  <31.292301, 29.194220, 31.572836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601440, 29.438702, 31.641111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354394, -0.192574, -0.915052,
		-0.526413, 0.767688, -0.365438,
		0.772848, 0.611204, 0.170691,
		31.833294, 29.622063, 31.692318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294231, 29.770893, 31.016127>,  <31.292301, 29.194220, 31.572836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294231, 29.770893, 31.016127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664875, 29.740532, 31.163441>,  <31.887260, 29.722315, 31.251829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664875, 29.740532, 31.163441>,  <31.294231, 29.770893, 31.016127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664875, 29.740532, 31.163441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345005, -0.217915, -0.912954,
		0.149552, 0.973012, -0.175735,
		0.926610, -0.075904, 0.368284,
		31.942858, 29.717760, 31.273926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748964, 29.981644, 30.414364>,  <31.294231, 29.770893, 31.016127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748964, 29.981644, 30.414364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021114, 29.853210, 30.677877>,  <32.184402, 29.776150, 30.835985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021114, 29.853210, 30.677877>,  <31.748964, 29.981644, 30.414364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021114, 29.853210, 30.677877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671312, -0.087555, -0.735985,
		0.293992, 0.942995, 0.155977,
		0.680374, -0.321083, 0.658784,
		32.225227, 29.756886, 30.875513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325611, 30.443192, 30.323980>,  <31.748964, 29.981644, 30.414364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325611, 30.443192, 30.323980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428692, 30.089394, 30.479546>,  <32.490540, 29.877115, 30.572886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428692, 30.089394, 30.479546>,  <32.325611, 30.443192, 30.323980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428692, 30.089394, 30.479546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571279, -0.185140, -0.799602,
		0.779248, 0.428241, 0.457583,
		0.257705, -0.884496, 0.388915,
		32.506004, 29.824045, 30.596220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052250, 30.419079, 30.441818>,  <32.325611, 30.443192, 30.323980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052250, 30.419079, 30.441818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938587, 30.037069, 30.407919>,  <32.870392, 29.807863, 30.387579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938587, 30.037069, 30.407919>,  <33.052250, 30.419079, 30.441818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938587, 30.037069, 30.407919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589892, -0.104460, -0.800697,
		0.755833, -0.277515, 0.593044,
		-0.284154, -0.955026, -0.084749,
		32.853340, 29.750561, 30.382494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680752, 30.127306, 30.281265>,  <33.052250, 30.419079, 30.441818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680752, 30.127306, 30.281265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421261, 29.827990, 30.225826>,  <33.265564, 29.648399, 30.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421261, 29.827990, 30.225826>,  <33.680752, 30.127306, 30.281265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421261, 29.827990, 30.225826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405015, -0.185293, -0.895337,
		0.644292, -0.636967, 0.423275,
		-0.648730, -0.748291, -0.138598,
		33.226643, 29.603502, 30.184246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059208, 29.469532, 30.048203>,  <33.680752, 30.127306, 30.281265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059208, 29.469532, 30.048203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689396, 29.413248, 29.906534>,  <33.467506, 29.379477, 29.821533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689396, 29.413248, 29.906534>,  <34.059208, 29.469532, 30.048203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689396, 29.413248, 29.906534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380820, -0.305486, -0.872728,
		0.014609, -0.941742, 0.336018,
		-0.924534, -0.140712, -0.354172,
		33.412037, 29.371035, 29.800283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077282, 28.905849, 29.749989>,  <34.059208, 29.469532, 30.048203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077282, 28.905849, 29.749989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767338, 29.105528, 29.594868>,  <33.581371, 29.225334, 29.501795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767338, 29.105528, 29.594868>,  <34.077282, 28.905849, 29.749989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767338, 29.105528, 29.594868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386911, -0.110611, -0.915459,
		-0.499890, -0.859399, -0.107437,
		-0.774861, 0.499197, -0.387804,
		33.534878, 29.255287, 29.478527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079227, 28.688662, 28.993788>,  <34.077282, 28.905849, 29.749989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079227, 28.688662, 28.993788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836548, 29.006618, 28.996878>,  <33.690941, 29.197393, 28.998732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836548, 29.006618, 28.996878>,  <34.079227, 28.688662, 28.993788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836548, 29.006618, 28.996878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080351, 0.070993, -0.994235,
		-0.790861, -0.602580, -0.106942,
		-0.606698, 0.794895, 0.007727,
		33.654537, 29.245087, 28.999195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609493, 28.556274, 28.480408>,  <34.079227, 28.688662, 28.993788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609493, 28.556274, 28.480408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613308, 28.953180, 28.529917>,  <33.615597, 29.191324, 28.559622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613308, 28.953180, 28.529917>,  <33.609493, 28.556274, 28.480408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613308, 28.953180, 28.529917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130945, 0.121472, -0.983920,
		-0.991344, 0.025593, -0.128774,
		0.009539, 0.992265, 0.123772,
		33.616169, 29.250860, 28.567049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217937, 28.787706, 27.836302>,  <33.609493, 28.556274, 28.480408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217937, 28.787706, 27.836302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424011, 29.095943, 27.986380>,  <33.547657, 29.280886, 28.076427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424011, 29.095943, 27.986380>,  <33.217937, 28.787706, 27.836302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424011, 29.095943, 27.986380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209122, 0.311513, -0.926945,
		-0.831175, 0.556011, -0.000661,
		0.515186, 0.770592, 0.375196,
		33.578568, 29.327122, 28.098938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969791, 29.386189, 27.468121>,  <33.217937, 28.787706, 27.836302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969791, 29.386189, 27.468121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324459, 29.501949, 27.612381>,  <33.537258, 29.571405, 27.698938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324459, 29.501949, 27.612381>,  <32.969791, 29.386189, 27.468121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324459, 29.501949, 27.612381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286968, 0.267194, -0.919922,
		-0.362592, 0.919159, 0.153863,
		0.886666, 0.289403, 0.360652,
		33.590458, 29.588770, 27.720577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004360, 30.092606, 27.305229>,  <32.969791, 29.386189, 27.468121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004360, 30.092606, 27.305229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392403, 30.020569, 27.370308>,  <33.625229, 29.977346, 27.409355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392403, 30.020569, 27.370308>,  <33.004360, 30.092606, 27.305229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392403, 30.020569, 27.370308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238520, 0.583590, -0.776228,
		0.044846, 0.791827, 0.609098,
		0.970102, -0.180092, 0.162695,
		33.683434, 29.966541, 27.419117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248489, 30.740377, 27.324041>,  <33.004360, 30.092606, 27.305229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248489, 30.740377, 27.324041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566978, 30.504665, 27.269238>,  <33.758072, 30.363237, 27.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566978, 30.504665, 27.269238>,  <33.248489, 30.740377, 27.324041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566978, 30.504665, 27.269238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302226, 0.583603, -0.753702,
		0.524102, 0.558709, 0.642776,
		0.796227, -0.589280, -0.137011,
		33.805847, 30.327881, 27.228134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694069, 31.266502, 27.167917>,  <33.248489, 30.740377, 27.324041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694069, 31.266502, 27.167917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865971, 30.932688, 27.030010>,  <33.969112, 30.732399, 26.947266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865971, 30.932688, 27.030010>,  <33.694069, 31.266502, 27.167917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865971, 30.932688, 27.030010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356247, 0.507560, -0.784520,
		0.829700, 0.214325, 0.515424,
		0.429751, -0.834535, -0.344770,
		33.994896, 30.682327, 26.926579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454174, 31.435366, 27.144606>,  <33.694069, 31.266502, 27.167917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454174, 31.435366, 27.144606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330582, 31.148956, 26.894218>,  <34.256424, 30.977110, 26.743986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330582, 31.148956, 26.894218>,  <34.454174, 31.435366, 27.144606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330582, 31.148956, 26.894218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280075, 0.560486, -0.779367,
		0.908894, -0.416129, 0.027360,
		-0.308983, -0.716025, -0.625970,
		34.237888, 30.934149, 26.706427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979736, 31.424368, 26.649307>,  <34.454174, 31.435366, 27.144606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979736, 31.424368, 26.649307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676434, 31.244328, 26.460646>,  <34.494453, 31.136303, 26.347448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676434, 31.244328, 26.460646>,  <34.979736, 31.424368, 26.649307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676434, 31.244328, 26.460646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276643, 0.432956, -0.857915,
		0.590357, -0.780997, -0.203772,
		-0.758253, -0.450104, -0.471656,
		34.448959, 31.109297, 26.319149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297497, 31.299473, 25.971970>,  <34.979736, 31.424368, 26.649307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297497, 31.299473, 25.971970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903923, 31.251204, 25.919344>,  <34.667778, 31.222242, 25.887768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903923, 31.251204, 25.919344>,  <35.297497, 31.299473, 25.971970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903923, 31.251204, 25.919344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108971, 0.177779, -0.978018,
		0.141408, -0.976644, -0.161773,
		-0.983935, -0.120671, -0.131565,
		34.608742, 31.215002, 25.879875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267807, 30.943701, 25.321398>,  <35.297497, 31.299473, 25.971970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267807, 30.943701, 25.321398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899551, 31.083998, 25.389988>,  <34.678596, 31.168175, 25.431143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899551, 31.083998, 25.389988>,  <35.267807, 30.943701, 25.321398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899551, 31.083998, 25.389988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058051, 0.311356, -0.948519,
		-0.386075, -0.883197, -0.266286,
		-0.920639, 0.350742, 0.171477,
		34.623360, 31.189220, 25.441431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782551, 30.609671, 24.895130>,  <35.267807, 30.943701, 25.321398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782551, 30.609671, 24.895130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538937, 30.909601, 24.998541>,  <34.392769, 31.089560, 25.060587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538937, 30.909601, 24.998541>,  <34.782551, 30.609671, 24.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538937, 30.909601, 24.998541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049114, 0.289675, -0.955864,
		-0.791620, -0.594854, -0.139596,
		-0.609037, 0.749825, 0.258528,
		34.356224, 31.134548, 25.076099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199234, 30.632454, 24.461781>,  <34.782551, 30.609671, 24.895130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199234, 30.632454, 24.461781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241749, 31.003273, 24.605604>,  <34.267258, 31.225765, 24.691898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241749, 31.003273, 24.605604>,  <34.199234, 30.632454, 24.461781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241749, 31.003273, 24.605604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057771, 0.366756, -0.928522,
		-0.992655, 0.077921, 0.092539,
		0.106290, 0.927048, 0.359561,
		34.273636, 31.281387, 24.713472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562931, 31.067488, 24.257921>,  <34.199234, 30.632454, 24.461781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562931, 31.067488, 24.257921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878712, 31.295168, 24.349813>,  <34.068180, 31.431776, 24.404949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878712, 31.295168, 24.349813>,  <33.562931, 31.067488, 24.257921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878712, 31.295168, 24.349813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057696, 0.441423, -0.895443,
		-0.611097, 0.693653, 0.381322,
		0.789450, 0.569203, 0.229731,
		34.115547, 31.465929, 24.418734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519253, 31.723873, 23.893581>,  <33.562931, 31.067488, 24.257921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519253, 31.723873, 23.893581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913956, 31.700462, 23.954088>,  <34.150780, 31.686417, 23.990393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913956, 31.700462, 23.954088>,  <33.519253, 31.723873, 23.893581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913956, 31.700462, 23.954088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162178, 0.369338, -0.915035,
		-0.002316, 0.927451, 0.373939,
		0.986759, -0.058526, 0.151267,
		34.209984, 31.682905, 23.999468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770329, 32.390934, 23.581284>,  <33.519253, 31.723873, 23.893581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770329, 32.390934, 23.581284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092621, 32.158989, 23.629536>,  <34.285995, 32.019821, 23.658487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092621, 32.158989, 23.629536>,  <33.770329, 32.390934, 23.581284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092621, 32.158989, 23.629536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360235, 0.318124, -0.876942,
		0.470134, 0.750036, 0.465210,
		0.805732, -0.579866, 0.120629,
		34.334339, 31.985029, 23.665724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421555, 32.821514, 23.465563>,  <33.770329, 32.390934, 23.581284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421555, 32.821514, 23.465563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541649, 32.443165, 23.416279>,  <34.613705, 32.216156, 23.386707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541649, 32.443165, 23.416279>,  <34.421555, 32.821514, 23.465563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541649, 32.443165, 23.416279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513578, 0.269150, -0.814737,
		0.803800, 0.181338, 0.566589,
		0.300240, -0.945873, -0.123211,
		34.631721, 32.159405, 23.379316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156895, 32.808556, 23.563267>,  <34.421555, 32.821514, 23.465563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156895, 32.808556, 23.563267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031647, 32.502506, 23.338219>,  <34.956497, 32.318878, 23.203190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031647, 32.502506, 23.338219>,  <35.156895, 32.808556, 23.563267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031647, 32.502506, 23.338219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429329, 0.414387, -0.802471,
		0.847132, -0.492820, 0.198737,
		-0.313120, -0.765122, -0.562622,
		34.937710, 32.272968, 23.169432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703800, 32.427021, 23.361362>,  <35.156895, 32.808556, 23.563267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703800, 32.427021, 23.361362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430935, 32.338654, 23.082554>,  <35.267216, 32.285633, 22.915268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430935, 32.338654, 23.082554>,  <35.703800, 32.427021, 23.361362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430935, 32.338654, 23.082554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621534, 0.326929, -0.711908,
		0.385155, -0.918863, -0.085707,
		-0.682166, -0.220925, -0.697023,
		35.226284, 32.272377, 22.873447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113102, 32.118839, 22.837854>,  <35.703800, 32.427021, 23.361362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113102, 32.118839, 22.837854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767231, 32.224842, 22.667160>,  <35.559708, 32.288445, 22.564743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767231, 32.224842, 22.667160>,  <36.113102, 32.118839, 22.837854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767231, 32.224842, 22.667160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500531, 0.382789, -0.776493,
		-0.042427, -0.885011, -0.463634,
		-0.864679, 0.265007, -0.426734,
		35.507828, 32.304344, 22.539141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052006, 31.886057, 22.173531>,  <36.113102, 32.118839, 22.837854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052006, 31.886057, 22.173531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796146, 32.191372, 22.137203>,  <35.642632, 32.374561, 22.115406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796146, 32.191372, 22.137203>,  <36.052006, 31.886057, 22.173531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796146, 32.191372, 22.137203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446764, 0.273024, -0.851974,
		-0.625504, -0.585537, -0.515647,
		-0.639646, 0.763285, -0.090819,
		35.604252, 32.420357, 22.109957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868801, 31.955984, 21.467287>,  <36.052006, 31.886057, 22.173531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868801, 31.955984, 21.467287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737221, 32.314541, 21.586130>,  <35.658272, 32.529675, 21.657436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737221, 32.314541, 21.586130>,  <35.868801, 31.955984, 21.467287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737221, 32.314541, 21.586130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254025, 0.387013, -0.886393,
		-0.909541, -0.216103, -0.355013,
		-0.328947, 0.896393, 0.297109,
		35.638538, 32.583458, 21.675262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492359, 32.315826, 20.875122>,  <35.868801, 31.955984, 21.467287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492359, 32.315826, 20.875122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572987, 32.610916, 21.132843>,  <35.621365, 32.787971, 21.287476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572987, 32.610916, 21.132843>,  <35.492359, 32.315826, 20.875122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572987, 32.610916, 21.132843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121376, 0.633922, -0.763813,
		-0.971925, 0.232164, 0.038236,
		0.201569, 0.737728, 0.644304,
		35.633457, 32.832233, 21.326134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169933, 32.777401, 20.440596>,  <35.492359, 32.315826, 20.875122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169933, 32.777401, 20.440596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362289, 33.001652, 20.710243>,  <35.477703, 33.136204, 20.872032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362289, 33.001652, 20.710243>,  <35.169933, 32.777401, 20.440596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362289, 33.001652, 20.710243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122329, 0.718438, -0.684750,
		-0.868204, 0.411755, 0.276910,
		0.480892, 0.560629, 0.674121,
		35.506557, 33.169842, 20.912479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938259, 33.510822, 20.401499>,  <35.169933, 32.777401, 20.440596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938259, 33.510822, 20.401499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301373, 33.505714, 20.569195>,  <35.519241, 33.502651, 20.669811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301373, 33.505714, 20.569195>,  <34.938259, 33.510822, 20.401499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301373, 33.505714, 20.569195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272038, 0.778707, -0.565341,
		-0.319247, 0.627258, 0.710373,
		0.907787, -0.012765, 0.419238,
		35.573708, 33.501884, 20.694965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081745, 34.190678, 20.686735>,  <34.938259, 33.510822, 20.401499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081745, 34.190678, 20.686735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436913, 34.016346, 20.627863>,  <35.650013, 33.911747, 20.592541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436913, 34.016346, 20.627863>,  <35.081745, 34.190678, 20.686735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436913, 34.016346, 20.627863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224238, 0.689438, -0.688762,
		0.401651, 0.578560, 0.709891,
		0.887916, -0.435826, -0.147178,
		35.703289, 33.885597, 20.583710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643829, 34.694077, 20.777163>,  <35.081745, 34.190678, 20.686735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643829, 34.694077, 20.777163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820789, 34.420517, 20.545105>,  <35.926964, 34.256382, 20.405870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820789, 34.420517, 20.545105>,  <35.643829, 34.694077, 20.777163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820789, 34.420517, 20.545105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360108, 0.727916, -0.583490,
		0.821343, 0.049222, 0.568307,
		0.442401, -0.683897, -0.580144,
		35.953510, 34.215347, 20.371061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275166, 34.978493, 20.588793>,  <35.643829, 34.694077, 20.777163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275166, 34.978493, 20.588793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229588, 34.689213, 20.316324>,  <36.202240, 34.515644, 20.152843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229588, 34.689213, 20.316324>,  <36.275166, 34.978493, 20.588793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229588, 34.689213, 20.316324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334229, 0.617767, -0.711796,
		0.935579, -0.308771, 0.171325,
		-0.113943, -0.723204, -0.681170,
		36.195404, 34.472252, 20.111973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889374, 34.945183, 20.254095>,  <36.275166, 34.978493, 20.588793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889374, 34.945183, 20.254095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607784, 34.792294, 20.014652>,  <36.438831, 34.700562, 19.870987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607784, 34.792294, 20.014652>,  <36.889374, 34.945183, 20.254095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607784, 34.792294, 20.014652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219602, 0.684394, -0.695255,
		0.675410, -0.620903, -0.397870,
		-0.703986, -0.382209, -0.598598,
		36.396595, 34.677628, 19.835070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192482, 35.065071, 19.638683>,  <36.889374, 34.945183, 20.254095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192482, 35.065071, 19.638683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807697, 34.997261, 19.553001>,  <36.576824, 34.956577, 19.501593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807697, 34.997261, 19.553001>,  <37.192482, 35.065071, 19.638683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807697, 34.997261, 19.553001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020820, 0.736364, -0.676266,
		0.272375, -0.655004, -0.704827,
		-0.961966, -0.169523, -0.214204,
		36.519108, 34.946404, 19.488741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072243, 34.980019, 18.877165>,  <37.192482, 35.065071, 19.638683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072243, 34.980019, 18.877165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730339, 35.104004, 19.043688>,  <36.525196, 35.178394, 19.143602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730339, 35.104004, 19.043688>,  <37.072243, 34.980019, 18.877165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730339, 35.104004, 19.043688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079829, 0.714033, -0.695546,
		-0.512853, -0.627756, -0.585580,
		-0.854757, 0.309966, 0.416307,
		36.473911, 35.196995, 19.168579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605221, 34.994434, 18.320992>,  <37.072243, 34.980019, 18.877165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605221, 34.994434, 18.320992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451565, 35.246761, 18.590662>,  <36.359371, 35.398155, 18.752464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451565, 35.246761, 18.590662>,  <36.605221, 34.994434, 18.320992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451565, 35.246761, 18.590662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228232, 0.642658, -0.731369,
		-0.894621, -0.434816, -0.102899,
		-0.384139, 0.630814, 0.674174,
		36.336323, 35.436005, 18.792913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988548, 35.176849, 18.122324>,  <36.605221, 34.994434, 18.320992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988548, 35.176849, 18.122324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079937, 35.470860, 18.377678>,  <36.134769, 35.647266, 18.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079937, 35.470860, 18.377678>,  <35.988548, 35.176849, 18.122324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079937, 35.470860, 18.377678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169044, 0.675722, -0.717513,
		-0.958762, 0.056017, 0.278636,
		0.228473, 0.735025, 0.638387,
		36.148479, 35.691368, 18.569195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381199, 35.593170, 18.123238>,  <35.988548, 35.176849, 18.122324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381199, 35.593170, 18.123238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682209, 35.823101, 18.251787>,  <35.862816, 35.961060, 18.328917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682209, 35.823101, 18.251787>,  <35.381199, 35.593170, 18.123238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682209, 35.823101, 18.251787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229753, 0.686485, -0.689892,
		-0.617184, 0.445327, 0.648667,
		0.752528, 0.574823, 0.321373,
		35.907967, 35.995548, 18.348200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053337, 36.185654, 18.364677>,  <35.381199, 35.593170, 18.123238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053337, 36.185654, 18.364677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433903, 36.269127, 18.274120>,  <35.662243, 36.319210, 18.219786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433903, 36.269127, 18.274120>,  <35.053337, 36.185654, 18.364677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433903, 36.269127, 18.274120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301735, 0.778341, -0.550583,
		0.061312, 0.592145, 0.803495,
		0.951418, 0.208685, -0.226393,
		35.719330, 36.331734, 18.206202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324940, 36.880066, 18.419617>,  <35.053337, 36.185654, 18.364677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324940, 36.880066, 18.419617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338654, 37.279831, 18.418430>,  <35.346882, 37.519688, 18.417719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338654, 37.279831, 18.418430>,  <35.324940, 36.880066, 18.419617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338654, 37.279831, 18.418430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474055, 0.013649, -0.880390,
		-0.879828, 0.031587, 0.474242,
		0.034282, 0.999408, -0.002965,
		35.348938, 37.579655, 18.417542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680637, 37.062965, 18.156376>,  <35.324940, 36.880066, 18.419617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680637, 37.062965, 18.156376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891350, 37.397972, 18.098312>,  <35.017776, 37.598976, 18.063475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891350, 37.397972, 18.098312>,  <34.680637, 37.062965, 18.156376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891350, 37.397972, 18.098312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495463, 0.163790, -0.853047,
		-0.690663, 0.521291, 0.501239,
		0.526783, 0.837513, -0.145157,
		35.049385, 37.649227, 18.054766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264679, 37.706165, 17.974169>,  <34.680637, 37.062965, 18.156376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264679, 37.706165, 17.974169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629829, 37.717297, 17.811253>,  <34.848919, 37.723976, 17.713503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629829, 37.717297, 17.811253>,  <34.264679, 37.706165, 17.974169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629829, 37.717297, 17.811253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401672, 0.239478, -0.883917,
		0.072942, 0.970503, 0.229790,
		0.912874, 0.027825, -0.407292,
		34.903690, 37.725643, 17.689064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325958, 38.303802, 17.584532>,  <34.264679, 37.706165, 17.974169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325958, 38.303802, 17.584532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577850, 38.040203, 17.420013>,  <34.728985, 37.882046, 17.321302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577850, 38.040203, 17.420013>,  <34.325958, 38.303802, 17.584532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577850, 38.040203, 17.420013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289817, 0.291925, -0.911474,
		0.720724, 0.693186, -0.007153,
		0.629733, -0.658994, -0.411294,
		34.766769, 37.842506, 17.296625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926235, 38.582142, 17.299507>,  <34.325958, 38.303802, 17.584532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926235, 38.582142, 17.299507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822304, 38.256889, 17.091156>,  <34.759945, 38.061737, 16.966145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822304, 38.256889, 17.091156>,  <34.926235, 38.582142, 17.299507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822304, 38.256889, 17.091156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131007, 0.504736, -0.853275,
		0.956727, -0.289943, -0.024618,
		-0.259826, -0.813127, -0.520879,
		34.744354, 38.012951, 16.934893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460327, 38.261242, 17.022089>,  <34.926235, 38.582142, 17.299507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460327, 38.261242, 17.022089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106411, 38.250305, 16.836014>,  <34.894062, 38.243744, 16.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106411, 38.250305, 16.836014>,  <35.460327, 38.261242, 17.022089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106411, 38.250305, 16.836014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326463, 0.675974, -0.660667,
		0.332519, -0.736418, -0.589169,
		-0.884790, -0.027342, -0.465187,
		34.840973, 38.242104, 16.696457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052685, 38.196285, 17.421097>,  <35.460327, 38.261242, 17.022089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052685, 38.196285, 17.421097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668392, 38.164013, 17.527288>,  <35.437817, 38.144650, 17.591003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668392, 38.164013, 17.527288>,  <36.052685, 38.196285, 17.421097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668392, 38.164013, 17.527288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262476, 0.045995, 0.963842,
		-0.089976, 0.995678, -0.023011,
		-0.960734, -0.080683, 0.265480,
		35.380173, 38.139809, 17.606932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933617, 38.650066, 17.941513>,  <36.052685, 38.196285, 17.421097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933617, 38.650066, 17.941513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649353, 38.370720, 17.975574>,  <35.478794, 38.203114, 17.996012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649353, 38.370720, 17.975574>,  <35.933617, 38.650066, 17.941513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649353, 38.370720, 17.975574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175307, -0.058559, 0.982771,
		-0.681349, 0.713340, 0.164044,
		-0.710656, -0.698367, 0.085155,
		35.436157, 38.161209, 18.001122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443214, 38.880032, 18.429087>,  <35.933617, 38.650066, 17.941513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443214, 38.880032, 18.429087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400238, 38.482346, 18.428776>,  <35.374454, 38.243736, 18.428589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400238, 38.482346, 18.428776>,  <35.443214, 38.880032, 18.429087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400238, 38.482346, 18.428776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079604, -0.009382, 0.996782,
		-0.991020, 0.107029, 0.080152,
		-0.107437, -0.994212, -0.000778,
		35.368008, 38.184082, 18.428543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855648, 38.627033, 18.856802>,  <35.443214, 38.880032, 18.429087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855648, 38.627033, 18.856802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125172, 38.332146, 18.836832>,  <35.286888, 38.155212, 18.824850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125172, 38.332146, 18.836832>,  <34.855648, 38.627033, 18.856802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125172, 38.332146, 18.836832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024756, -0.090053, 0.995629,
		-0.738489, -0.669630, -0.078930,
		0.673811, -0.737215, -0.049926,
		35.327316, 38.110981, 18.821854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556271, 38.175106, 19.313753>,  <34.855648, 38.627033, 18.856802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556271, 38.175106, 19.313753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917633, 38.008976, 19.271122>,  <35.134453, 37.909298, 19.245543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917633, 38.008976, 19.271122>,  <34.556271, 38.175106, 19.313753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917633, 38.008976, 19.271122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038241, -0.169526, 0.984783,
		-0.427074, -0.893737, -0.137269,
		0.903408, -0.415326, -0.106577,
		35.188656, 37.884377, 19.239149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552864, 37.587803, 19.725147>,  <34.556271, 38.175106, 19.313753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552864, 37.587803, 19.725147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939999, 37.667122, 19.663227>,  <35.172279, 37.714714, 19.626074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939999, 37.667122, 19.663227>,  <34.552864, 37.587803, 19.725147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939999, 37.667122, 19.663227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187006, -0.155511, 0.969972,
		0.168274, -0.967725, -0.187593,
		0.967839, 0.198302, -0.154802,
		35.230350, 37.726612, 19.616787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865223, 36.993183, 19.684074>,  <34.552864, 37.587803, 19.725147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865223, 36.993183, 19.684074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133213, 37.267220, 19.798470>,  <35.294006, 37.431641, 19.867105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133213, 37.267220, 19.798470>,  <34.865223, 36.993183, 19.684074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133213, 37.267220, 19.798470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061896, -0.435431, 0.898092,
		0.739802, -0.583994, -0.334130,
		0.669971, 0.685092, 0.285986,
		35.334206, 37.472748, 19.884266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264114, 36.556000, 20.068899>,  <34.865223, 36.993183, 19.684074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264114, 36.556000, 20.068899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308121, 36.938030, 20.178967>,  <35.334526, 37.167248, 20.245007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308121, 36.938030, 20.178967>,  <35.264114, 36.556000, 20.068899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308121, 36.938030, 20.178967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079852, -0.284448, 0.955360,
		0.990716, -0.083136, -0.107560,
		0.110020, 0.955080, 0.275169,
		35.341125, 37.224556, 20.261517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800453, 36.565186, 20.624352>,  <35.264114, 36.556000, 20.068899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800453, 36.565186, 20.624352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581642, 36.898705, 20.654121>,  <35.450356, 37.098816, 20.671984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581642, 36.898705, 20.654121>,  <35.800453, 36.565186, 20.624352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581642, 36.898705, 20.654121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080337, -0.140785, 0.986775,
		0.833250, 0.533816, 0.143998,
		-0.547029, 0.833799, 0.074424,
		35.417534, 37.148846, 20.676449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115154, 36.887405, 21.148161>,  <35.800453, 36.565186, 20.624352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115154, 36.887405, 21.148161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747055, 37.041355, 21.119810>,  <35.526196, 37.133724, 21.102800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747055, 37.041355, 21.119810>,  <36.115154, 36.887405, 21.148161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747055, 37.041355, 21.119810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090770, -0.033743, 0.995300,
		0.380670, 0.922353, 0.065987,
		-0.920245, 0.384871, -0.070877,
		35.470982, 37.156815, 21.098547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087608, 37.457008, 21.670309>,  <36.115154, 36.887405, 21.148161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087608, 37.457008, 21.670309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702103, 37.386978, 21.589798>,  <35.470798, 37.344959, 21.541491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702103, 37.386978, 21.589798>,  <36.087608, 37.457008, 21.670309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702103, 37.386978, 21.589798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181587, -0.122177, 0.975755,
		-0.195421, 0.976945, 0.085958,
		-0.963762, -0.175074, -0.201277,
		35.412975, 37.334457, 21.529415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797527, 37.888229, 22.051794>,  <36.087608, 37.457008, 21.670309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797527, 37.888229, 22.051794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528912, 37.601364, 21.977261>,  <35.367744, 37.429245, 21.932541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528912, 37.601364, 21.977261>,  <35.797527, 37.888229, 22.051794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528912, 37.601364, 21.977261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211019, -0.055963, 0.975879,
		-0.710290, 0.694657, -0.113754,
		-0.671535, -0.717161, -0.186335,
		35.327450, 37.386215, 21.921360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294754, 38.031609, 22.480707>,  <35.797527, 37.888229, 22.051794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294754, 38.031609, 22.480707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229713, 37.653126, 22.368814>,  <35.190689, 37.426037, 22.301680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229713, 37.653126, 22.368814>,  <35.294754, 38.031609, 22.480707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229713, 37.653126, 22.368814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063248, -0.272926, 0.959954,
		-0.984663, 0.173781, -0.015468,
		-0.162600, -0.946209, -0.279731,
		35.180935, 37.369263, 22.284895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754627, 37.837814, 22.909702>,  <35.294754, 38.031609, 22.480707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754627, 37.837814, 22.909702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912708, 37.490627, 22.789406>,  <35.007557, 37.282314, 22.717228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912708, 37.490627, 22.789406>,  <34.754627, 37.837814, 22.909702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912708, 37.490627, 22.789406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152370, -0.384797, 0.910338,
		-0.905871, -0.313940, -0.284324,
		0.395199, -0.867970, -0.300742,
		35.031269, 37.230236, 22.699183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221523, 37.290127, 23.197596>,  <34.754627, 37.837814, 22.909702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221523, 37.290127, 23.197596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552818, 37.079277, 23.121527>,  <34.751595, 36.952766, 23.075886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552818, 37.079277, 23.121527>,  <34.221523, 37.290127, 23.197596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552818, 37.079277, 23.121527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100554, -0.473652, 0.874953,
		-0.551283, -0.705546, -0.445300,
		0.828236, -0.527124, -0.190171,
		34.801289, 36.921139, 23.064476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043259, 36.580936, 23.284519>,  <34.221523, 37.290127, 23.197596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043259, 36.580936, 23.284519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442764, 36.576401, 23.303871>,  <34.682468, 36.573681, 23.315481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442764, 36.576401, 23.303871>,  <34.043259, 36.580936, 23.284519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442764, 36.576401, 23.303871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047744, -0.488808, 0.871084,
		0.013771, -0.872318, -0.488745,
		0.998765, -0.011339, 0.048379,
		34.742393, 36.572998, 23.318384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236919, 35.910225, 23.217453>,  <34.043259, 36.580936, 23.284519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236919, 35.910225, 23.217453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498108, 36.139805, 23.415123>,  <34.654819, 36.277554, 23.533724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498108, 36.139805, 23.415123>,  <34.236919, 35.910225, 23.217453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498108, 36.139805, 23.415123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075874, -0.599622, 0.796679,
		0.753573, -0.557703, -0.347987,
		0.652971, 0.573952, 0.494174,
		34.694000, 36.311989, 23.563375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798809, 35.529987, 23.432364>,  <34.236919, 35.910225, 23.217453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798809, 35.529987, 23.432364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843540, 35.858456, 23.656210>,  <34.870380, 36.055538, 23.790518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843540, 35.858456, 23.656210>,  <34.798809, 35.529987, 23.432364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843540, 35.858456, 23.656210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240824, -0.568759, 0.786459,
		0.964105, 0.046818, -0.261363,
		0.111832, 0.821171, 0.559618,
		34.877090, 36.104809, 23.824095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450451, 35.443916, 23.669897>,  <34.798809, 35.529987, 23.432364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450451, 35.443916, 23.669897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242104, 35.674213, 23.921999>,  <35.117096, 35.812389, 24.073259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242104, 35.674213, 23.921999>,  <35.450451, 35.443916, 23.669897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242104, 35.674213, 23.921999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190631, -0.641220, 0.743301,
		0.832079, 0.507309, 0.224239,
		-0.520870, 0.575738, 0.630254,
		35.085842, 35.846935, 24.111074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783630, 35.394928, 24.344685>,  <35.450451, 35.443916, 23.669897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783630, 35.394928, 24.344685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429680, 35.553459, 24.442593>,  <35.217308, 35.648579, 24.501337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429680, 35.553459, 24.442593>,  <35.783630, 35.394928, 24.344685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429680, 35.553459, 24.442593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018040, -0.495911, 0.868186,
		0.465471, 0.772655, 0.431672,
		-0.884879, 0.396328, 0.244771,
		35.164215, 35.672359, 24.516024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911198, 35.754223, 24.931873>,  <35.783630, 35.394928, 24.344685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911198, 35.754223, 24.931873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519608, 35.673176, 24.922413>,  <35.284653, 35.624550, 24.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519608, 35.673176, 24.922413>,  <35.911198, 35.754223, 24.931873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519608, 35.673176, 24.922413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073036, -0.456396, 0.886774,
		-0.190468, 0.866400, 0.461598,
		-0.978973, -0.202615, -0.023650,
		35.225914, 35.612392, 24.915318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630836, 35.874283, 25.647800>,  <35.911198, 35.754223, 24.931873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630836, 35.874283, 25.647800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350155, 35.654087, 25.466879>,  <35.181747, 35.521969, 25.358326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350155, 35.654087, 25.466879>,  <35.630836, 35.874283, 25.647800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350155, 35.654087, 25.466879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287881, -0.361638, 0.886760,
		-0.651720, 0.752451, 0.095287,
		-0.701702, -0.550487, -0.452303,
		35.139645, 35.488941, 25.331188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173119, 35.830177, 26.132170>,  <35.630836, 35.874283, 25.647800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173119, 35.830177, 26.132170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052948, 35.542397, 25.881685>,  <34.980846, 35.369728, 25.731396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052948, 35.542397, 25.881685>,  <35.173119, 35.830177, 26.132170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052948, 35.542397, 25.881685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310517, -0.546999, 0.777414,
		-0.901846, 0.428001, -0.059071,
		-0.300422, -0.719450, -0.626210,
		34.962822, 35.326561, 25.693823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513176, 35.864292, 26.211874>,  <35.173119, 35.830177, 26.132170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513176, 35.864292, 26.211874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638966, 35.504005, 26.091999>,  <34.714439, 35.287834, 26.020073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638966, 35.504005, 26.091999>,  <34.513176, 35.864292, 26.211874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638966, 35.504005, 26.091999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336143, -0.400912, 0.852220,
		-0.887758, -0.167262, -0.428846,
		0.314473, -0.900718, -0.299689,
		34.733307, 35.233791, 26.002092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980915, 35.577446, 26.399611>,  <34.513176, 35.864292, 26.211874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980915, 35.577446, 26.399611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275318, 35.307911, 26.373575>,  <34.451958, 35.146191, 26.357954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275318, 35.307911, 26.373575>,  <33.980915, 35.577446, 26.399611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275318, 35.307911, 26.373575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322536, -0.433567, 0.841421,
		-0.595205, -0.598296, -0.536445,
		0.736004, -0.673841, -0.065089,
		34.496120, 35.105759, 26.354048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612293, 34.969292, 26.472404>,  <33.980915, 35.577446, 26.399611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612293, 34.969292, 26.472404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992542, 34.904560, 26.578333>,  <34.220692, 34.865719, 26.641890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992542, 34.904560, 26.578333>,  <33.612293, 34.969292, 26.472404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992542, 34.904560, 26.578333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307411, -0.608266, 0.731786,
		0.042656, -0.777060, -0.627979,
		0.950620, -0.161832, 0.264823,
		34.277729, 34.856010, 26.657780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613583, 34.297989, 26.703505>,  <33.612293, 34.969292, 26.472404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613583, 34.297989, 26.703505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980202, 34.389606, 26.834641>,  <34.200172, 34.444576, 26.913322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980202, 34.389606, 26.834641>,  <33.613583, 34.297989, 26.703505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980202, 34.389606, 26.834641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142759, -0.578366, 0.803189,
		0.373582, -0.782962, -0.497401,
		0.916546, 0.229048, 0.327841,
		34.255165, 34.458321, 26.932993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927158, 33.639835, 26.882950>,  <33.613583, 34.297989, 26.703505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927158, 33.639835, 26.882950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114983, 33.921795, 27.095602>,  <34.227676, 34.090973, 27.223194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114983, 33.921795, 27.095602>,  <33.927158, 33.639835, 26.882950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114983, 33.921795, 27.095602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251280, -0.470543, 0.845842,
		0.846390, -0.530758, -0.043819,
		0.469556, 0.704901, 0.531631,
		34.255848, 34.133266, 27.255091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458782, 33.331448, 27.324926>,  <33.927158, 33.639835, 26.882950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458782, 33.331448, 27.324926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351452, 33.672676, 27.503931>,  <34.287052, 33.877415, 27.611334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351452, 33.672676, 27.503931>,  <34.458782, 33.331448, 27.324926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351452, 33.672676, 27.503931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027327, -0.471102, 0.881656,
		0.962940, 0.224345, 0.149722,
		-0.268329, 0.853072, 0.447512,
		34.270954, 33.928596, 27.638184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863255, 33.286789, 27.835539>,  <34.458782, 33.331448, 27.324926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863255, 33.286789, 27.835539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578461, 33.543854, 27.948723>,  <34.407585, 33.698093, 28.016634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578461, 33.543854, 27.948723>,  <34.863255, 33.286789, 27.835539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578461, 33.543854, 27.948723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010734, -0.392960, 0.919493,
		0.702114, 0.657702, 0.272883,
		-0.711984, 0.642659, 0.282962,
		34.364864, 33.736652, 28.033611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059856, 33.468414, 28.508213>,  <34.863255, 33.286789, 27.835539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059856, 33.468414, 28.508213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680874, 33.595379, 28.492378>,  <34.453484, 33.671558, 28.482878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680874, 33.595379, 28.492378>,  <35.059856, 33.468414, 28.508213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680874, 33.595379, 28.492378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194146, -0.472273, 0.859805,
		0.254219, 0.822317, 0.509085,
		-0.947460, 0.317415, -0.039589,
		34.396637, 33.690605, 28.480501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913994, 33.669151, 29.196850>,  <35.059856, 33.468414, 28.508213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913994, 33.669151, 29.196850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543091, 33.654484, 29.047804>,  <34.320549, 33.645683, 28.958376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543091, 33.654484, 29.047804>,  <34.913994, 33.669151, 29.196850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543091, 33.654484, 29.047804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311203, -0.477848, 0.821471,
		-0.208178, 0.877677, 0.431678,
		-0.927262, -0.036673, -0.372613,
		34.264912, 33.643482, 28.936020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484818, 34.065048, 29.651321>,  <34.913994, 33.669151, 29.196850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484818, 34.065048, 29.651321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281986, 33.783997, 29.451645>,  <34.160290, 33.615364, 29.331839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281986, 33.783997, 29.451645>,  <34.484818, 34.065048, 29.651321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281986, 33.783997, 29.451645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428255, -0.297228, 0.853378,
		-0.747980, 0.646506, -0.150187,
		-0.507074, -0.702627, -0.499190,
		34.129864, 33.573208, 29.301888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755165, 34.143822, 29.838219>,  <34.484818, 34.065048, 29.651321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755165, 34.143822, 29.838219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795845, 33.769615, 29.702890>,  <33.820251, 33.545090, 29.621695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795845, 33.769615, 29.702890>,  <33.755165, 34.143822, 29.838219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795845, 33.769615, 29.702890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489849, -0.343089, 0.801460,
		-0.865855, 0.084219, -0.493155,
		0.101698, -0.935520, -0.338320,
		33.826355, 33.488960, 29.601395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160324, 33.818951, 30.034943>,  <33.755165, 34.143822, 29.838219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160324, 33.818951, 30.034943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399780, 33.502804, 29.982868>,  <33.543453, 33.313118, 29.951624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399780, 33.502804, 29.982868>,  <33.160324, 33.818951, 30.034943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399780, 33.502804, 29.982868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501782, -0.496708, 0.708163,
		-0.624373, -0.358612, -0.693942,
		0.598643, -0.790366, -0.130186,
		33.579372, 33.265694, 29.943813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740326, 33.239983, 30.080248>,  <33.160324, 33.818951, 30.034943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740326, 33.239983, 30.080248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097305, 33.077263, 30.158276>,  <33.311493, 32.979633, 30.205091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097305, 33.077263, 30.158276>,  <32.740326, 33.239983, 30.080248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097305, 33.077263, 30.158276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395271, -0.496607, 0.772750,
		-0.217479, -0.766745, -0.603990,
		0.892449, -0.406796, 0.195071,
		33.365040, 32.955223, 30.216797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585464, 32.455307, 30.347599>,  <32.740326, 33.239983, 30.080248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585464, 32.455307, 30.347599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956535, 32.549049, 30.463867>,  <33.179176, 32.605293, 30.533628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956535, 32.549049, 30.463867>,  <32.585464, 32.455307, 30.347599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956535, 32.549049, 30.463867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129358, -0.528548, 0.838989,
		0.350255, -0.815913, -0.460007,
		0.927679, 0.234355, 0.290672,
		33.234840, 32.619354, 30.551069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930771, 31.849276, 30.518217>,  <32.585464, 32.455307, 30.347599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930771, 31.849276, 30.518217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145763, 32.094208, 30.750135>,  <33.274761, 32.241169, 30.889286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145763, 32.094208, 30.750135>,  <32.930771, 31.849276, 30.518217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145763, 32.094208, 30.750135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196726, -0.577530, 0.792311,
		0.820007, -0.539914, -0.189951,
		0.537483, 0.612332, 0.579794,
		33.307007, 32.277908, 30.924074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384232, 31.420757, 30.930143>,  <32.930771, 31.849276, 30.518217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384232, 31.420757, 30.930143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352013, 31.778603, 31.105953>,  <33.332680, 31.993309, 31.211439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352013, 31.778603, 31.105953>,  <33.384232, 31.420757, 30.930143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352013, 31.778603, 31.105953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013961, -0.439902, 0.897937,
		0.996653, 0.078463, 0.022944,
		-0.080548, 0.894611, 0.439525,
		33.327847, 32.046986, 31.237810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757694, 31.332687, 31.526573>,  <33.384232, 31.420757, 30.930143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757694, 31.332687, 31.526573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546009, 31.662033, 31.608551>,  <33.418999, 31.859640, 31.657738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546009, 31.662033, 31.608551>,  <33.757694, 31.332687, 31.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546009, 31.662033, 31.608551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034305, -0.262107, 0.964429,
		0.847794, 0.503360, 0.166956,
		-0.529215, 0.823365, 0.204945,
		33.387245, 31.909042, 31.670034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953968, 31.508949, 32.224697>,  <33.757694, 31.332687, 31.526573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953968, 31.508949, 32.224697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604355, 31.679697, 32.131878>,  <33.394588, 31.782146, 32.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604355, 31.679697, 32.131878>,  <33.953968, 31.508949, 32.224697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604355, 31.679697, 32.131878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343716, -0.205682, 0.916272,
		0.343400, 0.880612, 0.326495,
		-0.874034, 0.426870, -0.232049,
		33.342144, 31.807758, 32.062263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815929, 31.999989, 32.817242>,  <33.953968, 31.508949, 32.224697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815929, 31.999989, 32.817242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496708, 31.866655, 32.616447>,  <33.305176, 31.786655, 32.495972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496708, 31.866655, 32.616447>,  <33.815929, 31.999989, 32.817242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496708, 31.866655, 32.616447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511127, -0.066754, 0.856909,
		-0.319146, 0.940443, -0.117102,
		-0.798057, -0.333333, -0.501990,
		33.257290, 31.766655, 32.465851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425545, 32.329857, 32.448872>,  <33.815929, 31.999989, 32.817242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425545, 32.329857, 32.448872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644463, 32.584366, 32.666355>,  <34.775814, 32.737072, 32.796844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644463, 32.584366, 32.666355>,  <34.425545, 32.329857, 32.448872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644463, 32.584366, 32.666355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255084, 0.491916, -0.832437,
		-0.797118, 0.594282, 0.106921,
		0.547298, 0.636276, 0.543707,
		34.808651, 32.775249, 32.829468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151878, 33.147152, 32.408146>,  <34.425545, 32.329857, 32.448872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151878, 33.147152, 32.408146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540180, 33.092422, 32.487053>,  <34.773163, 33.059586, 32.534397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540180, 33.092422, 32.487053>,  <34.151878, 33.147152, 32.408146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540180, 33.092422, 32.487053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236312, 0.689430, -0.684721,
		-0.042314, 0.711312, 0.701601,
		0.970755, -0.136823, 0.197264,
		34.831406, 33.051376, 32.546230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423550, 33.776260, 32.309242>,  <34.151878, 33.147152, 32.408146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423550, 33.776260, 32.309242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742874, 33.535393, 32.313057>,  <34.934471, 33.390873, 32.315346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742874, 33.535393, 32.313057>,  <34.423550, 33.776260, 32.309242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742874, 33.535393, 32.313057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480191, 0.626889, -0.613537,
		0.363469, 0.494377, 0.789609,
		0.798315, -0.602165, 0.009540,
		34.982368, 33.354744, 32.315918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996372, 34.260212, 32.402599>,  <34.423550, 33.776260, 32.309242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996372, 34.260212, 32.402599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151657, 33.923363, 32.252869>,  <35.244827, 33.721252, 32.163029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151657, 33.923363, 32.252869>,  <34.996372, 34.260212, 32.402599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151657, 33.923363, 32.252869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564469, 0.538358, -0.625736,
		0.728468, 0.031624, 0.684350,
		0.388214, -0.842123, -0.374326,
		35.268120, 33.670727, 32.140572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680191, 34.415817, 32.261612>,  <34.996372, 34.260212, 32.402599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680191, 34.415817, 32.261612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643841, 34.074360, 32.056465>,  <35.622032, 33.869484, 31.933378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643841, 34.074360, 32.056465>,  <35.680191, 34.415817, 32.261612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643841, 34.074360, 32.056465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576498, 0.374836, -0.726049,
		0.812029, -0.361645, 0.458062,
		-0.090874, -0.853645, -0.512866,
		35.616577, 33.818268, 31.902605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388145, 34.406696, 31.966135>,  <35.680191, 34.415817, 32.261612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388145, 34.406696, 31.966135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139027, 34.171791, 31.759352>,  <35.989555, 34.030846, 31.635283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139027, 34.171791, 31.759352>,  <36.388145, 34.406696, 31.966135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139027, 34.171791, 31.759352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405977, 0.322260, -0.855179,
		0.668814, -0.742473, 0.037716,
		-0.622793, -0.587267, -0.516958,
		35.952190, 33.995609, 31.604263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887741, 33.967388, 31.483578>,  <36.388145, 34.406696, 31.966135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887741, 33.967388, 31.483578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510818, 33.974125, 31.349850>,  <36.284664, 33.978168, 31.269613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510818, 33.974125, 31.349850>,  <36.887741, 33.967388, 31.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510818, 33.974125, 31.349850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330879, 0.198175, -0.922630,
		0.050714, -0.980022, -0.192315,
		-0.942309, 0.016843, -0.334319,
		36.228127, 33.979176, 31.249554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957977, 33.712448, 30.791605>,  <36.887741, 33.967388, 31.483578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957977, 33.712448, 30.791605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611313, 33.904968, 30.739079>,  <36.403313, 34.020481, 30.707563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611313, 33.904968, 30.739079>,  <36.957977, 33.712448, 30.791605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611313, 33.904968, 30.739079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246727, 0.184716, -0.951318,
		-0.433617, -0.856870, -0.278837,
		-0.866661, 0.481304, -0.131317,
		36.351315, 34.049358, 30.699684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724796, 33.553692, 30.181234>,  <36.957977, 33.712448, 30.791605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724796, 33.553692, 30.181234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503666, 33.877144, 30.261728>,  <36.370987, 34.071217, 30.310024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503666, 33.877144, 30.261728>,  <36.724796, 33.553692, 30.181234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503666, 33.877144, 30.261728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194769, 0.360192, -0.912320,
		-0.810215, -0.465160, -0.356620,
		-0.552826, 0.808634, 0.201234,
		36.337818, 34.119736, 30.322098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331642, 33.546486, 29.467758>,  <36.724796, 33.553692, 30.181234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331642, 33.546486, 29.467758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315723, 33.908463, 29.637230>,  <36.306171, 34.125648, 29.738913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315723, 33.908463, 29.637230>,  <36.331642, 33.546486, 29.467758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315723, 33.908463, 29.637230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134506, 0.425005, -0.895142,
		-0.990113, 0.021366, -0.138632,
		-0.039794, 0.904939, 0.423677,
		36.303783, 34.179943, 29.764334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843472, 34.086468, 29.079237>,  <36.331642, 33.546486, 29.467758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843472, 34.086468, 29.079237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090469, 34.320557, 29.289459>,  <36.238667, 34.461010, 29.415592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090469, 34.320557, 29.289459>,  <35.843472, 34.086468, 29.079237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090469, 34.320557, 29.289459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091974, 0.609856, -0.787157,
		-0.781179, 0.534404, 0.322758,
		0.617496, 0.585225, 0.525557,
		36.275719, 34.496124, 29.447126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533966, 34.828800, 29.035095>,  <35.843472, 34.086468, 29.079237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533966, 34.828800, 29.035095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921406, 34.852222, 29.131742>,  <36.153870, 34.866276, 29.189730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921406, 34.852222, 29.131742>,  <35.533966, 34.828800, 29.035095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921406, 34.852222, 29.131742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116430, 0.751864, -0.648957,
		-0.219662, 0.656714, 0.721440,
		0.968603, 0.058553, 0.241617,
		36.211987, 34.869789, 29.204227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629707, 35.509155, 28.832806>,  <35.533966, 34.828800, 29.035095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629707, 35.509155, 28.832806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021427, 35.446018, 28.883507>,  <36.256458, 35.408138, 28.913927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021427, 35.446018, 28.883507>,  <35.629707, 35.509155, 28.832806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021427, 35.446018, 28.883507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200530, 0.842036, -0.500763,
		-0.027691, 0.515813, 0.856254,
		0.979296, -0.157838, 0.126753,
		36.315216, 35.398666, 28.921532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949768, 36.110611, 29.191429>,  <35.629707, 35.509155, 28.832806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949768, 36.110611, 29.191429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228962, 35.902466, 28.994635>,  <36.396477, 35.777580, 28.876558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228962, 35.902466, 28.994635>,  <35.949768, 36.110611, 29.191429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228962, 35.902466, 28.994635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278825, 0.830278, -0.482592,
		0.659606, 0.199663, 0.724607,
		0.697981, -0.520359, -0.491985,
		36.438354, 35.746357, 28.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539158, 36.658749, 28.978689>,  <35.949768, 36.110611, 29.191429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539158, 36.658749, 28.978689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605042, 36.357304, 28.724150>,  <36.644573, 36.176437, 28.571426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605042, 36.357304, 28.724150>,  <36.539158, 36.658749, 28.978689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605042, 36.357304, 28.724150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364365, 0.646015, -0.670748,
		0.916575, -0.121385, 0.380994,
		0.164710, -0.753612, -0.636349,
		36.654453, 36.131222, 28.533245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179840, 36.743195, 28.643600>,  <36.539158, 36.658749, 28.978689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179840, 36.743195, 28.643600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012840, 36.477802, 28.395248>,  <36.912640, 36.318569, 28.246237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012840, 36.477802, 28.395248>,  <37.179840, 36.743195, 28.643600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012840, 36.477802, 28.395248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399512, 0.479668, -0.781223,
		0.816139, -0.574210, 0.064805,
		-0.417502, -0.663477, -0.620879,
		36.887589, 36.278759, 28.208984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688801, 36.667461, 28.043079>,  <37.179840, 36.743195, 28.643600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688801, 36.667461, 28.043079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330414, 36.538639, 27.920750>,  <37.115383, 36.461346, 27.847351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330414, 36.538639, 27.920750>,  <37.688801, 36.667461, 28.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330414, 36.538639, 27.920750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083986, 0.553314, -0.828728,
		0.436112, -0.768195, -0.468702,
		-0.895965, -0.322054, -0.305825,
		37.061626, 36.442024, 27.829002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766331, 36.338768, 27.411158>,  <37.688801, 36.667461, 28.043079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766331, 36.338768, 27.411158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374729, 36.420254, 27.408083>,  <37.139771, 36.469147, 27.406239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374729, 36.420254, 27.408083>,  <37.766331, 36.338768, 27.411158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374729, 36.420254, 27.408083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117018, 0.530677, -0.839457,
		-0.166930, -0.822729, -0.543372,
		-0.979001, 0.203715, -0.007688,
		37.081028, 36.481369, 27.405777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489803, 36.426975, 26.627232>,  <37.766331, 36.338768, 27.411158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489803, 36.426975, 26.627232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164673, 36.583206, 26.800098>,  <36.969597, 36.676945, 26.903818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164673, 36.583206, 26.800098>,  <37.489803, 36.426975, 26.627232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164673, 36.583206, 26.800098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196683, 0.514312, -0.834745,
		-0.548301, -0.763500, -0.341225,
		-0.812824, 0.390578, 0.432165,
		36.920826, 36.700378, 26.929749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880848, 36.162369, 26.294937>,  <37.489803, 36.426975, 26.627232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880848, 36.162369, 26.294937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791458, 36.513596, 26.464193>,  <36.737823, 36.724331, 26.565748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791458, 36.513596, 26.464193>,  <36.880848, 36.162369, 26.294937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791458, 36.513596, 26.464193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319339, 0.344204, -0.882919,
		-0.920913, -0.332437, 0.203480,
		-0.223477, 0.878071, 0.423142,
		36.724415, 36.777016, 26.591137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289246, 36.309612, 26.037901>,  <36.880848, 36.162369, 26.294937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289246, 36.309612, 26.037901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440075, 36.662453, 26.150835>,  <36.530575, 36.874157, 26.218596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440075, 36.662453, 26.150835>,  <36.289246, 36.309612, 26.037901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440075, 36.662453, 26.150835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281176, 0.399479, -0.872557,
		-0.882470, 0.249635, 0.398659,
		0.377077, 0.882099, 0.282337,
		36.553200, 36.927082, 26.235537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729126, 36.870338, 25.953419>,  <36.289246, 36.309612, 26.037901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729126, 36.870338, 25.953419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085232, 37.050972, 25.929762>,  <36.298897, 37.159351, 25.915567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085232, 37.050972, 25.929762>,  <35.729126, 36.870338, 25.953419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085232, 37.050972, 25.929762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227142, 0.327685, -0.917077,
		-0.394760, 0.829875, 0.394300,
		0.890265, 0.451587, -0.059143,
		36.352310, 37.186447, 25.912020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667015, 37.401207, 25.559078>,  <35.729126, 36.870338, 25.953419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667015, 37.401207, 25.559078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066521, 37.419220, 25.550753>,  <36.306225, 37.430027, 25.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066521, 37.419220, 25.550753>,  <35.667015, 37.401207, 25.559078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066521, 37.419220, 25.550753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037204, 0.402261, -0.914769,
		-0.032825, 0.914417, 0.403441,
		0.998769, 0.045037, -0.020816,
		36.366150, 37.432732, 25.544508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852261, 38.124832, 25.339485>,  <35.667015, 37.401207, 25.559078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852261, 38.124832, 25.339485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164032, 37.882500, 25.275663>,  <36.351093, 37.737099, 25.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164032, 37.882500, 25.275663>,  <35.852261, 38.124832, 25.339485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164032, 37.882500, 25.275663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117835, 0.391904, -0.912429,
		0.615310, 0.692372, 0.376849,
		0.779429, -0.605832, -0.159556,
		36.397861, 37.700748, 25.227797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411327, 38.574711, 25.092733>,  <35.852261, 38.124832, 25.339485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411327, 38.574711, 25.092733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491112, 38.205994, 24.959759>,  <36.538982, 37.984764, 24.879974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491112, 38.205994, 24.959759>,  <36.411327, 38.574711, 25.092733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491112, 38.205994, 24.959759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109260, 0.358062, -0.927283,
		0.973795, 0.148637, 0.172135,
		0.199464, -0.921791, -0.332438,
		36.550949, 37.929455, 24.860027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943447, 38.674068, 24.760548>,  <36.411327, 38.574711, 25.092733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943447, 38.674068, 24.760548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844364, 38.313786, 24.617790>,  <36.784912, 38.097618, 24.532135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844364, 38.313786, 24.617790>,  <36.943447, 38.674068, 24.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844364, 38.313786, 24.617790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085704, 0.346560, -0.934104,
		0.965036, -0.261974, -0.008652,
		-0.247710, -0.900703, -0.356895,
		36.770050, 38.043575, 24.510721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419437, 38.585712, 24.297468>,  <36.943447, 38.674068, 24.760548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419437, 38.585712, 24.297468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116581, 38.352165, 24.180281>,  <36.934868, 38.212036, 24.109968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116581, 38.352165, 24.180281>,  <37.419437, 38.585712, 24.297468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116581, 38.352165, 24.180281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325997, 0.050929, -0.943998,
		0.566089, -0.810251, 0.151778,
		-0.757146, -0.583866, -0.292969,
		36.889439, 38.177006, 24.092390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727154, 38.289902, 23.858540>,  <37.419437, 38.585712, 24.297468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727154, 38.289902, 23.858540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348286, 38.189693, 23.778437>,  <37.120964, 38.129570, 23.730375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348286, 38.189693, 23.778437>,  <37.727154, 38.289902, 23.858540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348286, 38.189693, 23.778437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196548, 0.040001, -0.979678,
		0.253438, -0.967285, 0.011351,
		-0.947174, -0.250519, -0.200255,
		37.064133, 38.114536, 23.718361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705921, 37.639469, 23.566578>,  <37.727154, 38.289902, 23.858540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705921, 37.639469, 23.566578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367310, 37.810940, 23.440329>,  <37.164143, 37.913822, 23.364580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367310, 37.810940, 23.440329>,  <37.705921, 37.639469, 23.566578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367310, 37.810940, 23.440329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286901, -0.132027, -0.948819,
		-0.448408, -0.893759, -0.011223,
		-0.846533, 0.428677, -0.315622,
		37.113350, 37.939545, 23.345642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424496, 37.228409, 23.127060>,  <37.705921, 37.639469, 23.566578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424496, 37.228409, 23.127060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271587, 37.583317, 23.023819>,  <37.179844, 37.796261, 22.961874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271587, 37.583317, 23.023819>,  <37.424496, 37.228409, 23.127060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271587, 37.583317, 23.023819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135024, -0.222682, -0.965495,
		-0.914133, -0.403930, -0.034678,
		-0.382270, 0.887273, -0.258101,
		37.156906, 37.849499, 22.946388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037285, 37.089684, 22.521601>,  <37.424496, 37.228409, 23.127060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037285, 37.089684, 22.521601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087032, 37.486565, 22.518465>,  <37.116882, 37.724693, 22.516584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087032, 37.486565, 22.518465>,  <37.037285, 37.089684, 22.521601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087032, 37.486565, 22.518465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185538, -0.031015, -0.982148,
		-0.974735, 0.120696, -0.187949,
		0.124371, 0.992205, -0.007838,
		37.124344, 37.784225, 22.516113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893215, 37.309113, 21.887995>,  <37.037285, 37.089684, 22.521601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893215, 37.309113, 21.887995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061607, 37.655678, 21.995407>,  <37.162643, 37.863617, 22.059855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061607, 37.655678, 21.995407>,  <36.893215, 37.309113, 21.887995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061607, 37.655678, 21.995407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269870, 0.163003, -0.949000,
		-0.865995, 0.471978, -0.165197,
		0.420979, 0.866410, 0.268533,
		37.187901, 37.915600, 22.075968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727833, 37.780903, 21.334864>,  <36.893215, 37.309113, 21.887995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727833, 37.780903, 21.334864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076775, 37.880653, 21.503056>,  <37.286140, 37.940502, 21.603970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076775, 37.880653, 21.503056>,  <36.727833, 37.780903, 21.334864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076775, 37.880653, 21.503056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430232, 0.016803, -0.902562,
		-0.232143, 0.968261, -0.092631,
		0.872359, 0.249376, 0.420478,
		37.338482, 37.955467, 21.629198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967793, 38.336349, 20.948435>,  <36.727833, 37.780903, 21.334864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967793, 38.336349, 20.948435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296070, 38.204002, 21.134760>,  <37.493038, 38.124596, 21.246555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296070, 38.204002, 21.134760>,  <36.967793, 38.336349, 20.948435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296070, 38.204002, 21.134760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514018, 0.071570, -0.854788,
		0.249485, 0.940959, 0.228810,
		0.820697, -0.330869, 0.465814,
		37.542278, 38.104740, 21.274504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486473, 38.702152, 20.682596>,  <36.967793, 38.336349, 20.948435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486473, 38.702152, 20.682596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666435, 38.388027, 20.852713>,  <37.774414, 38.199554, 20.954782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666435, 38.388027, 20.852713>,  <37.486473, 38.702152, 20.682596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666435, 38.388027, 20.852713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623029, -0.065197, -0.779477,
		0.639858, 0.615660, 0.459938,
		0.449907, -0.785310, 0.425291,
		37.801407, 38.152435, 20.980301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251495, 38.792778, 20.808535>,  <37.486473, 38.702152, 20.682596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251495, 38.792778, 20.808535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195820, 38.397816, 20.778454>,  <38.162415, 38.160839, 20.760405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195820, 38.397816, 20.778454>,  <38.251495, 38.792778, 20.808535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195820, 38.397816, 20.778454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668758, -0.037721, -0.742522,
		0.730334, -0.153646, 0.665586,
		-0.139192, -0.987406, -0.075203,
		38.154060, 38.101593, 20.755894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937572, 38.532795, 20.597591>,  <38.251495, 38.792778, 20.808535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937572, 38.532795, 20.597591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675671, 38.246014, 20.501862>,  <38.518528, 38.073944, 20.444424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675671, 38.246014, 20.501862>,  <38.937572, 38.532795, 20.597591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675671, 38.246014, 20.501862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485502, -0.156256, -0.860158,
		0.579295, -0.679386, 0.450390,
		-0.654756, -0.716951, -0.239325,
		38.479244, 38.030930, 20.430063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328850, 37.904667, 20.367685>,  <38.937572, 38.532795, 20.597591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328850, 37.904667, 20.367685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964458, 37.851608, 20.211466>,  <38.745823, 37.819775, 20.117735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964458, 37.851608, 20.211466>,  <39.328850, 37.904667, 20.367685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964458, 37.851608, 20.211466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411056, -0.213892, -0.886162,
		0.034013, -0.967809, 0.249377,
		-0.910975, -0.132649, -0.390549,
		38.691166, 37.811813, 20.094301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321102, 37.304802, 19.964161>,  <39.328850, 37.904667, 20.367685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321102, 37.304802, 19.964161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623173, 37.045525, 19.925058>,  <39.804413, 36.889957, 19.901596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623173, 37.045525, 19.925058>,  <39.321102, 37.304802, 19.964161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623173, 37.045525, 19.925058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193923, -0.363357, 0.911244,
		-0.626186, -0.669188, -0.400097,
		0.755172, -0.648197, -0.097758,
		39.849724, 36.851067, 19.895731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026054, 36.647339, 20.153305>,  <39.321102, 37.304802, 19.964161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026054, 36.647339, 20.153305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421810, 36.590008, 20.162817>,  <39.659264, 36.555607, 20.168524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421810, 36.590008, 20.162817>,  <39.026054, 36.647339, 20.153305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421810, 36.590008, 20.162817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085788, -0.444204, 0.891809,
		-0.117261, -0.884386, -0.451787,
		0.989389, -0.143332, 0.023782,
		39.718628, 36.547009, 20.169952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170467, 35.954197, 20.153772>,  <39.026054, 36.647339, 20.153305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170467, 35.954197, 20.153772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473236, 36.141182, 20.336443>,  <39.654896, 36.253372, 20.446045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473236, 36.141182, 20.336443>,  <39.170467, 35.954197, 20.153772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473236, 36.141182, 20.336443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191991, -0.508907, 0.839138,
		0.624671, -0.722837, -0.295453,
		0.756918, 0.467461, 0.456678,
		39.700310, 36.281422, 20.473446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597404, 35.404518, 20.472319>,  <39.170467, 35.954197, 20.153772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597404, 35.404518, 20.472319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724964, 35.733891, 20.660049>,  <39.801498, 35.931515, 20.772688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724964, 35.733891, 20.660049>,  <39.597404, 35.404518, 20.472319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724964, 35.733891, 20.660049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107371, -0.460606, 0.881087,
		0.941688, -0.331368, -0.058473,
		0.318897, 0.823430, 0.469326,
		39.820633, 35.980919, 20.800848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995293, 35.128143, 21.006834>,  <39.597404, 35.404518, 20.472319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995293, 35.128143, 21.006834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923218, 35.503277, 21.125488>,  <39.879974, 35.728359, 21.196682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923218, 35.503277, 21.125488>,  <39.995293, 35.128143, 21.006834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923218, 35.503277, 21.125488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211552, -0.331463, 0.919444,
		0.960614, 0.102914, 0.258126,
		-0.180183, 0.937838, 0.296637,
		39.869164, 35.784630, 21.214479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392216, 35.175110, 21.576511>,  <39.995293, 35.128143, 21.006834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392216, 35.175110, 21.576511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139137, 35.482147, 21.617487>,  <39.987289, 35.666370, 21.642073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139137, 35.482147, 21.617487>,  <40.392216, 35.175110, 21.576511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139137, 35.482147, 21.617487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404969, -0.440706, 0.801110,
		0.660074, 0.465374, 0.589686,
		-0.632694, 0.767597, 0.102437,
		39.949329, 35.712425, 21.648218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445255, 35.475304, 22.249985>,  <40.392216, 35.175110, 21.576511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445255, 35.475304, 22.249985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087429, 35.597904, 22.119871>,  <39.872734, 35.671467, 22.041803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087429, 35.597904, 22.119871>,  <40.445255, 35.475304, 22.249985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087429, 35.597904, 22.119871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412385, -0.285455, 0.865132,
		0.172314, 0.908058, 0.381757,
		-0.894565, 0.306505, -0.325282,
		39.819061, 35.689857, 22.022287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203629, 35.923679, 22.765184>,  <40.445255, 35.475304, 22.249985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203629, 35.923679, 22.765184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888477, 35.780807, 22.564520>,  <39.699387, 35.695084, 22.444122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888477, 35.780807, 22.564520>,  <40.203629, 35.923679, 22.765184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888477, 35.780807, 22.564520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418631, -0.286799, 0.861681,
		-0.451654, 0.888913, 0.076436,
		-0.787881, -0.357183, -0.501660,
		39.652111, 35.673653, 22.414022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702091, 36.240707, 23.130701>,  <40.203629, 35.923679, 22.765184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702091, 36.240707, 23.130701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533848, 35.932323, 22.939407>,  <39.432899, 35.747292, 22.824631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533848, 35.932323, 22.939407>,  <39.702091, 36.240707, 23.130701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533848, 35.932323, 22.939407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560776, -0.193441, 0.805053,
		-0.713174, 0.606796, -0.350973,
		-0.420610, -0.770960, -0.478233,
		39.407665, 35.701035, 22.795937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940739, 36.324280, 23.225973>,  <39.702091, 36.240707, 23.130701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940739, 36.324280, 23.225973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020790, 35.942970, 23.135445>,  <39.068821, 35.714184, 23.081127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020790, 35.942970, 23.135445>,  <38.940739, 36.324280, 23.225973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020790, 35.942970, 23.135445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608353, -0.301974, 0.733974,
		-0.768020, -0.009206, -0.640359,
		0.200129, -0.953272, -0.226322,
		39.080830, 35.656990, 23.067549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416615, 35.927383, 23.553350>,  <38.940739, 36.324280, 23.225973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416615, 35.927383, 23.553350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652020, 35.613609, 23.475054>,  <38.793262, 35.425346, 23.428076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652020, 35.613609, 23.475054>,  <38.416615, 35.927383, 23.553350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652020, 35.613609, 23.475054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256297, -0.410634, 0.875038,
		-0.766787, -0.464805, -0.442712,
		0.588515, -0.784434, -0.195742,
		38.828575, 35.378281, 23.416332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140556, 35.397667, 24.015459>,  <38.416615, 35.927383, 23.553350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140556, 35.397667, 24.015459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509876, 35.282467, 23.913815>,  <38.731468, 35.213345, 23.852827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509876, 35.282467, 23.913815>,  <38.140556, 35.397667, 24.015459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509876, 35.282467, 23.913815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125987, -0.397905, 0.908735,
		-0.362827, -0.871050, -0.331102,
		0.923301, -0.287999, -0.254111,
		38.786865, 35.196068, 23.837582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061058, 34.718296, 24.086523>,  <38.140556, 35.397667, 24.015459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061058, 34.718296, 24.086523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439255, 34.839783, 24.133512>,  <38.666172, 34.912674, 24.161705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439255, 34.839783, 24.133512>,  <38.061058, 34.718296, 24.086523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439255, 34.839783, 24.133512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076089, -0.556799, 0.827155,
		0.316629, -0.773131, -0.549559,
		0.945493, 0.303717, 0.117472,
		38.722904, 34.930897, 24.168755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423843, 34.127815, 24.422064>,  <38.061058, 34.718296, 24.086523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423843, 34.127815, 24.422064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671177, 34.436565, 24.481216>,  <38.819576, 34.621815, 24.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671177, 34.436565, 24.481216>,  <38.423843, 34.127815, 24.422064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671177, 34.436565, 24.481216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186915, -0.327200, 0.926284,
		0.763362, -0.545115, -0.346594,
		0.618337, 0.771874, 0.147882,
		38.856678, 34.668129, 24.525581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085152, 33.836391, 24.791393>,  <38.423843, 34.127815, 24.422064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085152, 33.836391, 24.791393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096001, 34.229652, 24.863689>,  <39.102512, 34.465611, 24.907068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096001, 34.229652, 24.863689>,  <39.085152, 33.836391, 24.791393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096001, 34.229652, 24.863689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303099, -0.180385, 0.935731,
		0.952573, 0.029402, -0.302886,
		0.027124, 0.983157, 0.180741,
		39.104137, 34.524601, 24.917912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587421, 33.838020, 25.261452>,  <39.085152, 33.836391, 24.791393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587421, 33.838020, 25.261452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385372, 34.182171, 25.288591>,  <39.264145, 34.388660, 25.304876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385372, 34.182171, 25.288591>,  <39.587421, 33.838020, 25.261452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385372, 34.182171, 25.288591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111534, -0.012882, 0.993677,
		0.855812, 0.509494, -0.089455,
		-0.505120, 0.860378, 0.067851,
		39.233837, 34.440285, 25.308947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982044, 34.265270, 25.786148>,  <39.587421, 33.838020, 25.261452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982044, 34.265270, 25.786148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599712, 34.382633, 25.793133>,  <39.370312, 34.453053, 25.797323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599712, 34.382633, 25.793133>,  <39.982044, 34.265270, 25.786148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599712, 34.382633, 25.793133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012578, -0.018528, 0.999749,
		0.293656, 0.955809, 0.014019,
		-0.955829, 0.293406, 0.017463,
		39.312965, 34.470654, 25.798372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028938, 34.677868, 26.298128>,  <39.982044, 34.265270, 25.786148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028938, 34.677868, 26.298128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634628, 34.644993, 26.239491>,  <39.398041, 34.625267, 26.204308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634628, 34.644993, 26.239491>,  <40.028938, 34.677868, 26.298128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634628, 34.644993, 26.239491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128441, -0.194116, 0.972534,
		-0.108385, 0.977530, 0.180799,
		-0.985777, -0.082186, -0.146595,
		39.338894, 34.620338, 26.195513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737373, 35.107265, 26.811464>,  <40.028938, 34.677868, 26.298128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737373, 35.107265, 26.811464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436050, 34.862000, 26.716339>,  <39.255257, 34.714840, 26.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436050, 34.862000, 26.716339>,  <39.737373, 35.107265, 26.811464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436050, 34.862000, 26.716339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204364, -0.125454, 0.970823,
		-0.625106, 0.779932, -0.030803,
		-0.753311, -0.613162, -0.237812,
		39.210056, 34.678051, 26.644995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096565, 35.325455, 27.158140>,  <39.737373, 35.107265, 26.811464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096565, 35.325455, 27.158140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063381, 34.933945, 27.083176>,  <39.043472, 34.699039, 27.038197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063381, 34.933945, 27.083176>,  <39.096565, 35.325455, 27.158140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063381, 34.933945, 27.083176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270457, -0.158889, 0.949530,
		-0.959151, 0.129457, -0.251535,
		-0.082958, -0.978772, -0.187411,
		39.038494, 34.640312, 27.026953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577084, 35.166630, 27.572243>,  <39.096565, 35.325455, 27.158140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577084, 35.166630, 27.572243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736038, 34.813560, 27.471872>,  <38.831409, 34.601719, 27.411650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736038, 34.813560, 27.471872>,  <38.577084, 35.166630, 27.572243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736038, 34.813560, 27.471872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284698, -0.378542, 0.880712,
		-0.872371, -0.278543, -0.401723,
		0.397385, -0.882678, -0.250928,
		38.855255, 34.548756, 27.396593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991955, 34.666893, 27.816692>,  <38.577084, 35.166630, 27.572243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991955, 34.666893, 27.816692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344162, 34.480259, 27.783234>,  <38.555485, 34.368279, 27.763159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344162, 34.480259, 27.783234>,  <37.991955, 34.666893, 27.816692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344162, 34.480259, 27.783234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228690, -0.572705, 0.787216,
		-0.415204, -0.674027, -0.610978,
		0.880515, -0.466580, -0.083646,
		38.608315, 34.340286, 27.758139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806953, 33.955235, 27.901546>,  <37.991955, 34.666893, 27.816692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806953, 33.955235, 27.901546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204338, 33.968662, 27.945194>,  <38.442768, 33.976719, 27.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204338, 33.968662, 27.945194>,  <37.806953, 33.955235, 27.901546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204338, 33.968662, 27.945194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062489, -0.639996, 0.765833,
		0.095546, -0.767644, -0.633714,
		0.993462, 0.033573, 0.109118,
		38.502377, 33.978733, 27.977930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095879, 33.314384, 27.999798>,  <37.806953, 33.955235, 27.901546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095879, 33.314384, 27.999798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364094, 33.531273, 28.202332>,  <38.525024, 33.661407, 28.323851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364094, 33.531273, 28.202332>,  <38.095879, 33.314384, 27.999798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364094, 33.531273, 28.202332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133463, -0.583202, 0.801288,
		0.729771, -0.604871, -0.318692,
		0.670538, 0.542223, 0.506332,
		38.565254, 33.693939, 28.354231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495903, 32.819977, 28.414341>,  <38.095879, 33.314384, 27.999798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495903, 32.819977, 28.414341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568794, 33.182686, 28.566420>,  <38.612530, 33.400311, 28.657667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568794, 33.182686, 28.566420>,  <38.495903, 32.819977, 28.414341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568794, 33.182686, 28.566420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014092, -0.389039, 0.921113,
		0.983155, -0.162497, -0.083673,
		0.182230, 0.906776, 0.380196,
		38.623463, 33.454720, 28.680479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805946, 32.625294, 29.013823>,  <38.495903, 32.819977, 28.414341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805946, 32.625294, 29.013823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729473, 33.014202, 29.067684>,  <38.683590, 33.247547, 29.100000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729473, 33.014202, 29.067684>,  <38.805946, 32.625294, 29.013823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729473, 33.014202, 29.067684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065192, -0.149458, 0.986617,
		0.979388, 0.179842, 0.091958,
		-0.191179, 0.972275, 0.134653,
		38.672119, 33.305885, 29.108080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306225, 32.919796, 29.412237>,  <38.805946, 32.625294, 29.013823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306225, 32.919796, 29.412237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993568, 33.163425, 29.466002>,  <38.805973, 33.309605, 29.498260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993568, 33.163425, 29.466002>,  <39.306225, 32.919796, 29.412237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993568, 33.163425, 29.466002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109371, -0.078313, 0.990911,
		0.614066, 0.789236, -0.005403,
		-0.781640, 0.609076, 0.134409,
		38.759075, 33.346149, 29.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569664, 33.536839, 29.839203>,  <39.306225, 32.919796, 29.412237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569664, 33.536839, 29.839203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177391, 33.488754, 29.900927>,  <38.942028, 33.459904, 29.937962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177391, 33.488754, 29.900927>,  <39.569664, 33.536839, 29.839203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177391, 33.488754, 29.900927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149999, 0.044166, 0.987699,
		-0.125549, 0.991765, -0.025281,
		-0.980682, -0.120212, 0.154309,
		38.883186, 33.452690, 29.947220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414024, 33.796043, 30.548590>,  <39.569664, 33.536839, 29.839203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414024, 33.796043, 30.548590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076717, 33.594711, 30.473158>,  <38.874332, 33.473911, 30.427898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076717, 33.594711, 30.473158>,  <39.414024, 33.796043, 30.548590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076717, 33.594711, 30.473158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077030, -0.234057, 0.969166,
		-0.531950, 0.831790, 0.158601,
		-0.843265, -0.503331, -0.188580,
		38.823738, 33.443710, 30.416584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851765, 34.018719, 31.072119>,  <39.414024, 33.796043, 30.548590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851765, 34.018719, 31.072119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735184, 33.667160, 30.921070>,  <38.665237, 33.456226, 30.830441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735184, 33.667160, 30.921070>,  <38.851765, 34.018719, 31.072119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735184, 33.667160, 30.921070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216606, -0.323872, 0.920972,
		-0.931740, 0.350211, -0.095982,
		-0.291449, -0.878897, -0.377622,
		38.647751, 33.403492, 30.807783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294872, 33.824043, 31.435118>,  <38.851765, 34.018719, 31.072119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294872, 33.824043, 31.435118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409016, 33.467388, 31.294523>,  <38.477501, 33.253395, 31.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409016, 33.467388, 31.294523>,  <38.294872, 33.824043, 31.435118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409016, 33.467388, 31.294523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046721, -0.379242, 0.924117,
		-0.957281, -0.247284, -0.149879,
		0.285360, -0.891643, -0.351488,
		38.494625, 33.199894, 31.189077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829376, 33.396294, 31.766188>,  <38.294872, 33.824043, 31.435118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829376, 33.396294, 31.766188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117252, 33.153774, 31.630863>,  <38.289978, 33.008263, 31.549667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117252, 33.153774, 31.630863>,  <37.829376, 33.396294, 31.766188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117252, 33.153774, 31.630863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182549, -0.635370, 0.750321,
		-0.669871, -0.478237, -0.567945,
		0.719687, -0.606296, -0.338314,
		38.333160, 32.971886, 31.529369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599220, 32.691429, 31.729687>,  <37.829376, 33.396294, 31.766188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599220, 32.691429, 31.729687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995720, 32.642906, 31.750515>,  <38.233620, 32.613792, 31.763012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995720, 32.642906, 31.750515>,  <37.599220, 32.691429, 31.729687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995720, 32.642906, 31.750515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126828, -0.765712, 0.630555,
		-0.036618, -0.631641, -0.774396,
		0.991248, -0.121305, 0.052071,
		38.293095, 32.606514, 31.766136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660965, 31.974670, 31.934149>,  <37.599220, 32.691429, 31.729687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660965, 31.974670, 31.934149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019402, 32.137356, 32.005257>,  <38.234463, 32.234966, 32.047920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019402, 32.137356, 32.005257>,  <37.660965, 31.974670, 31.934149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019402, 32.137356, 32.005257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173229, -0.689189, 0.703569,
		0.408670, -0.599668, -0.688032,
		0.896092, 0.406715, 0.177771,
		38.288231, 32.259369, 32.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154594, 31.426567, 31.927349>,  <37.660965, 31.974670, 31.934149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154594, 31.426567, 31.927349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332287, 31.716543, 32.137917>,  <38.438904, 31.890530, 32.264256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332287, 31.716543, 32.137917>,  <38.154594, 31.426567, 31.927349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332287, 31.716543, 32.137917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412803, -0.687114, 0.597886,
		0.795144, -0.048292, -0.604495,
		0.444231, 0.724943, 0.526420,
		38.465557, 31.934027, 32.295841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698502, 31.124001, 32.240547>,  <38.154594, 31.426567, 31.927349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698502, 31.124001, 32.240547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721027, 31.452072, 32.468281>,  <38.734543, 31.648914, 32.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721027, 31.452072, 32.468281>,  <38.698502, 31.124001, 32.240547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721027, 31.452072, 32.468281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553714, -0.500162, 0.665762,
		0.830801, 0.277754, -0.482310,
		0.056315, 0.820177, 0.569331,
		38.737923, 31.698126, 32.639080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442440, 31.210079, 32.491276>,  <38.698502, 31.124001, 32.240547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442440, 31.210079, 32.491276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207581, 31.395613, 32.756641>,  <39.066666, 31.506933, 32.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207581, 31.395613, 32.756641>,  <39.442440, 31.210079, 32.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207581, 31.395613, 32.756641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417962, -0.528143, 0.739170,
		0.693228, 0.711284, 0.116233,
		-0.587148, 0.463833, 0.663413,
		39.031437, 31.534763, 32.955666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814434, 31.212337, 33.005470>,  <39.442440, 31.210079, 32.491276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814434, 31.212337, 33.005470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466446, 31.291307, 33.186211>,  <39.257652, 31.338690, 33.294655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466446, 31.291307, 33.186211>,  <39.814434, 31.212337, 33.005470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466446, 31.291307, 33.186211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256185, -0.602008, 0.756278,
		0.421328, 0.773699, 0.473152,
		-0.869972, 0.197427, 0.451853,
		39.205456, 31.350536, 33.321766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975410, 31.381880, 33.710293>,  <39.814434, 31.212337, 33.005470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975410, 31.381880, 33.710293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584530, 31.296951, 33.709732>,  <39.350002, 31.245995, 33.709396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584530, 31.296951, 33.709732>,  <39.975410, 31.381880, 33.710293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584530, 31.296951, 33.709732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116435, -0.541392, 0.832669,
		-0.177553, 0.813520, 0.553769,
		-0.977199, -0.212321, -0.001403,
		39.291370, 31.233255, 33.709312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806919, 31.542461, 34.354034>,  <39.975410, 31.381880, 33.710293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806919, 31.542461, 34.354034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521313, 31.286804, 34.239716>,  <39.349949, 31.133410, 34.171124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521313, 31.286804, 34.239716>,  <39.806919, 31.542461, 34.354034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521313, 31.286804, 34.239716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076004, -0.476553, 0.875854,
		-0.695995, 0.603649, 0.388842,
		-0.714013, -0.639144, -0.285799,
		39.307110, 31.095060, 34.153976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919029, 31.301510, 35.130955>,  <39.806919, 31.542461, 34.354034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919029, 31.301510, 35.130955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778496, 31.667776, 35.209049>,  <39.694176, 31.887535, 35.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778496, 31.667776, 35.209049>,  <39.919029, 31.301510, 35.130955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778496, 31.667776, 35.209049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033306, -0.220621, 0.974791,
		0.935656, 0.335979, 0.108010,
		-0.351338, 0.915666, 0.195236,
		39.673096, 31.942476, 35.267620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307980, 31.506805, 35.849895>,  <39.919029, 31.301510, 35.130955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307980, 31.506805, 35.849895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018349, 31.780170, 35.812691>,  <39.844570, 31.944189, 35.790367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018349, 31.780170, 35.812691>,  <40.307980, 31.506805, 35.849895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018349, 31.780170, 35.812691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117696, 0.010445, 0.992995,
		0.679599, 0.729956, 0.072872,
		-0.724081, 0.683415, -0.093011,
		39.801125, 31.985195, 35.784786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540192, 31.955795, 36.309811>,  <40.307980, 31.506805, 35.849895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540192, 31.955795, 36.309811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145313, 31.980244, 36.250866>,  <39.908386, 31.994913, 36.215500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145313, 31.980244, 36.250866>,  <40.540192, 31.955795, 36.309811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145313, 31.980244, 36.250866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158497, -0.270675, 0.949533,
		0.018152, 0.960728, 0.276896,
		-0.987193, 0.061123, -0.147359,
		39.849155, 31.998581, 36.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179272, 32.462479, 36.745193>,  <40.540192, 31.955795, 36.309811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179272, 32.462479, 36.745193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910995, 32.183113, 36.645279>,  <39.750031, 32.015495, 36.585331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910995, 32.183113, 36.645279>,  <40.179272, 32.462479, 36.745193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910995, 32.183113, 36.645279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061462, -0.283270, 0.957069,
		-0.739185, 0.657251, 0.147061,
		-0.670692, -0.698412, -0.249785,
		39.709789, 31.973589, 36.570343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706596, 32.469551, 37.278008>,  <40.179272, 32.462479, 36.745193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706596, 32.469551, 37.278008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626064, 32.114044, 37.113300>,  <39.577747, 31.900740, 37.014477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626064, 32.114044, 37.113300>,  <39.706596, 32.469551, 37.278008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626064, 32.114044, 37.113300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092105, -0.401340, 0.911286,
		-0.975184, 0.221394, -0.001059,
		-0.201328, -0.888770, -0.411771,
		39.565666, 31.847414, 36.989769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346096, 32.182899, 37.744560>,  <39.706596, 32.469551, 37.278008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346096, 32.182899, 37.744560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380402, 31.851368, 37.523403>,  <39.400986, 31.652451, 37.390709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380402, 31.851368, 37.523403>,  <39.346096, 32.182899, 37.744560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380402, 31.851368, 37.523403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203362, -0.557819, 0.804662,
		-0.975340, 0.043430, -0.216390,
		0.085760, -0.828825, -0.552896,
		39.406128, 31.602720, 37.357536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802341, 31.808077, 37.942822>,  <39.346096, 32.182899, 37.744560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802341, 31.808077, 37.942822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042606, 31.531219, 37.782753>,  <39.186768, 31.365105, 37.686710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042606, 31.531219, 37.782753>,  <38.802341, 31.808077, 37.942822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042606, 31.531219, 37.782753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118250, -0.571938, 0.811729,
		-0.790709, -0.440255, -0.425388,
		0.600663, -0.692143, -0.400176,
		39.222805, 31.323576, 37.662701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528198, 31.145477, 38.115574>,  <38.802341, 31.808077, 37.942822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528198, 31.145477, 38.115574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915028, 31.094854, 38.027256>,  <39.147125, 31.064482, 37.974266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915028, 31.094854, 38.027256>,  <38.528198, 31.145477, 38.115574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915028, 31.094854, 38.027256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116106, -0.552631, 0.825299,
		-0.226464, -0.823761, -0.519742,
		0.967075, -0.126555, -0.220795,
		39.205151, 31.056887, 37.961018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816883, 30.428724, 38.193192>,  <38.528198, 31.145477, 38.115574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816883, 30.428724, 38.193192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137379, 30.658260, 38.260990>,  <39.329674, 30.795982, 38.301670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137379, 30.658260, 38.260990>,  <38.816883, 30.428724, 38.193192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137379, 30.658260, 38.260990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182610, -0.504268, 0.844019,
		0.569802, -0.645307, -0.508826,
		0.801236, 0.573841, 0.169493,
		39.377750, 30.830412, 38.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230438, 29.951323, 38.390198>,  <38.816883, 30.428724, 38.193192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230438, 29.951323, 38.390198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357414, 30.303938, 38.529984>,  <39.433601, 30.515507, 38.613853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357414, 30.303938, 38.529984>,  <39.230438, 29.951323, 38.390198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357414, 30.303938, 38.529984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231448, -0.429402, 0.872952,
		0.919599, -0.196230, -0.340340,
		0.317442, 0.881537, 0.349461,
		39.452648, 30.568399, 38.634823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452850, 29.736090, 39.083080>,  <39.230438, 29.951323, 38.390198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452850, 29.736090, 39.083080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553402, 30.123030, 39.096008>,  <39.613731, 30.355194, 39.103764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553402, 30.123030, 39.096008>,  <39.452850, 29.736090, 39.083080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553402, 30.123030, 39.096008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256751, -0.098843, 0.961410,
		0.933214, -0.233378, -0.273215,
		0.251377, 0.967349, 0.032322,
		39.628815, 30.413235, 39.105705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191742, 29.905327, 39.380135>,  <39.452850, 29.736090, 39.083080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191742, 29.905327, 39.380135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944473, 30.207775, 39.466057>,  <39.796112, 30.389244, 39.517612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944473, 30.207775, 39.466057>,  <40.191742, 29.905327, 39.380135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944473, 30.207775, 39.466057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257505, -0.063396, 0.964195,
		0.742666, 0.651354, -0.155515,
		-0.618173, 0.756121, 0.214809,
		39.759022, 30.434612, 39.530499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464333, 30.211155, 39.863956>,  <40.191742, 29.905327, 39.380135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464333, 30.211155, 39.863956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082851, 30.318848, 39.917561>,  <39.853962, 30.383463, 39.949722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082851, 30.318848, 39.917561>,  <40.464333, 30.211155, 39.863956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082851, 30.318848, 39.917561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144192, 0.018323, 0.989380,
		0.263915, 0.962902, -0.056296,
		-0.953707, 0.269230, 0.134007,
		39.796738, 30.399616, 39.957764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522499, 30.639313, 40.385422>,  <40.464333, 30.211155, 39.863956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522499, 30.639313, 40.385422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132824, 30.554001, 40.414997>,  <39.899017, 30.502813, 40.432743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132824, 30.554001, 40.414997>,  <40.522499, 30.639313, 40.385422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132824, 30.554001, 40.414997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095071, -0.090575, 0.991341,
		-0.204736, 0.972784, 0.108514,
		-0.974189, -0.213280, 0.073940,
		39.840569, 30.490017, 40.437180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309689, 31.022835, 40.932472>,  <40.522499, 30.639313, 40.385422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309689, 31.022835, 40.932472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017021, 30.751816, 40.902569>,  <39.841419, 30.589205, 40.884628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017021, 30.751816, 40.902569>,  <40.309689, 31.022835, 40.932472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017021, 30.751816, 40.902569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083857, -0.019365, 0.996290,
		-0.676481, 0.735224, -0.042648,
		-0.731670, -0.677548, -0.074754,
		39.797520, 30.548552, 40.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738110, 31.267822, 41.353256>,  <40.309689, 31.022835, 40.932472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738110, 31.267822, 41.353256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679104, 30.875900, 41.299263>,  <39.643700, 30.640747, 41.266869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679104, 30.875900, 41.299263>,  <39.738110, 31.267822, 41.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679104, 30.875900, 41.299263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297922, -0.086118, 0.950697,
		-0.943123, 0.180455, -0.279203,
		-0.147514, -0.979806, -0.134982,
		39.634850, 30.581959, 41.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311260, 31.042759, 41.808678>,  <39.738110, 31.267822, 41.353256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311260, 31.042759, 41.808678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454136, 30.675674, 41.739140>,  <39.539860, 30.455423, 41.697418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454136, 30.675674, 41.739140>,  <39.311260, 31.042759, 41.808678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454136, 30.675674, 41.739140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097211, -0.221638, 0.970272,
		-0.928961, -0.329668, -0.168378,
		0.357186, -0.917712, -0.173846,
		39.561291, 30.400360, 41.686985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750702, 30.505020, 41.987675>,  <39.311260, 31.042759, 41.808678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750702, 30.505020, 41.987675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106930, 30.323908, 42.004986>,  <39.320667, 30.215240, 42.015373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106930, 30.323908, 42.004986>,  <38.750702, 30.505020, 41.987675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106930, 30.323908, 42.004986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138198, -0.178708, 0.974148,
		-0.433344, -0.873527, -0.221726,
		0.890569, -0.452783, 0.043277,
		39.374100, 30.188072, 42.017967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627975, 30.106182, 42.553181>,  <38.750702, 30.505020, 41.987675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627975, 30.106182, 42.553181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017128, 30.024706, 42.509331>,  <39.250618, 29.975821, 42.483021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017128, 30.024706, 42.509331>,  <38.627975, 30.106182, 42.553181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017128, 30.024706, 42.509331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074535, -0.172591, 0.982170,
		-0.218981, -0.963702, -0.152728,
		0.972878, -0.203693, -0.109623,
		39.308990, 29.963598, 42.476444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625080, 29.503180, 42.894993>,  <38.627975, 30.106182, 42.553181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625080, 29.503180, 42.894993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980427, 29.684830, 42.867943>,  <39.193634, 29.793819, 42.851711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980427, 29.684830, 42.867943>,  <38.625080, 29.503180, 42.894993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980427, 29.684830, 42.867943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155911, -0.159835, 0.974753,
		0.431850, -0.876483, -0.212795,
		0.888367, 0.454124, -0.067629,
		39.246937, 29.821068, 42.847652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990540, 29.181805, 43.420040>,  <38.625080, 29.503180, 42.894993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990540, 29.181805, 43.420040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171608, 29.532614, 43.355637>,  <39.280247, 29.743099, 43.316994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171608, 29.532614, 43.355637>,  <38.990540, 29.181805, 43.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171608, 29.532614, 43.355637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364007, -0.016912, 0.931243,
		0.813996, -0.480154, -0.326897,
		0.452668, 0.877021, -0.161013,
		39.307407, 29.795719, 43.307331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460396, 29.225460, 43.944317>,  <38.990540, 29.181805, 43.420040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460396, 29.225460, 43.944317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750095, 29.298553, 44.210270>,  <39.923916, 29.342409, 44.369843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750095, 29.298553, 44.210270>,  <39.460396, 29.225460, 43.944317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750095, 29.298553, 44.210270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093831, 0.981394, -0.167515,
		-0.683126, 0.058936, 0.727919,
		0.724248, 0.182735, 0.664886,
		39.967369, 29.353374, 44.409737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191154, 29.888456, 44.200058>,  <39.460396, 29.225460, 43.944317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191154, 29.888456, 44.200058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557274, 30.035019, 44.133160>,  <39.776947, 30.122957, 44.093021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557274, 30.035019, 44.133160>,  <39.191154, 29.888456, 44.200058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557274, 30.035019, 44.133160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033038, -0.345539, -0.937823,
		-0.401414, 0.863915, -0.304167,
		0.915301, 0.366406, -0.167246,
		39.831863, 30.144941, 44.082985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104515, 30.397421, 43.634087>,  <39.191154, 29.888456, 44.200058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104515, 30.397421, 43.634087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479488, 30.258190, 43.637096>,  <39.704472, 30.174652, 43.638901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479488, 30.258190, 43.637096>,  <39.104515, 30.397421, 43.634087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479488, 30.258190, 43.637096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068478, -0.205531, -0.976252,
		0.341359, 0.914658, -0.216507,
		0.937435, -0.348078, 0.007526,
		39.760719, 30.153767, 43.639355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437202, 30.635101, 43.001156>,  <39.104515, 30.397421, 43.634087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437202, 30.635101, 43.001156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591923, 30.291033, 43.134113>,  <39.684753, 30.084591, 43.213890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591923, 30.291033, 43.134113>,  <39.437202, 30.635101, 43.001156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591923, 30.291033, 43.134113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144481, -0.412529, -0.899414,
		0.910775, 0.299869, -0.283845,
		0.386800, -0.860174, 0.332395,
		39.707962, 30.032980, 43.233833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257343, 30.467052, 42.748974>,  <39.437202, 30.635101, 43.001156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257343, 30.467052, 42.748974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987648, 30.174393, 42.789150>,  <39.825832, 29.998796, 42.813255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987648, 30.174393, 42.789150>,  <40.257343, 30.467052, 42.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987648, 30.174393, 42.789150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027970, -0.110612, -0.993470,
		0.737984, -0.672645, 0.054115,
		-0.674238, -0.731652, 0.100444,
		39.785378, 29.954897, 42.819283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600483, 29.980690, 42.404987>,  <40.257343, 30.467052, 42.748974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600483, 29.980690, 42.404987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203827, 29.937418, 42.433144>,  <39.965836, 29.911455, 42.450039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203827, 29.937418, 42.433144>,  <40.600483, 29.980690, 42.404987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203827, 29.937418, 42.433144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077877, 0.066609, -0.994735,
		0.102931, -0.991896, -0.074477,
		-0.991635, -0.108189, 0.070389,
		39.906338, 29.904964, 42.454262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491875, 29.515188, 41.997261>,  <40.600483, 29.980690, 42.404987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491875, 29.515188, 41.997261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147720, 29.718121, 42.016632>,  <39.941227, 29.839880, 42.028255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147720, 29.718121, 42.016632>,  <40.491875, 29.515188, 41.997261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147720, 29.718121, 42.016632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042873, 0.022639, -0.998824,
		-0.507829, -0.861455, 0.002273,
		-0.860390, 0.507330, 0.048430,
		39.889603, 29.870319, 42.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275288, 29.397678, 41.325714>,  <40.491875, 29.515188, 41.997261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275288, 29.397678, 41.325714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054764, 29.702183, 41.462265>,  <39.922447, 29.884886, 41.544193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054764, 29.702183, 41.462265>,  <40.275288, 29.397678, 41.325714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054764, 29.702183, 41.462265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182741, 0.289053, -0.939710,
		-0.814040, -0.580456, -0.020244,
		-0.551312, 0.761262, 0.341373,
		39.889370, 29.930561, 41.564678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556717, 29.257332, 41.110920>,  <40.275288, 29.397678, 41.325714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556717, 29.257332, 41.110920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602013, 29.652277, 41.155270>,  <39.629189, 29.889244, 41.181877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602013, 29.652277, 41.155270>,  <39.556717, 29.257332, 41.110920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602013, 29.652277, 41.155270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292138, 0.139742, -0.946112,
		-0.949649, 0.074745, 0.304270,
		0.113237, 0.987363, 0.110870,
		39.635983, 29.948486, 41.188530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963173, 29.569485, 40.817619>,  <39.556717, 29.257332, 41.110920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963173, 29.569485, 40.817619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221375, 29.874086, 40.841064>,  <39.376297, 30.056847, 40.855133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221375, 29.874086, 40.841064>,  <38.963173, 29.569485, 40.817619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221375, 29.874086, 40.841064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262786, 0.293504, -0.919129,
		-0.717123, 0.577901, 0.389570,
		0.645506, 0.761502, 0.058614,
		39.415028, 30.102537, 40.858650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608269, 30.118540, 40.542126>,  <38.963173, 29.569485, 40.817619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608269, 30.118540, 40.542126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989941, 30.226112, 40.489635>,  <39.218945, 30.290655, 40.458141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989941, 30.226112, 40.489635>,  <38.608269, 30.118540, 40.542126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989941, 30.226112, 40.489635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231261, 0.384443, -0.893712,
		-0.189900, 0.883108, 0.429021,
		0.954178, 0.268932, -0.131223,
		39.276196, 30.306791, 40.450268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555382, 30.687550, 40.174244>,  <38.608269, 30.118540, 40.542126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555382, 30.687550, 40.174244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940723, 30.592690, 40.124119>,  <39.171928, 30.535774, 40.094044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940723, 30.592690, 40.124119>,  <38.555382, 30.687550, 40.174244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940723, 30.592690, 40.124119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029299, 0.371351, -0.928030,
		0.266615, 0.897697, 0.350795,
		0.963358, -0.237149, -0.125309,
		39.229733, 30.521545, 40.086525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922371, 31.298819, 39.870617>,  <38.555382, 30.687550, 40.174244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922371, 31.298819, 39.870617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158630, 30.996468, 39.757629>,  <39.300385, 30.815058, 39.689838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158630, 30.996468, 39.757629>,  <38.922371, 31.298819, 39.870617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158630, 30.996468, 39.757629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005942, 0.354118, -0.935182,
		0.806910, 0.550682, 0.213649,
		0.590645, -0.755877, -0.282469,
		39.335823, 30.769705, 39.672890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306973, 31.622393, 39.372807>,  <38.922371, 31.298819, 39.870617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306973, 31.622393, 39.372807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403553, 31.239882, 39.306797>,  <39.461502, 31.010374, 39.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403553, 31.239882, 39.306797>,  <39.306973, 31.622393, 39.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403553, 31.239882, 39.306797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255111, 0.226626, -0.939978,
		0.936280, 0.184859, 0.298676,
		0.241451, -0.956278, -0.165025,
		39.475986, 30.952997, 39.257290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050301, 31.534330, 39.251759>,  <39.306973, 31.622393, 39.372807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050301, 31.534330, 39.251759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837990, 31.253330, 39.062119>,  <39.710602, 31.084730, 38.948334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837990, 31.253330, 39.062119>,  <40.050301, 31.534330, 39.251759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837990, 31.253330, 39.062119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234685, 0.415693, -0.878704,
		0.814368, -0.577662, -0.055775,
		-0.530780, -0.702499, -0.474097,
		39.678757, 31.042580, 38.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339874, 31.547956, 38.653141>,  <40.050301, 31.534330, 39.251759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339874, 31.547956, 38.653141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028748, 31.319611, 38.547977>,  <39.842072, 31.182604, 38.484879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028748, 31.319611, 38.547977>,  <40.339874, 31.547956, 38.653141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028748, 31.319611, 38.547977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032470, 0.454260, -0.890277,
		0.627658, -0.683931, -0.371864,
		-0.777812, -0.570865, -0.262913,
		39.795403, 31.148352, 38.469105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354515, 30.885834, 38.441467>,  <40.339874, 31.547956, 38.653141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354515, 30.885834, 38.441467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035908, 30.686354, 38.304733>,  <39.844742, 30.566666, 38.222694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035908, 30.686354, 38.304733>,  <40.354515, 30.885834, 38.441467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035908, 30.686354, 38.304733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078082, 0.645492, -0.759766,
		0.599544, -0.578480, -0.553089,
		-0.796524, -0.498699, -0.341832,
		39.796951, 30.536743, 38.202183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445164, 30.691395, 37.663609>,  <40.354515, 30.885834, 38.441467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445164, 30.691395, 37.663609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057285, 30.747196, 37.743843>,  <39.824558, 30.780678, 37.791985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057285, 30.747196, 37.743843>,  <40.445164, 30.691395, 37.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057285, 30.747196, 37.743843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103850, 0.507803, -0.855191,
		-0.221163, -0.850102, -0.477925,
		-0.969692, 0.139504, 0.200590,
		39.766376, 30.789047, 37.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022400, 30.415243, 37.116745>,  <40.445164, 30.691395, 37.663609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022400, 30.415243, 37.116745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797359, 30.692562, 37.296886>,  <39.662334, 30.858953, 37.404972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797359, 30.692562, 37.296886>,  <40.022400, 30.415243, 37.116745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797359, 30.692562, 37.296886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085346, 0.493129, -0.865759,
		-0.822312, -0.525513, -0.218264,
		-0.562600, 0.693296, 0.450356,
		39.628578, 30.900551, 37.431992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239517, 30.432625, 36.864628>,  <40.022400, 30.415243, 37.116745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239517, 30.432625, 36.864628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406193, 30.779917, 36.972363>,  <39.506199, 30.988293, 37.037003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406193, 30.779917, 36.972363>,  <39.239517, 30.432625, 36.864628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406193, 30.779917, 36.972363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113356, 0.343597, -0.932251,
		-0.901952, 0.357932, 0.241594,
		0.416694, 0.868231, 0.269334,
		39.531200, 31.040386, 37.053162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203239, 30.786665, 36.271282>,  <39.239517, 30.432625, 36.864628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203239, 30.786665, 36.271282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316181, 31.095444, 36.499100>,  <39.383945, 31.280710, 36.635788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316181, 31.095444, 36.499100>,  <39.203239, 30.786665, 36.271282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316181, 31.095444, 36.499100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019837, 0.598269, -0.801049,
		-0.959105, 0.214884, 0.184238,
		0.282356, 0.771945, 0.569540,
		39.400887, 31.327026, 36.669960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685650, 31.321924, 36.240765>,  <39.203239, 30.786665, 36.271282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685650, 31.321924, 36.240765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046707, 31.478804, 36.311661>,  <39.263340, 31.572931, 36.354198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046707, 31.478804, 36.311661>,  <38.685650, 31.321924, 36.240765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046707, 31.478804, 36.311661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091809, 0.577797, -0.811001,
		-0.420481, 0.715773, 0.557552,
		0.902644, 0.392199, 0.177238,
		39.317501, 31.596464, 36.364834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567219, 32.004337, 35.972813>,  <38.685650, 31.321924, 36.240765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567219, 32.004337, 35.972813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962524, 31.988890, 36.031929>,  <39.199707, 31.979622, 36.067398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962524, 31.988890, 36.031929>,  <38.567219, 32.004337, 35.972813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962524, 31.988890, 36.031929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145259, 0.536936, -0.831023,
		-0.047265, 0.842738, 0.536244,
		0.988264, -0.038616, 0.147794,
		39.259003, 31.977304, 36.076267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732944, 32.711464, 35.840851>,  <38.567219, 32.004337, 35.972813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732944, 32.711464, 35.840851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074711, 32.506454, 35.806664>,  <39.279770, 32.383450, 35.786152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074711, 32.506454, 35.806664>,  <38.732944, 32.711464, 35.840851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074711, 32.506454, 35.806664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096375, 0.317952, -0.943196,
		0.510581, 0.797640, 0.321056,
		0.854412, -0.512519, -0.085468,
		39.331036, 32.352699, 35.781025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225414, 33.103218, 35.602123>,  <38.732944, 32.711464, 35.840851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225414, 33.103218, 35.602123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349617, 32.744541, 35.475937>,  <39.424137, 32.529335, 35.400223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349617, 32.744541, 35.475937>,  <39.225414, 33.103218, 35.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349617, 32.744541, 35.475937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119672, 0.292356, -0.948792,
		0.943008, 0.332360, -0.016531,
		0.310508, -0.896697, -0.315468,
		39.442768, 32.475533, 35.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822815, 33.296600, 35.166615>,  <39.225414, 33.103218, 35.602123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822815, 33.296600, 35.166615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651531, 32.946774, 35.075603>,  <39.548763, 32.736877, 35.020996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651531, 32.946774, 35.075603>,  <39.822815, 33.296600, 35.166615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651531, 32.946774, 35.075603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167002, 0.324026, -0.931191,
		0.888116, -0.360745, -0.284805,
		-0.428207, -0.874568, -0.227528,
		39.523067, 32.684402, 35.007343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141502, 32.893532, 34.556839>,  <39.822815, 33.296600, 35.166615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141502, 32.893532, 34.556839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749794, 32.929096, 34.629639>,  <39.514771, 32.950436, 34.673317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749794, 32.929096, 34.629639>,  <40.141502, 32.893532, 34.556839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749794, 32.929096, 34.629639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102592, 0.557005, -0.824148,
		-0.174652, -0.825736, -0.536337,
		-0.979271, 0.088915, 0.181996,
		39.456013, 32.955772, 34.684238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901989, 33.090504, 34.349369>,  <40.141502, 32.893532, 34.556839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901989, 33.090504, 34.349369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930412, 33.488583, 34.376282>,  <40.947468, 33.727432, 34.392429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930412, 33.488583, 34.376282>,  <40.901989, 33.090504, 34.349369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930412, 33.488583, 34.376282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692494, -0.097766, 0.714768,
		0.717915, -0.004201, -0.696118,
		0.071060, 0.995201, 0.067279,
		40.951729, 33.787144, 34.396465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608273, 33.316750, 34.115150>,  <40.901989, 33.090504, 34.349369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608273, 33.316750, 34.115150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422733, 33.568584, 34.364460>,  <41.311409, 33.719685, 34.514046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422733, 33.568584, 34.364460>,  <41.608273, 33.316750, 34.115150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422733, 33.568584, 34.364460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762504, -0.074456, 0.642685,
		0.451031, 0.773356, -0.445524,
		-0.463852, 0.629584, 0.623269,
		41.283577, 33.757462, 34.551441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044903, 33.927326, 34.322460>,  <41.608273, 33.316750, 34.115150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044903, 33.927326, 34.322460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795162, 33.858997, 34.627354>,  <41.645317, 33.818001, 34.810291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795162, 33.858997, 34.627354>,  <42.044903, 33.927326, 34.322460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795162, 33.858997, 34.627354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768760, 0.038692, 0.638366,
		-0.138541, 0.984541, 0.107165,
		-0.624351, -0.170824, 0.762236,
		41.607857, 33.807751, 34.856026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993980, 34.533760, 34.692570>,  <42.044903, 33.927326, 34.322460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993980, 34.533760, 34.692570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963272, 34.193516, 34.900635>,  <41.944847, 33.989368, 35.025475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963272, 34.193516, 34.900635>,  <41.993980, 34.533760, 34.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963272, 34.193516, 34.900635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727798, 0.308775, 0.612347,
		-0.681481, 0.425583, 0.595367,
		-0.076770, -0.850610, 0.520163,
		41.940243, 33.938332, 35.056683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979813, 34.779884, 33.899220>,  <41.993980, 34.533760, 34.692570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979813, 34.779884, 33.899220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284756, 34.605278, 33.708115>,  <42.467724, 34.500515, 33.593452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284756, 34.605278, 33.708115>,  <41.979813, 34.779884, 33.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284756, 34.605278, 33.708115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541517, 0.834527, 0.101607,
		0.354351, -0.336177, 0.872594,
		0.762361, -0.436520, -0.477761,
		42.513462, 34.474323, 33.564785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640476, 34.716549, 34.294720>,  <41.979813, 34.779884, 33.899220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640476, 34.716549, 34.294720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724373, 34.751820, 33.905212>,  <42.774712, 34.772980, 33.671509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724373, 34.751820, 33.905212>,  <42.640476, 34.716549, 34.294720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724373, 34.751820, 33.905212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580376, 0.790269, 0.196567,
		0.786874, -0.606383, 0.114579,
		0.209743, 0.088175, -0.973773,
		42.787296, 34.778271, 33.613079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340019, 34.515804, 34.121582>,  <42.640476, 34.716549, 34.294720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340019, 34.515804, 34.121582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147499, 34.811390, 33.932995>,  <43.031986, 34.988743, 33.819843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147499, 34.811390, 33.932995>,  <43.340019, 34.515804, 34.121582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147499, 34.811390, 33.932995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692701, 0.650240, 0.312015,
		0.537137, -0.176416, -0.824840,
		-0.481299, 0.738963, -0.471472,
		43.003109, 35.033077, 33.791553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955482, 34.892151, 33.768028>,  <43.340019, 34.515804, 34.121582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955482, 34.892151, 33.768028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642464, 35.139507, 33.796932>,  <43.454655, 35.287922, 33.814274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642464, 35.139507, 33.796932>,  <43.955482, 34.892151, 33.768028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642464, 35.139507, 33.796932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592367, 0.703793, 0.392144,
		0.191643, 0.349672, -0.917062,
		-0.782543, 0.618389, 0.072257,
		43.407700, 35.325024, 33.818611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193100, 34.848480, 33.041180>,  <43.955482, 34.892151, 33.768028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193100, 34.848480, 33.041180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400597, 35.153858, 32.887264>,  <44.525093, 35.337086, 32.794914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400597, 35.153858, 32.887264>,  <44.193100, 34.848480, 33.041180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400597, 35.153858, 32.887264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455932, 0.133692, 0.879916,
		0.723210, -0.631885, -0.278727,
		0.518742, 0.763444, -0.384784,
		44.556221, 35.382893, 32.771828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913712, 34.803570, 32.984211>,  <44.193100, 34.848480, 33.041180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913712, 34.803570, 32.984211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826736, 35.182182, 33.079536>,  <44.774551, 35.409351, 33.136730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826736, 35.182182, 33.079536>,  <44.913712, 34.803570, 32.984211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826736, 35.182182, 33.079536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452858, -0.118453, 0.883679,
		0.864662, 0.300066, -0.402890,
		-0.217439, 0.946535, 0.238309,
		44.761505, 35.466145, 33.151028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540665, 35.112759, 33.129650>,  <44.913712, 34.803570, 32.984211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540665, 35.112759, 33.129650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249126, 35.294693, 33.334358>,  <45.074203, 35.403854, 33.457184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249126, 35.294693, 33.334358>,  <45.540665, 35.112759, 33.129650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249126, 35.294693, 33.334358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440758, -0.260295, 0.859057,
		0.523939, 0.851688, -0.010756,
		-0.728849, 0.454834, 0.511767,
		45.030472, 35.431145, 33.487888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997940, 34.995094, 32.629673>,  <45.540665, 35.112759, 33.129650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997940, 34.995094, 32.629673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219185, 35.316372, 32.541183>,  <46.351933, 35.509140, 32.488091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219185, 35.316372, 32.541183>,  <45.997940, 34.995094, 32.629673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219185, 35.316372, 32.541183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530471, -0.134786, 0.836919,
		0.642393, -0.580264, -0.500625,
		0.553111, 0.803197, -0.221228,
		46.385117, 35.557331, 32.474815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747509, 34.757668, 32.612240>,  <45.997940, 34.995094, 32.629673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747509, 34.757668, 32.612240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734318, 35.146454, 32.705353>,  <46.726402, 35.379726, 32.761219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734318, 35.146454, 32.705353>,  <46.747509, 34.757668, 32.612240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734318, 35.146454, 32.705353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623987, -0.161917, 0.764476,
		0.780739, 0.170463, -0.601157,
		-0.032978, 0.971970, 0.232782,
		46.724426, 35.438046, 32.775188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375164, 35.097160, 32.707222>,  <46.747509, 34.757668, 32.612240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375164, 35.097160, 32.707222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107464, 35.279602, 32.941856>,  <46.946842, 35.389065, 33.082638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107464, 35.279602, 32.941856>,  <47.375164, 35.097160, 32.707222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107464, 35.279602, 32.941856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553127, -0.221312, 0.803163,
		0.496140, 0.861971, -0.104168,
		-0.669250, 0.456100, 0.586582,
		46.906689, 35.416431, 33.117832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.810036, 35.637455, 33.110123>,  <47.375164, 35.097160, 32.707222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.810036, 35.637455, 33.110123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.463371, 35.531990, 33.279541>,  <47.255375, 35.468712, 33.381191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.463371, 35.531990, 33.279541>,  <47.810036, 35.637455, 33.110123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.463371, 35.531990, 33.279541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484828, -0.244851, 0.839636,
		-0.117676, 0.933022, 0.340033,
		-0.866657, -0.263662, 0.423542,
		47.203373, 35.452892, 33.406605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696953, 36.108562, 33.795181>,  <47.810036, 35.637455, 33.110123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696953, 36.108562, 33.795181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564461, 35.731182, 33.789722>,  <47.484966, 35.504753, 33.786449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564461, 35.731182, 33.789722>,  <47.696953, 36.108562, 33.795181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.564461, 35.731182, 33.789722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512679, -0.192093, 0.836816,
		-0.792116, 0.270182, 0.547314,
		-0.331228, -0.943452, -0.013644,
		47.465092, 35.448147, 33.785629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.340534, 36.083420, 34.473221>,  <47.696953, 36.108562, 33.795181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.340534, 36.083420, 34.473221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483055, 35.745209, 34.314156>,  <47.568569, 35.542282, 34.218716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483055, 35.745209, 34.314156>,  <47.340534, 36.083420, 34.473221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483055, 35.745209, 34.314156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420288, -0.235083, 0.876410,
		-0.834510, -0.479400, 0.271603,
		0.356302, -0.845524, -0.397665,
		47.589947, 35.491550, 34.194855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179691, 35.467445, 34.833092>,  <47.340534, 36.083420, 34.473221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179691, 35.467445, 34.833092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536945, 35.473034, 34.653263>,  <47.751297, 35.476387, 34.545364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536945, 35.473034, 34.653263>,  <47.179691, 35.467445, 34.833092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536945, 35.473034, 34.653263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445384, -0.167047, 0.879619,
		-0.062811, -0.985850, -0.155418,
		0.893134, 0.013971, -0.449574,
		47.804886, 35.477226, 34.518391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453163, 34.837105, 34.880280>,  <47.179691, 35.467445, 34.833092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453163, 34.837105, 34.880280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706810, 35.146202, 34.891331>,  <47.858997, 35.331661, 34.897961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706810, 35.146202, 34.891331>,  <47.453163, 34.837105, 34.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.706810, 35.146202, 34.891331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388074, -0.348957, 0.853011,
		0.668796, -0.530191, -0.521161,
		0.634122, 0.772740, 0.027628,
		47.897045, 35.378025, 34.899620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.040829, 30.528664, 24.284687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693008, 30.534304, 24.087231>,  <37.484318, 30.537687, 23.968758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693008, 30.534304, 24.087231>,  <38.040829, 30.528664, 24.284687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693008, 30.534304, 24.087231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467848, -0.343550, 0.814305,
		-0.158108, 0.939029, 0.305331,
		-0.869552, 0.014100, -0.493641,
		37.432144, 30.538534, 23.939138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634266, 30.657436, 24.744099>,  <38.040829, 30.528664, 24.284687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634266, 30.657436, 24.744099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383183, 30.530432, 24.459799>,  <37.232533, 30.454229, 24.289219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.383183, 30.530432, 24.459799>,  <37.634266, 30.657436, 24.744099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383183, 30.530432, 24.459799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520870, -0.507219, 0.686603,
		-0.578511, 0.801196, 0.153003,
		-0.627710, -0.317513, -0.710751,
		37.194870, 30.435179, 24.246574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084854, 30.864412, 25.006748>,  <37.634266, 30.657436, 24.744099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084854, 30.864412, 25.006748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013218, 30.548592, 24.771959>,  <36.970238, 30.359098, 24.631086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013218, 30.548592, 24.771959>,  <37.084854, 30.864412, 25.006748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013218, 30.548592, 24.771959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451374, -0.464182, 0.762100,
		-0.874180, 0.401425, -0.273254,
		-0.179086, -0.789552, -0.586972,
		36.959492, 30.311726, 24.595867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462166, 30.741173, 25.226528>,  <37.084854, 30.864412, 25.006748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462166, 30.741173, 25.226528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592579, 30.411474, 25.041351>,  <36.670826, 30.213655, 24.930244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592579, 30.411474, 25.041351>,  <36.462166, 30.741173, 25.226528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592579, 30.411474, 25.041351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317337, -0.556710, 0.767705,
		-0.890505, -0.103389, -0.443071,
		0.326035, -0.824248, -0.462943,
		36.690388, 30.164200, 24.902468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867649, 30.330841, 25.290331>,  <36.462166, 30.741173, 25.226528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867649, 30.330841, 25.290331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166294, 30.078583, 25.205610>,  <36.345482, 29.927227, 25.154778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166294, 30.078583, 25.205610>,  <35.867649, 30.330841, 25.290331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166294, 30.078583, 25.205610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331378, -0.628608, 0.703591,
		-0.576856, -0.455122, -0.678307,
		0.746610, -0.630647, -0.211799,
		36.390278, 29.889389, 25.142071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548473, 29.740910, 25.384916>,  <35.867649, 30.330841, 25.290331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548473, 29.740910, 25.384916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935192, 29.639503, 25.397728>,  <36.167225, 29.578659, 25.405415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935192, 29.639503, 25.397728>,  <35.548473, 29.740910, 25.384916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935192, 29.639503, 25.397728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194381, -0.648272, 0.736179,
		-0.165868, -0.717965, -0.676028,
		0.966801, -0.253516, 0.032031,
		36.225231, 29.563448, 25.407337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587917, 28.988089, 25.378712>,  <35.548473, 29.740910, 25.384916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587917, 28.988089, 25.378712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914467, 29.144484, 25.548731>,  <36.110397, 29.238321, 25.650743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914467, 29.144484, 25.548731>,  <35.587917, 28.988089, 25.378712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914467, 29.144484, 25.548731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170083, -0.540574, 0.823924,
		0.551914, -0.744922, -0.374809,
		0.816371, 0.390987, 0.425049,
		36.159378, 29.261780, 25.676245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873383, 28.449471, 25.744518>,  <35.587917, 28.988089, 25.378712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873383, 28.449471, 25.744518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050121, 28.769424, 25.906975>,  <36.156166, 28.961397, 26.004450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050121, 28.769424, 25.906975>,  <35.873383, 28.449471, 25.744518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050121, 28.769424, 25.906975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028348, -0.464957, 0.884879,
		0.896642, -0.379469, -0.228116,
		0.441848, 0.799887, 0.406142,
		36.182674, 29.009390, 26.028818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410168, 28.182919, 26.194321>,  <35.873383, 28.449471, 25.744518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410168, 28.182919, 26.194321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369541, 28.564583, 26.306936>,  <36.345165, 28.793581, 26.374506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369541, 28.564583, 26.306936>,  <36.410168, 28.182919, 26.194321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369541, 28.564583, 26.306936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260969, -0.247535, 0.933071,
		0.959989, 0.168245, -0.223864,
		-0.101570, 0.954159, 0.281537,
		36.339069, 28.850830, 26.391397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961491, 28.290476, 26.709272>,  <36.410168, 28.182919, 26.194321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961491, 28.290476, 26.709272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714470, 28.601154, 26.758865>,  <36.566257, 28.787561, 26.788620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714470, 28.601154, 26.758865>,  <36.961491, 28.290476, 26.709272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714470, 28.601154, 26.758865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165504, -0.025780, 0.985872,
		0.768922, 0.629345, -0.112626,
		-0.617550, 0.776698, 0.123981,
		36.529205, 28.834164, 26.796061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331539, 28.854660, 27.013134>,  <36.961491, 28.290476, 26.709272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331539, 28.854660, 27.013134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943043, 28.889647, 27.101709>,  <36.709946, 28.910639, 27.154854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943043, 28.889647, 27.101709>,  <37.331539, 28.854660, 27.013134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943043, 28.889647, 27.101709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208018, -0.140691, 0.967954,
		0.115818, 0.986182, 0.118451,
		-0.971244, 0.087467, 0.221439,
		36.651669, 28.915886, 27.168140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308121, 29.439535, 27.529476>,  <37.331539, 28.854660, 27.013134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308121, 29.439535, 27.529476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954716, 29.255796, 27.566141>,  <36.742672, 29.145554, 27.588140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954716, 29.255796, 27.566141>,  <37.308121, 29.439535, 27.529476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954716, 29.255796, 27.566141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123068, -0.038829, 0.991638,
		-0.451948, 0.887407, 0.090837,
		-0.883514, -0.459348, 0.091663,
		36.689663, 29.117992, 27.593639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015347, 29.821075, 28.081821>,  <37.308121, 29.439535, 27.529476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015347, 29.821075, 28.081821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851547, 29.457235, 28.053722>,  <36.753269, 29.238932, 28.036863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851547, 29.457235, 28.053722>,  <37.015347, 29.821075, 28.081821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851547, 29.457235, 28.053722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144677, -0.140771, 0.979414,
		-0.900766, 0.390906, 0.189244,
		-0.409499, -0.909602, -0.070247,
		36.728699, 29.184355, 28.032648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456150, 29.788492, 28.574684>,  <37.015347, 29.821075, 28.081821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456150, 29.788492, 28.574684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582424, 29.413702, 28.514786>,  <36.658188, 29.188828, 28.478846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582424, 29.413702, 28.514786>,  <36.456150, 29.788492, 28.574684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582424, 29.413702, 28.514786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092870, -0.126550, 0.987603,
		-0.944309, -0.325676, 0.047067,
		0.315682, -0.936974, -0.149748,
		36.677128, 29.132610, 28.469862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167274, 29.464481, 29.232534>,  <36.456150, 29.788492, 28.574684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167274, 29.464481, 29.232534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404411, 29.195080, 29.055931>,  <36.546692, 29.033438, 28.949968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404411, 29.195080, 29.055931>,  <36.167274, 29.464481, 29.232534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404411, 29.195080, 29.055931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131109, -0.460206, 0.878078,
		-0.794574, -0.578447, -0.184527,
		0.592842, -0.673505, -0.441507,
		36.582264, 28.993029, 28.923479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989349, 28.806009, 29.517353>,  <36.167274, 29.464481, 29.232534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989349, 28.806009, 29.517353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368057, 28.794867, 29.389076>,  <36.595284, 28.788181, 29.312109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368057, 28.794867, 29.389076>,  <35.989349, 28.806009, 29.517353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368057, 28.794867, 29.389076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298320, -0.298365, 0.906633,
		-0.120937, -0.954045, -0.274175,
		0.946773, -0.027853, -0.320694,
		36.652088, 28.786510, 29.292868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186195, 28.183752, 29.700224>,  <35.989349, 28.806009, 29.517353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186195, 28.183752, 29.700224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509987, 28.416761, 29.670788>,  <36.704262, 28.556566, 29.653126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509987, 28.416761, 29.670788>,  <36.186195, 28.183752, 29.700224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509987, 28.416761, 29.670788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310306, -0.318027, 0.895862,
		0.498455, -0.748015, -0.438196,
		0.809477, 0.582522, -0.073591,
		36.752831, 28.591518, 29.648710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760632, 27.685434, 29.893330>,  <36.186195, 28.183752, 29.700224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760632, 27.685434, 29.893330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903351, 28.054764, 29.950138>,  <36.988983, 28.276361, 29.984222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903351, 28.054764, 29.950138>,  <36.760632, 27.685434, 29.893330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903351, 28.054764, 29.950138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319258, -0.263391, 0.910329,
		0.877936, -0.279459, -0.388755,
		0.356794, 0.923325, 0.142021,
		37.010387, 28.331760, 29.992744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418835, 27.518147, 30.212564>,  <36.760632, 27.685434, 29.893330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418835, 27.518147, 30.212564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346676, 27.907492, 30.269169>,  <37.303379, 28.141098, 30.303131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346676, 27.907492, 30.269169>,  <37.418835, 27.518147, 30.212564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346676, 27.907492, 30.269169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350087, -0.070910, 0.934030,
		0.919182, 0.218038, -0.327968,
		-0.180398, 0.973361, 0.141511,
		37.292557, 28.199499, 30.311623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835018, 27.686712, 30.760326>,  <37.418835, 27.518147, 30.212564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835018, 27.686712, 30.760326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584297, 27.997833, 30.778814>,  <37.433865, 28.184505, 30.789907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584297, 27.997833, 30.778814>,  <37.835018, 27.686712, 30.760326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584297, 27.997833, 30.778814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009660, -0.051554, 0.998623,
		0.779116, 0.626389, 0.024801,
		-0.626806, 0.777804, 0.046218,
		37.396255, 28.231174, 30.792679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210159, 28.159533, 31.219257>,  <37.835018, 27.686712, 30.760326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210159, 28.159533, 31.219257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827785, 28.275871, 31.203289>,  <37.598362, 28.345675, 31.193708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827785, 28.275871, 31.203289>,  <38.210159, 28.159533, 31.219257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827785, 28.275871, 31.203289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029908, 0.038791, 0.998800,
		0.292047, 0.955983, -0.028383,
		-0.955936, 0.290847, -0.039920,
		37.541004, 28.363125, 31.191313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186630, 28.817940, 31.468281>,  <38.210159, 28.159533, 31.219257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186630, 28.817940, 31.468281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813274, 28.689686, 31.532745>,  <37.589260, 28.612734, 31.571424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813274, 28.689686, 31.532745>,  <38.186630, 28.817940, 31.468281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813274, 28.689686, 31.532745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057922, 0.308591, 0.949430,
		-0.354154, 0.895524, -0.269464,
		-0.933392, -0.320636, 0.161159,
		37.533257, 28.593494, 31.581093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256725, 29.320118, 31.931606>,  <38.186630, 28.817940, 31.468281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256725, 29.320118, 31.931606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595947, 29.357693, 32.140213>,  <38.799480, 29.380238, 32.265377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595947, 29.357693, 32.140213>,  <38.256725, 29.320118, 31.931606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595947, 29.357693, 32.140213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403107, 0.524455, -0.749968,
		-0.343962, 0.846241, 0.406899,
		0.848054, 0.093936, 0.521518,
		38.850365, 29.385874, 32.296669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533802, 29.932350, 31.691126>,  <38.256725, 29.320118, 31.931606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533802, 29.932350, 31.691126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857044, 29.820984, 31.898760>,  <39.050991, 29.754164, 32.023342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857044, 29.820984, 31.898760>,  <38.533802, 29.932350, 31.691126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857044, 29.820984, 31.898760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588208, 0.334700, -0.736198,
		0.031230, 0.900256, 0.434239,
		0.808106, -0.278414, 0.519085,
		39.099476, 29.737459, 32.054485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880672, 30.495977, 31.698488>,  <38.533802, 29.932350, 31.691126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880672, 30.495977, 31.698488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119484, 30.178627, 31.746012>,  <39.262772, 29.988216, 31.774527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119484, 30.178627, 31.746012>,  <38.880672, 30.495977, 31.698488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119484, 30.178627, 31.746012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637767, 0.379563, -0.670213,
		0.486634, 0.475908, 0.732597,
		0.597027, -0.793374, 0.118810,
		39.298592, 29.940615, 31.781654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526997, 30.790369, 31.754068>,  <38.880672, 30.495977, 31.698488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526997, 30.790369, 31.754068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543938, 30.407270, 31.640274>,  <39.554104, 30.177412, 31.571999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543938, 30.407270, 31.640274>,  <39.526997, 30.790369, 31.754068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543938, 30.407270, 31.640274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562431, 0.258192, -0.785499,
		0.825759, -0.126734, 0.549601,
		0.042353, -0.957745, -0.284484,
		39.556644, 30.119947, 31.554930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048382, 30.866911, 31.124628>,  <39.526997, 30.790369, 31.754068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048382, 30.866911, 31.124628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897514, 30.497831, 31.092691>,  <39.806995, 30.276384, 31.073528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897514, 30.497831, 31.092691>,  <40.048382, 30.866911, 31.124628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897514, 30.497831, 31.092691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357952, -0.065720, -0.931424,
		0.854175, -0.379882, 0.355068,
		-0.377167, -0.922697, -0.079843,
		39.784363, 30.221022, 31.068739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622570, 30.370646, 30.771843>,  <40.048382, 30.866911, 31.124628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622570, 30.370646, 30.771843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281620, 30.173986, 30.700588>,  <40.077049, 30.055992, 30.657835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281620, 30.173986, 30.700588>,  <40.622570, 30.370646, 30.771843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281620, 30.173986, 30.700588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249007, -0.082057, -0.965019,
		0.459831, -0.866920, 0.192367,
		-0.852379, -0.491647, -0.178137,
		40.025906, 30.026493, 30.647148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772228, 29.875076, 30.271849>,  <40.622570, 30.370646, 30.771843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772228, 29.875076, 30.271849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.374477, 29.890751, 30.232491>,  <40.135826, 29.900156, 30.208876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.374477, 29.890751, 30.232491>,  <40.772228, 29.875076, 30.271849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374477, 29.890751, 30.232491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079623, -0.336012, -0.938486,
		-0.069839, -0.941042, 0.331002,
		-0.994376, 0.039187, -0.098396,
		40.076164, 29.902508, 30.202972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589783, 29.394751, 29.714033>,  <40.772228, 29.875076, 30.271849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589783, 29.394751, 29.714033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304813, 29.672625, 29.753759>,  <40.133831, 29.839350, 29.777596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304813, 29.672625, 29.753759>,  <40.589783, 29.394751, 29.714033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304813, 29.672625, 29.753759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118555, 0.020343, -0.992739,
		-0.691661, -0.719027, 0.067866,
		-0.712426, 0.694685, 0.099315,
		40.091087, 29.881029, 29.783554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069374, 29.115555, 29.254887>,  <40.589783, 29.394751, 29.714033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069374, 29.115555, 29.254887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975311, 29.500021, 29.312664>,  <39.918873, 29.730700, 29.347330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975311, 29.500021, 29.312664>,  <40.069374, 29.115555, 29.254887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975311, 29.500021, 29.312664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286082, 0.073581, -0.955376,
		-0.928901, -0.265988, 0.257669,
		-0.235159, 0.961164, 0.144444,
		39.904762, 29.788370, 29.355997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476639, 29.196419, 29.071266>,  <40.069374, 29.115555, 29.254887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476639, 29.196419, 29.071266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.586178, 29.580151, 29.043858>,  <39.651901, 29.810390, 29.027412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.586178, 29.580151, 29.043858>,  <39.476639, 29.196419, 29.071266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586178, 29.580151, 29.043858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472858, 0.072252, -0.878172,
		-0.837506, 0.272883, 0.473412,
		0.273843, 0.959330, -0.068523,
		39.668331, 29.867950, 29.023300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901081, 29.638525, 28.654739>,  <39.476639, 29.196419, 29.071266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901081, 29.638525, 28.654739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210709, 29.890480, 28.629230>,  <39.396484, 30.041653, 28.613926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210709, 29.890480, 28.629230>,  <38.901081, 29.638525, 28.654739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210709, 29.890480, 28.629230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342770, 0.332267, -0.878696,
		-0.532290, 0.702027, 0.473103,
		0.774065, 0.629887, -0.063771,
		39.442928, 30.079447, 28.610100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655842, 30.199488, 28.448364>,  <38.901081, 29.638525, 28.654739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655842, 30.199488, 28.448364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033081, 30.281063, 28.343306>,  <39.259422, 30.330009, 28.280272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033081, 30.281063, 28.343306>,  <38.655842, 30.199488, 28.448364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033081, 30.281063, 28.343306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325627, 0.406337, -0.853731,
		-0.067387, 0.890673, 0.449622,
		0.943094, 0.203940, -0.262645,
		39.316010, 30.342245, 28.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644119, 30.769342, 28.085331>,  <38.655842, 30.199488, 28.448364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644119, 30.769342, 28.085331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.983677, 30.599630, 27.959248>,  <39.187412, 30.497803, 27.883596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.983677, 30.599630, 27.959248>,  <38.644119, 30.769342, 28.085331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983677, 30.599630, 27.959248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132903, 0.405858, -0.904221,
		0.511575, 0.809484, 0.288143,
		0.848898, -0.424282, -0.315209,
		39.238346, 30.472345, 27.864685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037437, 31.328136, 27.760412>,  <38.644119, 30.769342, 28.085331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037437, 31.328136, 27.760412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183662, 30.978203, 27.633274>,  <39.271397, 30.768242, 27.556992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183662, 30.978203, 27.633274>,  <39.037437, 31.328136, 27.760412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183662, 30.978203, 27.633274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005643, 0.339391, -0.940628,
		0.930768, 0.345656, 0.119133,
		0.365566, -0.874835, -0.317845,
		39.293331, 30.715752, 27.537920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603268, 31.568073, 27.310717>,  <39.037437, 31.328136, 27.760412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603268, 31.568073, 27.310717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510410, 31.192848, 27.207840>,  <39.454697, 30.967712, 27.146114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510410, 31.192848, 27.207840>,  <39.603268, 31.568073, 27.310717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510410, 31.192848, 27.207840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002328, 0.264952, -0.964259,
		0.972678, -0.223250, -0.063691,
		-0.232146, -0.938062, -0.257193,
		39.440765, 30.911430, 27.130682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204113, 31.251945, 26.917772>,  <39.603268, 31.568073, 27.310717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204113, 31.251945, 26.917772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850155, 31.087305, 26.830551>,  <39.637779, 30.988520, 26.778217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850155, 31.087305, 26.830551>,  <40.204113, 31.251945, 26.917772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850155, 31.087305, 26.830551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090841, 0.306647, -0.947478,
		0.456850, -0.858225, -0.233959,
		-0.884893, -0.411603, -0.218054,
		39.584686, 30.963825, 26.765135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318840, 31.014732, 26.318556>,  <40.204113, 31.251945, 26.917772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318840, 31.014732, 26.318556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919350, 31.002701, 26.334789>,  <39.679657, 30.995481, 26.344530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919350, 31.002701, 26.334789>,  <40.318840, 31.014732, 26.318556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919350, 31.002701, 26.334789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047981, 0.313448, -0.948392,
		0.015803, -0.949129, -0.314491,
		-0.998723, -0.030077, 0.040586,
		39.619732, 30.993677, 26.346966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126057, 30.673243, 25.686415>,  <40.318840, 31.014732, 26.318556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126057, 30.673243, 25.686415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800861, 30.867399, 25.815067>,  <39.605743, 30.983894, 25.892258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800861, 30.867399, 25.815067>,  <40.126057, 30.673243, 25.686415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800861, 30.867399, 25.815067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136123, 0.378624, -0.915486,
		-0.566147, -0.788060, -0.241744,
		-0.812988, 0.485393, 0.321629,
		39.556965, 31.013018, 25.911556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.586975, 30.502636, 25.158247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476555, 30.846458, 25.330276>,  <39.410301, 31.052752, 25.433495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476555, 30.846458, 25.330276>,  <39.586975, 30.502636, 25.158247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476555, 30.846458, 25.330276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009648, 0.444958, -0.895500,
		-0.961094, -0.251354, -0.114539,
		-0.276052, 0.859555, 0.430071,
		39.393738, 31.104324, 25.459297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945396, 30.724171, 24.788212>,  <39.586975, 30.502636, 25.158247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945396, 30.724171, 24.788212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120205, 31.037926, 24.964277>,  <39.225090, 31.226179, 25.069916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120205, 31.037926, 24.964277>,  <38.945396, 30.724171, 24.788212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120205, 31.037926, 24.964277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070042, 0.517560, -0.852775,
		-0.896718, 0.341854, 0.281127,
		0.437025, 0.784390, 0.440161,
		39.251312, 31.273243, 25.096325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685894, 31.435009, 24.511957>,  <38.945396, 30.724171, 24.788212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685894, 31.435009, 24.511957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023869, 31.575270, 24.673512>,  <39.226654, 31.659426, 24.770443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023869, 31.575270, 24.673512>,  <38.685894, 31.435009, 24.511957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023869, 31.575270, 24.673512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147815, 0.572622, -0.806384,
		-0.514035, 0.741044, 0.431998,
		0.844937, 0.350653, 0.403885,
		39.277351, 31.680466, 24.794678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774086, 32.229401, 24.333315>,  <38.685894, 31.435009, 24.511957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774086, 32.229401, 24.333315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137505, 32.093212, 24.430170>,  <39.355556, 32.011501, 24.488283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137505, 32.093212, 24.430170>,  <38.774086, 32.229401, 24.333315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137505, 32.093212, 24.430170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395380, 0.513401, -0.761639,
		0.134999, 0.787719, 0.601061,
		0.908543, -0.340468, 0.242139,
		39.410069, 31.991072, 24.502811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148109, 32.801464, 24.359961>,  <38.774086, 32.229401, 24.333315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148109, 32.801464, 24.359961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400703, 32.498447, 24.293806>,  <39.552261, 32.316639, 24.254114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400703, 32.498447, 24.293806>,  <39.148109, 32.801464, 24.359961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400703, 32.498447, 24.293806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309226, 0.441642, -0.842218,
		0.711057, 0.480710, 0.513144,
		0.631488, -0.757542, -0.165385,
		39.590149, 32.271183, 24.244190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796207, 33.137455, 24.118336>,  <39.148109, 32.801464, 24.359961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796207, 33.137455, 24.118336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820366, 32.754097, 24.006741>,  <39.834862, 32.524082, 23.939783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820366, 32.754097, 24.006741>,  <39.796207, 33.137455, 24.118336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820366, 32.754097, 24.006741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301898, 0.283947, -0.910072,
		0.951425, -0.029257, 0.306487,
		0.060401, -0.958394, -0.278987,
		39.838486, 32.466579, 23.923044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342548, 33.182110, 23.675909>,  <39.796207, 33.137455, 24.118336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342548, 33.182110, 23.675909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178326, 32.827034, 23.592533>,  <40.079792, 32.613987, 23.542507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178326, 32.827034, 23.592533>,  <40.342548, 33.182110, 23.675909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178326, 32.827034, 23.592533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309841, 0.079181, -0.947486,
		0.857581, -0.453575, 0.242536,
		-0.410552, -0.887693, -0.208440,
		40.055161, 32.560726, 23.530001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821049, 32.722023, 23.373266>,  <40.342548, 33.182110, 23.675909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821049, 32.722023, 23.373266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480892, 32.562305, 23.236217>,  <40.276798, 32.466473, 23.153988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480892, 32.562305, 23.236217>,  <40.821049, 32.722023, 23.373266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480892, 32.562305, 23.236217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346533, 0.064936, -0.935787,
		0.395906, -0.914519, 0.083148,
		-0.850396, -0.399297, -0.342620,
		40.225773, 32.442516, 23.133432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057674, 32.206448, 22.923855>,  <40.821049, 32.722023, 23.373266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057674, 32.206448, 22.923855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.683430, 32.284702, 22.806311>,  <40.458881, 32.331654, 22.735785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.683430, 32.284702, 22.806311>,  <41.057674, 32.206448, 22.923855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683430, 32.284702, 22.806311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320237, 0.120010, -0.939705,
		-0.148575, -0.973305, -0.174933,
		-0.935614, 0.195637, -0.293858,
		40.402744, 32.343391, 22.718153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110886, 31.920877, 22.237501>,  <41.057674, 32.206448, 22.923855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110886, 31.920877, 22.237501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779797, 32.143291, 22.267702>,  <40.581142, 32.276741, 22.285824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779797, 32.143291, 22.267702>,  <41.110886, 31.920877, 22.237501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779797, 32.143291, 22.267702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025576, 0.171800, -0.984800,
		-0.560556, -0.813209, -0.156424,
		-0.827721, 0.556036, 0.075504,
		40.531479, 32.310101, 22.290354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542103, 31.758593, 21.687403>,  <41.110886, 31.920877, 22.237501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542103, 31.758593, 21.687403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440296, 32.132889, 21.785070>,  <40.379211, 32.357468, 21.843670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440296, 32.132889, 21.785070>,  <40.542103, 31.758593, 21.687403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440296, 32.132889, 21.785070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104234, 0.277554, -0.955039,
		-0.961436, -0.217618, -0.168176,
		-0.254512, 0.935738, 0.244167,
		40.363941, 32.413609, 21.858320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105095, 32.028572, 21.184105>,  <40.542103, 31.758593, 21.687403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105095, 32.028572, 21.184105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220932, 32.368851, 21.359583>,  <40.290436, 32.573017, 21.464870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220932, 32.368851, 21.359583>,  <40.105095, 32.028572, 21.184105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220932, 32.368851, 21.359583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081381, 0.478561, -0.874275,
		-0.953684, 0.217482, 0.207818,
		0.289593, 0.850694, 0.438697,
		40.307812, 32.624058, 21.491192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883018, 32.623142, 20.818302>,  <40.105095, 32.028572, 21.184105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883018, 32.623142, 20.818302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096146, 32.887211, 21.030069>,  <40.224022, 33.045650, 21.157129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096146, 32.887211, 21.030069>,  <39.883018, 32.623142, 20.818302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096146, 32.887211, 21.030069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117214, 0.562014, -0.818780,
		-0.838073, 0.498315, 0.222070,
		0.532817, 0.660168, 0.529418,
		40.255989, 33.085262, 21.188894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546543, 33.228703, 20.771278>,  <39.883018, 32.623142, 20.818302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546543, 33.228703, 20.771278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938606, 33.281292, 20.830612>,  <40.173843, 33.312843, 20.866213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938606, 33.281292, 20.830612>,  <39.546543, 33.228703, 20.771278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938606, 33.281292, 20.830612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056345, 0.532672, -0.844444,
		-0.190033, 0.836048, 0.514696,
		0.980160, 0.131471, 0.148332,
		40.232655, 33.320732, 20.875113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653465, 33.948391, 20.857300>,  <39.546543, 33.228703, 20.771278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653465, 33.948391, 20.857300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015060, 33.808189, 20.759356>,  <40.232018, 33.724068, 20.700588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015060, 33.808189, 20.759356>,  <39.653465, 33.948391, 20.857300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015060, 33.808189, 20.759356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064431, 0.677828, -0.732392,
		0.422680, 0.646295, 0.635330,
		0.903986, -0.350503, -0.244863,
		40.286255, 33.703037, 20.685896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055851, 34.482796, 20.617828>,  <39.653465, 33.948391, 20.857300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055851, 34.482796, 20.617828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237343, 34.168964, 20.448801>,  <40.346237, 33.980663, 20.347385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237343, 34.168964, 20.448801>,  <40.055851, 34.482796, 20.617828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237343, 34.168964, 20.448801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146812, 0.533521, -0.832947,
		0.878963, 0.315895, 0.357260,
		0.453730, -0.784580, -0.422568,
		40.373463, 33.933590, 20.322031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422710, 34.824596, 20.070116>,  <40.055851, 34.482796, 20.617828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422710, 34.824596, 20.070116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445095, 34.434486, 19.984592>,  <40.458527, 34.200420, 19.933279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445095, 34.434486, 19.984592>,  <40.422710, 34.824596, 20.070116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445095, 34.434486, 19.984592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008579, 0.213666, -0.976869,
		0.998396, 0.056504, 0.003590,
		0.055964, -0.975271, -0.213808,
		40.461884, 34.141907, 19.920450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972778, 34.758831, 19.684759>,  <40.422710, 34.824596, 20.070116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972778, 34.758831, 19.684759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.749912, 34.435959, 19.606752>,  <40.616192, 34.242237, 19.559948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.749912, 34.435959, 19.606752>,  <40.972778, 34.758831, 19.684759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749912, 34.435959, 19.606752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105060, 0.164440, -0.980776,
		0.823728, -0.566944, -0.006818,
		-0.557167, -0.807176, -0.195017,
		40.582764, 34.193806, 19.548246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354805, 34.395508, 19.220633>,  <40.972778, 34.758831, 19.684759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354805, 34.395508, 19.220633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.982895, 34.260586, 19.161640>,  <40.759750, 34.179634, 19.126245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.982895, 34.260586, 19.161640>,  <41.354805, 34.395508, 19.220633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982895, 34.260586, 19.161640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082029, 0.200724, -0.976208,
		0.358882, -0.919748, -0.158959,
		-0.929772, -0.337304, -0.147482,
		40.703964, 34.159393, 19.117395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416023, 34.004269, 18.578644>,  <41.354805, 34.395508, 19.220633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416023, 34.004269, 18.578644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041183, 34.128601, 18.642166>,  <40.816280, 34.203201, 18.680279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041183, 34.128601, 18.642166>,  <41.416023, 34.004269, 18.578644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041183, 34.128601, 18.642166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054626, 0.318754, -0.946262,
		-0.344751, -0.895420, -0.281726,
		-0.937104, 0.310835, 0.158804,
		40.760052, 34.221851, 18.689808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102776, 33.691387, 17.995352>,  <41.416023, 34.004269, 18.578644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102776, 33.691387, 17.995352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868206, 33.989582, 18.122068>,  <40.727467, 34.168499, 18.198099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868206, 33.989582, 18.122068>,  <41.102776, 33.691387, 17.995352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868206, 33.989582, 18.122068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220776, 0.229185, -0.948015,
		-0.779340, -0.625874, 0.030188,
		-0.586419, 0.745491, 0.316791,
		40.692280, 34.213230, 18.217106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470619, 33.727150, 17.558765>,  <41.102776, 33.691387, 17.995352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470619, 33.727150, 17.558765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506012, 34.088627, 17.726345>,  <40.527248, 34.305511, 17.826893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.506012, 34.088627, 17.726345>,  <40.470619, 33.727150, 17.558765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506012, 34.088627, 17.726345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264123, 0.426830, -0.864902,
		-0.960421, -0.034123, 0.276453,
		0.088486, 0.903688, 0.418949,
		40.532558, 34.359734, 17.852030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860310, 34.152714, 17.375744>,  <40.470619, 33.727150, 17.558765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860310, 34.152714, 17.375744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123524, 34.435081, 17.480560>,  <40.281452, 34.604504, 17.543449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123524, 34.435081, 17.480560>,  <39.860310, 34.152714, 17.375744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123524, 34.435081, 17.480560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209885, 0.506165, -0.836508,
		-0.723143, 0.495454, 0.481237,
		0.658037, 0.705919, 0.262042,
		40.320934, 34.646858, 17.559174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600971, 34.851288, 17.350067>,  <39.860310, 34.152714, 17.375744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600971, 34.851288, 17.350067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989220, 34.922676, 17.285519>,  <40.222168, 34.965508, 17.246790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989220, 34.922676, 17.285519>,  <39.600971, 34.851288, 17.350067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989220, 34.922676, 17.285519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224475, 0.430227, -0.874366,
		-0.086623, 0.884903, 0.457650,
		0.970622, 0.178471, -0.161371,
		40.280407, 34.976219, 17.237108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936333, 35.086529, 17.464752>,  <39.600971, 34.851288, 17.350067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936333, 35.086529, 17.464752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628025, 34.931267, 17.262665>,  <38.443039, 34.838108, 17.141413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628025, 34.931267, 17.262665>,  <38.936333, 35.086529, 17.464752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628025, 34.931267, 17.262665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270949, -0.517994, 0.811338,
		-0.576624, 0.762246, 0.294086,
		-0.770774, -0.388154, -0.505217,
		38.396793, 34.814819, 17.111099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334427, 35.282581, 17.770483>,  <38.936333, 35.086529, 17.464752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334427, 35.282581, 17.770483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259487, 34.936821, 17.583845>,  <38.214523, 34.729366, 17.471863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259487, 34.936821, 17.583845>,  <38.334427, 35.282581, 17.770483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259487, 34.936821, 17.583845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319341, -0.395606, 0.861114,
		-0.928935, 0.310333, -0.201922,
		-0.187351, -0.864401, -0.466595,
		38.203281, 34.677502, 17.443867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807198, 35.051147, 18.131195>,  <38.334427, 35.282581, 17.770483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807198, 35.051147, 18.131195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940800, 34.733757, 17.927689>,  <38.020962, 34.543324, 17.805586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940800, 34.733757, 17.927689>,  <37.807198, 35.051147, 18.131195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940800, 34.733757, 17.927689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186910, -0.584800, 0.789350,
		-0.923853, -0.168555, -0.343635,
		0.334007, -0.793472, -0.508765,
		38.041000, 34.495716, 17.775059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305065, 34.589912, 18.268553>,  <37.807198, 35.051147, 18.131195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305065, 34.589912, 18.268553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612507, 34.364838, 18.146818>,  <37.796974, 34.229794, 18.073778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612507, 34.364838, 18.146818>,  <37.305065, 34.589912, 18.268553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612507, 34.364838, 18.146818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206715, -0.668669, 0.714249,
		-0.605399, -0.486068, -0.630262,
		0.768610, -0.562690, -0.304334,
		37.843090, 34.196030, 18.055517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039474, 33.914993, 18.282635>,  <37.305065, 34.589912, 18.268553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039474, 33.914993, 18.282635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436272, 33.867817, 18.300724>,  <37.674351, 33.839512, 18.311577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436272, 33.867817, 18.300724>,  <37.039474, 33.914993, 18.282635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436272, 33.867817, 18.300724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111846, -0.653747, 0.748402,
		-0.058703, -0.747465, -0.661702,
		0.991990, -0.117942, 0.045224,
		37.733868, 33.832436, 18.314291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171288, 33.172016, 18.092411>,  <37.039474, 33.914993, 18.282635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171288, 33.172016, 18.092411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483376, 33.319241, 18.294712>,  <37.670628, 33.407578, 18.416094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483376, 33.319241, 18.294712>,  <37.171288, 33.172016, 18.092411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483376, 33.319241, 18.294712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027894, -0.828221, 0.559707,
		0.624884, -0.422587, -0.656461,
		0.780219, 0.368063, 0.505754,
		37.717442, 33.429661, 18.446438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536137, 32.562614, 18.347700>,  <37.171288, 33.172016, 18.092411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536137, 32.562614, 18.347700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703522, 32.859608, 18.556931>,  <37.803955, 33.037804, 18.682468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703522, 32.859608, 18.556931>,  <37.536137, 32.562614, 18.347700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703522, 32.859608, 18.556931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145519, -0.623298, 0.768325,
		0.896500, -0.245399, -0.368874,
		0.418465, 0.742481, 0.523076,
		37.829060, 33.082352, 18.713854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234581, 32.352428, 18.647364>,  <37.536137, 32.562614, 18.347700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234581, 32.352428, 18.647364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065006, 32.643509, 18.863039>,  <37.963261, 32.818157, 18.992445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065006, 32.643509, 18.863039>,  <38.234581, 32.352428, 18.647364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065006, 32.643509, 18.863039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071837, -0.620477, 0.780928,
		0.902836, 0.292334, 0.315322,
		-0.423942, 0.727701, 0.539189,
		37.937824, 32.861820, 19.024796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644440, 32.259373, 19.291046>,  <38.234581, 32.352428, 18.647364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644440, 32.259373, 19.291046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332607, 32.499580, 19.362185>,  <38.145508, 32.643703, 19.404867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332607, 32.499580, 19.362185>,  <38.644440, 32.259373, 19.291046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332607, 32.499580, 19.362185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118896, -0.420705, 0.899372,
		0.614909, 0.679991, 0.399374,
		-0.779584, 0.600516, 0.177847,
		38.098732, 32.679737, 19.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882908, 32.584053, 19.930077>,  <38.644440, 32.259373, 19.291046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882908, 32.584053, 19.930077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486820, 32.562111, 19.878777>,  <38.249168, 32.548946, 19.847996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486820, 32.562111, 19.878777>,  <38.882908, 32.584053, 19.930077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486820, 32.562111, 19.878777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087270, -0.473644, 0.876382,
		-0.108816, 0.879006, 0.464227,
		-0.990224, -0.054851, -0.128251,
		38.189754, 32.545654, 19.840302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644108, 32.868176, 20.504292>,  <38.882908, 32.584053, 19.930077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644108, 32.868176, 20.504292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318630, 32.675583, 20.374010>,  <38.123344, 32.560028, 20.295841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318630, 32.675583, 20.374010>,  <38.644108, 32.868176, 20.504292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318630, 32.675583, 20.374010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183981, -0.318190, 0.930003,
		-0.551414, 0.816659, 0.170326,
		-0.813692, -0.481480, -0.325704,
		38.074524, 32.531139, 20.276299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119102, 33.046436, 20.962006>,  <38.644108, 32.868176, 20.504292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119102, 33.046436, 20.962006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980259, 32.700623, 20.816631>,  <37.896954, 32.493134, 20.729406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980259, 32.700623, 20.816631>,  <38.119102, 33.046436, 20.962006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980259, 32.700623, 20.816631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241630, -0.292003, 0.925391,
		-0.906161, 0.409031, -0.107541,
		-0.347112, -0.864539, -0.363436,
		37.876125, 32.441261, 20.707600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458988, 33.065716, 21.225023>,  <38.119102, 33.046436, 20.962006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458988, 33.065716, 21.225023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600628, 32.697536, 21.158823>,  <37.685612, 32.476627, 21.119102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600628, 32.697536, 21.158823>,  <37.458988, 33.065716, 21.225023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600628, 32.697536, 21.158823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409355, -0.311661, 0.857494,
		-0.840858, -0.235890, -0.487149,
		0.354099, -0.920447, -0.165500,
		37.706860, 32.421402, 21.109173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261509, 32.800587, 21.821854>,  <37.458988, 33.065716, 21.225023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261509, 32.800587, 21.821854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422447, 32.492657, 21.623665>,  <37.519009, 32.307899, 21.504751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422447, 32.492657, 21.623665>,  <37.261509, 32.800587, 21.821854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422447, 32.492657, 21.623665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136533, -0.585615, 0.799008,
		-0.905251, -0.253826, -0.340724,
		0.402342, -0.769823, -0.495473,
		37.543148, 32.261711, 21.475023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791607, 32.180489, 21.802898>,  <37.261509, 32.800587, 21.821854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791607, 32.180489, 21.802898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166229, 32.041000, 21.788763>,  <37.391003, 31.957308, 21.780281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166229, 32.041000, 21.788763>,  <36.791607, 32.180489, 21.802898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166229, 32.041000, 21.788763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200544, -0.615818, 0.761938,
		-0.287467, -0.706514, -0.646684,
		0.936560, -0.348721, -0.035340,
		37.447197, 31.936384, 21.778160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764053, 31.450781, 21.845524>,  <36.791607, 32.180489, 21.802898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764053, 31.450781, 21.845524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150757, 31.511202, 21.928049>,  <37.382778, 31.547455, 21.977564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150757, 31.511202, 21.928049>,  <36.764053, 31.450781, 21.845524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150757, 31.511202, 21.928049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033985, -0.723797, 0.689176,
		0.253429, -0.673277, -0.694602,
		0.966757, 0.151051, 0.206312,
		37.440784, 31.556517, 21.989943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111427, 30.778316, 21.916355>,  <36.764053, 31.450781, 21.845524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111427, 30.778316, 21.916355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349186, 31.041380, 22.101475>,  <37.491840, 31.199219, 22.212545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349186, 31.041380, 22.101475>,  <37.111427, 30.778316, 21.916355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349186, 31.041380, 22.101475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061566, -0.611019, 0.789218,
		0.801814, -0.440613, -0.403676,
		0.594394, 0.657659, 0.462797,
		37.527504, 31.238678, 22.240314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417412, 30.283787, 22.204288>,  <37.111427, 30.778316, 21.916355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417412, 30.283787, 22.204288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492912, 30.620317, 22.406889>,  <37.538212, 30.822235, 22.528450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492912, 30.620317, 22.406889>,  <37.417412, 30.283787, 22.204288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492912, 30.620317, 22.406889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028764, -0.510815, 0.859210,
		0.981604, -0.176744, -0.072217,
		0.188750, 0.841326, 0.506502,
		37.549538, 30.872715, 22.558840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914017, 30.115835, 22.690805>,  <37.417412, 30.283787, 22.204288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914017, 30.115835, 22.690805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733788, 30.436165, 22.848621>,  <37.625648, 30.628363, 22.943312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733788, 30.436165, 22.848621>,  <37.914017, 30.115835, 22.690805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733788, 30.436165, 22.848621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057365, -0.467002, 0.882393,
		0.890894, 0.374950, 0.256359,
		-0.450573, 0.800825, 0.394540,
		37.598614, 30.676413, 22.966984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193672, 30.280697, 23.371994>,  <37.914017, 30.115835, 22.690805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193672, 30.280697, 23.371994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.831841, 30.451050, 23.379610>,  <37.614742, 30.553263, 23.384180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.831841, 30.451050, 23.379610>,  <38.193672, 30.280697, 23.371994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831841, 30.451050, 23.379610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062413, -0.176484, 0.982323,
		0.421716, 0.887398, 0.186225,
		-0.904577, 0.425884, 0.019041,
		37.560467, 30.578815, 23.385323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.593784, 30.395227, 28.030519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.196777, 30.382458, 28.077654>,  <39.958572, 30.374796, 28.105934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.196777, 30.382458, 28.077654>,  <40.593784, 30.395227, 28.030519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196777, 30.382458, 28.077654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118148, -0.008054, 0.992963,
		-0.030749, 0.999458, 0.011765,
		-0.992520, -0.031922, 0.117836,
		39.899021, 30.372881, 28.113005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412167, 30.904469, 28.431503>,  <40.593784, 30.395227, 28.030519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412167, 30.904469, 28.431503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108253, 30.655005, 28.505024>,  <39.925907, 30.505325, 28.549135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108253, 30.655005, 28.505024>,  <40.412167, 30.904469, 28.431503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108253, 30.655005, 28.505024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208889, 0.033559, 0.977363,
		-0.615710, 0.780976, 0.104778,
		-0.759781, -0.623659, 0.183800,
		39.880318, 30.467907, 28.560163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982468, 31.155554, 29.009531>,  <40.412167, 30.904469, 28.431503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982468, 31.155554, 29.009531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.897224, 30.764793, 29.003155>,  <39.846081, 30.530338, 28.999329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.897224, 30.764793, 29.003155>,  <39.982468, 31.155554, 29.009531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897224, 30.764793, 29.003155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031118, -0.023093, 0.999249,
		-0.976534, 0.212447, 0.035320,
		-0.213103, -0.976900, -0.015940,
		39.833294, 30.471724, 28.998373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663521, 31.033234, 29.565212>,  <39.982468, 31.155554, 29.009531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663521, 31.033234, 29.565212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730972, 30.643711, 29.504196>,  <39.771442, 30.409998, 29.467587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730972, 30.643711, 29.504196>,  <39.663521, 31.033234, 29.565212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730972, 30.643711, 29.504196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098283, -0.170598, 0.980427,
		-0.980767, -0.150340, -0.124477,
		0.168633, -0.973804, -0.152541,
		39.781563, 30.351570, 29.458433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068439, 30.697071, 29.848734>,  <39.663521, 31.033234, 29.565212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068439, 30.697071, 29.848734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386658, 30.454754, 29.844250>,  <39.577587, 30.309364, 29.841560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386658, 30.454754, 29.844250>,  <39.068439, 30.697071, 29.848734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386658, 30.454754, 29.844250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146383, -0.210120, 0.966655,
		-0.587947, -0.767376, -0.255838,
		0.795544, -0.605792, -0.011209,
		39.625320, 30.273016, 29.840887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828762, 30.183239, 30.226099>,  <39.068439, 30.697071, 29.848734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828762, 30.183239, 30.226099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217113, 30.096291, 30.185808>,  <39.450123, 30.044121, 30.161633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217113, 30.096291, 30.185808>,  <38.828762, 30.183239, 30.226099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217113, 30.096291, 30.185808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046412, -0.241826, 0.969209,
		-0.234999, -0.945667, -0.224698,
		0.970887, -0.217335, -0.100719,
		39.508377, 30.031078, 30.155590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888962, 29.419405, 30.474974>,  <38.828762, 30.183239, 30.226099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888962, 29.419405, 30.474974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229446, 29.620489, 30.535265>,  <39.433739, 29.741140, 30.571440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229446, 29.620489, 30.535265>,  <38.888962, 29.419405, 30.474974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229446, 29.620489, 30.535265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002021, -0.284057, 0.958805,
		0.524819, -0.816451, -0.240777,
		0.851211, 0.502712, 0.150729,
		39.484810, 29.771303, 30.580484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300888, 29.013803, 30.911673>,  <38.888962, 29.419405, 30.474974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300888, 29.013803, 30.911673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451256, 29.379955, 30.969311>,  <39.541477, 29.599648, 31.003895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451256, 29.379955, 30.969311>,  <39.300888, 29.013803, 30.911673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451256, 29.379955, 30.969311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257924, -0.045998, 0.965070,
		0.890035, -0.399951, 0.218808,
		0.375916, 0.915382, 0.144096,
		39.564030, 29.654570, 31.012539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682869, 28.870810, 31.420656>,  <39.300888, 29.013803, 30.911673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682869, 28.870810, 31.420656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.662125, 29.268242, 31.460876>,  <39.649677, 29.506701, 31.485008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.662125, 29.268242, 31.460876>,  <39.682869, 28.870810, 31.420656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662125, 29.268242, 31.460876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229551, -0.109848, 0.967078,
		0.971914, 0.027070, 0.233773,
		-0.051858, 0.993580, 0.100549,
		39.646568, 29.566317, 31.491041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124390, 28.952690, 31.943913>,  <39.682869, 28.870810, 31.420656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124390, 28.952690, 31.943913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865158, 29.252741, 31.891294>,  <39.709618, 29.432772, 31.859724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865158, 29.252741, 31.891294>,  <40.124390, 28.952690, 31.943913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865158, 29.252741, 31.891294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359355, -0.148919, 0.921242,
		0.671458, 0.644310, 0.366073,
		-0.648081, 0.750125, -0.131543,
		39.670734, 29.477777, 31.851831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149189, 29.296345, 32.551392>,  <40.124390, 28.952690, 31.943913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149189, 29.296345, 32.551392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804974, 29.411154, 32.383064>,  <39.598442, 29.480040, 32.282066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804974, 29.411154, 32.383064>,  <40.149189, 29.296345, 32.551392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804974, 29.411154, 32.383064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477624, -0.167522, 0.862445,
		0.177045, 0.943162, 0.281249,
		-0.860540, 0.287023, -0.420818,
		39.546810, 29.497261, 32.256821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855385, 29.787426, 32.976971>,  <40.149189, 29.296345, 32.551392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855385, 29.787426, 32.976971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540951, 29.626369, 32.789375>,  <39.352291, 29.529736, 32.676819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540951, 29.626369, 32.789375>,  <39.855385, 29.787426, 32.976971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540951, 29.626369, 32.789375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499464, -0.033245, 0.865696,
		-0.364157, 0.914754, -0.174971,
		-0.786083, -0.402641, -0.468993,
		39.305126, 29.505577, 32.648678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288219, 30.167480, 33.091850>,  <39.855385, 29.787426, 32.976971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288219, 30.167480, 33.091850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191624, 29.780693, 33.059223>,  <39.133667, 29.548620, 33.039646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191624, 29.780693, 33.059223>,  <39.288219, 30.167480, 33.091850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191624, 29.780693, 33.059223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472172, 0.043651, 0.880425,
		-0.847783, 0.251130, -0.467117,
		-0.241491, -0.966969, -0.081570,
		39.119175, 29.490602, 33.034752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062260, 30.049562, 33.729187>,  <39.288219, 30.167480, 33.091850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062260, 30.049562, 33.729187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928566, 30.295139, 34.015224>,  <38.848351, 30.442486, 34.186848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928566, 30.295139, 34.015224>,  <39.062260, 30.049562, 33.729187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928566, 30.295139, 34.015224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331364, 0.633743, -0.698976,
		-0.882317, -0.470581, -0.008383,
		-0.334237, 0.613941, 0.715096,
		38.828293, 30.479322, 34.229752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445221, 30.382751, 33.573097>,  <39.062260, 30.049562, 33.729187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445221, 30.382751, 33.573097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653740, 30.626602, 33.811962>,  <38.778851, 30.772913, 33.955280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653740, 30.626602, 33.811962>,  <38.445221, 30.382751, 33.573097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653740, 30.626602, 33.811962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265239, 0.780853, -0.565612,
		-0.811108, 0.136461, 0.568754,
		0.521297, 0.609629, 0.597161,
		38.810127, 30.809490, 33.991112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989361, 30.966097, 33.779976>,  <38.445221, 30.382751, 33.573097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989361, 30.966097, 33.779976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380363, 31.049950, 33.770702>,  <38.614964, 31.100262, 33.765137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380363, 31.049950, 33.770702>,  <37.989361, 30.966097, 33.779976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380363, 31.049950, 33.770702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187852, 0.815367, -0.547621,
		-0.095893, 0.539658, 0.836405,
		0.977505, 0.209633, -0.023188,
		38.673615, 31.112839, 33.763744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077480, 31.658484, 33.935246>,  <37.989361, 30.966097, 33.779976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077480, 31.658484, 33.935246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403915, 31.548475, 33.731926>,  <38.599777, 31.482471, 33.609936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403915, 31.548475, 33.731926>,  <38.077480, 31.658484, 33.935246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403915, 31.548475, 33.731926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095470, 0.803281, -0.587898,
		0.569991, 0.528303, 0.629290,
		0.816086, -0.275018, -0.508300,
		38.648743, 31.465969, 33.579437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300163, 32.256119, 33.802593>,  <38.077480, 31.658484, 33.935246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300163, 32.256119, 33.802593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515972, 32.034470, 33.549023>,  <38.645458, 31.901480, 33.396881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515972, 32.034470, 33.549023>,  <38.300163, 32.256119, 33.802593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515972, 32.034470, 33.549023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114523, 0.697616, -0.707260,
		0.834147, 0.454180, 0.312919,
		0.539521, -0.554123, -0.633929,
		38.677830, 31.868233, 33.358845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492805, 32.726810, 33.357788>,  <38.300163, 32.256119, 33.802593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492805, 32.726810, 33.357788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.587223, 32.411678, 33.130241>,  <38.643875, 32.222599, 32.993713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.587223, 32.411678, 33.130241>,  <38.492805, 32.726810, 33.357788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587223, 32.411678, 33.130241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107981, 0.603050, -0.790361,
		0.965723, 0.125136, 0.227419,
		0.236048, -0.787827, -0.568868,
		38.658039, 32.175331, 32.959579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016094, 32.961552, 32.950298>,  <38.492805, 32.726810, 33.357788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016094, 32.961552, 32.950298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865147, 32.644108, 32.759392>,  <38.774578, 32.453644, 32.644848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865147, 32.644108, 32.759392>,  <39.016094, 32.961552, 32.950298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865147, 32.644108, 32.759392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099330, 0.477706, -0.872886,
		0.920719, -0.376810, -0.101445,
		-0.377373, -0.793606, -0.477262,
		38.751934, 32.406025, 32.616215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396584, 32.864582, 32.419807>,  <39.016094, 32.961552, 32.950298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396584, 32.864582, 32.419807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076912, 32.650173, 32.310997>,  <38.885109, 32.521526, 32.245708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076912, 32.650173, 32.310997>,  <39.396584, 32.864582, 32.419807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076912, 32.650173, 32.310997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066414, 0.371042, -0.926238,
		0.597418, -0.758293, -0.260929,
		-0.799175, -0.536022, -0.272028,
		38.837158, 32.489368, 32.229389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554676, 32.550667, 31.784414>,  <39.396584, 32.864582, 32.419807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554676, 32.550667, 31.784414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.154816, 32.551689, 31.794914>,  <38.914898, 32.552303, 31.801214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.154816, 32.551689, 31.794914>,  <39.554676, 32.550667, 31.784414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154816, 32.551689, 31.794914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024399, 0.288252, -0.957244,
		-0.010012, -0.957551, -0.288089,
		-0.999652, 0.002554, 0.026249,
		38.854919, 32.552456, 31.802790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354279, 32.217800, 31.174250>,  <39.554676, 32.550667, 31.784414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354279, 32.217800, 31.174250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055080, 32.456139, 31.291195>,  <38.875561, 32.599140, 31.361362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055080, 32.456139, 31.291195>,  <39.354279, 32.217800, 31.174250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055080, 32.456139, 31.291195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154028, 0.272635, -0.949708,
		-0.645588, -0.755406, -0.112152,
		-0.747991, 0.595846, 0.292364,
		38.830685, 32.634892, 31.378904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828674, 32.092499, 30.647627>,  <39.354279, 32.217800, 31.174250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828674, 32.092499, 30.647627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.717075, 32.421730, 30.845497>,  <38.650116, 32.619270, 30.964218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.717075, 32.421730, 30.845497>,  <38.828674, 32.092499, 30.647627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717075, 32.421730, 30.845497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285537, 0.420725, -0.861080,
		-0.916858, -0.381488, 0.117637,
		-0.278999, 0.823078, 0.494674,
		38.633377, 32.668652, 30.993898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404156, 32.272808, 30.214634>,  <38.828674, 32.092499, 30.647627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404156, 32.272808, 30.214634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.471947, 32.608868, 30.420715>,  <38.512623, 32.810501, 30.544365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.471947, 32.608868, 30.420715>,  <38.404156, 32.272808, 30.214634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471947, 32.608868, 30.420715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150504, 0.538697, -0.828947,
		-0.973974, 0.062948, 0.217742,
		0.169477, 0.840144, 0.515204,
		38.522789, 32.860912, 30.575277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774231, 32.726959, 30.220877>,  <38.404156, 32.272808, 30.214634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774231, 32.726959, 30.220877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108845, 32.941017, 30.267927>,  <38.309612, 33.069450, 30.296158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108845, 32.941017, 30.267927>,  <37.774231, 32.726959, 30.220877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108845, 32.941017, 30.267927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097746, 0.356994, -0.928979,
		-0.539126, 0.765624, 0.350945,
		0.836534, 0.535140, 0.117628,
		38.359806, 33.101559, 30.303215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568558, 33.433971, 30.052607>,  <37.774231, 32.726959, 30.220877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568558, 33.433971, 30.052607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967102, 33.438354, 30.018791>,  <38.206230, 33.440983, 29.998503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967102, 33.438354, 30.018791>,  <37.568558, 33.433971, 30.052607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967102, 33.438354, 30.018791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079020, 0.490674, -0.867753,
		0.031974, 0.871275, 0.489753,
		0.996360, 0.010955, -0.084537,
		38.266010, 33.441643, 29.993431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711468, 34.132458, 29.698660>,  <37.568558, 33.433971, 30.052607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711468, 34.132458, 29.698660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026752, 33.891823, 29.646797>,  <38.215923, 33.747440, 29.615679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026752, 33.891823, 29.646797>,  <37.711468, 34.132458, 29.698660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026752, 33.891823, 29.646797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088240, 0.318990, -0.943641,
		0.609046, 0.732347, 0.304516,
		0.788211, -0.601592, -0.129657,
		38.263214, 33.711346, 29.607901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427406, 34.810921, 29.660473>,  <37.711468, 34.132458, 29.698660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427406, 34.810921, 29.660473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061089, 34.905529, 29.530628>,  <36.841297, 34.962292, 29.452721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061089, 34.905529, 29.530628>,  <37.427406, 34.810921, 29.660473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061089, 34.905529, 29.530628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392561, -0.356259, 0.847924,
		0.084903, 0.903957, 0.419108,
		-0.915799, 0.236517, -0.324611,
		36.786350, 34.976482, 29.433245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070354, 35.214134, 30.093554>,  <37.427406, 34.810921, 29.660473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070354, 35.214134, 30.093554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812889, 34.977478, 29.899374>,  <36.658409, 34.835484, 29.782867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812889, 34.977478, 29.899374>,  <37.070354, 35.214134, 30.093554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812889, 34.977478, 29.899374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299374, -0.389117, 0.871185,
		-0.704327, 0.706077, 0.073336,
		-0.643660, -0.591644, -0.485447,
		36.619793, 34.799984, 29.753740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436291, 35.319771, 30.356453>,  <37.070354, 35.214134, 30.093554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436291, 35.319771, 30.356453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.429260, 34.956497, 30.189169>,  <36.425041, 34.738533, 30.088799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.429260, 34.956497, 30.189169>,  <36.436291, 35.319771, 30.356453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429260, 34.956497, 30.189169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387796, -0.379337, 0.840070,
		-0.921578, 0.176947, -0.345520,
		-0.017579, -0.908181, -0.418208,
		36.423988, 34.684044, 30.063707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725410, 35.222691, 30.549437>,  <36.436291, 35.319771, 30.356453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725410, 35.222691, 30.549437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.926556, 34.886959, 30.466825>,  <36.047241, 34.685520, 30.417259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.926556, 34.886959, 30.466825>,  <35.725410, 35.222691, 30.549437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926556, 34.886959, 30.466825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369453, -0.424719, 0.826510,
		-0.781434, -0.339315, -0.523667,
		0.502858, -0.839333, -0.206529,
		36.077412, 34.635159, 30.404867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207340, 34.640995, 30.550283>,  <35.725410, 35.222691, 30.549437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207340, 34.640995, 30.550283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558392, 34.467987, 30.632929>,  <35.769024, 34.364182, 30.682516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558392, 34.467987, 30.632929>,  <35.207340, 34.640995, 30.550283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558392, 34.467987, 30.632929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440277, -0.556963, 0.704236,
		-0.189518, -0.709028, -0.679236,
		0.877633, -0.432517, 0.206614,
		35.821682, 34.338230, 30.694914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000423, 33.968800, 30.772474>,  <35.207340, 34.640995, 30.550283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000423, 33.968800, 30.772474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.382515, 33.958187, 30.890345>,  <35.611771, 33.951820, 30.961067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.382515, 33.958187, 30.890345>,  <35.000423, 33.968800, 30.772474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382515, 33.958187, 30.890345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260196, -0.549446, 0.793982,
		0.140842, -0.835108, -0.531750,
		0.955229, -0.026533, 0.294676,
		35.669083, 33.950226, 30.978748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252129, 33.261089, 30.796030>,  <35.000423, 33.968800, 30.772474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252129, 33.261089, 30.796030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.440399, 33.497066, 31.058460>,  <35.553360, 33.638653, 31.215919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.440399, 33.497066, 31.058460>,  <35.252129, 33.261089, 30.796030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440399, 33.497066, 31.058460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182029, -0.662668, 0.726455,
		0.863327, -0.461347, -0.204512,
		0.470672, 0.589941, 0.656078,
		35.581600, 33.674049, 31.255283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485992, 32.820080, 31.156935>,  <35.252129, 33.261089, 30.796030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485992, 32.820080, 31.156935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.565006, 33.127228, 31.400688>,  <35.612415, 33.311516, 31.546940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.565006, 33.127228, 31.400688>,  <35.485992, 32.820080, 31.156935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565006, 33.127228, 31.400688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393340, -0.507312, 0.766758,
		0.897922, -0.391156, 0.201825,
		0.197534, 0.767875, 0.609384,
		35.624268, 33.357590, 31.583504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867321, 32.571846, 31.715248>,  <35.485992, 32.820080, 31.156935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867321, 32.571846, 31.715248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.680363, 32.904968, 31.833891>,  <35.568188, 33.104843, 31.905077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.680363, 32.904968, 31.833891>,  <35.867321, 32.571846, 31.715248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680363, 32.904968, 31.833891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375806, -0.490859, 0.786020,
		0.800193, 0.255918, 0.542400,
		-0.467398, 0.832805, 0.296606,
		35.540142, 33.154808, 31.922873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064640, 32.650799, 32.404526>,  <35.867321, 32.571846, 31.715248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064640, 32.650799, 32.404526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.740082, 32.880360, 32.360207>,  <35.545349, 33.018097, 32.333614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.740082, 32.880360, 32.360207>,  <36.064640, 32.650799, 32.404526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740082, 32.880360, 32.360207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368161, -0.354573, 0.859498,
		0.453981, 0.738183, 0.498986,
		-0.811393, 0.573903, -0.110800,
		35.496662, 33.052532, 32.326965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067436, 32.848938, 33.067196>,  <36.064640, 32.650799, 32.404526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067436, 32.848938, 33.067196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707088, 32.912636, 32.905663>,  <35.490879, 32.950855, 32.808743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707088, 32.912636, 32.905663>,  <36.067436, 32.848938, 33.067196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707088, 32.912636, 32.905663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433519, -0.377908, 0.818075,
		-0.022342, 0.912046, 0.409479,
		-0.900867, 0.159240, -0.403833,
		35.436829, 32.960407, 32.784512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647167, 33.080273, 33.557697>,  <36.067436, 32.848938, 33.067196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647167, 33.080273, 33.557697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.398678, 32.901764, 33.300037>,  <35.249584, 32.794659, 33.145443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.398678, 32.901764, 33.300037>,  <35.647167, 33.080273, 33.557697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398678, 32.901764, 33.300037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405925, -0.519861, 0.751644,
		-0.670302, 0.728415, 0.141798,
		-0.621224, -0.446270, -0.644146,
		35.212311, 32.767883, 33.106792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.970284, 38.119995, 26.598696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852440, 37.755386, 26.483919>,  <36.781734, 37.536621, 26.415052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852440, 37.755386, 26.483919>,  <36.970284, 38.119995, 26.598696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852440, 37.755386, 26.483919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038209, -0.288792, 0.956629,
		-0.954852, 0.292799, 0.050253,
		-0.294613, -0.911519, -0.286942,
		36.764057, 37.481930, 26.397837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393471, 37.930443, 27.130468>,  <36.970284, 38.119995, 26.598696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393471, 37.930443, 27.130468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494747, 37.579674, 26.967056>,  <36.555515, 37.369213, 26.869009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494747, 37.579674, 26.967056>,  <36.393471, 37.930443, 27.130468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494747, 37.579674, 26.967056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056582, -0.434989, 0.898656,
		-0.965759, -0.204420, -0.159756,
		0.253195, -0.876925, -0.408528,
		36.570705, 37.316597, 26.844498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126381, 37.354752, 27.636276>,  <36.393471, 37.930443, 27.130468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126381, 37.354752, 27.636276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359455, 37.140396, 27.391886>,  <36.499302, 37.011784, 27.245251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359455, 37.140396, 27.391886>,  <36.126381, 37.354752, 27.636276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359455, 37.140396, 27.391886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193312, -0.638819, 0.744675,
		-0.789371, -0.552022, -0.268637,
		0.582687, -0.535893, -0.610978,
		36.534260, 36.979630, 27.208591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822372, 36.689976, 27.600428>,  <36.126381, 37.354752, 27.636276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822372, 36.689976, 27.600428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208439, 36.647655, 27.504709>,  <36.440079, 36.622265, 27.447277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208439, 36.647655, 27.504709>,  <35.822372, 36.689976, 27.600428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208439, 36.647655, 27.504709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055628, -0.810709, 0.582801,
		-0.255661, -0.575810, -0.776582,
		0.965164, -0.105800, -0.239298,
		36.497990, 36.615917, 27.432920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960640, 35.997005, 27.336775>,  <35.822372, 36.689976, 27.600428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960640, 35.997005, 27.336775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308952, 36.122620, 27.488106>,  <36.517941, 36.197987, 27.578903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308952, 36.122620, 27.488106>,  <35.960640, 35.997005, 27.336775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308952, 36.122620, 27.488106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088056, -0.657414, 0.748367,
		0.483728, -0.684974, -0.544809,
		0.870777, 0.314033, 0.378326,
		36.570187, 36.216831, 27.601603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391834, 35.480858, 27.352205>,  <35.960640, 35.997005, 27.336775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391834, 35.480858, 27.352205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544025, 35.717525, 27.636505>,  <36.635342, 35.859528, 27.807085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544025, 35.717525, 27.636505>,  <36.391834, 35.480858, 27.352205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544025, 35.717525, 27.636505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031100, -0.776304, 0.629591,
		0.924265, -0.217444, -0.313770,
		0.380482, 0.591668, 0.710748,
		36.658169, 35.895027, 27.849730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925751, 35.178890, 27.660807>,  <36.391834, 35.480858, 27.352205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925751, 35.178890, 27.660807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792969, 35.423500, 27.948095>,  <36.713299, 35.570267, 28.120468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792969, 35.423500, 27.948095>,  <36.925751, 35.178890, 27.660807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792969, 35.423500, 27.948095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167206, -0.711194, 0.682822,
		0.928359, 0.346756, 0.133831,
		-0.331952, 0.611526, 0.718223,
		36.693382, 35.606956, 28.163563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370377, 35.028957, 28.294287>,  <36.925751, 35.178890, 27.660807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370377, 35.028957, 28.294287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082027, 35.261810, 28.444733>,  <36.909019, 35.401524, 28.535000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082027, 35.261810, 28.444733>,  <37.370377, 35.028957, 28.294287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082027, 35.261810, 28.444733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013228, -0.531029, 0.847251,
		0.692942, 0.615734, 0.375103,
		-0.720872, 0.582134, 0.376117,
		36.865765, 35.436451, 28.557568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590977, 34.995316, 28.989330>,  <37.370377, 35.028957, 28.294287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590977, 34.995316, 28.989330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211559, 35.121922, 28.992798>,  <36.983910, 35.197887, 28.994879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211559, 35.121922, 28.992798>,  <37.590977, 34.995316, 28.989330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211559, 35.121922, 28.992798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162253, -0.509387, 0.845103,
		0.271906, 0.800213, 0.534534,
		-0.948547, 0.316519, 0.008668,
		36.926994, 35.216877, 28.995398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239273, 34.506054, 29.368620>,  <37.590977, 34.995316, 28.989330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239273, 34.506054, 29.368620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378971, 34.140491, 29.285864>,  <38.462791, 33.921154, 29.236210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378971, 34.140491, 29.285864>,  <38.239273, 34.506054, 29.368620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378971, 34.140491, 29.285864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328703, 0.326255, -0.886291,
		0.877485, 0.241530, 0.414348,
		0.349249, -0.913904, -0.206892,
		38.483746, 33.866322, 29.223797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952160, 34.607529, 29.215185>,  <38.239273, 34.506054, 29.368620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952160, 34.607529, 29.215185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823898, 34.271717, 29.039747>,  <38.746941, 34.070229, 28.934484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823898, 34.271717, 29.039747>,  <38.952160, 34.607529, 29.215185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823898, 34.271717, 29.039747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510513, 0.236853, -0.826606,
		0.797844, -0.488966, 0.352643,
		-0.320658, -0.839531, -0.438595,
		38.727699, 34.019859, 28.908169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449566, 34.552917, 28.721170>,  <38.952160, 34.607529, 29.215185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449566, 34.552917, 28.721170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174465, 34.286095, 28.606604>,  <39.009407, 34.125999, 28.537863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174465, 34.286095, 28.606604>,  <39.449566, 34.552917, 28.721170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174465, 34.286095, 28.606604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293435, 0.105433, -0.950147,
		0.664001, -0.737508, 0.123227,
		-0.687749, -0.667058, -0.286418,
		38.968140, 34.085976, 28.520678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780384, 34.088692, 28.254143>,  <39.449566, 34.552917, 28.721170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780384, 34.088692, 28.254143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389011, 34.067036, 28.174398>,  <39.154190, 34.054043, 28.126551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389011, 34.067036, 28.174398>,  <39.780384, 34.088692, 28.254143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389011, 34.067036, 28.174398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160000, 0.411846, -0.897097,
		0.130679, -0.909644, -0.394299,
		-0.978429, -0.054143, -0.199363,
		39.095482, 34.050793, 28.114590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763920, 33.832607, 27.548992>,  <39.780384, 34.088692, 28.254143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763920, 33.832607, 27.548992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388832, 33.946304, 27.628881>,  <39.163780, 34.014523, 27.676815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388832, 33.946304, 27.628881>,  <39.763920, 33.832607, 27.548992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388832, 33.946304, 27.628881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113856, 0.291707, -0.949707,
		-0.328209, -0.913298, -0.241176,
		-0.937718, 0.284243, 0.199726,
		39.107517, 34.031578, 27.688799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305820, 33.395515, 27.154295>,  <39.763920, 33.832607, 27.548992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305820, 33.395515, 27.154295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146797, 33.753544, 27.235085>,  <39.051384, 33.968361, 27.283558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146797, 33.753544, 27.235085>,  <39.305820, 33.395515, 27.154295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146797, 33.753544, 27.235085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112061, 0.171109, -0.978859,
		-0.910707, -0.411791, 0.032276,
		-0.397563, 0.895070, 0.201976,
		39.027527, 34.022064, 27.295677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589294, 33.469414, 26.855755>,  <39.305820, 33.395515, 27.154295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589294, 33.469414, 26.855755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759567, 33.830124, 26.885677>,  <38.861732, 34.046551, 26.903631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759567, 33.830124, 26.885677>,  <38.589294, 33.469414, 26.855755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759567, 33.830124, 26.885677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149694, 0.151710, -0.977024,
		-0.892403, 0.404707, 0.199571,
		0.425685, 0.901774, 0.074804,
		38.887272, 34.100655, 26.908119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479218, 33.718723, 26.199724>,  <38.589294, 33.469414, 26.855755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479218, 33.718723, 26.199724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655201, 34.045219, 26.349487>,  <38.760792, 34.241119, 26.439344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655201, 34.045219, 26.349487>,  <38.479218, 33.718723, 26.199724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655201, 34.045219, 26.349487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031958, 0.430893, -0.901837,
		-0.897449, 0.384807, 0.215661,
		0.439960, 0.816245, 0.374407,
		38.787189, 34.290092, 26.461809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123768, 34.278099, 25.960827>,  <38.479218, 33.718723, 26.199724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123768, 34.278099, 25.960827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485840, 34.428829, 26.039463>,  <38.703083, 34.519268, 26.086645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485840, 34.428829, 26.039463>,  <38.123768, 34.278099, 25.960827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485840, 34.428829, 26.039463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055645, 0.353495, -0.933780,
		-0.421363, 0.856181, 0.299010,
		0.905183, 0.376822, 0.196592,
		38.757397, 34.541874, 26.098440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130741, 35.076180, 25.852346>,  <38.123768, 34.278099, 25.960827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130741, 35.076180, 25.852346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486832, 34.898842, 25.810503>,  <38.700485, 34.792439, 25.785397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486832, 34.898842, 25.810503>,  <38.130741, 35.076180, 25.852346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486832, 34.898842, 25.810503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097392, 0.409588, -0.907057,
		0.444982, 0.797299, 0.407805,
		0.890228, -0.443341, -0.104609,
		38.753899, 34.765839, 25.779119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555058, 35.563133, 25.516108>,  <38.130741, 35.076180, 25.852346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555058, 35.563133, 25.516108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739536, 35.215000, 25.447033>,  <38.850224, 35.006119, 25.405588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739536, 35.215000, 25.447033>,  <38.555058, 35.563133, 25.516108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739536, 35.215000, 25.447033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213064, 0.297554, -0.930626,
		0.861338, 0.392407, 0.322667,
		0.461195, -0.870332, -0.172687,
		38.877895, 34.953899, 25.395227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189167, 35.809532, 25.193884>,  <38.555058, 35.563133, 25.516108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189167, 35.809532, 25.193884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159451, 35.419113, 25.112099>,  <39.141621, 35.184860, 25.063028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159451, 35.419113, 25.112099>,  <39.189167, 35.809532, 25.193884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159451, 35.419113, 25.112099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251210, 0.180100, -0.951030,
		0.965078, -0.122012, 0.231815,
		-0.074287, -0.976052, -0.204462,
		39.137165, 35.126297, 25.050760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645519, 35.739452, 24.698778>,  <39.189167, 35.809532, 25.193884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645519, 35.739452, 24.698778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432697, 35.406845, 24.634924>,  <39.305004, 35.207279, 24.596611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432697, 35.406845, 24.634924>,  <39.645519, 35.739452, 24.698778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432697, 35.406845, 24.634924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182757, 0.071309, -0.980569,
		0.826749, -0.550894, 0.114026,
		-0.532059, -0.831523, -0.159635,
		39.273079, 35.157387, 24.587034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014278, 35.327686, 24.230888>,  <39.645519, 35.739452, 24.698778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014278, 35.327686, 24.230888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632587, 35.209938, 24.209724>,  <39.403572, 35.139290, 24.197025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632587, 35.209938, 24.209724>,  <40.014278, 35.327686, 24.230888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632587, 35.209938, 24.209724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047507, 0.025480, -0.998546,
		0.295292, -0.955351, -0.010329,
		-0.954225, -0.294372, -0.052910,
		39.346321, 35.121628, 24.193851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.245239, 31.969784, 22.150196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.581478, 32.040649, 22.354944>,  <34.783222, 32.083168, 22.477793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.581478, 32.040649, 22.354944>,  <34.245239, 31.969784, 22.150196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581478, 32.040649, 22.354944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321200, -0.597887, 0.734413,
		0.436151, -0.781757, -0.445677,
		0.840597, 0.177164, 0.511869,
		34.833656, 32.093800, 22.508505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541721, 31.312153, 22.433107>,  <34.245239, 31.969784, 22.150196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541721, 31.312153, 22.433107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.632416, 31.625088, 22.665155>,  <34.686832, 31.812849, 22.804384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.632416, 31.625088, 22.665155>,  <34.541721, 31.312153, 22.433107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632416, 31.625088, 22.665155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298240, -0.511253, 0.806024,
		0.927171, -0.355766, 0.117407,
		0.226732, 0.782337, 0.580122,
		34.700436, 31.859789, 22.839191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915405, 30.978096, 23.025101>,  <34.541721, 31.312153, 22.433107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915405, 30.978096, 23.025101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.811325, 31.343952, 23.148861>,  <34.748875, 31.563465, 23.223118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.811325, 31.343952, 23.148861>,  <34.915405, 30.978096, 23.025101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811325, 31.343952, 23.148861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168281, -0.358495, 0.918239,
		0.950776, 0.186863, 0.247198,
		-0.260205, 0.914639, 0.309403,
		34.733265, 31.618343, 23.241682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399616, 31.297890, 23.643068>,  <34.915405, 30.978096, 23.025101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399616, 31.297890, 23.643068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036839, 31.465225, 23.662817>,  <34.819172, 31.565626, 23.674667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036839, 31.465225, 23.662817>,  <35.399616, 31.297890, 23.643068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036839, 31.465225, 23.662817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040780, -0.029464, 0.998734,
		0.419264, 0.907813, 0.009662,
		-0.906948, 0.418339, 0.049374,
		34.764755, 31.590727, 23.677629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434612, 31.707949, 24.280602>,  <35.399616, 31.297890, 23.643068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434612, 31.707949, 24.280602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.047005, 31.666447, 24.190947>,  <34.814442, 31.641546, 24.137154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.047005, 31.666447, 24.190947>,  <35.434612, 31.707949, 24.280602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047005, 31.666447, 24.190947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218372, -0.064075, 0.973760,
		-0.115392, 0.992537, 0.039434,
		-0.969019, -0.103753, -0.224136,
		34.756298, 31.635321, 24.123705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120777, 32.245975, 24.694956>,  <35.434612, 31.707949, 24.280602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120777, 32.245975, 24.694956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833378, 31.985394, 24.597490>,  <34.660938, 31.829044, 24.539011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833378, 31.985394, 24.597490>,  <35.120777, 32.245975, 24.694956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833378, 31.985394, 24.597490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323658, 0.003068, 0.946169,
		-0.615638, 0.758682, -0.213052,
		-0.718495, -0.651454, -0.243665,
		34.617828, 31.789957, 24.524391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516277, 32.443073, 25.178185>,  <35.120777, 32.245975, 24.694956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516277, 32.443073, 25.178185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403339, 32.091713, 25.023945>,  <34.335575, 31.880896, 24.931400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403339, 32.091713, 25.023945>,  <34.516277, 32.443073, 25.178185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403339, 32.091713, 25.023945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509570, -0.203229, 0.836084,
		-0.812784, 0.432556, -0.390227,
		-0.282348, -0.878403, -0.385599,
		34.318634, 31.828192, 24.908266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860905, 32.297112, 25.402103>,  <34.516277, 32.443073, 25.178185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860905, 32.297112, 25.402103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.991375, 31.938883, 25.281069>,  <34.069656, 31.723946, 25.208448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.991375, 31.938883, 25.281069>,  <33.860905, 32.297112, 25.402103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991375, 31.938883, 25.281069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100870, -0.351240, 0.930836,
		-0.939911, -0.273096, -0.204903,
		0.326178, -0.895572, -0.302587,
		34.089230, 31.670212, 25.190292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420692, 31.718128, 25.642307>,  <33.860905, 32.297112, 25.402103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420692, 31.718128, 25.642307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.780125, 31.555067, 25.577343>,  <33.995785, 31.457230, 25.538364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.780125, 31.555067, 25.577343>,  <33.420692, 31.718128, 25.642307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780125, 31.555067, 25.577343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182422, -0.683642, 0.706651,
		-0.399098, -0.605354, -0.688671,
		0.898578, -0.407652, -0.162410,
		34.049698, 31.432772, 25.528620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326485, 31.084526, 25.702293>,  <33.420692, 31.718128, 25.642307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326485, 31.084526, 25.702293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723312, 31.088911, 25.752384>,  <33.961411, 31.091543, 25.782438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723312, 31.088911, 25.752384>,  <33.326485, 31.084526, 25.702293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723312, 31.088911, 25.752384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086167, -0.666008, 0.740951,
		0.091525, -0.745864, -0.659781,
		0.992067, 0.010964, 0.125225,
		34.020931, 31.092199, 25.789951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523418, 30.352280, 25.858131>,  <33.326485, 31.084526, 25.702293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523418, 30.352280, 25.858131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806793, 30.602989, 25.987915>,  <33.976818, 30.753414, 26.065784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806793, 30.602989, 25.987915>,  <33.523418, 30.352280, 25.858131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806793, 30.602989, 25.987915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101904, -0.545739, 0.831736,
		0.698379, -0.556169, -0.450492,
		0.708437, 0.626773, 0.324457,
		34.019325, 30.791021, 26.085253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035461, 29.907782, 25.943802>,  <33.523418, 30.352280, 25.858131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035461, 29.907782, 25.943802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079586, 30.232244, 26.173532>,  <34.106060, 30.426922, 26.311371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079586, 30.232244, 26.173532>,  <34.035461, 29.907782, 25.943802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079586, 30.232244, 26.173532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079832, -0.583219, 0.808383,
		0.990686, -0.043326, -0.129093,
		0.110313, 0.811159, 0.574328,
		34.112679, 30.475592, 26.345831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481102, 29.632544, 26.377981>,  <34.035461, 29.907782, 25.943802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481102, 29.632544, 26.377981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332905, 29.961931, 26.549860>,  <34.243988, 30.159563, 26.652987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332905, 29.961931, 26.549860>,  <34.481102, 29.632544, 26.377981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332905, 29.961931, 26.549860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037224, -0.449082, 0.892715,
		0.928090, 0.346736, 0.135728,
		-0.370490, 0.823468, 0.429696,
		34.221760, 30.208971, 26.678768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788086, 29.478571, 27.014999>,  <34.481102, 29.632544, 26.377981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788086, 29.478571, 27.014999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510906, 29.762865, 27.063467>,  <34.344601, 29.933441, 27.092548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510906, 29.762865, 27.063467>,  <34.788086, 29.478571, 27.014999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510906, 29.762865, 27.063467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231609, -0.378587, 0.896119,
		0.682776, 0.592898, 0.426953,
		-0.692946, 0.710735, 0.121169,
		34.303020, 29.976086, 27.099817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529221, 29.683058, 27.084612>,  <34.788086, 29.478571, 27.014999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529221, 29.683058, 27.084612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.842743, 29.445425, 27.012260>,  <36.030857, 29.302845, 26.968849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.842743, 29.445425, 27.012260>,  <35.529221, 29.683058, 27.084612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842743, 29.445425, 27.012260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142008, 0.455012, -0.879089,
		0.604553, 0.663347, 0.441005,
		0.783804, -0.594083, -0.180879,
		36.077885, 29.267200, 26.957996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100208, 30.147631, 26.725742>,  <35.529221, 29.683058, 27.084612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100208, 30.147631, 26.725742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175873, 29.761713, 26.652649>,  <36.221272, 29.530163, 26.608793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175873, 29.761713, 26.652649>,  <36.100208, 30.147631, 26.725742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175873, 29.761713, 26.652649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308476, 0.235061, -0.921732,
		0.932233, 0.117990, 0.342081,
		0.189165, -0.964793, -0.182734,
		36.232624, 29.472275, 26.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841003, 29.874310, 26.646404>,  <36.100208, 30.147631, 26.725742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841003, 29.874310, 26.646404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655853, 29.588911, 26.436007>,  <36.544762, 29.417671, 26.309769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655853, 29.588911, 26.436007>,  <36.841003, 29.874310, 26.646404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655853, 29.588911, 26.436007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424976, 0.342122, -0.838062,
		0.777908, -0.611454, 0.144859,
		-0.462876, -0.713497, -0.525993,
		36.516991, 29.374863, 26.278210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295429, 29.678715, 26.089466>,  <36.841003, 29.874310, 26.646404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295429, 29.678715, 26.089466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943504, 29.539726, 25.959732>,  <36.732349, 29.456333, 25.881891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943504, 29.539726, 25.959732>,  <37.295429, 29.678715, 26.089466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943504, 29.539726, 25.959732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244083, 0.255238, -0.935562,
		0.407867, -0.902283, -0.139749,
		-0.879812, -0.347475, -0.324335,
		36.679562, 29.435484, 25.862432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388889, 29.126274, 25.687504>,  <37.295429, 29.678715, 26.089466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388889, 29.126274, 25.687504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037956, 29.291376, 25.589584>,  <36.827396, 29.390438, 25.530832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037956, 29.291376, 25.589584>,  <37.388889, 29.126274, 25.687504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037956, 29.291376, 25.589584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339597, 0.173572, -0.924417,
		-0.339070, -0.894150, -0.292451,
		-0.877329, 0.412758, -0.244797,
		36.774757, 29.415203, 25.516146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415089, 29.178734, 24.923178>,  <37.388889, 29.126274, 25.687504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415089, 29.178734, 24.923178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095230, 29.402491, 25.010496>,  <36.903316, 29.536745, 25.062887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095230, 29.402491, 25.010496>,  <37.415089, 29.178734, 24.923178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095230, 29.402491, 25.010496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026667, 0.396261, -0.917750,
		-0.599885, -0.728050, -0.331784,
		-0.799642, 0.559392, 0.218297,
		36.855339, 29.570309, 25.075985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016567, 29.059404, 24.307249>,  <37.415089, 29.178734, 24.923178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016567, 29.059404, 24.307249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912849, 29.400114, 24.489347>,  <36.850620, 29.604540, 24.598606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912849, 29.400114, 24.489347>,  <37.016567, 29.059404, 24.307249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912849, 29.400114, 24.489347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162951, 0.503192, -0.848673,
		-0.951953, -0.145870, -0.269270,
		-0.259291, 0.851775, 0.455246,
		36.835064, 29.655647, 24.625921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641121, 29.374512, 23.785730>,  <37.016567, 29.059404, 24.307249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641121, 29.374512, 23.785730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743587, 29.663433, 24.042683>,  <36.805069, 29.836786, 24.196854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743587, 29.663433, 24.042683>,  <36.641121, 29.374512, 23.785730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743587, 29.663433, 24.042683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199788, 0.610645, -0.766288,
		-0.945760, 0.324640, 0.012121,
		0.256169, 0.722303, 0.642383,
		36.820438, 29.880123, 24.235397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439739, 29.837873, 23.413111>,  <36.641121, 29.374512, 23.785730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439739, 29.837873, 23.413111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649662, 30.034163, 23.691326>,  <36.775616, 30.151936, 23.858255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649662, 30.034163, 23.691326>,  <36.439739, 29.837873, 23.413111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649662, 30.034163, 23.691326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305263, 0.654255, -0.691928,
		-0.794605, 0.575447, 0.193555,
		0.524802, 0.490725, 0.695537,
		36.807102, 30.181379, 23.899988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301598, 30.588528, 23.317972>,  <36.439739, 29.837873, 23.413111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301598, 30.588528, 23.317972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649170, 30.582201, 23.515848>,  <36.857712, 30.578405, 23.634573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649170, 30.582201, 23.515848>,  <36.301598, 30.588528, 23.317972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649170, 30.582201, 23.515848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407448, 0.590289, -0.696811,
		-0.280986, 0.807037, 0.519363,
		0.868926, -0.015819, 0.494689,
		36.909847, 30.577456, 23.664255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493404, 31.270855, 23.446747>,  <36.301598, 30.588528, 23.317972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493404, 31.270855, 23.446747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.831371, 31.058167, 23.423454>,  <37.034153, 30.930553, 23.409479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.831371, 31.058167, 23.423454>,  <36.493404, 31.270855, 23.446747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831371, 31.058167, 23.423454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358539, 0.643764, -0.676031,
		0.396947, 0.550311, 0.734569,
		0.844916, -0.531720, -0.058232,
		37.084846, 30.898651, 23.405985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047169, 31.716837, 23.431042>,  <36.493404, 31.270855, 23.446747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047169, 31.716837, 23.431042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217064, 31.389679, 23.275787>,  <37.319000, 31.193384, 23.182634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217064, 31.389679, 23.275787>,  <37.047169, 31.716837, 23.431042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217064, 31.389679, 23.275787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445231, 0.562009, -0.697076,
		0.788270, 0.123264, 0.602857,
		0.424735, -0.817895, -0.388134,
		37.344486, 31.144310, 23.159348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810425, 31.913282, 23.306236>,  <37.047169, 31.716837, 23.431042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810425, 31.913282, 23.306236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714272, 31.600754, 23.075844>,  <37.656578, 31.413237, 22.937609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714272, 31.600754, 23.075844>,  <37.810425, 31.913282, 23.306236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714272, 31.600754, 23.075844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325946, 0.493953, -0.806083,
		0.914317, -0.381508, 0.135930,
		-0.240384, -0.781321, -0.575981,
		37.642155, 31.366358, 22.903049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399910, 32.007393, 22.914421>,  <37.810425, 31.913282, 23.306236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399910, 32.007393, 22.914421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106861, 31.812563, 22.724251>,  <37.931034, 31.695665, 22.610149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106861, 31.812563, 22.724251>,  <38.399910, 32.007393, 22.914421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106861, 31.812563, 22.724251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231075, 0.479026, -0.846840,
		0.640213, -0.730271, -0.238393,
		-0.732619, -0.487072, -0.475426,
		37.887074, 31.666441, 22.581623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139984, 31.840147, 22.827526>,  <38.399910, 32.007393, 22.914421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139984, 31.840147, 22.827526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472610, 32.046627, 22.909536>,  <39.672188, 32.170513, 22.958742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472610, 32.046627, 22.909536>,  <39.139984, 31.840147, 22.827526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472610, 32.046627, 22.909536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076942, -0.258516, 0.962938,
		0.550070, -0.816522, -0.175256,
		0.831567, 0.516199, 0.205027,
		39.722080, 32.201488, 22.971045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392746, 31.463383, 23.223228>,  <39.139984, 31.840147, 22.827526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392746, 31.463383, 23.223228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593113, 31.797012, 23.315662>,  <39.713333, 31.997190, 23.371122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593113, 31.797012, 23.315662>,  <39.392746, 31.463383, 23.223228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593113, 31.797012, 23.315662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071922, -0.225956, 0.971479,
		0.862502, -0.503251, -0.053197,
		0.500917, 0.834076, 0.231083,
		39.743389, 32.047234, 23.384987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983482, 31.268373, 23.464243>,  <39.392746, 31.463383, 23.223228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983482, 31.268373, 23.464243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926342, 31.634777, 23.614189>,  <39.892056, 31.854618, 23.704157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926342, 31.634777, 23.614189>,  <39.983482, 31.268373, 23.464243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926342, 31.634777, 23.614189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039363, -0.383706, 0.922616,
		0.988961, 0.117042, 0.090871,
		-0.142853, 0.916008, 0.374863,
		39.883488, 31.909580, 23.726648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464218, 31.387869, 24.053553>,  <39.983482, 31.268373, 23.464243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464218, 31.387869, 24.053553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178486, 31.655762, 24.134739>,  <40.007046, 31.816498, 24.183451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178486, 31.655762, 24.134739>,  <40.464218, 31.387869, 24.053553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178486, 31.655762, 24.134739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013069, -0.277209, 0.960721,
		0.699689, 0.688922, 0.189266,
		-0.714328, 0.669732, 0.202964,
		39.964188, 31.856682, 24.195627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587147, 31.483328, 24.822792>,  <40.464218, 31.387869, 24.053553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587147, 31.483328, 24.822792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233086, 31.645714, 24.731850>,  <40.020649, 31.743145, 24.677284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233086, 31.645714, 24.731850>,  <40.587147, 31.483328, 24.822792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233086, 31.645714, 24.731850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311573, -0.154244, 0.937620,
		0.345571, 0.900779, 0.263017,
		-0.885157, 0.405964, -0.227357,
		39.967537, 31.767504, 24.663643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407494, 32.074108, 25.295008>,  <40.587147, 31.483328, 24.822792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407494, 32.074108, 25.295008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.060028, 31.935448, 25.153444>,  <39.851547, 31.852253, 25.068506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.060028, 31.935448, 25.153444>,  <40.407494, 32.074108, 25.295008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060028, 31.935448, 25.153444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370744, -0.018936, 0.928542,
		-0.328579, 0.937804, -0.112069,
		-0.868668, -0.346648, -0.353907,
		39.799427, 31.831453, 25.047272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779415, 32.275394, 25.751619>,  <40.407494, 32.074108, 25.295008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779415, 32.275394, 25.751619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641602, 31.957535, 25.551683>,  <39.558914, 31.766819, 25.431723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641602, 31.957535, 25.551683>,  <39.779415, 32.275394, 25.751619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641602, 31.957535, 25.551683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276276, -0.423031, 0.862970,
		-0.897202, 0.435412, -0.073794,
		-0.344530, -0.794645, -0.499838,
		39.538242, 31.719141, 25.401731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020390, 32.190231, 26.044422>,  <39.779415, 32.275394, 25.751619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020390, 32.190231, 26.044422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142395, 31.854052, 25.865261>,  <39.215599, 31.652344, 25.757765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142395, 31.854052, 25.865261>,  <39.020390, 32.190231, 26.044422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142395, 31.854052, 25.865261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065452, -0.487702, 0.870553,
		-0.950097, -0.236212, -0.203763,
		0.305010, -0.840447, -0.447904,
		39.233898, 31.601917, 25.730890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456337, 31.638577, 26.133146>,  <39.020390, 32.190231, 26.044422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456337, 31.638577, 26.133146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805325, 31.451233, 26.077385>,  <39.014717, 31.338827, 26.043928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805325, 31.451233, 26.077385>,  <38.456337, 31.638577, 26.133146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805325, 31.451233, 26.077385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202653, -0.606375, 0.768922,
		-0.444661, -0.642613, -0.623959,
		0.872473, -0.468357, -0.139403,
		39.067066, 31.310726, 26.035564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313297, 30.926342, 26.361223>,  <38.456337, 31.638577, 26.133146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313297, 30.926342, 26.361223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713058, 30.940128, 26.361477>,  <38.952915, 30.948400, 26.361629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713058, 30.940128, 26.361477>,  <38.313297, 30.926342, 26.361223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713058, 30.940128, 26.361477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019481, -0.579934, 0.814430,
		0.028439, -0.813934, -0.580261,
		0.999406, 0.034466, 0.000637,
		39.012878, 30.950468, 26.361668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555603, 30.190071, 26.488182>,  <38.313297, 30.926342, 26.361223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555603, 30.190071, 26.488182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841396, 30.456083, 26.575134>,  <39.012871, 30.615690, 26.627306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841396, 30.456083, 26.575134>,  <38.555603, 30.190071, 26.488182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841396, 30.456083, 26.575134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082346, -0.388464, 0.917777,
		0.694793, -0.637833, -0.332312,
		0.714479, 0.665030, 0.217379,
		39.055740, 30.655592, 26.640348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039948, 29.724241, 26.775299>,  <38.555603, 30.190071, 26.488182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039948, 29.724241, 26.775299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145733, 30.094460, 26.883688>,  <39.209202, 30.316591, 26.948721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145733, 30.094460, 26.883688>,  <39.039948, 29.724241, 26.775299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145733, 30.094460, 26.883688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421291, -0.363622, 0.830839,
		0.867510, -0.105567, -0.486088,
		0.264462, 0.925546, 0.270972,
		39.225071, 30.372124, 26.964979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765049, 29.647800, 26.996132>,  <39.039948, 29.724241, 26.775299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765049, 29.647800, 26.996132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586380, 29.964397, 27.162998>,  <39.479179, 30.154356, 27.263117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586380, 29.964397, 27.162998>,  <39.765049, 29.647800, 26.996132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586380, 29.964397, 27.162998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321410, -0.293186, 0.900410,
		0.834974, 0.536267, -0.123436,
		-0.446671, 0.791492, 0.417164,
		39.452377, 30.201845, 27.288147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284172, 29.888460, 27.278500>,  <39.765049, 29.647800, 26.996132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284172, 29.888460, 27.278500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952923, 30.005648, 27.469658>,  <39.754173, 30.075960, 27.584352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952923, 30.005648, 27.469658>,  <40.284172, 29.888460, 27.278500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952923, 30.005648, 27.469658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411770, -0.260536, 0.873250,
		0.380344, 0.919940, 0.095120,
		-0.828121, 0.292968, 0.477897,
		39.704487, 30.093538, 27.613028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.953384, 34.681477, 23.658882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589092, 34.841274, 23.700783>,  <39.370518, 34.937153, 23.725924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589092, 34.841274, 23.700783>,  <39.953384, 34.681477, 23.658882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589092, 34.841274, 23.700783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001957, 0.257802, -0.966196,
		-0.412997, -0.879738, -0.235570,
		-0.910730, 0.399497, 0.104750,
		39.315872, 34.961124, 23.732208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710522, 34.573586, 23.111366>,  <39.953384, 34.681477, 23.658882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710522, 34.573586, 23.111366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404488, 34.811249, 23.210659>,  <39.220867, 34.953846, 23.270235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404488, 34.811249, 23.210659>,  <39.710522, 34.573586, 23.111366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404488, 34.811249, 23.210659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014563, 0.369435, -0.929142,
		-0.643760, -0.714492, -0.273998,
		-0.765089, 0.594154, 0.248233,
		39.174961, 34.989494, 23.285130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168613, 34.371620, 22.640224>,  <39.710522, 34.573586, 23.111366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168613, 34.371620, 22.640224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129765, 34.750439, 22.762648>,  <39.106457, 34.977730, 22.836102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129765, 34.750439, 22.762648>,  <39.168613, 34.371620, 22.640224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129765, 34.750439, 22.762648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017043, 0.309051, -0.950893,
		-0.995126, -0.087136, -0.046156,
		-0.097122, 0.947045, 0.306059,
		39.100628, 35.034554, 22.854465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820370, 34.680805, 22.194641>,  <39.168613, 34.371620, 22.640224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820370, 34.680805, 22.194641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001484, 35.000507, 22.352720>,  <39.110153, 35.192329, 22.447567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001484, 35.000507, 22.352720>,  <38.820370, 34.680805, 22.194641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001484, 35.000507, 22.352720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187495, 0.347973, -0.918564,
		-0.871682, 0.490011, 0.007701,
		0.452786, 0.799252, 0.395197,
		39.137321, 35.240284, 22.471279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600010, 35.293072, 21.810913>,  <38.820370, 34.680805, 22.194641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600010, 35.293072, 21.810913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923508, 35.439167, 21.995319>,  <39.117607, 35.526825, 22.105963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923508, 35.439167, 21.995319>,  <38.600010, 35.293072, 21.810913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923508, 35.439167, 21.995319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235067, 0.517784, -0.822583,
		-0.539141, 0.773630, 0.332902,
		0.808746, 0.365234, 0.461014,
		39.166130, 35.548737, 22.133623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589287, 35.967525, 21.623312>,  <38.600010, 35.293072, 21.810913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589287, 35.967525, 21.623312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.966442, 35.909271, 21.743147>,  <39.192734, 35.874317, 21.815048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.966442, 35.909271, 21.743147>,  <38.589287, 35.967525, 21.623312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966442, 35.909271, 21.743147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323657, 0.613277, -0.720512,
		-0.078797, 0.776325, 0.625388,
		0.942888, -0.145637, 0.299588,
		39.249310, 35.865582, 21.833023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980019, 36.597336, 21.729229>,  <38.589287, 35.967525, 21.623312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980019, 36.597336, 21.729229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281528, 36.336609, 21.695864>,  <39.462433, 36.180172, 21.675844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281528, 36.336609, 21.695864>,  <38.980019, 36.597336, 21.729229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281528, 36.336609, 21.695864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427261, 0.582568, -0.691421,
		0.499275, 0.485535, 0.717621,
		0.753772, -0.651820, -0.083412,
		39.507660, 36.141064, 21.670839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565952, 37.041882, 21.493975>,  <38.980019, 36.597336, 21.729229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565952, 37.041882, 21.493975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.645054, 36.659096, 21.409016>,  <39.692513, 36.429424, 21.358040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.645054, 36.659096, 21.409016>,  <39.565952, 37.041882, 21.493975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645054, 36.659096, 21.409016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548152, 0.287585, -0.785381,
		0.812664, 0.038884, 0.581433,
		0.197751, -0.956965, -0.212396,
		39.704380, 36.372005, 21.345297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334061, 37.005573, 21.428415>,  <39.565952, 37.041882, 21.493975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334061, 37.005573, 21.428415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175007, 36.703156, 21.220457>,  <40.079575, 36.521706, 21.095682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175007, 36.703156, 21.220457>,  <40.334061, 37.005573, 21.428415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175007, 36.703156, 21.220457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390390, 0.373368, -0.841541,
		0.830352, -0.537585, 0.146688,
		-0.397631, -0.756041, -0.519895,
		40.055717, 36.476341, 21.064489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800430, 36.820721, 20.980951>,  <40.334061, 37.005573, 21.428415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800430, 36.820721, 20.980951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469608, 36.660046, 20.823662>,  <40.271114, 36.563641, 20.729288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469608, 36.660046, 20.823662>,  <40.800430, 36.820721, 20.980951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469608, 36.660046, 20.823662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282040, 0.308579, -0.908423,
		0.486245, -0.862221, -0.141919,
		-0.827054, -0.401689, -0.393226,
		40.221493, 36.539539, 20.705694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962429, 36.362415, 20.400730>,  <40.800430, 36.820721, 20.980951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962429, 36.362415, 20.400730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572990, 36.427849, 20.337044>,  <40.339329, 36.467110, 20.298832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572990, 36.427849, 20.337044>,  <40.962429, 36.362415, 20.400730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572990, 36.427849, 20.337044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168116, 0.042002, -0.984872,
		-0.154426, -0.985634, -0.068395,
		-0.973596, 0.163588, -0.159214,
		40.280910, 36.476925, 20.289280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836227, 36.012516, 19.793600>,  <40.962429, 36.362415, 20.400730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836227, 36.012516, 19.793600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.531288, 36.270477, 19.815226>,  <40.348324, 36.425255, 19.828201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.531288, 36.270477, 19.815226>,  <40.836227, 36.012516, 19.793600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531288, 36.270477, 19.815226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028542, 0.116959, -0.992727,
		-0.646540, -0.755258, -0.107570,
		-0.762346, 0.644907, 0.054062,
		40.302586, 36.463951, 19.831444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393272, 35.915077, 19.174196>,  <40.836227, 36.012516, 19.793600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393272, 35.915077, 19.174196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.340954, 36.288258, 19.308355>,  <40.309563, 36.512165, 19.388851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.340954, 36.288258, 19.308355>,  <40.393272, 35.915077, 19.174196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340954, 36.288258, 19.308355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031442, 0.334231, -0.941967,
		-0.990911, -0.133748, -0.014381,
		-0.130793, 0.932953, 0.335398,
		40.301716, 36.568142, 19.408976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080872, 36.060642, 18.601355>,  <40.393272, 35.915077, 19.174196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080872, 36.060642, 18.601355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.287457, 36.245945, 18.889427>,  <40.411407, 36.357124, 19.062271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.287457, 36.245945, 18.889427>,  <40.080872, 36.060642, 18.601355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287457, 36.245945, 18.889427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484540, 0.535342, -0.691831,
		-0.706038, 0.706261, 0.052018,
		0.516460, 0.463255, 0.720183,
		40.442394, 36.384922, 19.105482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471897, 35.463196, 18.568777>,  <40.080872, 36.060642, 18.601355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471897, 35.463196, 18.568777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.480839, 35.131535, 18.345346>,  <40.486202, 34.932537, 18.211288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.480839, 35.131535, 18.345346>,  <40.471897, 35.463196, 18.568777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480839, 35.131535, 18.345346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013681, -0.558412, 0.829451,
		-0.999657, -0.026181, -0.001138,
		0.022351, -0.829151, -0.558579,
		40.487545, 34.882790, 18.177773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845623, 35.096684, 18.665304>,  <40.471897, 35.463196, 18.568777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845623, 35.096684, 18.665304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.115395, 34.832653, 18.532974>,  <40.277256, 34.674236, 18.453575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.115395, 34.832653, 18.532974>,  <39.845623, 35.096684, 18.665304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115395, 34.832653, 18.532974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072650, -0.505220, 0.859927,
		-0.734759, -0.555923, -0.388689,
		0.674427, -0.660077, -0.330827,
		40.317722, 34.634628, 18.433725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530704, 34.417801, 18.774185>,  <39.845623, 35.096684, 18.665304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530704, 34.417801, 18.774185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922009, 34.343258, 18.737789>,  <40.156792, 34.298531, 18.715952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922009, 34.343258, 18.737789>,  <39.530704, 34.417801, 18.774185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922009, 34.343258, 18.737789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011282, -0.485926, 0.873927,
		-0.207080, -0.853901, -0.477464,
		0.978259, -0.186360, -0.090992,
		40.215485, 34.287350, 18.710491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472439, 33.737545, 18.936016>,  <39.530704, 34.417801, 18.774185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472439, 33.737545, 18.936016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.849762, 33.855724, 18.996510>,  <40.076157, 33.926632, 19.032804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.849762, 33.855724, 18.996510>,  <39.472439, 33.737545, 18.936016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849762, 33.855724, 18.996510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010964, -0.483135, 0.875477,
		0.331728, -0.824190, -0.458986,
		0.943311, 0.295453, 0.151233,
		40.132755, 33.944359, 19.041880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777554, 33.133095, 19.274338>,  <39.472439, 33.737545, 18.936016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777554, 33.133095, 19.274338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031696, 33.434074, 19.343775>,  <40.184181, 33.614662, 19.385437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031696, 33.434074, 19.343775>,  <39.777554, 33.133095, 19.274338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031696, 33.434074, 19.343775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236693, -0.403739, 0.883726,
		0.735046, -0.520397, -0.434620,
		0.635361, 0.752450, 0.173593,
		40.222305, 33.659809, 19.395853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554337, 32.915363, 19.452934>,  <39.777554, 33.133095, 19.274338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554337, 32.915363, 19.452934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.528702, 33.279835, 19.615734>,  <40.513321, 33.498516, 19.713413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.528702, 33.279835, 19.615734>,  <40.554337, 32.915363, 19.452934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528702, 33.279835, 19.615734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274521, -0.376006, 0.885018,
		0.959443, 0.168447, -0.226040,
		-0.064086, 0.911178, 0.406999,
		40.509476, 33.553188, 19.737833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043716, 32.832821, 20.002178>,  <40.554337, 32.915363, 19.452934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043716, 32.832821, 20.002178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.850880, 33.174782, 20.078838>,  <40.735176, 33.379959, 20.124834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.850880, 33.174782, 20.078838>,  <41.043716, 32.832821, 20.002178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850880, 33.174782, 20.078838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154119, -0.132587, 0.979116,
		0.862457, 0.501564, -0.067838,
		-0.482095, 0.854900, 0.191651,
		40.706253, 33.431252, 20.136333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476498, 33.209225, 20.401218>,  <41.043716, 32.832821, 20.002178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476498, 33.209225, 20.401218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.113541, 33.354546, 20.485733>,  <40.895767, 33.441738, 20.536442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.113541, 33.354546, 20.485733>,  <41.476498, 33.209225, 20.401218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113541, 33.354546, 20.485733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065308, -0.374741, 0.924826,
		0.415172, 0.852982, 0.316312,
		-0.907396, 0.363305, 0.211289,
		40.841324, 33.463535, 20.549120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561962, 33.439213, 21.043579>,  <41.476498, 33.209225, 20.401218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561962, 33.439213, 21.043579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.163746, 33.423485, 21.009295>,  <40.924816, 33.414047, 20.988724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.163746, 33.423485, 21.009295>,  <41.561962, 33.439213, 21.043579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163746, 33.423485, 21.009295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066370, -0.353517, 0.933071,
		-0.066985, 0.934601, 0.349332,
		-0.995544, -0.039317, -0.085710,
		40.865082, 33.411690, 20.983582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197628, 33.797062, 21.670708>,  <41.561962, 33.439213, 21.043579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197628, 33.797062, 21.670708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908073, 33.554943, 21.538284>,  <40.734341, 33.409672, 21.458830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908073, 33.554943, 21.538284>,  <41.197628, 33.797062, 21.670708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908073, 33.554943, 21.538284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255097, -0.211016, 0.943609,
		-0.641026, 0.767518, -0.001659,
		-0.723887, -0.605300, -0.331058,
		40.690907, 33.373352, 21.438967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805748, 33.652203, 22.188589>,  <41.197628, 33.797062, 21.670708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805748, 33.652203, 22.188589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.650558, 33.360626, 21.962984>,  <40.557446, 33.185680, 21.827621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.650558, 33.360626, 21.962984>,  <40.805748, 33.652203, 22.188589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650558, 33.360626, 21.962984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194538, -0.533395, 0.823192,
		-0.900904, 0.429102, 0.065137,
		-0.387977, -0.728945, -0.564015,
		40.534164, 33.141941, 21.793779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111870, 33.543064, 22.291456>,  <40.805748, 33.652203, 22.188589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111870, 33.543064, 22.291456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198845, 33.182198, 22.142424>,  <40.251030, 32.965679, 22.053003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198845, 33.182198, 22.142424>,  <40.111870, 33.543064, 22.291456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198845, 33.182198, 22.142424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344561, -0.428086, 0.835476,
		-0.913236, -0.053286, -0.403933,
		0.217437, -0.902166, -0.372583,
		40.264076, 32.911549, 22.030649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533485, 33.143955, 22.375977>,  <40.111870, 33.543064, 22.291456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533485, 33.143955, 22.375977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831696, 32.880409, 22.335812>,  <40.010620, 32.722282, 22.311712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831696, 32.880409, 22.335812>,  <39.533485, 33.143955, 22.375977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831696, 32.880409, 22.335812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382152, -0.546031, 0.745527,
		-0.546031, -0.517439, -0.658868,
		-0.745527, 0.658868, 0.100410,
		40.055355, 32.682747, 22.305689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118572, 32.514145, 22.467031>,  <39.533485, 33.143955, 22.375977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118572, 32.514145, 22.467031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511120, 32.478359, 22.535040>,  <39.746651, 32.456886, 22.575846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511120, 32.478359, 22.535040>,  <39.118572, 32.514145, 22.467031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511120, 32.478359, 22.535040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192062, -0.479100, 0.856490,
		0.004831, -0.873189, -0.487358,
		0.981371, -0.089465, 0.170021,
		39.805531, 32.451519, 22.586046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670765, 31.852034, 22.259428>,  <39.118572, 32.514145, 22.467031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670765, 31.852034, 22.259428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296967, 31.736345, 22.176420>,  <38.072685, 31.666933, 22.126616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296967, 31.736345, 22.176420>,  <38.670765, 31.852034, 22.259428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296967, 31.736345, 22.176420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112373, 0.313477, -0.942923,
		0.337776, -0.904477, -0.260441,
		-0.934494, -0.289230, -0.207523,
		38.016617, 31.649578, 22.114164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659740, 31.422300, 21.739939>,  <38.670765, 31.852034, 22.259428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659740, 31.422300, 21.739939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309101, 31.614769, 21.736885>,  <38.098717, 31.730249, 21.735054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309101, 31.614769, 21.736885>,  <38.659740, 31.422300, 21.739939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309101, 31.614769, 21.736885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110876, 0.186509, -0.976177,
		-0.468284, -0.856557, -0.216842,
		-0.876594, 0.481170, -0.007632,
		38.046124, 31.759119, 21.734596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417183, 31.378708, 21.047831>,  <38.659740, 31.422300, 21.739939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417183, 31.378708, 21.047831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132607, 31.633089, 21.167442>,  <37.961861, 31.785719, 21.239210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132607, 31.633089, 21.167442>,  <38.417183, 31.378708, 21.047831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132607, 31.633089, 21.167442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102904, 0.326654, -0.939525,
		-0.695175, -0.699184, -0.166951,
		-0.711437, 0.635955, 0.299031,
		37.919174, 31.823875, 21.257151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821102, 31.158714, 20.640970>,  <38.417183, 31.378708, 21.047831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821102, 31.158714, 20.640970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780342, 31.532347, 20.777855>,  <37.755886, 31.756527, 20.859985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780342, 31.532347, 20.777855>,  <37.821102, 31.158714, 20.640970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780342, 31.532347, 20.777855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111816, 0.352579, -0.929078,
		-0.988491, -0.056407, -0.140373,
		-0.101899, 0.934080, 0.342214,
		37.749771, 31.812571, 20.880520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387066, 31.394529, 20.165443>,  <37.821102, 31.158714, 20.640970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387066, 31.394529, 20.165443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517567, 31.731253, 20.337454>,  <37.595867, 31.933287, 20.440660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517567, 31.731253, 20.337454>,  <37.387066, 31.394529, 20.165443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517567, 31.731253, 20.337454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034132, 0.444129, -0.895313,
		-0.944667, 0.306775, 0.116166,
		0.326252, 0.841807, 0.430025,
		37.615444, 31.983795, 20.466461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044270, 31.917864, 19.800676>,  <37.387066, 31.394529, 20.165443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044270, 31.917864, 19.800676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357895, 32.119900, 19.944973>,  <37.546070, 32.241119, 20.031551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357895, 32.119900, 19.944973>,  <37.044270, 31.917864, 19.800676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357895, 32.119900, 19.944973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060092, 0.640244, -0.765818,
		-0.617769, 0.578770, 0.532342,
		0.784061, 0.505088, 0.360743,
		37.593113, 32.271427, 20.053196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889141, 32.671997, 19.766554>,  <37.044270, 31.917864, 19.800676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889141, 32.671997, 19.766554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286289, 32.625637, 19.777740>,  <37.524578, 32.597820, 19.784452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286289, 32.625637, 19.777740>,  <36.889141, 32.671997, 19.766554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286289, 32.625637, 19.777740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096832, 0.647027, -0.756293,
		0.069557, 0.753607, 0.653635,
		0.992867, -0.115898, 0.027968,
		37.584148, 32.590866, 19.786131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735355, 33.109825, 20.365711>,  <36.889141, 32.671997, 19.766554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735355, 33.109825, 20.365711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425110, 33.355568, 20.423656>,  <36.238964, 33.503014, 20.458424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425110, 33.355568, 20.423656>,  <36.735355, 33.109825, 20.365711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425110, 33.355568, 20.423656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265898, -0.526154, 0.807750,
		0.572469, 0.587984, 0.571449,
		-0.775614, 0.614359, 0.144863,
		36.192425, 33.539875, 20.467115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783314, 33.324375, 21.136927>,  <36.735355, 33.109825, 20.365711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783314, 33.324375, 21.136927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413071, 33.393024, 21.001993>,  <36.190926, 33.434216, 20.921034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413071, 33.393024, 21.001993>,  <36.783314, 33.324375, 21.136927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413071, 33.393024, 21.001993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377971, -0.465510, 0.800274,
		-0.019684, 0.868242, 0.495749,
		-0.925608, 0.171627, -0.337334,
		36.135387, 33.444511, 20.900793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587204, 33.569271, 21.731760>,  <36.783314, 33.324375, 21.136927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587204, 33.569271, 21.731760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273540, 33.465778, 21.506138>,  <36.085342, 33.403683, 21.370764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273540, 33.465778, 21.506138>,  <36.587204, 33.569271, 21.731760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273540, 33.465778, 21.506138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407277, -0.471227, 0.782349,
		-0.468217, 0.843210, 0.264140,
		-0.784155, -0.258731, -0.564056,
		36.038296, 33.388161, 21.336922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947353, 33.767014, 22.116405>,  <36.587204, 33.569271, 21.731760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947353, 33.767014, 22.116405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859539, 33.464001, 21.870495>,  <35.806850, 33.282192, 21.722948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.859539, 33.464001, 21.870495>,  <35.947353, 33.767014, 22.116405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859539, 33.464001, 21.870495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502663, -0.452239, 0.736756,
		-0.836142, 0.470770, -0.281501,
		-0.219537, -0.757533, -0.614775,
		35.793678, 33.236740, 21.686062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237370, 33.737511, 22.085800>,  <35.947353, 33.767014, 22.116405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237370, 33.737511, 22.085800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.364700, 33.374203, 21.977203>,  <35.441097, 33.156216, 21.912045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.364700, 33.374203, 21.977203>,  <35.237370, 33.737511, 22.085800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364700, 33.374203, 21.977203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577843, -0.412943, 0.703970,
		-0.751509, -0.067211, -0.656290,
		0.318326, -0.908273, -0.271493,
		35.460197, 33.101719, 21.895756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674232, 33.315228, 21.982056>,  <35.237370, 33.737511, 22.085800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674232, 33.315228, 21.982056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969952, 33.052837, 22.042894>,  <35.147385, 32.895405, 22.079397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969952, 33.052837, 22.042894>,  <34.674232, 33.315228, 21.982056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969952, 33.052837, 22.042894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608435, -0.553967, 0.568267,
		-0.288511, -0.512661, -0.808665,
		0.739303, -0.655972, 0.152096,
		35.191742, 32.856045, 22.088524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349365, 32.703926, 22.060833>,  <34.674232, 33.315228, 21.982056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349365, 32.703926, 22.060833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700203, 32.569599, 22.198196>,  <34.910706, 32.489002, 22.280615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700203, 32.569599, 22.198196>,  <34.349365, 32.703926, 22.060833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700203, 32.569599, 22.198196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475535, -0.506517, 0.719241,
		-0.067591, -0.794146, -0.603957,
		0.877096, -0.335817, 0.343408,
		34.963333, 32.468853, 22.301218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.713806, 37.703163, 19.772732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.060074, 37.587311, 19.936064>,  <38.267834, 37.517799, 20.034063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.060074, 37.587311, 19.936064>,  <37.713806, 37.703163, 19.772732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060074, 37.587311, 19.936064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460529, -0.140895, 0.876391,
		-0.196298, -0.946711, -0.255352,
		0.865668, -0.289631, 0.408331,
		38.319775, 37.500420, 20.058563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668514, 36.988544, 20.145975>,  <37.713806, 37.703163, 19.772732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668514, 36.988544, 20.145975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890785, 37.304039, 20.251143>,  <38.024147, 37.493336, 20.314243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890785, 37.304039, 20.251143>,  <37.668514, 36.988544, 20.145975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890785, 37.304039, 20.251143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489794, 0.055027, 0.870100,
		0.671808, -0.612269, 0.416893,
		0.555676, 0.788732, 0.262918,
		38.057487, 37.540657, 20.330017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983028, 36.836216, 20.812750>,  <37.668514, 36.988544, 20.145975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983028, 36.836216, 20.812750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006413, 37.232895, 20.766943>,  <38.020443, 37.470901, 20.739460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006413, 37.232895, 20.766943>,  <37.983028, 36.836216, 20.812750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006413, 37.232895, 20.766943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282289, 0.126452, 0.950959,
		0.957547, -0.023266, 0.287338,
		0.058460, 0.991700, -0.114516,
		38.023949, 37.530403, 20.732588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294369, 37.041306, 21.447231>,  <37.983028, 36.836216, 20.812750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294369, 37.041306, 21.447231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180645, 37.403374, 21.320848>,  <38.112411, 37.620617, 21.245020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180645, 37.403374, 21.320848>,  <38.294369, 37.041306, 21.447231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180645, 37.403374, 21.320848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359990, 0.204650, 0.910234,
		0.888579, 0.372533, 0.267669,
		-0.284313, 0.905173, -0.315955,
		38.095352, 37.674927, 21.226063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498451, 37.512901, 21.908672>,  <38.294369, 37.041306, 21.447231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498451, 37.512901, 21.908672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.213917, 37.707409, 21.705675>,  <38.043198, 37.824112, 21.583878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.213917, 37.707409, 21.705675>,  <38.498451, 37.512901, 21.908672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213917, 37.707409, 21.705675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441637, 0.252473, 0.860938,
		0.546775, 0.836541, 0.035162,
		-0.711332, 0.486268, -0.507493,
		38.000519, 37.853291, 21.553427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505592, 38.229271, 22.106592>,  <38.498451, 37.512901, 21.908672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505592, 38.229271, 22.106592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.135059, 38.134182, 21.989706>,  <37.912739, 38.077129, 21.919575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.135059, 38.134182, 21.989706>,  <38.505592, 38.229271, 22.106592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135059, 38.134182, 21.989706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359463, 0.325849, 0.874419,
		-0.112655, 0.915045, -0.387299,
		-0.926334, -0.237727, -0.292217,
		37.857159, 38.062862, 21.902040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006252, 38.789623, 22.515972>,  <38.505592, 38.229271, 22.106592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006252, 38.789623, 22.515972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.749619, 38.521755, 22.366356>,  <37.595638, 38.361034, 22.276587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.749619, 38.521755, 22.366356>,  <38.006252, 38.789623, 22.515972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749619, 38.521755, 22.366356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522629, 0.024718, 0.852202,
		-0.561448, 0.742248, -0.365847,
		-0.641588, -0.669669, -0.374042,
		37.557140, 38.320854, 22.254143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365215, 38.989166, 22.825796>,  <38.006252, 38.789623, 22.515972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365215, 38.989166, 22.825796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279541, 38.614594, 22.714640>,  <37.228134, 38.389851, 22.647945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279541, 38.614594, 22.714640>,  <37.365215, 38.989166, 22.825796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279541, 38.614594, 22.714640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529670, -0.127690, 0.838538,
		-0.820715, 0.326797, -0.468648,
		-0.214190, -0.936429, -0.277892,
		37.215282, 38.333664, 22.631271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622601, 39.047466, 22.843466>,  <37.365215, 38.989166, 22.825796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622601, 39.047466, 22.843466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773827, 38.679996, 22.889269>,  <36.864563, 38.459515, 22.916750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.773827, 38.679996, 22.889269>,  <36.622601, 39.047466, 22.843466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773827, 38.679996, 22.889269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514823, -0.105828, 0.850740,
		-0.769432, -0.380583, -0.512962,
		0.378062, -0.918672, 0.114505,
		36.887245, 38.404396, 22.923620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028664, 38.657722, 23.039360>,  <36.622601, 39.047466, 22.843466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028664, 38.657722, 23.039360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354710, 38.444538, 23.130171>,  <36.550335, 38.316628, 23.184656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354710, 38.444538, 23.130171>,  <36.028664, 38.657722, 23.039360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354710, 38.444538, 23.130171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355074, -0.149998, 0.922726,
		-0.457726, -0.832736, -0.311507,
		0.815113, -0.532964, 0.227025,
		36.599243, 38.284649, 23.198278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772537, 38.035557, 23.421700>,  <36.028664, 38.657722, 23.039360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772537, 38.035557, 23.421700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161488, 38.060608, 23.511650>,  <36.394855, 38.075638, 23.565620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161488, 38.060608, 23.511650>,  <35.772537, 38.035557, 23.421700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161488, 38.060608, 23.511650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218159, -0.098963, 0.970883,
		0.083061, -0.993118, -0.082565,
		0.972372, 0.062630, 0.224878,
		36.453197, 38.079395, 23.579113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928616, 37.357063, 23.658661>,  <35.772537, 38.035557, 23.421700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928616, 37.357063, 23.658661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.221466, 37.588783, 23.801994>,  <36.397175, 37.727814, 23.887995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.221466, 37.588783, 23.801994>,  <35.928616, 37.357063, 23.658661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221466, 37.588783, 23.801994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203133, -0.316442, 0.926607,
		0.650175, -0.751183, -0.114001,
		0.732127, 0.579299, 0.358333,
		36.441105, 37.762573, 23.909494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018940, 36.560287, 23.469107>,  <35.928616, 37.357063, 23.658661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018940, 36.560287, 23.469107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.622822, 36.554558, 23.413807>,  <35.385151, 36.551121, 23.380627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.622822, 36.554558, 23.413807>,  <36.018940, 36.560287, 23.469107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622822, 36.554558, 23.413807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120359, 0.409081, -0.904526,
		0.069507, -0.912386, -0.403387,
		-0.990294, -0.014320, -0.138248,
		35.325733, 36.550262, 23.372332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937279, 36.298401, 22.882074>,  <36.018940, 36.560287, 23.469107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937279, 36.298401, 22.882074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590431, 36.493645, 22.921782>,  <35.382324, 36.610790, 22.945606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590431, 36.493645, 22.921782>,  <35.937279, 36.298401, 22.882074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590431, 36.493645, 22.921782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051511, 0.286096, -0.956815,
		-0.495432, -0.824558, -0.273222,
		-0.867118, 0.488111, 0.099267,
		35.330296, 36.640079, 22.951561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595337, 36.057934, 22.409023>,  <35.937279, 36.298401, 22.882074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595337, 36.057934, 22.409023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.407173, 36.399864, 22.496649>,  <35.294273, 36.605022, 22.549225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.407173, 36.399864, 22.496649>,  <35.595337, 36.057934, 22.409023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407173, 36.399864, 22.496649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143438, 0.170874, -0.974796,
		-0.870710, -0.489979, 0.042232,
		-0.470413, 0.854823, 0.219064,
		35.266048, 36.656311, 22.562368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005947, 36.051338, 21.973057>,  <35.595337, 36.057934, 22.409023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005947, 36.051338, 21.973057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.064819, 36.437653, 22.058474>,  <35.100143, 36.669441, 22.109724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.064819, 36.437653, 22.058474>,  <35.005947, 36.051338, 21.973057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064819, 36.437653, 22.058474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204402, 0.240931, -0.948774,
		-0.967759, 0.095995, 0.232869,
		0.147183, 0.965783, 0.213541,
		35.108974, 36.727386, 22.122536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446079, 36.454777, 21.659250>,  <35.005947, 36.051338, 21.973057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446079, 36.454777, 21.659250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732533, 36.721752, 21.740910>,  <34.904404, 36.881939, 21.789906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732533, 36.721752, 21.740910>,  <34.446079, 36.454777, 21.659250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732533, 36.721752, 21.740910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067500, 0.357352, -0.931527,
		-0.694690, 0.653319, 0.300964,
		0.716135, 0.667438, 0.204150,
		34.947372, 36.921982, 21.802155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161129, 37.065834, 21.351637>,  <34.446079, 36.454777, 21.659250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161129, 37.065834, 21.351637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.548237, 37.149002, 21.408484>,  <34.780502, 37.198902, 21.442591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.548237, 37.149002, 21.408484>,  <34.161129, 37.065834, 21.351637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548237, 37.149002, 21.408484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068904, 0.324177, -0.943484,
		-0.242236, 0.922866, 0.299401,
		0.967768, 0.207915, 0.142116,
		34.838566, 37.211376, 21.451118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288509, 37.711571, 21.033285>,  <34.161129, 37.065834, 21.351637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288509, 37.711571, 21.033285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644566, 37.529602, 21.043852>,  <34.858200, 37.420422, 21.050192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644566, 37.529602, 21.043852>,  <34.288509, 37.711571, 21.033285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644566, 37.529602, 21.043852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216759, 0.371708, -0.902690,
		0.400836, 0.809245, 0.429481,
		0.890138, -0.454924, 0.026416,
		34.911606, 37.393124, 21.051777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804653, 38.242298, 20.943321>,  <34.288509, 37.711571, 21.033285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804653, 38.242298, 20.943321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.987186, 37.901562, 20.840466>,  <35.096706, 37.697121, 20.778751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.987186, 37.901562, 20.840466>,  <34.804653, 38.242298, 20.943321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987186, 37.901562, 20.840466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265013, 0.405984, -0.874612,
		0.849426, 0.330972, 0.411014,
		0.456337, -0.851842, -0.257141,
		35.124088, 37.646008, 20.763323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498913, 38.498013, 20.603224>,  <34.804653, 38.242298, 20.943321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498913, 38.498013, 20.603224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457260, 38.110336, 20.513941>,  <35.432266, 37.877731, 20.460371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457260, 38.110336, 20.513941>,  <35.498913, 38.498013, 20.603224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457260, 38.110336, 20.513941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375751, 0.169455, -0.911097,
		0.920851, -0.178748, 0.346528,
		-0.104136, -0.969193, -0.223207,
		35.426018, 37.819580, 20.446980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118908, 38.438148, 20.189451>,  <35.498913, 38.498013, 20.603224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118908, 38.438148, 20.189451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889462, 38.120449, 20.109318>,  <35.751793, 37.929829, 20.061237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889462, 38.120449, 20.109318>,  <36.118908, 38.438148, 20.189451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889462, 38.120449, 20.109318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216677, 0.088733, -0.972202,
		0.789950, -0.601074, 0.121197,
		-0.573612, -0.794252, -0.200334,
		35.717377, 37.882172, 20.049217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502972, 37.956413, 19.726824>,  <36.118908, 38.438148, 20.189451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502972, 37.956413, 19.726824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.109291, 37.915390, 19.669092>,  <35.873081, 37.890778, 19.634453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.109291, 37.915390, 19.669092>,  <36.502972, 37.956413, 19.726824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109291, 37.915390, 19.669092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161295, -0.183127, -0.969767,
		0.073026, -0.977725, 0.196775,
		-0.984201, -0.102557, -0.144329,
		35.814030, 37.884624, 19.625793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450687, 37.480042, 19.202261>,  <36.502972, 37.956413, 19.726824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450687, 37.480042, 19.202261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.073521, 37.613251, 19.202074>,  <35.847221, 37.693176, 19.201962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.073521, 37.613251, 19.202074>,  <36.450687, 37.480042, 19.202261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073521, 37.613251, 19.202074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071782, -0.204616, -0.976207,
		-0.325195, -0.920450, 0.216841,
		-0.942919, 0.333023, -0.000468,
		35.790646, 37.713158, 19.201933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109684, 37.088593, 18.742151>,  <36.450687, 37.480042, 19.202261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109684, 37.088593, 18.742151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.850273, 37.391441, 18.773565>,  <35.694626, 37.573151, 18.792414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.850273, 37.391441, 18.773565>,  <36.109684, 37.088593, 18.742151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850273, 37.391441, 18.773565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197083, -0.067360, -0.978070,
		-0.735232, -0.649787, 0.192901,
		-0.648531, 0.757125, 0.078537,
		35.655712, 37.618580, 18.797127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832245, 36.816357, 18.874378>,  <36.109684, 37.088593, 18.742151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832245, 36.816357, 18.874378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542236, 36.587212, 18.721451>,  <36.368229, 36.449726, 18.629694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542236, 36.587212, 18.721451>,  <36.832245, 36.816357, 18.874378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542236, 36.587212, 18.721451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064865, -0.609440, 0.790175,
		-0.685661, 0.548097, 0.479018,
		-0.725025, -0.572863, -0.382316,
		36.324730, 36.415352, 18.606756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425159, 36.606121, 19.436075>,  <36.832245, 36.816357, 18.874378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425159, 36.606121, 19.436075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313683, 36.328201, 19.170872>,  <36.246796, 36.161449, 19.011749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313683, 36.328201, 19.170872>,  <36.425159, 36.606121, 19.436075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313683, 36.328201, 19.170872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016313, -0.693685, 0.720094,
		-0.960242, 0.189870, 0.204659,
		-0.278693, -0.694803, -0.663008,
		36.230076, 36.119759, 18.971970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945938, 36.139343, 19.869614>,  <36.425159, 36.606121, 19.436075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945938, 36.139343, 19.869614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.031330, 35.940125, 19.533430>,  <36.082565, 35.820595, 19.331720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.031330, 35.940125, 19.533430>,  <35.945938, 36.139343, 19.869614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031330, 35.940125, 19.533430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128011, -0.867136, 0.481339,
		-0.968524, 0.004831, -0.248875,
		0.213483, -0.498047, -0.840460,
		36.095375, 35.790710, 19.281292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408554, 35.608242, 19.777960>,  <35.945938, 36.139343, 19.869614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408554, 35.608242, 19.777960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.713856, 35.466763, 19.561684>,  <35.897038, 35.381874, 19.431919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.713856, 35.466763, 19.561684>,  <35.408554, 35.608242, 19.777960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713856, 35.466763, 19.561684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050019, -0.866686, 0.496340,
		-0.644159, -0.351789, -0.679193,
		0.763254, -0.353694, -0.540687,
		35.942833, 35.360653, 19.399477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190914, 34.929176, 19.441116>,  <35.408554, 35.608242, 19.777960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190914, 34.929176, 19.441116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590847, 34.925007, 19.434973>,  <35.830807, 34.922504, 19.431288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590847, 34.925007, 19.434973>,  <35.190914, 34.929176, 19.441116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590847, 34.925007, 19.434973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001819, -0.878401, 0.477922,
		-0.018473, -0.477812, -0.878268,
		0.999828, -0.010426, -0.015358,
		35.890797, 34.921879, 19.430365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421097, 34.305992, 19.045059>,  <35.190914, 34.929176, 19.441116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421097, 34.305992, 19.045059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721146, 34.413609, 19.286699>,  <35.901173, 34.478180, 19.431684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721146, 34.413609, 19.286699>,  <35.421097, 34.305992, 19.045059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721146, 34.413609, 19.286699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045465, -0.890358, 0.452985,
		0.659739, -0.367258, -0.655642,
		0.750118, 0.269043, 0.604101,
		35.946182, 34.494320, 19.467930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915993, 33.740379, 19.130224>,  <35.421097, 34.305992, 19.045059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915993, 33.740379, 19.130224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.991173, 33.941212, 19.467884>,  <36.036282, 34.061710, 19.670479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.991173, 33.941212, 19.467884>,  <35.915993, 33.740379, 19.130224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991173, 33.941212, 19.467884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134084, -0.838302, 0.528461,
		0.972983, -0.212512, -0.090239,
		0.187952, 0.502083, 0.844148,
		36.047558, 34.091835, 19.721128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440311, 33.380550, 19.520252>,  <35.915993, 33.740379, 19.130224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440311, 33.380550, 19.520252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.293861, 33.614929, 19.809422>,  <36.205990, 33.755558, 19.982924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.293861, 33.614929, 19.809422>,  <36.440311, 33.380550, 19.520252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293861, 33.614929, 19.809422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032779, -0.768259, 0.639299,
		0.929988, 0.257760, 0.262072,
		-0.366125, 0.585950, 0.722921,
		36.184025, 33.790714, 20.026299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142498, 33.470531, 19.896412>,  <36.440311, 33.380550, 19.520252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142498, 33.470531, 19.896412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.423393, 33.233028, 19.739283>,  <37.591930, 33.090527, 19.645004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.423393, 33.233028, 19.739283>,  <37.142498, 33.470531, 19.896412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423393, 33.233028, 19.739283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204598, 0.696801, -0.687465,
		0.681908, 0.402394, 0.610803,
		0.702240, -0.593757, -0.392825,
		37.634064, 33.054901, 19.621435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746769, 33.814075, 19.882357>,  <37.142498, 33.470531, 19.896412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746769, 33.814075, 19.882357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777954, 33.528767, 19.603741>,  <37.796665, 33.357582, 19.436571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777954, 33.528767, 19.603741>,  <37.746769, 33.814075, 19.882357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777954, 33.528767, 19.603741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297292, 0.683514, -0.666654,
		0.951598, -0.155101, 0.265339,
		0.077964, -0.713269, -0.696541,
		37.801342, 33.314785, 19.394779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265953, 34.056625, 19.488571>,  <37.746769, 33.814075, 19.882357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265953, 34.056625, 19.488571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092976, 33.772518, 19.266394>,  <37.989189, 33.602055, 19.133087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092976, 33.772518, 19.266394>,  <38.265953, 34.056625, 19.488571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092976, 33.772518, 19.266394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247281, 0.498981, -0.830584,
		0.867090, -0.496530, -0.040146,
		-0.432442, -0.710264, -0.555444,
		37.963242, 33.559441, 19.099760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721371, 34.006702, 19.009836>,  <38.265953, 34.056625, 19.488571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721371, 34.006702, 19.009836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.413120, 33.817917, 18.838541>,  <38.228168, 33.704647, 18.735764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.413120, 33.817917, 18.838541>,  <38.721371, 34.006702, 19.009836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413120, 33.817917, 18.838541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281102, 0.351334, -0.893054,
		0.571944, -0.808588, -0.138077,
		-0.770625, -0.471963, -0.428239,
		38.181934, 33.676327, 18.710070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983730, 33.537224, 18.378653>,  <38.721371, 34.006702, 19.009836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983730, 33.537224, 18.378653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597668, 33.634224, 18.339315>,  <38.366032, 33.692425, 18.315714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597668, 33.634224, 18.339315>,  <38.983730, 33.537224, 18.378653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597668, 33.634224, 18.339315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190735, 0.394621, -0.898830,
		-0.179159, -0.886266, -0.427123,
		-0.965154, 0.242501, -0.098342,
		38.308121, 33.706974, 18.309813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839821, 33.379456, 17.678345>,  <38.983730, 33.537224, 18.378653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839821, 33.379456, 17.678345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568363, 33.645649, 17.802649>,  <38.405487, 33.805367, 17.877230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568363, 33.645649, 17.802649>,  <38.839821, 33.379456, 17.678345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568363, 33.645649, 17.802649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002533, 0.420986, -0.907063,
		-0.734460, -0.616364, -0.284016,
		-0.678647, 0.665482, 0.310759,
		38.364769, 33.845295, 17.895876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436771, 33.438488, 17.191996>,  <38.839821, 33.379456, 17.678345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436771, 33.438488, 17.191996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300823, 33.761543, 17.384747>,  <38.219254, 33.955376, 17.500397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300823, 33.761543, 17.384747>,  <38.436771, 33.438488, 17.191996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300823, 33.761543, 17.384747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152122, 0.458423, -0.875619,
		-0.928087, -0.370904, -0.032947,
		-0.339874, 0.807638, 0.481878,
		38.198860, 34.003834, 17.529310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779461, 33.634068, 16.851852>,  <38.436771, 33.438488, 17.191996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779461, 33.634068, 16.851852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944386, 33.956383, 17.021891>,  <38.043343, 34.149773, 17.123915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944386, 33.956383, 17.021891>,  <37.779461, 33.634068, 16.851852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944386, 33.956383, 17.021891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056585, 0.488355, -0.870808,
		-0.909282, 0.334994, 0.246952,
		0.412316, 0.805784, 0.425097,
		38.068081, 34.198116, 17.149420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421329, 34.144741, 16.579224>,  <37.779461, 33.634068, 16.851852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421329, 34.144741, 16.579224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738575, 34.342876, 16.720989>,  <37.928925, 34.461758, 16.806049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738575, 34.342876, 16.720989>,  <37.421329, 34.144741, 16.579224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738575, 34.342876, 16.720989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008512, 0.590850, -0.806736,
		-0.609010, 0.636820, 0.472829,
		0.793117, 0.495335, 0.354413,
		37.976509, 34.491478, 16.827312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.367535, 28.045313, 31.646973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726032, 28.222725, 31.649269>,  <36.941132, 28.329172, 31.650646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726032, 28.222725, 31.649269>,  <36.367535, 28.045313, 31.646973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726032, 28.222725, 31.649269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085551, 0.185542, -0.978905,
		-0.435240, 0.876844, 0.204235,
		0.896241, 0.443531, 0.005741,
		36.994904, 28.355783, 31.650991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194324, 28.641127, 31.295029>,  <36.367535, 28.045313, 31.646973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194324, 28.641127, 31.295029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589664, 28.585466, 31.270378>,  <36.826870, 28.552071, 31.255587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589664, 28.585466, 31.270378>,  <36.194324, 28.641127, 31.295029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589664, 28.585466, 31.270378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020229, 0.281238, -0.959425,
		0.150837, 0.949496, 0.275147,
		0.988352, -0.139150, -0.061628,
		36.886169, 28.543722, 31.251890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478329, 29.102690, 30.861025>,  <36.194324, 28.641127, 31.295029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478329, 29.102690, 30.861025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788364, 28.850975, 30.838276>,  <36.974388, 28.699947, 30.824627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788364, 28.850975, 30.838276>,  <36.478329, 29.102690, 30.861025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788364, 28.850975, 30.838276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198322, 0.327757, -0.923712,
		0.599919, 0.704681, 0.378843,
		0.775091, -0.629285, -0.056874,
		37.020893, 28.662189, 30.821215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967953, 29.474186, 30.588617>,  <36.478329, 29.102690, 30.861025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967953, 29.474186, 30.588617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047909, 29.090797, 30.507256>,  <37.095882, 28.860764, 30.458439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047909, 29.090797, 30.507256>,  <36.967953, 29.474186, 30.588617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047909, 29.090797, 30.507256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237294, 0.248770, -0.939044,
		0.950650, 0.139438, 0.277166,
		0.199889, -0.958473, -0.203406,
		37.107876, 28.803255, 30.446234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615337, 29.460960, 30.221560>,  <36.967953, 29.474186, 30.588617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615337, 29.460960, 30.221560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390507, 29.139191, 30.144648>,  <37.255608, 28.946129, 30.098501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390507, 29.139191, 30.144648>,  <37.615337, 29.460960, 30.221560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390507, 29.139191, 30.144648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052244, 0.197482, -0.978913,
		0.825436, -0.560267, -0.068973,
		-0.562074, -0.804427, -0.192279,
		37.221886, 28.897863, 30.086964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894886, 29.181379, 29.609070>,  <37.615337, 29.460960, 30.221560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894886, 29.181379, 29.609070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527004, 29.024469, 29.615595>,  <37.306274, 28.930325, 29.619511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527004, 29.024469, 29.615595>,  <37.894886, 29.181379, 29.609070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527004, 29.024469, 29.615595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064656, 0.110342, -0.991789,
		0.387253, -0.913207, -0.126844,
		-0.919704, -0.392274, 0.016314,
		37.251095, 28.906788, 29.620489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919617, 28.849300, 28.876455>,  <37.894886, 29.181379, 29.609070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919617, 28.849300, 28.876455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542500, 28.813091, 29.004797>,  <37.316231, 28.791367, 29.081802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542500, 28.813091, 29.004797>,  <37.919617, 28.849300, 28.876455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542500, 28.813091, 29.004797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311739, -0.101708, -0.944709,
		0.118152, -0.990687, 0.067669,
		-0.942793, -0.090524, 0.320853,
		37.259663, 28.785934, 29.101053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591007, 28.284958, 28.492268>,  <37.919617, 28.849300, 28.876455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591007, 28.284958, 28.492268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276665, 28.488607, 28.632681>,  <37.088058, 28.610798, 28.716928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276665, 28.488607, 28.632681>,  <37.591007, 28.284958, 28.492268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276665, 28.488607, 28.632681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434538, -0.050724, -0.899224,
		-0.440011, -0.859197, 0.261096,
		-0.785854, 0.509125, 0.351035,
		37.040909, 28.641344, 28.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987690, 28.004917, 28.091957>,  <37.591007, 28.284958, 28.492268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987690, 28.004917, 28.091957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902485, 28.370981, 28.228840>,  <36.851360, 28.590620, 28.310970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902485, 28.370981, 28.228840>,  <36.987690, 28.004917, 28.091957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902485, 28.370981, 28.228840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475903, 0.208707, -0.854376,
		-0.853312, -0.344852, 0.391070,
		-0.213015, 0.915160, 0.342208,
		36.838581, 28.645529, 28.331503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179611, 27.962931, 28.075628>,  <36.987690, 28.004917, 28.091957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179611, 27.962931, 28.075628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347294, 28.325077, 28.048548>,  <36.447903, 28.542364, 28.032299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347294, 28.325077, 28.048548>,  <36.179611, 27.962931, 28.075628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347294, 28.325077, 28.048548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418642, 0.126593, -0.899285,
		-0.805609, 0.405328, 0.432092,
		0.419205, 0.905364, -0.067703,
		36.473057, 28.596685, 28.028236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637470, 28.383703, 27.692371>,  <36.179611, 27.962931, 28.075628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637470, 28.383703, 27.692371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974197, 28.596390, 27.655230>,  <36.176235, 28.724001, 27.632944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974197, 28.596390, 27.655230>,  <35.637470, 28.383703, 27.692371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974197, 28.596390, 27.655230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339351, 0.387592, -0.857096,
		-0.419742, 0.753029, 0.506720,
		0.841818, 0.531715, -0.092852,
		36.226742, 28.755905, 27.627375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433731, 29.135391, 27.554949>,  <35.637470, 28.383703, 27.692371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433731, 29.135391, 27.554949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791660, 29.018095, 27.420307>,  <36.006416, 28.947718, 27.339521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791660, 29.018095, 27.420307>,  <35.433731, 29.135391, 27.554949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791660, 29.018095, 27.420307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221172, 0.363759, -0.904855,
		0.387784, 0.884132, 0.260642,
		0.894822, -0.293242, -0.336605,
		36.060108, 28.930122, 27.319326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899525, 29.721680, 27.713596>,  <35.433731, 29.135391, 27.554949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899525, 29.721680, 27.713596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519970, 29.786789, 27.605431>,  <34.292236, 29.825855, 27.540531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519970, 29.786789, 27.605431>,  <34.899525, 29.721680, 27.713596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519970, 29.786789, 27.605431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302388, -0.223295, 0.926661,
		0.090455, 0.961064, 0.261102,
		-0.948883, 0.162775, -0.270416,
		34.235306, 29.835621, 27.524305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660877, 30.045763, 28.284760>,  <34.899525, 29.721680, 27.713596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660877, 30.045763, 28.284760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327110, 29.915728, 28.106741>,  <34.126850, 29.837706, 27.999929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327110, 29.915728, 28.106741>,  <34.660877, 30.045763, 28.284760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327110, 29.915728, 28.106741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445551, -0.077408, 0.891904,
		-0.324397, 0.942510, -0.080252,
		-0.834416, -0.325088, -0.445047,
		34.076786, 29.818201, 27.973227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088715, 30.456144, 28.451925>,  <34.660877, 30.045763, 28.284760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088715, 30.456144, 28.451925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920876, 30.108612, 28.346804>,  <33.820171, 29.900093, 28.283730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920876, 30.108612, 28.346804>,  <34.088715, 30.456144, 28.451925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920876, 30.108612, 28.346804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453433, -0.050187, 0.889876,
		-0.786343, 0.492556, -0.372899,
		-0.419599, -0.868832, -0.262805,
		33.794994, 29.847961, 28.267962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472885, 30.477989, 28.815056>,  <34.088715, 30.456144, 28.451925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472885, 30.477989, 28.815056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504364, 30.089424, 28.725468>,  <33.523251, 29.856285, 28.671715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504364, 30.089424, 28.725468>,  <33.472885, 30.477989, 28.815056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504364, 30.089424, 28.725468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577393, -0.227565, 0.784112,
		-0.812664, 0.067612, -0.578796,
		0.078698, -0.971413, -0.223973,
		33.527973, 29.798000, 28.658276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871071, 30.218513, 28.839388>,  <33.472885, 30.477989, 28.815056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871071, 30.218513, 28.839388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096241, 29.891254, 28.886292>,  <33.231342, 29.694899, 28.914434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096241, 29.891254, 28.886292>,  <32.871071, 30.218513, 28.839388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096241, 29.891254, 28.886292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527777, -0.246642, 0.812785,
		-0.636059, -0.519421, -0.570641,
		0.562922, -0.818150, 0.117260,
		33.265118, 29.645809, 28.921469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453930, 29.720343, 28.935257>,  <32.871071, 30.218513, 28.839388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453930, 29.720343, 28.935257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786587, 29.566929, 29.095894>,  <32.986179, 29.474880, 29.192276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786587, 29.566929, 29.095894>,  <32.453930, 29.720343, 28.935257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786587, 29.566929, 29.095894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502715, -0.212765, 0.837859,
		-0.235919, -0.898677, -0.369760,
		0.831637, -0.383551, 0.401583,
		33.036079, 29.451868, 29.216372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229561, 29.175333, 29.329987>,  <32.453930, 29.720343, 28.935257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229561, 29.175333, 29.329987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590080, 29.247593, 29.487476>,  <32.806393, 29.290949, 29.581970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590080, 29.247593, 29.487476>,  <32.229561, 29.175333, 29.329987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590080, 29.247593, 29.487476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321688, -0.329601, 0.887626,
		0.290122, -0.926676, -0.238957,
		0.901302, 0.180650, 0.393725,
		32.860470, 29.301788, 29.605595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317261, 28.701620, 29.856924>,  <32.229561, 29.175333, 29.329987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317261, 28.701620, 29.856924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582642, 28.983711, 29.956915>,  <32.741871, 29.152966, 30.016909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582642, 28.983711, 29.956915>,  <32.317261, 28.701620, 29.856924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582642, 28.983711, 29.956915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353816, 0.001324, 0.935314,
		0.659277, -0.708981, 0.250398,
		0.663451, 0.705226, 0.249976,
		32.781677, 29.195278, 30.031908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613716, 28.508846, 30.496935>,  <32.317261, 28.701620, 29.856924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613716, 28.508846, 30.496935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670086, 28.903212, 30.460899>,  <32.703907, 29.139832, 30.439278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670086, 28.903212, 30.460899>,  <32.613716, 28.508846, 30.496935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670086, 28.903212, 30.460899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238565, 0.122135, 0.963416,
		0.960847, -0.114277, 0.252416,
		0.140925, 0.985913, -0.090091,
		32.712364, 29.198986, 30.433872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921406, 28.683176, 31.123993>,  <32.613716, 28.508846, 30.496935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921406, 28.683176, 31.123993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807747, 29.034771, 30.970818>,  <32.739552, 29.245728, 30.878912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807747, 29.034771, 30.970818>,  <32.921406, 28.683176, 31.123993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807747, 29.034771, 30.970818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179512, 0.343566, 0.921812,
		0.941827, 0.330669, 0.060167,
		-0.284143, 0.878988, -0.382939,
		32.722504, 29.298468, 30.855936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093872, 29.169703, 31.661339>,  <32.921406, 28.683176, 31.123993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093872, 29.169703, 31.661339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828526, 29.356649, 31.427582>,  <32.669319, 29.468817, 31.287327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828526, 29.356649, 31.427582>,  <33.093872, 29.169703, 31.661339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828526, 29.356649, 31.427582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407163, 0.429796, 0.805912,
		0.627825, 0.772557, -0.094817,
		-0.663365, 0.467366, -0.584394,
		32.629517, 29.496859, 31.252264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178467, 29.930067, 31.644011>,  <33.093872, 29.169703, 31.661339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178467, 29.930067, 31.644011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799477, 29.836552, 31.556719>,  <32.572083, 29.780441, 31.504343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799477, 29.836552, 31.556719>,  <33.178467, 29.930067, 31.644011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799477, 29.836552, 31.556719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314121, 0.552085, 0.772354,
		-0.060086, 0.800340, -0.596527,
		-0.947480, -0.233789, -0.218231,
		32.515232, 29.766415, 31.491249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883850, 30.516138, 31.926367>,  <33.178467, 29.930067, 31.644011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883850, 30.516138, 31.926367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584850, 30.261559, 31.850283>,  <32.405449, 30.108810, 31.804632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584850, 30.261559, 31.850283>,  <32.883850, 30.516138, 31.926367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584850, 30.261559, 31.850283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507450, 0.362343, 0.781794,
		-0.428650, 0.680912, -0.593816,
		-0.747498, -0.636448, -0.190211,
		32.360600, 30.070623, 31.793219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240150, 30.869312, 31.686598>,  <32.883850, 30.516138, 31.926367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240150, 30.869312, 31.686598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115055, 30.534777, 31.866699>,  <32.039997, 30.334055, 31.974760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115055, 30.534777, 31.866699>,  <32.240150, 30.869312, 31.686598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115055, 30.534777, 31.866699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656058, 0.532989, 0.534332,
		-0.686863, -0.128285, -0.715375,
		-0.312740, -0.836341, 0.450253,
		32.021233, 30.283875, 32.001774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738832, 31.231525, 32.062302>,  <32.240150, 30.869312, 31.686598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738832, 31.231525, 32.062302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755020, 30.844698, 32.162811>,  <31.764732, 30.612602, 32.223118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755020, 30.844698, 32.162811>,  <31.738832, 31.231525, 32.062302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755020, 30.844698, 32.162811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525169, 0.193356, 0.828740,
		-0.850035, -0.165501, -0.500050,
		0.040470, -0.967069, 0.251275,
		31.767160, 30.554577, 32.238194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375492, 31.230711, 32.368248>,  <31.738832, 31.231525, 32.062302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375492, 31.230711, 32.368248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498783, 31.541359, 32.588013>,  <32.572758, 31.727749, 32.719872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498783, 31.541359, 32.588013>,  <32.375492, 31.230711, 32.368248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498783, 31.541359, 32.588013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428184, 0.402468, -0.809122,
		-0.849502, 0.484644, -0.208485,
		0.308227, 0.776621, 0.549414,
		32.591251, 31.774345, 32.752838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150902, 31.808514, 32.000278>,  <32.375492, 31.230711, 32.368248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150902, 31.808514, 32.000278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489742, 31.863838, 32.205528>,  <32.693047, 31.897034, 32.328678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489742, 31.863838, 32.205528>,  <32.150902, 31.808514, 32.000278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489742, 31.863838, 32.205528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446342, 0.338902, -0.828205,
		-0.288448, 0.930599, 0.225350,
		0.847099, 0.138311, 0.513122,
		32.743874, 31.905333, 32.359467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272915, 32.558224, 32.134445>,  <32.150902, 31.808514, 32.000278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272915, 32.558224, 32.134445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600311, 32.333202, 32.087788>,  <32.796749, 32.198189, 32.059792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600311, 32.333202, 32.087788>,  <32.272915, 32.558224, 32.134445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600311, 32.333202, 32.087788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249520, 0.530958, -0.809829,
		0.517511, 0.633729, 0.574952,
		0.818488, -0.562557, -0.116648,
		32.845856, 32.164436, 32.052792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807583, 33.080158, 31.913548>,  <32.272915, 32.558224, 32.134445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807583, 33.080158, 31.913548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981758, 32.726639, 31.845089>,  <33.086262, 32.514526, 31.804014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981758, 32.726639, 31.845089>,  <32.807583, 33.080158, 31.913548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981758, 32.726639, 31.845089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412201, 0.364759, -0.834890,
		0.800305, 0.292993, 0.523133,
		0.435434, -0.883802, -0.171147,
		33.112389, 32.461498, 31.793745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536869, 33.207699, 31.818056>,  <32.807583, 33.080158, 31.913548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536869, 33.207699, 31.818056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456276, 32.850845, 31.656319>,  <33.407921, 32.636734, 31.559277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456276, 32.850845, 31.656319>,  <33.536869, 33.207699, 31.818056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456276, 32.850845, 31.656319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447456, 0.283383, -0.848220,
		0.871314, -0.351828, 0.342095,
		-0.201484, -0.892138, -0.404344,
		33.395832, 32.583202, 31.535015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076736, 33.094868, 31.531294>,  <33.536869, 33.207699, 31.818056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076736, 33.094868, 31.531294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838150, 32.833813, 31.344406>,  <33.695000, 32.677181, 31.232273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838150, 32.833813, 31.344406>,  <34.076736, 33.094868, 31.531294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838150, 32.833813, 31.344406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448752, 0.211468, -0.868276,
		0.665471, -0.727562, 0.166739,
		-0.596465, -0.652637, -0.467221,
		33.659210, 32.638023, 31.204241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453205, 32.936333, 30.968145>,  <34.076736, 33.094868, 31.531294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453205, 32.936333, 30.968145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097382, 32.814392, 30.832060>,  <33.883888, 32.741226, 30.750408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097382, 32.814392, 30.832060>,  <34.453205, 32.936333, 30.968145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097382, 32.814392, 30.832060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274411, 0.238799, -0.931490,
		0.365211, -0.921975, -0.128771,
		-0.889561, -0.304854, -0.340212,
		33.830513, 32.722935, 30.729996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553928, 32.512188, 30.444630>,  <34.453205, 32.936333, 30.968145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553928, 32.512188, 30.444630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183800, 32.648560, 30.378248>,  <33.961723, 32.730381, 30.338419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183800, 32.648560, 30.378248>,  <34.553928, 32.512188, 30.444630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183800, 32.648560, 30.378248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262633, 0.260591, -0.929040,
		-0.273489, -0.903250, -0.330670,
		-0.925326, 0.340927, -0.165954,
		33.906200, 32.750839, 30.328463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285305, 32.241745, 29.882719>,  <34.553928, 32.512188, 30.444630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285305, 32.241745, 29.882719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038479, 32.556469, 29.877602>,  <33.890385, 32.745304, 29.874531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038479, 32.556469, 29.877602>,  <34.285305, 32.241745, 29.882719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038479, 32.556469, 29.877602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172844, 0.119655, -0.977654,
		-0.767697, -0.605486, -0.209830,
		-0.617063, 0.786810, -0.012796,
		33.853359, 32.792511, 29.873762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867893, 32.299129, 29.142580>,  <34.285305, 32.241745, 29.882719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867893, 32.299129, 29.142580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835228, 32.671040, 29.286163>,  <33.815628, 32.894184, 29.372313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835228, 32.671040, 29.286163>,  <33.867893, 32.299129, 29.142580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835228, 32.671040, 29.286163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136248, 0.367194, -0.920112,
		-0.987303, -0.026231, -0.156665,
		-0.081662, 0.929775, 0.358958,
		33.810730, 32.949970, 29.393850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319088, 32.742142, 28.794991>,  <33.867893, 32.299129, 29.142580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319088, 32.742142, 28.794991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581249, 33.005642, 28.942770>,  <33.738544, 33.163742, 29.031437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581249, 33.005642, 28.942770>,  <33.319088, 32.742142, 28.794991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581249, 33.005642, 28.942770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169085, 0.348765, -0.921831,
		-0.736110, 0.666639, 0.117196,
		0.655403, 0.658753, 0.369448,
		33.777870, 33.203266, 29.053604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141968, 33.337238, 28.407057>,  <33.319088, 32.742142, 28.794991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141968, 33.337238, 28.407057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493916, 33.432121, 28.571768>,  <33.705086, 33.489052, 28.670595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493916, 33.432121, 28.571768>,  <33.141968, 33.337238, 28.407057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493916, 33.432121, 28.571768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236164, 0.533666, -0.812051,
		-0.412378, 0.811746, 0.413536,
		0.879870, 0.237209, 0.411778,
		33.757877, 33.503284, 28.695301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154312, 34.025047, 28.423254>,  <33.141968, 33.337238, 28.407057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154312, 34.025047, 28.423254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537952, 33.912113, 28.415161>,  <33.768139, 33.844353, 28.410305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537952, 33.912113, 28.415161>,  <33.154312, 34.025047, 28.423254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537952, 33.912113, 28.415161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154037, 0.580572, -0.799506,
		0.237472, 0.763692, 0.600318,
		0.959104, -0.282331, -0.020233,
		33.825684, 33.827415, 28.409092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494762, 34.664150, 28.374676>,  <33.154312, 34.025047, 28.423254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494762, 34.664150, 28.374676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768898, 34.392467, 28.269611>,  <33.933380, 34.229458, 28.206572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768898, 34.392467, 28.269611>,  <33.494762, 34.664150, 28.374676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768898, 34.392467, 28.269611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273440, 0.574312, -0.771619,
		0.674937, 0.456999, 0.579320,
		0.685340, -0.679204, -0.262662,
		33.974499, 34.188705, 28.190813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957531, 35.048126, 28.116629>,  <33.494762, 34.664150, 28.374676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957531, 35.048126, 28.116629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081394, 34.695194, 27.974871>,  <34.155712, 34.483433, 27.889816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081394, 34.695194, 27.974871>,  <33.957531, 35.048126, 28.116629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081394, 34.695194, 27.974871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289998, 0.442597, -0.848533,
		0.905545, 0.159982, 0.392930,
		0.309659, -0.882334, -0.354397,
		34.174294, 34.430492, 27.868551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685387, 35.245594, 27.850073>,  <33.957531, 35.048126, 28.116629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685387, 35.245594, 27.850073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543324, 34.916859, 27.671883>,  <34.458084, 34.719620, 27.564968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543324, 34.916859, 27.671883>,  <34.685387, 35.245594, 27.850073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543324, 34.916859, 27.671883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374979, 0.311274, -0.873212,
		0.856301, -0.477175, 0.197618,
		-0.355162, -0.821834, -0.445475,
		34.436775, 34.670307, 27.538240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267048, 34.925663, 27.550562>,  <34.685387, 35.245594, 27.850073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267048, 34.925663, 27.550562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960934, 34.770752, 27.344902>,  <34.777264, 34.677803, 27.221506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960934, 34.770752, 27.344902>,  <35.267048, 34.925663, 27.550562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960934, 34.770752, 27.344902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435602, 0.276475, -0.856629,
		0.473905, -0.879531, -0.042882,
		-0.765287, -0.387281, -0.514149,
		34.731346, 34.654568, 27.190657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526596, 34.692871, 26.954576>,  <35.267048, 34.925663, 27.550562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526596, 34.692871, 26.954576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137665, 34.718700, 26.864773>,  <34.904305, 34.734200, 26.810890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137665, 34.718700, 26.864773>,  <35.526596, 34.692871, 26.954576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137665, 34.718700, 26.864773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233177, 0.209857, -0.949520,
		-0.014199, -0.975598, -0.219107,
		-0.972331, 0.064573, -0.224508,
		34.845966, 34.738071, 26.797421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389069, 34.202579, 26.327707>,  <35.526596, 34.692871, 26.954576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389069, 34.202579, 26.327707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119690, 34.498165, 26.335659>,  <34.958061, 34.675518, 26.340431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119690, 34.498165, 26.335659>,  <35.389069, 34.202579, 26.327707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119690, 34.498165, 26.335659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205617, 0.213085, -0.955153,
		-0.710063, -0.639158, -0.295446,
		-0.673448, 0.738967, 0.019882,
		34.917656, 34.719856, 26.341623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287472, 34.170219, 25.592121>,  <35.389069, 34.202579, 26.327707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287472, 34.170219, 25.592121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100597, 34.482773, 25.757612>,  <34.988472, 34.670307, 25.856907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100597, 34.482773, 25.757612>,  <35.287472, 34.170219, 25.592121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100597, 34.482773, 25.757612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084940, 0.426106, -0.900677,
		-0.880070, -0.455925, -0.132700,
		-0.467185, 0.781387, 0.413729,
		34.960442, 34.717190, 25.881731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734921, 34.304302, 25.050697>,  <35.287472, 34.170219, 25.592121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734921, 34.304302, 25.050697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766891, 34.648571, 25.251839>,  <34.786076, 34.855133, 25.372522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766891, 34.648571, 25.251839>,  <34.734921, 34.304302, 25.050697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766891, 34.648571, 25.251839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070924, 0.508098, -0.858374,
		-0.994274, 0.032946, 0.101654,
		0.079930, 0.860669, 0.502853,
		34.790871, 34.906773, 25.402695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259254, 34.704407, 24.803816>,  <34.734921, 34.304302, 25.050697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259254, 34.704407, 24.803816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528557, 34.952713, 24.964500>,  <34.690140, 35.101696, 25.060911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528557, 34.952713, 24.964500>,  <34.259254, 34.704407, 24.803816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528557, 34.952713, 24.964500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057267, 0.585437, -0.808693,
		-0.737184, 0.521456, 0.429701,
		0.673260, 0.620764, 0.401713,
		34.730534, 35.138943, 25.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980560, 35.286186, 24.707886>,  <34.259254, 34.704407, 24.803816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980560, 35.286186, 24.707886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353489, 35.384876, 24.813639>,  <34.577248, 35.444088, 24.877090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353489, 35.384876, 24.813639>,  <33.980560, 35.286186, 24.707886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353489, 35.384876, 24.813639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019375, 0.764137, -0.644763,
		-0.361103, 0.596006, 0.717204,
		0.932325, 0.246722, 0.264385,
		34.633186, 35.458893, 24.892954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993481, 36.051086, 24.870169>,  <33.980560, 35.286186, 24.707886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993481, 36.051086, 24.870169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356483, 35.936691, 24.747112>,  <34.574284, 35.868053, 24.673279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356483, 35.936691, 24.747112>,  <33.993481, 36.051086, 24.870169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356483, 35.936691, 24.747112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017377, 0.757347, -0.652781,
		0.419677, 0.587058, 0.692268,
		0.907507, -0.285986, -0.307640,
		34.628735, 35.850895, 24.654819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388714, 36.643356, 24.827883>,  <33.993481, 36.051086, 24.870169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388714, 36.643356, 24.827883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618980, 36.398579, 24.610945>,  <34.757141, 36.251713, 24.480782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618980, 36.398579, 24.610945>,  <34.388714, 36.643356, 24.827883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618980, 36.398579, 24.610945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111619, 0.715866, -0.689258,
		0.810032, 0.336246, 0.480403,
		0.575664, -0.611943, -0.542343,
		34.791679, 36.214996, 24.448242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989922, 37.012009, 24.735100>,  <34.388714, 36.643356, 24.827883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989922, 37.012009, 24.735100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931934, 36.741703, 24.446012>,  <34.897141, 36.579517, 24.272560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931934, 36.741703, 24.446012>,  <34.989922, 37.012009, 24.735100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931934, 36.741703, 24.446012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008478, 0.731257, -0.682048,
		0.989400, -0.092747, -0.111737,
		-0.144966, -0.675766, -0.722720,
		34.888443, 36.538975, 24.229197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559353, 36.907028, 24.183733>,  <34.989922, 37.012009, 24.735100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559353, 36.907028, 24.183733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186050, 36.841602, 24.055805>,  <34.962070, 36.802345, 23.979048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186050, 36.841602, 24.055805>,  <35.559353, 36.907028, 24.183733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186050, 36.841602, 24.055805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051690, 0.819904, -0.570163,
		0.355480, -0.548638, -0.756723,
		-0.933253, -0.163566, -0.319819,
		34.906075, 36.792534, 23.959860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330975, 36.925842, 24.056395>,  <35.559353, 36.907028, 24.183733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330975, 36.925842, 24.056395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494446, 37.261875, 24.199078>,  <36.592529, 37.463493, 24.284687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494446, 37.261875, 24.199078>,  <36.330975, 36.925842, 24.056395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494446, 37.261875, 24.199078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064029, -0.363483, 0.929398,
		0.910428, -0.402668, -0.094760,
		0.408683, 0.840082, 0.356707,
		36.617050, 37.513901, 24.306089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876770, 36.760212, 24.492462>,  <36.330975, 36.925842, 24.056395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876770, 36.760212, 24.492462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788204, 37.131592, 24.611771>,  <36.735065, 37.354420, 24.683355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788204, 37.131592, 24.611771>,  <36.876770, 36.760212, 24.492462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788204, 37.131592, 24.611771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156556, -0.268051, 0.950599,
		0.962531, 0.257174, -0.086003,
		-0.221417, 0.928445, 0.298269,
		36.721779, 37.410126, 24.701252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497150, 36.975746, 24.949825>,  <36.876770, 36.760212, 24.492462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497150, 36.975746, 24.949825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167515, 37.182491, 25.042545>,  <36.969734, 37.306538, 25.098177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167515, 37.182491, 25.042545>,  <37.497150, 36.975746, 24.949825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167515, 37.182491, 25.042545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134561, -0.218876, 0.966430,
		0.550247, 0.827615, 0.110824,
		-0.824088, 0.516862, 0.231801,
		36.920288, 37.337551, 25.112085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610512, 37.401409, 25.473831>,  <37.497150, 36.975746, 24.949825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610512, 37.401409, 25.473831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211590, 37.400749, 25.503157>,  <36.972237, 37.400352, 25.520752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211590, 37.400749, 25.503157>,  <37.610512, 37.401409, 25.473831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211590, 37.400749, 25.503157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073144, -0.093990, 0.992882,
		0.005255, 0.995572, 0.093857,
		-0.997307, -0.001647, 0.073314,
		36.912399, 37.400253, 25.525150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476444, 37.818104, 25.997099>,  <37.610512, 37.401409, 25.473831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476444, 37.818104, 25.997099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139000, 37.604179, 25.977930>,  <36.936531, 37.475826, 25.966429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139000, 37.604179, 25.977930>,  <37.476444, 37.818104, 25.997099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139000, 37.604179, 25.977930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060277, 0.005636, 0.998166,
		-0.533557, 0.844955, -0.036991,
		-0.843613, -0.534808, -0.047924,
		36.885918, 37.443737, 25.963552>
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
