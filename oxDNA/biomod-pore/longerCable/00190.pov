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
	<24.105150, 35.034531, 35.277740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104668, 34.909111, 34.897911>,  <24.104378, 34.833858, 34.670013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104668, 34.909111, 34.897911>,  <24.105150, 35.034531, 35.277740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.104668, 34.909111, 34.897911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999971, -0.007491, 0.001205,
		-0.007491, -0.949543, 0.313546,
		-0.001205, -0.313546, -0.949572,
		24.104305, 34.815048, 34.613041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357368, 34.346233, 35.224197>,  <24.105150, 35.034531, 35.277740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357368, 34.346233, 35.224197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417103, 34.524197, 34.870983>,  <24.452944, 34.630974, 34.659054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417103, 34.524197, 34.870983>,  <24.357368, 34.346233, 35.224197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417103, 34.524197, 34.870983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944614, -0.328137, -0.005577,
		-0.292239, -0.833299, -0.469265,
		0.149336, 0.444904, -0.883040,
		24.461903, 34.657669, 34.606071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545570, 33.809540, 34.727261>,  <24.357368, 34.346233, 35.224197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545570, 33.809540, 34.727261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684895, 34.170124, 34.624462>,  <24.768490, 34.386475, 34.562782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684895, 34.170124, 34.624462>,  <24.545570, 33.809540, 34.727261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684895, 34.170124, 34.624462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913514, -0.387908, -0.122559,
		-0.210174, -0.192083, -0.958609,
		0.348310, 0.901461, -0.256999,
		24.789387, 34.440563, 34.547363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030907, 33.704384, 34.125725>,  <24.545570, 33.809540, 34.727261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030907, 33.704384, 34.125725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113714, 34.033619, 34.337261>,  <25.163399, 34.231159, 34.464184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113714, 34.033619, 34.337261>,  <25.030907, 33.704384, 34.125725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113714, 34.033619, 34.337261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976520, -0.206775, -0.060445,
		0.059599, 0.528935, -0.846567,
		0.207020, 0.823087, 0.528839,
		25.175819, 34.280544, 34.495914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449238, 34.202034, 33.714817>,  <25.030907, 33.704384, 34.125725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449238, 34.202034, 33.714817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513542, 34.217178, 34.109325>,  <25.552124, 34.226265, 34.346031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513542, 34.217178, 34.109325>,  <25.449238, 34.202034, 33.714817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513542, 34.217178, 34.109325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921730, -0.363092, -0.136300,
		0.352944, 0.930984, -0.093271,
		0.160759, 0.037865, 0.986267,
		25.561769, 34.228539, 34.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050257, 34.706352, 33.903423>,  <25.449238, 34.202034, 33.714817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050257, 34.706352, 33.903423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995781, 34.387455, 34.138660>,  <25.963095, 34.196117, 34.279804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995781, 34.387455, 34.138660>,  <26.050257, 34.706352, 33.903423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995781, 34.387455, 34.138660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778658, -0.453150, -0.433989,
		0.612490, 0.398816, 0.682496,
		-0.136191, -0.797245, 0.588091,
		25.954924, 34.148281, 34.315086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646618, 34.202145, 33.770241>,  <26.050257, 34.706352, 33.903423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646618, 34.202145, 33.770241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876606, 34.493343, 33.620876>,  <27.014599, 34.668060, 33.531258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876606, 34.493343, 33.620876>,  <26.646618, 34.202145, 33.770241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876606, 34.493343, 33.620876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648722, 0.683749, 0.334137,
		0.498568, 0.050119, 0.865401,
		0.574970, 0.727994, -0.373408,
		27.049097, 34.711742, 33.508854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790409, 34.646267, 34.324741>,  <26.646618, 34.202145, 33.770241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790409, 34.646267, 34.324741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831261, 34.870522, 33.996044>,  <26.855772, 35.005074, 33.798828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831261, 34.870522, 33.996044>,  <26.790409, 34.646267, 34.324741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831261, 34.870522, 33.996044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428350, 0.770339, 0.472328,
		0.897823, 0.303754, 0.318823,
		0.102130, 0.560635, -0.821741,
		26.861900, 35.038712, 33.749523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958271, 35.322624, 34.559315>,  <26.790409, 34.646267, 34.324741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958271, 35.322624, 34.559315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835129, 35.379421, 34.183002>,  <26.761244, 35.413498, 33.957214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835129, 35.379421, 34.183002>,  <26.958271, 35.322624, 34.559315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835129, 35.379421, 34.183002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402798, 0.876365, 0.264081,
		0.861962, 0.460243, -0.212600,
		-0.307856, 0.141992, -0.940778,
		26.742771, 35.422020, 33.900768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206860, 35.998890, 34.242199>,  <26.958271, 35.322624, 34.559315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206860, 35.998890, 34.242199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858768, 35.893265, 34.075840>,  <26.649914, 35.829891, 33.976025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858768, 35.893265, 34.075840>,  <27.206860, 35.998890, 34.242199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858768, 35.893265, 34.075840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400831, 0.870330, 0.286113,
		0.286420, 0.415690, -0.863230,
		-0.870229, -0.264061, -0.415901,
		26.597700, 35.814045, 33.951069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975134, 36.623795, 33.827011>,  <27.206860, 35.998890, 34.242199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975134, 36.623795, 33.827011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661856, 36.385265, 33.897438>,  <26.473888, 36.242146, 33.939693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661856, 36.385265, 33.897438>,  <26.975134, 36.623795, 33.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661856, 36.385265, 33.897438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489991, 0.766255, 0.415646,
		-0.382771, 0.239263, -0.892323,
		-0.783196, -0.596327, 0.176063,
		26.426897, 36.206367, 33.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395584, 36.949173, 33.548416>,  <26.975134, 36.623795, 33.827011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395584, 36.949173, 33.548416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252825, 36.694389, 33.821739>,  <26.167170, 36.541519, 33.985733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252825, 36.694389, 33.821739>,  <26.395584, 36.949173, 33.548416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252825, 36.694389, 33.821739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697870, 0.668053, 0.258232,
		-0.620969, -0.384700, -0.682937,
		-0.356896, -0.636955, 0.683311,
		26.145756, 36.503304, 34.026733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701180, 36.726051, 33.517361>,  <26.395584, 36.949173, 33.548416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701180, 36.726051, 33.517361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797211, 36.683796, 33.903355>,  <25.854830, 36.658443, 34.134953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797211, 36.683796, 33.903355>,  <25.701180, 36.726051, 33.517361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797211, 36.683796, 33.903355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924333, 0.278845, 0.260489,
		-0.296600, -0.954508, -0.030701,
		0.240078, -0.105639, 0.964989,
		25.869234, 36.652103, 34.192852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188467, 36.309174, 33.822800>,  <25.701180, 36.726051, 33.517361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188467, 36.309174, 33.822800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367491, 36.578365, 34.058353>,  <25.474905, 36.739880, 34.199688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367491, 36.578365, 34.058353>,  <25.188467, 36.309174, 33.822800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367491, 36.578365, 34.058353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894189, 0.344783, 0.285570,
		-0.010855, -0.654386, 0.756083,
		0.447558, 0.672982, 0.588887,
		25.501759, 36.780258, 34.235020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102133, 36.162762, 34.514118>,  <25.188467, 36.309174, 33.822800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102133, 36.162762, 34.514118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112719, 36.550598, 34.416798>,  <25.119070, 36.783298, 34.358406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112719, 36.550598, 34.416798>,  <25.102133, 36.162762, 34.514118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112719, 36.550598, 34.416798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956492, 0.095302, 0.275753,
		0.290555, 0.225415, 0.929928,
		0.026465, 0.969590, -0.243298,
		25.120659, 36.841476, 34.343807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613480, 35.729942, 34.720844>,  <25.102133, 36.162762, 34.514118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613480, 35.729942, 34.720844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713825, 35.993477, 34.437153>,  <25.774033, 36.151596, 34.266937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713825, 35.993477, 34.437153>,  <25.613480, 35.729942, 34.720844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713825, 35.993477, 34.437153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295245, -0.749820, -0.592115,
		-0.921899, -0.060854, -0.382622,
		0.250865, 0.658837, -0.709225,
		25.789085, 36.191128, 34.224384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369329, 35.478622, 34.041920>,  <25.613480, 35.729942, 34.720844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369329, 35.478622, 34.041920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695389, 35.706440, 33.999660>,  <25.891024, 35.843128, 33.974304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695389, 35.706440, 33.999660>,  <25.369329, 35.478622, 34.041920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695389, 35.706440, 33.999660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400879, -0.686317, -0.606848,
		-0.418130, 0.452320, -0.787765,
		0.815146, 0.569540, -0.105644,
		25.939932, 35.877300, 33.967968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458250, 35.631641, 33.298111>,  <25.369329, 35.478622, 34.041920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458250, 35.631641, 33.298111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798161, 35.655769, 33.507584>,  <26.002106, 35.670246, 33.633266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798161, 35.655769, 33.507584>,  <25.458250, 35.631641, 33.298111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798161, 35.655769, 33.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445207, -0.614067, -0.651700,
		0.282266, 0.786946, -0.548673,
		0.849775, 0.060321, 0.523684,
		26.053093, 35.673866, 33.664688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005337, 35.241123, 32.884899>,  <25.458250, 35.631641, 33.298111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005337, 35.241123, 32.884899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241930, 35.354195, 33.186954>,  <26.383886, 35.422039, 33.368187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241930, 35.354195, 33.186954>,  <26.005337, 35.241123, 32.884899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241930, 35.354195, 33.186954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787309, -0.404622, -0.465215,
		0.174038, 0.869696, -0.461886,
		0.591485, 0.282682, 0.755140,
		26.419376, 35.438999, 33.413498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560452, 35.617344, 32.649529>,  <26.005337, 35.241123, 32.884899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560452, 35.617344, 32.649529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685604, 35.451828, 32.991493>,  <26.760696, 35.352516, 33.196674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685604, 35.451828, 32.991493>,  <26.560452, 35.617344, 32.649529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685604, 35.451828, 32.991493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620524, -0.592392, -0.513829,
		0.719064, 0.691264, 0.071420,
		0.312883, -0.413794, 0.854914,
		26.779469, 35.327690, 33.247967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229750, 35.751610, 32.693516>,  <26.560452, 35.617344, 32.649529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229750, 35.751610, 32.693516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115936, 35.422215, 32.889843>,  <27.047649, 35.224575, 33.007641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115936, 35.422215, 32.889843>,  <27.229750, 35.751610, 32.693516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115936, 35.422215, 32.889843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647518, -0.542629, -0.535047,
		0.706939, 0.165576, 0.687621,
		-0.284532, -0.823492, 0.490818,
		27.030577, 35.175167, 33.037090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712498, 35.972580, 33.047516>,  <27.229750, 35.751610, 32.693516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712498, 35.972580, 33.047516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054815, 36.046810, 32.854362>,  <28.260206, 36.091347, 32.738468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054815, 36.046810, 32.854362>,  <27.712498, 35.972580, 33.047516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054815, 36.046810, 32.854362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510692, 0.451971, -0.731380,
		0.082527, 0.872517, 0.481564,
		0.855794, 0.185572, -0.482887,
		28.311554, 36.102482, 32.709496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899141, 36.667950, 32.983490>,  <27.712498, 35.972580, 33.047516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899141, 36.667950, 32.983490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981808, 36.431686, 32.671486>,  <28.031406, 36.289928, 32.484283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981808, 36.431686, 32.671486>,  <27.899141, 36.667950, 32.983490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981808, 36.431686, 32.671486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538868, 0.596695, -0.594622,
		0.816646, 0.543208, -0.194973,
		0.206664, -0.590661, -0.780006,
		28.043806, 36.254490, 32.437485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586571, 36.898743, 33.237759>,  <27.899141, 36.667950, 32.983490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586571, 36.898743, 33.237759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517723, 37.262760, 33.388592>,  <28.476414, 37.481171, 33.479092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517723, 37.262760, 33.388592>,  <28.586571, 36.898743, 33.237759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517723, 37.262760, 33.388592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862504, 0.324148, -0.388606,
		-0.475879, 0.258345, -0.840712,
		-0.172120, 0.910047, 0.377079,
		28.466087, 37.535774, 33.501717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622948, 37.552711, 32.771378>,  <28.586571, 36.898743, 33.237759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622948, 37.552711, 32.771378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747976, 37.564945, 33.151138>,  <28.822994, 37.572285, 33.378994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747976, 37.564945, 33.151138>,  <28.622948, 37.552711, 32.771378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747976, 37.564945, 33.151138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935077, 0.165939, -0.313201,
		-0.167121, 0.985662, 0.023273,
		0.312573, 0.030580, 0.949401,
		28.841747, 37.574120, 33.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968536, 38.164742, 32.737038>,  <28.622948, 37.552711, 32.771378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968536, 38.164742, 32.737038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072329, 37.931969, 33.045330>,  <29.134604, 37.792305, 33.230305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072329, 37.931969, 33.045330>,  <28.968536, 38.164742, 32.737038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072329, 37.931969, 33.045330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965221, 0.129909, -0.226874,
		0.031900, 0.802796, 0.595400,
		0.259482, -0.581930, 0.770731,
		29.150173, 37.757389, 33.276550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500681, 38.532116, 33.133976>,  <28.968536, 38.164742, 32.737038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500681, 38.532116, 33.133976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518682, 38.135136, 33.179611>,  <29.529484, 37.896946, 33.206993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518682, 38.135136, 33.179611>,  <29.500681, 38.532116, 33.133976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518682, 38.135136, 33.179611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994465, 0.033651, -0.099537,
		0.094946, 0.117939, 0.988471,
		0.045003, -0.992451, 0.114091,
		29.532183, 37.837402, 33.213837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896296, 38.280651, 33.809837>,  <29.500681, 38.532116, 33.133976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896296, 38.280651, 33.809837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916521, 38.029732, 33.498981>,  <29.928658, 37.879181, 33.312469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916521, 38.029732, 33.498981>,  <29.896296, 38.280651, 33.809837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916521, 38.029732, 33.498981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974948, 0.199770, -0.097815,
		0.216608, -0.752724, 0.621681,
		0.050566, -0.627294, -0.777139,
		29.931690, 37.841545, 33.265839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932747, 38.179775, 34.584778>,  <29.896296, 38.280651, 33.809837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932747, 38.179775, 34.584778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238848, 37.949799, 34.468960>,  <30.422508, 37.811813, 34.399471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238848, 37.949799, 34.468960>,  <29.932747, 38.179775, 34.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238848, 37.949799, 34.468960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581844, 0.425332, 0.693218,
		-0.275410, -0.698952, 0.660012,
		0.765250, -0.574943, -0.289541,
		30.468422, 37.777317, 34.382099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344913, 38.186775, 35.159607>,  <29.932747, 38.179775, 34.584778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344913, 38.186775, 35.159607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603827, 38.012432, 34.909470>,  <30.759174, 37.907825, 34.759388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603827, 38.012432, 34.909470>,  <30.344913, 38.186775, 35.159607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603827, 38.012432, 34.909470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749715, 0.215853, 0.625568,
		-0.137679, -0.873747, 0.466489,
		0.647281, -0.435861, -0.625342,
		30.798012, 37.881672, 34.721867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795691, 37.838963, 35.595852>,  <30.344913, 38.186775, 35.159607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795691, 37.838963, 35.595852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989710, 37.900776, 35.251564>,  <31.106121, 37.937866, 35.044991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989710, 37.900776, 35.251564>,  <30.795691, 37.838963, 35.595852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989710, 37.900776, 35.251564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716050, 0.494824, 0.492362,
		0.502001, -0.855140, 0.129349,
		0.485044, 0.154546, -0.860726,
		31.135225, 37.947136, 34.993347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568077, 37.782673, 35.684799>,  <30.795691, 37.838963, 35.595852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568077, 37.782673, 35.684799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471062, 38.022522, 35.379742>,  <31.412851, 38.166431, 35.196709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471062, 38.022522, 35.379742>,  <31.568077, 37.782673, 35.684799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471062, 38.022522, 35.379742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708944, 0.646175, 0.282589,
		0.662249, -0.472132, -0.581823,
		-0.242540, 0.599624, -0.762644,
		31.398300, 38.202408, 35.150948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198711, 37.805180, 35.396397>,  <31.568077, 37.782673, 35.684799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198711, 37.805180, 35.396397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977882, 38.125687, 35.304142>,  <31.845385, 38.317989, 35.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977882, 38.125687, 35.304142>,  <32.198711, 37.805180, 35.396397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977882, 38.125687, 35.304142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762613, 0.597072, 0.248850,
		0.337099, -0.038501, -0.940682,
		-0.552074, 0.801263, -0.230634,
		31.812260, 38.366066, 35.234951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568970, 38.232452, 34.801678>,  <32.198711, 37.805180, 35.396397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568970, 38.232452, 34.801678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314114, 38.427532, 35.040409>,  <32.161198, 38.544579, 35.183647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314114, 38.427532, 35.040409>,  <32.568970, 38.232452, 34.801678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314114, 38.427532, 35.040409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759748, 0.527750, 0.379819,
		-0.129739, 0.695438, -0.706777,
		-0.637142, 0.487695, 0.596827,
		32.122971, 38.573841, 35.219456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719681, 38.715290, 35.416206>,  <32.568970, 38.232452, 34.801678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719681, 38.715290, 35.416206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689480, 39.086346, 35.269897>,  <32.671360, 39.308979, 35.182114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689480, 39.086346, 35.269897>,  <32.719681, 38.715290, 35.416206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689480, 39.086346, 35.269897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987415, -0.120675, -0.102217,
		-0.138961, 0.353453, 0.925073,
		-0.075505, 0.927636, -0.365774,
		32.666828, 39.364635, 35.160164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151630, 39.216927, 35.856266>,  <32.719681, 38.715290, 35.416206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151630, 39.216927, 35.856266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216663, 39.226387, 35.461700>,  <32.255684, 39.232063, 35.224960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216663, 39.226387, 35.461700>,  <32.151630, 39.216927, 35.856266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216663, 39.226387, 35.461700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945237, -0.283010, -0.162579,
		-0.283010, 0.958825, -0.023653,
		0.162579, 0.023653, -0.986412,
		32.265438, 39.233482, 35.165775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577494, 39.612461, 35.467838>,  <32.151630, 39.216927, 35.856266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577494, 39.612461, 35.467838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741945, 39.313686, 35.258820>,  <31.840616, 39.134422, 35.133408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741945, 39.313686, 35.258820>,  <31.577494, 39.612461, 35.467838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741945, 39.313686, 35.258820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895513, -0.438081, -0.078368,
		-0.170381, 0.500165, -0.849003,
		0.411129, -0.746941, -0.522545,
		31.865284, 39.089603, 35.102055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126625, 39.370724, 34.914574>,  <31.577494, 39.612461, 35.467838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126625, 39.370724, 34.914574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372986, 39.061928, 34.977436>,  <31.520802, 38.876652, 35.015152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372986, 39.061928, 34.977436>,  <31.126625, 39.370724, 34.914574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372986, 39.061928, 34.977436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744213, -0.635564, -0.205441,
		0.258480, 0.009575, -0.965969,
		0.615902, -0.771989, 0.157155,
		31.557756, 38.830330, 35.024582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221058, 39.138359, 34.314495>,  <31.126625, 39.370724, 34.914574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221058, 39.138359, 34.314495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258093, 38.850616, 34.589870>,  <31.280313, 38.677971, 34.755096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258093, 38.850616, 34.589870>,  <31.221058, 39.138359, 34.314495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258093, 38.850616, 34.589870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694121, -0.542343, -0.473351,
		0.713880, -0.434033, -0.549537,
		0.092588, -0.719361, 0.688438,
		31.285870, 38.634808, 34.796402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820557, 38.755531, 34.309391>,  <31.221058, 39.138359, 34.314495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820557, 38.755531, 34.309391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738997, 38.455463, 34.561001>,  <31.690060, 38.275421, 34.711967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738997, 38.455463, 34.561001>,  <31.820557, 38.755531, 34.309391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738997, 38.455463, 34.561001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700087, -0.337399, -0.629318,
		0.684327, -0.568688, -0.456389,
		-0.203900, -0.750171, 0.629022,
		31.677826, 38.230412, 34.749706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783087, 38.187344, 33.905479>,  <31.820557, 38.755531, 34.309391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783087, 38.187344, 33.905479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560556, 38.116467, 34.230221>,  <31.427038, 38.073940, 34.425064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560556, 38.116467, 34.230221>,  <31.783087, 38.187344, 33.905479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560556, 38.116467, 34.230221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678293, -0.467546, -0.566851,
		0.480019, -0.866028, 0.139921,
		-0.556328, -0.177192, 0.811851,
		31.393658, 38.063309, 34.473778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638565, 37.427013, 33.911850>,  <31.783087, 38.187344, 33.905479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638565, 37.427013, 33.911850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359627, 37.597347, 34.142460>,  <31.192265, 37.699547, 34.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359627, 37.597347, 34.142460>,  <31.638565, 37.427013, 33.911850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359627, 37.597347, 34.142460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703554, -0.560244, -0.437194,
		0.136823, -0.710489, 0.690279,
		-0.697346, 0.425830, 0.576521,
		31.150423, 37.725098, 34.315414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726316, 37.070446, 34.564423>,  <31.638565, 37.427013, 33.911850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726316, 37.070446, 34.564423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075020, 37.073360, 34.760376>,  <32.284241, 37.075108, 34.877949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075020, 37.073360, 34.760376>,  <31.726316, 37.070446, 34.564423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075020, 37.073360, 34.760376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299805, -0.782894, 0.545155,
		0.387493, -0.622112, -0.680312,
		0.871760, 0.007283, 0.489879,
		32.336548, 37.075546, 34.907341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375771, 36.519016, 34.438595>,  <31.726316, 37.070446, 34.564423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375771, 36.519016, 34.438595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290504, 36.676224, 34.796387>,  <32.239346, 36.770550, 35.011063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290504, 36.676224, 34.796387>,  <32.375771, 36.519016, 34.438595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290504, 36.676224, 34.796387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287098, -0.900300, 0.327161,
		0.933882, -0.187063, 0.304750,
		-0.213167, 0.393023, 0.894479,
		32.226555, 36.794132, 35.064732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356480, 36.926773, 33.855835>,  <32.375771, 36.519016, 34.438595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356480, 36.926773, 33.855835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676525, 37.088051, 33.678185>,  <32.868553, 37.184818, 33.571594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676525, 37.088051, 33.678185>,  <32.356480, 36.926773, 33.855835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676525, 37.088051, 33.678185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194299, -0.526280, -0.827815,
		-0.567506, 0.748641, -0.342744,
		0.800115, 0.403195, -0.444127,
		32.916561, 37.209011, 33.544945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188263, 37.122292, 33.117611>,  <32.356480, 36.926773, 33.855835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188263, 37.122292, 33.117611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568592, 37.018669, 33.185524>,  <32.796791, 36.956497, 33.226273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568592, 37.018669, 33.185524>,  <32.188263, 37.122292, 33.117611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568592, 37.018669, 33.185524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001948, -0.543141, -0.839639,
		0.309725, 0.798680, -0.515927,
		0.950824, -0.259052, 0.169780,
		32.853840, 36.940952, 33.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610664, 37.225529, 32.488480>,  <32.188263, 37.122292, 33.117611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610664, 37.225529, 32.488480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767490, 36.921352, 32.695564>,  <32.861584, 36.738846, 32.819813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767490, 36.921352, 32.695564>,  <32.610664, 37.225529, 32.488480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767490, 36.921352, 32.695564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107797, -0.596864, -0.795068,
		0.913601, 0.255909, -0.315981,
		0.392063, -0.760437, 0.517709,
		32.885109, 36.693222, 32.850876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656055, 36.921528, 31.773333>,  <32.610664, 37.225529, 32.488480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656055, 36.921528, 31.773333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982784, 37.061989, 31.590254>,  <33.178822, 37.146267, 31.480406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982784, 37.061989, 31.590254>,  <32.656055, 36.921528, 31.773333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982784, 37.061989, 31.590254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059461, -0.840415, -0.538672,
		-0.573813, 0.412786, -0.707351,
		0.816825, 0.351157, -0.457697,
		33.227833, 37.167336, 31.452946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572769, 36.957607, 31.064312>,  <32.656055, 36.921528, 31.773333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572769, 36.957607, 31.064312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948284, 36.876064, 31.175388>,  <33.173595, 36.827137, 31.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948284, 36.876064, 31.175388>,  <32.572769, 36.957607, 31.064312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948284, 36.876064, 31.175388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033729, -0.856621, -0.514843,
		0.342834, 0.473963, -0.811064,
		0.938790, -0.203862, 0.277692,
		33.229919, 36.814907, 31.258696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842503, 36.584785, 30.613546>,  <32.572769, 36.957607, 31.064312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842503, 36.584785, 30.613546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126503, 36.515038, 30.886456>,  <33.296902, 36.473186, 31.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126503, 36.515038, 30.886456>,  <32.842503, 36.584785, 30.613546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126503, 36.515038, 30.886456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029773, -0.960558, -0.276482,
		0.703573, 0.216615, -0.676804,
		0.709999, -0.174374, 0.682272,
		33.339504, 36.462727, 31.091137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129314, 36.024899, 30.322729>,  <32.842503, 36.584785, 30.613546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129314, 36.024899, 30.322729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312355, 36.057377, 30.676907>,  <33.422180, 36.076866, 30.889414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312355, 36.057377, 30.676907>,  <33.129314, 36.024899, 30.322729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312355, 36.057377, 30.676907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308710, -0.948384, -0.072572,
		0.833848, 0.306555, -0.459045,
		0.457599, 0.081198, 0.885444,
		33.449635, 36.081738, 30.942539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131611, 35.255547, 30.220980>,  <33.129314, 36.024899, 30.322729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131611, 35.255547, 30.220980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170803, 35.033688, 29.890461>,  <33.194321, 34.900574, 29.692150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170803, 35.033688, 29.890461>,  <33.131611, 35.255547, 30.220980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170803, 35.033688, 29.890461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720840, -0.612008, 0.325326,
		-0.686141, 0.563752, -0.459776,
		0.097983, -0.554644, -0.826299,
		33.200199, 34.867294, 29.642570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448101, 35.014103, 30.028870>,  <33.131611, 35.255547, 30.220980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448101, 35.014103, 30.028870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688629, 34.741661, 29.861771>,  <32.832947, 34.578197, 29.761511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688629, 34.741661, 29.861771>,  <32.448101, 35.014103, 30.028870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688629, 34.741661, 29.861771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534861, -0.731541, 0.422813,
		-0.593576, -0.030811, -0.804188,
		0.601324, -0.681100, -0.417746,
		32.869026, 34.537331, 29.736446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061497, 34.431690, 29.784760>,  <32.448101, 35.014103, 30.028870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061497, 34.431690, 29.784760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426701, 34.272221, 29.819323>,  <32.645824, 34.176540, 29.840061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426701, 34.272221, 29.819323>,  <32.061497, 34.431690, 29.784760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426701, 34.272221, 29.819323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407403, -0.880378, 0.242812,
		-0.020730, -0.256894, -0.966217,
		0.913013, -0.398673, 0.086409,
		32.700603, 34.152618, 29.845245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267605, 33.881638, 29.306055>,  <32.061497, 34.431690, 29.784760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267605, 33.881638, 29.306055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448933, 33.824303, 29.657955>,  <32.557728, 33.789902, 29.869095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448933, 33.824303, 29.657955>,  <32.267605, 33.881638, 29.306055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448933, 33.824303, 29.657955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692118, -0.678539, 0.246083,
		0.561673, -0.720444, -0.406797,
		0.453316, -0.143334, 0.879750,
		32.584927, 33.781303, 29.921881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252670, 33.141426, 29.446005>,  <32.267605, 33.881638, 29.306055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252670, 33.141426, 29.446005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348495, 33.315033, 29.793392>,  <32.405991, 33.419197, 30.001825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348495, 33.315033, 29.793392>,  <32.252670, 33.141426, 29.446005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348495, 33.315033, 29.793392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774866, -0.453491, 0.440374,
		0.584973, -0.778444, 0.227666,
		0.239562, 0.434017, 0.868469,
		32.420364, 33.445236, 30.053932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363979, 32.585037, 29.939102>,  <32.252670, 33.141426, 29.446005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363979, 32.585037, 29.939102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271717, 32.918186, 30.140345>,  <32.216358, 33.118076, 30.261089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271717, 32.918186, 30.140345>,  <32.363979, 32.585037, 29.939102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271717, 32.918186, 30.140345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763074, -0.475651, 0.437578,
		0.603750, -0.282975, 0.745259,
		-0.230659, 0.832876, 0.503105,
		32.202518, 33.168049, 30.291277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256649, 32.421368, 30.714882>,  <32.363979, 32.585037, 29.939102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256649, 32.421368, 30.714882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061039, 32.758148, 30.623695>,  <31.943674, 32.960217, 30.568983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061039, 32.758148, 30.623695>,  <32.256649, 32.421368, 30.714882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061039, 32.758148, 30.623695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862293, -0.427211, 0.271923,
		0.131557, 0.329551, 0.934927,
		-0.489024, 0.841954, -0.227967,
		31.914331, 33.010735, 30.555305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925690, 32.677303, 31.345501>,  <32.256649, 32.421368, 30.714882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925690, 32.677303, 31.345501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742216, 32.808064, 31.014988>,  <31.632132, 32.886520, 30.816679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742216, 32.808064, 31.014988>,  <31.925690, 32.677303, 31.345501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742216, 32.808064, 31.014988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852267, -0.425017, 0.304962,
		-0.251493, 0.844096, 0.473554,
		-0.458685, 0.326898, -0.826284,
		31.604610, 32.906132, 30.767103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312664, 33.097050, 31.505735>,  <31.925690, 32.677303, 31.345501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312664, 33.097050, 31.505735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232573, 32.942829, 31.145456>,  <31.184517, 32.850296, 30.929289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232573, 32.942829, 31.145456>,  <31.312664, 33.097050, 31.505735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232573, 32.942829, 31.145456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914210, -0.257063, 0.313269,
		-0.352317, 0.886155, -0.301002,
		-0.200228, -0.385549, -0.900700,
		31.172504, 32.827164, 30.875246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736694, 33.505306, 31.199057>,  <31.312664, 33.097050, 31.505735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736694, 33.505306, 31.199057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785688, 33.119606, 31.105066>,  <30.815084, 32.888184, 31.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785688, 33.119606, 31.105066>,  <30.736694, 33.505306, 31.199057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785688, 33.119606, 31.105066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909434, -0.203847, 0.362459,
		-0.397402, 0.169302, -0.901892,
		0.122483, -0.964253, -0.234978,
		30.822433, 32.830330, 31.034573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881762, 33.733250, 30.456190>,  <30.736694, 33.505306, 31.199057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881762, 33.733250, 30.456190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171007, 33.501572, 30.606726>,  <31.344555, 33.362564, 30.697048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171007, 33.501572, 30.606726>,  <30.881762, 33.733250, 30.456190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171007, 33.501572, 30.606726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687679, 0.552553, -0.470939,
		0.064819, 0.599345, 0.797862,
		0.723115, -0.579199, 0.376341,
		31.387941, 33.327812, 30.719627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409266, 34.244186, 30.664936>,  <30.881762, 33.733250, 30.456190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409266, 34.244186, 30.664936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562803, 33.874947, 30.674273>,  <31.654926, 33.653400, 30.679874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562803, 33.874947, 30.674273>,  <31.409266, 34.244186, 30.664936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562803, 33.874947, 30.674273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873569, 0.354825, -0.333132,
		0.299233, 0.148260, 0.942591,
		0.383845, -0.923102, 0.023340,
		31.677958, 33.598015, 30.681274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084648, 34.274750, 30.992220>,  <31.409266, 34.244186, 30.664936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084648, 34.274750, 30.992220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077766, 33.932709, 30.784950>,  <32.073639, 33.727486, 30.660589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077766, 33.932709, 30.784950>,  <32.084648, 34.274750, 30.992220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077766, 33.932709, 30.784950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904864, 0.207159, -0.371895,
		0.425353, -0.475273, 0.770189,
		-0.017200, -0.855103, -0.518173,
		32.072605, 33.676178, 30.629498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755997, 34.072426, 31.123646>,  <32.084648, 34.274750, 30.992220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755997, 34.072426, 31.123646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644798, 33.904823, 30.777895>,  <32.578079, 33.804260, 30.570444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644798, 33.904823, 30.777895>,  <32.755997, 34.072426, 31.123646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644798, 33.904823, 30.777895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891437, 0.222687, -0.394651,
		0.357849, -0.880250, 0.311615,
		-0.278000, -0.419010, -0.864376,
		32.561398, 33.779121, 30.518581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263290, 33.535233, 30.922371>,  <32.755997, 34.072426, 31.123646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263290, 33.535233, 30.922371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057140, 33.668152, 30.606403>,  <32.933453, 33.747902, 30.416822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057140, 33.668152, 30.606403>,  <33.263290, 33.535233, 30.922371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057140, 33.668152, 30.606403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856514, 0.229668, -0.462208,
		0.027828, -0.914785, -0.402982,
		-0.515372, 0.332298, -0.789917,
		32.902527, 33.767841, 30.369429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522869, 33.129009, 30.308355>,  <33.263290, 33.535233, 30.922371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522869, 33.129009, 30.308355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355068, 33.477360, 30.205914>,  <33.254387, 33.686371, 30.144449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355068, 33.477360, 30.205914>,  <33.522869, 33.129009, 30.308355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355068, 33.477360, 30.205914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826226, 0.249455, -0.505097,
		-0.375993, -0.423487, -0.824189,
		-0.419500, 0.870880, -0.256102,
		33.229218, 33.738625, 30.129084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163181, 33.323410, 29.668808>,  <33.522869, 33.129009, 30.308355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163181, 33.323410, 29.668808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439816, 33.610279, 29.703182>,  <33.605797, 33.782398, 29.723806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439816, 33.610279, 29.703182>,  <33.163181, 33.323410, 29.668808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439816, 33.610279, 29.703182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345294, -0.223764, -0.911428,
		-0.634419, 0.659999, -0.402385,
		0.691581, 0.717168, 0.085934,
		33.647289, 33.825428, 29.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137348, 33.716434, 29.026810>,  <33.163181, 33.323410, 29.668808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137348, 33.716434, 29.026810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494217, 33.759563, 29.202265>,  <33.708340, 33.785442, 29.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494217, 33.759563, 29.202265>,  <33.137348, 33.716434, 29.026810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494217, 33.759563, 29.202265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450993, -0.266763, -0.851729,
		0.025175, 0.957712, -0.286626,
		0.892172, 0.107824, 0.438637,
		33.761868, 33.791912, 29.333857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524532, 34.210533, 28.546745>,  <33.137348, 33.716434, 29.026810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524532, 34.210533, 28.546745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782352, 34.001038, 28.769545>,  <33.937046, 33.875340, 28.903223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782352, 34.001038, 28.769545>,  <33.524532, 34.210533, 28.546745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782352, 34.001038, 28.769545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541387, -0.201763, -0.816206,
		0.539862, 0.827639, 0.153500,
		0.644553, -0.523742, 0.556997,
		33.975719, 33.843914, 28.936644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208515, 34.398117, 28.338459>,  <33.524532, 34.210533, 28.546745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208515, 34.398117, 28.338459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266098, 34.052212, 28.530899>,  <34.300648, 33.844669, 28.646362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266098, 34.052212, 28.530899>,  <34.208515, 34.398117, 28.338459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266098, 34.052212, 28.530899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614203, -0.303108, -0.728615,
		0.775906, 0.400384, 0.487506,
		0.143959, -0.864765, 0.481101,
		34.309284, 33.792782, 28.675230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966206, 34.395935, 28.453794>,  <34.208515, 34.398117, 28.338459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966206, 34.395935, 28.453794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863880, 34.010643, 28.486660>,  <34.802483, 33.779469, 28.506380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863880, 34.010643, 28.486660>,  <34.966206, 34.395935, 28.453794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863880, 34.010643, 28.486660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546585, -0.214220, -0.809540,
		0.797372, -0.162185, 0.581287,
		-0.255818, -0.963227, 0.082165,
		34.787136, 33.721676, 28.511309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617870, 33.940018, 28.445950>,  <34.966206, 34.395935, 28.453794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617870, 33.940018, 28.445950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352955, 33.656910, 28.347616>,  <35.194004, 33.487045, 28.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352955, 33.656910, 28.347616>,  <35.617870, 33.940018, 28.445950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352955, 33.656910, 28.347616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566582, -0.258406, -0.782439,
		0.490261, -0.657488, 0.572149,
		-0.662291, -0.707769, -0.245834,
		35.154266, 33.444580, 28.273867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959152, 33.308796, 28.323151>,  <35.617870, 33.940018, 28.445950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959152, 33.308796, 28.323151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605968, 33.257839, 28.142414>,  <35.394058, 33.227264, 28.033972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605968, 33.257839, 28.142414>,  <35.959152, 33.308796, 28.323151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605968, 33.257839, 28.142414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468264, -0.307532, -0.828343,
		-0.033431, -0.942971, 0.331190,
		-0.882956, -0.127392, -0.451841,
		35.341084, 33.219620, 28.006863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010948, 32.657780, 28.043802>,  <35.959152, 33.308796, 28.323151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010948, 32.657780, 28.043802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731133, 32.872017, 27.854578>,  <35.563244, 33.000561, 27.741043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731133, 32.872017, 27.854578>,  <36.010948, 32.657780, 28.043802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731133, 32.872017, 27.854578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447237, -0.188171, -0.874397,
		-0.557339, -0.823243, -0.107905,
		-0.699537, 0.535595, -0.473060,
		35.521271, 33.032696, 27.712660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933357, 32.345142, 27.436813>,  <36.010948, 32.657780, 28.043802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933357, 32.345142, 27.436813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767063, 32.700027, 27.356804>,  <35.667286, 32.912960, 27.308798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767063, 32.700027, 27.356804>,  <35.933357, 32.345142, 27.436813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767063, 32.700027, 27.356804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336980, -0.054010, -0.939961,
		-0.844753, -0.458180, -0.276520,
		-0.415737, 0.887217, -0.200022,
		35.642342, 32.966194, 27.296797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496727, 32.249893, 26.748041>,  <35.933357, 32.345142, 27.436813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496727, 32.249893, 26.748041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580116, 32.640404, 26.771467>,  <35.630150, 32.874710, 26.785522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580116, 32.640404, 26.771467>,  <35.496727, 32.249893, 26.748041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580116, 32.640404, 26.771467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265359, 0.001175, -0.964149,
		-0.941342, 0.216539, -0.258818,
		0.208471, 0.976273, 0.058566,
		35.642658, 32.933285, 26.789038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254887, 32.589352, 26.108877>,  <35.496727, 32.249893, 26.748041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254887, 32.589352, 26.108877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515968, 32.856354, 26.252214>,  <35.672619, 33.016556, 26.338217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515968, 32.856354, 26.252214>,  <35.254887, 32.589352, 26.108877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515968, 32.856354, 26.252214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288941, 0.217913, -0.932216,
		-0.700350, 0.712001, -0.050638,
		0.652704, 0.667509, 0.358342,
		35.711781, 33.056606, 26.359716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252037, 33.135090, 25.613766>,  <35.254887, 32.589352, 26.108877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252037, 33.135090, 25.613766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584114, 33.242493, 25.809187>,  <35.783360, 33.306934, 25.926439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584114, 33.242493, 25.809187>,  <35.252037, 33.135090, 25.613766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584114, 33.242493, 25.809187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291244, 0.538357, -0.790790,
		-0.475350, 0.798796, 0.368738,
		0.830192, 0.268509, 0.488553,
		35.833172, 33.323044, 25.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330162, 33.865196, 25.612225>,  <35.252037, 33.135090, 25.613766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330162, 33.865196, 25.612225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700863, 33.738770, 25.693455>,  <35.923283, 33.662914, 25.742193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700863, 33.738770, 25.693455>,  <35.330162, 33.865196, 25.612225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700863, 33.738770, 25.693455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363586, 0.618493, -0.696615,
		0.094575, 0.719422, 0.688104,
		0.926748, -0.316067, 0.203078,
		35.978886, 33.643948, 25.754377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766335, 34.494354, 25.690769>,  <35.330162, 33.865196, 25.612225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766335, 34.494354, 25.690769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998634, 34.188015, 25.580349>,  <36.138012, 34.004211, 25.514097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998634, 34.188015, 25.580349>,  <35.766335, 34.494354, 25.690769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998634, 34.188015, 25.580349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502414, 0.603989, -0.618690,
		0.640558, 0.220609, 0.735539,
		0.580746, -0.765852, -0.276053,
		36.172859, 33.958260, 25.497534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347820, 34.835602, 25.606459>,  <35.766335, 34.494354, 25.690769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347820, 34.835602, 25.606459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396873, 34.494740, 25.402975>,  <36.426304, 34.290222, 25.280886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396873, 34.494740, 25.402975>,  <36.347820, 34.835602, 25.606459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396873, 34.494740, 25.402975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504308, 0.494974, -0.707584,
		0.854772, -0.169776, 0.490449,
		0.122629, -0.852160, -0.508709,
		36.433662, 34.239090, 25.250362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032974, 34.784054, 25.509699>,  <36.347820, 34.835602, 25.606459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032974, 34.784054, 25.509699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852287, 34.575111, 25.220398>,  <36.743874, 34.449745, 25.046818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852287, 34.575111, 25.220398>,  <37.032974, 34.784054, 25.509699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852287, 34.575111, 25.220398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449060, 0.567372, -0.690242,
		0.770904, -0.636580, -0.021725,
		-0.451721, -0.522355, -0.723253,
		36.716770, 34.418404, 25.003422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490650, 34.950645, 24.869562>,  <37.032974, 34.784054, 25.509699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490650, 34.950645, 24.869562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177376, 34.766941, 24.701893>,  <36.989410, 34.656719, 24.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177376, 34.766941, 24.701893>,  <37.490650, 34.950645, 24.869562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177376, 34.766941, 24.701893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108872, 0.562435, -0.819643,
		0.612190, -0.687564, -0.390486,
		-0.783180, -0.459264, -0.419173,
		36.942421, 34.629162, 24.576141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615005, 34.930077, 24.086365>,  <37.490650, 34.950645, 24.869562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615005, 34.930077, 24.086365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222485, 34.868027, 24.131954>,  <36.986973, 34.830795, 24.159307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222485, 34.868027, 24.131954>,  <37.615005, 34.930077, 24.086365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222485, 34.868027, 24.131954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160392, 0.331522, -0.929714,
		0.106435, -0.930607, -0.350203,
		-0.981298, -0.155124, 0.113976,
		36.928097, 34.821491, 24.166147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391907, 34.741501, 23.385382>,  <37.615005, 34.930077, 24.086365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391907, 34.741501, 23.385382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062347, 34.840050, 23.589539>,  <36.864613, 34.899178, 23.712032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062347, 34.840050, 23.589539>,  <37.391907, 34.741501, 23.385382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062347, 34.840050, 23.589539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297302, 0.578830, -0.759320,
		-0.482505, -0.777340, -0.403648,
		-0.823894, 0.246371, 0.510393,
		36.815178, 34.913960, 23.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824306, 34.645470, 22.952656>,  <37.391907, 34.741501, 23.385382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824306, 34.645470, 22.952656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708073, 34.910351, 23.228930>,  <36.638332, 35.069279, 23.394693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708073, 34.910351, 23.228930>,  <36.824306, 34.645470, 22.952656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708073, 34.910351, 23.228930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259694, 0.640158, -0.723019,
		-0.920933, -0.389468, -0.014053,
		-0.290589, 0.662203, 0.690685,
		36.620895, 35.109013, 23.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203602, 34.692028, 22.751297>,  <36.824306, 34.645470, 22.952656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203602, 34.692028, 22.751297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292343, 35.015034, 22.969913>,  <36.345589, 35.208836, 23.101084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292343, 35.015034, 22.969913>,  <36.203602, 34.692028, 22.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292343, 35.015034, 22.969913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113812, 0.578123, -0.807974,
		-0.968414, 0.117052, 0.220166,
		0.221858, 0.807511, 0.546540,
		36.358902, 35.257286, 23.133875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745171, 35.249760, 22.637650>,  <36.203602, 34.692028, 22.751297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745171, 35.249760, 22.637650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062111, 35.458050, 22.764786>,  <36.252277, 35.583023, 22.841066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062111, 35.458050, 22.764786>,  <35.745171, 35.249760, 22.637650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062111, 35.458050, 22.764786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173688, 0.691987, -0.700704,
		-0.584813, 0.500001, 0.638743,
		0.792355, 0.520723, 0.317839,
		36.299816, 35.614265, 22.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508987, 35.911346, 22.622137>,  <35.745171, 35.249760, 22.637650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508987, 35.911346, 22.622137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908215, 35.935947, 22.618462>,  <36.147751, 35.950706, 22.616257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908215, 35.935947, 22.618462>,  <35.508987, 35.911346, 22.622137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908215, 35.935947, 22.618462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051096, 0.726892, -0.684848,
		-0.035440, 0.683992, 0.728628,
		0.998065, 0.061501, -0.009188,
		36.207634, 35.954399, 22.615705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731262, 36.697067, 22.724894>,  <35.508987, 35.911346, 22.622137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731262, 36.697067, 22.724894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043556, 36.525032, 22.543573>,  <36.230934, 36.421810, 22.434780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043556, 36.525032, 22.543573>,  <35.731262, 36.697067, 22.724894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043556, 36.525032, 22.543573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027868, 0.748685, -0.662340,
		0.624241, 0.504479, 0.596509,
		0.780734, -0.430084, -0.453301,
		36.277775, 36.396008, 22.407583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045387, 37.319195, 22.348129>,  <35.731262, 36.697067, 22.724894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045387, 37.319195, 22.348129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196651, 36.989346, 22.179850>,  <36.287411, 36.791435, 22.078882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196651, 36.989346, 22.179850>,  <36.045387, 37.319195, 22.348129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196651, 36.989346, 22.179850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026781, 0.464000, -0.885430,
		0.925354, 0.323566, 0.197549,
		0.378158, -0.824627, -0.420699,
		36.310101, 36.741959, 22.053640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582264, 37.566593, 21.958965>,  <36.045387, 37.319195, 22.348129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582264, 37.566593, 21.958965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497257, 37.219311, 21.779610>,  <36.446255, 37.010941, 21.671997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497257, 37.219311, 21.779610>,  <36.582264, 37.566593, 21.958965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497257, 37.219311, 21.779610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303698, 0.377459, -0.874810,
		0.928765, -0.322085, 0.183458,
		-0.212515, -0.868209, -0.448387,
		36.433502, 36.958847, 21.645094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083530, 37.494949, 21.432419>,  <36.582264, 37.566593, 21.958965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083530, 37.494949, 21.432419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795872, 37.242500, 21.316135>,  <36.623276, 37.091030, 21.246367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795872, 37.242500, 21.316135>,  <37.083530, 37.494949, 21.432419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795872, 37.242500, 21.316135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402432, -0.037235, -0.914692,
		0.566459, -0.774788, 0.280761,
		-0.719147, -0.631123, -0.290708,
		36.580128, 37.053162, 21.228924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439152, 36.986805, 20.978254>,  <37.083530, 37.494949, 21.432419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439152, 36.986805, 20.978254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051548, 36.982262, 20.879549>,  <36.818985, 36.979538, 20.820326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051548, 36.982262, 20.879549>,  <37.439152, 36.986805, 20.978254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051548, 36.982262, 20.879549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246473, -0.111287, -0.962739,
		-0.016527, -0.993723, 0.110638,
		-0.969009, -0.011358, -0.246765,
		36.760845, 36.978855, 20.805519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433365, 36.415943, 20.367849>,  <37.439152, 36.986805, 20.978254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433365, 36.415943, 20.367849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131691, 36.678417, 20.357836>,  <36.950687, 36.835903, 20.351828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131691, 36.678417, 20.357836>,  <37.433365, 36.415943, 20.367849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131691, 36.678417, 20.357836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078562, 0.052315, -0.995535,
		-0.651948, -0.752783, -0.091006,
		-0.754183, 0.656187, -0.025033,
		36.905437, 36.875275, 20.350327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024239, 36.193447, 19.830103>,  <37.433365, 36.415943, 20.367849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024239, 36.193447, 19.830103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939465, 36.578533, 19.897354>,  <36.888599, 36.809586, 19.937704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939465, 36.578533, 19.897354>,  <37.024239, 36.193447, 19.830103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939465, 36.578533, 19.897354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066424, 0.185828, -0.980335,
		-0.975023, -0.196604, -0.103331,
		-0.211939, 0.962712, 0.168128,
		36.875881, 36.867348, 19.947792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743561, 36.418652, 19.231741>,  <37.024239, 36.193447, 19.830103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743561, 36.418652, 19.231741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861820, 36.765850, 19.391331>,  <36.932774, 36.974167, 19.487085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861820, 36.765850, 19.391331>,  <36.743561, 36.418652, 19.231741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861820, 36.765850, 19.391331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262423, 0.327787, -0.907574,
		-0.918546, 0.373022, -0.130872,
		0.295647, 0.867992, 0.398977,
		36.950516, 37.026249, 19.511024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414902, 36.964809, 18.827049>,  <36.743561, 36.418652, 19.231741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414902, 36.964809, 18.827049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702812, 37.170395, 19.013710>,  <36.875557, 37.293747, 19.125708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702812, 37.170395, 19.013710>,  <36.414902, 36.964809, 18.827049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702812, 37.170395, 19.013710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336127, 0.330139, -0.882058,
		-0.607410, 0.791735, 0.064866,
		0.719772, 0.513968, 0.466654,
		36.918743, 37.324585, 19.153706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453640, 37.538746, 18.473764>,  <36.414902, 36.964809, 18.827049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453640, 37.538746, 18.473764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796295, 37.598045, 18.671427>,  <37.001888, 37.633625, 18.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796295, 37.598045, 18.671427>,  <36.453640, 37.538746, 18.473764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796295, 37.598045, 18.671427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420364, 0.354730, -0.835141,
		-0.299102, 0.923141, 0.241556,
		0.856640, 0.148251, 0.494155,
		37.053288, 37.642521, 18.819674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607372, 38.276222, 18.529688>,  <36.453640, 37.538746, 18.473764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607372, 38.276222, 18.529688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939255, 38.053467, 18.544954>,  <37.138386, 37.919811, 18.554113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939255, 38.053467, 18.544954>,  <36.607372, 38.276222, 18.529688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939255, 38.053467, 18.544954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412700, 0.565969, -0.713693,
		0.375850, 0.607907, 0.699418,
		0.829708, -0.556892, 0.038164,
		37.188168, 37.886398, 18.556404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158806, 38.740948, 18.510986>,  <36.607372, 38.276222, 18.529688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158806, 38.740948, 18.510986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340637, 38.399082, 18.410658>,  <37.449738, 38.193962, 18.350460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340637, 38.399082, 18.410658>,  <37.158806, 38.740948, 18.510986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340637, 38.399082, 18.410658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741031, 0.519127, -0.425887,
		0.494198, 0.007732, 0.869315,
		0.454578, -0.854662, -0.250822,
		37.477009, 38.142685, 18.335411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906010, 38.899117, 18.553055>,  <37.158806, 38.740948, 18.510986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906010, 38.899117, 18.553055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899670, 38.568504, 18.327990>,  <37.895866, 38.370136, 18.192951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899670, 38.568504, 18.327990>,  <37.906010, 38.899117, 18.553055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899670, 38.568504, 18.327990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482680, 0.486497, -0.728245,
		0.875653, -0.283129, 0.391241,
		-0.015849, -0.826534, -0.562663,
		37.894917, 38.320545, 18.159191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505722, 38.789280, 18.327656>,  <37.906010, 38.899117, 18.553055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505722, 38.789280, 18.327656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299419, 38.581448, 18.055178>,  <38.175636, 38.456749, 17.891691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299419, 38.581448, 18.055178>,  <38.505722, 38.789280, 18.327656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299419, 38.581448, 18.055178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457513, 0.505201, -0.731747,
		0.724343, -0.689062, -0.022847,
		-0.515761, -0.519583, -0.681193,
		38.144691, 38.425571, 17.850821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994614, 38.609615, 17.768520>,  <38.505722, 38.789280, 18.327656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994614, 38.609615, 17.768520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632492, 38.567020, 17.604038>,  <38.415218, 38.541462, 17.505350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632492, 38.567020, 17.604038>,  <38.994614, 38.609615, 17.768520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632492, 38.567020, 17.604038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303140, 0.516156, -0.801055,
		0.297547, -0.849849, -0.434997,
		-0.905302, -0.106486, -0.411204,
		38.360901, 38.535076, 17.480677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161335, 38.475937, 17.041967>,  <38.994614, 38.609615, 17.768520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161335, 38.475937, 17.041967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789539, 38.621632, 17.065252>,  <38.566463, 38.709049, 17.079224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789539, 38.621632, 17.065252>,  <39.161335, 38.475937, 17.041967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789539, 38.621632, 17.065252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196174, 0.621793, -0.758215,
		-0.312365, -0.693330, -0.649401,
		-0.929486, 0.364235, 0.058213,
		38.510693, 38.730904, 17.082716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029884, 38.492664, 16.422649>,  <39.161335, 38.475937, 17.041967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029884, 38.492664, 16.422649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754211, 38.718803, 16.603939>,  <38.588810, 38.854488, 16.712713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754211, 38.718803, 16.603939>,  <39.029884, 38.492664, 16.422649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754211, 38.718803, 16.603939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077650, 0.679512, -0.729544,
		-0.720418, -0.467593, -0.512205,
		-0.689179, 0.565349, 0.453224,
		38.547459, 38.888409, 16.739906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676388, 38.630375, 15.924918>,  <39.029884, 38.492664, 16.422649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676388, 38.630375, 15.924918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566036, 38.925240, 16.171652>,  <38.499825, 39.102158, 16.319693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566036, 38.925240, 16.171652>,  <38.676388, 38.630375, 15.924918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566036, 38.925240, 16.171652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128639, 0.607649, -0.783718,
		-0.952546, -0.295558, -0.072808,
		-0.275876, 0.737162, 0.616834,
		38.483273, 39.146389, 16.356703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049931, 38.983425, 15.705417>,  <38.676388, 38.630375, 15.924918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049931, 38.983425, 15.705417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184082, 39.266949, 15.953646>,  <38.264572, 39.437065, 16.102583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184082, 39.266949, 15.953646>,  <38.049931, 38.983425, 15.705417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184082, 39.266949, 15.953646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180060, 0.598352, -0.780739,
		-0.924717, 0.373580, 0.073044,
		0.335375, 0.708810, 0.620573,
		38.284695, 39.479591, 16.139818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655071, 39.617538, 15.581833>,  <38.049931, 38.983425, 15.705417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655071, 39.617538, 15.581833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012035, 39.710609, 15.736473>,  <38.226215, 39.766453, 15.829257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012035, 39.710609, 15.736473>,  <37.655071, 39.617538, 15.581833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012035, 39.710609, 15.736473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158374, 0.640758, -0.751230,
		-0.422513, 0.731635, 0.534970,
		0.892413, 0.232679, 0.386601,
		38.279758, 39.780415, 15.852453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709251, 40.275414, 15.624953>,  <37.655071, 39.617538, 15.581833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709251, 40.275414, 15.624953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094078, 40.170532, 15.594828>,  <38.324974, 40.107605, 15.576752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094078, 40.170532, 15.594828>,  <37.709251, 40.275414, 15.624953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094078, 40.170532, 15.594828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178321, 0.813361, -0.553756,
		0.206453, 0.519322, 0.829266,
		0.962070, -0.262200, -0.075314,
		38.382698, 40.091873, 15.572233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029076, 40.918240, 15.807128>,  <37.709251, 40.275414, 15.624953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029076, 40.918240, 15.807128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243584, 40.664268, 15.584674>,  <38.372288, 40.511887, 15.451201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243584, 40.664268, 15.584674>,  <38.029076, 40.918240, 15.807128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243584, 40.664268, 15.584674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352096, 0.767102, -0.536267,
		0.767102, 0.091770, 0.634927,
		0.536267, -0.634927, -0.556134,
		38.404465, 40.473789, 15.417833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728481, 41.219215, 15.635866>,  <38.029076, 40.918240, 15.807128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728481, 41.219215, 15.635866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636272, 40.932625, 15.372497>,  <38.580948, 40.760670, 15.214475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636272, 40.932625, 15.372497>,  <38.728481, 41.219215, 15.635866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636272, 40.932625, 15.372497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293873, 0.593791, -0.749033,
		0.927631, -0.366161, 0.073671,
		-0.230521, -0.716476, -0.658424,
		38.567116, 40.717682, 15.174970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299992, 40.985111, 15.088155>,  <38.728481, 41.219215, 15.635866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299992, 40.985111, 15.088155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933914, 40.934040, 14.935254>,  <38.714268, 40.903397, 14.843513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933914, 40.934040, 14.935254>,  <39.299992, 40.985111, 15.088155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933914, 40.934040, 14.935254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209544, 0.659446, -0.721957,
		0.344250, -0.740831, -0.576769,
		-0.915196, -0.127675, -0.382251,
		38.659355, 40.895737, 14.820579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690781, 41.714382, 15.041438>,  <39.299992, 40.985111, 15.088155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690781, 41.714382, 15.041438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516342, 42.042667, 15.189088>,  <39.411678, 42.239639, 15.277678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516342, 42.042667, 15.189088>,  <39.690781, 41.714382, 15.041438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516342, 42.042667, 15.189088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899136, 0.414289, 0.141137,
		-0.037092, 0.393443, -0.918601,
		-0.436096, 0.820712, 0.369125,
		39.385513, 42.288879, 15.299826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240761, 42.015514, 14.660232>,  <39.690781, 41.714382, 15.041438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240761, 42.015514, 14.660232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623596, 42.031551, 14.775034>,  <40.853298, 42.041176, 14.843915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623596, 42.031551, 14.775034>,  <40.240761, 42.015514, 14.660232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623596, 42.031551, 14.775034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269372, -0.242098, 0.932109,
		0.106858, -0.969423, -0.220909,
		0.957089, 0.040097, 0.287006,
		40.910725, 42.043579, 14.861135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522591, 41.337055, 14.864121>,  <40.240761, 42.015514, 14.660232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522591, 41.337055, 14.864121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678650, 41.661469, 15.038481>,  <40.772285, 41.856117, 15.143096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678650, 41.661469, 15.038481>,  <40.522591, 41.337055, 14.864121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678650, 41.661469, 15.038481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327278, -0.320348, 0.888969,
		0.860625, -0.489488, 0.140451,
		0.390147, 0.811035, 0.435898,
		40.795692, 41.904778, 15.169250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909416, 41.214291, 15.410430>,  <40.522591, 41.337055, 14.864121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909416, 41.214291, 15.410430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832047, 41.600670, 15.479162>,  <40.785625, 41.832497, 15.520402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832047, 41.600670, 15.479162>,  <40.909416, 41.214291, 15.410430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832047, 41.600670, 15.479162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295934, -0.224422, 0.928471,
		0.935420, 0.128736, 0.329266,
		-0.193422, 0.965951, 0.171832,
		40.774021, 41.890457, 15.530712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160137, 41.510567, 16.049709>,  <40.909416, 41.214291, 15.410430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160137, 41.510567, 16.049709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849514, 41.747120, 15.962787>,  <40.663139, 41.889053, 15.910632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849514, 41.747120, 15.962787>,  <41.160137, 41.510567, 16.049709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849514, 41.747120, 15.962787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363608, -0.138986, 0.921125,
		0.514536, 0.794322, 0.322963,
		-0.776558, 0.591384, -0.217309,
		40.616547, 41.924534, 15.897594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106533, 42.147121, 16.471704>,  <41.160137, 41.510567, 16.049709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106533, 42.147121, 16.471704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739590, 42.038612, 16.355173>,  <40.519424, 41.973507, 16.285254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739590, 42.038612, 16.355173>,  <41.106533, 42.147121, 16.471704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739590, 42.038612, 16.355173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273817, -0.101199, 0.956443,
		-0.288939, 0.957167, 0.018556,
		-0.917354, -0.271273, -0.291329,
		40.464382, 41.957230, 16.267775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783337, 42.511395, 16.993958>,  <41.106533, 42.147121, 16.471704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783337, 42.511395, 16.993958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597191, 42.184017, 16.859142>,  <40.485504, 41.987591, 16.778254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597191, 42.184017, 16.859142>,  <40.783337, 42.511395, 16.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597191, 42.184017, 16.859142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301785, -0.211252, 0.929676,
		-0.832084, 0.534349, -0.148685,
		-0.465361, -0.818440, -0.337038,
		40.457581, 41.938484, 16.758030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296856, 42.366425, 17.480566>,  <40.783337, 42.511395, 16.993958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296856, 42.366425, 17.480566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262455, 42.019146, 17.285082>,  <40.241814, 41.810780, 17.167791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262455, 42.019146, 17.285082>,  <40.296856, 42.366425, 17.480566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262455, 42.019146, 17.285082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374106, -0.426489, 0.823499,
		-0.923390, 0.253650, -0.288120,
		-0.086000, -0.868198, -0.488708,
		40.236656, 41.758686, 17.138470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524181, 42.062134, 17.674994>,  <40.296856, 42.366425, 17.480566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524181, 42.062134, 17.674994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759026, 41.748554, 17.594278>,  <39.899933, 41.560406, 17.545849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759026, 41.748554, 17.594278>,  <39.524181, 42.062134, 17.674994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759026, 41.748554, 17.594278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402352, -0.498904, 0.767599,
		-0.702433, -0.369476, -0.608338,
		0.587112, -0.783953, -0.201787,
		39.935158, 41.513367, 17.533743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070190, 41.563492, 17.598694>,  <39.524181, 42.062134, 17.674994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070190, 41.563492, 17.598694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414936, 41.373531, 17.669876>,  <39.621784, 41.259556, 17.712585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414936, 41.373531, 17.669876>,  <39.070190, 41.563492, 17.598694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414936, 41.373531, 17.669876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443185, -0.534694, 0.719507,
		-0.246541, -0.698981, -0.671299,
		0.861861, -0.474898, 0.177954,
		39.673496, 41.231060, 17.723263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822487, 40.980270, 17.983652>,  <39.070190, 41.563492, 17.598694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822487, 40.980270, 17.983652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214390, 40.969276, 18.062965>,  <39.449532, 40.962681, 18.110554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214390, 40.969276, 18.062965>,  <38.822487, 40.980270, 17.983652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214390, 40.969276, 18.062965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179216, -0.561690, 0.807704,
		0.089175, -0.826891, -0.555247,
		0.979760, -0.027482, 0.198281,
		39.508316, 40.961033, 18.122450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029041, 40.225933, 18.106485>,  <38.822487, 40.980270, 17.983652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029041, 40.225933, 18.106485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292210, 40.468933, 18.284512>,  <39.450111, 40.614731, 18.391327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292210, 40.468933, 18.284512>,  <39.029041, 40.225933, 18.106485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292210, 40.468933, 18.284512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052288, -0.552713, 0.831729,
		0.751268, -0.570486, -0.331878,
		0.657923, 0.607498, 0.445065,
		39.489586, 40.651184, 18.418032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488819, 39.794804, 18.491041>,  <39.029041, 40.225933, 18.106485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488819, 39.794804, 18.491041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494381, 40.156395, 18.661982>,  <39.497719, 40.373348, 18.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494381, 40.156395, 18.661982>,  <39.488819, 39.794804, 18.491041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494381, 40.156395, 18.661982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056164, -0.427426, 0.902304,
		0.998325, 0.011453, -0.056715,
		0.013907, 0.903978, 0.427353,
		39.498554, 40.427589, 18.790188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925201, 39.729862, 19.175137>,  <39.488819, 39.794804, 18.491041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925201, 39.729862, 19.175137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770077, 40.096157, 19.217134>,  <39.677002, 40.315933, 19.242334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770077, 40.096157, 19.217134>,  <39.925201, 39.729862, 19.175137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770077, 40.096157, 19.217134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022816, -0.123412, 0.992093,
		0.921458, 0.382346, 0.068754,
		-0.387808, 0.915741, 0.104996,
		39.653736, 40.370880, 19.248632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395447, 40.100830, 19.593431>,  <39.925201, 39.729862, 19.175137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395447, 40.100830, 19.593431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024647, 40.247128, 19.626644>,  <39.802166, 40.334908, 19.646572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024647, 40.247128, 19.626644>,  <40.395447, 40.100830, 19.593431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024647, 40.247128, 19.626644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041947, -0.321107, 0.946113,
		0.372699, 0.873567, 0.313009,
		-0.927004, 0.365746, 0.083032,
		39.746544, 40.356850, 19.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357380, 40.415096, 20.291311>,  <40.395447, 40.100830, 19.593431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357380, 40.415096, 20.291311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979214, 40.369911, 20.169050>,  <39.752312, 40.342800, 20.095694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979214, 40.369911, 20.169050>,  <40.357380, 40.415096, 20.291311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979214, 40.369911, 20.169050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258036, -0.313301, 0.913926,
		-0.198999, 0.942912, 0.267052,
		-0.945419, -0.112962, -0.305651,
		39.695587, 40.336021, 20.077354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954506, 40.563232, 20.803637>,  <40.357380, 40.415096, 20.291311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954506, 40.563232, 20.803637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708313, 40.332870, 20.588409>,  <39.560596, 40.194653, 20.459272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708313, 40.332870, 20.588409>,  <39.954506, 40.563232, 20.803637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708313, 40.332870, 20.588409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517637, -0.219442, 0.826981,
		-0.594334, 0.787517, -0.163045,
		-0.615482, -0.575901, -0.538070,
		39.523666, 40.160099, 20.426989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348076, 40.615871, 21.118303>,  <39.954506, 40.563232, 20.803637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348076, 40.615871, 21.118303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272350, 40.282249, 20.911032>,  <39.226917, 40.082077, 20.786669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272350, 40.282249, 20.911032>,  <39.348076, 40.615871, 21.118303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272350, 40.282249, 20.911032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455310, -0.392996, 0.798903,
		-0.869974, 0.387174, -0.305356,
		-0.189311, -0.834057, -0.518180,
		39.215557, 40.032032, 20.755577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638794, 40.464348, 21.180372>,  <39.348076, 40.615871, 21.118303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638794, 40.464348, 21.180372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818695, 40.115360, 21.103931>,  <38.926636, 39.905968, 21.058067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818695, 40.115360, 21.103931>,  <38.638794, 40.464348, 21.180372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818695, 40.115360, 21.103931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613791, -0.457356, 0.643496,
		-0.648833, -0.172116, -0.741210,
		0.449752, -0.872469, -0.191105,
		38.953621, 39.853619, 21.046600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018761, 40.041859, 21.007280>,  <38.638794, 40.464348, 21.180372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018761, 40.041859, 21.007280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323029, 39.790794, 21.073524>,  <38.505589, 39.640156, 21.113272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323029, 39.790794, 21.073524>,  <38.018761, 40.041859, 21.007280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323029, 39.790794, 21.073524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558090, -0.502029, 0.660683,
		-0.331542, -0.594987, -0.732168,
		0.760668, -0.627660, 0.165613,
		38.551228, 39.602497, 21.123207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701618, 39.332039, 21.166967>,  <38.018761, 40.041859, 21.007280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701618, 39.332039, 21.166967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073154, 39.304321, 21.312540>,  <38.296078, 39.287693, 21.399883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073154, 39.304321, 21.312540>,  <37.701618, 39.332039, 21.166967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073154, 39.304321, 21.312540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346576, -0.509597, 0.787525,
		0.130892, -0.857619, -0.497350,
		0.928845, -0.069289, 0.363932,
		38.351807, 39.283535, 21.421719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764076, 38.603729, 21.500536>,  <37.701618, 39.332039, 21.166967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764076, 38.603729, 21.500536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037331, 38.841816, 21.669788>,  <38.201283, 38.984669, 21.771339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037331, 38.841816, 21.669788>,  <37.764076, 38.603729, 21.500536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037331, 38.841816, 21.669788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139865, -0.462040, 0.875761,
		0.716770, -0.657447, -0.232388,
		0.683139, 0.595216, 0.423130,
		38.242271, 39.020382, 21.796728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171055, 38.171452, 21.900187>,  <37.764076, 38.603729, 21.500536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171055, 38.171452, 21.900187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211628, 38.535618, 22.060616>,  <38.235973, 38.754116, 22.156874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211628, 38.535618, 22.060616>,  <38.171055, 38.171452, 21.900187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211628, 38.535618, 22.060616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134588, -0.386888, 0.912252,
		0.985696, -0.146512, 0.083288,
		0.101433, 0.910413, 0.401073,
		38.242058, 38.808743, 22.180937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604691, 38.053558, 22.480780>,  <38.171055, 38.171452, 21.900187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604691, 38.053558, 22.480780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442738, 38.413322, 22.546679>,  <38.345566, 38.629181, 22.586218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442738, 38.413322, 22.546679>,  <38.604691, 38.053558, 22.480780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442738, 38.413322, 22.546679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251874, -0.282910, 0.925484,
		0.878996, 0.333212, 0.341081,
		-0.404878, 0.899406, 0.164749,
		38.321274, 38.683144, 22.596104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756348, 38.209023, 23.184231>,  <38.604691, 38.053558, 22.480780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756348, 38.209023, 23.184231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463787, 38.473034, 23.115633>,  <38.288250, 38.631439, 23.074474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463787, 38.473034, 23.115633>,  <38.756348, 38.209023, 23.184231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463787, 38.473034, 23.115633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311162, -0.099227, 0.945162,
		0.606818, 0.744658, 0.277951,
		-0.731403, 0.660029, -0.171497,
		38.244366, 38.671043, 23.064184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775673, 38.583847, 23.825840>,  <38.756348, 38.209023, 23.184231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775673, 38.583847, 23.825840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421238, 38.656059, 23.655071>,  <38.208576, 38.699387, 23.552610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421238, 38.656059, 23.655071>,  <38.775673, 38.583847, 23.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421238, 38.656059, 23.655071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441333, -0.047039, 0.896110,
		0.141695, 0.982444, 0.121355,
		-0.886086, 0.180532, -0.426920,
		38.155411, 38.710220, 23.526995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503029, 39.054451, 24.245913>,  <38.775673, 38.583847, 23.825840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503029, 39.054451, 24.245913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194351, 38.898705, 24.044764>,  <38.009144, 38.805256, 23.924074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194351, 38.898705, 24.044764>,  <38.503029, 39.054451, 24.245913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194351, 38.898705, 24.044764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553591, 0.022000, 0.832498,
		-0.313082, 0.920821, -0.232526,
		-0.771697, -0.389364, -0.502871,
		37.962841, 38.781895, 23.893902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910702, 39.416542, 24.467777>,  <38.503029, 39.054451, 24.245913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910702, 39.416542, 24.467777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750004, 39.083836, 24.314533>,  <37.653584, 38.884212, 24.222588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750004, 39.083836, 24.314533>,  <37.910702, 39.416542, 24.467777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750004, 39.083836, 24.314533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595613, -0.080441, 0.799234,
		-0.695590, 0.549273, -0.463092,
		-0.401746, -0.831762, -0.383108,
		37.629478, 38.834309, 24.199600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206417, 39.584908, 24.435446>,  <37.910702, 39.416542, 24.467777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206417, 39.584908, 24.435446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220131, 39.185246, 24.426458>,  <37.228359, 38.945446, 24.421066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220131, 39.185246, 24.426458>,  <37.206417, 39.584908, 24.435446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220131, 39.185246, 24.426458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571387, -0.038041, 0.819798,
		-0.819964, -0.015267, -0.572212,
		0.034283, -0.999160, -0.022469,
		37.230415, 38.885498, 24.419718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533699, 39.340267, 24.527746>,  <37.206417, 39.584908, 24.435446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533699, 39.340267, 24.527746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760113, 39.026081, 24.627865>,  <36.895962, 38.837570, 24.687935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760113, 39.026081, 24.627865>,  <36.533699, 39.340267, 24.527746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760113, 39.026081, 24.627865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572192, -0.155757, 0.805193,
		-0.593471, -0.598979, -0.537602,
		0.566029, -0.785470, 0.250294,
		36.929920, 38.790440, 24.702953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069000, 38.854179, 24.757908>,  <36.533699, 39.340267, 24.527746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069000, 38.854179, 24.757908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424683, 38.744606, 24.904482>,  <36.638092, 38.678864, 24.992426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424683, 38.744606, 24.904482>,  <36.069000, 38.854179, 24.757908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424683, 38.744606, 24.904482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414723, -0.144426, 0.898413,
		-0.193177, -0.950844, -0.242029,
		0.889206, -0.273928, 0.366437,
		36.691444, 38.662426, 25.014412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992008, 38.217705, 25.017775>,  <36.069000, 38.854179, 24.757908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992008, 38.217705, 25.017775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325684, 38.350807, 25.193682>,  <36.525890, 38.430668, 25.299225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325684, 38.350807, 25.193682>,  <35.992008, 38.217705, 25.017775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325684, 38.350807, 25.193682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346195, -0.304746, 0.887287,
		0.429270, -0.892413, -0.139017,
		0.834192, 0.332759, 0.439767,
		36.575943, 38.450634, 25.325611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235439, 37.647442, 25.435837>,  <35.992008, 38.217705, 25.017775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235439, 37.647442, 25.435837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396164, 37.975021, 25.599720>,  <36.492599, 38.171570, 25.698050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396164, 37.975021, 25.599720>,  <36.235439, 37.647442, 25.435837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396164, 37.975021, 25.599720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214804, -0.350640, 0.911543,
		0.890170, -0.454280, 0.035021,
		0.401816, 0.818952, 0.409710,
		36.516708, 38.220707, 25.722633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663258, 37.403049, 25.923754>,  <36.235439, 37.647442, 25.435837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663258, 37.403049, 25.923754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575542, 37.779007, 26.028446>,  <36.522911, 38.004581, 26.091261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575542, 37.779007, 26.028446>,  <36.663258, 37.403049, 25.923754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575542, 37.779007, 26.028446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144968, -0.296671, 0.943912,
		0.964829, 0.169049, 0.201313,
		-0.219291, 0.939898, 0.261730,
		36.509754, 38.060978, 26.106966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038456, 37.534966, 26.478067>,  <36.663258, 37.403049, 25.923754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038456, 37.534966, 26.478067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744865, 37.806080, 26.495428>,  <36.568710, 37.968746, 26.505844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744865, 37.806080, 26.495428>,  <37.038456, 37.534966, 26.478067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744865, 37.806080, 26.495428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219630, -0.297336, 0.929168,
		0.642679, 0.672459, 0.367100,
		-0.733980, 0.677783, 0.043400,
		36.524670, 38.009415, 26.508448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141567, 37.891399, 27.174662>,  <37.038456, 37.534966, 26.478067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141567, 37.891399, 27.174662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767891, 37.974941, 27.058960>,  <36.543686, 38.025066, 26.989540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767891, 37.974941, 27.058960>,  <37.141567, 37.891399, 27.174662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767891, 37.974941, 27.058960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343521, -0.307647, 0.887326,
		0.096335, 0.928296, 0.359147,
		-0.934191, 0.208855, -0.289252,
		36.487633, 38.037598, 26.972185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755566, 38.082172, 27.691475>,  <37.141567, 37.891399, 27.174662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755566, 38.082172, 27.691475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445869, 38.002808, 27.451080>,  <36.260052, 37.955189, 27.306843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445869, 38.002808, 27.451080>,  <36.755566, 38.082172, 27.691475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445869, 38.002808, 27.451080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523860, -0.331940, 0.784465,
		-0.355142, 0.922197, 0.153059,
		-0.774238, -0.198415, -0.600988,
		36.213596, 37.943283, 27.270784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141994, 38.180408, 28.160906>,  <36.755566, 38.082172, 27.691475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141994, 38.180408, 28.160906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054028, 37.932892, 27.859249>,  <36.001247, 37.784382, 27.678255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054028, 37.932892, 27.859249>,  <36.141994, 38.180408, 28.160906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054028, 37.932892, 27.859249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547107, -0.561805, 0.620523,
		-0.807657, 0.549060, -0.214996,
		-0.219918, -0.618796, -0.754141,
		35.988052, 37.747253, 27.633007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467560, 37.975861, 28.361977>,  <36.141994, 38.180408, 28.160906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467560, 37.975861, 28.361977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577488, 37.697239, 28.096863>,  <35.643444, 37.530064, 27.937794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577488, 37.697239, 28.096863>,  <35.467560, 37.975861, 28.361977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577488, 37.697239, 28.096863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508571, -0.690313, 0.514610,
		-0.815984, 0.195649, -0.543959,
		0.274819, -0.696556, -0.662786,
		35.659935, 37.488274, 27.898027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878750, 37.620953, 28.081697>,  <35.467560, 37.975861, 28.361977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878750, 37.620953, 28.081697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174458, 37.352978, 28.054365>,  <35.351883, 37.192192, 28.037966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174458, 37.352978, 28.054365>,  <34.878750, 37.620953, 28.081697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174458, 37.352978, 28.054365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579830, -0.684845, 0.441343,
		-0.342468, -0.286650, -0.894733,
		0.739265, -0.669939, -0.068329,
		35.396236, 37.151997, 28.033867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559383, 36.944691, 27.818451>,  <34.878750, 37.620953, 28.081697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559383, 36.944691, 27.818451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923645, 36.862747, 27.961977>,  <35.142200, 36.813580, 28.048092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923645, 36.862747, 27.961977>,  <34.559383, 36.944691, 27.818451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923645, 36.862747, 27.961977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370745, -0.788489, 0.490748,
		0.182386, -0.579928, -0.793989,
		0.910650, -0.204862, 0.358814,
		35.196838, 36.801289, 28.069622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778263, 36.257622, 27.620792>,  <34.559383, 36.944691, 27.818451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778263, 36.257622, 27.620792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001869, 36.329071, 27.944668>,  <35.136032, 36.371941, 28.138992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001869, 36.329071, 27.944668>,  <34.778263, 36.257622, 27.620792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001869, 36.329071, 27.944668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181102, -0.926637, 0.329462,
		0.809137, -0.330811, -0.485656,
		0.559017, 0.178627, 0.809687,
		35.169575, 36.382660, 28.187574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130650, 35.666348, 27.884369>,  <34.778263, 36.257622, 27.620792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130650, 35.666348, 27.884369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154625, 35.880028, 28.221661>,  <35.169010, 36.008236, 28.424036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154625, 35.880028, 28.221661>,  <35.130650, 35.666348, 27.884369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154625, 35.880028, 28.221661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214237, -0.818178, 0.533560,
		0.974941, -0.212631, 0.065406,
		0.059938, 0.534202, 0.843229,
		35.172607, 36.040287, 28.474628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424091, 35.083225, 28.391977>,  <35.130650, 35.666348, 27.884369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424091, 35.083225, 28.391977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308022, 35.385376, 28.626995>,  <35.238380, 35.566666, 28.768005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308022, 35.385376, 28.626995>,  <35.424091, 35.083225, 28.391977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308022, 35.385376, 28.626995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155346, -0.642998, 0.749947,
		0.944281, 0.126342, 0.303926,
		-0.290174, 0.755375, 0.587544,
		35.220970, 35.611988, 28.803259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893337, 34.944393, 28.921984>,  <35.424091, 35.083225, 28.391977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893337, 34.944393, 28.921984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563976, 35.117355, 29.068966>,  <35.366360, 35.221134, 29.157156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563976, 35.117355, 29.068966>,  <35.893337, 34.944393, 28.921984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563976, 35.117355, 29.068966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179161, -0.812537, 0.554694,
		0.538427, 0.390905, 0.746519,
		-0.823407, 0.432409, 0.367457,
		35.316956, 35.247078, 29.179203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065659, 34.230316, 28.982744>,  <35.893337, 34.944393, 28.921984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065659, 34.230316, 28.982744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373348, 34.011356, 29.114590>,  <36.557961, 33.879978, 29.193697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373348, 34.011356, 29.114590>,  <36.065659, 34.230316, 28.982744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373348, 34.011356, 29.114590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633959, 0.718335, -0.286517,
		-0.079932, 0.429356, 0.899591,
		0.769225, -0.547402, 0.329612,
		36.604115, 33.847137, 29.213472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553467, 34.682983, 29.281172>,  <36.065659, 34.230316, 28.982744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553467, 34.682983, 29.281172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763687, 34.362839, 29.165781>,  <36.889820, 34.170753, 29.096546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763687, 34.362839, 29.165781>,  <36.553467, 34.682983, 29.281172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763687, 34.362839, 29.165781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642666, 0.595669, -0.481828,
		0.557472, 0.067833, 0.827420,
		0.525552, -0.800361, -0.288475,
		36.921352, 34.122730, 29.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265400, 34.828911, 29.362728>,  <36.553467, 34.682983, 29.281172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265400, 34.828911, 29.362728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290268, 34.513588, 29.117876>,  <37.305187, 34.324394, 28.970964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290268, 34.513588, 29.117876>,  <37.265400, 34.828911, 29.362728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290268, 34.513588, 29.117876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706368, 0.468043, -0.531017,
		0.705109, -0.399376, 0.585935,
		0.062168, -0.788311, -0.612128,
		37.308918, 34.277096, 28.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989426, 34.732731, 29.166719>,  <37.265400, 34.828911, 29.362728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989426, 34.732731, 29.166719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759453, 34.565166, 28.885588>,  <37.621468, 34.464626, 28.716909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759453, 34.565166, 28.885588>,  <37.989426, 34.732731, 29.166719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759453, 34.565166, 28.885588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552215, 0.435180, -0.711109,
		0.603749, -0.796951, -0.018870,
		-0.574931, -0.418911, -0.702828,
		37.586975, 34.439495, 28.674740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450321, 34.372414, 28.770830>,  <37.989426, 34.732731, 29.166719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450321, 34.372414, 28.770830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117527, 34.424511, 28.555111>,  <37.917850, 34.455769, 28.425680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117527, 34.424511, 28.555111>,  <38.450321, 34.372414, 28.770830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117527, 34.424511, 28.555111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536466, 0.436702, -0.722147,
		0.141454, -0.890128, -0.433202,
		-0.831983, 0.130247, -0.539296,
		37.867931, 34.463585, 28.393322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589016, 34.109467, 28.111620>,  <38.450321, 34.372414, 28.770830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589016, 34.109467, 28.111620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300064, 34.377220, 28.042238>,  <38.126694, 34.537872, 28.000610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300064, 34.377220, 28.042238>,  <38.589016, 34.109467, 28.111620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300064, 34.377220, 28.042238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579022, 0.448421, -0.680921,
		-0.378020, -0.592317, -0.711521,
		-0.722382, 0.669387, -0.173453,
		38.083351, 34.578037, 27.990202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485508, 33.989395, 27.463211>,  <38.589016, 34.109467, 28.111620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485508, 33.989395, 27.463211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357590, 34.358429, 27.549536>,  <38.280838, 34.579849, 27.601332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357590, 34.358429, 27.549536>,  <38.485508, 33.989395, 27.463211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357590, 34.358429, 27.549536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414819, 0.341113, -0.843545,
		-0.851855, -0.180238, -0.491790,
		-0.319795, 0.922581, 0.215813,
		38.261650, 34.635204, 27.614279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256657, 34.130581, 26.790150>,  <38.485508, 33.989395, 27.463211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256657, 34.130581, 26.790150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248417, 34.489578, 26.966370>,  <38.243473, 34.704975, 27.072102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248417, 34.489578, 26.966370>,  <38.256657, 34.130581, 26.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248417, 34.489578, 26.966370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499037, 0.391058, -0.773328,
		-0.866336, 0.203920, -0.455937,
		-0.020601, 0.897491, 0.440552,
		38.242237, 34.758827, 27.098536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103378, 34.588764, 26.236692>,  <38.256657, 34.130581, 26.790150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103378, 34.588764, 26.236692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256496, 34.836868, 26.510553>,  <38.348366, 34.985729, 26.674870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256496, 34.836868, 26.510553>,  <38.103378, 34.588764, 26.236692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256496, 34.836868, 26.510553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350455, 0.588209, -0.728829,
		-0.854780, 0.518932, 0.007792,
		0.382796, 0.620258, 0.684651,
		38.371334, 35.022945, 26.715948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906876, 35.212345, 26.064899>,  <38.103378, 34.588764, 26.236692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906876, 35.212345, 26.064899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228958, 35.275158, 26.293629>,  <38.422207, 35.312847, 26.430866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228958, 35.275158, 26.293629>,  <37.906876, 35.212345, 26.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228958, 35.275158, 26.293629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433953, 0.501140, -0.748694,
		-0.404134, 0.850998, 0.335376,
		0.805208, 0.157036, 0.571821,
		38.470520, 35.322269, 26.465176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949036, 35.883934, 26.008566>,  <37.906876, 35.212345, 26.064899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949036, 35.883934, 26.008566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311630, 35.757786, 26.120869>,  <38.529186, 35.682098, 26.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311630, 35.757786, 26.120869>,  <37.949036, 35.883934, 26.008566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311630, 35.757786, 26.120869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409818, 0.497075, -0.764830,
		0.101645, 0.808368, 0.579836,
		0.906486, -0.315368, 0.280759,
		38.583576, 35.663174, 26.205097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410812, 36.473515, 26.132465>,  <37.949036, 35.883934, 26.008566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410812, 36.473515, 26.132465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648376, 36.158237, 26.067942>,  <38.790913, 35.969070, 26.029228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648376, 36.158237, 26.067942>,  <38.410812, 36.473515, 26.132465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648376, 36.158237, 26.067942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487269, 0.511939, -0.707451,
		0.640191, 0.341560, 0.688108,
		0.593906, -0.788197, -0.161307,
		38.826550, 35.921780, 26.019550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053989, 36.684269, 26.269171>,  <38.410812, 36.473515, 26.132465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053989, 36.684269, 26.269171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124977, 36.363476, 26.041021>,  <39.167572, 36.171001, 25.904131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124977, 36.363476, 26.041021>,  <39.053989, 36.684269, 26.269171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124977, 36.363476, 26.041021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398042, 0.588548, -0.703686,
		0.900037, -0.102147, 0.423674,
		0.177473, -0.801984, -0.570373,
		39.178219, 36.122879, 25.869909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658787, 36.790054, 25.982674>,  <39.053989, 36.684269, 26.269171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658787, 36.790054, 25.982674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492504, 36.507076, 25.754038>,  <39.392735, 36.337292, 25.616856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492504, 36.507076, 25.754038>,  <39.658787, 36.790054, 25.982674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492504, 36.507076, 25.754038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243155, 0.519141, -0.819371,
		0.876392, -0.479603, -0.043793,
		-0.415707, -0.707442, -0.571589,
		39.367790, 36.294846, 25.582561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110126, 36.488689, 25.513706>,  <39.658787, 36.790054, 25.982674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110126, 36.488689, 25.513706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765282, 36.413105, 25.325642>,  <39.558372, 36.367756, 25.212803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765282, 36.413105, 25.325642>,  <40.110126, 36.488689, 25.513706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765282, 36.413105, 25.325642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335661, 0.482120, -0.809254,
		0.379586, -0.855486, -0.352219,
		-0.862117, -0.188955, -0.470159,
		39.506645, 36.356419, 25.184593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337429, 36.389381, 24.779461>,  <40.110126, 36.488689, 25.513706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337429, 36.389381, 24.779461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946518, 36.371765, 24.696526>,  <39.711971, 36.361195, 24.646765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946518, 36.371765, 24.696526>,  <40.337429, 36.389381, 24.779461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946518, 36.371765, 24.696526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171632, 0.409595, -0.895977,
		0.124381, -0.911204, -0.392730,
		-0.977278, -0.044038, -0.207337,
		39.653336, 36.358555, 24.634325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224541, 35.960503, 24.186790>,  <40.337429, 36.389381, 24.779461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224541, 35.960503, 24.186790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903492, 36.196316, 24.223112>,  <39.710861, 36.337803, 24.244905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903492, 36.196316, 24.223112>,  <40.224541, 35.960503, 24.186790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903492, 36.196316, 24.223112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220492, 0.434681, -0.873175,
		-0.554235, -0.680811, -0.478873,
		-0.802625, 0.589533, 0.090802,
		39.662704, 36.373177, 24.250353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810390, 35.848667, 23.566256>,  <40.224541, 35.960503, 24.186790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810390, 35.848667, 23.566256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714806, 36.199963, 23.731953>,  <39.657455, 36.410740, 23.831371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714806, 36.199963, 23.731953>,  <39.810390, 35.848667, 23.566256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714806, 36.199963, 23.731953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341126, 0.475338, -0.810979,
		-0.909137, -0.052484, -0.413177,
		-0.238962, 0.878236, 0.414244,
		39.643116, 36.463432, 23.856226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391281, 36.217468, 23.051151>,  <39.810390, 35.848667, 23.566256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391281, 36.217468, 23.051151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483837, 36.514442, 23.302629>,  <39.539371, 36.692627, 23.453516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483837, 36.514442, 23.302629>,  <39.391281, 36.217468, 23.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483837, 36.514442, 23.302629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286866, 0.565431, -0.773302,
		-0.929606, 0.359283, -0.082145,
		0.231387, 0.742431, 0.628694,
		39.553253, 36.737171, 23.491238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072868, 36.878719, 22.709795>,  <39.391281, 36.217468, 23.051151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072868, 36.878719, 22.709795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376125, 36.963547, 22.956451>,  <39.558079, 37.014442, 23.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376125, 36.963547, 22.956451>,  <39.072868, 36.878719, 22.709795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376125, 36.963547, 22.956451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455914, 0.503720, -0.733764,
		-0.466221, 0.837433, 0.285207,
		0.758143, 0.212066, 0.616642,
		39.603569, 37.027168, 23.141443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079807, 37.587639, 22.779974>,  <39.072868, 36.878719, 22.709795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079807, 37.587639, 22.779974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454620, 37.463615, 22.844267>,  <39.679508, 37.389202, 22.882843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454620, 37.463615, 22.844267>,  <39.079807, 37.587639, 22.779974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454620, 37.463615, 22.844267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305770, 0.505954, -0.806545,
		0.168754, 0.804906, 0.568901,
		0.937031, -0.310060, 0.160735,
		39.735729, 37.370598, 22.892487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513359, 38.204330, 22.696100>,  <39.079807, 37.587639, 22.779974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513359, 38.204330, 22.696100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756599, 37.886787, 22.695850>,  <39.902546, 37.696262, 22.695700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756599, 37.886787, 22.695850>,  <39.513359, 38.204330, 22.696100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756599, 37.886787, 22.695850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496629, 0.381039, -0.779852,
		0.619328, 0.473922, 0.625964,
		0.608105, -0.793856, -0.000625,
		39.939030, 37.648632, 22.695663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183247, 38.452503, 22.747211>,  <39.513359, 38.204330, 22.696100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183247, 38.452503, 22.747211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218689, 38.087402, 22.587694>,  <40.239956, 37.868343, 22.491983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218689, 38.087402, 22.587694>,  <40.183247, 38.452503, 22.747211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218689, 38.087402, 22.587694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517679, 0.384247, -0.764436,
		0.850975, -0.138713, 0.506558,
		0.088606, -0.912750, -0.398793,
		40.245270, 37.813576, 22.468056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836517, 38.472443, 22.479538>,  <40.183247, 38.452503, 22.747211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836517, 38.472443, 22.479538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712029, 38.149822, 22.278494>,  <40.637337, 37.956249, 22.157867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712029, 38.149822, 22.278494>,  <40.836517, 38.472443, 22.479538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712029, 38.149822, 22.278494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476197, 0.325337, -0.816941,
		0.822423, -0.493590, 0.282826,
		-0.311220, -0.806551, -0.502611,
		40.618664, 37.907856, 22.127710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426586, 38.210304, 22.138617>,  <40.836517, 38.472443, 22.479538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426586, 38.210304, 22.138617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098896, 38.074982, 21.953394>,  <40.902283, 37.993786, 21.842260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098896, 38.074982, 21.953394>,  <41.426586, 38.210304, 22.138617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098896, 38.074982, 21.953394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353708, 0.337498, -0.872345,
		0.451404, -0.878431, -0.156822,
		-0.819222, -0.338311, -0.463056,
		40.853130, 37.973488, 21.814478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671978, 37.728909, 21.679125>,  <41.426586, 38.210304, 22.138617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671978, 37.728909, 21.679125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312500, 37.843777, 21.546526>,  <41.096813, 37.912697, 21.466967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312500, 37.843777, 21.546526>,  <41.671978, 37.728909, 21.679125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312500, 37.843777, 21.546526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391121, 0.182767, -0.902009,
		-0.198443, -0.940282, -0.276569,
		-0.898691, 0.287169, -0.331495,
		41.042892, 37.929928, 21.447077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372730, 37.205379, 21.092840>,  <41.671978, 37.728909, 21.679125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372730, 37.205379, 21.092840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201946, 37.565552, 21.059530>,  <41.099476, 37.781654, 21.039545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201946, 37.565552, 21.059530>,  <41.372730, 37.205379, 21.092840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201946, 37.565552, 21.059530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194857, 0.001687, -0.980830,
		-0.883027, -0.435000, -0.176175,
		-0.426959, 0.900429, -0.083273,
		41.073860, 37.835682, 21.034548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726868, 37.096302, 20.677183>,  <41.372730, 37.205379, 21.092840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726868, 37.096302, 20.677183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844788, 37.477455, 20.648621>,  <40.915539, 37.706146, 20.631483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844788, 37.477455, 20.648621>,  <40.726868, 37.096302, 20.677183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844788, 37.477455, 20.648621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194084, -0.132879, -0.971944,
		-0.935640, 0.272673, -0.224113,
		0.294803, 0.952886, -0.071406,
		40.933228, 37.763321, 20.627199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576916, 37.277233, 20.038946>,  <40.726868, 37.096302, 20.677183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576916, 37.277233, 20.038946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791073, 37.605312, 20.119566>,  <40.919567, 37.802162, 20.167938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791073, 37.605312, 20.119566>,  <40.576916, 37.277233, 20.038946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791073, 37.605312, 20.119566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196673, 0.111001, -0.974166,
		-0.821384, 0.561202, -0.101882,
		0.535395, 0.820202, 0.201547,
		40.951691, 37.851372, 20.180031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398869, 37.733448, 19.422729>,  <40.576916, 37.277233, 20.038946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398869, 37.733448, 19.422729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736691, 37.898533, 19.559193>,  <40.939384, 37.997585, 19.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736691, 37.898533, 19.559193>,  <40.398869, 37.733448, 19.422729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736691, 37.898533, 19.559193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262950, 0.235349, -0.935664,
		-0.466454, 0.879930, 0.090242,
		0.844558, 0.412715, 0.341157,
		40.990059, 38.022346, 19.661539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436817, 38.427696, 19.066275>,  <40.398869, 37.733448, 19.422729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436817, 38.427696, 19.066275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804737, 38.323902, 19.184006>,  <41.025490, 38.261623, 19.254644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804737, 38.323902, 19.184006>,  <40.436817, 38.427696, 19.066275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804737, 38.323902, 19.184006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374084, 0.353524, -0.857369,
		0.118424, 0.898714, 0.422242,
		0.919803, -0.259487, 0.294329,
		41.080677, 38.246056, 19.272305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894009, 38.929955, 18.740007>,  <40.436817, 38.427696, 19.066275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894009, 38.929955, 18.740007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165642, 38.663948, 18.864336>,  <41.328621, 38.504345, 18.938932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165642, 38.663948, 18.864336>,  <40.894009, 38.929955, 18.740007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165642, 38.663948, 18.864336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481270, 0.083619, -0.872575,
		0.554282, 0.742137, 0.376834,
		0.679081, -0.665011, 0.310820,
		41.369366, 38.464443, 18.957582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534866, 39.284122, 18.668348>,  <40.894009, 38.929955, 18.740007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534866, 39.284122, 18.668348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578705, 38.887325, 18.643257>,  <41.605007, 38.649246, 18.628202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578705, 38.887325, 18.643257>,  <41.534866, 39.284122, 18.668348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578705, 38.887325, 18.643257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344861, 0.097135, -0.933614,
		0.932234, 0.080685, 0.352746,
		0.109593, -0.991995, -0.062727,
		41.611584, 38.589725, 18.624439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216290, 39.254131, 18.434734>,  <41.534866, 39.284122, 18.668348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216290, 39.254131, 18.434734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006927, 38.923477, 18.352066>,  <41.881310, 38.725082, 18.302465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006927, 38.923477, 18.352066>,  <42.216290, 39.254131, 18.434734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006927, 38.923477, 18.352066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362125, 0.003757, -0.932122,
		0.771305, -0.562720, 0.297380,
		-0.523406, -0.826639, -0.206673,
		41.849907, 38.675484, 18.290064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605328, 38.715355, 18.117567>,  <42.216290, 39.254131, 18.434734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605328, 38.715355, 18.117567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228363, 38.643703, 18.004585>,  <42.002186, 38.600712, 17.936796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228363, 38.643703, 18.004585>,  <42.605328, 38.715355, 18.117567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228363, 38.643703, 18.004585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301255, -0.087720, -0.949500,
		0.145303, -0.979908, 0.136631,
		-0.942408, -0.179126, -0.282456,
		41.945641, 38.589966, 17.919849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797466, 38.381088, 17.445337>,  <42.605328, 38.715355, 18.117567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797466, 38.381088, 17.445337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403305, 38.449150, 17.447287>,  <42.166809, 38.489986, 17.448456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403305, 38.449150, 17.447287>,  <42.797466, 38.381088, 17.445337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403305, 38.449150, 17.447287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009747, 0.084990, -0.996334,
		-0.169945, -0.981746, -0.085408,
		-0.985406, 0.170155, 0.004874,
		42.107685, 38.500195, 17.448750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551483, 38.118774, 16.849716>,  <42.797466, 38.381088, 17.445337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551483, 38.118774, 16.849716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256393, 38.376728, 16.929602>,  <42.079338, 38.531498, 16.977533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256393, 38.376728, 16.929602>,  <42.551483, 38.118774, 16.849716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256393, 38.376728, 16.929602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090000, 0.199244, -0.975808,
		-0.669072, -0.737855, -0.088949,
		-0.737728, 0.644881, 0.199715,
		42.035076, 38.570190, 16.989517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119968, 37.926548, 16.391891>,  <42.551483, 38.118774, 16.849716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119968, 37.926548, 16.391891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033394, 38.303131, 16.495287>,  <41.981449, 38.529079, 16.557323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033394, 38.303131, 16.495287>,  <42.119968, 37.926548, 16.391891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033394, 38.303131, 16.495287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098764, 0.242290, -0.965164,
		-0.971288, -0.234427, 0.040542,
		-0.216438, 0.941456, 0.258487,
		41.968464, 38.585567, 16.572832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906601, 37.253548, 16.306917>,  <42.119968, 37.926548, 16.391891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906601, 37.253548, 16.306917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973766, 36.960857, 16.042677>,  <42.014065, 36.785244, 15.884133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973766, 36.960857, 16.042677>,  <41.906601, 37.253548, 16.306917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973766, 36.960857, 16.042677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363834, -0.576804, 0.731384,
		-0.916204, -0.363156, 0.169373,
		0.167912, -0.731721, -0.660598,
		42.024139, 36.741341, 15.844498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438599, 36.541290, 16.344906>,  <41.906601, 37.253548, 16.306917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438599, 36.541290, 16.344906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825691, 36.535122, 16.244303>,  <42.057945, 36.531422, 16.183941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825691, 36.535122, 16.244303>,  <41.438599, 36.541290, 16.344906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825691, 36.535122, 16.244303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189838, -0.611713, 0.767964,
		-0.165695, -0.790929, -0.589047,
		0.967733, -0.015424, -0.251506,
		42.116013, 36.530495, 16.168850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643250, 35.854336, 16.479116>,  <41.438599, 36.541290, 16.344906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643250, 35.854336, 16.479116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990433, 36.052063, 16.459976>,  <42.198742, 36.170700, 16.448492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990433, 36.052063, 16.459976>,  <41.643250, 35.854336, 16.479116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990433, 36.052063, 16.459976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339633, -0.520516, 0.783398,
		0.362341, -0.696212, -0.619675,
		0.867962, 0.494320, -0.047853,
		42.250820, 36.200359, 16.445620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123493, 35.325733, 16.652048>,  <41.643250, 35.854336, 16.479116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123493, 35.325733, 16.652048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298931, 35.676777, 16.729448>,  <42.404194, 35.887402, 16.775888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298931, 35.676777, 16.729448>,  <42.123493, 35.325733, 16.652048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298931, 35.676777, 16.729448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305604, -0.348131, 0.886234,
		0.845129, -0.329560, -0.420888,
		0.438591, 0.877608, 0.193501,
		42.430508, 35.940060, 16.787498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704376, 35.135082, 17.152950>,  <42.123493, 35.325733, 16.652048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704376, 35.135082, 17.152950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659580, 35.528156, 17.211983>,  <42.632702, 35.764000, 17.247402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659580, 35.528156, 17.211983>,  <42.704376, 35.135082, 17.152950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659580, 35.528156, 17.211983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114866, -0.134719, 0.984203,
		0.987048, 0.127175, -0.097791,
		-0.111991, 0.982689, 0.147582,
		42.625984, 35.822964, 17.256258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230766, 35.389290, 17.619333>,  <42.704376, 35.135082, 17.152950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230766, 35.389290, 17.619333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943726, 35.667332, 17.636679>,  <42.771503, 35.834156, 17.647087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943726, 35.667332, 17.636679>,  <43.230766, 35.389290, 17.619333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943726, 35.667332, 17.636679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012790, -0.075408, 0.997071,
		0.696339, 0.714942, 0.063003,
		-0.717599, 0.695105, 0.043365,
		42.728447, 35.875862, 17.649689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470291, 35.973370, 18.077145>,  <43.230766, 35.389290, 17.619333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470291, 35.973370, 18.077145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071800, 35.938698, 18.078865>,  <42.832706, 35.917892, 18.079897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071800, 35.938698, 18.078865>,  <43.470291, 35.973370, 18.077145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071800, 35.938698, 18.078865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002786, 0.017568, 0.999842,
		-0.086744, 0.996081, -0.017260,
		-0.996227, -0.086683, 0.004299,
		42.772934, 35.912693, 18.080154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287312, 36.370388, 18.782057>,  <43.470291, 35.973370, 18.077145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287312, 36.370388, 18.782057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966812, 36.177048, 18.640993>,  <42.774513, 36.061043, 18.556355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966812, 36.177048, 18.640993>,  <43.287312, 36.370388, 18.782057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966812, 36.177048, 18.640993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336196, -0.123867, 0.933611,
		-0.494941, 0.866621, -0.063251,
		-0.801252, -0.483348, -0.352661,
		42.726437, 36.032043, 18.535194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729267, 36.798100, 18.941902>,  <43.287312, 36.370388, 18.782057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729267, 36.798100, 18.941902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590973, 36.422882, 18.932606>,  <42.507996, 36.197750, 18.927029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590973, 36.422882, 18.932606>,  <42.729267, 36.798100, 18.941902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590973, 36.422882, 18.932606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295189, 0.085222, 0.951630,
		-0.890690, 0.335875, -0.306365,
		-0.345738, -0.938043, -0.023240,
		42.487251, 36.141468, 18.925634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299374, 36.785851, 19.538328>,  <42.729267, 36.798100, 18.941902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299374, 36.785851, 19.538328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332603, 36.400658, 19.435751>,  <42.352539, 36.169540, 19.374205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332603, 36.400658, 19.435751>,  <42.299374, 36.785851, 19.538328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332603, 36.400658, 19.435751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233998, -0.268989, 0.934286,
		-0.968682, -0.017604, -0.247681,
		0.083071, -0.962982, -0.256445,
		42.357525, 36.111763, 19.358818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610405, 36.534039, 19.628614>,  <42.299374, 36.785851, 19.538328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610405, 36.534039, 19.628614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898430, 36.257130, 19.647669>,  <42.071247, 36.090984, 19.659101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898430, 36.257130, 19.647669>,  <41.610405, 36.534039, 19.628614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898430, 36.257130, 19.647669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445824, -0.408935, 0.796249,
		-0.531739, -0.594589, -0.603090,
		0.720066, -0.692269, 0.047636,
		42.114449, 36.049450, 19.661961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297844, 35.903427, 19.750748>,  <41.610405, 36.534039, 19.628614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297844, 35.903427, 19.750748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671223, 35.865757, 19.889200>,  <41.895248, 35.843155, 19.972271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671223, 35.865757, 19.889200>,  <41.297844, 35.903427, 19.750748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671223, 35.865757, 19.889200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356639, -0.347249, 0.867310,
		0.038516, -0.933032, -0.357725,
		0.933448, -0.094173, 0.346130,
		41.951256, 35.837505, 19.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323265, 35.298203, 20.211760>,  <41.297844, 35.903427, 19.750748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323265, 35.298203, 20.211760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661362, 35.485237, 20.315245>,  <41.864220, 35.597458, 20.377335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661362, 35.485237, 20.315245>,  <41.323265, 35.298203, 20.211760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661362, 35.485237, 20.315245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033231, -0.437202, 0.898749,
		0.533350, -0.768257, -0.354004,
		0.845242, 0.467584, 0.258711,
		41.914936, 35.625511, 20.392859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710747, 34.782547, 20.521151>,  <41.323265, 35.298203, 20.211760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710747, 34.782547, 20.521151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876339, 35.119507, 20.659126>,  <41.975693, 35.321682, 20.741913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876339, 35.119507, 20.659126>,  <41.710747, 34.782547, 20.521151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876339, 35.119507, 20.659126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034074, -0.393012, 0.918902,
		0.909650, -0.368650, -0.191402,
		0.413977, 0.842401, 0.344942,
		42.000530, 35.372227, 20.762609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204121, 34.414986, 20.956720>,  <41.710747, 34.782547, 20.521151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204121, 34.414986, 20.956720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160553, 34.796257, 21.069571>,  <42.134415, 35.025021, 21.137280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160553, 34.796257, 21.069571>,  <42.204121, 34.414986, 20.956720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160553, 34.796257, 21.069571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067374, -0.290238, 0.954580,
		0.991765, 0.084962, 0.095831,
		-0.108916, 0.953175, 0.282124,
		42.127876, 35.082211, 21.154207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615383, 34.571800, 21.647539>,  <42.204121, 34.414986, 20.956720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615383, 34.571800, 21.647539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347393, 34.868160, 21.628792>,  <42.186600, 35.045975, 21.617544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347393, 34.868160, 21.628792>,  <42.615383, 34.571800, 21.647539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347393, 34.868160, 21.628792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184269, -0.104812, 0.977271,
		0.719149, 0.663386, 0.206747,
		-0.669978, 0.740901, -0.046867,
		42.146400, 35.090431, 21.614733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692257, 35.004150, 22.220419>,  <42.615383, 34.571800, 21.647539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692257, 35.004150, 22.220419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328575, 35.134346, 22.116562>,  <42.110367, 35.212463, 22.054247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328575, 35.134346, 22.116562>,  <42.692257, 35.004150, 22.220419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328575, 35.134346, 22.116562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256160, 0.054325, 0.965107,
		0.328233, 0.943985, 0.033984,
		-0.909200, 0.325485, -0.259642,
		42.055817, 35.231991, 22.038670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484646, 35.611511, 22.685614>,  <42.692257, 35.004150, 22.220419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484646, 35.611511, 22.685614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161552, 35.433571, 22.530867>,  <41.967697, 35.326805, 22.438019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161552, 35.433571, 22.530867>,  <42.484646, 35.611511, 22.685614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161552, 35.433571, 22.530867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293459, -0.265747, 0.918292,
		-0.511314, 0.855268, 0.084108,
		-0.807737, -0.444854, -0.386867,
		41.919231, 35.300114, 22.414806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034313, 35.926392, 23.071117>,  <42.484646, 35.611511, 22.685614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034313, 35.926392, 23.071117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844913, 35.610802, 22.914495>,  <41.731274, 35.421448, 22.820522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844913, 35.610802, 22.914495>,  <42.034313, 35.926392, 23.071117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844913, 35.610802, 22.914495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424840, -0.184839, 0.886197,
		-0.771564, 0.585961, -0.247668,
		-0.473498, -0.788977, -0.391554,
		41.702866, 35.374107, 22.797029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262054, 35.989445, 23.337299>,  <42.034313, 35.926392, 23.071117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262054, 35.989445, 23.337299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348850, 35.611710, 23.238396>,  <41.400928, 35.385067, 23.179052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348850, 35.611710, 23.238396>,  <41.262054, 35.989445, 23.337299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348850, 35.611710, 23.238396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456774, -0.322080, 0.829230,
		-0.862712, -0.066993, -0.501238,
		0.216991, -0.944339, -0.247262,
		41.413948, 35.328407, 23.164217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695343, 35.602783, 23.621637>,  <41.262054, 35.989445, 23.337299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695343, 35.602783, 23.621637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969490, 35.317062, 23.565004>,  <41.133976, 35.145630, 23.531025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969490, 35.317062, 23.565004>,  <40.695343, 35.602783, 23.621637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969490, 35.317062, 23.565004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275273, -0.434136, 0.857759,
		-0.674168, -0.548903, -0.494170,
		0.685363, -0.714305, -0.141582,
		41.175098, 35.102772, 23.522530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329708, 35.072891, 23.800842>,  <40.695343, 35.602783, 23.621637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329708, 35.072891, 23.800842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706715, 34.940804, 23.821333>,  <40.932919, 34.861553, 23.833628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706715, 34.940804, 23.821333>,  <40.329708, 35.072891, 23.800842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706715, 34.940804, 23.821333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248659, -0.590643, 0.767665,
		-0.223238, -0.736274, -0.638800,
		0.942514, -0.330215, 0.051227,
		40.989468, 34.841740, 23.836700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211288, 34.324806, 23.969086>,  <40.329708, 35.072891, 23.800842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211288, 34.324806, 23.969086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597691, 34.386883, 24.051786>,  <40.829533, 34.424129, 24.101408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597691, 34.386883, 24.051786>,  <40.211288, 34.324806, 23.969086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597691, 34.386883, 24.051786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079280, -0.583398, 0.808308,
		0.246059, -0.797222, -0.551264,
		0.966007, 0.155187, 0.206754,
		40.887493, 34.433437, 24.113813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444435, 33.620811, 24.216230>,  <40.211288, 34.324806, 23.969086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444435, 33.620811, 24.216230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683567, 33.915047, 24.343674>,  <40.827045, 34.091587, 24.420139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683567, 33.915047, 24.343674>,  <40.444435, 33.620811, 24.216230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683567, 33.915047, 24.343674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038714, -0.370497, 0.928027,
		0.800690, -0.567134, -0.193015,
		0.597827, 0.735589, 0.318609,
		40.862915, 34.135723, 24.439257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084057, 33.334328, 24.585476>,  <40.444435, 33.620811, 24.216230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084057, 33.334328, 24.585476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036343, 33.708546, 24.718460>,  <41.007713, 33.933075, 24.798250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036343, 33.708546, 24.718460>,  <41.084057, 33.334328, 24.585476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036343, 33.708546, 24.718460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066121, -0.341595, 0.937518,
		0.990656, 0.089848, 0.102606,
		-0.119284, 0.935543, 0.332462,
		41.000557, 33.989208, 24.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431808, 33.395699, 25.151875>,  <41.084057, 33.334328, 24.585476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431808, 33.395699, 25.151875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195019, 33.714729, 25.198259>,  <41.052944, 33.906147, 25.226091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195019, 33.714729, 25.198259>,  <41.431808, 33.395699, 25.151875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195019, 33.714729, 25.198259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050534, -0.106870, 0.992988,
		0.804374, 0.593680, 0.022959,
		-0.591971, 0.797573, 0.115964,
		41.017429, 33.954002, 25.233049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673634, 33.730637, 25.711935>,  <41.431808, 33.395699, 25.151875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673634, 33.730637, 25.711935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299503, 33.857323, 25.648872>,  <41.075024, 33.933334, 25.611034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299503, 33.857323, 25.648872>,  <41.673634, 33.730637, 25.711935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299503, 33.857323, 25.648872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175001, -0.026893, 0.984201,
		0.307472, 0.948139, 0.080579,
		-0.935327, 0.316715, -0.157656,
		41.018906, 33.952335, 25.601576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522396, 34.316639, 26.093126>,  <41.673634, 33.730637, 25.711935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522396, 34.316639, 26.093126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159077, 34.161045, 26.031569>,  <40.941086, 34.067688, 25.994635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159077, 34.161045, 26.031569>,  <41.522396, 34.316639, 26.093126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159077, 34.161045, 26.031569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115014, -0.121492, 0.985906,
		-0.402199, 0.913198, 0.065612,
		-0.908300, -0.388984, -0.153895,
		40.886585, 34.044350, 25.985399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007393, 34.630112, 26.596361>,  <41.522396, 34.316639, 26.093126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007393, 34.630112, 26.596361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802692, 34.310760, 26.469425>,  <40.679871, 34.119148, 26.393263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802692, 34.310760, 26.469425>,  <41.007393, 34.630112, 26.596361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802692, 34.310760, 26.469425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393652, -0.110419, 0.912604,
		-0.763642, 0.591948, -0.257775,
		-0.511750, -0.798377, -0.317342,
		40.649166, 34.071247, 26.374222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249676, 34.748188, 26.748106>,  <41.007393, 34.630112, 26.596361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249676, 34.748188, 26.748106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319019, 34.355877, 26.712261>,  <40.360626, 34.120491, 26.690754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319019, 34.355877, 26.712261>,  <40.249676, 34.748188, 26.748106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319019, 34.355877, 26.712261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389961, -0.151911, 0.908215,
		-0.904366, -0.122500, -0.408798,
		0.173357, -0.980774, -0.089613,
		40.371025, 34.061646, 26.685377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719002, 34.512657, 27.139612>,  <40.249676, 34.748188, 26.748106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719002, 34.512657, 27.139612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986462, 34.217979, 27.099243>,  <40.146938, 34.041172, 27.075022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986462, 34.217979, 27.099243>,  <39.719002, 34.512657, 27.139612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986462, 34.217979, 27.099243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236273, -0.339189, 0.910563,
		-0.705041, -0.585003, -0.400860,
		0.668650, -0.736697, -0.100922,
		40.187057, 33.996971, 27.068966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332912, 33.859318, 27.340181>,  <39.719002, 34.512657, 27.139612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332912, 33.859318, 27.340181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726688, 33.816544, 27.395964>,  <39.962952, 33.790878, 27.429434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726688, 33.816544, 27.395964>,  <39.332912, 33.859318, 27.340181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726688, 33.816544, 27.395964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175739, -0.596260, 0.783320,
		-0.000614, -0.795637, -0.605773,
		0.984437, -0.106939, 0.139458,
		40.022018, 33.784462, 27.437801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496937, 33.126141, 27.405861>,  <39.332912, 33.859318, 27.340181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496937, 33.126141, 27.405861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796616, 33.313580, 27.593102>,  <39.976425, 33.426041, 27.705446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796616, 33.313580, 27.593102>,  <39.496937, 33.126141, 27.405861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796616, 33.313580, 27.593102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114575, -0.604390, 0.788407,
		0.652358, -0.644308, -0.399120,
		0.749201, 0.468594, 0.468100,
		40.021378, 33.454159, 27.733532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866695, 32.561176, 27.765099>,  <39.496937, 33.126141, 27.405861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866695, 32.561176, 27.765099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041439, 32.871326, 27.947504>,  <40.146286, 33.057415, 28.056948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041439, 32.871326, 27.947504>,  <39.866695, 32.561176, 27.765099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041439, 32.871326, 27.947504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107730, -0.548398, 0.829249,
		0.893057, -0.313137, -0.323103,
		0.436857, 0.775374, 0.456016,
		40.172497, 33.103939, 28.084309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331837, 32.238121, 28.148478>,  <39.866695, 32.561176, 27.765099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331837, 32.238121, 28.148478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306355, 32.596439, 28.324425>,  <40.291065, 32.811432, 28.429993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306355, 32.596439, 28.324425>,  <40.331837, 32.238121, 28.148478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306355, 32.596439, 28.324425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102473, -0.444305, 0.889996,
		0.992694, 0.011621, 0.120099,
		-0.063703, 0.895800, 0.439868,
		40.287243, 32.865181, 28.456385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793415, 32.201046, 28.734745>,  <40.331837, 32.238121, 28.148478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793415, 32.201046, 28.734745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554817, 32.503845, 28.841438>,  <40.411659, 32.685524, 28.905455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554817, 32.503845, 28.841438>,  <40.793415, 32.201046, 28.734745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554817, 32.503845, 28.841438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024913, -0.349631, 0.936556,
		0.802229, 0.552007, 0.227412,
		-0.596496, 0.756998, 0.266732,
		40.375870, 32.730946, 28.921457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165440, 32.443069, 29.189392>,  <40.793415, 32.201046, 28.734745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165440, 32.443069, 29.189392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790161, 32.574600, 29.232574>,  <40.564995, 32.653519, 29.258484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790161, 32.574600, 29.232574>,  <41.165440, 32.443069, 29.189392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790161, 32.574600, 29.232574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011859, -0.281205, 0.959574,
		0.345889, 0.901553, 0.259927,
		-0.938200, 0.328824, 0.107957,
		40.508701, 32.673248, 29.264961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129475, 32.787849, 29.805656>,  <41.165440, 32.443069, 29.189392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129475, 32.787849, 29.805656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737537, 32.725258, 29.755980>,  <40.502377, 32.687702, 29.726173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737537, 32.725258, 29.755980>,  <41.129475, 32.787849, 29.805656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737537, 32.725258, 29.755980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093558, -0.189836, 0.977348,
		-0.176507, 0.969267, 0.171370,
		-0.979843, -0.156476, -0.124190,
		40.443584, 32.678314, 29.718723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767525, 33.224030, 30.394276>,  <41.129475, 32.787849, 29.805656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767525, 33.224030, 30.394276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549801, 32.920040, 30.252199>,  <40.419167, 32.737644, 30.166954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549801, 32.920040, 30.252199>,  <40.767525, 33.224030, 30.394276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549801, 32.920040, 30.252199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334941, -0.191310, 0.922613,
		-0.769115, 0.621158, -0.150414,
		-0.544313, -0.759975, -0.355191,
		40.386505, 32.692047, 30.145641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097420, 33.219795, 30.814135>,  <40.767525, 33.224030, 30.394276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097420, 33.219795, 30.814135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118614, 32.860649, 30.639307>,  <40.131332, 32.645161, 30.534410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118614, 32.860649, 30.639307>,  <40.097420, 33.219795, 30.814135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118614, 32.860649, 30.639307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317543, -0.430118, 0.845083,
		-0.946762, 0.094009, -0.307902,
		0.052989, -0.897864, -0.437071,
		40.134510, 32.591290, 30.508186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492065, 32.872646, 30.771709>,  <40.097420, 33.219795, 30.814135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492065, 32.872646, 30.771709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800556, 32.619934, 30.802858>,  <39.985649, 32.468307, 30.821548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800556, 32.619934, 30.802858>,  <39.492065, 32.872646, 30.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800556, 32.619934, 30.802858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374466, -0.351348, 0.858097,
		-0.514769, -0.690947, -0.507549,
		0.771225, -0.631781, 0.077873,
		40.031925, 32.430401, 30.826220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239655, 32.230412, 30.846605>,  <39.492065, 32.872646, 30.771709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239655, 32.230412, 30.846605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603783, 32.232189, 31.012156>,  <39.822262, 32.233253, 31.111486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603783, 32.232189, 31.012156>,  <39.239655, 32.230412, 30.846605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603783, 32.232189, 31.012156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401838, -0.230157, 0.886315,
		0.099191, -0.973143, -0.207734,
		0.910323, 0.004439, 0.413875,
		39.876881, 32.233521, 31.136318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284016, 31.662724, 31.202116>,  <39.239655, 32.230412, 30.846605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284016, 31.662724, 31.202116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553604, 31.906666, 31.368896>,  <39.715355, 32.053032, 31.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553604, 31.906666, 31.368896>,  <39.284016, 31.662724, 31.202116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553604, 31.906666, 31.368896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492212, -0.050187, 0.869027,
		0.550906, -0.790923, 0.266353,
		0.673966, 0.609854, 0.416950,
		39.755795, 32.089622, 31.493982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628380, 31.394367, 31.921116>,  <39.284016, 31.662724, 31.202116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628380, 31.394367, 31.921116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625576, 31.793678, 31.897812>,  <39.623894, 32.033264, 31.883829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625576, 31.793678, 31.897812>,  <39.628380, 31.394367, 31.921116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625576, 31.793678, 31.897812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512284, 0.046451, 0.857559,
		0.858787, 0.035854, 0.511076,
		-0.007007, 0.998277, -0.058259,
		39.623474, 32.093163, 31.880335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065266, 31.583454, 32.478241>,  <39.628380, 31.394367, 31.921116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065266, 31.583454, 32.478241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832096, 31.892229, 32.376801>,  <39.692196, 32.077496, 32.315937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832096, 31.892229, 32.376801>,  <40.065266, 31.583454, 32.478241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832096, 31.892229, 32.376801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439851, -0.037369, 0.897293,
		0.683177, 0.634600, 0.361320,
		-0.582925, 0.771937, -0.253600,
		39.657219, 32.123810, 32.300720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324902, 32.144390, 32.787846>,  <40.065266, 31.583454, 32.478241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324902, 32.144390, 32.787846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997135, 32.318462, 32.638622>,  <39.800476, 32.422905, 32.549088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997135, 32.318462, 32.638622>,  <40.324902, 32.144390, 32.787846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997135, 32.318462, 32.638622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431869, -0.040797, 0.901013,
		0.376882, 0.899419, 0.221369,
		-0.819420, 0.435179, -0.373055,
		39.751308, 32.449017, 32.526707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151981, 32.698700, 33.252968>,  <40.324902, 32.144390, 32.787846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151981, 32.698700, 33.252968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835873, 32.576992, 33.040218>,  <39.646206, 32.503967, 32.912567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835873, 32.576992, 33.040218>,  <40.151981, 32.698700, 33.252968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835873, 32.576992, 33.040218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574180, 0.064603, 0.816176,
		-0.213980, 0.950392, -0.225761,
		-0.790272, -0.304273, -0.531872,
		39.598789, 32.485710, 32.880657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565277, 33.048126, 33.621487>,  <40.151981, 32.698700, 33.252968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565277, 33.048126, 33.621487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408234, 32.764488, 33.387207>,  <39.314007, 32.594307, 33.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408234, 32.764488, 33.387207>,  <39.565277, 33.048126, 33.621487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408234, 32.764488, 33.387207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748460, -0.123748, 0.651533,
		-0.534476, 0.694172, -0.482142,
		-0.392611, -0.709093, -0.585700,
		39.290451, 32.551762, 33.211498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761299, 33.202717, 33.623394>,  <39.565277, 33.048126, 33.621487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761299, 33.202717, 33.623394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863873, 32.818020, 33.584843>,  <38.925415, 32.587200, 33.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863873, 32.818020, 33.584843>,  <38.761299, 33.202717, 33.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863873, 32.818020, 33.584843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600600, -0.236673, 0.763718,
		-0.757313, -0.137955, -0.638314,
		0.256431, -0.961746, -0.096379,
		38.940804, 32.529495, 33.555927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158352, 32.850594, 33.638901>,  <38.761299, 33.202717, 33.623394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158352, 32.850594, 33.638901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442661, 32.589767, 33.744431>,  <38.613247, 32.433270, 33.807751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442661, 32.589767, 33.744431>,  <38.158352, 32.850594, 33.638901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442661, 32.589767, 33.744431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639676, -0.443167, 0.628027,
		-0.292596, -0.615151, -0.732104,
		0.710776, -0.652067, 0.263828,
		38.655895, 32.394146, 33.823578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970459, 32.199425, 33.362164>,  <38.158352, 32.850594, 33.638901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970459, 32.199425, 33.362164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152332, 32.212746, 33.718174>,  <38.261456, 32.220737, 33.931782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152332, 32.212746, 33.718174>,  <37.970459, 32.199425, 33.362164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152332, 32.212746, 33.718174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853614, -0.268887, 0.446143,
		0.254174, -0.962596, -0.093834,
		0.454686, 0.033300, 0.890029,
		38.288738, 32.222736, 33.985184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868668, 31.536371, 33.693737>,  <37.970459, 32.199425, 33.362164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868668, 31.536371, 33.693737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926605, 31.824198, 33.965397>,  <37.961369, 31.996895, 34.128391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926605, 31.824198, 33.965397>,  <37.868668, 31.536371, 33.693737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926605, 31.824198, 33.965397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819746, -0.297118, 0.489630,
		0.554109, -0.627649, 0.546826,
		0.144844, 0.719567, 0.679149,
		37.970058, 32.040070, 34.169140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664474, 31.366076, 34.334465>,  <37.868668, 31.536371, 33.693737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664474, 31.366076, 34.334465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632507, 31.763226, 34.369816>,  <37.613327, 32.001514, 34.391026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632507, 31.763226, 34.369816>,  <37.664474, 31.366076, 34.334465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632507, 31.763226, 34.369816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779299, -0.117516, 0.615534,
		0.621535, -0.019681, 0.783139,
		-0.079917, 0.992876, 0.088378,
		37.608532, 32.061089, 34.396328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974514, 31.270845, 34.977474>,  <37.664474, 31.366076, 34.334465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974514, 31.270845, 34.977474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919598, 31.664753, 34.934807>,  <37.886646, 31.901098, 34.909206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919598, 31.664753, 34.934807>,  <37.974514, 31.270845, 34.977474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919598, 31.664753, 34.934807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822885, -0.053449, 0.565689,
		0.551373, 0.165436, 0.817691,
		-0.137290, 0.984771, -0.106665,
		37.878410, 31.960184, 34.902809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907322, 31.580120, 35.682571>,  <37.974514, 31.270845, 34.977474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907322, 31.580120, 35.682571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747154, 31.830822, 35.415184>,  <37.651054, 31.981243, 35.254753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747154, 31.830822, 35.415184>,  <37.907322, 31.580120, 35.682571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747154, 31.830822, 35.415184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848318, 0.022254, 0.529020,
		0.346441, 0.778900, 0.522775,
		-0.400420, 0.626753, -0.668464,
		37.627029, 32.018848, 35.214645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740685, 32.258984, 35.995033>,  <37.907322, 31.580120, 35.682571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740685, 32.258984, 35.995033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504982, 32.352821, 35.685776>,  <37.363560, 32.409122, 35.500221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504982, 32.352821, 35.685776>,  <37.740685, 32.258984, 35.995033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504982, 32.352821, 35.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799205, -0.028846, 0.600366,
		0.118538, 0.971666, 0.204484,
		-0.589254, 0.234591, -0.773141,
		37.328205, 32.423199, 35.453835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284718, 33.002155, 35.988659>,  <37.740685, 32.258984, 35.995033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284718, 33.002155, 35.988659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114140, 32.686825, 35.811260>,  <37.011791, 32.497627, 35.704819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114140, 32.686825, 35.811260>,  <37.284718, 33.002155, 35.988659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114140, 32.686825, 35.811260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752883, 0.037608, 0.657079,
		-0.501311, 0.614112, -0.609552,
		-0.426444, -0.788323, -0.443500,
		36.986206, 32.450329, 35.678211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467377, 33.061317, 36.098789>,  <37.284718, 33.002155, 35.988659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467377, 33.061317, 36.098789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481842, 32.681908, 35.972935>,  <36.490520, 32.454262, 35.897423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481842, 32.681908, 35.972935>,  <36.467377, 33.061317, 36.098789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481842, 32.681908, 35.972935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811912, -0.211449, 0.544140,
		-0.582659, 0.235777, -0.777765,
		0.036162, -0.948525, -0.314633,
		36.492691, 32.397350, 35.878544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914883, 32.993839, 35.683506>,  <36.467377, 33.061317, 36.098789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914883, 32.993839, 35.683506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042233, 32.641136, 35.822727>,  <36.118645, 32.429516, 35.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042233, 32.641136, 35.822727>,  <35.914883, 32.993839, 35.683506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042233, 32.641136, 35.822727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924806, -0.208250, 0.318378,
		-0.208250, -0.423246, -0.881757,
		-0.318378, 0.881757, -0.348053,
		36.137745, 32.376610, 35.927143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624989, 32.385086, 35.258984>,  <35.914883, 32.993839, 35.683506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624989, 32.385086, 35.258984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704811, 32.288715, 35.638905>,  <35.752705, 32.230892, 35.866859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704811, 32.288715, 35.638905>,  <35.624989, 32.385086, 35.258984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704811, 32.288715, 35.638905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956812, -0.257024, 0.135828,
		0.211399, -0.935891, -0.281813,
		0.199553, -0.240928, 0.949806,
		35.764679, 32.216438, 35.923847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835152, 32.326382, 35.488068>,  <35.624989, 32.385086, 35.258984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835152, 32.326382, 35.488068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006847, 32.687649, 35.490898>,  <35.109863, 32.904408, 35.492596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006847, 32.687649, 35.490898>,  <34.835152, 32.326382, 35.488068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006847, 32.687649, 35.490898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613163, 0.285642, 0.736505,
		0.663166, -0.320470, 0.676395,
		0.429234, 0.903165, 0.007072,
		35.135616, 32.958599, 35.493019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221283, 32.478138, 36.136757>,  <34.835152, 32.326382, 35.488068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221283, 32.478138, 36.136757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017811, 32.760029, 35.938927>,  <34.895729, 32.929161, 35.820229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017811, 32.760029, 35.938927>,  <35.221283, 32.478138, 36.136757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017811, 32.760029, 35.938927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585585, 0.137914, 0.798793,
		0.631137, 0.695949, 0.342522,
		-0.508680, 0.704723, -0.494580,
		34.865208, 32.971447, 35.790554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282406, 33.162300, 36.574368>,  <35.221283, 32.478138, 36.136757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282406, 33.162300, 36.574368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951122, 33.067574, 36.371197>,  <34.752354, 33.010738, 36.249294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951122, 33.067574, 36.371197>,  <35.282406, 33.162300, 36.574368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951122, 33.067574, 36.371197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542375, 0.110567, 0.832829,
		-0.141067, 0.965243, -0.220016,
		-0.828209, -0.236815, -0.507926,
		34.702660, 32.996529, 36.218819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689190, 32.572746, 36.972225>,  <35.282406, 33.162300, 36.574368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689190, 32.572746, 36.972225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569199, 32.195255, 36.916512>,  <35.497204, 31.968761, 36.883083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569199, 32.195255, 36.916512>,  <35.689190, 32.572746, 36.972225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569199, 32.195255, 36.916512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806631, -0.172981, -0.565176,
		0.509276, -0.281892, 0.813127,
		-0.299974, -0.943724, -0.139288,
		35.479206, 31.912138, 36.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173733, 32.028023, 37.142769>,  <35.689190, 32.572746, 36.972225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173733, 32.028023, 37.142769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938034, 31.940086, 36.831779>,  <35.796616, 31.887325, 36.645187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938034, 31.940086, 36.831779>,  <36.173733, 32.028023, 37.142769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938034, 31.940086, 36.831779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805877, -0.090936, -0.585059,
		0.057919, -0.971288, 0.230748,
		-0.589244, -0.219840, -0.777471,
		35.761261, 31.874134, 36.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428604, 31.492075, 36.794472>,  <36.173733, 32.028023, 37.142769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428604, 31.492075, 36.794472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200226, 31.644457, 36.503571>,  <36.063198, 31.735886, 36.329029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200226, 31.644457, 36.503571>,  <36.428604, 31.492075, 36.794472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200226, 31.644457, 36.503571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748302, -0.122945, -0.651866,
		-0.337742, -0.916384, -0.214874,
		-0.570942, 0.380953, -0.727255,
		36.028942, 31.758743, 36.285393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536072, 31.117208, 36.162132>,  <36.428604, 31.492075, 36.794472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536072, 31.117208, 36.162132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397762, 31.483732, 36.081318>,  <36.314777, 31.703648, 36.032829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397762, 31.483732, 36.081318>,  <36.536072, 31.117208, 36.162132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397762, 31.483732, 36.081318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640636, 0.073217, -0.764346,
		-0.685586, -0.393718, -0.612338,
		-0.345770, 0.916311, -0.202033,
		36.294029, 31.758625, 36.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533550, 31.166985, 35.465153>,  <36.536072, 31.117208, 36.162132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533550, 31.166985, 35.465153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511318, 31.545204, 35.593430>,  <36.497978, 31.772137, 35.670395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511318, 31.545204, 35.593430>,  <36.533550, 31.166985, 35.465153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511318, 31.545204, 35.593430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511386, 0.302823, -0.804228,
		-0.857552, 0.119302, -0.500372,
		-0.055578, 0.945550, 0.320695,
		36.494644, 31.828869, 35.689640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410404, 31.559795, 34.896759>,  <36.533550, 31.166985, 35.465153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410404, 31.559795, 34.896759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574200, 31.832277, 35.139503>,  <36.672478, 31.995768, 35.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574200, 31.832277, 35.139503>,  <36.410404, 31.559795, 34.896759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574200, 31.832277, 35.139503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591953, 0.307768, -0.744897,
		-0.694201, 0.664256, -0.277216,
		0.409484, 0.681207, 0.606861,
		36.697044, 32.036640, 35.321560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688324, 32.146233, 34.392487>,  <36.410404, 31.559795, 34.896759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688324, 32.146233, 34.392487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862621, 32.211014, 34.746639>,  <36.967201, 32.249882, 34.959129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862621, 32.211014, 34.746639>,  <36.688324, 32.146233, 34.392487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862621, 32.211014, 34.746639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855514, 0.231139, -0.463326,
		-0.279682, 0.959347, -0.037833,
		0.435746, 0.161950, 0.885380,
		36.993343, 32.259598, 35.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133118, 32.810440, 34.311878>,  <36.688324, 32.146233, 34.392487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133118, 32.810440, 34.311878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293083, 32.591301, 34.605801>,  <37.389061, 32.459816, 34.782154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293083, 32.591301, 34.605801>,  <37.133118, 32.810440, 34.311878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293083, 32.591301, 34.605801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915926, 0.209208, -0.342508,
		0.033915, 0.809998, 0.585451,
		0.399912, -0.547846, 0.734803,
		37.413055, 32.426949, 34.826241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715267, 33.163322, 34.660511>,  <37.133118, 32.810440, 34.311878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715267, 33.163322, 34.660511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747261, 32.765690, 34.689899>,  <37.766457, 32.527111, 34.707531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747261, 32.765690, 34.689899>,  <37.715267, 33.163322, 34.660511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747261, 32.765690, 34.689899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929898, 0.047868, -0.364689,
		0.359015, 0.097489, 0.928226,
		0.079985, -0.994085, 0.073469,
		37.771255, 32.467464, 34.711941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332714, 32.964214, 35.111179>,  <37.715267, 33.163322, 34.660511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332714, 32.964214, 35.111179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217758, 32.717777, 34.817829>,  <38.148785, 32.569916, 34.641819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217758, 32.717777, 34.817829>,  <38.332714, 32.964214, 35.111179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217758, 32.717777, 34.817829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885183, 0.121634, -0.449061,
		0.365867, -0.778225, 0.510400,
		-0.287388, -0.616094, -0.733373,
		38.131542, 32.532948, 34.597816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903954, 32.681664, 34.781166>,  <38.332714, 32.964214, 35.111179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903954, 32.681664, 34.781166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802368, 32.300240, 34.716377>,  <38.741417, 32.071384, 34.677505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802368, 32.300240, 34.716377>,  <38.903954, 32.681664, 34.781166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802368, 32.300240, 34.716377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511493, 0.009719, -0.859233,
		0.820900, -0.301058, 0.485269,
		-0.253963, -0.953556, -0.161967,
		38.726181, 32.014172, 34.667786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466007, 32.138077, 34.659348>,  <38.903954, 32.681664, 34.781166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466007, 32.138077, 34.659348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139065, 32.026321, 34.457806>,  <38.942898, 31.959269, 34.336880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139065, 32.026321, 34.457806>,  <39.466007, 32.138077, 34.659348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139065, 32.026321, 34.457806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487512, 0.130646, -0.863287,
		0.307018, -0.951249, 0.029421,
		-0.817357, -0.279388, -0.503856,
		38.893856, 31.942505, 34.306648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705887, 31.670362, 34.209869>,  <39.466007, 32.138077, 34.659348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705887, 31.670362, 34.209869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375992, 31.864731, 34.094147>,  <39.178055, 31.981352, 34.024715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375992, 31.864731, 34.094147>,  <39.705887, 31.670362, 34.209869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375992, 31.864731, 34.094147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399556, 0.138644, -0.906164,
		-0.400212, -0.862937, -0.308496,
		-0.824734, 0.485919, -0.289305,
		39.128571, 32.010506, 34.007355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246784, 31.313982, 33.708435>,  <39.705887, 31.670362, 34.209869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246784, 31.313982, 33.708435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223351, 31.711615, 33.671837>,  <39.209290, 31.950193, 33.649876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223351, 31.711615, 33.671837>,  <39.246784, 31.313982, 33.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223351, 31.711615, 33.671837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241940, -0.074783, -0.967405,
		-0.968521, -0.078816, -0.236126,
		-0.058589, 0.994080, -0.091498,
		39.205772, 32.009838, 33.644386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696514, 31.415588, 33.267517>,  <39.246784, 31.313982, 33.708435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696514, 31.415588, 33.267517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001175, 31.674417, 33.253777>,  <39.183971, 31.829716, 33.245533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001175, 31.674417, 33.253777>,  <38.696514, 31.415588, 33.267517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001175, 31.674417, 33.253777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314518, -0.415516, -0.853478,
		-0.566536, 0.639251, -0.519996,
		0.761653, 0.647074, -0.034349,
		39.229671, 31.868540, 33.243473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551765, 31.726007, 32.532322>,  <38.696514, 31.415588, 33.267517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551765, 31.726007, 32.532322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765976, 31.988155, 32.745373>,  <38.894505, 32.145443, 32.873203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765976, 31.988155, 32.745373>,  <38.551765, 31.726007, 32.532322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765976, 31.988155, 32.745373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474371, 0.288354, -0.831760,
		-0.698698, 0.698097, -0.156467,
		0.535531, 0.655372, 0.532630,
		38.926636, 32.184769, 32.905163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496895, 32.396839, 32.134331>,  <38.551765, 31.726007, 32.532322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496895, 32.396839, 32.134331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829098, 32.426762, 32.355118>,  <39.028419, 32.444714, 32.487591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829098, 32.426762, 32.355118>,  <38.496895, 32.396839, 32.134331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829098, 32.426762, 32.355118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535488, 0.165596, -0.828149,
		-0.153355, 0.983352, 0.097470,
		0.830503, 0.074807, 0.551968,
		39.078247, 32.449203, 32.520710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763317, 33.088371, 31.990463>,  <38.496895, 32.396839, 32.134331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763317, 33.088371, 31.990463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036163, 32.819988, 32.106762>,  <39.199871, 32.658958, 32.176540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036163, 32.819988, 32.106762>,  <38.763317, 33.088371, 31.990463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036163, 32.819988, 32.106762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556276, 0.218046, -0.801881,
		0.474636, 0.708707, 0.521972,
		0.682113, -0.670962, 0.290745,
		39.240799, 32.618698, 32.193985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422565, 33.388210, 31.720718>,  <38.763317, 33.088371, 31.990463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422565, 33.388210, 31.720718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469688, 32.999279, 31.801407>,  <39.497963, 32.765919, 31.849821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469688, 32.999279, 31.801407>,  <39.422565, 33.388210, 31.720718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469688, 32.999279, 31.801407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662108, -0.074483, -0.745698,
		0.740090, 0.221412, 0.635014,
		0.117808, -0.972332, 0.201723,
		39.505032, 32.707581, 31.861923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128883, 33.261890, 31.764681>,  <39.422565, 33.388210, 31.720718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128883, 33.261890, 31.764681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928574, 32.925442, 31.682957>,  <39.808388, 32.723572, 31.633923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928574, 32.925442, 31.682957>,  <40.128883, 33.261890, 31.764681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928574, 32.925442, 31.682957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782335, -0.338824, -0.522639,
		0.370376, -0.421565, 0.827711,
		-0.500774, -0.841119, -0.204312,
		39.778343, 32.673107, 31.621662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613571, 32.842545, 32.121719>,  <40.128883, 33.261890, 31.764681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613571, 32.842545, 32.121719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383873, 32.579185, 31.927088>,  <40.246056, 32.421169, 31.810308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383873, 32.579185, 31.927088>,  <40.613571, 32.842545, 32.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383873, 32.579185, 31.927088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590822, 0.078149, -0.803008,
		0.566724, -0.748602, 0.344119,
		-0.574241, -0.658397, -0.486579,
		40.211601, 32.381668, 31.781115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057644, 32.319778, 31.685410>,  <40.613571, 32.842545, 32.121719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057644, 32.319778, 31.685410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699123, 32.288872, 31.510742>,  <40.484013, 32.270329, 31.405941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699123, 32.288872, 31.510742>,  <41.057644, 32.319778, 31.685410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699123, 32.288872, 31.510742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439924, -0.030949, -0.897502,
		0.055838, -0.996530, 0.061734,
		-0.896298, -0.077272, -0.436669,
		40.430233, 32.265690, 31.379742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955692, 31.686790, 31.252420>,  <41.057644, 32.319778, 31.685410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955692, 31.686790, 31.252420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709259, 31.959713, 31.094990>,  <40.561401, 32.123466, 31.000532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709259, 31.959713, 31.094990>,  <40.955692, 31.686790, 31.252420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709259, 31.959713, 31.094990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503974, -0.042558, -0.862670,
		-0.605356, -0.729825, -0.317646,
		-0.616080, 0.682308, -0.393575,
		40.524433, 32.164406, 30.976917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030167, 31.343616, 31.814482>,  <40.955692, 31.686790, 31.252420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030167, 31.343616, 31.814482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376106, 31.273201, 32.002541>,  <41.583672, 31.230951, 32.115376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376106, 31.273201, 32.002541>,  <41.030167, 31.343616, 31.814482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376106, 31.273201, 32.002541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413345, 0.281789, 0.865876,
		-0.284911, -0.943188, 0.170941,
		0.864854, -0.176040, 0.470147,
		41.635563, 31.220388, 32.143585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917965, 31.068914, 32.549049>,  <41.030167, 31.343616, 31.814482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917965, 31.068914, 32.549049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272911, 31.253201, 32.556309>,  <41.485878, 31.363773, 32.560665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272911, 31.253201, 32.556309>,  <40.917965, 31.068914, 32.549049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272911, 31.253201, 32.556309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252719, 0.453072, 0.854903,
		0.385644, -0.763195, 0.518471,
		0.887362, 0.460715, 0.018149,
		41.539120, 31.391417, 32.561752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446720, 30.755825, 33.045811>,  <40.917965, 31.068914, 32.549049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446720, 30.755825, 33.045811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449108, 31.151659, 32.988285>,  <41.450539, 31.389160, 32.953770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449108, 31.151659, 32.988285>,  <41.446720, 30.755825, 33.045811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449108, 31.151659, 32.988285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187892, 0.142369, 0.971817,
		0.982172, 0.021222, 0.186785,
		0.005968, 0.989586, -0.143818,
		41.450897, 31.448534, 32.945141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603706, 30.644915, 33.794197>,  <41.446720, 30.755825, 33.045811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603706, 30.644915, 33.794197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704689, 31.030827, 33.823776>,  <41.765278, 31.262373, 33.841522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704689, 31.030827, 33.823776>,  <41.603706, 30.644915, 33.794197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704689, 31.030827, 33.823776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459263, -0.186738, 0.868451,
		0.851671, -0.185284, -0.490230,
		0.252455, 0.964779, 0.073945,
		41.780426, 31.320261, 33.845959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287090, 30.704166, 33.802673>,  <41.603706, 30.644915, 33.794197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287090, 30.704166, 33.802673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110588, 30.986340, 34.024540>,  <42.004684, 31.155643, 34.157661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110588, 30.986340, 34.024540>,  <42.287090, 30.704166, 33.802673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110588, 30.986340, 34.024540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745225, -0.056284, 0.664434,
		0.499932, 0.706539, -0.500870,
		-0.441258, 0.705433, 0.554668,
		41.978210, 31.197969, 34.190941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673923, 31.385504, 33.854679>,  <42.287090, 30.704166, 33.802673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673923, 31.385504, 33.854679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468536, 31.306780, 34.188774>,  <42.345306, 31.259546, 34.389233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468536, 31.306780, 34.188774>,  <42.673923, 31.385504, 33.854679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468536, 31.306780, 34.188774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813806, 0.197034, 0.546716,
		-0.272168, 0.960440, 0.058993,
		-0.513464, -0.196808, 0.835237,
		42.314499, 31.247738, 34.439346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752251, 31.964407, 34.339588>,  <42.673923, 31.385504, 33.854679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752251, 31.964407, 34.339588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699593, 31.613474, 34.524178>,  <42.667999, 31.402914, 34.634930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699593, 31.613474, 34.524178>,  <42.752251, 31.964407, 34.339588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699593, 31.613474, 34.524178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943948, 0.031213, 0.328614,
		-0.302708, 0.478868, 0.824047,
		-0.131642, -0.877332, 0.461475,
		42.660099, 31.350275, 34.662621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032246, 32.091652, 34.981140>,  <42.752251, 31.964407, 34.339588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032246, 32.091652, 34.981140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044437, 31.702158, 34.890881>,  <43.051754, 31.468462, 34.836723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044437, 31.702158, 34.890881>,  <43.032246, 32.091652, 34.981140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044437, 31.702158, 34.890881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825258, -0.102855, 0.555311,
		-0.563933, -0.203144, 0.800445,
		0.030479, -0.973732, -0.225650,
		43.053581, 31.410038, 34.823185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954849, 31.504519, 35.501740>,  <43.032246, 32.091652, 34.981140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954849, 31.504519, 35.501740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191692, 31.369385, 35.209087>,  <43.333797, 31.288305, 35.033497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191692, 31.369385, 35.209087>,  <42.954849, 31.504519, 35.501740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191692, 31.369385, 35.209087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778094, 0.003398, 0.628138,
		-0.209721, -0.941200, 0.264878,
		0.592103, -0.337834, -0.731629,
		43.369324, 31.268034, 34.989597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219673, 30.768877, 35.586506>,  <42.954849, 31.504519, 35.501740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219673, 30.768877, 35.586506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460014, 31.027784, 35.398880>,  <43.604218, 31.183128, 35.286304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460014, 31.027784, 35.398880>,  <43.219673, 30.768877, 35.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460014, 31.027784, 35.398880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666036, -0.080907, 0.741519,
		0.442012, -0.757955, -0.479718,
		0.600851, 0.647270, -0.469063,
		43.640270, 31.221966, 35.258160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822613, 30.448452, 35.662598>,  <43.219673, 30.768877, 35.586506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822613, 30.448452, 35.662598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895447, 30.837606, 35.605553>,  <43.939148, 31.071098, 35.571323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895447, 30.837606, 35.605553>,  <43.822613, 30.448452, 35.662598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895447, 30.837606, 35.605553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841827, -0.079292, 0.533891,
		0.508107, -0.217269, -0.833440,
		0.182083, 0.972886, -0.142614,
		43.950073, 31.129473, 35.562767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572338, 30.532669, 35.491501>,  <43.822613, 30.448452, 35.662598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572338, 30.532669, 35.491501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455639, 30.897135, 35.607887>,  <44.385620, 31.115814, 35.677719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455639, 30.897135, 35.607887>,  <44.572338, 30.532669, 35.491501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455639, 30.897135, 35.607887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750349, 0.029376, 0.660389,
		0.593176, 0.410991, -0.692263,
		-0.291750, 0.911166, 0.290962,
		44.368114, 31.170485, 35.695175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125713, 31.152300, 35.457317>,  <44.572338, 30.532669, 35.491501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125713, 31.152300, 35.457317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869976, 31.228319, 35.755341>,  <44.716534, 31.273930, 35.934155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869976, 31.228319, 35.755341>,  <45.125713, 31.152300, 35.457317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869976, 31.228319, 35.755341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766726, 0.230681, 0.599097,
		-0.058016, 0.954290, -0.293199,
		-0.639348, 0.190046, 0.745062,
		44.678173, 31.285334, 35.978859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205719, 31.871410, 35.695892>,  <45.125713, 31.152300, 35.457317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205719, 31.871410, 35.695892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066204, 31.646717, 35.995972>,  <44.982494, 31.511900, 36.176018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066204, 31.646717, 35.995972>,  <45.205719, 31.871410, 35.695892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066204, 31.646717, 35.995972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707377, 0.367302, 0.603910,
		-0.614788, 0.741311, 0.269247,
		-0.348790, -0.561735, 0.750199,
		44.961567, 31.478197, 36.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795269, 32.291222, 35.882359>,  <45.205719, 31.871410, 35.695892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795269, 32.291222, 35.882359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.421265, 32.343365, 35.750439>,  <45.196861, 32.374653, 35.671288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.421265, 32.343365, 35.750439>,  <45.795269, 32.291222, 35.882359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421265, 32.343365, 35.750439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352715, 0.245387, -0.902982,
		-0.036785, -0.960620, -0.275419,
		-0.935007, 0.130361, -0.329799,
		45.140762, 32.382473, 35.651501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077057, 32.882275, 36.215191>,  <45.795269, 32.291222, 35.882359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077057, 32.882275, 36.215191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158146, 33.105450, 36.537090>,  <46.206799, 33.239353, 36.730228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158146, 33.105450, 36.537090>,  <46.077057, 32.882275, 36.215191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158146, 33.105450, 36.537090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680251, -0.671384, 0.294111,
		0.704387, 0.487805, -0.515640,
		0.202723, 0.557933, 0.804745,
		46.218964, 33.272831, 36.778515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861420, 33.093369, 36.235401>,  <46.077057, 32.882275, 36.215191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861420, 33.093369, 36.235401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693336, 33.065464, 36.597298>,  <46.592487, 33.048721, 36.814438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693336, 33.065464, 36.597298>,  <46.861420, 33.093369, 36.235401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693336, 33.065464, 36.597298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620376, -0.749722, 0.230327,
		0.662239, 0.658066, 0.358314,
		-0.420206, -0.069758, 0.904744,
		46.567276, 33.044537, 36.868721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860641, 33.560192, 35.610931>,  <46.861420, 33.093369, 36.235401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860641, 33.560192, 35.610931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927429, 33.783997, 35.286201>,  <46.967503, 33.918282, 35.091362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927429, 33.783997, 35.286201>,  <46.860641, 33.560192, 35.610931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927429, 33.783997, 35.286201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291297, -0.814625, -0.501530,
		-0.941949, -0.152745, -0.299000,
		0.166967, 0.559514, -0.811829,
		46.977520, 33.951851, 35.042652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766396, 34.335537, 35.421391>,  <46.860641, 33.560192, 35.610931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766396, 34.335537, 35.421391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995705, 34.612923, 35.595959>,  <47.133289, 34.779354, 35.700699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995705, 34.612923, 35.595959>,  <46.766396, 34.335537, 35.421391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995705, 34.612923, 35.595959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793528, -0.337184, -0.506578,
		-0.204140, 0.636720, -0.743582,
		0.573272, 0.693466, 0.436422,
		47.167686, 34.820961, 35.726887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113728, 34.996738, 35.009361>,  <46.766396, 34.335537, 35.421391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113728, 34.996738, 35.009361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.307579, 34.802040, 35.300072>,  <47.423889, 34.685223, 35.474499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.307579, 34.802040, 35.300072>,  <47.113728, 34.996738, 35.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.307579, 34.802040, 35.300072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671311, -0.325704, -0.665777,
		0.560779, 0.810553, 0.168911,
		0.484632, -0.486746, 0.726781,
		47.452969, 34.656017, 35.518105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.786186, 35.371635, 35.042381>,  <47.113728, 34.996738, 35.009361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.786186, 35.371635, 35.042381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764591, 34.975609, 35.094307>,  <47.751637, 34.737991, 35.125462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764591, 34.975609, 35.094307>,  <47.786186, 35.371635, 35.042381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.764591, 34.975609, 35.094307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548539, -0.138031, -0.824653,
		0.834381, 0.026687, 0.550542,
		-0.053985, -0.990068, 0.129810,
		47.748394, 34.678589, 35.133251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.769325, 32.993397, 21.405756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459377, 33.223656, 21.301296>,  <38.273407, 33.361813, 21.238621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459377, 33.223656, 21.301296>,  <38.769325, 32.993397, 21.405756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459377, 33.223656, 21.301296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553921, -0.419319, 0.719266,
		0.304541, 0.701995, 0.643784,
		-0.774872, 0.575651, -0.261150,
		38.226917, 33.396351, 21.222952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698288, 33.417950, 22.004370>,  <38.769325, 32.993397, 21.405756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698288, 33.417950, 22.004370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353352, 33.418247, 21.801842>,  <38.146389, 33.418427, 21.680325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353352, 33.418247, 21.801842>,  <38.698288, 33.417950, 22.004370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353352, 33.418247, 21.801842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469774, -0.374206, 0.799551,
		-0.188876, 0.927345, 0.323043,
		-0.862345, 0.000741, -0.506321,
		38.094646, 33.418468, 21.649946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355602, 33.795918, 22.414030>,  <38.698288, 33.417950, 22.004370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355602, 33.795918, 22.414030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088955, 33.581787, 22.206551>,  <37.928967, 33.453308, 22.082064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088955, 33.581787, 22.206551>,  <38.355602, 33.795918, 22.414030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088955, 33.581787, 22.206551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425619, -0.297911, 0.854458,
		-0.611935, 0.790367, -0.029249,
		-0.666621, -0.535322, -0.518697,
		37.888969, 33.421192, 22.050941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804951, 33.792942, 22.793678>,  <38.355602, 33.795918, 22.414030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804951, 33.792942, 22.793678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697506, 33.496284, 22.547812>,  <37.633041, 33.318291, 22.400291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697506, 33.496284, 22.547812>,  <37.804951, 33.792942, 22.793678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697506, 33.496284, 22.547812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547292, -0.407609, 0.730976,
		-0.792667, 0.532750, -0.296407,
		-0.268609, -0.741642, -0.614668,
		37.616924, 33.273792, 22.363411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282749, 33.521725, 23.139868>,  <37.804951, 33.792942, 22.793678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282749, 33.521725, 23.139868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373837, 33.240414, 22.870485>,  <37.428490, 33.071625, 22.708857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373837, 33.240414, 22.870485>,  <37.282749, 33.521725, 23.139868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373837, 33.240414, 22.870485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274616, -0.709936, 0.648519,
		-0.934201, 0.037265, -0.354795,
		0.227714, -0.703279, -0.673457,
		37.442150, 33.029430, 22.668447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728554, 33.127766, 23.076490>,  <37.282749, 33.521725, 23.139868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728554, 33.127766, 23.076490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049438, 32.908958, 22.980801>,  <37.241970, 32.777672, 22.923388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049438, 32.908958, 22.980801>,  <36.728554, 33.127766, 23.076490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049438, 32.908958, 22.980801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159487, -0.582460, 0.797060,
		-0.575333, -0.601265, -0.554501,
		0.802219, -0.547011, -0.239214,
		37.290100, 32.744850, 22.909033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504887, 32.415955, 23.172102>,  <36.728554, 33.127766, 23.076490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504887, 32.415955, 23.172102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902843, 32.375591, 23.171038>,  <37.141617, 32.351376, 23.170399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902843, 32.375591, 23.171038>,  <36.504887, 32.415955, 23.172102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902843, 32.375591, 23.171038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058380, -0.596730, 0.800316,
		-0.082343, -0.796073, -0.599573,
		0.994892, -0.100903, -0.002661,
		37.201313, 32.345322, 23.170238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676971, 31.774652, 23.326660>,  <36.504887, 32.415955, 23.172102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676971, 31.774652, 23.326660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036163, 31.930603, 23.408278>,  <37.251678, 32.024174, 23.457249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036163, 31.930603, 23.408278>,  <36.676971, 31.774652, 23.326660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036163, 31.930603, 23.408278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073607, -0.590244, 0.803862,
		0.433842, -0.706831, -0.558723,
		0.897977, 0.389875, 0.204045,
		37.305557, 32.047565, 23.469492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164696, 31.162565, 23.505976>,  <36.676971, 31.774652, 23.326660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164696, 31.162565, 23.505976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267738, 31.505791, 23.683681>,  <37.329563, 31.711725, 23.790304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267738, 31.505791, 23.683681>,  <37.164696, 31.162565, 23.505976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267738, 31.505791, 23.683681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075842, -0.476316, 0.875997,
		0.963270, -0.191965, -0.187777,
		0.257602, 0.858063, 0.444262,
		37.345020, 31.763210, 23.816959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645924, 30.948637, 24.181210>,  <37.164696, 31.162565, 23.505976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645924, 30.948637, 24.181210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576374, 31.336637, 24.249165>,  <37.534645, 31.569439, 24.289938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.576374, 31.336637, 24.249165>,  <37.645924, 30.948637, 24.181210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576374, 31.336637, 24.249165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094542, -0.155277, 0.983336,
		0.980219, 0.187039, -0.064707,
		-0.173875, 0.970003, 0.169889,
		37.524212, 31.627638, 24.300131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179039, 31.227102, 24.692327>,  <37.645924, 30.948637, 24.181210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179039, 31.227102, 24.692327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851303, 31.456373, 24.697166>,  <37.654663, 31.593937, 24.700069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851303, 31.456373, 24.697166>,  <38.179039, 31.227102, 24.692327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851303, 31.456373, 24.697166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062827, -0.110744, 0.991861,
		0.569854, 0.811912, 0.126748,
		-0.819341, 0.573179, 0.012098,
		37.605499, 31.628326, 24.700796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360935, 31.578527, 25.358170>,  <38.179039, 31.227102, 24.692327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360935, 31.578527, 25.358170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971798, 31.615702, 25.273367>,  <37.738316, 31.638006, 25.222485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971798, 31.615702, 25.273367>,  <38.360935, 31.578527, 25.358170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971798, 31.615702, 25.273367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230581, -0.308324, 0.922913,
		0.020403, 0.946731, 0.321378,
		-0.972839, 0.092934, -0.212008,
		37.679947, 31.643581, 25.209764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146336, 31.937876, 25.931747>,  <38.360935, 31.578527, 25.358170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146336, 31.937876, 25.931747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797653, 31.807240, 25.785618>,  <37.588444, 31.728859, 25.697941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797653, 31.807240, 25.785618>,  <38.146336, 31.937876, 25.931747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797653, 31.807240, 25.785618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320757, -0.183319, 0.929252,
		-0.370454, 0.927218, 0.055045,
		-0.871710, -0.326589, -0.365323,
		37.536140, 31.709263, 25.676022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630863, 32.132603, 26.373796>,  <38.146336, 31.937876, 25.931747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630863, 32.132603, 26.373796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471355, 31.815041, 26.190191>,  <37.375648, 31.624502, 26.080029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.471355, 31.815041, 26.190191>,  <37.630863, 32.132603, 26.373796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471355, 31.815041, 26.190191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309017, -0.354927, 0.882347,
		-0.863416, 0.493699, -0.103796,
		-0.398774, -0.793907, -0.459011,
		37.351723, 31.576868, 26.052488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817940, 32.069054, 26.528601>,  <37.630863, 32.132603, 26.373796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817940, 32.069054, 26.528601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981651, 31.722095, 26.415380>,  <37.079876, 31.513920, 26.347448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981651, 31.722095, 26.415380>,  <36.817940, 32.069054, 26.528601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981651, 31.722095, 26.415380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259210, -0.407978, 0.875422,
		-0.874816, -0.284920, -0.391813,
		0.409276, -0.867395, -0.283051,
		37.104435, 31.461878, 26.330465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284641, 31.586042, 26.717314>,  <36.817940, 32.069054, 26.528601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284641, 31.586042, 26.717314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621201, 31.375338, 26.669022>,  <36.823135, 31.248915, 26.640045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621201, 31.375338, 26.669022>,  <36.284641, 31.586042, 26.717314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621201, 31.375338, 26.669022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166926, -0.465804, 0.869001,
		-0.513995, -0.711019, -0.479856,
		0.841395, -0.526762, -0.120733,
		36.873619, 31.217310, 26.632803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133934, 30.890535, 26.740915>,  <36.284641, 31.586042, 26.717314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133934, 30.890535, 26.740915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518341, 30.919394, 26.847675>,  <36.748985, 30.936708, 26.911732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518341, 30.919394, 26.847675>,  <36.133934, 30.890535, 26.740915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518341, 30.919394, 26.847675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228369, -0.337017, 0.913382,
		0.155847, -0.938730, -0.307404,
		0.961020, 0.072146, 0.266900,
		36.806648, 30.941036, 26.927746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220882, 30.303120, 27.110641>,  <36.133934, 30.890535, 26.740915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220882, 30.303120, 27.110641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525394, 30.537422, 27.221882>,  <36.708103, 30.678003, 27.288626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525394, 30.537422, 27.221882>,  <36.220882, 30.303120, 27.110641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525394, 30.537422, 27.221882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027151, -0.399713, 0.916238,
		0.647854, -0.705065, -0.288390,
		0.761281, 0.585758, 0.278099,
		36.753780, 30.713150, 27.305311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426907, 30.062252, 27.608370>,  <36.220882, 30.303120, 27.110641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426907, 30.062252, 27.608370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644764, 30.394024, 27.658037>,  <36.775478, 30.593086, 27.687838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644764, 30.394024, 27.658037>,  <36.426907, 30.062252, 27.608370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644764, 30.394024, 27.658037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052295, -0.181351, 0.982027,
		0.837038, -0.528358, -0.142146,
		0.544640, 0.829428, 0.124167,
		36.808155, 30.642853, 27.695288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033470, 29.854109, 28.089048>,  <36.426907, 30.062252, 27.608370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033470, 29.854109, 28.089048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985790, 30.251255, 28.090164>,  <36.957184, 30.489544, 28.090834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985790, 30.251255, 28.090164>,  <37.033470, 29.854109, 28.089048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985790, 30.251255, 28.090164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119982, -0.017195, 0.992627,
		0.985595, 0.117981, 0.121175,
		-0.119195, 0.992867, 0.002792,
		36.950031, 30.549114, 28.091002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506039, 30.103130, 28.532972>,  <37.033470, 29.854109, 28.089048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506039, 30.103130, 28.532972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214218, 30.376690, 28.530655>,  <37.039124, 30.540825, 28.529264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214218, 30.376690, 28.530655>,  <37.506039, 30.103130, 28.532972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214218, 30.376690, 28.530655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094290, -0.092186, 0.991268,
		0.677393, 0.723729, 0.131739,
		-0.729554, 0.683899, -0.005794,
		36.995354, 30.581860, 28.528917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039646, 30.592577, 28.671526>,  <37.506039, 30.103130, 28.532972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039646, 30.592577, 28.671526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342705, 30.612167, 28.931856>,  <38.524540, 30.623920, 29.088055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342705, 30.612167, 28.931856>,  <38.039646, 30.592577, 28.671526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342705, 30.612167, 28.931856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651948, -0.010045, -0.758197,
		-0.030595, 0.998750, -0.039539,
		0.757646, 0.048975, 0.650826,
		38.570000, 30.626860, 29.127104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546013, 31.158005, 28.442465>,  <38.039646, 30.592577, 28.671526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546013, 31.158005, 28.442465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762871, 30.899103, 28.656805>,  <38.892986, 30.743761, 28.785408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762871, 30.899103, 28.656805>,  <38.546013, 31.158005, 28.442465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762871, 30.899103, 28.656805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721715, 0.032083, -0.691446,
		0.430351, 0.761597, 0.484528,
		0.542149, -0.647256, 0.535849,
		38.925514, 30.704926, 28.817560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276039, 31.420790, 28.515875>,  <38.546013, 31.158005, 28.442465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276039, 31.420790, 28.515875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294647, 31.024679, 28.568321>,  <39.305813, 30.787014, 28.599789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294647, 31.024679, 28.568321>,  <39.276039, 31.420790, 28.515875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294647, 31.024679, 28.568321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767475, -0.048580, -0.639236,
		0.639388, 0.130367, 0.757751,
		0.046524, -0.990275, 0.131115,
		39.308605, 30.727596, 28.607656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001160, 31.246098, 28.608580>,  <39.276039, 31.420790, 28.515875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001160, 31.246098, 28.608580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.809696, 30.926683, 28.462578>,  <39.694817, 30.735035, 28.374977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.809696, 30.926683, 28.462578>,  <40.001160, 31.246098, 28.608580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809696, 30.926683, 28.462578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748574, -0.153912, -0.644940,
		0.458829, -0.581939, 0.671434,
		-0.478657, -0.798535, -0.365005,
		39.666100, 30.687122, 28.353077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543594, 30.710281, 28.472382>,  <40.001160, 31.246098, 28.608580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543594, 30.710281, 28.472382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230267, 30.592424, 28.253441>,  <40.042271, 30.521709, 28.122076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230267, 30.592424, 28.253441>,  <40.543594, 30.710281, 28.472382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230267, 30.592424, 28.253441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583370, -0.044354, -0.810995,
		0.214677, -0.954577, 0.206629,
		-0.783322, -0.294643, -0.547349,
		39.995270, 30.504032, 28.089235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801498, 30.116619, 28.070896>,  <40.543594, 30.710281, 28.472382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801498, 30.116619, 28.070896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.467945, 30.227688, 27.880095>,  <40.267811, 30.294329, 27.765614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.467945, 30.227688, 27.880095>,  <40.801498, 30.116619, 28.070896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467945, 30.227688, 27.880095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401584, -0.287639, -0.869479,
		-0.378637, -0.916603, 0.128348,
		-0.833885, 0.277675, -0.477004,
		40.217781, 30.310989, 27.736994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685852, 29.565260, 27.528942>,  <40.801498, 30.116619, 28.070896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685852, 29.565260, 27.528942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466137, 29.883921, 27.428045>,  <40.334309, 30.075117, 27.367508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466137, 29.883921, 27.428045>,  <40.685852, 29.565260, 27.528942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466137, 29.883921, 27.428045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322910, -0.076050, -0.943369,
		-0.770720, -0.599634, -0.215474,
		-0.549290, 0.796653, -0.252241,
		40.301350, 30.122917, 27.352373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422581, 29.447702, 26.902431>,  <40.685852, 29.565260, 27.528942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422581, 29.447702, 26.902431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379681, 29.845179, 26.889297>,  <40.353943, 30.083664, 26.881416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379681, 29.845179, 26.889297>,  <40.422581, 29.447702, 26.902431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379681, 29.845179, 26.889297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322331, 0.003509, -0.946620,
		-0.940532, -0.112106, -0.320674,
		-0.107247, 0.993690, -0.032835,
		40.347507, 30.143286, 26.879446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979076, 29.557974, 26.261209>,  <40.422581, 29.447702, 26.902431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979076, 29.557974, 26.261209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188946, 29.887251, 26.347994>,  <40.314869, 30.084816, 26.400064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188946, 29.887251, 26.347994>,  <39.979076, 29.557974, 26.261209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188946, 29.887251, 26.347994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073458, 0.210129, -0.974910,
		-0.848128, 0.527448, 0.049779,
		0.524675, 0.823192, 0.216962,
		40.346348, 30.134209, 26.413082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708267, 30.007957, 25.681753>,  <39.979076, 29.557974, 26.261209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708267, 30.007957, 25.681753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028595, 30.176588, 25.851913>,  <40.220791, 30.277767, 25.954010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028595, 30.176588, 25.851913>,  <39.708267, 30.007957, 25.681753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028595, 30.176588, 25.851913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300130, 0.332182, -0.894191,
		-0.518282, 0.843757, 0.139488,
		0.800815, 0.421578, 0.425402,
		40.268841, 30.303062, 25.979534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627811, 30.696394, 25.420782>,  <39.708267, 30.007957, 25.681753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627811, 30.696394, 25.420782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006390, 30.606226, 25.513241>,  <40.233536, 30.552126, 25.568716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006390, 30.606226, 25.513241>,  <39.627811, 30.696394, 25.420782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006390, 30.606226, 25.513241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301830, 0.363526, -0.881333,
		0.114642, 0.903900, 0.412095,
		0.946444, -0.225420, 0.231148,
		40.290321, 30.538599, 25.582584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035061, 31.305145, 25.367445>,  <39.627811, 30.696394, 25.420782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035061, 31.305145, 25.367445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304012, 31.013775, 25.314821>,  <40.465382, 30.838953, 25.283247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304012, 31.013775, 25.314821>,  <40.035061, 31.305145, 25.367445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304012, 31.013775, 25.314821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317704, 0.444521, -0.837535,
		0.668563, 0.521340, 0.530309,
		0.672374, -0.728427, -0.131558,
		40.505726, 30.795246, 25.275354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639244, 31.693913, 25.169039>,  <40.035061, 31.305145, 25.367445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639244, 31.693913, 25.169039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669807, 31.313145, 25.050373>,  <40.688145, 31.084684, 24.979174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669807, 31.313145, 25.050373>,  <40.639244, 31.693913, 25.169039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669807, 31.313145, 25.050373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345227, 0.304388, -0.887787,
		0.935404, -0.034585, 0.351885,
		0.076405, -0.951920, -0.296665,
		40.692730, 31.027569, 24.961374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178261, 31.791857, 24.877949>,  <40.639244, 31.693913, 25.169039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178261, 31.791857, 24.877949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.013332, 31.454315, 24.740599>,  <40.914375, 31.251791, 24.658190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.013332, 31.454315, 24.740599>,  <41.178261, 31.791857, 24.877949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013332, 31.454315, 24.740599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242350, 0.261728, -0.934219,
		0.878214, -0.468413, 0.096592,
		-0.412320, -0.843853, -0.343373,
		40.889637, 31.201159, 24.637587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650524, 31.500889, 24.357460>,  <41.178261, 31.791857, 24.877949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650524, 31.500889, 24.357460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.297131, 31.330456, 24.279572>,  <41.085094, 31.228195, 24.232840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.297131, 31.330456, 24.279572>,  <41.650524, 31.500889, 24.357460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297131, 31.330456, 24.279572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024702, 0.372702, -0.927622,
		0.467818, -0.824345, -0.318749,
		-0.883479, -0.426085, -0.194720,
		41.032085, 31.202631, 24.221155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735477, 31.415960, 23.673193>,  <41.650524, 31.500889, 24.357460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735477, 31.415960, 23.673193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.348553, 31.362955, 23.759687>,  <41.116398, 31.331152, 23.811584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.348553, 31.362955, 23.759687>,  <41.735477, 31.415960, 23.673193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348553, 31.362955, 23.759687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253232, 0.551014, -0.795146,
		-0.013784, -0.823908, -0.566556,
		-0.967307, -0.132510, 0.216235,
		41.058361, 31.323202, 23.824558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454346, 31.154562, 22.997364>,  <41.735477, 31.415960, 23.673193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454346, 31.154562, 22.997364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.118233, 31.268028, 23.182171>,  <40.916565, 31.336109, 23.293055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.118233, 31.268028, 23.182171>,  <41.454346, 31.154562, 22.997364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118233, 31.268028, 23.182171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226035, 0.591291, -0.774134,
		-0.492783, -0.754923, -0.432732,
		-0.840282, 0.283667, 0.462017,
		40.866150, 31.353128, 23.320776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856632, 31.109303, 22.514517>,  <41.454346, 31.154562, 22.997364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856632, 31.109303, 22.514517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.757191, 31.372244, 22.799074>,  <40.697525, 31.530008, 22.969809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.757191, 31.372244, 22.799074>,  <40.856632, 31.109303, 22.514517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757191, 31.372244, 22.799074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299967, 0.646092, -0.701844,
		-0.920985, -0.387879, 0.036561,
		-0.248608, 0.657355, 0.711392,
		40.682610, 31.569450, 23.012491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250244, 31.367779, 22.269375>,  <40.856632, 31.109303, 22.514517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250244, 31.367779, 22.269375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.374664, 31.638416, 22.536346>,  <40.449318, 31.800798, 22.696529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.374664, 31.638416, 22.536346>,  <40.250244, 31.367779, 22.269375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374664, 31.638416, 22.536346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204464, 0.733465, -0.648247,
		-0.928138, 0.065174, 0.366486,
		0.311054, 0.676596, 0.667431,
		40.467979, 31.841394, 22.736576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.742588, 32.103477, 22.474422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989025, 32.377941, 22.629145>,  <40.136887, 32.542618, 22.721977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989025, 32.377941, 22.629145>,  <39.742588, 32.103477, 22.474422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989025, 32.377941, 22.629145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119845, 0.403698, -0.907009,
		-0.778504, 0.605157, 0.166482,
		0.616091, 0.686159, 0.386805,
		40.173851, 32.583790, 22.745186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503853, 32.833817, 22.301432>,  <39.742588, 32.103477, 22.474422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503853, 32.833817, 22.301432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888893, 32.738907, 22.353727>,  <40.119919, 32.681961, 22.385105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888893, 32.738907, 22.353727>,  <39.503853, 32.833817, 22.301432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888893, 32.738907, 22.353727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209863, 0.347921, -0.913733,
		0.171322, 0.907000, 0.384706,
		0.962604, -0.237278, 0.130739,
		40.177673, 32.667725, 22.392948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879311, 33.443027, 22.266665>,  <39.503853, 32.833817, 22.301432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879311, 33.443027, 22.266665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.087135, 33.119057, 22.157793>,  <40.211830, 32.924675, 22.092470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.087135, 33.119057, 22.157793>,  <39.879311, 33.443027, 22.266665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087135, 33.119057, 22.157793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130658, 0.390113, -0.911449,
		0.844384, 0.437992, 0.308511,
		0.519562, -0.809923, -0.272178,
		40.243004, 32.876080, 22.076139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393917, 33.753433, 21.881397>,  <39.879311, 33.443027, 22.266665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393917, 33.753433, 21.881397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428017, 33.374474, 21.757996>,  <40.448475, 33.147099, 21.683954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428017, 33.374474, 21.757996>,  <40.393917, 33.753433, 21.881397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428017, 33.374474, 21.757996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220175, 0.319890, -0.921517,
		0.971728, 0.010634, 0.235863,
		0.085249, -0.947395, -0.308505,
		40.453590, 33.090256, 21.665443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992802, 33.749279, 21.455479>,  <40.393917, 33.753433, 21.881397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992802, 33.749279, 21.455479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.770920, 33.431595, 21.356253>,  <40.637791, 33.240986, 21.296717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.770920, 33.431595, 21.356253>,  <40.992802, 33.749279, 21.455479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770920, 33.431595, 21.356253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200269, 0.161932, -0.966266,
		0.807585, -0.585674, 0.069230,
		-0.554707, -0.794206, -0.248066,
		40.604507, 33.193333, 21.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265152, 33.413727, 20.869225>,  <40.992802, 33.749279, 21.455479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265152, 33.413727, 20.869225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895622, 33.261242, 20.855253>,  <40.673904, 33.169750, 20.846870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895622, 33.261242, 20.855253>,  <41.265152, 33.413727, 20.869225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895622, 33.261242, 20.855253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099459, -0.150916, -0.983530,
		0.369663, -0.912086, 0.177335,
		-0.923828, -0.381212, -0.034927,
		40.618473, 33.146877, 20.844774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319439, 32.795502, 20.494738>,  <41.265152, 33.413727, 20.869225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319439, 32.795502, 20.494738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936451, 32.910915, 20.494390>,  <40.706657, 32.980164, 20.494183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936451, 32.910915, 20.494390>,  <41.319439, 32.795502, 20.494738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936451, 32.910915, 20.494390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066560, -0.223791, -0.972362,
		-0.280753, -0.930949, 0.233478,
		-0.957469, 0.288534, -0.000866,
		40.649212, 32.997475, 20.494131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933895, 32.256863, 20.253834>,  <41.319439, 32.795502, 20.494738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933895, 32.256863, 20.253834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.718502, 32.588676, 20.194614>,  <40.589268, 32.787766, 20.159082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.718502, 32.588676, 20.194614>,  <40.933895, 32.256863, 20.253834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718502, 32.588676, 20.194614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143307, -0.082985, -0.986193,
		-0.830364, -0.552260, -0.074192,
		-0.538478, 0.829532, -0.148050,
		40.556957, 32.837536, 20.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024517, 32.348267, 19.561178>,  <40.933895, 32.256863, 20.253834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024517, 32.348267, 19.561178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798019, 32.671471, 19.626276>,  <40.662121, 32.865395, 19.665335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798019, 32.671471, 19.626276>,  <41.024517, 32.348267, 19.561178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798019, 32.671471, 19.626276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069555, 0.243589, -0.967381,
		-0.821298, -0.536453, -0.194132,
		-0.566243, 0.808011, 0.162746,
		40.628147, 32.913876, 19.675100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367390, 32.269943, 19.196510>,  <41.024517, 32.348267, 19.561178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367390, 32.269943, 19.196510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431465, 32.661762, 19.245211>,  <40.469910, 32.896854, 19.274431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431465, 32.661762, 19.245211>,  <40.367390, 32.269943, 19.196510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431465, 32.661762, 19.245211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073371, 0.134820, -0.988150,
		-0.984356, 0.149356, 0.093467,
		0.160188, 0.979549, 0.121752,
		40.479523, 32.955627, 19.281736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879860, 32.675724, 18.878134>,  <40.367390, 32.269943, 19.196510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879860, 32.675724, 18.878134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207199, 32.905369, 18.888786>,  <40.403603, 33.043156, 18.895178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207199, 32.905369, 18.888786>,  <39.879860, 32.675724, 18.878134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207199, 32.905369, 18.888786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000003, 0.046338, -0.998926,
		-0.574729, 0.817465, 0.037922,
		0.818344, 0.574111, 0.026630,
		40.452702, 33.077602, 18.896774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773529, 33.026859, 18.300396>,  <39.879860, 32.675724, 18.878134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773529, 33.026859, 18.300396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151493, 33.141705, 18.363266>,  <40.378273, 33.210609, 18.400988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151493, 33.141705, 18.363266>,  <39.773529, 33.026859, 18.300396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151493, 33.141705, 18.363266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061329, 0.316381, -0.946648,
		-0.321519, 0.904141, 0.281345,
		0.944915, 0.287111, 0.157173,
		40.434967, 33.227837, 18.410418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805855, 33.659187, 17.935482>,  <39.773529, 33.026859, 18.300396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805855, 33.659187, 17.935482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192825, 33.575771, 17.992889>,  <40.425007, 33.525723, 18.027334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192825, 33.575771, 17.992889>,  <39.805855, 33.659187, 17.935482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192825, 33.575771, 17.992889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236698, 0.544065, -0.804964,
		0.089781, 0.812714, 0.575704,
		0.967426, -0.208539, 0.143521,
		40.483055, 33.513210, 18.035946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063396, 34.311909, 17.941029>,  <39.805855, 33.659187, 17.935482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063396, 34.311909, 17.941029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.370239, 34.071125, 17.852314>,  <40.554344, 33.926655, 17.799086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.370239, 34.071125, 17.852314>,  <40.063396, 34.311909, 17.941029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370239, 34.071125, 17.852314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132342, 0.486777, -0.863443,
		0.627718, 0.633003, 0.453076,
		0.767109, -0.601960, -0.221785,
		40.600372, 33.890537, 17.785778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655994, 34.714344, 17.831331>,  <40.063396, 34.311909, 17.941029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655994, 34.714344, 17.831331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.724850, 34.372181, 17.635923>,  <40.766163, 34.166885, 17.518679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.724850, 34.372181, 17.635923>,  <40.655994, 34.714344, 17.831331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724850, 34.372181, 17.635923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333726, 0.517238, -0.788094,
		0.926820, -0.027374, 0.374506,
		0.172135, -0.855404, -0.488522,
		40.776489, 34.115559, 17.489367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267483, 34.735420, 17.513828>,  <40.655994, 34.714344, 17.831331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267483, 34.735420, 17.513828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067444, 34.456631, 17.308254>,  <40.947422, 34.289356, 17.184910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067444, 34.456631, 17.308254>,  <41.267483, 34.735420, 17.513828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067444, 34.456631, 17.308254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249923, 0.452059, -0.856260,
		0.829121, -0.556656, -0.051882,
		-0.500096, -0.696977, -0.513933,
		40.917416, 34.247540, 17.154074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616489, 34.736534, 16.941719>,  <41.267483, 34.735420, 17.513828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616489, 34.736534, 16.941719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269779, 34.569332, 16.832926>,  <41.061752, 34.469009, 16.767649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269779, 34.569332, 16.832926>,  <41.616489, 34.736534, 16.941719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269779, 34.569332, 16.832926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173515, 0.258527, -0.950293,
		0.467546, -0.870880, -0.151553,
		-0.866772, -0.418009, -0.271985,
		41.009747, 34.443928, 16.751331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759377, 34.397114, 16.287445>,  <41.616489, 34.736534, 16.941719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759377, 34.397114, 16.287445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.360340, 34.424313, 16.292824>,  <41.120918, 34.440632, 16.296051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.360340, 34.424313, 16.292824>,  <41.759377, 34.397114, 16.287445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360340, 34.424313, 16.292824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001154, 0.210270, -0.977643,
		-0.069305, -0.975276, -0.209843,
		-0.997595, 0.067998, 0.013447,
		41.061062, 34.444714, 16.296858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511204, 34.205971, 15.656035>,  <41.759377, 34.397114, 16.287445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511204, 34.205971, 15.656035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195854, 34.414253, 15.787077>,  <41.006645, 34.539223, 15.865702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195854, 34.414253, 15.787077>,  <41.511204, 34.205971, 15.656035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195854, 34.414253, 15.787077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156057, 0.345829, -0.925229,
		-0.595072, -0.780553, -0.191382,
		-0.788375, 0.520711, 0.327604,
		40.959343, 34.570465, 15.885358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963783, 34.054153, 15.207560>,  <41.511204, 34.205971, 15.656035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963783, 34.054153, 15.207560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852367, 34.397465, 15.379964>,  <40.785519, 34.603451, 15.483407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852367, 34.397465, 15.379964>,  <40.963783, 34.054153, 15.207560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852367, 34.397465, 15.379964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180720, 0.393918, -0.901204,
		-0.943269, -0.328912, 0.045387,
		-0.278538, 0.858281, 0.431011,
		40.768806, 34.654949, 15.509267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280762, 34.152023, 15.035918>,  <40.963783, 34.054153, 15.207560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280762, 34.152023, 15.035918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.414909, 34.515488, 15.135404>,  <40.495399, 34.733566, 15.195095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.414909, 34.515488, 15.135404>,  <40.280762, 34.152023, 15.035918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414909, 34.515488, 15.135404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248279, 0.339919, -0.907090,
		-0.908782, 0.242459, 0.339600,
		0.335368, 0.908663, 0.248715,
		40.515518, 34.788086, 15.210018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804611, 34.730423, 14.793372>,  <40.280762, 34.152023, 15.035918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804611, 34.730423, 14.793372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.171219, 34.885681, 14.832003>,  <40.391186, 34.978836, 14.855181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.171219, 34.885681, 14.832003>,  <39.804611, 34.730423, 14.793372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171219, 34.885681, 14.832003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114912, 0.486787, -0.865929,
		-0.383122, 0.782546, 0.490754,
		0.916522, 0.388150, 0.096575,
		40.446175, 35.002125, 14.860975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811192, 35.039562, 14.202191>,  <39.804611, 34.730423, 14.793372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811192, 35.039562, 14.202191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115334, 35.214275, 14.394476>,  <40.297817, 35.319103, 14.509847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115334, 35.214275, 14.394476>,  <39.811192, 35.039562, 14.202191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115334, 35.214275, 14.394476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245832, 0.491525, -0.835446,
		-0.601189, 0.753409, 0.266358,
		0.760354, 0.436782, 0.480711,
		40.343441, 35.345310, 14.538690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867088, 35.755951, 14.065063>,  <39.811192, 35.039562, 14.202191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867088, 35.755951, 14.065063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236401, 35.653893, 14.179927>,  <40.457989, 35.592659, 14.248845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236401, 35.653893, 14.179927>,  <39.867088, 35.755951, 14.065063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236401, 35.653893, 14.179927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382630, 0.544773, -0.746202,
		0.033953, 0.798827, 0.600603,
		0.923278, -0.255145, 0.287158,
		40.513382, 35.577351, 14.266074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302723, 35.905701, 13.554398>,  <39.867088, 35.755951, 14.065063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302723, 35.905701, 13.554398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929585, 35.886517, 13.697221>,  <38.705700, 35.875008, 13.782915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929585, 35.886517, 13.697221>,  <39.302723, 35.905701, 13.554398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929585, 35.886517, 13.697221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356541, 0.019242, 0.934082,
		-0.051669, 0.998664, -0.000850,
		-0.932850, -0.047960, 0.357059,
		38.649731, 35.872128, 13.804338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115101, 36.505192, 13.979197>,  <39.302723, 35.905701, 13.554398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115101, 36.505192, 13.979197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878834, 36.206806, 14.102258>,  <38.737072, 36.027775, 14.176094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878834, 36.206806, 14.102258>,  <39.115101, 36.505192, 13.979197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878834, 36.206806, 14.102258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115252, 0.299368, 0.947151,
		-0.798638, 0.594913, -0.090855,
		-0.590672, -0.745960, 0.307652,
		38.701633, 35.983017, 14.194553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663906, 36.822552, 14.435762>,  <39.115101, 36.505192, 13.979197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663906, 36.822552, 14.435762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637123, 36.439034, 14.546197>,  <38.621056, 36.208923, 14.612458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637123, 36.439034, 14.546197>,  <38.663906, 36.822552, 14.435762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637123, 36.439034, 14.546197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026260, 0.278306, 0.960134,
		-0.997410, 0.057035, -0.043812,
		-0.066954, -0.958798, 0.276087,
		38.617039, 36.151394, 14.629023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125778, 36.821533, 14.990932>,  <38.663906, 36.822552, 14.435762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125778, 36.821533, 14.990932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337257, 36.482334, 15.005793>,  <38.464146, 36.278816, 15.014709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337257, 36.482334, 15.005793>,  <38.125778, 36.821533, 14.990932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337257, 36.482334, 15.005793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005790, 0.040166, 0.999176,
		-0.848793, -0.528474, 0.016326,
		0.528694, -0.847999, 0.037153,
		38.495865, 36.227936, 15.016938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787601, 36.604362, 15.527330>,  <38.125778, 36.821533, 14.990932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787601, 36.604362, 15.527330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113968, 36.373100, 15.529307>,  <38.309788, 36.234344, 15.530494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113968, 36.373100, 15.529307>,  <37.787601, 36.604362, 15.527330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113968, 36.373100, 15.529307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067569, -0.086862, 0.993926,
		-0.574211, -0.811293, -0.109937,
		0.815915, -0.578152, 0.004941,
		38.358742, 36.199654, 15.530789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604813, 35.992115, 15.835752>,  <37.787601, 36.604362, 15.527330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604813, 35.992115, 15.835752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000824, 36.011318, 15.888729>,  <38.238430, 36.022839, 15.920516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000824, 36.011318, 15.888729>,  <37.604813, 35.992115, 15.835752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000824, 36.011318, 15.888729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118642, -0.222804, 0.967617,
		0.075959, -0.973681, -0.214886,
		0.990028, 0.048004, 0.132444,
		38.297832, 36.025719, 15.928462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777000, 35.436836, 16.271215>,  <37.604813, 35.992115, 15.835752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777000, 35.436836, 16.271215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112106, 35.653057, 16.302095>,  <38.313171, 35.782787, 16.320623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112106, 35.653057, 16.302095>,  <37.777000, 35.436836, 16.271215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112106, 35.653057, 16.302095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044321, -0.208233, 0.977074,
		0.544231, -0.815136, -0.198408,
		0.837764, 0.540547, 0.077199,
		38.363434, 35.815220, 16.325254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225086, 34.941914, 16.563862>,  <37.777000, 35.436836, 16.271215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225086, 34.941914, 16.563862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339138, 35.319809, 16.628578>,  <38.407570, 35.546547, 16.667408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.339138, 35.319809, 16.628578>,  <38.225086, 34.941914, 16.563862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339138, 35.319809, 16.628578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148005, -0.210170, 0.966397,
		0.946994, -0.251600, -0.199750,
		0.285128, 0.944736, 0.161792,
		38.424675, 35.603230, 16.677116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888641, 34.904034, 16.799053>,  <38.225086, 34.941914, 16.563862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888641, 34.904034, 16.799053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731987, 35.254269, 16.912165>,  <38.637997, 35.464409, 16.980032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731987, 35.254269, 16.912165>,  <38.888641, 34.904034, 16.799053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731987, 35.254269, 16.912165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194005, -0.221840, 0.955588,
		0.899436, 0.429101, -0.082989,
		-0.391633, 0.875591, 0.282779,
		38.614498, 35.516945, 16.996998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308064, 34.999916, 17.367762>,  <38.888641, 34.904034, 16.799053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308064, 34.999916, 17.367762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994678, 35.245590, 17.405640>,  <38.806648, 35.392994, 17.428366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994678, 35.245590, 17.405640>,  <39.308064, 34.999916, 17.367762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994678, 35.245590, 17.405640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037618, -0.198972, 0.979283,
		0.620301, 0.763668, 0.178992,
		-0.783462, 0.614183, 0.094695,
		38.759640, 35.429844, 17.434048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543980, 35.480789, 17.841148>,  <39.308064, 34.999916, 17.367762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543980, 35.480789, 17.841148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144348, 35.495590, 17.849813>,  <38.904568, 35.504471, 17.855013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144348, 35.495590, 17.849813>,  <39.543980, 35.480789, 17.841148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144348, 35.495590, 17.849813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014247, -0.190064, 0.981668,
		0.040442, 0.981074, 0.189362,
		-0.999080, 0.037002, 0.021664,
		38.844624, 35.506691, 17.856312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455467, 35.576778, 18.491476>,  <39.543980, 35.480789, 17.841148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455467, 35.576778, 18.491476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.073746, 35.532906, 18.380287>,  <38.844711, 35.506584, 18.313574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.073746, 35.532906, 18.380287>,  <39.455467, 35.576778, 18.491476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073746, 35.532906, 18.380287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216755, -0.386271, 0.896556,
		-0.205705, 0.915841, 0.344848,
		-0.954307, -0.109678, -0.277971,
		38.787453, 35.500004, 18.296896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016838, 35.924423, 19.107351>,  <39.455467, 35.576778, 18.491476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016838, 35.924423, 19.107351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.811272, 35.660397, 18.888189>,  <38.687931, 35.501980, 18.756693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.811272, 35.660397, 18.888189>,  <39.016838, 35.924423, 19.107351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811272, 35.660397, 18.888189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169197, -0.548163, 0.819079,
		-0.840989, 0.513642, 0.170029,
		-0.513917, -0.660068, -0.547905,
		38.657097, 35.462376, 18.723818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383141, 35.845249, 19.405241>,  <39.016838, 35.924423, 19.107351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383141, 35.845249, 19.405241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.438129, 35.513287, 19.188959>,  <38.471123, 35.314110, 19.059191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.438129, 35.513287, 19.188959>,  <38.383141, 35.845249, 19.405241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438129, 35.513287, 19.188959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210613, -0.557897, 0.802741,
		-0.967855, 0.003522, -0.251486,
		0.137475, -0.829903, -0.540705,
		38.479370, 35.264317, 19.026747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869106, 35.428360, 19.613733>,  <38.383141, 35.845249, 19.405241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869106, 35.428360, 19.613733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136261, 35.175957, 19.455870>,  <38.296555, 35.024513, 19.361151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136261, 35.175957, 19.455870>,  <37.869106, 35.428360, 19.613733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136261, 35.175957, 19.455870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222736, -0.675429, 0.702982,
		-0.710155, -0.381605, -0.591657,
		0.667884, -0.631009, -0.394663,
		38.336628, 34.986652, 19.337471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607452, 34.928398, 19.826214>,  <37.869106, 35.428360, 19.613733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607452, 34.928398, 19.826214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977104, 34.809834, 19.729776>,  <38.198895, 34.738693, 19.671913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977104, 34.809834, 19.729776>,  <37.607452, 34.928398, 19.826214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977104, 34.809834, 19.729776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044101, -0.709535, 0.703289,
		-0.379529, -0.639297, -0.668773,
		0.924128, -0.296412, -0.241095,
		38.254341, 34.720909, 19.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611595, 34.147366, 19.642761>,  <37.607452, 34.928398, 19.826214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611595, 34.147366, 19.642761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984287, 34.250488, 19.745071>,  <38.207901, 34.312363, 19.806458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984287, 34.250488, 19.745071>,  <37.611595, 34.147366, 19.642761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984287, 34.250488, 19.745071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029428, -0.648397, 0.760733,
		0.361964, -0.716323, -0.596543,
		0.931728, 0.257803, 0.255777,
		38.263805, 34.327827, 19.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942963, 33.598572, 19.648746>,  <37.611595, 34.147366, 19.642761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942963, 33.598572, 19.648746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150200, 33.828613, 19.901993>,  <38.274540, 33.966640, 20.053940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150200, 33.828613, 19.901993>,  <37.942963, 33.598572, 19.648746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150200, 33.828613, 19.901993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122127, -0.682878, 0.720252,
		0.846562, -0.450476, -0.283557,
		0.518091, 0.575108, 0.633114,
		38.305626, 34.001144, 20.091927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323917, 33.117985, 19.992384>,  <37.942963, 33.598572, 19.648746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323917, 33.117985, 19.992384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364445, 33.444248, 20.220224>,  <38.388760, 33.640007, 20.356928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364445, 33.444248, 20.220224>,  <38.323917, 33.117985, 19.992384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364445, 33.444248, 20.220224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251768, -0.532886, 0.807865,
		0.962470, -0.225257, 0.151366,
		0.101317, 0.815654, 0.569599,
		38.394840, 33.688946, 20.391104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603436, 32.872604, 20.645016>,  <38.323917, 33.117985, 19.992384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603436, 32.872604, 20.645016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442162, 33.228180, 20.731955>,  <38.345398, 33.441525, 20.784117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442162, 33.228180, 20.731955>,  <38.603436, 32.872604, 20.645016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442162, 33.228180, 20.731955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219863, -0.324644, 0.919927,
		0.888315, 0.323112, 0.326335,
		-0.403182, 0.888935, 0.217346,
		38.321205, 33.494862, 20.797157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.058174, 29.796371, 24.749763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954437, 30.176929, 24.816206>,  <40.892197, 30.405264, 24.856071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954437, 30.176929, 24.816206>,  <41.058174, 29.796371, 24.749763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954437, 30.176929, 24.816206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175247, -0.122780, 0.976839,
		0.949753, 0.282442, -0.134887,
		-0.259339, 0.951394, 0.166108,
		40.876637, 30.462347, 24.866037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466984, 29.960716, 25.284943>,  <41.058174, 29.796371, 24.749763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466984, 29.960716, 25.284943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165997, 30.224152, 25.287884>,  <40.985405, 30.382214, 25.289648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165997, 30.224152, 25.287884>,  <41.466984, 29.960716, 25.284943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165997, 30.224152, 25.287884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058991, -0.078508, 0.995167,
		0.655982, 0.748397, 0.097926,
		-0.752468, 0.658588, 0.007351,
		40.940258, 30.421728, 25.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507412, 30.212727, 25.958214>,  <41.466984, 29.960716, 25.284943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507412, 30.212727, 25.958214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148499, 30.359802, 25.860491>,  <40.933151, 30.448048, 25.801857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148499, 30.359802, 25.860491>,  <41.507412, 30.212727, 25.958214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148499, 30.359802, 25.860491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269835, -0.018818, 0.962723,
		0.349385, 0.929758, 0.116101,
		-0.897284, 0.367689, -0.244306,
		40.879314, 30.470108, 25.787199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448898, 30.772310, 26.417915>,  <41.507412, 30.212727, 25.958214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448898, 30.772310, 26.417915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091213, 30.653179, 26.284241>,  <40.876602, 30.581701, 26.204035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091213, 30.653179, 26.284241>,  <41.448898, 30.772310, 26.417915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091213, 30.653179, 26.284241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358367, 0.028928, 0.933132,
		-0.268243, 0.954182, -0.132599,
		-0.894214, -0.297826, -0.334188,
		40.822948, 30.563831, 26.183985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002945, 31.202925, 26.723709>,  <41.448898, 30.772310, 26.417915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002945, 31.202925, 26.723709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.783222, 30.886724, 26.615356>,  <40.651390, 30.697004, 26.550344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.783222, 30.886724, 26.615356>,  <41.002945, 31.202925, 26.723709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783222, 30.886724, 26.615356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510489, 0.060809, 0.857732,
		-0.661565, 0.609436, -0.436944,
		-0.549303, -0.790500, -0.270881,
		40.618431, 30.649574, 26.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257626, 31.465523, 26.788738>,  <41.002945, 31.202925, 26.723709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257626, 31.465523, 26.788738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289265, 31.068089, 26.821068>,  <40.308247, 30.829628, 26.840466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289265, 31.068089, 26.821068>,  <40.257626, 31.465523, 26.788738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289265, 31.068089, 26.821068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541668, 0.025228, 0.840214,
		-0.836863, -0.110238, -0.536198,
		0.079096, -0.993585, 0.080825,
		40.312992, 30.770014, 26.845316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576332, 31.128632, 27.020706>,  <40.257626, 31.465523, 26.788738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576332, 31.128632, 27.020706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820869, 30.827873, 27.119432>,  <39.967590, 30.647419, 27.178669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820869, 30.827873, 27.119432>,  <39.576332, 31.128632, 27.020706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820869, 30.827873, 27.119432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546915, -0.176004, 0.818478,
		-0.571968, -0.635356, -0.518820,
		0.611340, -0.751894, 0.246817,
		40.004272, 30.602304, 27.193478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156513, 30.512104, 27.072445>,  <39.576332, 31.128632, 27.020706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156513, 30.512104, 27.072445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.481094, 30.465572, 27.301537>,  <39.675842, 30.437653, 27.438992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.481094, 30.465572, 27.301537>,  <39.156513, 30.512104, 27.072445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481094, 30.465572, 27.301537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582166, -0.074839, 0.809619,
		-0.051307, -0.990389, -0.128442,
		0.811450, -0.116313, 0.572731,
		39.724529, 30.430674, 27.473354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039696, 29.991341, 27.422430>,  <39.156513, 30.512104, 27.072445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039696, 29.991341, 27.422430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334824, 30.148252, 27.642155>,  <39.511898, 30.242399, 27.773989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334824, 30.148252, 27.642155>,  <39.039696, 29.991341, 27.422430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334824, 30.148252, 27.642155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521206, -0.186021, 0.832911,
		0.428917, -0.900840, 0.067208,
		0.737818, 0.392279, 0.549311,
		39.556168, 30.265936, 27.806948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953289, 29.667465, 28.097496>,  <39.039696, 29.991341, 27.422430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953289, 29.667465, 28.097496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201252, 29.970179, 28.180439>,  <39.350029, 30.151806, 28.230206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201252, 29.970179, 28.180439>,  <38.953289, 29.667465, 28.097496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201252, 29.970179, 28.180439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299565, -0.015997, 0.953942,
		0.725245, -0.653470, 0.216789,
		0.619904, 0.756783, 0.207358,
		39.387222, 30.197214, 28.242647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434158, 29.477041, 28.741993>,  <38.953289, 29.667465, 28.097496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434158, 29.477041, 28.741993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350750, 29.863445, 28.680870>,  <39.300705, 30.095287, 28.644197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350750, 29.863445, 28.680870>,  <39.434158, 29.477041, 28.741993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350750, 29.863445, 28.680870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325106, 0.078893, 0.942381,
		0.922403, 0.246180, 0.297605,
		-0.208516, 0.966008, -0.152806,
		39.288197, 30.153248, 28.635029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458298, 29.726582, 29.411823>,  <39.434158, 29.477041, 28.741993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458298, 29.726582, 29.411823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288216, 30.030275, 29.214741>,  <39.186165, 30.212492, 29.096491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288216, 30.030275, 29.214741>,  <39.458298, 29.726582, 29.411823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288216, 30.030275, 29.214741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456914, 0.289852, 0.840961,
		0.781301, 0.582705, 0.223659,
		-0.425205, 0.759237, -0.492708,
		39.160656, 30.258047, 29.066929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627457, 30.302395, 29.862177>,  <39.458298, 29.726582, 29.411823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627457, 30.302395, 29.862177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315052, 30.426071, 29.645132>,  <39.127609, 30.500277, 29.514906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315052, 30.426071, 29.645132>,  <39.627457, 30.302395, 29.862177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315052, 30.426071, 29.645132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377815, 0.457897, 0.804727,
		0.497276, 0.833505, -0.240803,
		-0.781007, 0.309193, -0.542612,
		39.080750, 30.518829, 29.482349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449284, 31.030401, 29.944759>,  <39.627457, 30.302395, 29.862177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449284, 31.030401, 29.944759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104073, 30.887762, 29.801640>,  <38.896946, 30.802179, 29.715767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104073, 30.887762, 29.801640>,  <39.449284, 31.030401, 29.944759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104073, 30.887762, 29.801640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454798, 0.240205, 0.857590,
		-0.219868, 0.902851, -0.369483,
		-0.863028, -0.356597, -0.357802,
		38.845165, 30.780783, 29.694300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148865, 31.422308, 29.988232>,  <39.449284, 31.030401, 29.944759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148865, 31.422308, 29.988232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.089893, 31.780209, 30.156843>,  <40.054512, 31.994949, 30.258009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.089893, 31.780209, 30.156843>,  <40.148865, 31.422308, 29.988232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089893, 31.780209, 30.156843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182258, 0.394310, -0.900723,
		-0.972136, -0.209616, 0.104945,
		-0.147425, 0.894752, 0.421527,
		40.045666, 32.048634, 30.283302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626545, 31.755085, 29.614098>,  <40.148865, 31.422308, 29.988232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626545, 31.755085, 29.614098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833187, 32.056347, 29.777010>,  <39.957172, 32.237103, 29.874758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833187, 32.056347, 29.777010>,  <39.626545, 31.755085, 29.614098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833187, 32.056347, 29.777010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051615, 0.502199, -0.863211,
		-0.854667, 0.424916, 0.298312,
		0.516604, 0.753155, 0.407281,
		39.988167, 32.282295, 29.899195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222397, 32.351757, 29.388866>,  <39.626545, 31.755085, 29.614098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222397, 32.351757, 29.388866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.594223, 32.445168, 29.502964>,  <39.817322, 32.501213, 29.571423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.594223, 32.445168, 29.502964>,  <39.222397, 32.351757, 29.388866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594223, 32.445168, 29.502964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165180, 0.427896, -0.888606,
		-0.329567, 0.873138, 0.359186,
		0.929570, 0.233525, 0.285246,
		39.873093, 32.515224, 29.588537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204514, 33.018341, 29.327805>,  <39.222397, 32.351757, 29.388866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204514, 33.018341, 29.327805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595245, 32.932846, 29.332335>,  <39.829685, 32.881550, 29.335052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595245, 32.932846, 29.332335>,  <39.204514, 33.018341, 29.327805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595245, 32.932846, 29.332335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139119, 0.593804, -0.792492,
		0.162663, 0.775701, 0.609778,
		0.976825, -0.213740, 0.011325,
		39.888294, 32.868725, 29.335732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450699, 33.621349, 29.091295>,  <39.204514, 33.018341, 29.327805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450699, 33.621349, 29.091295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759209, 33.371593, 29.041843>,  <39.944313, 33.221741, 29.012173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759209, 33.371593, 29.041843>,  <39.450699, 33.621349, 29.091295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759209, 33.371593, 29.041843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299555, 0.527440, -0.795031,
		0.561613, 0.576150, 0.593836,
		0.771270, -0.624386, -0.123628,
		39.990589, 33.184277, 29.004755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080563, 34.029785, 28.953320>,  <39.450699, 33.621349, 29.091295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080563, 34.029785, 28.953320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147991, 33.663555, 28.807278>,  <40.188450, 33.443817, 28.719652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147991, 33.663555, 28.807278>,  <40.080563, 34.029785, 28.953320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147991, 33.663555, 28.807278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329735, 0.401447, -0.854468,
		0.928901, 0.023654, 0.369572,
		0.168575, -0.915577, -0.365105,
		40.198563, 33.388882, 28.697746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723263, 34.043484, 28.776270>,  <40.080563, 34.029785, 28.953320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723263, 34.043484, 28.776270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.529209, 33.764286, 28.565575>,  <40.412777, 33.596767, 28.439157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.529209, 33.764286, 28.565575>,  <40.723263, 34.043484, 28.776270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529209, 33.764286, 28.565575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403037, 0.356093, -0.843065,
		0.776022, -0.621291, 0.108566,
		-0.485130, -0.697993, -0.526740,
		40.383671, 33.554890, 28.407553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096508, 33.891972, 28.166204>,  <40.723263, 34.043484, 28.776270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096508, 33.891972, 28.166204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.742130, 33.745228, 28.052706>,  <40.529503, 33.657181, 27.984608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.742130, 33.745228, 28.052706>,  <41.096508, 33.891972, 28.166204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742130, 33.745228, 28.052706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157720, 0.337020, -0.928193,
		0.436143, -0.867082, -0.240721,
		-0.885948, -0.366859, -0.283745,
		40.476345, 33.635170, 27.967583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237286, 33.528107, 27.593782>,  <41.096508, 33.891972, 28.166204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237286, 33.528107, 27.593782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848103, 33.591351, 27.526428>,  <40.614594, 33.629295, 27.486015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848103, 33.591351, 27.526428>,  <41.237286, 33.528107, 27.593782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848103, 33.591351, 27.526428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196839, 0.186115, -0.962609,
		-0.120856, -0.969723, -0.212203,
		-0.972959, 0.158107, -0.168387,
		40.556213, 33.638783, 27.475912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137638, 33.119541, 26.970642>,  <41.237286, 33.528107, 27.593782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137638, 33.119541, 26.970642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.834908, 33.378731, 27.004917>,  <40.653271, 33.534245, 27.025482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.834908, 33.378731, 27.004917>,  <41.137638, 33.119541, 26.970642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834908, 33.378731, 27.004917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075718, 0.217131, -0.973201,
		-0.649218, -0.730054, -0.213394,
		-0.756824, 0.647978, 0.085687,
		40.607861, 33.573124, 27.030622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634407, 32.817738, 26.488445>,  <41.137638, 33.119541, 26.970642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634407, 32.817738, 26.488445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.603729, 33.212898, 26.542353>,  <40.585323, 33.449997, 26.574697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.603729, 33.212898, 26.542353>,  <40.634407, 32.817738, 26.488445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603729, 33.212898, 26.542353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061172, 0.139572, -0.988321,
		-0.995177, -0.067554, -0.071136,
		-0.076693, 0.987905, 0.134767,
		40.580723, 33.509270, 26.582783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091290, 32.984310, 25.949715>,  <40.634407, 32.817738, 26.488445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091290, 32.984310, 25.949715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235058, 33.329201, 26.092474>,  <40.321320, 33.536137, 26.178129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235058, 33.329201, 26.092474>,  <40.091290, 32.984310, 25.949715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235058, 33.329201, 26.092474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026897, 0.391870, -0.919627,
		-0.932787, 0.320936, 0.164039,
		0.359423, 0.862228, 0.356899,
		40.342884, 33.587868, 26.199543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761654, 33.485508, 25.750727>,  <40.091290, 32.984310, 25.949715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761654, 33.485508, 25.750727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112701, 33.660561, 25.828962>,  <40.323330, 33.765594, 25.875904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.112701, 33.660561, 25.828962>,  <39.761654, 33.485508, 25.750727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112701, 33.660561, 25.828962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000370, 0.407409, -0.913246,
		-0.479354, 0.801557, 0.357389,
		0.877622, 0.437635, 0.195589,
		40.375988, 33.791851, 25.887640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732307, 34.204269, 25.541151>,  <39.761654, 33.485508, 25.750727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732307, 34.204269, 25.541151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125370, 34.130901, 25.552031>,  <40.361206, 34.086880, 25.558559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125370, 34.130901, 25.552031>,  <39.732307, 34.204269, 25.541151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125370, 34.130901, 25.552031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102105, 0.412790, -0.905085,
		0.154785, 0.892166, 0.424359,
		0.982658, -0.183423, 0.027201,
		40.420166, 34.075874, 25.560190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646988, 34.925114, 25.992058>,  <39.732307, 34.204269, 25.541151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646988, 34.925114, 25.992058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415943, 35.251637, 25.991493>,  <39.277317, 35.447552, 25.991154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415943, 35.251637, 25.991493>,  <39.646988, 34.925114, 25.992058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415943, 35.251637, 25.991493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309869, -0.217662, 0.925529,
		0.755210, 0.535037, 0.378673,
		-0.577615, 0.816308, -0.001411,
		39.242657, 35.496529, 25.991070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728226, 35.257259, 26.669636>,  <39.646988, 34.925114, 25.992058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728226, 35.257259, 26.669636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379017, 35.408104, 26.545944>,  <39.169491, 35.498611, 26.471729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379017, 35.408104, 26.545944>,  <39.728226, 35.257259, 26.669636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379017, 35.408104, 26.545944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379057, -0.125772, 0.916787,
		0.306837, 0.917589, 0.252748,
		-0.873022, 0.377109, -0.309227,
		39.117111, 35.521236, 26.453176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376022, 35.676506, 27.250113>,  <39.728226, 35.257259, 26.669636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376022, 35.676506, 27.250113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082485, 35.591782, 26.991930>,  <38.906364, 35.540947, 26.837021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082485, 35.591782, 26.991930>,  <39.376022, 35.676506, 27.250113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082485, 35.591782, 26.991930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606359, -0.224144, 0.762947,
		-0.306275, 0.951260, 0.036053,
		-0.733842, -0.211810, -0.645455,
		38.862331, 35.528240, 26.798294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832802, 35.813816, 27.653210>,  <39.376022, 35.676506, 27.250113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832802, 35.813816, 27.653210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674324, 35.589104, 27.362711>,  <38.579239, 35.454277, 27.188412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674324, 35.589104, 27.362711>,  <38.832802, 35.813816, 27.653210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674324, 35.589104, 27.362711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638840, -0.399460, 0.657506,
		-0.659481, 0.724455, -0.200625,
		-0.396192, -0.561780, -0.726247,
		38.555466, 35.420570, 27.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154297, 35.967236, 27.622852>,  <38.832802, 35.813816, 27.653210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154297, 35.967236, 27.622852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203545, 35.598038, 27.477018>,  <38.233093, 35.376518, 27.389519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203545, 35.598038, 27.477018>,  <38.154297, 35.967236, 27.622852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203545, 35.598038, 27.477018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579499, -0.365107, 0.728614,
		-0.805619, 0.121567, -0.579827,
		0.123124, -0.922994, -0.364585,
		38.240482, 35.321140, 27.367643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554817, 35.703247, 27.479965>,  <38.154297, 35.967236, 27.622852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554817, 35.703247, 27.479965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779076, 35.374954, 27.523920>,  <37.913631, 35.177979, 27.550293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779076, 35.374954, 27.523920>,  <37.554817, 35.703247, 27.479965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779076, 35.374954, 27.523920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707878, -0.406189, 0.577857,
		-0.429632, -0.401758, -0.808707,
		0.560647, -0.820732, 0.109884,
		37.947269, 35.128735, 27.556887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068478, 35.341972, 27.974880>,  <37.554817, 35.703247, 27.479965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068478, 35.341972, 27.974880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365337, 35.079502, 27.920275>,  <37.543453, 34.922020, 27.887510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365337, 35.079502, 27.920275>,  <37.068478, 35.341972, 27.974880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365337, 35.079502, 27.920275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336982, -0.541389, 0.770287,
		-0.579359, -0.525664, -0.622913,
		0.742150, -0.656183, -0.136519,
		37.587982, 34.882648, 27.879320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761776, 34.657131, 27.720840>,  <37.068478, 35.341972, 27.974880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761776, 34.657131, 27.720840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.106495, 34.570580, 27.904352>,  <37.313328, 34.518650, 28.014460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.106495, 34.570580, 27.904352>,  <36.761776, 34.657131, 27.720840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106495, 34.570580, 27.904352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495946, -0.549277, 0.672557,
		0.106474, -0.807141, -0.580678,
		0.861801, -0.216375, 0.458782,
		37.365036, 34.505669, 28.041986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814716, 33.895779, 27.771254>,  <36.761776, 34.657131, 27.720840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814716, 33.895779, 27.771254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040882, 34.061874, 28.056318>,  <37.176582, 34.161530, 28.227358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040882, 34.061874, 28.056318>,  <36.814716, 33.895779, 27.771254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040882, 34.061874, 28.056318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476701, -0.540599, 0.693188,
		0.673102, -0.731663, -0.107717,
		0.565412, 0.415237, 0.712663,
		37.210506, 34.186447, 28.270117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040695, 33.364712, 28.104342>,  <36.814716, 33.895779, 27.771254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040695, 33.364712, 28.104342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.159328, 33.658951, 28.347961>,  <37.230507, 33.835495, 28.494133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.159328, 33.658951, 28.347961>,  <37.040695, 33.364712, 28.104342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159328, 33.658951, 28.347961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381996, -0.493127, 0.781604,
		0.875282, -0.464462, 0.134743,
		0.296580, 0.735596, 0.609048,
		37.248302, 33.879631, 28.530676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475296, 33.085468, 28.610415>,  <37.040695, 33.364712, 28.104342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475296, 33.085468, 28.610415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300884, 33.407249, 28.771774>,  <37.196236, 33.600319, 28.868589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300884, 33.407249, 28.771774>,  <37.475296, 33.085468, 28.610415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300884, 33.407249, 28.771774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373638, -0.569623, 0.732069,
		0.818701, 0.168480, 0.548948,
		-0.436032, 0.804453, 0.403400,
		37.170074, 33.648586, 28.892794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777081, 33.141079, 29.309917>,  <37.475296, 33.085468, 28.610415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777081, 33.141079, 29.309917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401928, 33.274811, 29.272821>,  <37.176838, 33.355049, 29.250563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401928, 33.274811, 29.272821>,  <37.777081, 33.141079, 29.309917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401928, 33.274811, 29.272821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272025, -0.542648, 0.794692,
		0.215366, 0.770554, 0.599886,
		-0.937880, 0.334334, -0.092742,
		37.120564, 33.375111, 29.244999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.903854, 37.017487, 23.296051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536480, 37.122025, 23.177279>,  <40.316055, 37.184750, 23.106014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536480, 37.122025, 23.177279>,  <40.903854, 37.017487, 23.296051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536480, 37.122025, 23.177279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349631, -0.185250, 0.918390,
		0.185014, 0.947301, 0.261516,
		-0.918438, 0.261349, -0.296932,
		40.260948, 37.200428, 23.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619598, 37.299923, 23.866747>,  <40.903854, 37.017487, 23.296051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619598, 37.299923, 23.866747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300999, 37.217674, 23.639305>,  <40.109840, 37.168324, 23.502840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300999, 37.217674, 23.639305>,  <40.619598, 37.299923, 23.866747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300999, 37.217674, 23.639305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529383, -0.217214, 0.820105,
		-0.292143, 0.954220, 0.064156,
		-0.796497, -0.205625, -0.568605,
		40.062050, 37.155987, 23.468723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000259, 37.625790, 24.255354>,  <40.619598, 37.299923, 23.866747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000259, 37.625790, 24.255354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861465, 37.339920, 24.012424>,  <39.778187, 37.168400, 23.866667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861465, 37.339920, 24.012424>,  <40.000259, 37.625790, 24.255354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861465, 37.339920, 24.012424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552413, -0.367568, 0.748153,
		-0.757918, 0.595093, -0.267254,
		-0.346987, -0.714673, -0.607324,
		39.757370, 37.125519, 23.830227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334511, 37.647057, 24.296211>,  <40.000259, 37.625790, 24.255354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334511, 37.647057, 24.296211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390156, 37.279678, 24.148104>,  <39.423542, 37.059250, 24.059238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390156, 37.279678, 24.148104>,  <39.334511, 37.647057, 24.296211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390156, 37.279678, 24.148104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570729, -0.379920, 0.727963,
		-0.809270, 0.110058, -0.577035,
		0.139110, -0.918449, -0.370271,
		39.431889, 37.004143, 24.037022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673702, 37.246845, 24.346201>,  <39.334511, 37.647057, 24.296211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673702, 37.246845, 24.346201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957199, 36.966240, 24.316357>,  <39.127296, 36.797874, 24.298450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957199, 36.966240, 24.316357>,  <38.673702, 37.246845, 24.346201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957199, 36.966240, 24.316357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410023, -0.495675, 0.765629,
		-0.574086, -0.512035, -0.638941,
		0.708736, -0.701517, -0.074614,
		39.169819, 36.755787, 24.293972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400291, 36.582253, 24.583826>,  <38.673702, 37.246845, 24.346201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400291, 36.582253, 24.583826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788628, 36.486366, 24.584209>,  <39.021629, 36.428837, 24.584440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788628, 36.486366, 24.584209>,  <38.400291, 36.582253, 24.583826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788628, 36.486366, 24.584209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160981, -0.649000, 0.743562,
		-0.177618, -0.722037, -0.668667,
		0.970844, -0.239712, 0.000960,
		39.079880, 36.414452, 24.584497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561527, 35.761326, 24.587187>,  <38.400291, 36.582253, 24.583826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561527, 35.761326, 24.587187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852390, 35.965473, 24.770828>,  <39.026909, 36.087959, 24.881014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852390, 35.965473, 24.770828>,  <38.561527, 35.761326, 24.587187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852390, 35.965473, 24.770828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072670, -0.722254, 0.687799,
		0.682618, -0.466772, -0.562277,
		0.727153, 0.510365, 0.459104,
		39.070538, 36.118584, 24.908560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057343, 35.321346, 24.773178>,  <38.561527, 35.761326, 24.587187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057343, 35.321346, 24.773178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155403, 35.621490, 25.018732>,  <39.214241, 35.801579, 25.166065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155403, 35.621490, 25.018732>,  <39.057343, 35.321346, 24.773178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155403, 35.621490, 25.018732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086631, -0.613722, 0.784755,
		0.965606, -0.245567, -0.085451,
		0.245154, 0.750361, 0.613887,
		39.228951, 35.846600, 25.202898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386444, 34.942078, 25.326534>,  <39.057343, 35.321346, 24.773178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386444, 34.942078, 25.326534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315163, 35.307915, 25.471727>,  <39.272392, 35.527416, 25.558844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315163, 35.307915, 25.471727>,  <39.386444, 34.942078, 25.326534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315163, 35.307915, 25.471727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245455, -0.398545, 0.883693,
		0.952888, 0.068382, 0.295514,
		-0.178204, 0.914596, 0.362984,
		39.261700, 35.582294, 25.580622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139385, 34.832497, 25.398655>,  <39.386444, 34.942078, 25.326534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139385, 34.832497, 25.398655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387737, 34.531818, 25.309700>,  <40.536747, 34.351410, 25.256327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387737, 34.531818, 25.309700>,  <40.139385, 34.832497, 25.398655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387737, 34.531818, 25.309700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342995, 0.515596, -0.785185,
		0.704884, 0.411229, 0.577952,
		0.620880, -0.751699, -0.222386,
		40.574001, 34.306309, 25.242985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750690, 35.191448, 25.187714>,  <40.139385, 34.832497, 25.398655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750690, 35.191448, 25.187714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819046, 34.817833, 25.062254>,  <40.860062, 34.593666, 24.986979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819046, 34.817833, 25.062254>,  <40.750690, 35.191448, 25.187714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819046, 34.817833, 25.062254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374280, 0.356011, -0.856254,
		0.911433, 0.028934, 0.410430,
		0.170893, -0.934034, -0.313650,
		40.870316, 34.537624, 24.968159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477562, 35.133087, 24.905888>,  <40.750690, 35.191448, 25.187714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477562, 35.133087, 24.905888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287739, 34.814457, 24.756079>,  <41.173843, 34.623280, 24.666193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287739, 34.814457, 24.756079>,  <41.477562, 35.133087, 24.905888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287739, 34.814457, 24.756079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355969, 0.215466, -0.909319,
		0.805035, -0.564842, 0.181304,
		-0.474557, -0.796572, -0.374524,
		41.145370, 34.575485, 24.643721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023361, 34.774307, 24.592216>,  <41.477562, 35.133087, 24.905888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023361, 34.774307, 24.592216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667393, 34.672863, 24.440571>,  <41.453812, 34.611996, 24.349585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667393, 34.672863, 24.440571>,  <42.023361, 34.774307, 24.592216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667393, 34.672863, 24.440571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319848, 0.245582, -0.915088,
		0.325182, -0.935612, -0.137430,
		-0.889918, -0.253614, -0.379112,
		41.400417, 34.596779, 24.326838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198105, 34.474037, 24.020573>,  <42.023361, 34.774307, 24.592216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198105, 34.474037, 24.020573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816227, 34.574371, 23.956535>,  <41.587101, 34.634571, 23.918114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816227, 34.574371, 23.956535>,  <42.198105, 34.474037, 24.020573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816227, 34.574371, 23.956535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221743, 0.240909, -0.944877,
		-0.198442, -0.937573, -0.285617,
		-0.954700, 0.250837, -0.160094,
		41.529816, 34.649624, 23.908506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105545, 34.217564, 23.431433>,  <42.198105, 34.474037, 24.020573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105545, 34.217564, 23.431433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812202, 34.489132, 23.445614>,  <41.636196, 34.652073, 23.454123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812202, 34.489132, 23.445614>,  <42.105545, 34.217564, 23.431433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812202, 34.489132, 23.445614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134007, 0.195485, -0.971508,
		-0.666508, -0.707708, -0.234340,
		-0.733354, 0.678921, 0.035455,
		41.592197, 34.692810, 23.456251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514164, 34.053867, 23.015863>,  <42.105545, 34.217564, 23.431433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514164, 34.053867, 23.015863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473164, 34.451084, 23.039021>,  <41.448563, 34.689415, 23.052914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473164, 34.451084, 23.039021>,  <41.514164, 34.053867, 23.015863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473164, 34.451084, 23.039021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205984, 0.078126, -0.975432,
		-0.973172, -0.088060, -0.212560,
		-0.102503, 0.993047, 0.057891,
		41.442413, 34.748997, 23.056389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080925, 34.302540, 22.389700>,  <41.514164, 34.053867, 23.015863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080925, 34.302540, 22.389700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272476, 34.633537, 22.506950>,  <41.387409, 34.832138, 22.577301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272476, 34.633537, 22.506950>,  <41.080925, 34.302540, 22.389700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272476, 34.633537, 22.506950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146326, 0.253993, -0.956073,
		-0.865600, 0.500737, 0.000548,
		0.478880, 0.827496, 0.293127,
		41.416142, 34.881786, 22.594889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888836, 34.764355, 21.885799>,  <41.080925, 34.302540, 22.389700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888836, 34.764355, 21.885799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201824, 34.954212, 22.047022>,  <41.389618, 35.068127, 22.143755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201824, 34.954212, 22.047022>,  <40.888836, 34.764355, 21.885799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201824, 34.954212, 22.047022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175577, 0.452841, -0.874133,
		-0.597422, 0.754750, 0.270998,
		0.782470, 0.474645, 0.403054,
		41.436565, 35.096607, 22.167938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880600, 35.475731, 21.678679>,  <40.888836, 34.764355, 21.885799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880600, 35.475731, 21.678679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258694, 35.391109, 21.778091>,  <41.485550, 35.340336, 21.837740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258694, 35.391109, 21.778091>,  <40.880600, 35.475731, 21.678679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258694, 35.391109, 21.778091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295192, 0.229300, -0.927514,
		0.139234, 0.950087, 0.279193,
		0.945238, -0.211557, 0.248532,
		41.542267, 35.327641, 21.852652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271362, 36.009129, 21.451023>,  <40.880600, 35.475731, 21.678679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271362, 36.009129, 21.451023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531357, 35.711159, 21.511164>,  <41.687355, 35.532375, 21.547249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531357, 35.711159, 21.511164>,  <41.271362, 36.009129, 21.451023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531357, 35.711159, 21.511164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545691, 0.319811, -0.774559,
		0.528902, 0.585500, 0.614371,
		0.649987, -0.744923, 0.150353,
		41.726353, 35.487682, 21.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927814, 36.315498, 21.586355>,  <41.271362, 36.009129, 21.451023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927814, 36.315498, 21.586355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974033, 35.946766, 21.438366>,  <42.001762, 35.725525, 21.349573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974033, 35.946766, 21.438366>,  <41.927814, 36.315498, 21.586355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974033, 35.946766, 21.438366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485929, 0.377312, -0.788358,
		0.866327, -0.088689, 0.491541,
		0.115545, -0.921830, -0.369972,
		42.008698, 35.670216, 21.327374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561291, 36.403557, 21.264072>,  <41.927814, 36.315498, 21.586355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561291, 36.403557, 21.264072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403862, 36.072166, 21.104706>,  <42.309406, 35.873333, 21.009087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403862, 36.072166, 21.104706>,  <42.561291, 36.403557, 21.264072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403862, 36.072166, 21.104706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421658, 0.222430, -0.879050,
		0.816889, -0.513962, 0.261791,
		-0.393569, -0.828473, -0.398417,
		42.285789, 35.823624, 20.985180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025318, 36.173973, 20.790888>,  <42.561291, 36.403557, 21.264072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025318, 36.173973, 20.790888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687572, 35.999821, 20.665991>,  <42.484924, 35.895329, 20.591053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687572, 35.999821, 20.665991>,  <43.025318, 36.173973, 20.790888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687572, 35.999821, 20.665991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306704, 0.085070, -0.947996,
		0.439305, -0.896217, 0.061704,
		-0.844360, -0.435384, -0.312245,
		42.434265, 35.869205, 20.572317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.594276, 36.706566, 20.514505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971939, 36.808647, 20.597879>,  <36.198536, 36.869896, 20.647903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971939, 36.808647, 20.597879>,  <35.594276, 36.706566, 20.514505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971939, 36.808647, 20.597879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121662, -0.317883, 0.940292,
		0.306224, -0.913139, -0.269082,
		0.944153, 0.255203, 0.208437,
		36.255184, 36.885208, 20.660410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595707, 36.284466, 21.088072>,  <35.594276, 36.706566, 20.514505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595707, 36.284466, 21.088072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935043, 36.495743, 21.102631>,  <36.138645, 36.622509, 21.111366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935043, 36.495743, 21.102631>,  <35.595707, 36.284466, 21.088072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935043, 36.495743, 21.102631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121745, -0.261517, 0.957490,
		0.515258, -0.807850, -0.286161,
		0.848344, 0.528193, 0.036397,
		36.189548, 36.654202, 21.113550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173351, 35.773251, 21.121464>,  <35.595707, 36.284466, 21.088072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173351, 35.773251, 21.121464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272495, 36.118114, 21.298214>,  <36.331982, 36.325031, 21.404264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272495, 36.118114, 21.298214>,  <36.173351, 35.773251, 21.121464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272495, 36.118114, 21.298214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079688, -0.472707, 0.877609,
		0.965514, -0.182308, -0.185866,
		0.247855, 0.862156, 0.441877,
		36.346851, 36.376762, 21.430777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797585, 35.759449, 21.395437>,  <36.173351, 35.773251, 21.121464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797585, 35.759449, 21.395437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638779, 36.053192, 21.615658>,  <36.543495, 36.229439, 21.747789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638779, 36.053192, 21.615658>,  <36.797585, 35.759449, 21.395437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638779, 36.053192, 21.615658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359462, -0.427520, 0.829466,
		0.844494, 0.527208, -0.094243,
		-0.397010, 0.734356, 0.550549,
		36.519676, 36.273499, 21.780823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327164, 35.943382, 21.854713>,  <36.797585, 35.759449, 21.395437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327164, 35.943382, 21.854713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995525, 36.081978, 22.030231>,  <36.796543, 36.165134, 22.135542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.995525, 36.081978, 22.030231>,  <37.327164, 35.943382, 21.854713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995525, 36.081978, 22.030231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259504, -0.456676, 0.850943,
		0.495230, 0.819385, 0.288714,
		-0.829099, 0.346490, 0.438794,
		36.746796, 36.185925, 22.161869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533394, 36.079865, 22.552341>,  <37.327164, 35.943382, 21.854713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533394, 36.079865, 22.552341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135990, 36.037453, 22.568810>,  <36.897549, 36.012005, 22.578691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135990, 36.037453, 22.568810>,  <37.533394, 36.079865, 22.552341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135990, 36.037453, 22.568810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073496, -0.322175, 0.943823,
		-0.086808, 0.940724, 0.327877,
		-0.993510, -0.106029, 0.041172,
		36.837936, 36.005646, 22.581161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348747, 36.185020, 23.278067>,  <37.533394, 36.079865, 22.552341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348747, 36.185020, 23.278067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012821, 36.003876, 23.158314>,  <36.811268, 35.895187, 23.086462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012821, 36.003876, 23.158314>,  <37.348747, 36.185020, 23.278067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012821, 36.003876, 23.158314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059198, -0.471794, 0.879719,
		-0.539641, 0.756521, 0.369409,
		-0.839811, -0.452864, -0.299384,
		36.760880, 35.868015, 23.068499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765976, 36.370647, 23.754059>,  <37.348747, 36.185020, 23.278067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765976, 36.370647, 23.754059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648067, 36.034481, 23.572155>,  <36.577324, 35.832779, 23.463013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648067, 36.034481, 23.572155>,  <36.765976, 36.370647, 23.754059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648067, 36.034481, 23.572155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187523, -0.415778, 0.889923,
		-0.936989, 0.347598, -0.035041,
		-0.294767, -0.840419, -0.454762,
		36.559639, 35.782356, 23.435726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292908, 36.061424, 24.258244>,  <36.765976, 36.370647, 23.754059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292908, 36.061424, 24.258244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385326, 35.765308, 24.005709>,  <36.440777, 35.587639, 23.854187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385326, 35.765308, 24.005709>,  <36.292908, 36.061424, 24.258244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385326, 35.765308, 24.005709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127739, -0.666359, 0.734608,
		-0.964520, -0.089085, -0.248526,
		0.231050, -0.740290, -0.631337,
		36.454643, 35.543221, 23.816307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830448, 35.498405, 24.373302>,  <36.292908, 36.061424, 24.258244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830448, 35.498405, 24.373302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.111004, 35.298912, 24.169607>,  <36.279339, 35.179218, 24.047390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.111004, 35.298912, 24.169607>,  <35.830448, 35.498405, 24.373302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111004, 35.298912, 24.169607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069285, -0.758760, 0.647675,
		-0.709402, -0.418990, -0.566741,
		0.701390, -0.498729, -0.509236,
		36.321419, 35.149292, 24.016836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600559, 34.749439, 24.223663>,  <35.830448, 35.498405, 24.373302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600559, 34.749439, 24.223663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999706, 34.766579, 24.203947>,  <36.239193, 34.776863, 24.192118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999706, 34.766579, 24.203947>,  <35.600559, 34.749439, 24.223663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999706, 34.766579, 24.203947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065155, -0.704951, 0.706257,
		-0.004489, -0.707961, -0.706237,
		0.997865, 0.042844, -0.049291,
		36.299065, 34.779430, 24.189159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876022, 34.141396, 24.018930>,  <35.600559, 34.749439, 24.223663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876022, 34.141396, 24.018930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197880, 34.291969, 24.202600>,  <36.390995, 34.382313, 24.312803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197880, 34.291969, 24.202600>,  <35.876022, 34.141396, 24.018930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197880, 34.291969, 24.202600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063868, -0.713981, 0.697246,
		0.590309, -0.590363, -0.550461,
		0.804647, 0.376434, 0.459175,
		36.439274, 34.404900, 24.340353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266239, 33.605892, 24.114544>,  <35.876022, 34.141396, 24.018930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266239, 33.605892, 24.114544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405018, 33.860424, 24.390142>,  <36.488285, 34.013142, 24.555502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405018, 33.860424, 24.390142>,  <36.266239, 33.605892, 24.114544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405018, 33.860424, 24.390142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221114, -0.658423, 0.719436,
		0.911449, -0.401950, -0.087735,
		0.346944, 0.636329, 0.688995,
		36.509102, 34.051323, 24.596842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536736, 33.161171, 24.595140>,  <36.266239, 33.605892, 24.114544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536736, 33.161171, 24.595140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519142, 33.496471, 24.812546>,  <36.508587, 33.697651, 24.942989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519142, 33.496471, 24.812546>,  <36.536736, 33.161171, 24.595140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519142, 33.496471, 24.812546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159804, -0.542938, 0.824428,
		0.986169, -0.050596, 0.157834,
		-0.043982, 0.838247, 0.543514,
		36.505947, 33.747944, 24.975599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205067, 32.888641, 24.517834>,  <36.536736, 33.161171, 24.595140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205067, 32.888641, 24.517834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330215, 32.512459, 24.464685>,  <37.405304, 32.286751, 24.432796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330215, 32.512459, 24.464685>,  <37.205067, 32.888641, 24.517834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330215, 32.512459, 24.464685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391102, 0.255046, -0.884303,
		0.865536, 0.224706, 0.447610,
		0.312869, -0.940457, -0.132869,
		37.424076, 32.230320, 24.424826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895546, 32.848629, 24.246016>,  <37.205067, 32.888641, 24.517834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895546, 32.848629, 24.246016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739120, 32.509743, 24.102186>,  <37.645267, 32.306412, 24.015888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739120, 32.509743, 24.102186>,  <37.895546, 32.848629, 24.246016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739120, 32.509743, 24.102186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285151, 0.259929, -0.922565,
		0.875077, -0.463311, 0.139937,
		-0.391060, -0.847219, -0.359572,
		37.621803, 32.255577, 23.994314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442303, 32.550686, 23.792206>,  <37.895546, 32.848629, 24.246016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442303, 32.550686, 23.792206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081730, 32.416203, 23.683117>,  <37.865387, 32.335510, 23.617662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081730, 32.416203, 23.683117>,  <38.442303, 32.550686, 23.792206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081730, 32.416203, 23.683117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214404, 0.200569, -0.955930,
		0.376094, -0.920182, -0.108715,
		-0.901435, -0.336211, -0.272724,
		37.811298, 32.315338, 23.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483574, 32.132298, 23.169779>,  <38.442303, 32.550686, 23.792206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483574, 32.132298, 23.169779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097225, 32.235764, 23.164282>,  <37.865417, 32.297844, 23.160984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097225, 32.235764, 23.164282>,  <38.483574, 32.132298, 23.169779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097225, 32.235764, 23.164282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104034, 0.338790, -0.935093,
		-0.237223, -0.904606, -0.354137,
		-0.965869, 0.258667, -0.013741,
		37.807465, 32.313362, 23.160160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258907, 31.954014, 22.497049>,  <38.483574, 32.132298, 23.169779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258907, 31.954014, 22.497049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959888, 32.181511, 22.634281>,  <37.780476, 32.318008, 22.716621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959888, 32.181511, 22.634281>,  <38.258907, 31.954014, 22.497049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959888, 32.181511, 22.634281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045798, 0.471161, -0.880857,
		-0.662626, -0.674197, -0.326169,
		-0.747549, 0.568741, 0.343081,
		37.735622, 32.352135, 22.737206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918167, 32.121120, 21.895008>,  <38.258907, 31.954014, 22.497049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918167, 32.121120, 21.895008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762669, 32.402134, 22.133444>,  <37.669369, 32.570740, 22.276506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762669, 32.402134, 22.133444>,  <37.918167, 32.121120, 21.895008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762669, 32.402134, 22.133444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089308, 0.672667, -0.734536,
		-0.917006, -0.232314, -0.324239,
		-0.388748, 0.702531, 0.596092,
		37.646046, 32.612892, 22.312271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311787, 32.291393, 21.591444>,  <37.918167, 32.121120, 21.895008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311787, 32.291393, 21.591444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433109, 32.597069, 21.819138>,  <37.505901, 32.780472, 21.955753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433109, 32.597069, 21.819138>,  <37.311787, 32.291393, 21.591444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433109, 32.597069, 21.819138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069887, 0.577924, -0.813093,
		-0.950328, 0.286396, 0.121880,
		0.303304, 0.764187, 0.569232,
		37.524101, 32.826324, 21.989906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968113, 32.856918, 21.231668>,  <37.311787, 32.291393, 21.591444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968113, 32.856918, 21.231668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.243095, 33.020470, 21.471743>,  <37.408085, 33.118599, 21.615788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.243095, 33.020470, 21.471743>,  <36.968113, 32.856918, 21.231668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243095, 33.020470, 21.471743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261672, 0.631475, -0.729909,
		-0.677444, 0.658833, 0.327121,
		0.687457, 0.408874, 0.600187,
		37.449333, 33.143131, 21.651798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928204, 33.451843, 21.084908>,  <36.968113, 32.856918, 21.231668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928204, 33.451843, 21.084908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292011, 33.452873, 21.251165>,  <37.510296, 33.453491, 21.350920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292011, 33.452873, 21.251165>,  <36.928204, 33.451843, 21.084908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292011, 33.452873, 21.251165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311168, 0.658767, -0.684982,
		-0.275579, 0.752342, 0.598362,
		0.909522, 0.002575, 0.415647,
		37.564869, 33.453648, 21.375860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171780, 34.104702, 21.023962>,  <36.928204, 33.451843, 21.084908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171780, 34.104702, 21.023962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498718, 33.880600, 21.077719>,  <37.694881, 33.746140, 21.109972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498718, 33.880600, 21.077719>,  <37.171780, 34.104702, 21.023962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498718, 33.880600, 21.077719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472726, 0.518791, -0.712310,
		0.329351, 0.645736, 0.688878,
		0.817348, -0.560251, 0.134392,
		37.743923, 33.712524, 21.118036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769798, 34.574211, 21.153513>,  <37.171780, 34.104702, 21.023962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769798, 34.574211, 21.153513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939449, 34.236240, 21.023149>,  <38.041241, 34.033459, 20.944931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939449, 34.236240, 21.023149>,  <37.769798, 34.574211, 21.153513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939449, 34.236240, 21.023149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608150, 0.532398, -0.588818,
		0.671018, 0.051536, 0.739648,
		0.424132, -0.844924, -0.325907,
		38.066689, 33.982761, 20.925377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457500, 34.734295, 21.164276>,  <37.769798, 34.574211, 21.153513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457500, 34.734295, 21.164276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441525, 34.415123, 20.923706>,  <38.431938, 34.223621, 20.779364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441525, 34.415123, 20.923706>,  <38.457500, 34.734295, 21.164276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441525, 34.415123, 20.923706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441303, 0.525937, -0.727078,
		0.896469, -0.294448, 0.331125,
		-0.039936, -0.797929, -0.601427,
		38.429543, 34.175743, 20.743279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007595, 34.857319, 20.669012>,  <38.457500, 34.734295, 21.164276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007595, 34.857319, 20.669012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807919, 34.556244, 20.497303>,  <38.688114, 34.375599, 20.394278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807919, 34.556244, 20.497303>,  <39.007595, 34.857319, 20.669012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807919, 34.556244, 20.497303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418888, 0.224051, -0.879963,
		0.758515, -0.619084, 0.203447,
		-0.499188, -0.752686, -0.429272,
		38.658161, 34.330437, 20.368521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448257, 34.496567, 20.215391>,  <39.007595, 34.857319, 20.669012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448257, 34.496567, 20.215391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077637, 34.433296, 20.078873>,  <38.855263, 34.395332, 19.996962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077637, 34.433296, 20.078873>,  <39.448257, 34.496567, 20.215391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077637, 34.433296, 20.078873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307006, 0.206306, -0.929078,
		0.217376, -0.965617, -0.142590,
		-0.926550, -0.158183, -0.341296,
		38.799671, 34.385841, 19.976484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632362, 33.745571, 20.051386>,  <39.448257, 34.496567, 20.215391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632362, 33.745571, 20.051386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926304, 33.474873, 20.069315>,  <40.102669, 33.312454, 20.080072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926304, 33.474873, 20.069315>,  <39.632362, 33.745571, 20.051386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926304, 33.474873, 20.069315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282340, -0.245153, 0.927461,
		-0.616664, -0.694203, -0.371223,
		0.734853, -0.676743, 0.044825,
		40.146759, 33.271851, 20.082762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353138, 33.288502, 20.513102>,  <39.632362, 33.745571, 20.051386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353138, 33.288502, 20.513102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744034, 33.204174, 20.503664>,  <39.978573, 33.153576, 20.498001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744034, 33.204174, 20.503664>,  <39.353138, 33.288502, 20.513102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744034, 33.204174, 20.503664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044078, -0.310589, 0.949522,
		-0.207505, -0.926871, -0.312812,
		0.977241, -0.210818, -0.023594,
		40.037205, 33.140926, 20.496586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460640, 32.552711, 20.664595>,  <39.353138, 33.288502, 20.513102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460640, 32.552711, 20.664595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.800117, 32.747131, 20.748001>,  <40.003803, 32.863785, 20.798046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.800117, 32.747131, 20.748001>,  <39.460640, 32.552711, 20.664595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800117, 32.747131, 20.748001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023894, -0.429091, 0.902945,
		0.528349, -0.761339, -0.375779,
		0.848691, 0.486049, 0.208518,
		40.054726, 32.892944, 20.810556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952442, 32.131718, 20.883085>,  <39.460640, 32.552711, 20.664595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952442, 32.131718, 20.883085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129257, 32.461582, 21.024244>,  <40.235348, 32.659500, 21.108940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129257, 32.461582, 21.024244>,  <39.952442, 32.131718, 20.883085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129257, 32.461582, 21.024244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115525, -0.442483, 0.889305,
		0.889525, -0.352339, -0.290864,
		0.442039, 0.824661, 0.352896,
		40.261868, 32.708981, 21.130114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449772, 31.871822, 21.286596>,  <39.952442, 32.131718, 20.883085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449772, 31.871822, 21.286596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.459560, 32.252022, 21.410500>,  <40.465431, 32.480141, 21.484842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.459560, 32.252022, 21.410500>,  <40.449772, 31.871822, 21.286596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459560, 32.252022, 21.410500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115246, -0.310469, 0.943572,
		0.993036, 0.012612, -0.117138,
		0.024467, 0.950500, 0.309760,
		40.466900, 32.537170, 21.503428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981812, 31.900198, 21.652481>,  <40.449772, 31.871822, 21.286596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981812, 31.900198, 21.652481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.777466, 32.213219, 21.794819>,  <40.654858, 32.401031, 21.880222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.777466, 32.213219, 21.794819>,  <40.981812, 31.900198, 21.652481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777466, 32.213219, 21.794819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239993, -0.267654, 0.933148,
		0.825481, 0.562115, -0.051072,
		-0.510867, 0.782553, 0.355847,
		40.624207, 32.447983, 21.901573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322571, 32.326420, 22.103918>,  <40.981812, 31.900198, 21.652481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322571, 32.326420, 22.103918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.938324, 32.355915, 22.211086>,  <40.707775, 32.373611, 22.275387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.938324, 32.355915, 22.211086>,  <41.322571, 32.326420, 22.103918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938324, 32.355915, 22.211086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236781, -0.287432, 0.928072,
		0.145439, 0.954959, 0.258653,
		-0.960616, 0.073733, 0.267920,
		40.650139, 32.378036, 22.291462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298977, 32.770615, 22.733709>,  <41.322571, 32.326420, 22.103918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298977, 32.770615, 22.733709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969788, 32.543556, 22.724781>,  <40.772274, 32.407322, 22.719425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969788, 32.543556, 22.724781>,  <41.298977, 32.770615, 22.733709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969788, 32.543556, 22.724781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166182, -0.278131, 0.946059,
		-0.543230, 0.774871, 0.323226,
		-0.822973, -0.567642, -0.022319,
		40.722897, 32.373264, 22.718084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914589, 32.854359, 23.422192>,  <41.298977, 32.770615, 22.733709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914589, 32.854359, 23.422192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765884, 32.531883, 23.238081>,  <40.676662, 32.338398, 23.127615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765884, 32.531883, 23.238081>,  <40.914589, 32.854359, 23.422192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765884, 32.531883, 23.238081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109958, -0.530559, 0.840486,
		-0.921794, 0.261847, 0.285887,
		-0.371758, -0.806191, -0.460274,
		40.654358, 32.290028, 23.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449142, 32.496197, 23.887604>,  <40.914589, 32.854359, 23.422192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449142, 32.496197, 23.887604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.517372, 32.204380, 23.622673>,  <40.558311, 32.029289, 23.463715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.517372, 32.204380, 23.622673>,  <40.449142, 32.496197, 23.887604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517372, 32.204380, 23.622673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064494, -0.679004, 0.731296,
		-0.983231, -0.082026, -0.162873,
		0.170577, -0.729537, -0.662328,
		40.568546, 31.985519, 23.423975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996006, 31.979389, 24.058088>,  <40.449142, 32.496197, 23.887604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996006, 31.979389, 24.058088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.258873, 31.784380, 23.828148>,  <40.416592, 31.667376, 23.690184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.258873, 31.784380, 23.828148>,  <39.996006, 31.979389, 24.058088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258873, 31.784380, 23.828148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009197, -0.757416, 0.652868,
		-0.753651, -0.434358, -0.493298,
		0.657210, -0.487498, -0.574822,
		40.456024, 31.638123, 23.655693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733200, 31.305412, 24.022854>,  <39.996006, 31.979389, 24.058088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733200, 31.305412, 24.022854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123413, 31.262541, 23.946064>,  <40.357540, 31.236818, 23.899990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123413, 31.262541, 23.946064>,  <39.733200, 31.305412, 24.022854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123413, 31.262541, 23.946064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062243, -0.702796, 0.708663,
		-0.210871, -0.703271, -0.678928,
		0.975530, -0.107178, -0.191973,
		40.416073, 31.230387, 23.888472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981354, 30.498289, 24.066998>,  <39.733200, 31.305412, 24.022854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981354, 30.498289, 24.066998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310390, 30.720636, 24.114931>,  <40.507812, 30.854044, 24.143692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310390, 30.720636, 24.114931>,  <39.981354, 30.498289, 24.066998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310390, 30.720636, 24.114931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189824, -0.467082, 0.863598,
		0.536020, -0.687637, -0.489733,
		0.822587, 0.555869, 0.119835,
		40.557167, 30.887398, 24.150881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469326, 30.018633, 24.353216>,  <39.981354, 30.498289, 24.066998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469326, 30.018633, 24.353216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610252, 30.385550, 24.427460>,  <40.694809, 30.605700, 24.472006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610252, 30.385550, 24.427460>,  <40.469326, 30.018633, 24.353216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610252, 30.385550, 24.427460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106064, -0.236182, 0.965903,
		0.929852, -0.320616, -0.180502,
		0.352315, 0.917291, 0.185609,
		40.715946, 30.660736, 24.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.211941, 35.675053, 20.224634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.819145, 35.725258, 20.168156>,  <42.583466, 35.755383, 20.134270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.819145, 35.725258, 20.168156>,  <43.211941, 35.675053, 20.224634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819145, 35.725258, 20.168156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142782, 0.003688, -0.989747,
		-0.123706, -0.992085, -0.021543,
		-0.981993, 0.125514, -0.141195,
		42.524548, 35.762913, 20.125797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022400, 35.082439, 19.787680>,  <43.211941, 35.675053, 20.224634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022400, 35.082439, 19.787680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.755981, 35.378162, 19.748049>,  <42.596130, 35.555595, 19.724270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.755981, 35.378162, 19.748049>,  <43.022400, 35.082439, 19.787680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755981, 35.378162, 19.748049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098127, -0.044826, -0.994164,
		-0.739430, -0.671879, -0.042690,
		-0.666044, 0.739304, -0.099075,
		42.556168, 35.599953, 19.718327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572529, 34.802933, 19.297838>,  <43.022400, 35.082439, 19.787680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572529, 34.802933, 19.297838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.495659, 35.195343, 19.308058>,  <42.449535, 35.430790, 19.314190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.495659, 35.195343, 19.308058>,  <42.572529, 34.802933, 19.297838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495659, 35.195343, 19.308058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037855, 0.018604, -0.999110,
		-0.980630, -0.192971, 0.033562,
		-0.192175, 0.981028, 0.025548,
		42.438007, 35.489651, 19.315722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969200, 34.966339, 18.825241>,  <42.572529, 34.802933, 19.297838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969200, 34.966339, 18.825241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.125542, 35.332115, 18.867245>,  <42.219349, 35.551582, 18.892447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.125542, 35.332115, 18.867245>,  <41.969200, 34.966339, 18.825241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125542, 35.332115, 18.867245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018919, 0.122040, -0.992345,
		-0.920257, 0.385878, 0.065000,
		0.390857, 0.914442, 0.105008,
		42.242798, 35.606449, 18.898746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675198, 35.366116, 18.325682>,  <41.969200, 34.966339, 18.825241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675198, 35.366116, 18.325682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.993717, 35.600735, 18.384838>,  <42.184830, 35.741505, 18.420332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.993717, 35.600735, 18.384838>,  <41.675198, 35.366116, 18.325682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993717, 35.600735, 18.384838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012842, 0.228037, -0.973568,
		-0.604767, 0.777150, 0.174053,
		0.796299, 0.586546, 0.147889,
		42.232609, 35.776699, 18.429205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494961, 36.116753, 18.060978>,  <41.675198, 35.366116, 18.325682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494961, 36.116753, 18.060978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889122, 36.049355, 18.070635>,  <42.125618, 36.008915, 18.076429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889122, 36.049355, 18.070635>,  <41.494961, 36.116753, 18.060978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889122, 36.049355, 18.070635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064233, 0.236741, -0.969447,
		0.157627, 0.956851, 0.244109,
		0.985407, -0.168491, 0.024145,
		42.184746, 35.998806, 18.077879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734215, 36.637630, 17.586725>,  <41.494961, 36.116753, 18.060978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734215, 36.637630, 17.586725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.059059, 36.406368, 17.618279>,  <42.253963, 36.267612, 17.637211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.059059, 36.406368, 17.618279>,  <41.734215, 36.637630, 17.586725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059059, 36.406368, 17.618279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375928, 0.415006, -0.828522,
		0.446273, 0.702504, 0.554373,
		0.812108, -0.578151, 0.078885,
		42.302692, 36.232922, 17.641945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376503, 37.062408, 17.487947>,  <41.734215, 36.637630, 17.586725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376503, 37.062408, 17.487947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.474857, 36.681416, 17.416040>,  <42.533871, 36.452820, 17.372896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.474857, 36.681416, 17.416040>,  <42.376503, 37.062408, 17.487947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474857, 36.681416, 17.416040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262266, 0.243921, -0.933659,
		0.933143, 0.182428, 0.309781,
		0.245888, -0.952482, -0.179769,
		42.548622, 36.395672, 17.362110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967358, 37.076992, 17.113489>,  <42.376503, 37.062408, 17.487947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967358, 37.076992, 17.113489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800674, 36.730827, 17.002192>,  <42.700665, 36.523129, 16.935413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800674, 36.730827, 17.002192>,  <42.967358, 37.076992, 17.113489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800674, 36.730827, 17.002192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006227, 0.303360, -0.952856,
		0.909020, -0.398792, -0.121023,
		-0.416705, -0.865412, -0.278243,
		42.675663, 36.471203, 16.918718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246521, 36.977516, 16.482986>,  <42.967358, 37.076992, 17.113489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246521, 36.977516, 16.482986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963612, 36.695686, 16.459862>,  <42.793865, 36.526588, 16.445988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963612, 36.695686, 16.459862>,  <43.246521, 36.977516, 16.482986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963612, 36.695686, 16.459862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193948, 0.272025, -0.942543,
		0.679818, -0.655421, -0.329046,
		-0.707271, -0.704575, -0.057810,
		42.751431, 36.484314, 16.442518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406506, 36.632935, 15.887509>,  <43.246521, 36.977516, 16.482986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406506, 36.632935, 15.887509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.015045, 36.621487, 15.968919>,  <42.780170, 36.614616, 16.017765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.015045, 36.621487, 15.968919>,  <43.406506, 36.632935, 15.887509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015045, 36.621487, 15.968919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200968, 0.340690, -0.918445,
		-0.043050, -0.939740, -0.339169,
		-0.978651, -0.028623, 0.203525,
		42.721451, 36.612900, 16.029976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062061, 36.151585, 15.438222>,  <43.406506, 36.632935, 15.887509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062061, 36.151585, 15.438222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.815426, 36.455315, 15.521411>,  <42.667446, 36.637550, 15.571324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.815426, 36.455315, 15.521411>,  <43.062061, 36.151585, 15.438222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815426, 36.455315, 15.521411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168817, 0.130502, -0.976970,
		-0.768976, -0.637494, 0.047721,
		-0.616585, 0.759323, 0.207972,
		42.630451, 36.683113, 15.583802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588619, 36.178936, 14.909894>,  <43.062061, 36.151585, 15.438222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588619, 36.178936, 14.909894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.583805, 36.552616, 15.052511>,  <42.580917, 36.776825, 15.138082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.583805, 36.552616, 15.052511>,  <42.588619, 36.178936, 14.909894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583805, 36.552616, 15.052511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454216, 0.312550, -0.834266,
		-0.890810, -0.171991, 0.420567,
		-0.012038, 0.934201, 0.356544,
		42.580193, 36.832878, 15.159474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855968, 36.406338, 14.971297>,  <42.588619, 36.178936, 14.909894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855968, 36.406338, 14.971297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104408, 36.717888, 14.936451>,  <42.253471, 36.904819, 14.915543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104408, 36.717888, 14.936451>,  <41.855968, 36.406338, 14.971297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104408, 36.717888, 14.936451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470865, 0.281986, -0.835925,
		-0.626515, 0.560213, 0.541886,
		0.621100, 0.778874, -0.087116,
		42.290737, 36.951550, 14.910316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446960, 35.758530, 15.043033>,  <41.855968, 36.406338, 14.971297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446960, 35.758530, 15.043033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098869, 35.565216, 15.004791>,  <40.890015, 35.449226, 14.981846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098869, 35.565216, 15.004791>,  <41.446960, 35.758530, 15.043033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098869, 35.565216, 15.004791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044382, -0.116365, 0.992214,
		-0.490646, 0.867696, 0.079815,
		-0.870228, -0.483284, -0.095604,
		40.837799, 35.420231, 14.976110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980213, 35.933910, 15.637993>,  <41.446960, 35.758530, 15.043033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980213, 35.933910, 15.637993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.867588, 35.576786, 15.497357>,  <40.800014, 35.362511, 15.412976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.867588, 35.576786, 15.497357>,  <40.980213, 35.933910, 15.637993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867588, 35.576786, 15.497357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328421, -0.254615, 0.909566,
		-0.901589, 0.371567, -0.221528,
		-0.281561, -0.892810, -0.351588,
		40.783119, 35.308945, 15.391881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358639, 35.781094, 15.971491>,  <40.980213, 35.933910, 15.637993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358639, 35.781094, 15.971491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489578, 35.421871, 15.853962>,  <40.568142, 35.206337, 15.783444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489578, 35.421871, 15.853962>,  <40.358639, 35.781094, 15.971491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489578, 35.421871, 15.853962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104512, -0.343458, 0.933335,
		-0.939106, -0.274818, -0.206288,
		0.327348, -0.898060, -0.293821,
		40.587784, 35.152454, 15.765816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999180, 35.280411, 16.354385>,  <40.358639, 35.781094, 15.971491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999180, 35.280411, 16.354385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293736, 35.059963, 16.197414>,  <40.470470, 34.927696, 16.103231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293736, 35.059963, 16.197414>,  <39.999180, 35.280411, 16.354385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293736, 35.059963, 16.197414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187128, -0.723321, 0.664673,
		-0.650161, -0.416026, -0.635777,
		0.736392, -0.551117, -0.392425,
		40.514652, 34.894627, 16.079687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730083, 34.563538, 16.384930>,  <39.999180, 35.280411, 16.354385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730083, 34.563538, 16.384930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.128773, 34.535519, 16.368786>,  <40.367989, 34.518707, 16.359100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.128773, 34.535519, 16.368786>,  <39.730083, 34.563538, 16.384930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128773, 34.535519, 16.368786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012454, -0.626318, 0.779468,
		-0.079877, -0.776414, -0.625141,
		0.996727, -0.070047, -0.040359,
		40.427792, 34.514503, 16.356678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869305, 33.863178, 16.412003>,  <39.730083, 34.563538, 16.384930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869305, 33.863178, 16.412003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.225594, 34.022686, 16.499262>,  <40.439369, 34.118393, 16.551617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.225594, 34.022686, 16.499262>,  <39.869305, 33.863178, 16.412003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225594, 34.022686, 16.499262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074897, -0.602129, 0.794878,
		0.448327, -0.691680, -0.566199,
		0.890726, 0.398772, 0.218146,
		40.492813, 34.142319, 16.564705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343555, 33.291229, 16.514380>,  <39.869305, 33.863178, 16.412003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343555, 33.291229, 16.514380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.520630, 33.587940, 16.715891>,  <40.626873, 33.765968, 16.836798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.520630, 33.587940, 16.715891>,  <40.343555, 33.291229, 16.514380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520630, 33.587940, 16.715891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174406, -0.622328, 0.763080,
		0.879551, -0.249944, -0.404867,
		0.442687, 0.741779, 0.503777,
		40.653435, 33.810474, 16.867023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961689, 32.979118, 16.877645>,  <40.343555, 33.291229, 16.514380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961689, 32.979118, 16.877645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905365, 33.339031, 17.042845>,  <40.871571, 33.554977, 17.141964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905365, 33.339031, 17.042845>,  <40.961689, 32.979118, 16.877645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905365, 33.339031, 17.042845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067610, -0.407443, 0.910725,
		0.987726, 0.156158, -0.003464,
		-0.140806, 0.899781, 0.413000,
		40.863125, 33.608967, 17.166744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500637, 32.948803, 17.361727>,  <40.961689, 32.979118, 16.877645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500637, 32.948803, 17.361727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.230141, 33.215393, 17.487265>,  <41.067841, 33.375347, 17.562588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.230141, 33.215393, 17.487265>,  <41.500637, 32.948803, 17.361727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230141, 33.215393, 17.487265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002401, -0.428021, 0.903765,
		0.736673, 0.610413, 0.291048,
		-0.676245, 0.666479, 0.313846,
		41.027267, 33.415337, 17.581419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760536, 33.140156, 18.072962>,  <41.500637, 32.948803, 17.361727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760536, 33.140156, 18.072962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.374252, 33.243034, 18.058786>,  <41.142483, 33.304760, 18.050282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.374252, 33.243034, 18.058786>,  <41.760536, 33.140156, 18.072962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374252, 33.243034, 18.058786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055413, -0.070828, 0.995948,
		0.253641, 0.963761, 0.082651,
		-0.965710, 0.257194, -0.035440,
		41.084538, 33.320194, 18.048155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617279, 33.655220, 18.559229>,  <41.760536, 33.140156, 18.072962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617279, 33.655220, 18.559229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.242741, 33.520199, 18.520641>,  <41.018017, 33.439186, 18.497490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.242741, 33.520199, 18.520641>,  <41.617279, 33.655220, 18.559229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242741, 33.520199, 18.520641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122687, 0.057171, 0.990797,
		-0.328931, 0.939569, -0.094945,
		-0.936351, -0.337552, -0.096468,
		40.961834, 33.418934, 18.491701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326931, 33.986698, 19.053101>,  <41.617279, 33.655220, 18.559229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326931, 33.986698, 19.053101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032719, 33.725906, 18.979437>,  <40.856194, 33.569431, 18.935238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032719, 33.725906, 18.979437>,  <41.326931, 33.986698, 19.053101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032719, 33.725906, 18.979437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198763, -0.052202, 0.978657,
		-0.647681, 0.756434, -0.091194,
		-0.735529, -0.651983, -0.184161,
		40.812061, 33.530312, 18.924189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807209, 34.160961, 19.591009>,  <41.326931, 33.986698, 19.053101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807209, 34.160961, 19.591009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.692242, 33.798393, 19.467205>,  <40.623260, 33.580853, 19.392921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.692242, 33.798393, 19.467205>,  <40.807209, 34.160961, 19.591009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692242, 33.798393, 19.467205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550649, -0.108033, 0.827716,
		-0.783695, 0.408331, -0.468069,
		-0.287415, -0.906419, -0.309512,
		40.606018, 33.526466, 19.374352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158455, 34.134007, 19.753202>,  <40.807209, 34.160961, 19.591009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158455, 34.134007, 19.753202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276100, 33.752235, 19.732935>,  <40.346687, 33.523174, 19.720776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276100, 33.752235, 19.732935>,  <40.158455, 34.134007, 19.753202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276100, 33.752235, 19.732935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525305, -0.205710, 0.825674,
		-0.798468, -0.216226, -0.561867,
		0.294114, -0.954426, -0.050668,
		40.364334, 33.465908, 19.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512203, 34.368530, 19.483292>,  <40.158455, 34.134007, 19.753202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512203, 34.368530, 19.483292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130585, 34.480988, 19.524775>,  <38.901615, 34.548462, 19.549664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130585, 34.480988, 19.524775>,  <39.512203, 34.368530, 19.483292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130585, 34.480988, 19.524775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016369, 0.296675, -0.954838,
		-0.299212, -0.912657, -0.278440,
		-0.954046, 0.281141, 0.103708,
		38.844372, 34.565331, 19.555887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209515, 34.129318, 18.865028>,  <39.512203, 34.368530, 19.483292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209515, 34.129318, 18.865028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.935886, 34.382927, 19.009287>,  <38.771709, 34.535091, 19.095842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.935886, 34.382927, 19.009287>,  <39.209515, 34.129318, 18.865028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935886, 34.382927, 19.009287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097117, 0.410860, -0.906511,
		-0.722922, -0.655142, -0.219482,
		-0.684070, 0.634021, 0.360645,
		38.730667, 34.573132, 19.117481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719437, 34.158123, 18.356882>,  <39.209515, 34.129318, 18.865028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719437, 34.158123, 18.356882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671120, 34.496319, 18.564941>,  <38.642128, 34.699238, 18.689777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671120, 34.496319, 18.564941>,  <38.719437, 34.158123, 18.356882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671120, 34.496319, 18.564941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047372, 0.518481, -0.853776,
		-0.991546, -0.127773, -0.022577,
		-0.120795, 0.845489, 0.520150,
		38.634880, 34.749966, 18.720987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145969, 34.409294, 18.044533>,  <38.719437, 34.158123, 18.356882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145969, 34.409294, 18.044533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306721, 34.734322, 18.213400>,  <38.403172, 34.929337, 18.314720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306721, 34.734322, 18.213400>,  <38.145969, 34.409294, 18.044533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306721, 34.734322, 18.213400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129116, 0.506715, -0.852390,
		-0.906544, 0.288049, 0.308553,
		0.401879, 0.812569, 0.422168,
		38.427284, 34.978092, 18.340050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726772, 34.920799, 17.782768>,  <38.145969, 34.409294, 18.044533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726772, 34.920799, 17.782768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013218, 35.128246, 17.969620>,  <38.185085, 35.252716, 18.081730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013218, 35.128246, 17.969620>,  <37.726772, 34.920799, 17.782768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013218, 35.128246, 17.969620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034700, 0.641978, -0.765937,
		-0.697117, 0.564710, 0.441736,
		0.716117, 0.518620, 0.467129,
		38.228054, 35.283833, 18.109758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571999, 35.678413, 17.851624>,  <37.726772, 34.920799, 17.782768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571999, 35.678413, 17.851624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970425, 35.643604, 17.844858>,  <38.209480, 35.622719, 17.840799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970425, 35.643604, 17.844858>,  <37.571999, 35.678413, 17.851624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970425, 35.643604, 17.844858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029460, 0.504879, -0.862687,
		0.083610, 0.858792, 0.505455,
		0.996063, -0.087020, -0.016913,
		38.269245, 35.617496, 17.839785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860573, 36.296421, 17.697916>,  <37.571999, 35.678413, 17.851624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860573, 36.296421, 17.697916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.162373, 36.046616, 17.617216>,  <38.343452, 35.896732, 17.568796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.162373, 36.046616, 17.617216>,  <37.860573, 36.296421, 17.697916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162373, 36.046616, 17.617216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118951, 0.432447, -0.893779,
		0.645426, 0.650361, 0.400570,
		0.754504, -0.624516, -0.201751,
		38.388725, 35.859261, 17.556690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030956, 37.033901, 18.047075>,  <37.860573, 36.296421, 17.697916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030956, 37.033901, 18.047075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878567, 37.392075, 18.139214>,  <37.787132, 37.606979, 18.194496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878567, 37.392075, 18.139214>,  <38.030956, 37.033901, 18.047075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878567, 37.392075, 18.139214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269787, -0.345952, 0.898628,
		0.884348, 0.280213, 0.373376,
		-0.380978, 0.895432, 0.230344,
		37.764275, 37.660706, 18.208317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309322, 37.223133, 18.789581>,  <38.030956, 37.033901, 18.047075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309322, 37.223133, 18.789581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966450, 37.413681, 18.711285>,  <37.760727, 37.528008, 18.664307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966450, 37.413681, 18.711285>,  <38.309322, 37.223133, 18.789581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966450, 37.413681, 18.711285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367148, -0.298686, 0.880903,
		0.361169, 0.826959, 0.430925,
		-0.857181, 0.476368, -0.195740,
		37.709297, 37.556591, 18.652563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158142, 37.409935, 19.469294>,  <38.309322, 37.223133, 18.789581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158142, 37.409935, 19.469294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827194, 37.496849, 19.262121>,  <37.628628, 37.548996, 19.137817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827194, 37.496849, 19.262121>,  <38.158142, 37.409935, 19.469294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827194, 37.496849, 19.262121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546637, -0.099641, 0.831420,
		0.129046, 0.971010, 0.201214,
		-0.827367, 0.217283, -0.517931,
		37.578983, 37.562035, 19.106741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954384, 37.845734, 19.844681>,  <38.158142, 37.409935, 19.469294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954384, 37.845734, 19.844681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654182, 37.700546, 19.623775>,  <37.474060, 37.613434, 19.491232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654182, 37.700546, 19.623775>,  <37.954384, 37.845734, 19.844681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654182, 37.700546, 19.623775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584820, -0.024421, 0.810795,
		-0.307781, 0.931481, -0.193944,
		-0.750504, -0.362970, -0.552265,
		37.429031, 37.591656, 19.458096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305706, 38.197304, 19.971775>,  <37.954384, 37.845734, 19.844681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305706, 38.197304, 19.971775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198376, 37.833523, 19.844721>,  <37.133976, 37.615253, 19.768488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198376, 37.833523, 19.844721>,  <37.305706, 38.197304, 19.971775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198376, 37.833523, 19.844721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566982, -0.117471, 0.815311,
		-0.778801, 0.398865, -0.484124,
		-0.268329, -0.909454, -0.317636,
		37.117878, 37.560688, 19.749430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585632, 38.117840, 20.086914>,  <37.305706, 38.197304, 19.971775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585632, 38.117840, 20.086914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.695370, 37.735874, 20.041512>,  <36.761211, 37.506695, 20.014269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.695370, 37.735874, 20.041512>,  <36.585632, 38.117840, 20.086914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695370, 37.735874, 20.041512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625226, -0.266804, 0.733422,
		-0.730636, -0.130238, -0.670230,
		0.274339, -0.954910, -0.113509,
		36.777672, 37.449402, 20.007460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897949, 37.654083, 20.117878>,  <36.585632, 38.117840, 20.086914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897949, 37.654083, 20.117878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229256, 37.457008, 20.224638>,  <36.428040, 37.338764, 20.288694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229256, 37.457008, 20.224638>,  <35.897949, 37.654083, 20.117878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229256, 37.457008, 20.224638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436994, -0.269819, 0.858041,
		-0.350735, -0.827317, -0.438784,
		0.828263, -0.492691, 0.266898,
		36.477734, 37.309200, 20.304707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.631252, 39.785744, 16.953588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.694904, 39.406277, 16.844257>,  <41.733093, 39.178596, 16.778658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.694904, 39.406277, 16.844257>,  <41.631252, 39.785744, 16.953588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694904, 39.406277, 16.844257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220737, -0.304036, 0.926735,
		-0.962265, -0.087136, -0.257787,
		0.159128, -0.948668, -0.273329,
		41.742641, 39.121677, 16.762259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135239, 39.394707, 17.363888>,  <41.631252, 39.785744, 16.953588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135239, 39.394707, 17.363888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404964, 39.125435, 17.242470>,  <41.566799, 38.963871, 17.169619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404964, 39.125435, 17.242470>,  <41.135239, 39.394707, 17.363888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404964, 39.125435, 17.242470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098132, -0.489102, 0.866689,
		-0.731898, -0.554630, -0.395867,
		0.674311, -0.673175, -0.303545,
		41.607258, 38.923481, 17.151405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864346, 38.711182, 17.495893>,  <41.135239, 39.394707, 17.363888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864346, 38.711182, 17.495893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.259293, 38.648304, 17.487963>,  <41.496262, 38.610577, 17.483204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.259293, 38.648304, 17.487963>,  <40.864346, 38.711182, 17.495893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259293, 38.648304, 17.487963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055535, -0.460565, 0.885887,
		-0.148387, -0.873596, -0.463477,
		0.987369, -0.157193, -0.019826,
		41.555504, 38.601147, 17.482016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922478, 37.960239, 17.595043>,  <40.864346, 38.711182, 17.495893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922478, 37.960239, 17.595043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.258423, 38.152737, 17.695469>,  <41.459991, 38.268234, 17.755724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.258423, 38.152737, 17.695469>,  <40.922478, 37.960239, 17.595043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258423, 38.152737, 17.695469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130825, -0.269429, 0.954093,
		0.526798, -0.834152, -0.163324,
		0.839862, 0.481247, 0.251063,
		41.510380, 38.297112, 17.770788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273800, 37.514282, 18.023813>,  <40.922478, 37.960239, 17.595043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273800, 37.514282, 18.023813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.450878, 37.863827, 18.104200>,  <41.557125, 38.073555, 18.152431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.450878, 37.863827, 18.104200>,  <41.273800, 37.514282, 18.023813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450878, 37.863827, 18.104200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159559, -0.143776, 0.976662,
		0.882363, -0.464427, 0.075784,
		0.442693, 0.873862, 0.200966,
		41.583687, 38.125984, 18.164490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902203, 37.373905, 18.523535>,  <41.273800, 37.514282, 18.023813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902203, 37.373905, 18.523535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.776863, 37.751575, 18.564217>,  <41.701660, 37.978176, 18.588625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.776863, 37.751575, 18.564217>,  <41.902203, 37.373905, 18.523535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776863, 37.751575, 18.564217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181151, -0.164562, 0.969589,
		0.932199, 0.285397, 0.222604,
		-0.313350, 0.944176, 0.101705,
		41.682858, 38.034828, 18.594728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229275, 37.565773, 19.166712>,  <41.902203, 37.373905, 18.523535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229275, 37.565773, 19.166712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.951263, 37.847145, 19.107222>,  <41.784458, 38.015968, 19.071527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.951263, 37.847145, 19.107222>,  <42.229275, 37.565773, 19.166712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951263, 37.847145, 19.107222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130250, 0.080247, 0.988229,
		0.707089, 0.706216, 0.035848,
		-0.695026, 0.703434, -0.148726,
		41.742756, 38.058174, 19.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332340, 38.079987, 19.749949>,  <42.229275, 37.565773, 19.166712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332340, 38.079987, 19.749949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.964077, 38.137634, 19.604832>,  <41.743118, 38.172222, 19.517761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.964077, 38.137634, 19.604832>,  <42.332340, 38.079987, 19.749949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964077, 38.137634, 19.604832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353167, 0.088456, 0.931369,
		0.166317, 0.985599, -0.030541,
		-0.920658, 0.144116, -0.362793,
		41.687878, 38.180870, 19.495995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116821, 38.620567, 20.089401>,  <42.332340, 38.079987, 19.749949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116821, 38.620567, 20.089401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.788010, 38.424026, 19.974276>,  <41.590721, 38.306103, 19.905201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.788010, 38.424026, 19.974276>,  <42.116821, 38.620567, 20.089401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788010, 38.424026, 19.974276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320345, -0.018844, 0.947113,
		-0.470787, 0.870759, -0.141911,
		-0.822033, -0.491349, -0.287815,
		41.541401, 38.276623, 19.887932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674263, 38.923473, 20.511145>,  <42.116821, 38.620567, 20.089401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674263, 38.923473, 20.511145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467052, 38.606930, 20.381289>,  <41.342728, 38.417004, 20.303375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467052, 38.606930, 20.381289>,  <41.674263, 38.923473, 20.511145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467052, 38.606930, 20.381289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489888, -0.036637, 0.871015,
		-0.701183, 0.610247, -0.368701,
		-0.518026, -0.791363, -0.324642,
		41.311646, 38.369522, 20.283895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927631, 39.084515, 20.578161>,  <41.674263, 38.923473, 20.511145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927631, 39.084515, 20.578161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.927723, 38.684517, 20.577324>,  <40.927776, 38.444519, 20.576820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.927723, 38.684517, 20.577324>,  <40.927631, 39.084515, 20.578161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927723, 38.684517, 20.577324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447809, -0.001976, 0.894127,
		-0.894129, 0.000732, -0.447809,
		0.000230, -0.999998, -0.002094,
		40.927792, 38.384518, 20.576696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287094, 38.905823, 20.935638>,  <40.927631, 39.084515, 20.578161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287094, 38.905823, 20.935638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.508457, 38.573853, 20.963823>,  <40.641273, 38.374672, 20.980734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.508457, 38.573853, 20.963823>,  <40.287094, 38.905823, 20.935638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508457, 38.573853, 20.963823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330253, -0.140977, 0.933305,
		-0.764638, -0.539770, -0.352103,
		0.553409, -0.829924, 0.070465,
		40.674480, 38.324875, 20.984962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556873, 38.755707, 20.756884>,  <40.287094, 38.905823, 20.935638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556873, 38.755707, 20.756884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378551, 39.102539, 20.845818>,  <39.271557, 39.310638, 20.899178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378551, 39.102539, 20.845818>,  <39.556873, 38.755707, 20.756884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378551, 39.102539, 20.845818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300337, 0.378874, -0.875358,
		-0.843240, -0.323466, -0.429320,
		-0.445807, 0.867078, 0.222333,
		39.244808, 39.362663, 20.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157230, 38.985283, 20.050257>,  <39.556873, 38.755707, 20.756884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157230, 38.985283, 20.050257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126114, 39.312328, 20.278450>,  <39.107445, 39.508556, 20.415365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126114, 39.312328, 20.278450>,  <39.157230, 38.985283, 20.050257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126114, 39.312328, 20.278450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212710, 0.572653, -0.791721,
		-0.974014, 0.059758, -0.218463,
		-0.077792, 0.817616, 0.570484,
		39.102776, 39.557613, 20.449594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642948, 39.450832, 19.771353>,  <39.157230, 38.985283, 20.050257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642948, 39.450832, 19.771353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.920597, 39.663361, 19.965631>,  <39.087185, 39.790878, 20.082199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.920597, 39.663361, 19.965631>,  <38.642948, 39.450832, 19.771353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920597, 39.663361, 19.965631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224794, 0.480986, -0.847420,
		-0.683863, 0.697391, 0.214424,
		0.694118, 0.531317, 0.485698,
		39.128834, 39.822758, 20.111341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443054, 40.156284, 19.747171>,  <38.642948, 39.450832, 19.771353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443054, 40.156284, 19.747171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.825413, 40.213116, 19.849993>,  <39.054829, 40.247215, 19.911686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.825413, 40.213116, 19.849993>,  <38.443054, 40.156284, 19.747171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825413, 40.213116, 19.849993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147126, 0.525847, -0.837758,
		-0.254200, 0.838629, 0.481751,
		0.955895, 0.142080, 0.257055,
		39.112183, 40.255741, 19.927109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564964, 40.942863, 19.601255>,  <38.443054, 40.156284, 19.747171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564964, 40.942863, 19.601255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926640, 40.773228, 19.621622>,  <39.143642, 40.671444, 19.633842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926640, 40.773228, 19.621622>,  <38.564964, 40.942863, 19.601255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926640, 40.773228, 19.621622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309809, 0.569083, -0.761684,
		0.294051, 0.704478, 0.645945,
		0.904186, -0.424093, 0.050914,
		39.197895, 40.646000, 19.636896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955631, 41.449604, 19.419661>,  <38.564964, 40.942863, 19.601255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955631, 41.449604, 19.419661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.194904, 41.132397, 19.373522>,  <39.338467, 40.942074, 19.345839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.194904, 41.132397, 19.373522>,  <38.955631, 41.449604, 19.419661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194904, 41.132397, 19.373522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268203, 0.333759, -0.903699,
		0.755145, 0.509641, 0.412338,
		0.598184, -0.793014, -0.115349,
		39.374359, 40.894493, 19.338917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611626, 41.659706, 19.349960>,  <38.955631, 41.449604, 19.419661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611626, 41.659706, 19.349960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598091, 41.298363, 19.178938>,  <39.589970, 41.081558, 19.076324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598091, 41.298363, 19.178938>,  <39.611626, 41.659706, 19.349960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598091, 41.298363, 19.178938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550090, 0.340337, -0.762609,
		0.834420, -0.260994, 0.485413,
		-0.033832, -0.903357, -0.427554,
		39.587940, 41.027355, 19.050673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306942, 41.555820, 18.897345>,  <39.611626, 41.659706, 19.349960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306942, 41.555820, 18.897345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.047474, 41.275558, 18.778475>,  <39.891792, 41.107403, 18.707153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.047474, 41.275558, 18.778475>,  <40.306942, 41.555820, 18.897345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047474, 41.275558, 18.778475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311323, 0.112029, -0.943678,
		0.694486, -0.704649, 0.145461,
		-0.648666, -0.700657, -0.297176,
		39.852875, 41.065361, 18.689322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732647, 41.038666, 18.521427>,  <40.306942, 41.555820, 18.897345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732647, 41.038666, 18.521427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357693, 40.995739, 18.388887>,  <40.132721, 40.969982, 18.309362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357693, 40.995739, 18.388887>,  <40.732647, 41.038666, 18.521427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357693, 40.995739, 18.388887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315127, 0.143860, -0.938083,
		0.148401, -0.983755, -0.101013,
		-0.937375, -0.107380, -0.331357,
		40.076477, 40.963547, 18.289482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840508, 40.711536, 17.859364>,  <40.732647, 41.038666, 18.521427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840508, 40.711536, 17.859364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.478420, 40.877285, 17.821669>,  <40.261169, 40.976734, 17.799051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.478420, 40.877285, 17.821669>,  <40.840508, 40.711536, 17.859364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478420, 40.877285, 17.821669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143241, 0.088749, -0.985700,
		-0.400086, -0.905769, -0.139693,
		-0.905214, 0.414375, -0.094236,
		40.206856, 41.001598, 17.793398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695866, 40.481003, 17.200289>,  <40.840508, 40.711536, 17.859364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695866, 40.481003, 17.200289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.459202, 40.789646, 17.293728>,  <40.317204, 40.974831, 17.349792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.459202, 40.789646, 17.293728>,  <40.695866, 40.481003, 17.200289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459202, 40.789646, 17.293728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035722, 0.314564, -0.948564,
		-0.805399, -0.552879, -0.213677,
		-0.591656, 0.771605, 0.233600,
		40.281704, 41.021126, 17.363808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310490, 40.615009, 16.608969>,  <40.695866, 40.481003, 17.200289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310490, 40.615009, 16.608969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306160, 40.971199, 16.790932>,  <40.303562, 41.184914, 16.900108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306160, 40.971199, 16.790932>,  <40.310490, 40.615009, 16.608969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306160, 40.971199, 16.790932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011424, 0.455014, -0.890411,
		-0.999876, -0.004444, -0.015099,
		-0.010828, 0.890474, 0.454907,
		40.302910, 41.238342, 16.927404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786602, 40.967556, 16.299723>,  <40.310490, 40.615009, 16.608969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786602, 40.967556, 16.299723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.026512, 41.258690, 16.432701>,  <40.170460, 41.433372, 16.512487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.026512, 41.258690, 16.432701>,  <39.786602, 40.967556, 16.299723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026512, 41.258690, 16.432701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118503, 0.491684, -0.862672,
		-0.791343, 0.478016, 0.381152,
		0.599778, 0.727837, 0.332445,
		40.206444, 41.477039, 16.532434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359337, 40.279289, 16.391006>,  <39.786602, 40.967556, 16.299723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359337, 40.279289, 16.391006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.029049, 40.129967, 16.221853>,  <38.830875, 40.040375, 16.120361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.029049, 40.129967, 16.221853>,  <39.359337, 40.279289, 16.391006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029049, 40.129967, 16.221853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202123, -0.504098, 0.839662,
		-0.526625, 0.778799, 0.340789,
		-0.825719, -0.373306, -0.422884,
		38.781334, 40.017975, 16.094988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911366, 40.314026, 16.959911>,  <39.359337, 40.279289, 16.391006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911366, 40.314026, 16.959911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729507, 40.057793, 16.712378>,  <38.620392, 39.904053, 16.563856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729507, 40.057793, 16.712378>,  <38.911366, 40.314026, 16.959911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729507, 40.057793, 16.712378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267761, -0.564355, 0.780902,
		-0.849472, 0.520732, 0.085059,
		-0.454644, -0.640579, -0.618836,
		38.593113, 39.865620, 16.526728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200417, 40.191479, 17.079222>,  <38.911366, 40.314026, 16.959911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200417, 40.191479, 17.079222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318775, 39.858150, 16.892450>,  <38.389790, 39.658154, 16.780388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318775, 39.858150, 16.892450>,  <38.200417, 40.191479, 17.079222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318775, 39.858150, 16.892450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363841, -0.550290, 0.751532,
		-0.883214, -0.052486, -0.466024,
		0.295893, -0.833322, -0.466927,
		38.407543, 39.608154, 16.752373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658215, 39.727535, 17.162394>,  <38.200417, 40.191479, 17.079222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658215, 39.727535, 17.162394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944435, 39.472076, 17.049175>,  <38.116169, 39.318802, 16.981243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944435, 39.472076, 17.049175>,  <37.658215, 39.727535, 17.162394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944435, 39.472076, 17.049175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362927, -0.686087, 0.630531,
		-0.596878, -0.348456, -0.722714,
		0.715557, -0.638642, -0.283046,
		38.159103, 39.280483, 16.964262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255554, 39.094929, 17.104923>,  <37.658215, 39.727535, 17.162394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255554, 39.094929, 17.104923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645950, 39.007797, 17.105406>,  <37.880188, 38.955521, 17.105696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645950, 39.007797, 17.105406>,  <37.255554, 39.094929, 17.104923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645950, 39.007797, 17.105406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158588, -0.706752, 0.689458,
		-0.149329, -0.673093, -0.724325,
		0.975988, -0.217825, 0.001206,
		37.938747, 38.942451, 17.105768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191414, 38.373585, 17.057745>,  <37.255554, 39.094929, 17.104923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191414, 38.373585, 17.057745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.570488, 38.427460, 17.173500>,  <37.797932, 38.459785, 17.242952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.570488, 38.427460, 17.173500>,  <37.191414, 38.373585, 17.057745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570488, 38.427460, 17.173500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076092, -0.785156, 0.614605,
		0.309991, -0.604475, -0.733836,
		0.947690, 0.134683, 0.289387,
		37.854794, 38.467865, 17.260317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455444, 37.660400, 17.012529>,  <37.191414, 38.373585, 17.057745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455444, 37.660400, 17.012529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665081, 37.888573, 17.265491>,  <37.790863, 38.025475, 17.417269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665081, 37.888573, 17.265491>,  <37.455444, 37.660400, 17.012529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665081, 37.888573, 17.265491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168118, -0.658649, 0.733429,
		0.834903, -0.490704, -0.249294,
		0.524094, 0.570432, 0.632403,
		37.822308, 38.059704, 17.455212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777885, 37.263985, 17.431564>,  <37.455444, 37.660400, 17.012529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777885, 37.263985, 17.431564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821148, 37.588226, 17.661774>,  <37.847107, 37.782772, 17.799900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821148, 37.588226, 17.661774>,  <37.777885, 37.263985, 17.431564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821148, 37.588226, 17.661774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091835, -0.568298, 0.817682,
		0.989883, -0.141294, 0.012974,
		0.108160, 0.810601, 0.575524,
		37.853596, 37.831406, 17.834431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399849, 36.718800, 17.409414>,  <37.777885, 37.263985, 17.431564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399849, 36.718800, 17.409414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.440166, 36.342949, 17.278610>,  <38.464359, 36.117439, 17.200129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.440166, 36.342949, 17.278610>,  <38.399849, 36.718800, 17.409414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440166, 36.342949, 17.278610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033589, 0.331709, -0.942784,
		0.994340, 0.084047, 0.064997,
		0.100798, -0.939630, -0.327008,
		38.470406, 36.061058, 17.180508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882984, 36.788082, 16.933516>,  <38.399849, 36.718800, 17.409414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882984, 36.788082, 16.933516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744297, 36.422638, 16.848574>,  <38.661083, 36.203369, 16.797609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744297, 36.422638, 16.848574>,  <38.882984, 36.788082, 16.933516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744297, 36.422638, 16.848574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133596, 0.175987, -0.975285,
		0.928405, -0.366522, 0.061037,
		-0.346722, -0.913614, -0.212353,
		38.640282, 36.148552, 16.784868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362389, 36.579765, 16.528572>,  <38.882984, 36.788082, 16.933516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362389, 36.579765, 16.528572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050030, 36.337666, 16.466776>,  <38.862614, 36.192406, 16.429699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050030, 36.337666, 16.466776>,  <39.362389, 36.579765, 16.528572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050030, 36.337666, 16.466776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105193, 0.116369, -0.987620,
		0.615738, -0.787481, -0.027204,
		-0.780897, -0.605253, -0.154491,
		38.815762, 36.156090, 16.420429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578156, 36.104099, 16.043152>,  <39.362389, 36.579765, 16.528572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578156, 36.104099, 16.043152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179455, 36.124004, 16.017851>,  <38.940235, 36.135948, 16.002670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179455, 36.124004, 16.017851>,  <39.578156, 36.104099, 16.043152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179455, 36.124004, 16.017851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056332, -0.129947, -0.989919,
		-0.057480, -0.990271, 0.126722,
		-0.996756, 0.049762, -0.063253,
		38.880428, 36.138935, 15.998875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513023, 35.634033, 15.432043>,  <39.578156, 36.104099, 16.043152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513023, 35.634033, 15.432043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140400, 35.770737, 15.481677>,  <38.916824, 35.852760, 15.511457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140400, 35.770737, 15.481677>,  <39.513023, 35.634033, 15.432043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140400, 35.770737, 15.481677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191641, -0.171508, -0.966364,
		-0.308984, -0.924005, 0.225265,
		-0.931559, 0.341761, 0.124084,
		38.860931, 35.873264, 15.518903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005611, 35.086788, 15.260434>,  <39.513023, 35.634033, 15.432043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005611, 35.086788, 15.260434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.853058, 35.447315, 15.178297>,  <38.761524, 35.663631, 15.129015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.853058, 35.447315, 15.178297>,  <39.005611, 35.086788, 15.260434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853058, 35.447315, 15.178297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226060, -0.306324, -0.924696,
		-0.896350, -0.306244, 0.320580,
		-0.381384, 0.901322, -0.205344,
		38.738644, 35.717712, 15.116693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392529, 34.888000, 15.007453>,  <39.005611, 35.086788, 15.260434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392529, 34.888000, 15.007453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463646, 35.266346, 14.898835>,  <38.506317, 35.493351, 14.833665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463646, 35.266346, 14.898835>,  <38.392529, 34.888000, 15.007453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463646, 35.266346, 14.898835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271043, -0.218198, -0.937510,
		-0.946004, 0.240288, 0.217574,
		0.177798, 0.945860, -0.271544,
		38.516987, 35.550102, 14.817372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893341, 35.060211, 14.649137>,  <38.392529, 34.888000, 15.007453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893341, 35.060211, 14.649137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.157169, 35.335644, 14.528589>,  <38.315464, 35.500904, 14.456261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.157169, 35.335644, 14.528589>,  <37.893341, 35.060211, 14.649137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157169, 35.335644, 14.528589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343064, -0.080965, -0.935816,
		-0.668789, 0.720622, 0.182827,
		0.659567, 0.688585, -0.301368,
		38.355038, 35.542221, 14.438179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600597, 35.575356, 14.312032>,  <37.893341, 35.060211, 14.649137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600597, 35.575356, 14.312032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.974518, 35.533901, 14.176146>,  <38.198872, 35.509029, 14.094614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.974518, 35.533901, 14.176146>,  <37.600597, 35.575356, 14.312032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974518, 35.533901, 14.176146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351680, -0.136281, -0.926147,
		0.049688, 0.985234, -0.163843,
		0.934801, -0.103639, -0.339716,
		38.254959, 35.502811, 14.074231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.862717, 31.121166, 29.036345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258690, 31.074265, 29.004637>,  <36.496273, 31.046124, 28.985613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258690, 31.074265, 29.004637>,  <35.862717, 31.121166, 29.036345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258690, 31.074265, 29.004637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108773, -0.271949, -0.956144,
		0.090554, 0.955142, -0.281966,
		0.989934, -0.117253, -0.079267,
		36.555672, 31.039089, 28.980856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159168, 31.528471, 28.536789>,  <35.862717, 31.121166, 29.036345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159168, 31.528471, 28.536789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421421, 31.226496, 28.542757>,  <36.578773, 31.045311, 28.546337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421421, 31.226496, 28.542757>,  <36.159168, 31.528471, 28.536789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421421, 31.226496, 28.542757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115870, 0.081066, -0.989951,
		0.746140, 0.650769, 0.140624,
		0.655629, -0.754936, 0.014918,
		36.618111, 31.000015, 28.547232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773121, 31.846853, 28.228621>,  <36.159168, 31.528471, 28.536789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773121, 31.846853, 28.228621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833927, 31.454599, 28.179237>,  <36.870411, 31.219246, 28.149607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833927, 31.454599, 28.179237>,  <36.773121, 31.846853, 28.228621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833927, 31.454599, 28.179237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331429, 0.168255, -0.928356,
		0.931152, 0.100211, 0.350590,
		0.152020, -0.980637, -0.123458,
		36.879532, 31.160408, 28.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438423, 31.757254, 27.933039>,  <36.773121, 31.846853, 28.228621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438423, 31.757254, 27.933039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228279, 31.426241, 27.853853>,  <37.102192, 31.227633, 27.806341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228279, 31.426241, 27.853853>,  <37.438423, 31.757254, 27.933039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228279, 31.426241, 27.853853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328235, 0.017551, -0.944433,
		0.785023, -0.561144, 0.262405,
		-0.525357, -0.827532, -0.197966,
		37.070671, 31.177980, 27.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843277, 31.400753, 27.421804>,  <37.438423, 31.757254, 27.933039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843277, 31.400753, 27.421804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508717, 31.182821, 27.397831>,  <37.307980, 31.052061, 27.383446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508717, 31.182821, 27.397831>,  <37.843277, 31.400753, 27.421804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508717, 31.182821, 27.397831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099676, -0.043666, -0.994061,
		0.538978, -0.837409, 0.090829,
		-0.836402, -0.544831, -0.059935,
		37.257797, 31.019373, 27.379850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069767, 30.869635, 27.081287>,  <37.843277, 31.400753, 27.421804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069767, 30.869635, 27.081287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672131, 30.893715, 27.045141>,  <37.433548, 30.908163, 27.023455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672131, 30.893715, 27.045141>,  <38.069767, 30.869635, 27.081287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672131, 30.893715, 27.045141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095210, 0.083190, -0.991975,
		-0.052203, -0.994714, -0.088430,
		-0.994088, 0.060204, -0.090364,
		37.373905, 30.911776, 27.018032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942093, 30.443979, 26.471201>,  <38.069767, 30.869635, 27.081287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942093, 30.443979, 26.471201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.620514, 30.677275, 26.517693>,  <37.427567, 30.817251, 26.545588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.620514, 30.677275, 26.517693>,  <37.942093, 30.443979, 26.471201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620514, 30.677275, 26.517693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095767, 0.065924, -0.993218,
		-0.586945, -0.809622, 0.002856,
		-0.803943, 0.583238, 0.116229,
		37.379330, 30.852245, 26.552561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434727, 30.285694, 25.879730>,  <37.942093, 30.443979, 26.471201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434727, 30.285694, 25.879730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345070, 30.643797, 26.033754>,  <37.291275, 30.858660, 26.126169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345070, 30.643797, 26.033754>,  <37.434727, 30.285694, 25.879730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345070, 30.643797, 26.033754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048418, 0.384395, -0.921898,
		-0.973353, -0.225281, -0.042813,
		-0.224143, 0.895259, 0.385060,
		37.277828, 30.912374, 26.149273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849831, 30.544483, 25.502882>,  <37.434727, 30.285694, 25.879730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849831, 30.544483, 25.502882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012997, 30.870567, 25.667336>,  <37.110897, 31.066217, 25.766008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012997, 30.870567, 25.667336>,  <36.849831, 30.544483, 25.502882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012997, 30.870567, 25.667336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032208, 0.437175, -0.898800,
		-0.912450, 0.379879, 0.152076,
		0.407919, 0.815212, 0.411135,
		37.135372, 31.115131, 25.790676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510586, 31.100435, 25.130739>,  <36.849831, 30.544483, 25.502882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510586, 31.100435, 25.130739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819069, 31.287802, 25.303167>,  <37.004158, 31.400221, 25.406624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819069, 31.287802, 25.303167>,  <36.510586, 31.100435, 25.130739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819069, 31.287802, 25.303167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154721, 0.518932, -0.840697,
		-0.617490, 0.715050, 0.327733,
		0.771212, 0.468415, 0.431068,
		37.050434, 31.428326, 25.432487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396778, 31.840813, 25.165625>,  <36.510586, 31.100435, 25.130739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396778, 31.840813, 25.165625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791317, 31.776073, 25.177807>,  <37.028042, 31.737230, 25.185116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791317, 31.776073, 25.177807>,  <36.396778, 31.840813, 25.165625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791317, 31.776073, 25.177807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094698, 0.406090, -0.908913,
		0.134738, 0.899387, 0.415872,
		0.986346, -0.161847, 0.030455,
		37.087219, 31.727520, 25.186943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588478, 32.503101, 24.903896>,  <36.396778, 31.840813, 25.165625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588478, 32.503101, 24.903896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896595, 32.253521, 24.851238>,  <37.081467, 32.103775, 24.819643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896595, 32.253521, 24.851238>,  <36.588478, 32.503101, 24.903896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896595, 32.253521, 24.851238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169728, 0.399604, -0.900838,
		0.614683, 0.671568, 0.413715,
		0.770297, -0.623949, -0.131646,
		37.127686, 32.066338, 24.811745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018467, 32.980812, 25.264116>,  <36.588478, 32.503101, 24.903896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018467, 32.980812, 25.264116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755280, 33.276680, 25.320633>,  <36.597366, 33.454201, 25.354544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755280, 33.276680, 25.320633>,  <37.018467, 32.980812, 25.264116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755280, 33.276680, 25.320633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276009, -0.411445, 0.868638,
		0.700643, 0.532536, 0.474874,
		-0.657966, 0.739674, 0.141291,
		36.557888, 33.498581, 25.363020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105747, 33.058449, 25.957285>,  <37.018467, 32.980812, 25.264116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105747, 33.058449, 25.957285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782223, 33.282230, 25.884800>,  <36.588108, 33.416500, 25.841309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782223, 33.282230, 25.884800>,  <37.105747, 33.058449, 25.957285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782223, 33.282230, 25.884800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309927, -0.143637, 0.939848,
		0.499774, 0.816320, 0.289565,
		-0.808808, 0.559456, -0.181214,
		36.539581, 33.450066, 25.830437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957928, 33.474934, 26.487709>,  <37.105747, 33.058449, 25.957285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957928, 33.474934, 26.487709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595818, 33.428295, 26.324301>,  <36.378551, 33.400311, 26.226255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595818, 33.428295, 26.324301>,  <36.957928, 33.474934, 26.487709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595818, 33.428295, 26.324301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367942, -0.265516, 0.891134,
		-0.212371, 0.957030, 0.197463,
		-0.905272, -0.116596, -0.408520,
		36.324238, 33.393318, 26.201744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531254, 33.848778, 26.964386>,  <36.957928, 33.474934, 26.487709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531254, 33.848778, 26.964386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277111, 33.609844, 26.768625>,  <36.124626, 33.466484, 26.651169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277111, 33.609844, 26.768625>,  <36.531254, 33.848778, 26.964386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277111, 33.609844, 26.768625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594313, -0.026423, 0.803800,
		-0.493069, 0.801556, -0.338216,
		-0.635354, -0.597335, -0.489403,
		36.086506, 33.430645, 26.621803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836792, 34.203197, 26.967829>,  <36.531254, 33.848778, 26.964386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836792, 34.203197, 26.967829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794464, 33.808144, 26.921572>,  <35.769066, 33.571110, 26.893818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794464, 33.808144, 26.921572>,  <35.836792, 34.203197, 26.967829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794464, 33.808144, 26.921572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666919, -0.015768, 0.744964,
		-0.737578, 0.155958, -0.657005,
		-0.105823, -0.987638, -0.115641,
		35.762718, 33.511852, 26.886879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090496, 34.053288, 26.971777>,  <35.836792, 34.203197, 26.967829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090496, 34.053288, 26.971777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281700, 33.716999, 27.073515>,  <35.396423, 33.515224, 27.134558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281700, 33.716999, 27.073515>,  <35.090496, 34.053288, 26.971777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281700, 33.716999, 27.073515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611560, -0.110708, 0.783414,
		-0.630477, -0.530025, -0.567073,
		0.478009, -0.840725, 0.254343,
		35.425102, 33.464783, 27.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515053, 33.745556, 27.175083>,  <35.090496, 34.053288, 26.971777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515053, 33.745556, 27.175083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838406, 33.557388, 27.316633>,  <35.032417, 33.444489, 27.401564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838406, 33.557388, 27.316633>,  <34.515053, 33.745556, 27.175083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838406, 33.557388, 27.316633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467603, -0.147974, 0.871465,
		-0.357593, -0.869946, -0.339590,
		0.808378, -0.470423, 0.353875,
		35.080917, 33.416260, 27.422796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223835, 33.134632, 27.354076>,  <34.515053, 33.745556, 27.175083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223835, 33.134632, 27.354076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563229, 33.177921, 27.561289>,  <34.766865, 33.203896, 27.685616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563229, 33.177921, 27.561289>,  <34.223835, 33.134632, 27.354076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563229, 33.177921, 27.561289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525747, 0.060490, 0.848487,
		0.060490, -0.992285, 0.108223,
		-0.848487, -0.108223, -0.518032,
		34.817776, 33.210388, 27.716698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199188, 32.682827, 27.926554>,  <34.223835, 33.134632, 27.354076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199188, 32.682827, 27.926554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489887, 32.930367, 28.045794>,  <34.664307, 33.078888, 28.117336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489887, 32.930367, 28.045794>,  <34.199188, 32.682827, 27.926554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489887, 32.930367, 28.045794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414239, 0.048667, 0.908866,
		0.547940, -0.784003, 0.291719,
		0.726751, 0.618846, 0.298099,
		34.707912, 33.116020, 28.135223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278584, 32.514221, 28.689640>,  <34.199188, 32.682827, 27.926554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278584, 32.514221, 28.689640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454334, 32.872929, 28.668674>,  <34.559784, 33.088154, 28.656096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454334, 32.872929, 28.668674>,  <34.278584, 32.514221, 28.689640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454334, 32.872929, 28.668674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331372, 0.216037, 0.918434,
		0.834950, -0.386169, 0.392087,
		0.439376, 0.896773, -0.052414,
		34.586147, 33.141960, 28.652950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517433, 32.711395, 29.363146>,  <34.278584, 32.514221, 28.689640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517433, 32.711395, 29.363146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491432, 33.050930, 29.153286>,  <34.475830, 33.254650, 29.027370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491432, 33.050930, 29.153286>,  <34.517433, 32.711395, 29.363146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491432, 33.050930, 29.153286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365982, 0.468843, 0.803892,
		0.928349, 0.244270, 0.280180,
		-0.065007, 0.848833, -0.524649,
		34.471931, 33.305580, 28.995892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878174, 33.284302, 29.687550>,  <34.517433, 32.711395, 29.363146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878174, 33.284302, 29.687550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587902, 33.437569, 29.458963>,  <34.413738, 33.529530, 29.321812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587902, 33.437569, 29.458963>,  <34.878174, 33.284302, 29.687550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587902, 33.437569, 29.458963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334152, 0.529775, 0.779539,
		0.601446, 0.756649, -0.256408,
		-0.725676, 0.383172, -0.571467,
		34.370201, 33.552521, 29.287523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871571, 34.090076, 29.848940>,  <34.878174, 33.284302, 29.687550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871571, 34.090076, 29.848940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518539, 33.979977, 29.696466>,  <34.306721, 33.913918, 29.604982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518539, 33.979977, 29.696466>,  <34.871571, 34.090076, 29.848940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518539, 33.979977, 29.696466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469662, 0.553897, 0.687470,
		0.021910, 0.785771, -0.618129,
		-0.882574, -0.275250, -0.381183,
		34.253769, 33.897400, 29.582111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536228, 34.739704, 29.893702>,  <34.871571, 34.090076, 29.848940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536228, 34.739704, 29.893702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276451, 34.437511, 29.859131>,  <34.120586, 34.256195, 29.838388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276451, 34.437511, 29.859131>,  <34.536228, 34.739704, 29.893702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276451, 34.437511, 29.859131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523022, 0.361301, 0.771952,
		-0.551971, 0.546541, -0.629778,
		-0.649443, -0.755483, -0.086425,
		34.081619, 34.210865, 29.833204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797558, 34.987206, 29.834034>,  <34.536228, 34.739704, 29.893702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797558, 34.987206, 29.834034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860329, 34.641842, 30.025827>,  <33.897991, 34.434624, 30.140903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860329, 34.641842, 30.025827>,  <33.797558, 34.987206, 29.834034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860329, 34.641842, 30.025827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552262, 0.325781, 0.767381,
		-0.818768, -0.385220, -0.425704,
		0.156924, -0.863407, 0.479481,
		33.907406, 34.382820, 30.169672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240067, 35.223286, 29.297348>,  <33.797558, 34.987206, 29.834034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240067, 35.223286, 29.297348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583389, 35.271362, 29.496891>,  <34.789383, 35.300209, 29.616617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583389, 35.271362, 29.496891>,  <34.240067, 35.223286, 29.297348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583389, 35.271362, 29.496891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349459, 0.574973, -0.739786,
		-0.375743, 0.809296, 0.451505,
		0.858309, 0.120187, 0.498859,
		34.840881, 35.307419, 29.646549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418808, 36.062096, 29.455647>,  <34.240067, 35.223286, 29.297348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418808, 36.062096, 29.455647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733803, 35.817841, 29.422216>,  <34.922802, 35.671288, 29.402159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733803, 35.817841, 29.422216>,  <34.418808, 36.062096, 29.455647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733803, 35.817841, 29.422216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394726, 0.603831, -0.692517,
		0.473340, 0.512362, 0.716544,
		0.787490, -0.610634, -0.083575,
		34.970051, 35.634651, 29.397144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782368, 36.593624, 29.632629>,  <34.418808, 36.062096, 29.455647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782368, 36.593624, 29.632629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944290, 36.312107, 29.399118>,  <35.041443, 36.143196, 29.259012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944290, 36.312107, 29.399118>,  <34.782368, 36.593624, 29.632629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944290, 36.312107, 29.399118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441872, 0.709502, -0.548959,
		0.800548, -0.035731, 0.598202,
		0.404810, -0.703797, -0.583779,
		35.065735, 36.100967, 29.223984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531345, 36.676834, 29.526125>,  <34.782368, 36.593624, 29.632629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531345, 36.676834, 29.526125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418785, 36.463421, 29.207088>,  <35.351250, 36.335373, 29.015667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418785, 36.463421, 29.207088>,  <35.531345, 36.676834, 29.526125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418785, 36.463421, 29.207088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570082, 0.575651, -0.586202,
		0.771894, -0.619650, 0.142171,
		-0.281399, -0.533535, -0.797593,
		35.334366, 36.303360, 28.967810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082237, 36.640179, 29.100239>,  <35.531345, 36.676834, 29.526125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082237, 36.640179, 29.100239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774727, 36.569366, 28.854425>,  <35.590221, 36.526878, 28.706938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774727, 36.569366, 28.854425>,  <36.082237, 36.640179, 29.100239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774727, 36.569366, 28.854425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365970, 0.666251, -0.649751,
		0.524459, -0.724410, -0.447407,
		-0.768771, -0.177030, -0.614533,
		35.544094, 36.516258, 28.670065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384747, 36.564430, 28.572121>,  <36.082237, 36.640179, 29.100239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384747, 36.564430, 28.572121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013706, 36.608822, 28.429436>,  <35.791080, 36.635456, 28.343824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013706, 36.608822, 28.429436>,  <36.384747, 36.564430, 28.572121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013706, 36.608822, 28.429436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325516, 0.708622, -0.626015,
		0.183299, -0.696807, -0.693442,
		-0.927599, 0.110978, -0.356711,
		35.735428, 36.642117, 28.322422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467354, 36.470089, 27.854885>,  <36.384747, 36.564430, 28.572121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467354, 36.470089, 27.854885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130074, 36.677025, 27.913357>,  <35.927704, 36.801186, 27.948441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130074, 36.677025, 27.913357>,  <36.467354, 36.470089, 27.854885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130074, 36.677025, 27.913357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270717, 0.643537, -0.715942,
		-0.464457, -0.564111, -0.682685,
		-0.843203, 0.517338, 0.146181,
		35.877113, 36.832226, 27.957211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119835, 36.513935, 27.200657>,  <36.467354, 36.470089, 27.854885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119835, 36.513935, 27.200657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970524, 36.822933, 27.406147>,  <35.880939, 37.008331, 27.529442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970524, 36.822933, 27.406147>,  <36.119835, 36.513935, 27.200657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970524, 36.822933, 27.406147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226294, 0.612839, -0.757113,
		-0.899699, -0.166357, -0.403568,
		-0.373273, 0.772499, 0.513725,
		35.858543, 37.054684, 27.560265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570297, 36.884487, 26.764170>,  <36.119835, 36.513935, 27.200657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570297, 36.884487, 26.764170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735046, 37.151489, 27.012299>,  <35.833897, 37.311691, 27.161175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735046, 37.151489, 27.012299>,  <35.570297, 36.884487, 26.764170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735046, 37.151489, 27.012299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245822, 0.574114, -0.781002,
		-0.877459, 0.474160, 0.072372,
		0.411870, 0.667507, 0.620321,
		35.858608, 37.351742, 27.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444664, 37.470402, 26.408607>,  <35.570297, 36.884487, 26.764170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444664, 37.470402, 26.408607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.701481, 37.599197, 26.686916>,  <35.855572, 37.676476, 26.853903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.701481, 37.599197, 26.686916>,  <35.444664, 37.470402, 26.408607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701481, 37.599197, 26.686916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368716, 0.666001, -0.648453,
		-0.672180, 0.672879, 0.308881,
		0.642046, 0.321988, 0.695774,
		35.894096, 37.695793, 26.895649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289700, 38.231728, 26.508303>,  <35.444664, 37.470402, 26.408607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289700, 38.231728, 26.508303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655727, 38.158241, 26.651907>,  <35.875343, 38.114151, 26.738070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655727, 38.158241, 26.651907>,  <35.289700, 38.231728, 26.508303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655727, 38.158241, 26.651907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390452, 0.626395, -0.674668,
		-0.100938, 0.757548, 0.644928,
		0.915073, -0.183713, 0.359013,
		35.930248, 38.103127, 26.759611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649414, 38.926723, 26.649488>,  <35.289700, 38.231728, 26.508303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649414, 38.926723, 26.649488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917793, 38.635372, 26.593929>,  <36.078823, 38.460560, 26.560595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917793, 38.635372, 26.593929>,  <35.649414, 38.926723, 26.649488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917793, 38.635372, 26.593929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471113, 0.563394, -0.678704,
		0.572606, 0.389941, 0.721158,
		0.670951, -0.728377, -0.138896,
		36.119080, 38.416859, 26.552259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309998, 39.264172, 26.510923>,  <35.649414, 38.926723, 26.649488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309998, 39.264172, 26.510923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364613, 38.893944, 26.369688>,  <36.397381, 38.671806, 26.284946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364613, 38.893944, 26.369688>,  <36.309998, 39.264172, 26.510923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364613, 38.893944, 26.369688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666689, 0.349483, -0.658322,
		0.732724, -0.145513, 0.664787,
		0.136537, -0.925574, -0.353086,
		36.405575, 38.616272, 26.263762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054306, 39.235233, 26.258539>,  <36.309998, 39.264172, 26.510923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054306, 39.235233, 26.258539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.888390, 38.918831, 26.078648>,  <36.788837, 38.728989, 25.970713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.888390, 38.918831, 26.078648>,  <37.054306, 39.235233, 26.258539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888390, 38.918831, 26.078648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603592, 0.130658, -0.786514,
		0.680898, -0.597694, 0.423249,
		-0.414794, -0.791006, -0.449728,
		36.763950, 38.681530, 25.943729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573761, 38.860332, 26.019979>,  <37.054306, 39.235233, 26.258539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573761, 38.860332, 26.019979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261215, 38.741795, 25.800289>,  <37.073689, 38.670670, 25.668476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261215, 38.741795, 25.800289>,  <37.573761, 38.860332, 26.019979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261215, 38.741795, 25.800289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585878, -0.045169, -0.809140,
		0.214980, -0.954011, 0.208917,
		-0.781365, -0.296349, -0.549223,
		37.026806, 38.652889, 25.635523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792782, 38.249496, 25.576479>,  <37.573761, 38.860332, 26.019979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792782, 38.249496, 25.576479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456612, 38.396233, 25.416922>,  <37.254910, 38.484272, 25.321188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456612, 38.396233, 25.416922>,  <37.792782, 38.249496, 25.576479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456612, 38.396233, 25.416922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366638, -0.157158, -0.916994,
		-0.399077, -0.916914, -0.002417,
		-0.840425, 0.366837, -0.398894,
		37.204483, 38.506283, 25.297253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759109, 37.816242, 25.084202>,  <37.792782, 38.249496, 25.576479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759109, 37.816242, 25.084202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509365, 38.108398, 24.973421>,  <37.359516, 38.283691, 24.906952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509365, 38.108398, 24.973421>,  <37.759109, 37.816242, 25.084202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509365, 38.108398, 24.973421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307920, -0.095710, -0.946586,
		-0.717882, -0.676294, -0.165143,
		-0.624365, 0.730387, -0.276953,
		37.322056, 38.327515, 24.890335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343391, 37.573227, 24.466946>,  <37.759109, 37.816242, 25.084202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343391, 37.573227, 24.466946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303871, 37.970558, 24.443129>,  <37.280159, 38.208958, 24.428839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303871, 37.970558, 24.443129>,  <37.343391, 37.573227, 24.466946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303871, 37.970558, 24.443129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407763, -0.014169, -0.912978,
		-0.907727, -0.114484, -0.403641,
		-0.098802, 0.993324, -0.059544,
		37.274231, 38.268555, 24.425266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072159, 37.746834, 23.821512>,  <37.343391, 37.573227, 24.466946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072159, 37.746834, 23.821512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259727, 38.080574, 23.937426>,  <37.372269, 38.280819, 24.006973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259727, 38.080574, 23.937426>,  <37.072159, 37.746834, 23.821512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259727, 38.080574, 23.937426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390577, 0.098384, -0.915298,
		-0.792190, 0.542383, -0.279744,
		0.468919, 0.834351, 0.289781,
		37.400402, 38.330879, 24.024361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915703, 38.229038, 23.301800>,  <37.072159, 37.746834, 23.821512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915703, 38.229038, 23.301800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236061, 38.396439, 23.473110>,  <37.428276, 38.496880, 23.575897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236061, 38.396439, 23.473110>,  <36.915703, 38.229038, 23.301800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236061, 38.396439, 23.473110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262224, 0.397879, -0.879165,
		-0.538331, 0.816427, 0.208921,
		0.800899, 0.418497, 0.428277,
		37.476330, 38.521988, 23.601593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990917, 38.706528, 22.878160>,  <36.915703, 38.229038, 23.301800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990917, 38.706528, 22.878160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.335686, 38.728806, 23.079752>,  <37.542545, 38.742172, 23.200706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.335686, 38.728806, 23.079752>,  <36.990917, 38.706528, 22.878160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335686, 38.728806, 23.079752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409176, 0.510617, -0.756205,
		-0.299456, 0.858003, 0.417322,
		0.861917, 0.055692, 0.503981,
		37.594261, 38.745514, 23.230946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231647, 39.370129, 22.810108>,  <36.990917, 38.706528, 22.878160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231647, 39.370129, 22.810108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560020, 39.155766, 22.888962>,  <37.757046, 39.027145, 22.936274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560020, 39.155766, 22.888962>,  <37.231647, 39.370129, 22.810108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560020, 39.155766, 22.888962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432877, 0.358923, -0.826917,
		0.372399, 0.764180, 0.526637,
		0.820936, -0.535912, 0.197133,
		37.806301, 38.994991, 22.948101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854691, 39.897373, 22.966354>,  <37.231647, 39.370129, 22.810108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854691, 39.897373, 22.966354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959175, 39.535229, 22.832434>,  <38.021866, 39.317944, 22.752081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959175, 39.535229, 22.832434>,  <37.854691, 39.897373, 22.966354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959175, 39.535229, 22.832434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484625, 0.422962, -0.765664,
		0.834811, 0.037743, 0.549241,
		0.261207, -0.905361, -0.334802,
		38.037537, 39.263622, 22.731993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389267, 40.085583, 22.615904>,  <37.854691, 39.897373, 22.966354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389267, 40.085583, 22.615904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347321, 39.704636, 22.501356>,  <38.322155, 39.476067, 22.432627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347321, 39.704636, 22.501356>,  <38.389267, 40.085583, 22.615904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347321, 39.704636, 22.501356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515083, 0.194311, -0.834825,
		0.850702, -0.235047, 0.470170,
		-0.104864, -0.952364, -0.286369,
		38.315861, 39.418926, 22.415445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046822, 39.873215, 22.381710>,  <38.389267, 40.085583, 22.615904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046822, 39.873215, 22.381710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820103, 39.604202, 22.191364>,  <38.684071, 39.442795, 22.077156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820103, 39.604202, 22.191364>,  <39.046822, 39.873215, 22.381710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820103, 39.604202, 22.191364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547607, 0.123999, -0.827497,
		0.615521, -0.729610, 0.297998,
		-0.566799, -0.672527, -0.475864,
		38.650063, 39.402443, 22.048605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511555, 39.409554, 22.018738>,  <39.046822, 39.873215, 22.381710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511555, 39.409554, 22.018738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162071, 39.352444, 21.832729>,  <38.952381, 39.318176, 21.721125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162071, 39.352444, 21.832729>,  <39.511555, 39.409554, 22.018738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162071, 39.352444, 21.832729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440899, 0.171452, -0.881029,
		0.205526, -0.974791, -0.086845,
		-0.873709, -0.142785, -0.465022,
		38.899960, 39.309612, 21.693222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665253, 39.005341, 21.463451>,  <39.511555, 39.409554, 22.018738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665253, 39.005341, 21.463451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.315693, 39.169868, 21.359831>,  <39.105957, 39.268585, 21.297659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.315693, 39.169868, 21.359831>,  <39.665253, 39.005341, 21.463451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315693, 39.169868, 21.359831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376839, 0.236622, -0.895546,
		-0.307062, -0.880240, -0.361787,
		-0.873903, 0.411323, -0.259051,
		39.053520, 39.293266, 21.282116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877285, 38.271801, 21.164062>,  <39.665253, 39.005341, 21.463451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877285, 38.271801, 21.164062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.249115, 38.137058, 21.223955>,  <40.472214, 38.056213, 21.259892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.249115, 38.137058, 21.223955>,  <39.877285, 38.271801, 21.164062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249115, 38.137058, 21.223955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307008, -0.482585, 0.820279,
		-0.204061, -0.808478, -0.552017,
		0.929572, -0.336861, 0.149732,
		40.527988, 38.035999, 21.268875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786209, 37.564888, 21.217487>,  <39.877285, 38.271801, 21.164062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786209, 37.564888, 21.217487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.129421, 37.671371, 21.393177>,  <40.335350, 37.735260, 21.498590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.129421, 37.671371, 21.393177>,  <39.786209, 37.564888, 21.217487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129421, 37.671371, 21.393177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222826, -0.577563, 0.785347,
		0.462743, -0.771722, -0.436249,
		0.858031, 0.266206, 0.439223,
		40.386829, 37.751232, 21.524944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094307, 36.888771, 21.476515>,  <39.786209, 37.564888, 21.217487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094307, 36.888771, 21.476515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.257515, 37.188797, 21.684715>,  <40.355442, 37.368813, 21.809635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.257515, 37.188797, 21.684715>,  <40.094307, 36.888771, 21.476515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257515, 37.188797, 21.684715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181570, -0.492061, 0.851415,
		0.894735, -0.441904, -0.064583,
		0.408022, 0.750065, 0.520500,
		40.379921, 37.413815, 21.840866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584564, 36.705811, 22.031219>,  <40.094307, 36.888771, 21.476515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584564, 36.705811, 22.031219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440208, 37.053165, 22.167259>,  <40.353596, 37.261578, 22.248884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440208, 37.053165, 22.167259>,  <40.584564, 36.705811, 22.031219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440208, 37.053165, 22.167259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232030, -0.436814, 0.869112,
		0.903285, 0.234737, 0.359132,
		-0.360887, 0.868385, 0.340102,
		40.331944, 37.313683, 22.269289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727978, 36.537395, 22.647062>,  <40.584564, 36.705811, 22.031219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727978, 36.537395, 22.647062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509777, 36.870960, 22.680578>,  <40.378857, 37.071098, 22.700687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509777, 36.870960, 22.680578>,  <40.727978, 36.537395, 22.647062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509777, 36.870960, 22.680578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327492, -0.304115, 0.894574,
		0.771476, 0.460553, 0.438994,
		-0.545503, 0.833910, 0.083790,
		40.346127, 37.121132, 22.705715>
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
