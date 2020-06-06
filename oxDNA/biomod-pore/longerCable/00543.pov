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
	<24.544975, 35.229939, 34.859806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297256, 34.924576, 34.786396>,  <24.148624, 34.741360, 34.742352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297256, 34.924576, 34.786396>,  <24.544975, 35.229939, 34.859806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297256, 34.924576, 34.786396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473618, -0.176797, -0.862803,
		0.626223, -0.621252, 0.471053,
		-0.619299, -0.763406, -0.183521,
		24.111467, 34.695553, 34.731339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001728, 35.349045, 35.406212>,  <24.544975, 35.229939, 34.859806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001728, 35.349045, 35.406212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645262, 35.392948, 35.582291>,  <24.431381, 35.419292, 35.687939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645262, 35.392948, 35.582291>,  <25.001728, 35.349045, 35.406212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645262, 35.392948, 35.582291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452358, 0.288925, 0.843739,
		-0.034574, 0.951038, -0.307133,
		-0.891166, 0.109763, 0.440199,
		24.377913, 35.425877, 35.714352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.818037, 36.043594, 35.656982>,  <25.001728, 35.349045, 35.406212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.818037, 36.043594, 35.656982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682709, 35.749359, 35.891743>,  <24.601511, 35.572819, 36.032597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682709, 35.749359, 35.891743>,  <24.818037, 36.043594, 35.656982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682709, 35.749359, 35.891743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622410, 0.292852, 0.725841,
		-0.705793, 0.610858, 0.358759,
		-0.338323, -0.735588, 0.586897,
		24.581211, 35.528683, 36.067810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316748, 36.153690, 36.309559>,  <24.818037, 36.043594, 35.656982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316748, 36.153690, 36.309559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586771, 35.859379, 36.331181>,  <24.748785, 35.682793, 36.344154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586771, 35.859379, 36.331181>,  <24.316748, 36.153690, 36.309559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586771, 35.859379, 36.331181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472618, 0.487549, 0.734118,
		-0.566507, -0.470022, 0.676867,
		0.675057, -0.735782, 0.054059,
		24.789288, 35.638645, 36.347397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597095, 36.231392, 37.030243>,  <24.316748, 36.153690, 36.309559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597095, 36.231392, 37.030243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871239, 35.997547, 36.856571>,  <25.035725, 35.857239, 36.752369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871239, 35.997547, 36.856571>,  <24.597095, 36.231392, 37.030243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871239, 35.997547, 36.856571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715359, 0.428992, 0.551569,
		-0.136197, -0.688614, 0.712223,
		0.685356, -0.584617, -0.434178,
		25.076845, 35.822163, 36.726318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067251, 35.910221, 37.538490>,  <24.597095, 36.231392, 37.030243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067251, 35.910221, 37.538490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268456, 35.947094, 37.194752>,  <25.389177, 35.969219, 36.988506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268456, 35.947094, 37.194752>,  <25.067251, 35.910221, 37.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268456, 35.947094, 37.194752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717249, 0.510235, 0.474567,
		0.482217, -0.855081, 0.190537,
		0.503011, 0.092182, -0.859349,
		25.419359, 35.974751, 36.936947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758991, 35.541695, 37.502094>,  <25.067251, 35.910221, 37.538490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758991, 35.541695, 37.502094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762077, 35.858368, 37.257740>,  <25.763929, 36.048370, 37.111130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762077, 35.858368, 37.257740>,  <25.758991, 35.541695, 37.502094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762077, 35.858368, 37.257740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790378, 0.369405, 0.488714,
		0.612570, -0.486599, -0.622880,
		0.007713, 0.791683, -0.610884,
		25.764391, 36.095871, 37.074474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349287, 35.846581, 37.916565>,  <25.758991, 35.541695, 37.502094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349287, 35.846581, 37.916565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251331, 35.871555, 37.529549>,  <26.192558, 35.886539, 37.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251331, 35.871555, 37.529549>,  <26.349287, 35.846581, 37.916565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251331, 35.871555, 37.529549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631311, 0.767652, -0.110254,
		0.735849, -0.637818, -0.227406,
		-0.244891, 0.062434, -0.967538,
		26.177864, 35.890285, 37.239288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867613, 35.583378, 37.464275>,  <26.349287, 35.846581, 37.916565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867613, 35.583378, 37.464275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653374, 35.875328, 37.294373>,  <26.524830, 36.050499, 37.192432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653374, 35.875328, 37.294373>,  <26.867613, 35.583378, 37.464275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653374, 35.875328, 37.294373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811068, 0.584673, -0.018055,
		0.235165, -0.354175, -0.905128,
		-0.535599, 0.729875, -0.424755,
		26.492695, 36.094292, 37.166946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296549, 35.872734, 36.884636>,  <26.867613, 35.583378, 37.464275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296549, 35.872734, 36.884636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032001, 36.142887, 37.015148>,  <26.873274, 36.304977, 37.093456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032001, 36.142887, 37.015148>,  <27.296549, 35.872734, 36.884636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032001, 36.142887, 37.015148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740553, 0.657014, 0.141117,
		-0.119061, 0.334955, -0.934681,
		-0.661367, 0.675379, 0.326277,
		26.833591, 36.345501, 37.113029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556278, 36.510460, 36.670692>,  <27.296549, 35.872734, 36.884636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556278, 36.510460, 36.670692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282143, 36.621620, 36.939938>,  <27.117661, 36.688316, 37.101486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282143, 36.621620, 36.939938>,  <27.556278, 36.510460, 36.670692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282143, 36.621620, 36.939938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620888, 0.705997, 0.340686,
		-0.380536, 0.651412, -0.656395,
		-0.685339, 0.277904, 0.673111,
		27.076540, 36.704990, 37.141872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340147, 37.300079, 36.577560>,  <27.556278, 36.510460, 36.670692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340147, 37.300079, 36.577560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299011, 37.127617, 36.936119>,  <27.274330, 37.024139, 37.151253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299011, 37.127617, 36.936119>,  <27.340147, 37.300079, 36.577560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299011, 37.127617, 36.936119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730998, 0.578402, 0.362069,
		-0.674586, 0.692499, 0.255692,
		-0.102840, -0.431156, 0.896397,
		27.268160, 36.998268, 37.205040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427895, 37.816109, 37.056103>,  <27.340147, 37.300079, 36.577560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427895, 37.816109, 37.056103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499634, 37.491077, 37.277931>,  <27.542677, 37.296059, 37.411026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499634, 37.491077, 37.277931>,  <27.427895, 37.816109, 37.056103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499634, 37.491077, 37.277931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837361, 0.421979, 0.347507,
		-0.516393, 0.402048, 0.756105,
		0.179346, -0.812583, 0.554567,
		27.553438, 37.247303, 37.444302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307720, 38.010933, 37.846668>,  <27.427895, 37.816109, 37.056103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307720, 38.010933, 37.846668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565470, 37.751190, 37.685116>,  <27.720119, 37.595345, 37.588184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565470, 37.751190, 37.685116>,  <27.307720, 38.010933, 37.846668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565470, 37.751190, 37.685116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749549, 0.431668, 0.501835,
		-0.151524, -0.626100, 0.764878,
		0.644373, -0.649354, -0.403885,
		27.758781, 37.556385, 37.563950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276369, 37.511238, 38.512348>,  <27.307720, 38.010933, 37.846668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276369, 37.511238, 38.512348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621464, 37.692844, 38.601387>,  <27.828522, 37.801807, 38.654812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621464, 37.692844, 38.601387>,  <27.276369, 37.511238, 38.512348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621464, 37.692844, 38.601387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381991, 0.873639, -0.301393,
		-0.331308, 0.174994, 0.927153,
		0.862739, 0.454018, 0.222597,
		27.880285, 37.829048, 38.668167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885401, 36.877434, 38.356255>,  <27.276369, 37.511238, 38.512348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885401, 36.877434, 38.356255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981089, 36.962166, 37.977222>,  <27.038502, 37.013004, 37.749805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981089, 36.962166, 37.977222>,  <26.885401, 36.877434, 38.356255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981089, 36.962166, 37.977222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880207, -0.364665, -0.303734,
		-0.409889, 0.906722, 0.099223,
		0.239219, 0.211834, -0.947576,
		27.052855, 37.025715, 37.692951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281908, 37.129585, 38.009064>,  <26.885401, 36.877434, 38.356255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281908, 37.129585, 38.009064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522919, 36.982502, 37.725727>,  <26.667524, 36.894253, 37.555725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522919, 36.982502, 37.725727>,  <26.281908, 37.129585, 38.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522919, 36.982502, 37.725727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790380, -0.398057, -0.465672,
		-0.110729, 0.840441, -0.530470,
		0.602526, -0.367710, -0.708344,
		26.703676, 36.872189, 37.513226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896984, 37.201145, 37.372456>,  <26.281908, 37.129585, 38.009064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896984, 37.201145, 37.372456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180790, 36.943531, 37.258049>,  <26.351074, 36.788963, 37.189407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180790, 36.943531, 37.258049>,  <25.896984, 37.201145, 37.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180790, 36.943531, 37.258049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666132, -0.480548, -0.570387,
		0.229909, 0.595220, -0.769971,
		0.709514, -0.644039, -0.286013,
		26.393644, 36.750320, 37.172245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766527, 37.103199, 36.670174>,  <25.896984, 37.201145, 37.372456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766527, 37.103199, 36.670174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989355, 36.799938, 36.805752>,  <26.123053, 36.617981, 36.887100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989355, 36.799938, 36.805752>,  <25.766527, 37.103199, 36.670174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989355, 36.799938, 36.805752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601748, -0.649779, -0.464420,
		0.572340, 0.054753, -0.818186,
		0.557069, -0.758148, 0.338947,
		26.156475, 36.572495, 36.907436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788246, 36.635712, 36.079048>,  <25.766527, 37.103199, 36.670174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788246, 36.635712, 36.079048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872629, 36.409615, 36.398048>,  <25.923258, 36.273956, 36.589447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872629, 36.409615, 36.398048>,  <25.788246, 36.635712, 36.079048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872629, 36.409615, 36.398048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628870, -0.703079, -0.331969,
		0.748345, -0.431491, -0.503781,
		0.210956, -0.565240, 0.797497,
		25.935917, 36.240044, 36.637299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095791, 35.947880, 35.910316>,  <25.788246, 36.635712, 36.079048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095791, 35.947880, 35.910316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879885, 35.938370, 36.246910>,  <25.750341, 35.932663, 36.448864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879885, 35.938370, 36.246910>,  <26.095791, 35.947880, 35.910316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879885, 35.938370, 36.246910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672563, -0.588988, -0.448054,
		0.506273, -0.807792, 0.301926,
		-0.539765, -0.023773, 0.841480,
		25.717955, 35.931236, 36.499355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941040, 35.173695, 36.165279>,  <26.095791, 35.947880, 35.910316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941040, 35.173695, 36.165279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662086, 35.435448, 36.282204>,  <25.494715, 35.592499, 36.352360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662086, 35.435448, 36.282204>,  <25.941040, 35.173695, 36.165279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662086, 35.435448, 36.282204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710265, -0.576493, -0.403955,
		-0.095824, -0.489329, 0.866819,
		-0.697382, 0.654380, 0.292312,
		25.452871, 35.631763, 36.369896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305492, 34.513885, 36.152195>,  <25.941040, 35.173695, 36.165279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305492, 34.513885, 36.152195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547073, 34.221214, 36.025772>,  <26.692022, 34.045612, 35.949921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547073, 34.221214, 36.025772>,  <26.305492, 34.513885, 36.152195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547073, 34.221214, 36.025772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720942, 0.670591, -0.174788,
		0.339831, -0.122293, 0.932501,
		0.603951, -0.731678, -0.316054,
		26.728258, 34.001713, 35.930958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882881, 34.534420, 36.653355>,  <26.305492, 34.513885, 36.152195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882881, 34.534420, 36.653355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935703, 34.393303, 36.282822>,  <26.967396, 34.308632, 36.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935703, 34.393303, 36.282822>,  <26.882881, 34.534420, 36.653355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935703, 34.393303, 36.282822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625355, 0.754727, -0.198288,
		0.769086, -0.553105, 0.320285,
		0.132054, -0.352792, -0.926337,
		26.975319, 34.287464, 36.004921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552835, 34.162971, 36.414871>,  <26.882881, 34.534420, 36.653355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552835, 34.162971, 36.414871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349131, 34.409664, 36.174774>,  <27.226908, 34.557682, 36.030716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349131, 34.409664, 36.174774>,  <27.552835, 34.162971, 36.414871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349131, 34.409664, 36.174774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752716, 0.657319, 0.036757,
		0.417219, -0.433092, -0.798974,
		-0.509261, 0.616735, -0.600242,
		27.196352, 34.594685, 35.994701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091675, 34.430565, 36.002403>,  <27.552835, 34.162971, 36.414871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091675, 34.430565, 36.002403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772039, 34.671028, 35.999172>,  <27.580259, 34.815308, 35.997234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772039, 34.671028, 35.999172>,  <28.091675, 34.430565, 36.002403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772039, 34.671028, 35.999172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593165, 0.786125, -0.173674,
		-0.098056, -0.143572, -0.984770,
		-0.799087, 0.601161, -0.008078,
		27.532314, 34.851376, 35.996750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804831, 34.291801, 36.282284>,  <28.091675, 34.430565, 36.002403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804831, 34.291801, 36.282284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566778, 33.973892, 36.234707>,  <28.423946, 33.783146, 36.206161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566778, 33.973892, 36.234707>,  <28.804831, 34.291801, 36.282284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566778, 33.973892, 36.234707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480954, -0.470826, 0.739599,
		-0.643817, 0.382954, 0.662455,
		-0.595133, -0.794776, -0.118942,
		28.388239, 33.735458, 36.199024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476135, 34.100193, 36.857704>,  <28.804831, 34.291801, 36.282284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476135, 34.100193, 36.857704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509392, 33.773586, 36.629181>,  <28.529345, 33.577621, 36.492069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509392, 33.773586, 36.629181>,  <28.476135, 34.100193, 36.857704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509392, 33.773586, 36.629181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500212, -0.461643, 0.732581,
		-0.861903, -0.346679, 0.370051,
		0.083139, -0.816517, -0.571304,
		28.534334, 33.528633, 36.457790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285376, 33.577736, 37.276764>,  <28.476135, 34.100193, 36.857704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285376, 33.577736, 37.276764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482708, 33.392200, 36.982422>,  <28.601107, 33.280880, 36.805817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482708, 33.392200, 36.982422>,  <28.285376, 33.577736, 37.276764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482708, 33.392200, 36.982422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457976, -0.580706, 0.673081,
		-0.739515, -0.669054, -0.074053,
		0.493331, -0.463839, -0.735851,
		28.630707, 33.253048, 36.761665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259491, 32.922283, 37.466797>,  <28.285376, 33.577736, 37.276764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259491, 32.922283, 37.466797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610943, 32.979385, 37.284531>,  <28.821814, 33.013645, 37.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610943, 32.979385, 37.284531>,  <28.259491, 32.922283, 37.466797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610943, 32.979385, 37.284531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470107, -0.425902, 0.773050,
		-0.083712, -0.893437, -0.441320,
		0.878630, 0.142754, -0.455664,
		28.874533, 33.022213, 37.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601377, 32.620289, 38.039440>,  <28.259491, 32.922283, 37.466797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601377, 32.620289, 38.039440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883186, 32.672398, 37.760391>,  <29.052271, 32.703663, 37.592960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883186, 32.672398, 37.760391>,  <28.601377, 32.620289, 38.039440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883186, 32.672398, 37.760391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606919, -0.620092, 0.497127,
		-0.367828, -0.773637, -0.515934,
		0.704522, 0.130273, -0.697623,
		29.094543, 32.711479, 37.551105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843658, 31.943100, 37.818802>,  <28.601377, 32.620289, 38.039440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843658, 31.943100, 37.818802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129072, 32.219639, 37.773354>,  <29.300320, 32.385563, 37.746086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129072, 32.219639, 37.773354>,  <28.843658, 31.943100, 37.818802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129072, 32.219639, 37.773354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668975, -0.624099, 0.403698,
		0.208188, -0.364059, -0.907810,
		0.713534, 0.691347, -0.113616,
		29.343132, 32.427044, 37.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345781, 31.633486, 37.575695>,  <28.843658, 31.943100, 37.818802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345781, 31.633486, 37.575695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526316, 31.940491, 37.757782>,  <29.634636, 32.124695, 37.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526316, 31.940491, 37.757782>,  <29.345781, 31.633486, 37.575695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526316, 31.940491, 37.757782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640249, -0.633865, 0.433932,
		0.621594, 0.095604, -0.777484,
		0.451334, 0.767513, 0.455216,
		29.661716, 32.170746, 37.894348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968103, 31.672110, 37.256573>,  <29.345781, 31.633486, 37.575695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968103, 31.672110, 37.256573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036890, 31.855492, 37.605343>,  <30.078161, 31.965521, 37.814606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036890, 31.855492, 37.605343>,  <29.968103, 31.672110, 37.256573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036890, 31.855492, 37.605343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310246, -0.865270, 0.393769,
		0.934973, 0.202796, -0.291030,
		0.171965, 0.458455, 0.871922,
		30.088480, 31.993029, 37.866920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755297, 31.563139, 37.534592>,  <29.968103, 31.672110, 37.256573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755297, 31.563139, 37.534592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514961, 31.602331, 37.851929>,  <30.370760, 31.625847, 38.042332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514961, 31.602331, 37.851929>,  <30.755297, 31.563139, 37.534592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514961, 31.602331, 37.851929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420874, -0.804985, 0.418168,
		0.679603, 0.585149, 0.442427,
		-0.600837, 0.097982, 0.793344,
		30.334709, 31.631725, 38.089931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276033, 31.915674, 38.027248>,  <30.755297, 31.563139, 37.534592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276033, 31.915674, 38.027248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934307, 31.921829, 38.235062>,  <30.729271, 31.925522, 38.359749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934307, 31.921829, 38.235062>,  <31.276033, 31.915674, 38.027248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934307, 31.921829, 38.235062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421169, -0.565241, 0.709309,
		0.304574, 0.824782, 0.476413,
		-0.854313, 0.015387, 0.519530,
		30.678013, 31.926445, 38.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422428, 32.064198, 38.713737>,  <31.276033, 31.915674, 38.027248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422428, 32.064198, 38.713737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067142, 31.880526, 38.719795>,  <30.853971, 31.770323, 38.723431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067142, 31.880526, 38.719795>,  <31.422428, 32.064198, 38.713737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067142, 31.880526, 38.719795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277623, -0.510181, 0.814027,
		-0.366059, 0.727235, 0.580629,
		-0.888215, -0.459178, 0.015141,
		30.800678, 31.742773, 38.724339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189426, 32.082844, 39.483307>,  <31.422428, 32.064198, 38.713737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189426, 32.082844, 39.483307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975487, 31.797016, 39.302940>,  <30.847122, 31.625521, 39.194721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975487, 31.797016, 39.302940>,  <31.189426, 32.082844, 39.483307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975487, 31.797016, 39.302940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156739, -0.608311, 0.778069,
		-0.830282, 0.345472, 0.437356,
		-0.534849, -0.714568, -0.450920,
		30.815031, 31.582645, 39.167664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732061, 32.089165, 40.080475>,  <31.189426, 32.082844, 39.483307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732061, 32.089165, 40.080475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525455, 31.808901, 40.277363>,  <30.401491, 31.640741, 40.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525455, 31.808901, 40.277363>,  <30.732061, 32.089165, 40.080475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525455, 31.808901, 40.277363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025771, -0.561859, -0.826832,
		0.855890, -0.439757, 0.272153,
		-0.516516, -0.700663, 0.492222,
		30.370501, 31.598701, 40.425030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175066, 31.499603, 39.949650>,  <30.732061, 32.089165, 40.080475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175066, 31.499603, 39.949650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798706, 31.394564, 40.035210>,  <30.572891, 31.331541, 40.086548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798706, 31.394564, 40.035210>,  <31.175066, 31.499603, 39.949650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798706, 31.394564, 40.035210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006073, -0.618374, -0.785861,
		0.338637, -0.740713, 0.580231,
		-0.940898, -0.262597, 0.213903,
		30.516438, 31.315784, 40.099380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513716, 30.793091, 39.924206>,  <31.175066, 31.499603, 39.949650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513716, 30.793091, 39.924206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154829, 30.616575, 39.930691>,  <30.939497, 30.510666, 39.934582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154829, 30.616575, 39.930691>,  <31.513716, 30.793091, 39.924206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154829, 30.616575, 39.930691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326915, 0.639092, -0.696196,
		0.296863, -0.629939, -0.717669,
		-0.897217, -0.441291, 0.016214,
		30.885664, 30.484188, 39.935555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239790, 30.601723, 39.168251>,  <31.513716, 30.793091, 39.924206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239790, 30.601723, 39.168251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937742, 30.689854, 39.415234>,  <30.756514, 30.742731, 39.563423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937742, 30.689854, 39.415234>,  <31.239790, 30.601723, 39.168251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937742, 30.689854, 39.415234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300023, 0.721287, -0.624285,
		-0.582911, -0.656660, -0.478553,
		-0.755117, 0.220325, 0.617459,
		30.711206, 30.755951, 39.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717068, 30.466261, 38.684509>,  <31.239790, 30.601723, 39.168251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717068, 30.466261, 38.684509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663345, 30.723600, 38.985989>,  <30.631111, 30.878004, 39.166878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663345, 30.723600, 38.985989>,  <30.717068, 30.466261, 38.684509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663345, 30.723600, 38.985989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389425, 0.665132, -0.637140,
		-0.911213, -0.379083, 0.161204,
		-0.134307, 0.643347, 0.753702,
		30.623053, 30.916605, 39.212101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005095, 30.689404, 38.745071>,  <30.717068, 30.466261, 38.684509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005095, 30.689404, 38.745071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267139, 30.962946, 38.873550>,  <30.424366, 31.127071, 38.950638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267139, 30.962946, 38.873550>,  <30.005095, 30.689404, 38.745071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267139, 30.962946, 38.873550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396667, 0.673142, -0.624128,
		-0.643027, 0.281464, 0.712246,
		0.655112, 0.683856, 0.321201,
		30.463673, 31.168102, 38.969910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573004, 31.313555, 38.743450>,  <30.005095, 30.689404, 38.745071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573004, 31.313555, 38.743450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956387, 31.427385, 38.735729>,  <30.186417, 31.495684, 38.731094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956387, 31.427385, 38.735729>,  <29.573004, 31.313555, 38.743450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956387, 31.427385, 38.735729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233364, 0.743458, -0.626746,
		-0.164004, 0.605216, 0.778984,
		0.958459, 0.284576, -0.019306,
		30.243925, 31.512758, 38.729939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638378, 32.051826, 39.043770>,  <29.573004, 31.313555, 38.743450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638378, 32.051826, 39.043770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920017, 31.960434, 38.774834>,  <30.089001, 31.905598, 38.613472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920017, 31.960434, 38.774834>,  <29.638378, 32.051826, 39.043770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920017, 31.960434, 38.774834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139772, 0.883706, -0.446685,
		0.696210, 0.408485, 0.590281,
		0.704099, -0.228482, -0.672340,
		30.131247, 31.891890, 38.573132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063042, 32.632355, 38.953854>,  <29.638378, 32.051826, 39.043770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063042, 32.632355, 38.953854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057022, 32.397682, 38.629982>,  <30.053410, 32.256878, 38.435658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057022, 32.397682, 38.629982>,  <30.063042, 32.632355, 38.953854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057022, 32.397682, 38.629982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403686, 0.744406, -0.531882,
		0.914774, 0.318851, -0.248037,
		-0.015049, -0.586681, -0.809679,
		30.052507, 32.221680, 38.387077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303484, 33.147072, 38.464336>,  <30.063042, 32.632355, 38.953854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303484, 33.147072, 38.464336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114746, 32.855385, 38.266102>,  <30.001503, 32.680374, 38.147160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114746, 32.855385, 38.266102>,  <30.303484, 33.147072, 38.464336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114746, 32.855385, 38.266102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343203, 0.669671, -0.658599,
		0.812142, -0.140668, -0.566249,
		-0.471844, -0.729214, -0.495591,
		29.973192, 32.636620, 38.117424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084610, 33.463886, 37.827927>,  <30.303484, 33.147072, 38.464336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084610, 33.463886, 37.827927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884924, 33.124203, 37.759083>,  <29.765112, 32.920391, 37.717777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884924, 33.124203, 37.759083>,  <30.084610, 33.463886, 37.827927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884924, 33.124203, 37.759083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294850, 0.353266, -0.887844,
		0.814767, -0.392480, -0.426747,
		-0.499217, -0.849213, -0.172107,
		29.735159, 32.869438, 37.707451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186737, 33.145916, 37.246952>,  <30.084610, 33.463886, 37.827927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186737, 33.145916, 37.246952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818655, 32.995159, 37.289238>,  <29.597805, 32.904705, 37.314610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818655, 32.995159, 37.289238>,  <30.186737, 33.145916, 37.246952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818655, 32.995159, 37.289238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295060, 0.490385, -0.820038,
		0.257222, -0.785796, -0.562460,
		-0.920205, -0.376891, 0.105719,
		29.542593, 32.882092, 37.320953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960962, 33.050854, 36.470299>,  <30.186737, 33.145916, 37.246952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960962, 33.050854, 36.470299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638456, 33.070354, 36.706116>,  <29.444952, 33.082054, 36.847607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638456, 33.070354, 36.706116>,  <29.960962, 33.050854, 36.470299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638456, 33.070354, 36.706116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532869, 0.372914, -0.759596,
		-0.256880, -0.926584, -0.274689,
		-0.806265, 0.048752, 0.589542,
		29.396576, 33.084980, 36.882977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386412, 32.735691, 36.142647>,  <29.960962, 33.050854, 36.470299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386412, 32.735691, 36.142647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227104, 33.000221, 36.396900>,  <29.131519, 33.158939, 36.549454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227104, 33.000221, 36.396900>,  <29.386412, 32.735691, 36.142647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227104, 33.000221, 36.396900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639585, 0.296506, -0.709236,
		-0.657506, -0.689006, 0.304887,
		-0.398268, 0.661328, 0.635632,
		29.107624, 33.198620, 36.587589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550970, 31.987478, 36.081390>,  <29.386412, 32.735691, 36.142647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550970, 31.987478, 36.081390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562366, 31.654238, 36.302345>,  <29.569204, 31.454294, 36.434917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562366, 31.654238, 36.302345>,  <29.550970, 31.987478, 36.081390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562366, 31.654238, 36.302345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844646, -0.315590, -0.432407,
		0.534566, -0.454252, -0.712667,
		0.028489, -0.833101, 0.552386,
		29.570913, 31.404306, 36.468060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809063, 31.426102, 35.681454>,  <29.550970, 31.987478, 36.081390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809063, 31.426102, 35.681454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541140, 31.337694, 35.965004>,  <29.380386, 31.284649, 36.135136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541140, 31.337694, 35.965004>,  <29.809063, 31.426102, 35.681454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541140, 31.337694, 35.965004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720212, -0.038951, -0.692659,
		0.180705, -0.974491, -0.133094,
		-0.669806, -0.221023, 0.708879,
		29.340199, 31.271387, 36.177670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537825, 30.722931, 35.623093>,  <29.809063, 31.426102, 35.681454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537825, 30.722931, 35.623093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270151, 30.959957, 35.802452>,  <29.109547, 31.102173, 35.910069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270151, 30.959957, 35.802452>,  <29.537825, 30.722931, 35.623093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270151, 30.959957, 35.802452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683376, -0.253723, -0.684559,
		-0.291879, -0.764518, 0.574734,
		-0.669181, 0.592568, 0.448397,
		29.069397, 31.137728, 35.936970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888582, 30.387287, 35.627331>,  <29.537825, 30.722931, 35.623093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888582, 30.387287, 35.627331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779213, 30.770353, 35.663361>,  <28.713591, 31.000193, 35.684978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779213, 30.770353, 35.663361>,  <28.888582, 30.387287, 35.627331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779213, 30.770353, 35.663361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752045, -0.154453, -0.640759,
		-0.599723, -0.242937, 0.762440,
		-0.273425, 0.957667, 0.090070,
		28.697186, 31.057653, 35.690380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215117, 30.346628, 35.654179>,  <28.888582, 30.387287, 35.627331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215117, 30.346628, 35.654179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278778, 30.732298, 35.569290>,  <28.316975, 30.963699, 35.518356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278778, 30.732298, 35.569290>,  <28.215117, 30.346628, 35.654179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278778, 30.732298, 35.569290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679830, -0.048841, -0.731741,
		-0.715891, 0.260735, 0.647701,
		0.159156, 0.964174, -0.212221,
		28.326525, 31.021549, 35.505623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538624, 30.738165, 35.653069>,  <28.215117, 30.346628, 35.654179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538624, 30.738165, 35.653069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806078, 30.904150, 35.406254>,  <27.966551, 31.003740, 35.258163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806078, 30.904150, 35.406254>,  <27.538624, 30.738165, 35.653069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806078, 30.904150, 35.406254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665440, -0.036403, -0.745563,
		-0.331842, 0.909111, 0.251791,
		0.668633, 0.414961, -0.617039,
		28.006668, 31.028639, 35.221142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774672, 31.095356, 36.220615>,  <27.538624, 30.738165, 35.653069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774672, 31.095356, 36.220615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886469, 31.416241, 36.431648>,  <27.953547, 31.608772, 36.558266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886469, 31.416241, 36.431648>,  <27.774672, 31.095356, 36.220615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886469, 31.416241, 36.431648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664904, -0.234691, 0.709100,
		0.692666, -0.548977, 0.467801,
		0.279491, 0.802212, 0.527580,
		27.970316, 31.656904, 36.589924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569448, 30.535847, 36.675804>,  <27.774672, 31.095356, 36.220615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569448, 30.535847, 36.675804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706093, 30.364258, 37.010296>,  <27.788078, 30.261305, 37.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706093, 30.364258, 37.010296>,  <27.569448, 30.535847, 36.675804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706093, 30.364258, 37.010296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562691, -0.619318, -0.547562,
		0.752783, 0.657593, 0.029813,
		0.341609, -0.428971, 0.836234,
		27.808577, 30.235567, 37.261166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836084, 30.418539, 36.805725>,  <27.569448, 30.535847, 36.675804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836084, 30.418539, 36.805725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497753, 30.631805, 36.798676>,  <26.294754, 30.759766, 36.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497753, 30.631805, 36.798676>,  <26.836084, 30.418539, 36.805725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497753, 30.631805, 36.798676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481216, 0.748326, -0.456552,
		-0.230229, -0.394645, -0.889522,
		-0.845828, 0.533164, -0.017623,
		26.244005, 30.791754, 36.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542543, 30.557491, 36.017090>,  <26.836084, 30.418539, 36.805725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542543, 30.557491, 36.017090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485449, 30.825882, 36.308132>,  <26.451191, 30.986917, 36.482758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485449, 30.825882, 36.308132>,  <26.542543, 30.557491, 36.017090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485449, 30.825882, 36.308132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550099, 0.664916, -0.505250,
		-0.822810, 0.328139, -0.464013,
		-0.142737, 0.670978, 0.727609,
		26.442627, 31.027176, 36.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485893, 31.313013, 35.686810>,  <26.542543, 30.557491, 36.017090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485893, 31.313013, 35.686810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601875, 31.348875, 36.067944>,  <26.671465, 31.370392, 36.296623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601875, 31.348875, 36.067944>,  <26.485893, 31.313013, 35.686810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601875, 31.348875, 36.067944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541194, 0.805770, -0.240508,
		-0.789325, 0.585403, 0.185116,
		0.289955, 0.089655, 0.952832,
		26.688862, 31.375771, 36.353794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361334, 31.023666, 35.037094>,  <26.485893, 31.313013, 35.686810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361334, 31.023666, 35.037094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040020, 30.940460, 34.813858>,  <25.847231, 30.890537, 34.679916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040020, 30.940460, 34.813858>,  <26.361334, 31.023666, 35.037094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040020, 30.940460, 34.813858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502048, 0.267643, -0.822384,
		0.320438, -0.940795, -0.110560,
		-0.803285, -0.208017, -0.558087,
		25.799034, 30.878056, 34.646431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472977, 30.551287, 34.442604>,  <26.361334, 31.023666, 35.037094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472977, 30.551287, 34.442604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123976, 30.677826, 34.293655>,  <25.914576, 30.753750, 34.204285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123976, 30.677826, 34.293655>,  <26.472977, 30.551287, 34.442604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123976, 30.677826, 34.293655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366646, -0.079862, -0.926926,
		-0.322972, -0.945275, -0.046308,
		-0.872502, 0.316350, -0.372374,
		25.862225, 30.772730, 34.181942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188534, 30.070004, 33.965435>,  <26.472977, 30.551287, 34.442604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188534, 30.070004, 33.965435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074978, 30.443075, 33.876423>,  <26.006845, 30.666918, 33.823017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074978, 30.443075, 33.876423>,  <26.188534, 30.070004, 33.965435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074978, 30.443075, 33.876423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319069, -0.126966, -0.939188,
		-0.904214, -0.337628, -0.261544,
		-0.283889, 0.932678, -0.222531,
		25.989811, 30.722878, 33.809662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847878, 30.132565, 33.235859>,  <26.188534, 30.070004, 33.965435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847878, 30.132565, 33.235859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055269, 30.453613, 33.353828>,  <26.179705, 30.646242, 33.424610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055269, 30.453613, 33.353828>,  <25.847878, 30.132565, 33.235859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055269, 30.453613, 33.353828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516336, -0.018942, -0.856176,
		-0.681600, 0.596187, -0.424244,
		0.518477, 0.802622, 0.294922,
		26.210812, 30.694401, 33.442307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096123, 30.342918, 32.649960>,  <25.847878, 30.132565, 33.235859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096123, 30.342918, 32.649960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286112, 30.560219, 32.926880>,  <26.400106, 30.690599, 33.093033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286112, 30.560219, 32.926880>,  <26.096123, 30.342918, 32.649960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286112, 30.560219, 32.926880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773124, 0.118166, -0.623151,
		-0.420333, 0.831214, -0.363874,
		0.474974, 0.543250, 0.692300,
		26.428604, 30.723194, 33.134571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430670, 30.970987, 32.262501>,  <26.096123, 30.342918, 32.649960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430670, 30.970987, 32.262501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635471, 30.942715, 32.604931>,  <26.758352, 30.925751, 32.810387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635471, 30.942715, 32.604931>,  <26.430670, 30.970987, 32.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635471, 30.942715, 32.604931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851858, 0.169889, -0.495455,
		-0.110417, 0.982925, 0.147196,
		0.512002, -0.070684, 0.856071,
		26.789072, 30.921509, 32.861752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788929, 31.560480, 32.361061>,  <26.430670, 30.970987, 32.262501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788929, 31.560480, 32.361061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997171, 31.300083, 32.582035>,  <27.122116, 31.143845, 32.714619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997171, 31.300083, 32.582035>,  <26.788929, 31.560480, 32.361061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997171, 31.300083, 32.582035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830751, 0.236914, -0.503710,
		0.197033, 0.721167, 0.664151,
		0.520606, -0.650992, 0.552430,
		27.153353, 31.104786, 32.747765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420378, 31.933023, 32.541954>,  <26.788929, 31.560480, 32.361061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420378, 31.933023, 32.541954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475512, 31.537935, 32.571369>,  <27.508593, 31.300882, 32.589020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475512, 31.537935, 32.571369>,  <27.420378, 31.933023, 32.541954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475512, 31.537935, 32.571369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793192, 0.065611, -0.605428,
		0.593168, 0.141783, 0.792495,
		0.137835, -0.987721, 0.073543,
		27.516863, 31.241619, 32.593433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168238, 31.879030, 32.665798>,  <27.420378, 31.933023, 32.541954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168238, 31.879030, 32.665798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038746, 31.523331, 32.536533>,  <27.961050, 31.309912, 32.458973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038746, 31.523331, 32.536533>,  <28.168238, 31.879030, 32.665798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038746, 31.523331, 32.536533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736336, -0.022303, -0.676248,
		0.594145, -0.456880, 0.662006,
		-0.323729, -0.889249, -0.323166,
		27.941628, 31.256556, 32.439583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829111, 31.450033, 32.538940>,  <28.168238, 31.879030, 32.665798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829111, 31.450033, 32.538940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530722, 31.284252, 32.330421>,  <28.351688, 31.184784, 32.205311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530722, 31.284252, 32.330421>,  <28.829111, 31.450033, 32.538940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530722, 31.284252, 32.330421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566580, 0.016445, -0.823842,
		0.350015, -0.909923, 0.222552,
		-0.745973, -0.414451, -0.521300,
		28.306929, 31.159918, 32.174030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072309, 30.762289, 32.260525>,  <28.829111, 31.450033, 32.538940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072309, 30.762289, 32.260525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761633, 30.866177, 32.030987>,  <28.575228, 30.928509, 31.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761633, 30.866177, 32.030987>,  <29.072309, 30.762289, 32.260525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761633, 30.866177, 32.030987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578529, -0.066158, -0.812975,
		-0.249108, -0.963416, -0.098870,
		-0.776691, 0.259718, -0.573844,
		28.528625, 30.944092, 31.858833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057852, 30.281092, 31.699137>,  <29.072309, 30.762289, 32.260525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057852, 30.281092, 31.699137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890207, 30.628584, 31.593573>,  <28.789619, 30.837080, 31.530233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890207, 30.628584, 31.593573>,  <29.057852, 30.281092, 31.699137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890207, 30.628584, 31.593573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566040, 0.022741, -0.824064,
		-0.709889, -0.494760, -0.501268,
		-0.419113, 0.868732, -0.263910,
		28.764473, 30.889204, 31.514400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985699, 30.237013, 30.974016>,  <29.057852, 30.281092, 31.699137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985699, 30.237013, 30.974016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953144, 30.620281, 31.083767>,  <28.933611, 30.850243, 31.149618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953144, 30.620281, 31.083767>,  <28.985699, 30.237013, 30.974016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953144, 30.620281, 31.083767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686537, 0.253462, -0.681487,
		-0.722526, 0.132907, -0.678449,
		-0.081387, 0.958172, 0.274378,
		28.928728, 30.907732, 31.166080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087864, 30.502752, 30.243740>,  <28.985699, 30.237013, 30.974016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087864, 30.502752, 30.243740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084148, 30.830305, 30.473293>,  <29.081919, 31.026836, 30.611025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084148, 30.830305, 30.473293>,  <29.087864, 30.502752, 30.243740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084148, 30.830305, 30.473293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664753, 0.433789, -0.608220,
		-0.747006, 0.375841, -0.548385,
		-0.009289, 0.818884, 0.573884,
		29.081362, 31.075970, 30.645458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950836, 31.151464, 29.846731>,  <29.087864, 30.502752, 30.243740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950836, 31.151464, 29.846731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135515, 31.307550, 30.165371>,  <29.246323, 31.401201, 30.356554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135515, 31.307550, 30.165371>,  <28.950836, 31.151464, 29.846731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135515, 31.307550, 30.165371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760930, 0.287302, -0.581759,
		-0.455876, 0.874751, -0.164280,
		0.461696, 0.390215, 0.796598,
		29.274025, 31.424616, 30.404350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000751, 31.898918, 29.794744>,  <28.950836, 31.151464, 29.846731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000751, 31.898918, 29.794744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289013, 31.737751, 30.020422>,  <29.461969, 31.641050, 30.155828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289013, 31.737751, 30.020422>,  <29.000751, 31.898918, 29.794744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289013, 31.737751, 30.020422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690375, 0.342461, -0.637263,
		0.063550, 0.848751, 0.524960,
		0.720655, -0.402917, 0.564193,
		29.505209, 31.616877, 30.189680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488050, 32.365360, 29.677435>,  <29.000751, 31.898918, 29.794744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488050, 32.365360, 29.677435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687679, 32.065132, 29.850676>,  <29.807457, 31.884996, 29.954620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687679, 32.065132, 29.850676>,  <29.488050, 32.365360, 29.677435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687679, 32.065132, 29.850676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838227, 0.291376, -0.460951,
		0.219778, 0.593086, 0.774562,
		0.499072, -0.750566, 0.433102,
		29.837400, 31.839962, 29.980606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790216, 32.780277, 29.479902>,  <29.488050, 32.365360, 29.677435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790216, 32.780277, 29.479902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172596, 32.871868, 29.553366>,  <29.402023, 32.926823, 29.597445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172596, 32.871868, 29.553366>,  <28.790216, 32.780277, 29.479902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172596, 32.871868, 29.553366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036489, 0.713532, -0.699672,
		-0.291258, 0.662149, 0.690455,
		0.955949, 0.228979, 0.183660,
		29.459381, 32.940563, 29.608463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850805, 33.573570, 29.529276>,  <28.790216, 32.780277, 29.479902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850805, 33.573570, 29.529276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190304, 33.390572, 29.423199>,  <29.394003, 33.280773, 29.359552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190304, 33.390572, 29.423199>,  <28.850805, 33.573570, 29.529276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190304, 33.390572, 29.423199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033967, 0.547628, -0.836032,
		0.527708, 0.700572, 0.480337,
		0.848747, -0.457496, -0.265192,
		29.444927, 33.253323, 29.343641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372847, 34.113300, 29.361774>,  <28.850805, 33.573570, 29.529276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372847, 34.113300, 29.361774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483952, 33.784275, 29.163284>,  <29.550613, 33.586861, 29.044189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483952, 33.784275, 29.163284>,  <29.372847, 34.113300, 29.361774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483952, 33.784275, 29.163284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420271, 0.568546, -0.707197,
		0.863841, -0.012118, 0.503618,
		0.277760, -0.822562, -0.496226,
		29.567280, 33.537506, 29.014416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938879, 34.292290, 29.001482>,  <29.372847, 34.113300, 29.361774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938879, 34.292290, 29.001482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876644, 33.934616, 28.833563>,  <29.839302, 33.720013, 28.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876644, 33.934616, 28.833563>,  <29.938879, 34.292290, 29.001482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876644, 33.934616, 28.833563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572436, 0.264729, -0.776038,
		0.805053, -0.361051, 0.470673,
		-0.155588, -0.894182, -0.419799,
		29.829967, 33.666363, 28.707623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615021, 34.077995, 28.743689>,  <29.938879, 34.292290, 29.001482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615021, 34.077995, 28.743689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320393, 33.896690, 28.542885>,  <30.143616, 33.787907, 28.422401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320393, 33.896690, 28.542885>,  <30.615021, 34.077995, 28.743689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320393, 33.896690, 28.542885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453837, 0.219112, -0.863725,
		0.501494, -0.864026, 0.044317,
		-0.736570, -0.453266, -0.502010,
		30.099421, 33.760712, 28.392282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999039, 33.875019, 28.133629>,  <30.615021, 34.077995, 28.743689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999039, 33.875019, 28.133629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612988, 33.851128, 28.031679>,  <30.381357, 33.836792, 27.970509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612988, 33.851128, 28.031679>,  <30.999039, 33.875019, 28.133629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612988, 33.851128, 28.031679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248237, 0.100293, -0.963493,
		0.083098, -0.993164, -0.081972,
		-0.965129, -0.059716, -0.254874,
		30.323450, 33.833210, 27.955217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948778, 33.334785, 27.562931>,  <30.999039, 33.875019, 28.133629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948778, 33.334785, 27.562931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625395, 33.570156, 27.557962>,  <30.431366, 33.711376, 27.554981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625395, 33.570156, 27.557962>,  <30.948778, 33.334785, 27.562931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625395, 33.570156, 27.557962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106859, 0.125999, -0.986258,
		-0.578774, -0.798674, -0.164743,
		-0.808457, 0.588425, -0.012421,
		30.382858, 33.746685, 27.554235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702030, 33.237049, 26.888531>,  <30.948778, 33.334785, 27.562931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702030, 33.237049, 26.888531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496693, 33.557407, 27.011848>,  <30.373489, 33.749622, 27.085838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496693, 33.557407, 27.011848>,  <30.702030, 33.237049, 26.888531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496693, 33.557407, 27.011848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062637, 0.393248, -0.917296,
		-0.855895, -0.451577, -0.252037,
		-0.513343, 0.800896, 0.308294,
		30.342690, 33.797676, 27.104336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097574, 33.309479, 26.391895>,  <30.702030, 33.237049, 26.888531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097574, 33.309479, 26.391895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184662, 33.665298, 26.552542>,  <30.236914, 33.878792, 26.648930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184662, 33.665298, 26.552542>,  <30.097574, 33.309479, 26.391895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184662, 33.665298, 26.552542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141868, 0.435960, -0.888714,
		-0.965646, 0.136514, 0.221115,
		0.217719, 0.889552, 0.401616,
		30.249977, 33.932163, 26.673027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742149, 33.773125, 26.016382>,  <30.097574, 33.309479, 26.391895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742149, 33.773125, 26.016382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993841, 34.030651, 26.190540>,  <30.144857, 34.185165, 26.295036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993841, 34.030651, 26.190540>,  <29.742149, 33.773125, 26.016382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993841, 34.030651, 26.190540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114227, 0.477512, -0.871168,
		-0.768778, 0.597900, 0.226925,
		0.629231, 0.643815, 0.435397,
		30.182611, 34.223797, 26.321159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602116, 34.486767, 25.761087>,  <29.742149, 33.773125, 26.016382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602116, 34.486767, 25.761087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967993, 34.547966, 25.910715>,  <30.187519, 34.584686, 26.000492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967993, 34.547966, 25.910715>,  <29.602116, 34.486767, 25.761087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967993, 34.547966, 25.910715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168020, 0.697832, -0.696276,
		-0.367567, 0.699730, 0.612595,
		0.914693, 0.153000, 0.374069,
		30.242401, 34.593864, 26.022936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684155, 35.163170, 25.805059>,  <29.602116, 34.486767, 25.761087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684155, 35.163170, 25.805059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046072, 34.994480, 25.781406>,  <30.263222, 34.893265, 25.767214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046072, 34.994480, 25.781406>,  <29.684155, 35.163170, 25.805059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046072, 34.994480, 25.781406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304226, 0.737280, -0.603212,
		0.297989, 0.527792, 0.795386,
		0.904792, -0.421728, -0.059133,
		30.317511, 34.867962, 25.763666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169785, 35.742092, 25.893353>,  <29.684155, 35.163170, 25.805059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169785, 35.742092, 25.893353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355707, 35.444710, 25.701010>,  <30.467260, 35.266281, 25.585604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355707, 35.444710, 25.701010>,  <30.169785, 35.742092, 25.893353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355707, 35.444710, 25.701010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465407, 0.667160, -0.581630,
		0.753227, 0.046551, 0.656111,
		0.464807, -0.743458, -0.480858,
		30.495150, 35.221672, 25.556753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785925, 35.925919, 25.944887>,  <30.169785, 35.742092, 25.893353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785925, 35.925919, 25.944887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803686, 35.666546, 25.640898>,  <30.814342, 35.510921, 25.458504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803686, 35.666546, 25.640898>,  <30.785925, 35.925919, 25.944887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803686, 35.666546, 25.640898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721962, 0.546631, -0.424224,
		0.690507, -0.529835, 0.492417,
		0.044402, -0.648436, -0.759973,
		30.817007, 35.472015, 25.412907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448389, 35.834808, 25.761215>,  <30.785925, 35.925919, 25.944887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448389, 35.834808, 25.761215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261036, 35.710316, 25.430458>,  <31.148624, 35.635620, 25.232004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261036, 35.710316, 25.430458>,  <31.448389, 35.834808, 25.761215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261036, 35.710316, 25.430458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658176, 0.501454, -0.561560,
		0.589424, -0.807266, -0.030026,
		-0.468384, -0.311235, -0.826891,
		31.120522, 35.616947, 25.182390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928257, 35.768040, 25.200150>,  <31.448389, 35.834808, 25.761215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928257, 35.768040, 25.200150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588757, 35.790337, 24.989813>,  <31.385056, 35.803715, 24.863611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588757, 35.790337, 24.989813>,  <31.928257, 35.768040, 25.200150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588757, 35.790337, 24.989813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411032, 0.695165, -0.589745,
		0.332673, -0.716686, -0.612935,
		-0.848753, 0.055743, -0.525843,
		31.334131, 35.807060, 24.832060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946051, 35.441059, 24.470015>,  <31.928257, 35.768040, 25.200150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946051, 35.441059, 24.470015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663519, 35.723804, 24.454802>,  <31.493999, 35.893452, 24.445673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663519, 35.723804, 24.454802>,  <31.946051, 35.441059, 24.470015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663519, 35.723804, 24.454802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372472, 0.325428, -0.869115,
		-0.601968, -0.628047, -0.493145,
		-0.706328, 0.706862, -0.038033,
		31.451620, 35.935863, 24.443392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750795, 35.532833, 23.714420>,  <31.946051, 35.441059, 24.470015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750795, 35.532833, 23.714420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578157, 35.849251, 23.887842>,  <31.474575, 36.039101, 23.991896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578157, 35.849251, 23.887842>,  <31.750795, 35.532833, 23.714420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578157, 35.849251, 23.887842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091751, 0.516625, -0.851282,
		-0.897390, -0.327629, -0.295551,
		-0.431594, 0.791049, 0.433554,
		31.448679, 36.086567, 24.017908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273756, 35.743248, 23.225883>,  <31.750795, 35.532833, 23.714420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273756, 35.743248, 23.225883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329603, 36.065033, 23.456827>,  <31.363111, 36.258106, 23.595394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329603, 36.065033, 23.456827>,  <31.273756, 35.743248, 23.225883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329603, 36.065033, 23.456827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182770, 0.552115, -0.813489,
		-0.973192, 0.219100, -0.069948,
		0.139616, 0.804465, 0.577359,
		31.371489, 36.306374, 23.630035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946890, 36.339092, 22.896149>,  <31.273756, 35.743248, 23.225883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946890, 36.339092, 22.896149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184898, 36.517967, 23.163275>,  <31.327703, 36.625290, 23.323551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184898, 36.517967, 23.163275>,  <30.946890, 36.339092, 22.896149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184898, 36.517967, 23.163275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178139, 0.736867, -0.652145,
		-0.783721, 0.507003, 0.358789,
		0.595020, 0.447185, 0.667815,
		31.363403, 36.652122, 23.363619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731150, 37.039463, 22.821217>,  <30.946890, 36.339092, 22.896149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731150, 37.039463, 22.821217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093801, 37.035080, 22.989931>,  <31.311392, 37.032452, 23.091160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093801, 37.035080, 22.989931>,  <30.731150, 37.039463, 22.821217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093801, 37.035080, 22.989931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332590, 0.633687, -0.698445,
		-0.259629, 0.773512, 0.578162,
		0.906629, -0.010954, 0.421786,
		31.365789, 37.031796, 23.116467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012276, 37.743000, 22.723738>,  <30.731150, 37.039463, 22.821217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012276, 37.743000, 22.723738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347286, 37.544514, 22.815233>,  <31.548292, 37.425423, 22.870131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347286, 37.544514, 22.815233>,  <31.012276, 37.743000, 22.723738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347286, 37.544514, 22.815233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472915, 0.448623, -0.758346,
		0.273684, 0.743309, 0.610400,
		0.837525, -0.496215, 0.228741,
		31.598543, 37.395649, 22.883856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531855, 38.268368, 22.805149>,  <31.012276, 37.743000, 22.723738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531855, 38.268368, 22.805149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722326, 37.923332, 22.736803>,  <31.836609, 37.716312, 22.695795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722326, 37.923332, 22.736803>,  <31.531855, 38.268368, 22.805149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722326, 37.923332, 22.736803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537951, 0.439461, -0.719363,
		0.695603, 0.250629, 0.673292,
		0.476179, -0.862589, -0.170864,
		31.865179, 37.664555, 22.685543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262550, 38.335155, 23.085482>,  <31.531855, 38.268368, 22.805149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262550, 38.335155, 23.085482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230167, 38.081856, 22.777601>,  <32.210739, 37.929874, 22.592873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230167, 38.081856, 22.777601>,  <32.262550, 38.335155, 23.085482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230167, 38.081856, 22.777601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458822, 0.661873, -0.592795,
		0.884833, -0.401145, 0.236968,
		-0.080954, -0.633251, -0.769701,
		32.205883, 37.891880, 22.546690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909855, 38.370144, 22.833616>,  <32.262550, 38.335155, 23.085482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909855, 38.370144, 22.833616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681015, 38.226097, 22.538858>,  <32.543713, 38.139668, 22.362003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681015, 38.226097, 22.538858>,  <32.909855, 38.370144, 22.833616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681015, 38.226097, 22.538858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464406, 0.598320, -0.652948,
		0.676040, -0.715769, -0.175056,
		-0.572099, -0.360122, -0.736895,
		32.509384, 38.118061, 22.317789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442978, 38.272503, 22.201588>,  <32.909855, 38.370144, 22.833616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442978, 38.272503, 22.201588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089375, 38.255253, 22.015398>,  <32.877213, 38.244904, 21.903685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089375, 38.255253, 22.015398>,  <33.442978, 38.272503, 22.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089375, 38.255253, 22.015398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373840, 0.532612, -0.759321,
		0.280661, -0.845260, -0.454714,
		-0.884010, -0.043122, -0.465475,
		32.824173, 38.242317, 21.875755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481007, 38.097221, 21.480316>,  <33.442978, 38.272503, 22.201588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481007, 38.097221, 21.480316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137623, 38.302372, 21.480812>,  <32.931591, 38.425461, 21.481110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137623, 38.302372, 21.480812>,  <33.481007, 38.097221, 21.480316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137623, 38.302372, 21.480812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297341, 0.499663, -0.813588,
		-0.417891, -0.698065, -0.581441,
		-0.858461, 0.512877, 0.001241,
		32.880085, 38.456234, 21.481184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350460, 38.248116, 20.850576>,  <33.481007, 38.097221, 21.480316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350460, 38.248116, 20.850576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109695, 38.529610, 21.001551>,  <32.965237, 38.698505, 21.092134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109695, 38.529610, 21.001551>,  <33.350460, 38.248116, 20.850576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109695, 38.529610, 21.001551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329705, 0.649482, -0.685177,
		-0.727319, -0.287976, -0.622957,
		-0.601915, 0.703734, 0.377434,
		32.929119, 38.740730, 21.114780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939678, 38.443722, 20.282965>,  <33.350460, 38.248116, 20.850576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939678, 38.443722, 20.282965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919605, 38.738819, 20.552252>,  <32.907562, 38.915878, 20.713823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919605, 38.738819, 20.552252>,  <32.939678, 38.443722, 20.282965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919605, 38.738819, 20.552252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208142, 0.666992, -0.715401,
		-0.976810, 0.104224, -0.187027,
		-0.050184, 0.737739, 0.673218,
		32.904549, 38.960140, 20.754217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042469, 38.877399, 19.799789>,  <32.939678, 38.443722, 20.282965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042469, 38.877399, 19.799789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993164, 39.093998, 20.132435>,  <32.963581, 39.223957, 20.332022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993164, 39.093998, 20.132435>,  <33.042469, 38.877399, 19.799789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993164, 39.093998, 20.132435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002756, 0.837816, -0.545946,
		-0.992370, -0.069589, -0.101782,
		-0.123266, 0.541500, 0.831615,
		32.956184, 39.256447, 20.381920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504799, 39.395363, 19.803579>,  <33.042469, 38.877399, 19.799789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504799, 39.395363, 19.803579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820118, 39.521351, 20.015005>,  <33.009308, 39.596943, 20.141861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820118, 39.521351, 20.015005>,  <32.504799, 39.395363, 19.803579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820118, 39.521351, 20.015005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086216, 0.794026, -0.601738,
		-0.609225, 0.519919, 0.598773,
		0.788297, 0.314970, 0.528566,
		33.056606, 39.615841, 20.173574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482834, 40.086899, 19.802681>,  <32.504799, 39.395363, 19.803579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482834, 40.086899, 19.802681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861771, 40.005638, 19.901699>,  <33.089130, 39.956882, 19.961111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861771, 40.005638, 19.901699>,  <32.482834, 40.086899, 19.802681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861771, 40.005638, 19.901699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305075, 0.807544, -0.504779,
		-0.097359, 0.553717, 0.826994,
		0.947339, -0.203151, 0.247547,
		33.145973, 39.944695, 19.975964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936924, 40.591114, 20.320417>,  <32.482834, 40.086899, 19.802681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936924, 40.591114, 20.320417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157894, 40.426407, 20.030514>,  <33.290474, 40.327583, 19.856571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157894, 40.426407, 20.030514>,  <32.936924, 40.591114, 20.320417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157894, 40.426407, 20.030514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174712, 0.907353, -0.382343,
		0.815049, 0.084591, 0.573184,
		0.552423, -0.411771, -0.724758,
		33.323620, 40.302876, 19.813086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604053, 41.213978, 20.742331>,  <32.936924, 40.591114, 20.320417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604053, 41.213978, 20.742331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695614, 41.413948, 21.076439>,  <32.750549, 41.533932, 21.276903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695614, 41.413948, 21.076439>,  <32.604053, 41.213978, 20.742331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695614, 41.413948, 21.076439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710917, 0.500299, -0.494266,
		-0.664982, 0.706946, -0.240888,
		0.228903, 0.499929, 0.835269,
		32.764286, 41.563927, 21.327019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771355, 42.027054, 20.655319>,  <32.604053, 41.213978, 20.742331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771355, 42.027054, 20.655319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971756, 41.905193, 20.979342>,  <33.091995, 41.832077, 21.173754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971756, 41.905193, 20.979342>,  <32.771355, 42.027054, 20.655319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971756, 41.905193, 20.979342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850435, 0.346881, -0.395516,
		-0.160499, 0.887052, 0.432872,
		0.500999, -0.304650, 0.810055,
		33.122055, 41.813797, 21.222359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298923, 42.590187, 20.813879>,  <32.771355, 42.027054, 20.655319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298923, 42.590187, 20.813879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421566, 42.217205, 20.890316>,  <33.495152, 41.993416, 20.936178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421566, 42.217205, 20.890316>,  <33.298923, 42.590187, 20.813879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421566, 42.217205, 20.890316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934412, 0.256630, -0.247012,
		0.181287, 0.254297, 0.949983,
		0.306609, -0.932456, 0.191095,
		33.513550, 41.937469, 20.947645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779583, 42.561474, 21.484392>,  <33.298923, 42.590187, 20.813879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779583, 42.561474, 21.484392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824394, 42.307980, 21.178234>,  <33.851280, 42.155884, 20.994539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824394, 42.307980, 21.178234>,  <33.779583, 42.561474, 21.484392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824394, 42.307980, 21.178234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913775, 0.368358, -0.171251,
		0.390468, -0.680215, 0.620357,
		0.112026, -0.633735, -0.765395,
		33.858002, 42.117859, 20.948616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838253, 41.963043, 21.861374>,  <33.779583, 42.561474, 21.484392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838253, 41.963043, 21.861374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464523, 42.018612, 21.730076>,  <33.240288, 42.051952, 21.651297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464523, 42.018612, 21.730076>,  <33.838253, 41.963043, 21.861374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464523, 42.018612, 21.730076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330316, -0.683487, 0.650951,
		-0.133922, 0.716622, 0.684484,
		-0.934322, 0.138919, -0.328245,
		33.184227, 42.060287, 21.631601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287514, 42.055786, 22.439650>,  <33.838253, 41.963043, 21.861374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287514, 42.055786, 22.439650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120075, 41.912781, 22.105713>,  <33.019611, 41.826977, 21.905352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120075, 41.912781, 22.105713>,  <33.287514, 42.055786, 22.439650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120075, 41.912781, 22.105713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483015, -0.690816, 0.538025,
		-0.769071, 0.628458, 0.116493,
		-0.418601, -0.357511, -0.834841,
		32.994495, 41.805527, 21.855261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424549, 42.130756, 22.393684>,  <33.287514, 42.055786, 22.439650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424549, 42.130756, 22.393684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572548, 41.816734, 22.194973>,  <32.661346, 41.628323, 22.075747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572548, 41.816734, 22.194973>,  <32.424549, 42.130756, 22.393684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572548, 41.816734, 22.194973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658966, -0.598699, 0.455328,
		-0.654879, 0.158890, -0.738842,
		0.369997, -0.785056, -0.496779,
		32.683548, 41.581219, 22.045938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808989, 41.827847, 22.127769>,  <32.424549, 42.130756, 22.393684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808989, 41.827847, 22.127769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109344, 41.566330, 22.165133>,  <32.289558, 41.409420, 22.187551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109344, 41.566330, 22.165133>,  <31.808989, 41.827847, 22.127769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109344, 41.566330, 22.165133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565352, -0.563218, 0.602630,
		-0.341382, -0.505318, -0.792535,
		0.750889, -0.653788, 0.093411,
		32.334610, 41.370193, 22.193155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510366, 41.139656, 22.047489>,  <31.808989, 41.827847, 22.127769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510366, 41.139656, 22.047489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844086, 41.083286, 22.260689>,  <32.044319, 41.049465, 22.388609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844086, 41.083286, 22.260689>,  <31.510366, 41.139656, 22.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844086, 41.083286, 22.260689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533891, -0.447639, 0.717342,
		0.137503, -0.883041, -0.448701,
		0.834298, -0.140920, 0.532999,
		32.094376, 41.041012, 22.420589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238676, 40.717224, 22.456850>,  <31.510366, 41.139656, 22.047489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238676, 40.717224, 22.456850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590029, 40.794453, 22.631741>,  <31.800840, 40.840790, 22.736675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590029, 40.794453, 22.631741>,  <31.238676, 40.717224, 22.456850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590029, 40.794453, 22.631741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321707, -0.437705, 0.839594,
		0.353480, -0.878144, -0.322360,
		0.878383, 0.193074, 0.437225,
		31.853544, 40.852375, 22.762907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527428, 40.077877, 22.702641>,  <31.238676, 40.717224, 22.456850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527428, 40.077877, 22.702641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674513, 40.377277, 22.923376>,  <31.762764, 40.556919, 23.055819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674513, 40.377277, 22.923376>,  <31.527428, 40.077877, 22.702641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674513, 40.377277, 22.923376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359598, -0.432805, 0.826661,
		0.857599, -0.502416, 0.110012,
		0.367714, 0.748504, 0.551841,
		31.784826, 40.601830, 23.088928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843956, 39.795826, 23.255711>,  <31.527428, 40.077877, 22.702641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843956, 39.795826, 23.255711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832518, 40.175350, 23.381531>,  <31.825655, 40.403065, 23.457024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832518, 40.175350, 23.381531>,  <31.843956, 39.795826, 23.255711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832518, 40.175350, 23.381531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071652, -0.315815, 0.946112,
		0.997020, 0.004518, 0.077016,
		-0.028597, 0.948810, 0.314550,
		31.823938, 40.459991, 23.475895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250156, 39.816120, 23.926737>,  <31.843956, 39.795826, 23.255711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250156, 39.816120, 23.926737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997631, 40.125484, 23.903811>,  <31.846117, 40.311104, 23.890055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997631, 40.125484, 23.903811>,  <32.250156, 39.816120, 23.926737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997631, 40.125484, 23.903811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256990, -0.138896, 0.956381,
		0.731713, 0.618502, 0.286445,
		-0.631310, 0.773410, -0.057316,
		31.808239, 40.357506, 23.886616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343430, 40.327995, 24.489965>,  <32.250156, 39.816120, 23.926737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343430, 40.327995, 24.489965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961700, 40.366405, 24.376795>,  <31.732662, 40.389454, 24.308893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961700, 40.366405, 24.376795>,  <32.343430, 40.327995, 24.489965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961700, 40.366405, 24.376795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298456, -0.262445, 0.917631,
		0.013865, 0.960157, 0.279118,
		-0.954322, 0.096028, -0.282926,
		31.675404, 40.395214, 24.291918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032974, 40.364380, 25.053366>,  <32.343430, 40.327995, 24.489965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032974, 40.364380, 25.053366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694454, 40.354889, 24.840494>,  <31.491343, 40.349194, 24.712770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694454, 40.354889, 24.840494>,  <32.032974, 40.364380, 25.053366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694454, 40.354889, 24.840494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521051, -0.170971, 0.836226,
		-0.110831, 0.984990, 0.132328,
		-0.846299, -0.023730, -0.532179,
		31.440565, 40.347771, 24.680840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630537, 40.886375, 25.313311>,  <32.032974, 40.364380, 25.053366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630537, 40.886375, 25.313311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382242, 40.625908, 25.138653>,  <31.233265, 40.469627, 25.033857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382242, 40.625908, 25.138653>,  <31.630537, 40.886375, 25.313311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382242, 40.625908, 25.138653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377557, -0.239827, 0.894390,
		-0.687122, 0.720039, -0.096986,
		-0.620736, -0.651173, -0.436646,
		31.196022, 40.430557, 25.007658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061480, 40.973427, 25.681999>,  <31.630537, 40.886375, 25.313311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061480, 40.973427, 25.681999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992746, 40.629238, 25.490139>,  <30.951506, 40.422726, 25.375023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992746, 40.629238, 25.490139>,  <31.061480, 40.973427, 25.681999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992746, 40.629238, 25.490139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495823, -0.345186, 0.796873,
		-0.851254, 0.374753, -0.367325,
		-0.171835, -0.860469, -0.479652,
		30.941196, 40.371098, 25.346243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464237, 40.833595, 25.853569>,  <31.061480, 40.973427, 25.681999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464237, 40.833595, 25.853569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594481, 40.475685, 25.731348>,  <30.672626, 40.260941, 25.658016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594481, 40.475685, 25.731348>,  <30.464237, 40.833595, 25.853569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594481, 40.475685, 25.731348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485932, -0.435579, 0.757721,
		-0.811080, -0.098242, -0.576626,
		0.325606, -0.894773, -0.305551,
		30.692163, 40.207253, 25.639683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920414, 40.366787, 25.939142>,  <30.464237, 40.833595, 25.853569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920414, 40.366787, 25.939142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236637, 40.121849, 25.936264>,  <30.426371, 39.974888, 25.934538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236637, 40.121849, 25.936264>,  <29.920414, 40.366787, 25.939142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236637, 40.121849, 25.936264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455192, -0.595447, 0.661999,
		-0.409653, -0.520076, -0.749470,
		0.790560, -0.612343, -0.007192,
		30.473804, 39.938145, 25.934107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622641, 39.688232, 25.881920>,  <29.920414, 40.366787, 25.939142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622641, 39.688232, 25.881920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992369, 39.616539, 26.016685>,  <30.214205, 39.573524, 26.097544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992369, 39.616539, 26.016685>,  <29.622641, 39.688232, 25.881920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992369, 39.616539, 26.016685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355249, -0.726593, 0.588099,
		0.139394, -0.663280, -0.735275,
		0.924320, -0.179229, 0.336912,
		30.269665, 39.562771, 26.117760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697252, 39.023201, 25.876743>,  <29.622641, 39.688232, 25.881920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697252, 39.023201, 25.876743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969898, 39.141747, 26.144346>,  <30.133486, 39.212872, 26.304909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969898, 39.141747, 26.144346>,  <29.697252, 39.023201, 25.876743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969898, 39.141747, 26.144346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229321, -0.781722, 0.579934,
		0.694848, -0.548709, -0.464871,
		0.681615, 0.296361, 0.669008,
		30.174383, 39.230656, 26.345049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154177, 38.484669, 25.957220>,  <29.697252, 39.023201, 25.876743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154177, 38.484669, 25.957220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144749, 38.730385, 26.272711>,  <30.139091, 38.877815, 26.462006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144749, 38.730385, 26.272711>,  <30.154177, 38.484669, 25.957220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144749, 38.730385, 26.272711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336523, -0.747780, 0.572344,
		0.941380, -0.251935, 0.224349,
		-0.023570, 0.614291, 0.788727,
		30.137678, 38.914673, 26.509329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917816, 38.048141, 26.416979>,  <30.154177, 38.484669, 25.957220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917816, 38.048141, 26.416979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943529, 38.346107, 26.682604>,  <29.958958, 38.524887, 26.841978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943529, 38.346107, 26.682604>,  <29.917816, 38.048141, 26.416979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943529, 38.346107, 26.682604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357798, -0.603991, 0.712163,
		0.931584, -0.283379, 0.227701,
		0.064283, 0.744910, 0.664060,
		29.962814, 38.569580, 26.881823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280308, 37.810677, 26.949594>,  <29.917816, 38.048141, 26.416979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280308, 37.810677, 26.949594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011795, 38.083881, 27.064741>,  <29.850687, 38.247807, 27.133829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011795, 38.083881, 27.064741>,  <30.280308, 37.810677, 26.949594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011795, 38.083881, 27.064741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284732, -0.596209, 0.750641,
		0.684329, 0.421928, 0.594702,
		-0.671283, 0.683017, 0.287866,
		29.810410, 38.288788, 27.151100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495695, 37.852993, 27.650484>,  <30.280308, 37.810677, 26.949594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495695, 37.852993, 27.650484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131269, 38.014748, 27.618393>,  <29.912615, 38.111801, 27.599138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131269, 38.014748, 27.618393>,  <30.495695, 37.852993, 27.650484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131269, 38.014748, 27.618393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314306, -0.555374, 0.769917,
		0.266785, 0.726660, 0.633081,
		-0.911064, 0.404383, -0.080228,
		29.857950, 38.136063, 27.594324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378050, 37.837490, 28.379333>,  <30.495695, 37.852993, 27.650484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378050, 37.837490, 28.379333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034346, 37.884068, 28.180090>,  <29.828123, 37.912014, 28.060543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034346, 37.884068, 28.180090>,  <30.378050, 37.837490, 28.379333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034346, 37.884068, 28.180090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472810, -0.552470, 0.686460,
		-0.195256, 0.825358, 0.529772,
		-0.859259, 0.116446, -0.498111,
		29.776567, 37.919003, 28.030657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954222, 38.029060, 28.864351>,  <30.378050, 37.837490, 28.379333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954222, 38.029060, 28.864351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709553, 37.877708, 28.586449>,  <29.562752, 37.786896, 28.419706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709553, 37.877708, 28.586449>,  <29.954222, 38.029060, 28.864351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709553, 37.877708, 28.586449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398665, -0.611115, 0.683816,
		-0.683319, 0.695246, 0.222954,
		-0.611671, -0.378380, -0.694757,
		29.526051, 37.764194, 28.378021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429453, 37.893654, 29.196087>,  <29.954222, 38.029060, 28.864351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429453, 37.893654, 29.196087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328783, 37.681103, 28.872532>,  <29.268381, 37.553574, 28.678398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328783, 37.681103, 28.872532>,  <29.429453, 37.893654, 29.196087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328783, 37.681103, 28.872532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554721, -0.605676, 0.570474,
		-0.793060, 0.592282, -0.142330,
		-0.251675, -0.531374, -0.808889,
		29.253281, 37.521690, 28.629866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728334, 37.839317, 29.190718>,  <29.429453, 37.893654, 29.196087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728334, 37.839317, 29.190718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862850, 37.535412, 28.968124>,  <28.943560, 37.353069, 28.834568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862850, 37.535412, 28.968124>,  <28.728334, 37.839317, 29.190718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862850, 37.535412, 28.968124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485450, -0.646191, 0.588876,
		-0.807000, 0.072114, -0.586132,
		0.336287, -0.759761, -0.556484,
		28.963736, 37.307484, 28.801180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181183, 37.447598, 29.211924>,  <28.728334, 37.839317, 29.190718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181183, 37.447598, 29.211924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449503, 37.190487, 29.063942>,  <28.610495, 37.036221, 28.975153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449503, 37.190487, 29.063942>,  <28.181183, 37.447598, 29.211924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449503, 37.190487, 29.063942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389768, -0.729933, 0.561497,
		-0.630958, -0.232456, -0.740173,
		0.670800, -0.642777, -0.369953,
		28.650743, 36.997654, 28.952955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782705, 36.869007, 29.056417>,  <28.181183, 37.447598, 29.211924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782705, 36.869007, 29.056417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165407, 36.756031, 29.084269>,  <28.395029, 36.688248, 29.100979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165407, 36.756031, 29.084269>,  <27.782705, 36.869007, 29.056417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165407, 36.756031, 29.084269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262092, -0.733123, 0.627566,
		-0.126201, -0.618676, -0.775444,
		0.956756, -0.282437, 0.069629,
		28.452435, 36.671299, 29.105158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807140, 36.165478, 29.075621>,  <27.782705, 36.869007, 29.056417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807140, 36.165478, 29.075621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154058, 36.253040, 29.254450>,  <28.362209, 36.305580, 29.361748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154058, 36.253040, 29.254450>,  <27.807140, 36.165478, 29.075621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154058, 36.253040, 29.254450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153209, -0.737131, 0.658152,
		0.473626, -0.639310, -0.605773,
		0.867298, 0.218908, 0.447073,
		28.414248, 36.318714, 29.388571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151533, 35.551197, 29.182657>,  <27.807140, 36.165478, 29.075621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151533, 35.551197, 29.182657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334101, 35.800537, 29.436625>,  <28.443642, 35.950142, 29.589005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334101, 35.800537, 29.436625>,  <28.151533, 35.551197, 29.182657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334101, 35.800537, 29.436625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013141, -0.708780, 0.705307,
		0.889668, -0.330259, -0.315309,
		0.456418, 0.623346, 0.634919,
		28.471025, 35.987541, 29.627100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716183, 35.190731, 29.655306>,  <28.151533, 35.551197, 29.182657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716183, 35.190731, 29.655306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607199, 35.516693, 29.859930>,  <28.541809, 35.712273, 29.982704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607199, 35.516693, 29.859930>,  <28.716183, 35.190731, 29.655306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607199, 35.516693, 29.859930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012633, -0.528598, 0.848778,
		0.962084, 0.237720, 0.133726,
		-0.272459, 0.814907, 0.511559,
		28.525461, 35.761166, 30.013397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252783, 35.272758, 30.201536>,  <28.716183, 35.190731, 29.655306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252783, 35.272758, 30.201536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914042, 35.439259, 30.333946>,  <28.710796, 35.539158, 30.413393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914042, 35.439259, 30.333946>,  <29.252783, 35.272758, 30.201536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914042, 35.439259, 30.333946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090237, -0.500946, 0.860762,
		0.524114, 0.758810, 0.386667,
		-0.846854, 0.416245, 0.331025,
		28.659985, 35.564133, 30.433254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347113, 35.268147, 30.972282>,  <29.252783, 35.272758, 30.201536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347113, 35.268147, 30.972282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963644, 35.376007, 30.935986>,  <28.733562, 35.440723, 30.914207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963644, 35.376007, 30.935986>,  <29.347113, 35.268147, 30.972282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963644, 35.376007, 30.935986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201969, -0.420377, 0.884586,
		0.200382, 0.866356, 0.457465,
		-0.958674, 0.269649, -0.090741,
		28.676043, 35.456902, 30.908764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208509, 35.528851, 31.586277>,  <29.347113, 35.268147, 30.972282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208509, 35.528851, 31.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861332, 35.429398, 31.414299>,  <28.653025, 35.369724, 31.311113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861332, 35.429398, 31.414299>,  <29.208509, 35.528851, 31.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861332, 35.429398, 31.414299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318690, -0.385150, 0.866081,
		-0.380929, 0.888730, 0.255053,
		-0.867946, -0.248632, -0.429944,
		28.600948, 35.354809, 31.285316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738863, 35.813721, 31.964287>,  <29.208509, 35.528851, 31.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738863, 35.813721, 31.964287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561478, 35.508713, 31.775862>,  <28.455046, 35.325706, 31.662807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561478, 35.508713, 31.775862>,  <28.738863, 35.813721, 31.964287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561478, 35.508713, 31.775862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323168, -0.354184, 0.877563,
		-0.836004, 0.541399, -0.089355,
		-0.443464, -0.762523, -0.471062,
		28.428438, 35.279957, 31.634542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140348, 35.719364, 32.269253>,  <28.738863, 35.813721, 31.964287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140348, 35.719364, 32.269253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201746, 35.377258, 32.071274>,  <28.238585, 35.171997, 31.952488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201746, 35.377258, 32.071274>,  <28.140348, 35.719364, 32.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201746, 35.377258, 32.071274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301025, -0.517543, 0.800958,
		-0.941182, 0.026048, -0.336895,
		0.153494, -0.855261, -0.494944,
		28.247795, 35.120682, 31.922791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608635, 35.315285, 32.444225>,  <28.140348, 35.719364, 32.269253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608635, 35.315285, 32.444225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868631, 35.045483, 32.304195>,  <28.024630, 34.883602, 32.220177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868631, 35.045483, 32.304195>,  <27.608635, 35.315285, 32.444225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868631, 35.045483, 32.304195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227172, -0.612052, 0.757486,
		-0.725195, -0.412830, -0.551056,
		0.649988, -0.674509, -0.350074,
		28.063627, 34.843128, 32.199173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200863, 34.796413, 32.388859>,  <27.608635, 35.315285, 32.444225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200863, 34.796413, 32.388859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572180, 34.647747, 32.393620>,  <27.794970, 34.558548, 32.396477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572180, 34.647747, 32.393620>,  <27.200863, 34.796413, 32.388859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572180, 34.647747, 32.393620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228992, -0.546137, 0.805790,
		-0.292979, -0.750734, -0.592082,
		0.928292, -0.371662, 0.011905,
		27.850668, 34.536247, 32.397190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067558, 34.089088, 32.439243>,  <27.200863, 34.796413, 32.388859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067558, 34.089088, 32.439243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446648, 34.168198, 32.539410>,  <27.674101, 34.215664, 32.599510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446648, 34.168198, 32.539410>,  <27.067558, 34.089088, 32.439243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446648, 34.168198, 32.539410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013985, -0.758273, 0.651787,
		0.318792, -0.621214, -0.715866,
		0.947721, 0.197773, 0.250419,
		27.730965, 34.227528, 32.614536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252405, 33.374413, 32.522701>,  <27.067558, 34.089088, 32.439243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252405, 33.374413, 32.522701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527157, 33.590324, 32.717365>,  <27.692007, 33.719872, 32.834164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527157, 33.590324, 32.717365>,  <27.252405, 33.374413, 32.522701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527157, 33.590324, 32.717365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040477, -0.696990, 0.715937,
		0.725644, -0.472064, -0.500597,
		0.686879, 0.539778, 0.486659,
		27.733221, 33.752258, 32.863361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898455, 32.918865, 32.603264>,  <27.252405, 33.374413, 32.522701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898455, 32.918865, 32.603264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911900, 33.201832, 32.885662>,  <27.919968, 33.371613, 33.055099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911900, 33.201832, 32.885662>,  <27.898455, 32.918865, 32.603264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911900, 33.201832, 32.885662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283820, -0.684070, 0.671933,
		0.958288, 0.177789, -0.223774,
		0.033615, 0.707417, 0.705997,
		27.921984, 33.414059, 33.097462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476528, 32.744476, 32.833809>,  <27.898455, 32.918865, 32.603264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476528, 32.744476, 32.833809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312790, 32.967056, 33.123028>,  <28.214546, 33.100605, 33.296558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312790, 32.967056, 33.123028>,  <28.476528, 32.744476, 32.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312790, 32.967056, 33.123028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173962, -0.730349, 0.660551,
		0.895641, 0.396177, 0.202165,
		-0.409346, 0.556447, 0.723051,
		28.189985, 33.133991, 33.339943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916121, 32.656254, 33.333267>,  <28.476528, 32.744476, 32.833809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916121, 32.656254, 33.333267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579231, 32.791588, 33.501167>,  <28.377098, 32.872787, 33.601906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579231, 32.791588, 33.501167>,  <28.916121, 32.656254, 33.333267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579231, 32.791588, 33.501167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152829, -0.596800, 0.787701,
		0.517015, 0.727569, 0.450931,
		-0.842223, 0.338338, 0.419748,
		28.326565, 32.893089, 33.627090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955120, 33.189667, 33.920227>,  <28.916121, 32.656254, 33.333267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955120, 33.189667, 33.920227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227600, 33.193604, 34.213039>,  <29.391088, 33.195965, 34.388729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227600, 33.193604, 34.213039>,  <28.955120, 33.189667, 33.920227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227600, 33.193604, 34.213039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085468, 0.992004, -0.092866,
		-0.727093, 0.125826, 0.674910,
		0.681198, 0.009840, 0.732033,
		29.431959, 33.196556, 34.432648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891605, 33.851727, 34.049770>,  <28.955120, 33.189667, 33.920227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891605, 33.851727, 34.049770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234821, 33.745640, 34.225693>,  <29.440750, 33.681988, 34.331245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234821, 33.745640, 34.225693>,  <28.891605, 33.851727, 34.049770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234821, 33.745640, 34.225693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327888, 0.941996, -0.071648,
		-0.395296, 0.205685, 0.895229,
		0.858039, -0.265213, 0.439809,
		29.492233, 33.666077, 34.357635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036934, 34.282654, 34.594555>,  <28.891605, 33.851727, 34.049770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036934, 34.282654, 34.594555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380510, 34.144939, 34.442932>,  <29.586657, 34.062309, 34.351959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380510, 34.144939, 34.442932>,  <29.036934, 34.282654, 34.594555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380510, 34.144939, 34.442932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298645, 0.938119, -0.175338,
		0.415971, 0.037400, 0.908609,
		0.858941, -0.344287, -0.379061,
		29.638193, 34.041653, 34.329212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492310, 34.748035, 34.876656>,  <29.036934, 34.282654, 34.594555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492310, 34.748035, 34.876656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707417, 34.585587, 34.581123>,  <29.836481, 34.488117, 34.403805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707417, 34.585587, 34.581123>,  <29.492310, 34.748035, 34.876656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707417, 34.585587, 34.581123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125857, 0.905187, -0.405952,
		0.833647, 0.125320, 0.537892,
		0.537767, -0.406118, -0.738833,
		29.868746, 34.463753, 34.359474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064461, 35.225300, 34.810841>,  <29.492310, 34.748035, 34.876656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064461, 35.225300, 34.810841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066051, 35.014198, 34.471085>,  <30.067007, 34.887539, 34.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066051, 35.014198, 34.471085>,  <30.064461, 35.225300, 34.810841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066051, 35.014198, 34.471085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137467, 0.841619, -0.522283,
		0.990498, -0.114685, 0.075897,
		0.003978, -0.527754, -0.849388,
		30.067245, 34.855873, 34.216267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750278, 35.381489, 34.382793>,  <30.064461, 35.225300, 34.810841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750278, 35.381489, 34.382793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507658, 35.246075, 34.095047>,  <30.362085, 35.164825, 33.922398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507658, 35.246075, 34.095047>,  <30.750278, 35.381489, 34.382793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507658, 35.246075, 34.095047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275763, 0.759058, -0.589734,
		0.745688, -0.556078, -0.367052,
		-0.606552, -0.338538, -0.719366,
		30.325693, 35.144512, 33.879238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167007, 35.264687, 33.897430>,  <30.750278, 35.381489, 34.382793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167007, 35.264687, 33.897430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807884, 35.274395, 33.721542>,  <30.592411, 35.280220, 33.616009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807884, 35.274395, 33.721542>,  <31.167007, 35.264687, 33.897430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807884, 35.274395, 33.721542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356129, 0.627383, -0.692504,
		0.259069, -0.778332, -0.571911,
		-0.897806, 0.024268, -0.439722,
		30.538542, 35.281677, 33.589626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358389, 35.255680, 33.289009>,  <31.167007, 35.264687, 33.897430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358389, 35.255680, 33.289009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982557, 35.388302, 33.254906>,  <30.757059, 35.467873, 33.234444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982557, 35.388302, 33.254906>,  <31.358389, 35.255680, 33.289009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982557, 35.388302, 33.254906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295883, 0.661234, -0.689363,
		-0.172186, -0.672936, -0.719381,
		-0.939577, 0.331552, -0.085255,
		30.700684, 35.487766, 33.229328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167631, 35.215225, 32.611679>,  <31.358389, 35.255680, 33.289009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167631, 35.215225, 32.611679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955690, 35.503178, 32.791023>,  <30.828526, 35.675949, 32.898628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955690, 35.503178, 32.791023>,  <31.167631, 35.215225, 32.611679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955690, 35.503178, 32.791023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206865, 0.622408, -0.754861,
		-0.822473, -0.307216, -0.478703,
		-0.529854, 0.719880, 0.448361,
		30.796734, 35.719143, 32.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737602, 35.500332, 32.046906>,  <31.167631, 35.215225, 32.611679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737602, 35.500332, 32.046906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748158, 35.761845, 32.349396>,  <30.754492, 35.918751, 32.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748158, 35.761845, 32.349396>,  <30.737602, 35.500332, 32.046906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748158, 35.761845, 32.349396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150524, 0.745265, -0.649556,
		-0.988254, 0.130972, -0.078741,
		0.026391, 0.653778, 0.756226,
		30.756075, 35.957977, 32.576263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330713, 36.010998, 31.820047>,  <30.737602, 35.500332, 32.046906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330713, 36.010998, 31.820047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545074, 36.172810, 32.116470>,  <30.673691, 36.269897, 32.294323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545074, 36.172810, 32.116470>,  <30.330713, 36.010998, 31.820047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545074, 36.172810, 32.116470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160383, 0.812978, -0.559772,
		-0.828905, 0.418837, 0.370800,
		0.535905, 0.404528, 0.741055,
		30.705847, 36.294167, 32.338787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043766, 36.713345, 32.012558>,  <30.330713, 36.010998, 31.820047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043766, 36.713345, 32.012558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416712, 36.722481, 32.156879>,  <30.640480, 36.727962, 32.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416712, 36.722481, 32.156879>,  <30.043766, 36.713345, 32.012558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416712, 36.722481, 32.156879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166019, 0.859494, -0.483433,
		-0.321147, 0.510635, 0.797569,
		0.932364, 0.022842, 0.360799,
		30.696421, 36.729332, 32.265118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146442, 37.354836, 32.311901>,  <30.043766, 36.713345, 32.012558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146442, 37.354836, 32.311901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522535, 37.224022, 32.273930>,  <30.748192, 37.145535, 32.251148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522535, 37.224022, 32.273930>,  <30.146442, 37.354836, 32.311901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522535, 37.224022, 32.273930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255428, 0.861647, -0.438545,
		0.225212, 0.388088, 0.893682,
		0.940232, -0.327037, -0.094924,
		30.804605, 37.125912, 32.245453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506165, 37.965324, 32.456051>,  <30.146442, 37.354836, 32.311901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506165, 37.965324, 32.456051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731857, 37.705067, 32.252754>,  <30.867273, 37.548912, 32.130775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731857, 37.705067, 32.252754>,  <30.506165, 37.965324, 32.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731857, 37.705067, 32.252754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311838, 0.737935, -0.598506,
		0.764462, 0.179207, 0.619260,
		0.564230, -0.650644, -0.508240,
		30.901127, 37.509872, 32.100281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173887, 38.331547, 32.305126>,  <30.506165, 37.965324, 32.456051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173887, 38.331547, 32.305126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185492, 38.032856, 32.039326>,  <31.192453, 37.853642, 31.879845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185492, 38.032856, 32.039326>,  <31.173887, 38.331547, 32.305126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185492, 38.032856, 32.039326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434794, 0.608022, -0.664276,
		0.900063, -0.269651, 0.342310,
		0.029009, -0.746724, -0.664501,
		31.194195, 37.808838, 31.839975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789772, 38.270542, 31.999609>,  <31.173887, 38.331547, 32.305126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789772, 38.270542, 31.999609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554413, 38.101696, 31.723755>,  <31.413197, 38.000389, 31.558243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554413, 38.101696, 31.723755>,  <31.789772, 38.270542, 31.999609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554413, 38.101696, 31.723755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465848, 0.520151, -0.715841,
		0.660887, -0.742467, -0.109412,
		-0.588399, -0.422121, -0.689638,
		31.377893, 37.975060, 31.516863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222214, 38.017406, 31.548185>,  <31.789772, 38.270542, 31.999609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222214, 38.017406, 31.548185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874950, 38.057293, 31.353716>,  <31.666594, 38.081223, 31.237034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874950, 38.057293, 31.353716>,  <32.222214, 38.017406, 31.548185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874950, 38.057293, 31.353716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476620, 0.440587, -0.760734,
		0.138348, -0.892155, -0.430022,
		-0.868155, 0.099712, -0.486173,
		31.614504, 38.087208, 31.207865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315502, 37.714504, 30.908922>,  <32.222214, 38.017406, 31.548185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315502, 37.714504, 30.908922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013023, 37.960686, 30.820036>,  <31.831535, 38.108395, 30.766705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013023, 37.960686, 30.820036>,  <32.315502, 37.714504, 30.908922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013023, 37.960686, 30.820036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421320, 0.198129, -0.885005,
		-0.500655, -0.762862, -0.409129,
		-0.756197, 0.615457, -0.222215,
		31.786163, 38.145321, 30.753372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225403, 37.587318, 30.195681>,  <32.315502, 37.714504, 30.908922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225403, 37.587318, 30.195681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005791, 37.916668, 30.253128>,  <31.874023, 38.114277, 30.287598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005791, 37.916668, 30.253128>,  <32.225403, 37.587318, 30.195681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005791, 37.916668, 30.253128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311802, 0.361203, -0.878813,
		-0.775465, -0.437713, -0.455040,
		-0.549029, 0.823371, 0.143620,
		31.841082, 38.163681, 30.296213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835930, 37.692585, 29.572485>,  <32.225403, 37.587318, 30.195681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835930, 37.692585, 29.572485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862118, 38.050365, 29.749422>,  <31.877831, 38.265034, 29.855585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862118, 38.050365, 29.749422>,  <31.835930, 37.692585, 29.572485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862118, 38.050365, 29.749422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366534, 0.390750, -0.844374,
		-0.928098, 0.217415, -0.302265,
		0.065470, 0.894453, 0.442344,
		31.881758, 38.318703, 29.882126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362696, 38.099598, 29.166677>,  <31.835930, 37.692585, 29.572485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362696, 38.099598, 29.166677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607576, 38.335213, 29.377672>,  <31.754505, 38.476582, 29.504269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607576, 38.335213, 29.377672>,  <31.362696, 38.099598, 29.166677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607576, 38.335213, 29.377672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114086, 0.594329, -0.796089,
		-0.782428, 0.547546, 0.296648,
		0.612202, 0.589039, 0.527487,
		31.791237, 38.511925, 29.535919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257706, 38.885120, 28.900763>,  <31.362696, 38.099598, 29.166677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257706, 38.885120, 28.900763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615919, 38.798092, 29.056032>,  <31.830847, 38.745876, 29.149195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615919, 38.798092, 29.056032>,  <31.257706, 38.885120, 28.900763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615919, 38.798092, 29.056032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444269, 0.486839, -0.752072,
		-0.025348, 0.845961, 0.532642,
		0.895535, -0.217573, 0.388175,
		31.884579, 38.732819, 29.172485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549183, 39.526012, 29.038502>,  <31.257706, 38.885120, 28.900763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549183, 39.526012, 29.038502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834454, 39.250134, 28.988382>,  <32.005615, 39.084606, 28.958311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834454, 39.250134, 28.988382>,  <31.549183, 39.526012, 29.038502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834454, 39.250134, 28.988382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459040, 0.594592, -0.660108,
		0.529772, 0.413259, 0.740647,
		0.713179, -0.689693, -0.125296,
		32.048409, 39.043224, 28.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196835, 39.949387, 29.014503>,  <31.549183, 39.526012, 29.038502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196835, 39.949387, 29.014503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285019, 39.605804, 28.829638>,  <32.337929, 39.399654, 28.718718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285019, 39.605804, 28.829638>,  <32.196835, 39.949387, 29.014503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285019, 39.605804, 28.829638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508785, 0.505527, -0.696835,
		0.832186, -0.081516, 0.548473,
		0.220465, -0.858951, -0.462167,
		32.351158, 39.348118, 28.690987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746746, 40.142288, 28.721502>,  <32.196835, 39.949387, 29.014503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746746, 40.142288, 28.721502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666958, 39.797657, 28.534788>,  <32.619083, 39.590878, 28.422760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666958, 39.797657, 28.534788>,  <32.746746, 40.142288, 28.721502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666958, 39.797657, 28.534788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489151, 0.325213, -0.809301,
		0.849084, -0.389759, 0.356574,
		-0.199470, -0.861582, -0.466784,
		32.607117, 39.539181, 28.394753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388866, 39.937908, 28.360739>,  <32.746746, 40.142288, 28.721502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388866, 39.937908, 28.360739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080528, 39.758556, 28.179743>,  <32.895523, 39.650944, 28.071146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080528, 39.758556, 28.179743>,  <33.388866, 39.937908, 28.360739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080528, 39.758556, 28.179743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396840, 0.217644, -0.891712,
		0.498310, -0.866939, 0.010167,
		-0.770847, -0.448384, -0.452490,
		32.849274, 39.624043, 28.043997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734066, 39.451370, 27.934902>,  <33.388866, 39.937908, 28.360739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734066, 39.451370, 27.934902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362583, 39.475716, 27.788588>,  <33.139694, 39.490322, 27.700798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362583, 39.475716, 27.788588>,  <33.734066, 39.451370, 27.934902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362583, 39.475716, 27.788588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370744, 0.132809, -0.919190,
		-0.007365, -0.989271, -0.145905,
		-0.928706, 0.060863, -0.365788,
		33.083973, 39.493973, 27.678850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640926, 38.942585, 27.383568>,  <33.734066, 39.451370, 27.934902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640926, 38.942585, 27.383568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363941, 39.223827, 27.318901>,  <33.197750, 39.392574, 27.280102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363941, 39.223827, 27.318901>,  <33.640926, 38.942585, 27.383568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363941, 39.223827, 27.318901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296577, 0.073146, -0.952203,
		-0.657675, -0.707313, -0.259176,
		-0.692463, 0.703106, -0.161666,
		33.156200, 39.434761, 27.270401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352180, 38.780800, 26.766575>,  <33.640926, 38.942585, 27.383568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352180, 38.780800, 26.766575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263508, 39.167839, 26.814934>,  <33.210304, 39.400063, 26.843948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263508, 39.167839, 26.814934>,  <33.352180, 38.780800, 26.766575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263508, 39.167839, 26.814934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234238, 0.173192, -0.956628,
		-0.946567, -0.183749, -0.265041,
		-0.221683, 0.967596, 0.120897,
		33.197002, 39.458118, 26.851202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160706, 38.895775, 26.180956>,  <33.352180, 38.780800, 26.766575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160706, 38.895775, 26.180956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236183, 39.264599, 26.316135>,  <33.281467, 39.485893, 26.397243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236183, 39.264599, 26.316135>,  <33.160706, 38.895775, 26.180956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236183, 39.264599, 26.316135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421115, 0.234913, -0.876058,
		-0.887163, 0.307618, -0.343966,
		0.188689, 0.922056, 0.337949,
		33.292789, 39.541214, 26.417521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882698, 39.419876, 25.777086>,  <33.160706, 38.895775, 26.180956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882698, 39.419876, 25.777086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183453, 39.611206, 25.958580>,  <33.363903, 39.726006, 26.067476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183453, 39.611206, 25.958580>,  <32.882698, 39.419876, 25.777086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183453, 39.611206, 25.958580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311569, 0.348721, -0.883922,
		-0.581030, 0.805976, 0.113166,
		0.751883, 0.478327, 0.453734,
		33.409019, 39.754704, 26.094700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940308, 40.104942, 25.525381>,  <32.882698, 39.419876, 25.777086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940308, 40.104942, 25.525381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297405, 40.024120, 25.686474>,  <33.511662, 39.975628, 25.783129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297405, 40.024120, 25.686474>,  <32.940308, 40.104942, 25.525381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297405, 40.024120, 25.686474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448407, 0.310853, -0.838035,
		0.044138, 0.928733, 0.368113,
		0.892739, -0.202053, 0.402730,
		33.565228, 39.963505, 25.807293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170277, 40.617966, 25.401194>,  <32.940308, 40.104942, 25.525381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170277, 40.617966, 25.401194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494961, 40.389179, 25.448477>,  <33.689774, 40.251907, 25.476847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494961, 40.389179, 25.448477>,  <33.170277, 40.617966, 25.401194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494961, 40.389179, 25.448477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386037, 0.373526, -0.843477,
		0.438289, 0.730294, 0.523997,
		0.811713, -0.571969, 0.118208,
		33.738476, 40.217587, 25.483938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760399, 41.005390, 25.212212>,  <33.170277, 40.617966, 25.401194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760399, 41.005390, 25.212212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918823, 40.638172, 25.205029>,  <34.013878, 40.417839, 25.200720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918823, 40.638172, 25.205029>,  <33.760399, 41.005390, 25.212212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918823, 40.638172, 25.205029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663863, 0.299803, -0.685131,
		0.634367, 0.259434, 0.728198,
		0.396062, -0.918048, -0.017956,
		34.037643, 40.362759, 25.199642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531094, 41.169720, 25.127279>,  <33.760399, 41.005390, 25.212212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531094, 41.169720, 25.127279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423901, 40.807991, 24.994377>,  <34.359585, 40.590954, 24.914637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423901, 40.807991, 24.994377>,  <34.531094, 41.169720, 25.127279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423901, 40.807991, 24.994377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622517, 0.100674, -0.776104,
		0.735296, -0.414813, 0.535976,
		-0.267979, -0.904320, -0.332253,
		34.343506, 40.536694, 24.894701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160000, 40.923615, 24.703156>,  <34.531094, 41.169720, 25.127279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160000, 40.923615, 24.703156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878277, 40.659245, 24.599524>,  <34.709244, 40.500622, 24.537344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878277, 40.659245, 24.599524>,  <35.160000, 40.923615, 24.703156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878277, 40.659245, 24.599524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391212, -0.056824, -0.918544,
		0.592369, -0.748296, 0.298584,
		-0.704310, -0.660927, -0.259082,
		34.666985, 40.460968, 24.521799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577579, 40.408585, 24.382254>,  <35.160000, 40.923615, 24.703156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577579, 40.408585, 24.382254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201351, 40.353298, 24.258177>,  <34.975613, 40.320126, 24.183731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201351, 40.353298, 24.258177>,  <35.577579, 40.408585, 24.382254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201351, 40.353298, 24.258177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314272, -0.008175, -0.949298,
		0.128670, -0.990369, 0.051126,
		-0.940573, -0.138214, -0.310193,
		34.919178, 40.311832, 24.165119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547806, 39.849716, 23.782688>,  <35.577579, 40.408585, 24.382254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547806, 39.849716, 23.782688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205223, 40.052311, 23.742769>,  <34.999676, 40.173866, 23.718819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205223, 40.052311, 23.742769>,  <35.547806, 39.849716, 23.782688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205223, 40.052311, 23.742769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105367, -0.017739, -0.994275,
		-0.505355, -0.862067, -0.038174,
		-0.856455, 0.506484, -0.099798,
		34.948288, 40.204258, 23.712830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002991, 39.298256, 23.799118>,  <35.547806, 39.849716, 23.782688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002991, 39.298256, 23.799118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395805, 39.244781, 23.852388>,  <36.631493, 39.212696, 23.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395805, 39.244781, 23.852388>,  <36.002991, 39.298256, 23.799118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395805, 39.244781, 23.852388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178648, -0.431388, 0.884302,
		-0.060771, -0.892206, -0.447521,
		0.982035, -0.133689, 0.133175,
		36.690414, 39.204674, 23.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099693, 38.594250, 23.958067>,  <36.002991, 39.298256, 23.799118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099693, 38.594250, 23.958067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416531, 38.783115, 24.112804>,  <36.606632, 38.896435, 24.205647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416531, 38.783115, 24.112804>,  <36.099693, 38.594250, 23.958067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416531, 38.783115, 24.112804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125412, -0.494345, 0.860171,
		0.597376, -0.729852, -0.332352,
		0.792094, 0.472165, 0.386842,
		36.654160, 38.924767, 24.228857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396626, 38.055370, 24.393780>,  <36.099693, 38.594250, 23.958067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396626, 38.055370, 24.393780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588451, 38.386387, 24.510530>,  <36.703548, 38.584995, 24.580582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588451, 38.386387, 24.510530>,  <36.396626, 38.055370, 24.393780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588451, 38.386387, 24.510530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078572, -0.290790, 0.953555,
		0.873981, -0.480226, -0.074432,
		0.479566, 0.827541, 0.291878,
		36.732323, 38.634647, 24.598093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884266, 37.920719, 24.943796>,  <36.396626, 38.055370, 24.393780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884266, 37.920719, 24.943796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783649, 38.307735, 24.953459>,  <36.723278, 38.539948, 24.959257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783649, 38.307735, 24.953459>,  <36.884266, 37.920719, 24.943796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783649, 38.307735, 24.953459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209981, -0.078922, 0.974515,
		0.944792, 0.240062, 0.223019,
		-0.251545, 0.967544, 0.024156,
		36.708187, 38.598000, 24.960705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186268, 38.093513, 25.473492>,  <36.884266, 37.920719, 24.943796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186268, 38.093513, 25.473492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926067, 38.392670, 25.420565>,  <36.769947, 38.572163, 25.388809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926067, 38.392670, 25.420565>,  <37.186268, 38.093513, 25.473492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926067, 38.392670, 25.420565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215264, -0.014479, 0.976449,
		0.728363, 0.663661, 0.170413,
		-0.650499, 0.747893, -0.132316,
		36.730919, 38.617039, 25.380869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327072, 38.525555, 26.043417>,  <37.186268, 38.093513, 25.473492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327072, 38.525555, 26.043417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954742, 38.612362, 25.925793>,  <36.731346, 38.664444, 25.855219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954742, 38.612362, 25.925793>,  <37.327072, 38.525555, 26.043417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954742, 38.612362, 25.925793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295236, 0.027737, 0.955022,
		0.215411, 0.975774, 0.038253,
		-0.930824, 0.217016, -0.294059,
		36.675495, 38.677467, 25.837576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114807, 38.985397, 26.498701>,  <37.327072, 38.525555, 26.043417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114807, 38.985397, 26.498701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795918, 38.816761, 26.325872>,  <36.604584, 38.715580, 26.222176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795918, 38.816761, 26.325872>,  <37.114807, 38.985397, 26.498701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795918, 38.816761, 26.325872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455812, -0.048885, 0.888733,
		-0.395805, 0.905466, -0.153195,
		-0.797229, -0.421593, -0.432071,
		36.556747, 38.690285, 26.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638771, 39.375072, 26.839069>,  <37.114807, 38.985397, 26.498701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638771, 39.375072, 26.839069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456310, 39.049076, 26.696121>,  <36.346832, 38.853477, 26.610353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456310, 39.049076, 26.696121>,  <36.638771, 39.375072, 26.839069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456310, 39.049076, 26.696121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399169, -0.171531, 0.900689,
		-0.795355, 0.553502, -0.247075,
		-0.456152, -0.814992, -0.357369,
		36.319466, 38.804577, 26.588911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975197, 39.363251, 27.129395>,  <36.638771, 39.375072, 26.839069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975197, 39.363251, 27.129395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008797, 38.980396, 27.018518>,  <36.028957, 38.750683, 26.951992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008797, 38.980396, 27.018518>,  <35.975197, 39.363251, 27.129395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008797, 38.980396, 27.018518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467740, -0.283496, 0.837168,
		-0.879866, 0.059332, -0.471504,
		0.083999, -0.957136, -0.277191,
		36.033997, 38.693256, 26.935362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344872, 39.164761, 27.168213>,  <35.975197, 39.363251, 27.129395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344872, 39.164761, 27.168213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573235, 38.836876, 27.186707>,  <35.710255, 38.640144, 27.197803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573235, 38.836876, 27.186707>,  <35.344872, 39.164761, 27.168213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573235, 38.836876, 27.186707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551167, -0.340920, 0.761569,
		-0.608503, -0.460271, -0.646432,
		0.570910, -0.819709, 0.046236,
		35.744507, 38.590961, 27.200577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841171, 38.594177, 27.311737>,  <35.344872, 39.164761, 27.168213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841171, 38.594177, 27.311737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211746, 38.461380, 27.382717>,  <35.434093, 38.381702, 27.425304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211746, 38.461380, 27.382717>,  <34.841171, 38.594177, 27.311737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211746, 38.461380, 27.382717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309198, -0.402229, 0.861747,
		-0.214718, -0.853225, -0.475293,
		0.926441, -0.331993, 0.177449,
		35.489677, 38.361782, 27.435951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727421, 37.960411, 27.438679>,  <34.841171, 38.594177, 27.311737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727421, 37.960411, 27.438679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071873, 38.062664, 27.614458>,  <35.278542, 38.124016, 27.719925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071873, 38.062664, 27.614458>,  <34.727421, 37.960411, 27.438679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071873, 38.062664, 27.614458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312856, -0.414880, 0.854398,
		0.400730, -0.873228, -0.277288,
		0.861125, 0.255631, 0.439449,
		35.330212, 38.139355, 27.746292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095917, 37.249512, 27.742807>,  <34.727421, 37.960411, 27.438679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095917, 37.249512, 27.742807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208797, 37.589073, 27.921574>,  <35.276524, 37.792809, 28.028833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208797, 37.589073, 27.921574>,  <35.095917, 37.249512, 27.742807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208797, 37.589073, 27.921574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302774, -0.363231, 0.881131,
		0.910325, -0.383967, 0.154522,
		0.282198, 0.848901, 0.446914,
		35.293457, 37.843742, 28.055647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614418, 37.086960, 28.312536>,  <35.095917, 37.249512, 27.742807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614418, 37.086960, 28.312536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446140, 37.439747, 28.397528>,  <35.345173, 37.651421, 28.448523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446140, 37.439747, 28.397528>,  <35.614418, 37.086960, 28.312536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446140, 37.439747, 28.397528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037811, -0.251058, 0.967233,
		0.906413, 0.398879, 0.138967,
		-0.420697, 0.881967, 0.212480,
		35.319931, 37.704338, 28.461271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883450, 37.131279, 28.974026>,  <35.614418, 37.086960, 28.312536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883450, 37.131279, 28.974026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573959, 37.379940, 28.925201>,  <35.388264, 37.529137, 28.895906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573959, 37.379940, 28.925201>,  <35.883450, 37.131279, 28.974026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573959, 37.379940, 28.925201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280950, -0.164012, 0.945604,
		0.567816, 0.765932, 0.301553,
		-0.773726, 0.621650, -0.122060,
		35.341843, 37.566437, 28.888584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910324, 37.610981, 29.525621>,  <35.883450, 37.131279, 28.974026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910324, 37.610981, 29.525621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535400, 37.592628, 29.387440>,  <35.310444, 37.581615, 29.304531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535400, 37.592628, 29.387440>,  <35.910324, 37.610981, 29.525621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535400, 37.592628, 29.387440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334955, -0.154971, 0.929403,
		-0.096181, 0.986853, 0.129887,
		-0.937312, -0.045885, -0.345456,
		35.254208, 37.578861, 29.283802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476871, 38.006310, 29.996004>,  <35.910324, 37.610981, 29.525621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476871, 38.006310, 29.996004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225208, 37.759304, 29.807178>,  <35.074211, 37.611103, 29.693884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225208, 37.759304, 29.807178>,  <35.476871, 38.006310, 29.996004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225208, 37.759304, 29.807178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620945, 0.033993, 0.783116,
		-0.467535, 0.785828, -0.404827,
		-0.629157, -0.617510, -0.472063,
		35.036461, 37.574051, 29.665560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871422, 38.296185, 30.009691>,  <35.476871, 38.006310, 29.996004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871422, 38.296185, 30.009691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762455, 37.916855, 29.944603>,  <34.697075, 37.689259, 29.905550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762455, 37.916855, 29.944603>,  <34.871422, 38.296185, 30.009691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762455, 37.916855, 29.944603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667647, 0.064527, 0.741676,
		-0.692846, 0.310686, -0.650721,
		-0.272417, -0.948320, -0.162721,
		34.680729, 37.632359, 29.895786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260281, 38.424221, 30.234463>,  <34.871422, 38.296185, 30.009691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260281, 38.424221, 30.234463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316021, 38.029896, 30.197029>,  <34.349464, 37.793301, 30.174568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316021, 38.029896, 30.197029>,  <34.260281, 38.424221, 30.234463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316021, 38.029896, 30.197029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549457, -0.155602, 0.820905,
		-0.823819, -0.062976, -0.563345,
		0.139355, -0.985811, -0.093586,
		34.357826, 37.734154, 30.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656982, 38.266022, 30.301138>,  <34.260281, 38.424221, 30.234463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656982, 38.266022, 30.301138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861069, 37.936348, 30.399450>,  <33.983521, 37.738544, 30.458437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861069, 37.936348, 30.399450>,  <33.656982, 38.266022, 30.301138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861069, 37.936348, 30.399450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635727, -0.168936, 0.753201,
		-0.579253, -0.540542, -0.610147,
		0.510213, -0.824181, 0.245780,
		34.014133, 37.689095, 30.473185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216675, 37.883244, 30.610052>,  <33.656982, 38.266022, 30.301138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216675, 37.883244, 30.610052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533333, 37.663532, 30.717083>,  <33.723328, 37.531704, 30.781301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533333, 37.663532, 30.717083>,  <33.216675, 37.883244, 30.610052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533333, 37.663532, 30.717083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511936, -0.357259, 0.781209,
		-0.333494, -0.755429, -0.564012,
		0.791646, -0.549266, 0.267587,
		33.770824, 37.498749, 30.797358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955967, 37.212193, 30.735327>,  <33.216675, 37.883244, 30.610052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955967, 37.212193, 30.735327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303738, 37.215881, 30.932917>,  <33.512402, 37.218094, 31.051470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303738, 37.215881, 30.932917>,  <32.955967, 37.212193, 30.735327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303738, 37.215881, 30.932917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442051, -0.432009, 0.786104,
		0.220650, -0.901822, -0.371524,
		0.869428, 0.009222, 0.493974,
		33.564568, 37.218647, 31.081108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926132, 36.561615, 31.086317>,  <32.955967, 37.212193, 30.735327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926132, 36.561615, 31.086317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200191, 36.789558, 31.267792>,  <33.364628, 36.926327, 31.376677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200191, 36.789558, 31.267792>,  <32.926132, 36.561615, 31.086317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200191, 36.789558, 31.267792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249913, -0.401136, 0.881268,
		0.684189, -0.717182, -0.132422,
		0.685148, 0.569860, 0.453686,
		33.405735, 36.960518, 31.403898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397839, 36.096760, 31.529812>,  <32.926132, 36.561615, 31.086317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397839, 36.096760, 31.529812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402504, 36.468624, 31.677109>,  <33.405304, 36.691742, 31.765488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402504, 36.468624, 31.677109>,  <33.397839, 36.096760, 31.529812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402504, 36.468624, 31.677109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119230, -0.364347, 0.923599,
		0.992798, -0.054682, 0.106592,
		0.011667, 0.929656, 0.368243,
		33.406006, 36.747520, 31.787582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027225, 36.141800, 31.904263>,  <33.397839, 36.096760, 31.529812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027225, 36.141800, 31.904263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770660, 36.419231, 32.035431>,  <33.616722, 36.585690, 32.114132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770660, 36.419231, 32.035431>,  <34.027225, 36.141800, 31.904263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770660, 36.419231, 32.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128620, -0.324162, 0.937217,
		0.756336, 0.643321, 0.118714,
		-0.641414, 0.693582, 0.327920,
		33.578236, 36.627308, 32.133808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296677, 36.372833, 32.465492>,  <34.027225, 36.141800, 31.904263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296677, 36.372833, 32.465492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909542, 36.465137, 32.505596>,  <33.677261, 36.520519, 32.529659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909542, 36.465137, 32.505596>,  <34.296677, 36.372833, 32.465492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909542, 36.465137, 32.505596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060111, -0.174867, 0.982755,
		0.244309, 0.957169, 0.155371,
		-0.967832, 0.230757, 0.100258,
		33.619194, 36.534363, 32.535675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281322, 36.699211, 33.138489>,  <34.296677, 36.372833, 32.465492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281322, 36.699211, 33.138489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916126, 36.586475, 33.020493>,  <33.697010, 36.518833, 32.949696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916126, 36.586475, 33.020493>,  <34.281322, 36.699211, 33.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916126, 36.586475, 33.020493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205437, -0.307102, 0.929238,
		-0.352490, 0.908985, 0.222479,
		-0.912988, -0.281842, -0.294989,
		33.642231, 36.501923, 32.931995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838715, 36.887615, 33.679558>,  <34.281322, 36.699211, 33.138489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838715, 36.887615, 33.679558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676769, 36.595066, 33.460037>,  <33.579601, 36.419537, 33.328323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676769, 36.595066, 33.460037>,  <33.838715, 36.887615, 33.679558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676769, 36.595066, 33.460037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234781, -0.496920, 0.835433,
		-0.883720, 0.467087, 0.029475,
		-0.404867, -0.731368, -0.548802,
		33.555309, 36.375656, 33.295395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289879, 36.709541, 34.074005>,  <33.838715, 36.887615, 33.679558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289879, 36.709541, 34.074005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359329, 36.414261, 33.813263>,  <33.401001, 36.237095, 33.656818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359329, 36.414261, 33.813263>,  <33.289879, 36.709541, 34.074005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359329, 36.414261, 33.813263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374656, -0.661652, 0.649499,
		-0.910761, 0.131450, -0.391452,
		0.173628, -0.738199, -0.651856,
		33.411419, 36.192802, 33.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678020, 36.309837, 34.079060>,  <33.289879, 36.709541, 34.074005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678020, 36.309837, 34.079060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972050, 36.074348, 33.944553>,  <33.148468, 35.933056, 33.863850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972050, 36.074348, 33.944553>,  <32.678020, 36.309837, 34.079060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972050, 36.074348, 33.944553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341222, -0.749823, 0.566863,
		-0.585863, -0.301945, -0.752060,
		0.735073, -0.588723, -0.336263,
		33.192570, 35.897732, 33.843674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354652, 35.769981, 33.929749>,  <32.678020, 36.309837, 34.079060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354652, 35.769981, 33.929749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731030, 35.639133, 33.964649>,  <32.956856, 35.560623, 33.985592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731030, 35.639133, 33.964649>,  <32.354652, 35.769981, 33.929749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731030, 35.639133, 33.964649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312873, -0.741716, 0.593269,
		-0.129353, -0.585533, -0.800262,
		0.940945, -0.327122, 0.087254,
		33.013313, 35.540997, 33.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266914, 35.081890, 33.771576>,  <32.354652, 35.769981, 33.929749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266914, 35.081890, 33.771576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608910, 35.124245, 33.974667>,  <32.814106, 35.149658, 34.096523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608910, 35.124245, 33.974667>,  <32.266914, 35.081890, 33.771576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608910, 35.124245, 33.974667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181308, -0.856160, 0.483858,
		0.485932, -0.505746, -0.712805,
		0.854984, 0.105885, 0.507731,
		32.865406, 35.156010, 34.126987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472992, 34.451374, 33.811386>,  <32.266914, 35.081890, 33.771576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472992, 34.451374, 33.811386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686024, 34.643105, 34.090412>,  <32.813843, 34.758144, 34.257828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686024, 34.643105, 34.090412>,  <32.472992, 34.451374, 33.811386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686024, 34.643105, 34.090412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017738, -0.830320, 0.557005,
		0.846194, -0.284276, -0.450714,
		0.532580, 0.479329, 0.697569,
		32.845798, 34.786903, 34.299683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092079, 33.991936, 33.938190>,  <32.472992, 34.451374, 33.811386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092079, 33.991936, 33.938190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073078, 34.218567, 34.267246>,  <33.061676, 34.354546, 34.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073078, 34.218567, 34.267246>,  <33.092079, 33.991936, 33.938190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073078, 34.218567, 34.267246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195645, -0.802341, 0.563890,
		0.979524, 0.187731, -0.072735,
		-0.047501, 0.566574, 0.822641,
		33.058826, 34.388538, 34.514038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724606, 33.766075, 34.388622>,  <33.092079, 33.991936, 33.938190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724606, 33.766075, 34.388622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477997, 33.961586, 34.635521>,  <33.330032, 34.078892, 34.783661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477997, 33.961586, 34.635521>,  <33.724606, 33.766075, 34.388622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477997, 33.961586, 34.635521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117416, -0.718120, 0.685942,
		0.778530, 0.495376, 0.385349,
		-0.616526, 0.488780, 0.617244,
		33.293037, 34.108219, 34.820694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994572, 33.675724, 35.093536>,  <33.724606, 33.766075, 34.388622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994572, 33.675724, 35.093536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610023, 33.775459, 35.140186>,  <33.379295, 33.835300, 35.168179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610023, 33.775459, 35.140186>,  <33.994572, 33.675724, 35.093536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610023, 33.775459, 35.140186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119346, -0.759353, 0.639640,
		0.248047, 0.601011, 0.759775,
		-0.961368, 0.249337, 0.116627,
		33.321613, 33.850262, 35.175175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933594, 33.711746, 35.812656>,  <33.994572, 33.675724, 35.093536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933594, 33.711746, 35.812656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552612, 33.687115, 35.693298>,  <33.324024, 33.672337, 35.621681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552612, 33.687115, 35.693298>,  <33.933594, 33.711746, 35.812656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552612, 33.687115, 35.693298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093759, -0.872609, 0.479336,
		-0.289900, 0.484522, 0.825346,
		-0.952453, -0.061576, -0.298398,
		33.266876, 33.668640, 35.603779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585762, 33.664871, 36.375504>,  <33.933594, 33.711746, 35.812656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585762, 33.664871, 36.375504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355495, 33.498711, 36.093781>,  <33.217335, 33.399014, 35.924747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355495, 33.498711, 36.093781>,  <33.585762, 33.664871, 36.375504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355495, 33.498711, 36.093781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106077, -0.816123, 0.568059,
		-0.810775, 0.401723, 0.425749,
		-0.575666, -0.415406, -0.704306,
		33.182796, 33.374088, 35.882488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021393, 33.310566, 36.845470>,  <33.585762, 33.664871, 36.375504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021393, 33.310566, 36.845470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061283, 33.139900, 36.485912>,  <33.085217, 33.037502, 36.270176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061283, 33.139900, 36.485912>,  <33.021393, 33.310566, 36.845470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061283, 33.139900, 36.485912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074869, -0.904055, 0.420807,
		-0.992194, 0.025334, -0.122102,
		0.099726, -0.426664, -0.898895,
		33.091202, 33.011902, 36.216244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464111, 32.821140, 36.787727>,  <33.021393, 33.310566, 36.845470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464111, 32.821140, 36.787727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780331, 32.722378, 36.563560>,  <32.970062, 32.663120, 36.429058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780331, 32.722378, 36.563560>,  <32.464111, 32.821140, 36.787727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780331, 32.722378, 36.563560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040748, -0.891887, 0.450418,
		-0.611042, -0.378914, -0.695019,
		0.790549, -0.246903, -0.560421,
		33.017494, 32.648308, 36.395435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325329, 32.117527, 36.614449>,  <32.464111, 32.821140, 36.787727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325329, 32.117527, 36.614449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714520, 32.209541, 36.606434>,  <32.948032, 32.264748, 36.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714520, 32.209541, 36.606434>,  <32.325329, 32.117527, 36.614449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714520, 32.209541, 36.606434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162132, -0.618823, 0.768616,
		0.164407, -0.751095, -0.639396,
		0.972977, 0.230032, -0.020037,
		33.006413, 32.278549, 36.600422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592018, 31.903008, 37.189861>,  <32.325329, 32.117527, 36.614449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592018, 31.903008, 37.189861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949200, 31.980844, 37.027500>,  <33.163509, 32.027546, 36.930084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949200, 31.980844, 37.027500>,  <32.592018, 31.903008, 37.189861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949200, 31.980844, 37.027500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449990, -0.362673, 0.816074,
		0.011593, -0.911373, -0.411418,
		0.892959, 0.194594, -0.405904,
		33.217087, 32.039223, 36.905727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100498, 31.333023, 37.309715>,  <32.592018, 31.903008, 37.189861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100498, 31.333023, 37.309715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287472, 31.679794, 37.240509>,  <33.399658, 31.887857, 37.198986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287472, 31.679794, 37.240509>,  <33.100498, 31.333023, 37.309715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287472, 31.679794, 37.240509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686496, -0.232665, 0.688905,
		0.556979, -0.440793, -0.703900,
		0.467438, 0.866930, -0.173013,
		33.427704, 31.939873, 37.188606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854454, 31.274763, 37.046375>,  <33.100498, 31.333023, 37.309715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854454, 31.274763, 37.046375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824108, 31.603401, 37.272377>,  <33.805901, 31.800583, 37.407978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824108, 31.603401, 37.272377>,  <33.854454, 31.274763, 37.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824108, 31.603401, 37.272377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702422, -0.358135, 0.615095,
		0.707706, 0.443535, -0.549936,
		-0.075865, 0.821594, 0.565003,
		33.801350, 31.849880, 37.441879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793690, 30.459522, 36.794037>,  <33.854454, 31.274763, 37.046375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793690, 30.459522, 36.794037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672859, 30.100988, 36.923855>,  <33.600361, 29.885868, 37.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672859, 30.100988, 36.923855>,  <33.793690, 30.459522, 36.794037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672859, 30.100988, 36.923855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486306, 0.437714, 0.756249,
		-0.819911, 0.070620, -0.568118,
		-0.302079, -0.896337, 0.324544,
		33.582237, 29.832087, 37.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211250, 30.219004, 37.068474>,  <33.793690, 30.459522, 36.794037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211250, 30.219004, 37.068474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582191, 30.080681, 37.011284>,  <33.804756, 29.997686, 36.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582191, 30.080681, 37.011284>,  <33.211250, 30.219004, 37.068474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582191, 30.080681, 37.011284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057432, 0.509078, -0.858802,
		0.369765, 0.788198, 0.491953,
		0.927349, -0.345809, -0.142972,
		33.860397, 29.976938, 36.968391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557140, 30.473797, 36.953175>,  <33.211250, 30.219004, 37.068474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557140, 30.473797, 36.953175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262394, 30.300072, 36.745945>,  <32.085545, 30.195837, 36.621609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262394, 30.300072, 36.745945>,  <32.557140, 30.473797, 36.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262394, 30.300072, 36.745945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652492, -0.657396, -0.376943,
		-0.176869, -0.615795, 0.767798,
		-0.736867, -0.434313, -0.518074,
		32.041332, 30.169779, 36.590523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198280, 29.743793, 37.272350>,  <32.557140, 30.473797, 36.953175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198280, 29.743793, 37.272350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253830, 29.815588, 36.882786>,  <32.287159, 29.858665, 36.649048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253830, 29.815588, 36.882786>,  <32.198280, 29.743793, 37.272350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253830, 29.815588, 36.882786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863208, -0.503944, 0.030217,
		-0.485372, -0.844881, -0.224922,
		0.138878, 0.179488, -0.973908,
		32.295494, 29.869434, 36.590614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553978, 29.170591, 36.886265>,  <32.198280, 29.743793, 37.272350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553978, 29.170591, 36.886265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603535, 29.411524, 36.570835>,  <32.633270, 29.556084, 36.381577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603535, 29.411524, 36.570835>,  <32.553978, 29.170591, 36.886265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603535, 29.411524, 36.570835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824252, -0.504949, -0.256193,
		-0.552502, -0.618243, -0.559032,
		0.123893, 0.602330, -0.788574,
		32.640701, 29.592222, 36.334263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000919, 28.813482, 36.478191>,  <32.553978, 29.170591, 36.886265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000919, 28.813482, 36.478191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062534, 29.179792, 36.329800>,  <33.099503, 29.399578, 36.240765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062534, 29.179792, 36.329800>,  <33.000919, 28.813482, 36.478191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062534, 29.179792, 36.329800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940232, -0.251262, -0.229852,
		-0.303706, -0.313402, -0.899745,
		0.154036, 0.915777, -0.370980,
		33.108746, 29.454525, 36.218506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365482, 28.670809, 35.839256>,  <33.000919, 28.813482, 36.478191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365482, 28.670809, 35.839256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457413, 29.043140, 35.952911>,  <33.512569, 29.266539, 36.021107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457413, 29.043140, 35.952911>,  <33.365482, 28.670809, 35.839256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457413, 29.043140, 35.952911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916837, -0.109136, -0.384055,
		-0.326480, 0.348777, -0.878502,
		0.229826, 0.930829, 0.284141,
		33.526360, 29.322390, 36.038155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613670, 29.186956, 35.214207>,  <33.365482, 28.670809, 35.839256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613670, 29.186956, 35.214207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785252, 29.274263, 35.564831>,  <33.888199, 29.326647, 35.775208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785252, 29.274263, 35.564831>,  <33.613670, 29.186956, 35.214207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785252, 29.274263, 35.564831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892496, 0.047418, -0.448555,
		-0.139469, 0.974737, -0.174462,
		0.428950, 0.218266, 0.876562,
		33.913937, 29.339743, 35.827801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033482, 29.699461, 35.027252>,  <33.613670, 29.186956, 35.214207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033482, 29.699461, 35.027252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196262, 29.486902, 35.324444>,  <34.293930, 29.359367, 35.502758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196262, 29.486902, 35.324444>,  <34.033482, 29.699461, 35.027252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196262, 29.486902, 35.324444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895003, 0.069315, -0.440642,
		0.182656, 0.844283, 0.503808,
		0.406949, -0.531395, 0.742975,
		34.318348, 29.327484, 35.547337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749149, 29.997580, 35.164970>,  <34.033482, 29.699461, 35.027252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749149, 29.997580, 35.164970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745853, 29.618206, 35.291718>,  <34.743877, 29.390581, 35.367767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745853, 29.618206, 35.291718>,  <34.749149, 29.997580, 35.164970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745853, 29.618206, 35.291718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906501, -0.140848, -0.398017,
		0.422123, 0.283963, 0.860916,
		-0.008236, -0.948434, 0.316868,
		34.743382, 29.333675, 35.386776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409599, 29.865881, 35.522915>,  <34.749149, 29.997580, 35.164970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409599, 29.865881, 35.522915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334621, 29.506824, 35.363365>,  <35.289635, 29.291389, 35.267635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334621, 29.506824, 35.363365>,  <35.409599, 29.865881, 35.522915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334621, 29.506824, 35.363365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964923, -0.092272, -0.245784,
		0.183821, -0.430957, 0.883451,
		-0.187440, -0.897643, -0.398879,
		35.278389, 29.237532, 35.243702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970779, 30.261768, 36.098911>,  <35.409599, 29.865881, 35.522915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970779, 30.261768, 36.098911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601276, 30.367804, 35.988350>,  <35.379574, 30.431425, 35.922012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601276, 30.367804, 35.988350>,  <35.970779, 30.261768, 36.098911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601276, 30.367804, 35.988350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074707, -0.583137, -0.808931,
		-0.375620, -0.767906, 0.518874,
		-0.923758, 0.265087, -0.276406,
		35.324150, 30.447330, 35.905430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482670, 30.201811, 35.593582>,  <35.970779, 30.261768, 36.098911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482670, 30.201811, 35.593582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863049, 30.121988, 35.688141>,  <37.091274, 30.074095, 35.744877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863049, 30.121988, 35.688141>,  <36.482670, 30.201811, 35.593582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863049, 30.121988, 35.688141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302146, 0.434993, -0.848227,
		0.066439, 0.878042, 0.473949,
		0.950944, -0.199557, 0.236396,
		37.148331, 30.062120, 35.759060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933483, 30.767752, 35.448627>,  <36.482670, 30.201811, 35.593582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933483, 30.767752, 35.448627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138470, 30.428896, 35.392441>,  <37.261463, 30.225582, 35.358730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138470, 30.428896, 35.392441>,  <36.933483, 30.767752, 35.448627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138470, 30.428896, 35.392441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166894, 0.258719, -0.951426,
		0.842334, 0.464129, 0.273967,
		0.512465, -0.847141, -0.140467,
		37.292210, 30.174753, 35.350300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653278, 30.738211, 35.288334>,  <36.933483, 30.767752, 35.448627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653278, 30.738211, 35.288334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505486, 30.409531, 35.114765>,  <37.416809, 30.212322, 35.010624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505486, 30.409531, 35.114765>,  <37.653278, 30.738211, 35.288334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505486, 30.409531, 35.114765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090749, 0.432830, -0.896896,
		0.924796, -0.370765, -0.085354,
		-0.369482, -0.821700, -0.433926,
		37.394642, 30.163021, 34.984589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075279, 30.704004, 34.765537>,  <37.653278, 30.738211, 35.288334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075279, 30.704004, 34.765537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749825, 30.486849, 34.682339>,  <37.554550, 30.356556, 34.632420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749825, 30.486849, 34.682339>,  <38.075279, 30.704004, 34.765537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749825, 30.486849, 34.682339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005420, 0.350678, -0.936480,
		0.581345, -0.763084, -0.282383,
		-0.813639, -0.542888, -0.208001,
		37.505733, 30.323982, 34.619938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223446, 30.326559, 34.169529>,  <38.075279, 30.704004, 34.765537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223446, 30.326559, 34.169529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831207, 30.386345, 34.220264>,  <37.595863, 30.422216, 34.250706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831207, 30.386345, 34.220264>,  <38.223446, 30.326559, 34.169529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831207, 30.386345, 34.220264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079150, 0.290070, -0.953727,
		-0.179342, -0.945261, -0.272612,
		-0.980597, 0.149466, 0.126839,
		37.537029, 30.431185, 34.258316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006371, 31.066013, 34.029293>,  <38.223446, 30.326559, 34.169529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006371, 31.066013, 34.029293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182678, 31.022339, 33.672913>,  <38.288464, 30.996134, 33.459084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182678, 31.022339, 33.672913>,  <38.006371, 31.066013, 34.029293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182678, 31.022339, 33.672913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441064, 0.890828, 0.109032,
		0.781780, -0.441026, 0.440812,
		0.440774, -0.109187, -0.890953,
		38.314911, 30.989582, 33.405628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729633, 31.158846, 33.907166>,  <38.006371, 31.066013, 34.029293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729633, 31.158846, 33.907166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624443, 31.343485, 33.568279>,  <38.561329, 31.454268, 33.364948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624443, 31.343485, 33.568279>,  <38.729633, 31.158846, 33.907166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624443, 31.343485, 33.568279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638509, 0.741575, 0.205845,
		0.723291, -0.486821, -0.489750,
		-0.262977, 0.461596, -0.847214,
		38.545551, 31.481964, 33.314114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311642, 31.499556, 33.658417>,  <38.729633, 31.158846, 33.907166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311642, 31.499556, 33.658417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995087, 31.673819, 33.486877>,  <38.805153, 31.778378, 33.383953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995087, 31.673819, 33.486877>,  <39.311642, 31.499556, 33.658417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995087, 31.673819, 33.486877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435042, 0.894198, 0.105588,
		0.429476, -0.103007, -0.897184,
		-0.791384, 0.435660, -0.428849,
		38.757671, 31.804516, 33.358223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515144, 31.864132, 33.027920>,  <39.311642, 31.499556, 33.658417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515144, 31.864132, 33.027920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216843, 32.059250, 33.209427>,  <39.037861, 32.176319, 33.318333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216843, 32.059250, 33.209427>,  <39.515144, 31.864132, 33.027920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216843, 32.059250, 33.209427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553741, 0.832552, 0.015079,
		-0.370431, 0.262516, -0.890992,
		-0.745756, 0.487793, 0.453769,
		38.993114, 32.205589, 33.345558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297260, 32.432167, 32.587063>,  <39.515144, 31.864132, 33.027920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297260, 32.432167, 32.587063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199505, 32.487274, 32.971001>,  <39.140850, 32.520340, 33.201363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199505, 32.487274, 32.971001>,  <39.297260, 32.432167, 32.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199505, 32.487274, 32.971001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371596, 0.927595, -0.038524,
		-0.895650, 0.347258, -0.277890,
		-0.244391, 0.137766, 0.959840,
		39.126186, 32.528603, 33.258953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915833, 33.066841, 32.710667>,  <39.297260, 32.432167, 32.587063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915833, 33.066841, 32.710667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102566, 32.973370, 33.051830>,  <39.214607, 32.917286, 33.256531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102566, 32.973370, 33.051830>,  <38.915833, 33.066841, 32.710667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102566, 32.973370, 33.051830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243697, 0.961108, 0.129933,
		-0.850103, 0.147195, 0.505626,
		0.466836, -0.233676, 0.852913,
		39.242615, 32.903267, 33.307705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894554, 33.205189, 31.987627>,  <38.915833, 33.066841, 32.710667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894554, 33.205189, 31.987627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642807, 32.902538, 31.916731>,  <38.491756, 32.720947, 31.874193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642807, 32.902538, 31.916731>,  <38.894554, 33.205189, 31.987627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642807, 32.902538, 31.916731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056183, 0.183179, -0.981473,
		0.775071, -0.627669, -0.072778,
		-0.629371, -0.756622, -0.177241,
		38.453995, 32.675552, 31.863558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183105, 32.683128, 31.756123>,  <38.894554, 33.205189, 31.987627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183105, 32.683128, 31.756123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814201, 32.678425, 31.601562>,  <38.592861, 32.675602, 31.508827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814201, 32.678425, 31.601562>,  <39.183105, 32.683128, 31.756123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814201, 32.678425, 31.601562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362077, 0.323905, -0.874063,
		0.135437, -0.946017, -0.294464,
		-0.922257, -0.011762, -0.386400,
		38.537525, 32.674896, 31.485643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855328, 32.972939, 31.679852>,  <39.183105, 32.683128, 31.756123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855328, 32.972939, 31.679852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948750, 32.652153, 31.459919>,  <40.004803, 32.459682, 31.327959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948750, 32.652153, 31.459919>,  <39.855328, 32.972939, 31.679852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948750, 32.652153, 31.459919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658779, -0.285399, 0.696102,
		-0.715167, -0.524791, 0.461660,
		0.233551, -0.801961, -0.549830,
		40.018814, 32.411564, 31.294970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107555, 33.722424, 31.810238>,  <39.855328, 32.972939, 31.679852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107555, 33.722424, 31.810238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460354, 33.898125, 31.741947>,  <40.672031, 34.003544, 31.700974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460354, 33.898125, 31.741947>,  <40.107555, 33.722424, 31.810238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460354, 33.898125, 31.741947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045789, -0.440436, -0.896615,
		-0.469031, 0.782992, -0.408575,
		0.881994, 0.439249, -0.170726,
		40.724953, 34.029900, 31.690729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057278, 34.025078, 31.120068>,  <40.107555, 33.722424, 31.810238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057278, 34.025078, 31.120068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436417, 33.970131, 31.235111>,  <40.663898, 33.937160, 31.304138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436417, 33.970131, 31.235111>,  <40.057278, 34.025078, 31.120068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436417, 33.970131, 31.235111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124210, -0.671819, -0.730226,
		0.293532, 0.727866, -0.619718,
		0.947845, -0.137369, 0.287609,
		40.720772, 33.928921, 31.321394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422478, 33.423637, 31.050079>,  <40.057278, 34.025078, 31.120068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422478, 33.423637, 31.050079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704945, 33.557095, 30.800278>,  <40.874424, 33.637169, 30.650396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704945, 33.557095, 30.800278>,  <40.422478, 33.423637, 31.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704945, 33.557095, 30.800278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328054, 0.627459, 0.706170,
		0.627459, -0.703548, 0.333641,
		-0.706170, -0.333641, 0.624506,
		40.916794, 33.657188, 30.612926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130856, 33.435135, 31.411913>,  <40.422478, 33.423637, 31.050079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130856, 33.435135, 31.411913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077251, 33.694458, 31.112118>,  <41.045090, 33.850052, 30.932241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077251, 33.694458, 31.112118>,  <41.130856, 33.435135, 31.411913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077251, 33.694458, 31.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034190, 0.758885, 0.650327,
		0.990390, 0.061526, -0.123865,
		-0.134011, 0.648312, -0.749488,
		41.037048, 33.888950, 30.887272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773483, 33.914387, 31.192886>,  <41.130856, 33.435135, 31.411913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773483, 33.914387, 31.192886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400928, 34.059834, 31.199858>,  <41.177395, 34.147102, 31.204041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400928, 34.059834, 31.199858>,  <41.773483, 33.914387, 31.192886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400928, 34.059834, 31.199858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230763, 0.552702, 0.800793,
		0.281548, 0.749869, -0.598688,
		-0.931386, 0.363617, 0.017430,
		41.121513, 34.168919, 31.205086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834476, 34.578236, 31.218906>,  <41.773483, 33.914387, 31.192886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834476, 34.578236, 31.218906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497143, 34.448997, 31.390675>,  <41.294743, 34.371456, 31.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497143, 34.448997, 31.390675>,  <41.834476, 34.578236, 31.218906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497143, 34.448997, 31.390675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180280, 0.582681, 0.792453,
		-0.506253, 0.745716, -0.433146,
		-0.843331, -0.323094, 0.429421,
		41.244144, 34.352070, 31.519501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534859, 34.471699, 30.891645>,  <41.834476, 34.578236, 31.218906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534859, 34.471699, 30.891645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624641, 34.812927, 30.703226>,  <42.678513, 35.017666, 30.590174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624641, 34.812927, 30.703226>,  <42.534859, 34.471699, 30.891645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624641, 34.812927, 30.703226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168755, 0.510107, 0.843393,
		0.959759, -0.109817, 0.258460,
		0.224461, 0.853071, -0.471048,
		42.691978, 35.068848, 30.561913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152802, 34.944126, 31.142099>,  <42.534859, 34.471699, 30.891645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152802, 34.944126, 31.142099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825470, 35.124424, 30.999456>,  <42.629070, 35.232601, 30.913870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825470, 35.124424, 30.999456>,  <43.152802, 34.944126, 31.142099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825470, 35.124424, 30.999456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151224, 0.429740, 0.890200,
		0.554502, 0.782402, -0.283504,
		-0.818327, 0.450745, -0.356609,
		42.579971, 35.259647, 30.892473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314953, 35.599857, 31.133408>,  <43.152802, 34.944126, 31.142099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314953, 35.599857, 31.133408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946171, 35.475540, 31.225853>,  <42.724903, 35.400951, 31.281321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946171, 35.475540, 31.225853>,  <43.314953, 35.599857, 31.133408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946171, 35.475540, 31.225853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046028, 0.504572, 0.862142,
		-0.384561, 0.805490, -0.450886,
		-0.921951, -0.310793, 0.231113,
		42.669586, 35.382301, 31.295187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886513, 36.166119, 31.339052>,  <43.314953, 35.599857, 31.133408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886513, 36.166119, 31.339052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699703, 35.854206, 31.505823>,  <42.587620, 35.667057, 31.605886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699703, 35.854206, 31.505823>,  <42.886513, 36.166119, 31.339052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699703, 35.854206, 31.505823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052895, 0.446025, 0.893456,
		-0.882662, 0.439317, -0.167057,
		-0.467022, -0.779784, 0.416927,
		42.559597, 35.620270, 31.630901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313583, 36.340244, 31.682474>,  <42.886513, 36.166119, 31.339052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313583, 36.340244, 31.682474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468212, 36.010277, 31.847435>,  <42.560989, 35.812298, 31.946411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468212, 36.010277, 31.847435>,  <42.313583, 36.340244, 31.682474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468212, 36.010277, 31.847435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016479, 0.453272, 0.891220,
		-0.922112, -0.337725, 0.188816,
		0.386572, -0.824916, 0.412402,
		42.584183, 35.762802, 31.971155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909119, 36.134506, 32.279255>,  <42.313583, 36.340244, 31.682474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909119, 36.134506, 32.279255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257877, 35.950481, 32.346355>,  <42.467133, 35.840065, 32.386616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257877, 35.950481, 32.346355>,  <41.909119, 36.134506, 32.279255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257877, 35.950481, 32.346355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035187, 0.400539, 0.915604,
		-0.488429, -0.792407, 0.365416,
		0.871894, -0.460065, 0.167753,
		42.519447, 35.812462, 32.396683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846432, 36.065506, 32.960503>,  <41.909119, 36.134506, 32.279255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846432, 36.065506, 32.960503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233715, 36.010494, 32.876923>,  <42.466084, 35.977489, 32.826775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233715, 36.010494, 32.876923>,  <41.846432, 36.065506, 32.960503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233715, 36.010494, 32.876923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250034, 0.507084, 0.824832,
		-0.007482, -0.850853, 0.525350,
		0.968208, -0.137527, -0.208948,
		42.524178, 35.969234, 32.814240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284119, 35.772285, 33.574062>,  <41.846432, 36.065506, 32.960503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284119, 35.772285, 33.574062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536011, 36.012421, 33.376865>,  <42.687145, 36.156502, 33.258549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536011, 36.012421, 33.376865>,  <42.284119, 35.772285, 33.574062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536011, 36.012421, 33.376865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250578, 0.443723, 0.860419,
		0.735293, -0.665361, 0.128991,
		0.629726, 0.600338, -0.492991,
		42.724930, 36.192520, 33.228970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895130, 35.782433, 33.929688>,  <42.284119, 35.772285, 33.574062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895130, 35.782433, 33.929688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943947, 36.136894, 33.750874>,  <42.973236, 36.349571, 33.643585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943947, 36.136894, 33.750874>,  <42.895130, 35.782433, 33.929688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943947, 36.136894, 33.750874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001479, 0.450565, 0.892742,
		0.992524, -0.108291, 0.056298,
		0.122042, 0.886151, -0.447037,
		42.980560, 36.402740, 33.616764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159195, 36.291981, 34.374687>,  <42.895130, 35.782433, 33.929688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159195, 36.291981, 34.374687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933620, 36.467899, 34.095100>,  <42.798275, 36.573452, 33.927349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933620, 36.467899, 34.095100>,  <43.159195, 36.291981, 34.374687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933620, 36.467899, 34.095100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377447, 0.615546, 0.691836,
		0.734515, 0.653973, -0.181127,
		-0.563934, 0.439798, -0.698968,
		42.764439, 36.599838, 33.885410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192783, 37.059269, 34.508442>,  <43.159195, 36.291981, 34.374687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192783, 37.059269, 34.508442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858826, 36.938030, 34.324665>,  <42.658451, 36.865288, 34.214397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858826, 36.938030, 34.324665>,  <43.192783, 37.059269, 34.508442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858826, 36.938030, 34.324665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536602, 0.634045, 0.556817,
		0.122537, 0.711419, -0.692002,
		-0.834891, -0.303099, -0.459443,
		42.608356, 36.847099, 34.186832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651020, 37.627350, 34.262760>,  <43.192783, 37.059269, 34.508442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651020, 37.627350, 34.262760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746788, 37.744682, 33.892544>,  <43.804249, 37.815083, 33.670414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746788, 37.744682, 33.892544>,  <43.651020, 37.627350, 34.262760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746788, 37.744682, 33.892544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791960, 0.492465, 0.360941,
		0.561674, -0.819411, -0.114401,
		0.239421, 0.293332, -0.925545,
		43.818615, 37.832684, 33.614880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319084, 37.533001, 34.066307>,  <43.651020, 37.627350, 34.262760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319084, 37.533001, 34.066307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216858, 37.854633, 33.851593>,  <44.155521, 38.047611, 33.722763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216858, 37.854633, 33.851593>,  <44.319084, 37.533001, 34.066307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216858, 37.854633, 33.851593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665939, 0.548915, 0.505191,
		0.700865, -0.228361, -0.675751,
		-0.255564, 0.804080, -0.536790,
		44.140190, 38.095856, 33.690556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907070, 37.994270, 33.900635>,  <44.319084, 37.533001, 34.066307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907070, 37.994270, 33.900635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564903, 38.193748, 33.956585>,  <44.359604, 38.313435, 33.990154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564903, 38.193748, 33.956585>,  <44.907070, 37.994270, 33.900635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564903, 38.193748, 33.956585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431436, 0.536651, 0.725168,
		0.286574, 0.680668, -0.674215,
		-0.855417, 0.498695, 0.139874,
		44.308277, 38.343357, 33.998547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972656, 38.764370, 33.771866>,  <44.907070, 37.994270, 33.900635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972656, 38.764370, 33.771866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730900, 38.638935, 34.064819>,  <44.585846, 38.563675, 34.240589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730900, 38.638935, 34.064819>,  <44.972656, 38.764370, 33.771866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730900, 38.638935, 34.064819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579290, 0.458115, 0.674206,
		-0.546935, 0.831742, -0.095222,
		-0.604388, -0.313586, 0.732379,
		44.549583, 38.544861, 34.284534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385643, 38.602428, 34.485420>,  <44.972656, 38.764370, 33.771866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385643, 38.602428, 34.485420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730434, 38.779369, 34.386375>,  <45.937309, 38.885536, 34.326950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.730434, 38.779369, 34.386375>,  <45.385643, 38.602428, 34.485420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730434, 38.779369, 34.386375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082618, -0.359326, -0.929548,
		-0.500162, 0.821710, -0.273186,
		0.861981, 0.442354, -0.247610,
		45.989029, 38.912075, 34.312092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432274, 39.264065, 34.068699>,  <45.385643, 38.602428, 34.485420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432274, 39.264065, 34.068699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744980, 39.021126, 34.012165>,  <45.932602, 38.875362, 33.978245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744980, 39.021126, 34.012165>,  <45.432274, 39.264065, 34.068699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.744980, 39.021126, 34.012165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457925, -0.405314, -0.791217,
		0.423256, 0.683267, -0.594979,
		0.781766, -0.607343, -0.141334,
		45.979511, 38.838924, 33.969765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528416, 39.267147, 33.309280>,  <45.432274, 39.264065, 34.068699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528416, 39.267147, 33.309280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654743, 38.905983, 33.425903>,  <45.730537, 38.689285, 33.495876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654743, 38.905983, 33.425903>,  <45.528416, 39.267147, 33.309280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654743, 38.905983, 33.425903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421723, -0.408842, -0.809319,
		0.849947, 0.132640, -0.509899,
		0.315816, -0.902915, 0.291557,
		45.749489, 38.635109, 33.513371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872990, 39.028503, 32.737026>,  <45.528416, 39.267147, 33.309280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872990, 39.028503, 32.737026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788601, 38.714336, 32.969791>,  <45.737968, 38.525837, 33.109451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788601, 38.714336, 32.969791>,  <45.872990, 39.028503, 32.737026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788601, 38.714336, 32.969791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433720, -0.458283, -0.775799,
		0.876001, -0.416056, -0.243965,
		-0.210970, -0.785413, 0.581908,
		45.725311, 38.478714, 33.144363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896664, 38.455166, 32.243095>,  <45.872990, 39.028503, 32.737026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896664, 38.455166, 32.243095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695099, 38.327114, 32.563992>,  <45.574162, 38.250282, 32.756531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695099, 38.327114, 32.563992>,  <45.896664, 38.455166, 32.243095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695099, 38.327114, 32.563992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459829, -0.686810, -0.562894,
		0.731185, -0.652543, 0.198888,
		-0.503911, -0.320125, 0.802243,
		45.543926, 38.231075, 32.804665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200878, 37.772999, 32.371071>,  <45.896664, 38.455166, 32.243095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200878, 37.772999, 32.371071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814640, 37.821720, 32.462982>,  <45.582897, 37.850952, 32.518127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814640, 37.821720, 32.462982>,  <46.200878, 37.772999, 32.371071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814640, 37.821720, 32.462982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225013, -0.834288, -0.503322,
		0.130393, -0.537706, 0.832989,
		-0.965591, 0.121804, 0.229776,
		45.524963, 37.858261, 32.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853203, 37.088528, 32.642212>,  <46.200878, 37.772999, 32.371071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853203, 37.088528, 32.642212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602501, 36.984024, 32.935860>,  <45.452080, 36.921322, 33.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602501, 36.984024, 32.935860>,  <45.853203, 37.088528, 32.642212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602501, 36.984024, 32.935860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550244, -0.815469, 0.179562,
		0.551739, 0.516484, 0.654850,
		-0.626751, -0.261256, 0.734118,
		45.414474, 36.905647, 33.156094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178207, 36.864697, 33.299889>,  <45.853203, 37.088528, 32.642212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178207, 36.864697, 33.299889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815937, 36.695213, 33.293949>,  <45.598576, 36.593525, 33.290386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815937, 36.695213, 33.293949>,  <46.178207, 36.864697, 33.299889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815937, 36.695213, 33.293949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371567, -0.810131, 0.453461,
		-0.204166, 0.405171, 0.891153,
		-0.905679, -0.423704, -0.014853,
		45.544235, 36.568104, 33.289494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101677, 36.636681, 33.970043>,  <46.178207, 36.864697, 33.299889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101677, 36.636681, 33.970043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866482, 36.435265, 33.716835>,  <45.725365, 36.314415, 33.564911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866482, 36.435265, 33.716835>,  <46.101677, 36.636681, 33.970043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866482, 36.435265, 33.716835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433892, -0.856826, 0.278546,
		-0.682648, -0.110880, 0.722286,
		-0.587988, -0.503543, -0.633020,
		45.690086, 36.284203, 33.526928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715305, 36.085575, 34.265812>,  <46.101677, 36.636681, 33.970043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715305, 36.085575, 34.265812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840950, 36.038742, 33.888958>,  <45.916336, 36.010643, 33.662846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840950, 36.038742, 33.888958>,  <45.715305, 36.085575, 34.265812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840950, 36.038742, 33.888958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599110, -0.745374, 0.292378,
		-0.736478, -0.656284, -0.163985,
		0.314114, -0.117085, -0.942138,
		45.935184, 36.003616, 33.606316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610214, 35.346794, 34.087425>,  <45.715305, 36.085575, 34.265812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610214, 35.346794, 34.087425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920677, 35.525257, 33.909203>,  <46.106956, 35.632336, 33.802269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920677, 35.525257, 33.909203>,  <45.610214, 35.346794, 34.087425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920677, 35.525257, 33.909203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609717, -0.711151, 0.350015,
		-0.160694, -0.543330, -0.823997,
		0.776159, 0.446159, -0.445555,
		46.153526, 35.659103, 33.775536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593140, 34.884285, 33.482067>,  <45.610214, 35.346794, 34.087425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593140, 34.884285, 33.482067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918186, 35.054214, 33.641655>,  <46.113213, 35.156174, 33.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918186, 35.054214, 33.641655>,  <45.593140, 34.884285, 33.482067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918186, 35.054214, 33.641655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300033, -0.891837, 0.338537,
		0.499635, -0.155397, -0.852184,
		0.812616, 0.424828, 0.398969,
		46.161972, 35.181664, 33.761345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133171, 34.410423, 33.538422>,  <45.593140, 34.884285, 33.482067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133171, 34.410423, 33.538422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362148, 34.671478, 33.736969>,  <46.499535, 34.828110, 33.856098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362148, 34.671478, 33.736969>,  <46.133171, 34.410423, 33.538422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362148, 34.671478, 33.736969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450815, -0.756167, 0.474318,
		0.684891, -0.047751, -0.727079,
		0.572442, 0.652635, 0.496365,
		46.533882, 34.867268, 33.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779808, 34.412674, 33.292480>,  <46.133171, 34.410423, 33.538422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779808, 34.412674, 33.292480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787968, 34.534431, 33.673412>,  <46.792862, 34.607487, 33.901970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787968, 34.534431, 33.673412>,  <46.779808, 34.412674, 33.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787968, 34.534431, 33.673412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627355, -0.745559, 0.224871,
		0.778466, 0.592860, -0.206173,
		0.020397, 0.304398, 0.952327,
		46.794086, 34.625751, 33.959110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.468449, 34.540730, 33.686749>,  <46.779808, 34.412674, 33.292480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.468449, 34.540730, 33.686749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179020, 34.372833, 33.905933>,  <47.005363, 34.272095, 34.037445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179020, 34.372833, 33.905933>,  <47.468449, 34.540730, 33.686749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179020, 34.372833, 33.905933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650672, -0.679731, 0.338515,
		0.230381, 0.601485, 0.764944,
		-0.723568, -0.419740, 0.547967,
		46.961948, 34.246910, 34.070324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385719, 34.933266, 34.415092>,  <47.468449, 34.540730, 33.686749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385719, 34.933266, 34.415092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588852, 34.985752, 34.755653>,  <47.710732, 35.017246, 34.959991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588852, 34.985752, 34.755653>,  <47.385719, 34.933266, 34.415092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.588852, 34.985752, 34.755653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804453, 0.425783, 0.414203,
		-0.308163, -0.895260, 0.321784,
		0.507830, 0.131218, 0.851405,
		47.741199, 35.025116, 35.011074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.720936, 34.000992, 26.312294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379871, 33.894062, 26.132738>,  <33.175232, 33.829903, 26.025005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379871, 33.894062, 26.132738>,  <33.720936, 34.000992, 26.312294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379871, 33.894062, 26.132738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338319, -0.372202, 0.864295,
		-0.398126, 0.888821, 0.226922,
		-0.852664, -0.267326, -0.448889,
		33.124073, 33.813866, 25.998072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168842, 34.235287, 26.739155>,  <33.720936, 34.000992, 26.312294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168842, 34.235287, 26.739155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.000374, 33.960346, 26.502459>,  <32.899292, 33.795380, 26.360441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.000374, 33.960346, 26.502459>,  <33.168842, 34.235287, 26.739155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000374, 33.960346, 26.502459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422317, -0.428767, 0.798628,
		-0.802659, 0.586264, -0.109696,
		-0.421173, -0.687353, -0.591743,
		32.874023, 33.754139, 26.324936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387077, 34.256184, 26.756439>,  <33.168842, 34.235287, 26.739155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387077, 34.256184, 26.756439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.549763, 33.897217, 26.688066>,  <32.647373, 33.681835, 26.647043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.549763, 33.897217, 26.688066>,  <32.387077, 34.256184, 26.756439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549763, 33.897217, 26.688066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418867, -0.349466, 0.838107,
		-0.811870, -0.269275, -0.518034,
		0.406716, -0.897421, -0.170930,
		32.671776, 33.627991, 26.636787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850449, 33.794304, 26.803858>,  <32.387077, 34.256184, 26.756439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850449, 33.794304, 26.803858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.147800, 33.527046, 26.816343>,  <32.326210, 33.366692, 26.823833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.147800, 33.527046, 26.816343>,  <31.850449, 33.794304, 26.803858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147800, 33.527046, 26.816343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514241, -0.541062, 0.665438,
		-0.427719, -0.510724, -0.745800,
		0.743379, -0.668141, 0.031213,
		32.370815, 33.326603, 26.825706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492823, 33.185329, 26.952879>,  <31.850449, 33.794304, 26.803858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492823, 33.185329, 26.952879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876293, 33.081699, 26.999895>,  <32.106377, 33.019520, 27.028105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.876293, 33.081699, 26.999895>,  <31.492823, 33.185329, 26.952879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876293, 33.081699, 26.999895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267502, -0.680249, 0.682425,
		-0.096845, -0.685668, -0.721443,
		0.958678, -0.259077, 0.117539,
		32.163898, 33.003975, 27.035156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539146, 32.482426, 26.742109>,  <31.492823, 33.185329, 26.952879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539146, 32.482426, 26.742109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.820086, 32.590672, 27.005466>,  <31.988649, 32.655617, 27.163481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.820086, 32.590672, 27.005466>,  <31.539146, 32.482426, 26.742109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820086, 32.590672, 27.005466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183751, -0.824651, 0.534964,
		0.687710, -0.496710, -0.529465,
		0.702346, 0.270611, 0.658392,
		32.030788, 32.671856, 27.202984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888996, 31.888708, 26.919916>,  <31.539146, 32.482426, 26.742109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888996, 31.888708, 26.919916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964725, 32.124081, 27.234344>,  <32.010162, 32.265305, 27.423000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.964725, 32.124081, 27.234344>,  <31.888996, 31.888708, 26.919916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964725, 32.124081, 27.234344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122517, -0.780135, 0.613497,
		0.974241, -0.212456, -0.075606,
		0.189324, 0.588432, 0.786069,
		32.021523, 32.300610, 27.470165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163593, 31.402885, 27.484945>,  <31.888996, 31.888708, 26.919916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163593, 31.402885, 27.484945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.126667, 31.732618, 27.708355>,  <32.104511, 31.930458, 27.842402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.126667, 31.732618, 27.708355>,  <32.163593, 31.402885, 27.484945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126667, 31.732618, 27.708355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017829, -0.562200, 0.826809,
		0.995570, 0.066370, 0.066597,
		-0.092316, 0.824334, 0.558526,
		32.098972, 31.979919, 27.875914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573605, 31.268545, 28.164927>,  <32.163593, 31.402885, 27.484945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573605, 31.268545, 28.164927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319019, 31.558207, 28.271141>,  <32.166267, 31.732004, 28.334869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319019, 31.558207, 28.271141>,  <32.573605, 31.268545, 28.164927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319019, 31.558207, 28.271141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149741, -0.453729, 0.878469,
		0.756630, 0.519354, 0.397219,
		-0.636466, 0.724156, 0.265537,
		32.128078, 31.775454, 28.350801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881332, 31.561136, 28.825203>,  <32.573605, 31.268545, 28.164927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881332, 31.561136, 28.825203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.492565, 31.652771, 28.803715>,  <32.259304, 31.707752, 28.790821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.492565, 31.652771, 28.803715>,  <32.881332, 31.561136, 28.825203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492565, 31.652771, 28.803715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108422, -0.233386, 0.966321,
		0.208835, 0.945013, 0.251671,
		-0.971922, 0.229088, -0.053721,
		32.200989, 31.721497, 28.787598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831322, 32.017773, 29.316349>,  <32.881332, 31.561136, 28.825203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831322, 32.017773, 29.316349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467068, 31.855696, 29.283953>,  <32.248516, 31.758450, 29.264515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467068, 31.855696, 29.283953>,  <32.831322, 32.017773, 29.316349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467068, 31.855696, 29.283953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008455, -0.177688, 0.984051,
		-0.413124, 0.896796, 0.158384,
		-0.910636, -0.405196, -0.080989,
		32.193878, 31.734137, 29.259655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560295, 32.239902, 29.872957>,  <32.831322, 32.017773, 29.316349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560295, 32.239902, 29.872957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.322929, 31.940041, 29.755741>,  <32.180511, 31.760122, 29.685411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.322929, 31.940041, 29.755741>,  <32.560295, 32.239902, 29.872957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322929, 31.940041, 29.755741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097968, -0.294092, 0.950743,
		-0.798913, 0.592893, 0.101076,
		-0.593414, -0.749658, -0.293038,
		32.144905, 31.715143, 29.667830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884460, 32.277534, 30.342367>,  <32.560295, 32.239902, 29.872957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884460, 32.277534, 30.342367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.907658, 31.911358, 30.183069>,  <31.921576, 31.691650, 30.087490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.907658, 31.911358, 30.183069>,  <31.884460, 32.277534, 30.342367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907658, 31.911358, 30.183069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139773, -0.402432, 0.904716,
		-0.988484, 0.003197, -0.151293,
		0.057993, -0.915444, -0.398245,
		31.925055, 31.636724, 30.063597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577654, 31.756289, 30.795485>,  <31.884460, 32.277534, 30.342367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577654, 31.756289, 30.795485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.772520, 31.494081, 30.564671>,  <31.889441, 31.336758, 30.426182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.772520, 31.494081, 30.564671>,  <31.577654, 31.756289, 30.795485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772520, 31.494081, 30.564671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090879, -0.619103, 0.780034,
		-0.868568, -0.432446, -0.242033,
		0.487166, -0.655517, -0.577034,
		31.918671, 31.297426, 30.391560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387192, 31.099512, 30.987230>,  <31.577654, 31.756289, 30.795485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387192, 31.099512, 30.987230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.705446, 30.961182, 30.788286>,  <31.896399, 30.878183, 30.668921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.705446, 30.961182, 30.788286>,  <31.387192, 31.099512, 30.987230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705446, 30.961182, 30.788286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194641, -0.631552, 0.750505,
		-0.573654, -0.693935, -0.435173,
		0.795636, -0.345827, -0.497360,
		31.944138, 30.857433, 30.639078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391241, 30.349319, 31.080276>,  <31.387192, 31.099512, 30.987230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391241, 30.349319, 31.080276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.759027, 30.471544, 30.981310>,  <31.979700, 30.544878, 30.921930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.759027, 30.471544, 30.981310>,  <31.391241, 30.349319, 31.080276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759027, 30.471544, 30.981310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384130, -0.563986, 0.731002,
		0.083825, -0.767172, -0.635941,
		0.919466, 0.305560, -0.247418,
		32.034866, 30.563211, 30.907085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896011, 29.757225, 31.013016>,  <31.391241, 30.349319, 31.080276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896011, 29.757225, 31.013016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.082180, 30.097328, 31.111355>,  <32.193882, 30.301390, 31.170359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.082180, 30.097328, 31.111355>,  <31.896011, 29.757225, 31.013016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082180, 30.097328, 31.111355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336282, -0.426813, 0.839491,
		0.818717, -0.308043, -0.484575,
		0.465422, 0.850259, 0.245849,
		32.221806, 30.352406, 31.185110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510422, 29.547937, 31.227869>,  <31.896011, 29.757225, 31.013016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510422, 29.547937, 31.227869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467583, 29.915825, 31.378944>,  <32.441879, 30.136557, 31.469589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467583, 29.915825, 31.378944>,  <32.510422, 29.547937, 31.227869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467583, 29.915825, 31.378944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227095, -0.347202, 0.909878,
		0.967966, 0.183216, -0.171679,
		-0.107097, 0.919719, 0.377687,
		32.435455, 30.191740, 31.492250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059052, 29.678274, 31.662584>,  <32.510422, 29.547937, 31.227869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059052, 29.678274, 31.662584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769581, 29.931025, 31.773600>,  <32.595898, 30.082676, 31.840208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769581, 29.931025, 31.773600>,  <33.059052, 29.678274, 31.662584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769581, 29.931025, 31.773600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125325, -0.275141, 0.953200,
		0.678668, 0.724588, 0.119922,
		-0.723673, 0.631878, 0.277538,
		32.552479, 30.120588, 31.856861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289673, 29.955959, 32.257080>,  <33.059052, 29.678274, 31.662584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289673, 29.955959, 32.257080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903599, 30.052666, 32.297005>,  <32.671955, 30.110689, 32.320961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903599, 30.052666, 32.297005>,  <33.289673, 29.955959, 32.257080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903599, 30.052666, 32.297005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035275, -0.257813, 0.965551,
		0.259172, 0.935458, 0.240310,
		-0.965187, 0.241767, 0.099816,
		32.614044, 30.125196, 32.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333942, 30.297052, 32.879116>,  <33.289673, 29.955959, 32.257080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333942, 30.297052, 32.879116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949314, 30.203566, 32.821487>,  <32.718536, 30.147474, 32.786911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949314, 30.203566, 32.821487>,  <33.333942, 30.297052, 32.879116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949314, 30.203566, 32.821487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083046, -0.252574, 0.964007,
		-0.261692, 0.938927, 0.223459,
		-0.961572, -0.233716, -0.144071,
		32.660843, 30.133451, 32.778267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957069, 30.541883, 33.416626>,  <33.333942, 30.297052, 32.879116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957069, 30.541883, 33.416626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702457, 30.254990, 33.303204>,  <32.549690, 30.082853, 33.235149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702457, 30.254990, 33.303204>,  <32.957069, 30.541883, 33.416626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702457, 30.254990, 33.303204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108064, -0.281092, 0.953577,
		-0.763643, 0.637624, 0.101417,
		-0.636531, -0.717233, -0.283558,
		32.511497, 30.039820, 33.218136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359318, 30.622623, 34.064919>,  <32.957069, 30.541883, 33.416626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359318, 30.622623, 34.064919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601307, 30.766159, 34.349243>,  <33.746498, 30.852280, 34.519836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601307, 30.766159, 34.349243>,  <33.359318, 30.622623, 34.064919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601307, 30.766159, 34.349243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273917, 0.744422, -0.608938,
		-0.747652, 0.563090, 0.352060,
		0.604968, 0.358838, 0.710808,
		33.782799, 30.873810, 34.562485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219273, 31.311634, 34.237934>,  <33.359318, 30.622623, 34.064919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219273, 31.311634, 34.237934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608452, 31.244984, 34.301952>,  <33.841957, 31.204994, 34.340363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608452, 31.244984, 34.301952>,  <33.219273, 31.311634, 34.237934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608452, 31.244984, 34.301952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221570, 0.869193, -0.442052,
		-0.065452, 0.465553, 0.882596,
		0.972945, -0.166624, 0.160044,
		33.900337, 31.194996, 34.349964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447346, 31.908453, 34.352921>,  <33.219273, 31.311634, 34.237934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447346, 31.908453, 34.352921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.803249, 31.736622, 34.291229>,  <34.016792, 31.633524, 34.254215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.803249, 31.736622, 34.291229>,  <33.447346, 31.908453, 34.352921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803249, 31.736622, 34.291229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249793, 0.741114, -0.623179,
		0.382001, 0.515958, 0.766722,
		0.889763, -0.429577, -0.154224,
		34.070179, 31.607748, 34.244961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950096, 32.440987, 34.481033>,  <33.447346, 31.908453, 34.352921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950096, 32.440987, 34.481033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107388, 32.160362, 34.243317>,  <34.201763, 31.991987, 34.100685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107388, 32.160362, 34.243317>,  <33.950096, 32.440987, 34.481033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107388, 32.160362, 34.243317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228349, 0.700631, -0.675998,
		0.890632, 0.130119, 0.435711,
		0.393233, -0.701559, -0.594291,
		34.225357, 31.949894, 34.065029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571732, 32.772537, 34.201866>,  <33.950096, 32.440987, 34.481033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571732, 32.772537, 34.201866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.510754, 32.463905, 33.954830>,  <34.474167, 32.278725, 33.806606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.510754, 32.463905, 33.954830>,  <34.571732, 32.772537, 34.201866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510754, 32.463905, 33.954830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288970, 0.562789, -0.774445,
		0.945123, -0.296525, 0.137170,
		-0.152445, -0.771584, -0.617592,
		34.465019, 32.232430, 33.769554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206120, 32.784729, 33.812988>,  <34.571732, 32.772537, 34.201866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206120, 32.784729, 33.812988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921436, 32.587914, 33.612438>,  <34.750626, 32.469826, 33.492107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921436, 32.587914, 33.612438>,  <35.206120, 32.784729, 33.812988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921436, 32.587914, 33.612438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185930, 0.556324, -0.809898,
		0.677427, -0.669628, -0.304453,
		-0.711705, -0.492039, -0.501372,
		34.707924, 32.440300, 33.462025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485352, 32.588657, 33.195667>,  <35.206120, 32.784729, 33.812988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485352, 32.588657, 33.195667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093102, 32.571030, 33.119320>,  <34.857750, 32.560452, 33.073509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093102, 32.571030, 33.119320>,  <35.485352, 32.588657, 33.195667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093102, 32.571030, 33.119320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155134, 0.420240, -0.894053,
		0.119612, -0.906342, -0.405261,
		-0.980625, -0.044070, -0.190871,
		34.798912, 32.557808, 33.062057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368382, 32.259708, 32.508167>,  <35.485352, 32.588657, 33.195667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368382, 32.259708, 32.508167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021553, 32.452522, 32.558495>,  <34.813457, 32.568211, 32.588692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021553, 32.452522, 32.558495>,  <35.368382, 32.259708, 32.508167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021553, 32.452522, 32.558495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112362, 0.435270, -0.893261,
		-0.485353, -0.760381, -0.431572,
		-0.867069, 0.482039, 0.125822,
		34.761433, 32.597134, 32.596241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923508, 32.108017, 31.996302>,  <35.368382, 32.259708, 32.508167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923508, 32.108017, 31.996302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774666, 32.462185, 32.107708>,  <34.685360, 32.674686, 32.174553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774666, 32.462185, 32.107708>,  <34.923508, 32.108017, 31.996302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774666, 32.462185, 32.107708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052236, 0.319562, -0.946125,
		-0.926720, -0.337509, -0.165161,
		-0.372105, 0.885419, 0.278514,
		34.663033, 32.727810, 32.191261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665009, 32.451756, 31.291653>,  <34.923508, 32.108017, 31.996302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665009, 32.451756, 31.291653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.644886, 32.754093, 31.552778>,  <34.632812, 32.935497, 31.709454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.644886, 32.754093, 31.552778>,  <34.665009, 32.451756, 31.291653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644886, 32.754093, 31.552778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024508, 0.654380, -0.755769,
		-0.998433, -0.022019, -0.051442,
		-0.050303, 0.755846, 0.652815,
		34.629795, 32.980846, 31.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020134, 32.846989, 31.165205>,  <34.665009, 32.451756, 31.291653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020134, 32.846989, 31.165205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292561, 33.091022, 31.327169>,  <34.456017, 33.237442, 31.424349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292561, 33.091022, 31.327169>,  <34.020134, 32.846989, 31.165205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292561, 33.091022, 31.327169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035218, 0.525056, -0.850339,
		-0.731377, 0.593395, 0.336111,
		0.681064, 0.610081, 0.404912,
		34.496880, 33.274048, 31.448643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718914, 33.569221, 31.104624>,  <34.020134, 32.846989, 31.165205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718914, 33.569221, 31.104624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112164, 33.616947, 31.160099>,  <34.348114, 33.645580, 31.193384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112164, 33.616947, 31.160099>,  <33.718914, 33.569221, 31.104624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112164, 33.616947, 31.160099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035892, 0.617558, -0.785706,
		-0.179391, 0.777424, 0.602853,
		0.983123, 0.119311, 0.138687,
		34.407101, 33.652740, 31.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864948, 34.359955, 31.107086>,  <33.718914, 33.569221, 31.104624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864948, 34.359955, 31.107086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209522, 34.175152, 31.022715>,  <34.416267, 34.064270, 30.972092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209522, 34.175152, 31.022715>,  <33.864948, 34.359955, 31.107086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209522, 34.175152, 31.022715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049695, 0.489999, -0.870305,
		0.505439, 0.739225, 0.445059,
		0.861430, -0.462003, -0.210929,
		34.467953, 34.036552, 30.959436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418697, 34.856243, 30.970173>,  <33.864948, 34.359955, 31.107086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418697, 34.856243, 30.970173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550934, 34.533607, 30.774162>,  <34.630276, 34.340027, 30.656555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550934, 34.533607, 30.774162>,  <34.418697, 34.856243, 30.970173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550934, 34.533607, 30.774162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091250, 0.544104, -0.834041,
		0.939353, 0.231009, 0.253476,
		0.330589, -0.806589, -0.490026,
		34.650112, 34.291630, 30.627155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814739, 35.164780, 30.485825>,  <34.418697, 34.856243, 30.970173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814739, 35.164780, 30.485825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803410, 34.795773, 30.331861>,  <34.796612, 34.574368, 30.239485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803410, 34.795773, 30.331861>,  <34.814739, 35.164780, 30.485825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803410, 34.795773, 30.331861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179016, 0.374154, -0.909924,
		0.983438, -0.094679, 0.154547,
		-0.028327, -0.922521, -0.384907,
		34.794910, 34.519016, 30.216389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411289, 35.027714, 30.087248>,  <34.814739, 35.164780, 30.485825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411289, 35.027714, 30.087248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106815, 34.794395, 29.973846>,  <34.924133, 34.654404, 29.905806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106815, 34.794395, 29.973846>,  <35.411289, 35.027714, 30.087248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106815, 34.794395, 29.973846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169962, 0.242452, -0.955160,
		0.625874, -0.775233, -0.085412,
		-0.761180, -0.583292, -0.283504,
		34.878460, 34.619408, 29.888796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743366, 34.593445, 29.527807>,  <35.411289, 35.027714, 30.087248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743366, 34.593445, 29.527807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.347031, 34.569866, 29.479208>,  <35.109230, 34.555721, 29.450048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.347031, 34.569866, 29.479208>,  <35.743366, 34.593445, 29.527807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347031, 34.569866, 29.479208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114495, 0.110384, -0.987272,
		0.071601, -0.992140, -0.102625,
		-0.990840, -0.058940, -0.121499,
		35.049778, 34.552185, 29.442759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600800, 34.120323, 28.866667>,  <35.743366, 34.593445, 29.527807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600800, 34.120323, 28.866667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278584, 34.348293, 28.931532>,  <35.085255, 34.485077, 28.970451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278584, 34.348293, 28.931532>,  <35.600800, 34.120323, 28.866667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278584, 34.348293, 28.931532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070451, 0.179616, -0.981211,
		-0.588345, -0.801825, -0.104535,
		-0.805535, 0.569926, 0.162165,
		35.036922, 34.519272, 28.980181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.074436, 33.910110, 28.365335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004051, 34.285229, 28.485056>,  <34.961823, 34.510300, 28.556889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004051, 34.285229, 28.485056>,  <35.074436, 33.910110, 28.365335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004051, 34.285229, 28.485056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075006, 0.290387, -0.953965,
		-0.981536, -0.190308, 0.019244,
		-0.175959, 0.937795, 0.299299,
		34.951263, 34.566566, 28.574846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507908, 34.055428, 27.882196>,  <35.074436, 33.910110, 28.365335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507908, 34.055428, 27.882196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635937, 34.398254, 28.043686>,  <34.712753, 34.603951, 28.140579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635937, 34.398254, 28.043686>,  <34.507908, 34.055428, 27.882196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635937, 34.398254, 28.043686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051619, 0.409735, -0.910743,
		-0.945986, 0.312344, 0.086904,
		0.320073, 0.857064, 0.403726,
		34.731960, 34.655373, 28.164804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987045, 34.602047, 27.697874>,  <34.507908, 34.055428, 27.882196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987045, 34.602047, 27.697874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326290, 34.800510, 27.772209>,  <34.529835, 34.919590, 27.816811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326290, 34.800510, 27.772209>,  <33.987045, 34.602047, 27.697874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326290, 34.800510, 27.772209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062716, 0.442308, -0.894668,
		-0.526096, 0.747121, 0.406242,
		0.848109, 0.496159, 0.185840,
		34.580723, 34.949360, 27.827961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863056, 35.225910, 27.387547>,  <33.987045, 34.602047, 27.697874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863056, 35.225910, 27.387547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261410, 35.203197, 27.415798>,  <34.500423, 35.189571, 27.432749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261410, 35.203197, 27.415798>,  <33.863056, 35.225910, 27.387547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261410, 35.203197, 27.415798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088887, 0.460164, -0.883373,
		0.017657, 0.886016, 0.463317,
		0.995885, -0.056780, 0.070630,
		34.560177, 35.186165, 27.436987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084610, 35.905075, 27.150566>,  <33.863056, 35.225910, 27.387547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084610, 35.905075, 27.150566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394188, 35.651779, 27.151756>,  <34.579937, 35.499802, 27.152472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394188, 35.651779, 27.151756>,  <34.084610, 35.905075, 27.150566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394188, 35.651779, 27.151756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235294, 0.283207, -0.929748,
		0.587911, 0.720278, 0.368185,
		0.773949, -0.633241, 0.002977,
		34.626373, 35.461807, 27.152649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539227, 36.240852, 26.912086>,  <34.084610, 35.905075, 27.150566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539227, 36.240852, 26.912086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705261, 35.881943, 26.851955>,  <34.804882, 35.666595, 26.815876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705261, 35.881943, 26.851955>,  <34.539227, 36.240852, 26.912086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705261, 35.881943, 26.851955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353928, 0.311475, -0.881883,
		0.838118, 0.312849, 0.446860,
		0.415082, -0.897278, -0.150327,
		34.829784, 35.612759, 26.806858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210472, 36.335705, 26.665564>,  <34.539227, 36.240852, 26.912086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210472, 36.335705, 26.665564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143616, 35.959274, 26.547966>,  <35.103500, 35.733414, 26.477407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143616, 35.959274, 26.547966>,  <35.210472, 36.335705, 26.665564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143616, 35.959274, 26.547966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643735, 0.121692, -0.755510,
		0.746773, -0.315530, 0.585467,
		-0.167139, -0.941080, -0.293994,
		35.093475, 35.676949, 26.459768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865524, 35.995422, 26.418501>,  <35.210472, 36.335705, 26.665564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865524, 35.995422, 26.418501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559116, 35.795303, 26.257050>,  <35.375271, 35.675232, 26.160179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559116, 35.795303, 26.257050>,  <35.865524, 35.995422, 26.418501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559116, 35.795303, 26.257050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470568, -0.008666, -0.882321,
		0.437922, -0.865812, 0.242061,
		-0.766022, -0.500294, -0.403629,
		35.329311, 35.645214, 26.135962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132027, 35.515152, 26.059742>,  <35.865524, 35.995422, 26.418501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132027, 35.515152, 26.059742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773697, 35.564991, 25.889109>,  <35.558701, 35.594894, 25.786730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773697, 35.564991, 25.889109>,  <36.132027, 35.515152, 26.059742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773697, 35.564991, 25.889109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395011, -0.216569, -0.892784,
		-0.203623, -0.968284, 0.144791,
		-0.895826, 0.124597, -0.426581,
		35.504948, 35.602371, 25.761133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090538, 34.985836, 25.564724>,  <36.132027, 35.515152, 26.059742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090538, 34.985836, 25.564724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838280, 35.280205, 25.466164>,  <35.686924, 35.456825, 25.407028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838280, 35.280205, 25.466164>,  <36.090538, 34.985836, 25.564724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838280, 35.280205, 25.466164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407281, 0.043574, -0.912263,
		-0.660616, -0.675664, -0.327206,
		-0.630641, 0.735921, -0.246400,
		35.649086, 35.500980, 25.392244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977722, 34.921333, 24.839516>,  <36.090538, 34.985836, 25.564724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977722, 34.921333, 24.839516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853519, 35.293293, 24.918373>,  <35.778996, 35.516468, 24.965689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853519, 35.293293, 24.918373>,  <35.977722, 34.921333, 24.839516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853519, 35.293293, 24.918373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397804, 0.315482, -0.861524,
		-0.863328, -0.189087, -0.467879,
		-0.310510, 0.929902, 0.197145,
		35.760365, 35.572262, 24.977516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770645, 35.046032, 24.243191>,  <35.977722, 34.921333, 24.839516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770645, 35.046032, 24.243191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830303, 35.392525, 24.433933>,  <35.866096, 35.600422, 24.548378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830303, 35.392525, 24.433933>,  <35.770645, 35.046032, 24.243191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830303, 35.392525, 24.433933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486036, 0.355751, -0.798255,
		-0.861119, 0.350822, -0.367965,
		0.149142, 0.866236, 0.476856,
		35.875046, 35.652397, 24.576990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493423, 35.462669, 23.747190>,  <35.770645, 35.046032, 24.243191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493423, 35.462669, 23.747190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707081, 35.689007, 23.998432>,  <35.835274, 35.824810, 24.149178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707081, 35.689007, 23.998432>,  <35.493423, 35.462669, 23.747190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707081, 35.689007, 23.998432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441034, 0.447347, -0.778055,
		-0.721236, 0.692608, -0.010608,
		0.534142, 0.565840, 0.628106,
		35.867325, 35.858757, 24.186865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452480, 36.127613, 23.492065>,  <35.493423, 35.462669, 23.747190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452480, 36.127613, 23.492065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776516, 36.116108, 23.726303>,  <35.970940, 36.109203, 23.866846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776516, 36.116108, 23.726303>,  <35.452480, 36.127613, 23.492065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776516, 36.116108, 23.726303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375997, 0.791850, -0.481248,
		-0.449861, 0.610038, 0.652288,
		0.810094, -0.028763, 0.585595,
		36.019543, 36.107479, 23.901981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474216, 36.737019, 23.725456>,  <35.452480, 36.127613, 23.492065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474216, 36.737019, 23.725456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839569, 36.575562, 23.746656>,  <36.058781, 36.478687, 23.759377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839569, 36.575562, 23.746656>,  <35.474216, 36.737019, 23.725456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839569, 36.575562, 23.746656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378536, 0.794123, -0.475478,
		0.149837, 0.454354, 0.878130,
		0.913378, -0.403647, 0.053000,
		36.113583, 36.454468, 23.762556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817017, 37.248497, 23.522356>,  <35.474216, 36.737019, 23.725456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817017, 37.248497, 23.522356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097805, 36.964310, 23.502478>,  <36.266277, 36.793797, 23.490551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097805, 36.964310, 23.502478>,  <35.817017, 37.248497, 23.522356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097805, 36.964310, 23.502478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558260, 0.592221, -0.581050,
		0.442252, 0.380134, 0.812349,
		0.701968, -0.710473, -0.049697,
		36.308395, 36.751167, 23.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437859, 37.691074, 23.486267>,  <35.817017, 37.248497, 23.522356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437859, 37.691074, 23.486267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494148, 37.326138, 23.332476>,  <36.527924, 37.107174, 23.240202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494148, 37.326138, 23.332476>,  <36.437859, 37.691074, 23.486267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494148, 37.326138, 23.332476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585066, 0.389915, -0.711101,
		0.798682, -0.124872, 0.588654,
		0.140728, -0.912345, -0.384477,
		36.536366, 37.052433, 23.217133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112854, 37.712109, 23.401962>,  <36.437859, 37.691074, 23.486267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112854, 37.712109, 23.401962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933395, 37.449406, 23.159512>,  <36.825718, 37.291786, 23.014042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933395, 37.449406, 23.159512>,  <37.112854, 37.712109, 23.401962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933395, 37.449406, 23.159512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391320, 0.465382, -0.793907,
		0.803482, -0.593374, 0.048209,
		-0.448648, -0.656755, -0.606125,
		36.798801, 37.252380, 22.977674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589596, 37.386395, 23.043547>,  <37.112854, 37.712109, 23.401962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589596, 37.386395, 23.043547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269562, 37.317253, 22.813770>,  <37.077541, 37.275768, 22.675905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269562, 37.317253, 22.813770>,  <37.589596, 37.386395, 23.043547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269562, 37.317253, 22.813770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492507, 0.357432, -0.793523,
		0.342478, -0.917806, -0.200851,
		-0.800091, -0.172844, -0.574439,
		37.029533, 37.265396, 22.641438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885880, 37.434147, 22.427023>,  <37.589596, 37.386395, 23.043547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885880, 37.434147, 22.427023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495926, 37.424683, 22.338438>,  <37.261955, 37.419003, 22.285288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495926, 37.424683, 22.338438>,  <37.885880, 37.434147, 22.427023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495926, 37.424683, 22.338438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199750, 0.346937, -0.916370,
		0.098513, -0.937590, -0.333497,
		-0.974882, -0.023658, -0.221461,
		37.203461, 37.417583, 22.271999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873165, 37.218628, 21.745090>,  <37.885880, 37.434147, 22.427023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873165, 37.218628, 21.745090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515965, 37.389050, 21.803099>,  <37.301643, 37.491302, 21.837904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515965, 37.389050, 21.803099>,  <37.873165, 37.218628, 21.745090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515965, 37.389050, 21.803099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100805, 0.503382, -0.858163,
		-0.438626, -0.751720, -0.492468,
		-0.892998, 0.426056, 0.145019,
		37.248066, 37.516865, 21.846603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460548, 37.222912, 21.118326>,  <37.873165, 37.218628, 21.745090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460548, 37.222912, 21.118326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314850, 37.527485, 21.332821>,  <37.227432, 37.710228, 21.461517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314850, 37.527485, 21.332821>,  <37.460548, 37.222912, 21.118326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314850, 37.527485, 21.332821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082977, 0.600038, -0.795657,
		-0.927599, -0.245319, -0.281742,
		-0.364245, 0.761428, 0.536239,
		37.205578, 37.755913, 21.493692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431068, 37.671478, 20.584305>,  <37.460548, 37.222912, 21.118326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431068, 37.671478, 20.584305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294209, 37.870541, 20.903120>,  <37.212093, 37.989979, 21.094410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294209, 37.870541, 20.903120>,  <37.431068, 37.671478, 20.584305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294209, 37.870541, 20.903120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017510, 0.844710, -0.534938,
		-0.939481, -0.196987, -0.280306,
		-0.342153, 0.497656, 0.797038,
		37.191563, 38.019836, 21.142231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621021, 37.455685, 20.294455>,  <37.431068, 37.671478, 20.584305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621021, 37.455685, 20.294455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875759, 37.762821, 20.266594>,  <37.028603, 37.947102, 20.249878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875759, 37.762821, 20.266594>,  <36.621021, 37.455685, 20.294455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875759, 37.762821, 20.266594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197584, 0.075214, -0.977396,
		-0.745247, 0.636209, 0.199612,
		0.636842, 0.767842, -0.069651,
		37.066811, 37.993176, 20.245699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096001, 37.808044, 19.943647>,  <36.621021, 37.455685, 20.294455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096001, 37.808044, 19.943647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794777, 37.670757, 19.719109>,  <35.614044, 37.588387, 19.584385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794777, 37.670757, 19.719109>,  <36.096001, 37.808044, 19.943647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794777, 37.670757, 19.719109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633111, 0.145749, 0.760216,
		-0.179103, 0.927879, -0.327052,
		-0.753055, -0.343217, -0.561346,
		35.568859, 37.567791, 19.550705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442974, 38.210522, 20.042995>,  <36.096001, 37.808044, 19.943647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442974, 38.210522, 20.042995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277203, 37.883579, 19.882910>,  <35.177738, 37.687412, 19.786858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277203, 37.883579, 19.882910>,  <35.442974, 38.210522, 20.042995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277203, 37.883579, 19.882910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712209, 0.017507, 0.701750,
		-0.566575, 0.575862, -0.589386,
		-0.414430, -0.817360, -0.400215,
		35.152874, 37.638371, 19.762846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707096, 38.278248, 20.248098>,  <35.442974, 38.210522, 20.042995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707096, 38.278248, 20.248098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740265, 37.899696, 20.123203>,  <34.760166, 37.672565, 20.048267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740265, 37.899696, 20.123203>,  <34.707096, 38.278248, 20.248098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740265, 37.899696, 20.123203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746404, -0.266581, 0.609767,
		-0.660306, 0.182491, -0.728487,
		0.082923, -0.946379, -0.312237,
		34.765141, 37.615784, 20.029531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990726, 38.068886, 20.228073>,  <34.707096, 38.278248, 20.248098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990726, 38.068886, 20.228073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239799, 37.755909, 20.225292>,  <34.389244, 37.568123, 20.223623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239799, 37.755909, 20.225292>,  <33.990726, 38.068886, 20.228073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239799, 37.755909, 20.225292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444444, -0.360985, 0.819854,
		-0.643997, -0.507421, -0.572531,
		0.622686, -0.782441, -0.006953,
		34.426605, 37.521175, 20.223206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590675, 37.433693, 20.309793>,  <33.990726, 38.068886, 20.228073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590675, 37.433693, 20.309793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.953606, 37.337448, 20.447697>,  <34.171364, 37.279701, 20.530439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.953606, 37.337448, 20.447697>,  <33.590675, 37.433693, 20.309793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953606, 37.337448, 20.447697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419759, -0.472484, 0.774959,
		-0.023572, -0.847859, -0.529698,
		0.907329, -0.240613, 0.344758,
		34.225803, 37.265263, 20.551125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426289, 36.836338, 20.629833>,  <33.590675, 37.433693, 20.309793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426289, 36.836338, 20.629833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790966, 36.919338, 20.771685>,  <34.009773, 36.969139, 20.856796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790966, 36.919338, 20.771685>,  <33.426289, 36.836338, 20.629833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790966, 36.919338, 20.771685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230601, -0.455937, 0.859619,
		0.340064, -0.865484, -0.367823,
		0.911690, 0.207505, 0.354629,
		34.064472, 36.981590, 20.878073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751808, 36.175461, 20.774139>,  <33.426289, 36.836338, 20.629833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751808, 36.175461, 20.774139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928135, 36.441860, 21.014849>,  <34.033932, 36.601700, 21.159273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928135, 36.441860, 21.014849>,  <33.751808, 36.175461, 20.774139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928135, 36.441860, 21.014849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179458, -0.591497, 0.786083,
		0.879474, -0.454511, -0.141224,
		0.440817, 0.665996, 0.601772,
		34.060379, 36.641659, 21.195381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288166, 35.747322, 21.085154>,  <33.751808, 36.175461, 20.774139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288166, 35.747322, 21.085154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243252, 36.072884, 21.313171>,  <34.216301, 36.268223, 21.449982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243252, 36.072884, 21.313171>,  <34.288166, 35.747322, 21.085154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243252, 36.072884, 21.313171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006244, -0.573082, 0.819474,
		0.993656, 0.095576, 0.059268,
		-0.112288, 0.813906, 0.570043,
		34.209564, 36.317055, 21.484184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794598, 35.684135, 21.630871>,  <34.288166, 35.747322, 21.085154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794598, 35.684135, 21.630871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502544, 35.930538, 21.749153>,  <34.327312, 36.078381, 21.820122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502544, 35.930538, 21.749153>,  <34.794598, 35.684135, 21.630871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502544, 35.930538, 21.749153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029583, -0.403855, 0.914345,
		0.682665, 0.676341, 0.276644,
		-0.730133, 0.616007, 0.295706,
		34.283504, 36.115341, 21.837864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029255, 36.018429, 22.250179>,  <34.794598, 35.684135, 21.630871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029255, 36.018429, 22.250179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629509, 36.008408, 22.260368>,  <34.389664, 36.002396, 22.266481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629509, 36.008408, 22.260368>,  <35.029255, 36.018429, 22.250179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629509, 36.008408, 22.260368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034847, -0.525862, 0.849856,
		-0.007895, 0.850200, 0.526400,
		-0.999361, -0.025053, 0.025475,
		34.329700, 36.000893, 22.268011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880020, 35.862789, 22.933548>,  <35.029255, 36.018429, 22.250179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880020, 35.862789, 22.933548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497208, 35.838207, 22.820183>,  <34.267521, 35.823460, 22.752165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497208, 35.838207, 22.820183>,  <34.880020, 35.862789, 22.933548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497208, 35.838207, 22.820183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246917, -0.339850, 0.907488,
		-0.152087, 0.938470, 0.310071,
		-0.957027, -0.061455, -0.283411,
		34.210098, 35.819771, 22.735159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534477, 36.084923, 23.495789>,  <34.880020, 35.862789, 22.933548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534477, 36.084923, 23.495789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259468, 35.880730, 23.289209>,  <34.094463, 35.758213, 23.165262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259468, 35.880730, 23.289209>,  <34.534477, 36.084923, 23.495789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259468, 35.880730, 23.289209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461293, -0.242241, 0.853538,
		-0.560824, 0.825060, -0.068937,
		-0.687521, -0.510485, -0.516449,
		34.053211, 35.727585, 23.134275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836479, 36.211189, 23.783531>,  <34.534477, 36.084923, 23.495789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836479, 36.211189, 23.783531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801117, 35.856071, 23.602863>,  <33.779900, 35.643002, 23.494463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801117, 35.856071, 23.602863>,  <33.836479, 36.211189, 23.783531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801117, 35.856071, 23.602863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286588, -0.411599, 0.865132,
		-0.953966, 0.205928, -0.218042,
		-0.088410, -0.887795, -0.451668,
		33.774593, 35.589733, 23.467363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087696, 35.889843, 23.837872>,  <33.836479, 36.211189, 23.783531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087696, 35.889843, 23.837872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356823, 35.604477, 23.759539>,  <33.518299, 35.433258, 23.712540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356823, 35.604477, 23.759539>,  <33.087696, 35.889843, 23.837872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356823, 35.604477, 23.759539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361442, -0.547954, 0.754391,
		-0.645500, -0.436790, -0.626533,
		0.672822, -0.713415, -0.195830,
		33.558670, 35.390453, 23.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627682, 35.233723, 23.777151>,  <33.087696, 35.889843, 23.837872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627682, 35.233723, 23.777151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004841, 35.115883, 23.839314>,  <33.231136, 35.045177, 23.876610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004841, 35.115883, 23.839314>,  <32.627682, 35.233723, 23.777151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004841, 35.115883, 23.839314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317291, -0.652527, 0.688139,
		-0.101319, -0.698154, -0.708741,
		0.942900, -0.294599, 0.155404,
		33.287712, 35.027504, 23.885935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630520, 34.590656, 23.854561>,  <32.627682, 35.233723, 23.777151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630520, 34.590656, 23.854561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985207, 34.632298, 24.034737>,  <33.198017, 34.657284, 24.142843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985207, 34.632298, 24.034737>,  <32.630520, 34.590656, 23.854561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985207, 34.632298, 24.034737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249134, -0.713149, 0.655249,
		0.389445, -0.693240, -0.606425,
		0.886716, 0.104103, 0.450442,
		33.251221, 34.663528, 24.169868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956844, 33.934879, 23.841848>,  <32.630520, 34.590656, 23.854561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956844, 33.934879, 23.841848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130833, 34.138226, 24.139133>,  <33.235226, 34.260235, 24.317505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130833, 34.138226, 24.139133>,  <32.956844, 33.934879, 23.841848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130833, 34.138226, 24.139133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167854, -0.765138, 0.621602,
		0.884662, -0.395129, -0.247480,
		0.434970, 0.508367, 0.743212,
		33.261322, 34.290737, 24.362097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270992, 33.436592, 24.212032>,  <32.956844, 33.934879, 23.841848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270992, 33.436592, 24.212032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267708, 33.743633, 24.468380>,  <33.265739, 33.927860, 24.622189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267708, 33.743633, 24.468380>,  <33.270992, 33.436592, 24.212032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267708, 33.743633, 24.468380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155108, -0.634111, 0.757526,
		0.987864, -0.093185, 0.124267,
		-0.008209, 0.767607, 0.640869,
		33.265244, 33.973915, 24.660641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628254, 33.266106, 24.738417>,  <33.270992, 33.436592, 24.212032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628254, 33.266106, 24.738417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422062, 33.564949, 24.906277>,  <33.298347, 33.744255, 25.006992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422062, 33.564949, 24.906277>,  <33.628254, 33.266106, 24.738417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422062, 33.564949, 24.906277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110873, -0.543763, 0.831883,
		0.849698, 0.382292, 0.363134,
		-0.515481, 0.747111, 0.419649,
		33.267418, 33.789082, 25.032171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940273, 33.467243, 25.440798>,  <33.628254, 33.266106, 24.738417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940273, 33.467243, 25.440798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548428, 33.546265, 25.426231>,  <33.313320, 33.593678, 25.417492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548428, 33.546265, 25.426231>,  <33.940273, 33.467243, 25.440798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548428, 33.546265, 25.426231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141032, -0.547276, 0.824984,
		0.143048, 0.813303, 0.563981,
		-0.979616, 0.197552, -0.036415,
		33.254543, 33.605530, 25.415306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.673428, 33.859997, 31.428572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.279011, 33.811142, 31.383307>,  <35.042362, 33.781830, 31.356148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.279011, 33.811142, 31.383307>,  <35.673428, 33.859997, 31.428572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279011, 33.811142, 31.383307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045911, -0.453866, 0.889886,
		-0.160045, 0.882660, 0.441923,
		-0.986042, -0.122133, -0.113163,
		34.983200, 33.774502, 31.349358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268566, 34.145683, 32.059975>,  <35.673428, 33.859997, 31.428572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268566, 34.145683, 32.059975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.044716, 33.863792, 31.885536>,  <34.910408, 33.694656, 31.780872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.044716, 33.863792, 31.885536>,  <35.268566, 34.145683, 32.059975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044716, 33.863792, 31.885536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225454, -0.376908, 0.898393,
		-0.797492, 0.601081, 0.052042,
		-0.559622, -0.704728, -0.436098,
		34.876831, 33.652374, 31.754707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750618, 33.949669, 32.575920>,  <35.268566, 34.145683, 32.059975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750618, 33.949669, 32.575920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.681747, 33.653233, 32.316341>,  <34.640423, 33.475372, 32.160595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.681747, 33.653233, 32.316341>,  <34.750618, 33.949669, 32.575920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681747, 33.653233, 32.316341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372389, -0.560933, 0.739378,
		-0.911965, 0.368968, -0.179394,
		-0.172179, -0.741092, -0.648951,
		34.630093, 33.430904, 32.121655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974068, 33.709747, 32.616699>,  <34.750618, 33.949669, 32.575920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974068, 33.709747, 32.616699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.199444, 33.404335, 32.490486>,  <34.334667, 33.221088, 32.414761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.199444, 33.404335, 32.490486>,  <33.974068, 33.709747, 32.616699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199444, 33.404335, 32.490486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445009, -0.602270, 0.662750,
		-0.696064, -0.233006, -0.679120,
		0.563438, -0.763531, -0.315529,
		34.368477, 33.175274, 32.395828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584938, 33.199562, 32.773804>,  <33.974068, 33.709747, 32.616699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584938, 33.199562, 32.773804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.927357, 33.003025, 32.709599>,  <34.132809, 32.885101, 32.671074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.927357, 33.003025, 32.709599>,  <33.584938, 33.199562, 32.773804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927357, 33.003025, 32.709599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258964, -0.676424, 0.689484,
		-0.447352, -0.548661, -0.706291,
		0.856045, -0.491346, -0.160516,
		34.184170, 32.855621, 32.661446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533630, 32.490604, 32.893471>,  <33.584938, 33.199562, 32.773804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533630, 32.490604, 32.893471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931911, 32.516148, 32.920315>,  <34.170879, 32.531471, 32.936420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931911, 32.516148, 32.920315>,  <33.533630, 32.490604, 32.893471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931911, 32.516148, 32.920315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000554, -0.720340, 0.693621,
		0.092632, -0.690676, -0.717208,
		0.995701, 0.063855, 0.067109,
		34.230621, 32.535305, 32.940449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798470, 31.840572, 32.827091>,  <33.533630, 32.490604, 32.893471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798470, 31.840572, 32.827091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.074921, 32.037933, 33.038338>,  <34.240791, 32.156349, 33.165085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.074921, 32.037933, 33.038338>,  <33.798470, 31.840572, 32.827091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074921, 32.037933, 33.038338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147638, -0.811687, 0.565126,
		0.707497, -0.312602, -0.633820,
		0.691123, 0.493401, 0.528114,
		34.282257, 32.185955, 33.196774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159241, 31.281357, 32.983070>,  <33.798470, 31.840572, 32.827091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159241, 31.281357, 32.983070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250767, 31.576401, 33.237179>,  <34.305683, 31.753428, 33.389645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.250767, 31.576401, 33.237179>,  <34.159241, 31.281357, 32.983070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250767, 31.576401, 33.237179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066670, -0.662928, 0.745709,
		0.971184, -0.128277, -0.200866,
		0.228817, 0.737612, 0.635273,
		34.319412, 31.797684, 33.427761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799500, 31.046343, 33.363110>,  <34.159241, 31.281357, 32.983070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799500, 31.046343, 33.363110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.631191, 31.328903, 33.590775>,  <34.530205, 31.498440, 33.727375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.631191, 31.328903, 33.590775>,  <34.799500, 31.046343, 33.363110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631191, 31.328903, 33.590775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051654, -0.645048, 0.762394,
		0.905694, 0.291396, 0.307908,
		-0.420774, 0.706401, 0.569164,
		34.504959, 31.540823, 33.761524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155403, 30.956301, 33.994308>,  <34.799500, 31.046343, 33.363110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155403, 30.956301, 33.994308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.822987, 31.158251, 34.087658>,  <34.623535, 31.279421, 34.143669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.822987, 31.158251, 34.087658>,  <35.155403, 30.956301, 33.994308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822987, 31.158251, 34.087658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084541, -0.529366, 0.844171,
		0.549743, 0.681814, 0.482610,
		-0.831045, 0.504877, 0.233374,
		34.573673, 31.309713, 34.157669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158726, 30.990149, 34.757168>,  <35.155403, 30.956301, 33.994308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158726, 30.990149, 34.757168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.784336, 31.066042, 34.638542>,  <34.559704, 31.111578, 34.567368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.784336, 31.066042, 34.638542>,  <35.158726, 30.990149, 34.757168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784336, 31.066042, 34.638542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352013, -0.489688, 0.797679,
		0.006119, 0.851004, 0.525124,
		-0.935975, 0.189732, -0.296568,
		34.503544, 31.122961, 34.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765228, 31.037630, 35.409786>,  <35.158726, 30.990149, 34.757168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765228, 31.037630, 35.409786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.467167, 30.995533, 35.146374>,  <34.288330, 30.970274, 34.988327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.467167, 30.995533, 35.146374>,  <34.765228, 31.037630, 35.409786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467167, 30.995533, 35.146374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557083, -0.444602, 0.701418,
		-0.366605, 0.889524, 0.272669,
		-0.745157, -0.105244, -0.658532,
		34.243618, 30.963961, 34.948814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082298, 31.369335, 35.670879>,  <34.765228, 31.037630, 35.409786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082298, 31.369335, 35.670879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.061150, 31.054180, 35.425461>,  <34.048462, 30.865088, 35.278210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.061150, 31.054180, 35.425461>,  <34.082298, 31.369335, 35.670879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061150, 31.054180, 35.425461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196258, -0.594223, 0.779988,
		-0.979126, 0.161649, -0.123214,
		-0.052868, -0.787889, -0.613544,
		34.045288, 30.817814, 35.241398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102093, 32.066849, 36.008377>,  <34.082298, 31.369335, 35.670879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102093, 32.066849, 36.008377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.727005, 32.065079, 36.147324>,  <33.501953, 32.064018, 36.230694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.727005, 32.065079, 36.147324>,  <34.102093, 32.066849, 36.008377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727005, 32.065079, 36.147324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226076, 0.766982, -0.600524,
		-0.263772, -0.641654, -0.720212,
		-0.937717, -0.004421, 0.347371,
		33.445690, 32.063751, 36.251534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671570, 32.164852, 35.411163>,  <34.102093, 32.066849, 36.008377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671570, 32.164852, 35.411163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444183, 32.279125, 35.719769>,  <33.307751, 32.347691, 35.904930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444183, 32.279125, 35.719769>,  <33.671570, 32.164852, 35.411163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444183, 32.279125, 35.719769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325409, 0.783218, -0.529791,
		-0.755614, -0.552226, -0.352271,
		-0.568469, 0.285685, 0.771509,
		33.273643, 32.364830, 35.951221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011543, 32.263924, 35.157730>,  <33.671570, 32.164852, 35.411163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011543, 32.263924, 35.157730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.057968, 32.507782, 35.471382>,  <33.085823, 32.654095, 35.659576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.057968, 32.507782, 35.471382>,  <33.011543, 32.263924, 35.157730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057968, 32.507782, 35.471382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380627, 0.756499, -0.531820,
		-0.917417, -0.236741, 0.319844,
		0.116058, 0.609642, 0.784135,
		33.092785, 32.690674, 35.706623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561508, 32.779381, 34.941513>,  <33.011543, 32.263924, 35.157730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561508, 32.779381, 34.941513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.729671, 32.982197, 35.242489>,  <32.830570, 33.103886, 35.423073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.729671, 32.982197, 35.242489>,  <32.561508, 32.779381, 34.941513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729671, 32.982197, 35.242489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046386, 0.816192, -0.575915,
		-0.906147, 0.277025, 0.319617,
		0.420412, 0.507038, 0.752440,
		32.855797, 33.134308, 35.468220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142944, 33.386208, 35.028076>,  <32.561508, 32.779381, 34.941513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142944, 33.386208, 35.028076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.485348, 33.479282, 35.212730>,  <32.690788, 33.535130, 35.323521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.485348, 33.479282, 35.212730>,  <32.142944, 33.386208, 35.028076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485348, 33.479282, 35.212730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081708, 0.820852, -0.565266,
		-0.510464, 0.521591, 0.683644,
		0.856008, 0.232689, 0.461634,
		32.742149, 33.549088, 35.351219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030876, 34.014751, 35.327633>,  <32.142944, 33.386208, 35.028076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030876, 34.014751, 35.327633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.428459, 33.981770, 35.298653>,  <32.667007, 33.961979, 35.281265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.428459, 33.981770, 35.298653>,  <32.030876, 34.014751, 35.327633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428459, 33.981770, 35.298653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034366, 0.860643, -0.508048,
		0.104245, 0.502488, 0.858276,
		0.993958, -0.082457, -0.072449,
		32.726646, 33.957031, 35.276917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392227, 34.596703, 35.594589>,  <32.030876, 34.014751, 35.327633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392227, 34.596703, 35.594589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.671215, 34.453163, 35.346474>,  <32.838608, 34.367039, 35.197605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.671215, 34.453163, 35.346474>,  <32.392227, 34.596703, 35.594589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671215, 34.453163, 35.346474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017578, 0.873896, -0.485794,
		0.716397, 0.327924, 0.615826,
		0.697471, -0.358847, -0.620292,
		32.880455, 34.345509, 35.160385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999805, 35.069088, 35.593464>,  <32.392227, 34.596703, 35.594589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999805, 35.069088, 35.593464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.981674, 34.864849, 35.250015>,  <32.970795, 34.742306, 35.043945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.981674, 34.864849, 35.250015>,  <32.999805, 35.069088, 35.593464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981674, 34.864849, 35.250015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087309, 0.854192, -0.512575,
		0.995150, -0.098198, 0.005863,
		-0.045326, -0.510601, -0.858622,
		32.968075, 34.711670, 34.992428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610268, 35.368214, 35.214001>,  <32.999805, 35.069088, 35.593464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610268, 35.368214, 35.214001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.379105, 35.181335, 34.946342>,  <33.240406, 35.069210, 34.785748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.379105, 35.181335, 34.946342>,  <33.610268, 35.368214, 35.214001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379105, 35.181335, 34.946342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256978, 0.674044, -0.692551,
		0.774589, -0.572185, -0.269475,
		-0.577905, -0.467194, -0.669146,
		33.205734, 35.041176, 34.745598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092430, 35.269703, 34.693161>,  <33.610268, 35.368214, 35.214001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092430, 35.269703, 34.693161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.730335, 35.230331, 34.527824>,  <33.513077, 35.206711, 34.428623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.730335, 35.230331, 34.527824>,  <34.092430, 35.269703, 34.693161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730335, 35.230331, 34.527824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348640, 0.384018, -0.854974,
		0.242881, -0.918065, -0.313314,
		-0.905240, -0.098423, -0.413345,
		33.458763, 35.200806, 34.403820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273266, 35.166958, 33.971775>,  <34.092430, 35.269703, 34.693161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273266, 35.166958, 33.971775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.886497, 35.267544, 33.988903>,  <33.654438, 35.327896, 33.999180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.886497, 35.267544, 33.988903>,  <34.273266, 35.166958, 33.971775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886497, 35.267544, 33.988903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081632, 0.464094, -0.882016,
		-0.241669, -0.849343, -0.469269,
		-0.966919, 0.251464, 0.042824,
		33.596420, 35.342983, 34.001751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999344, 35.036793, 33.290054>,  <34.273266, 35.166958, 33.971775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999344, 35.036793, 33.290054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.754208, 35.290611, 33.478432>,  <33.607128, 35.442902, 33.591457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.754208, 35.290611, 33.478432>,  <33.999344, 35.036793, 33.290054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754208, 35.290611, 33.478432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049629, 0.563887, -0.824360,
		-0.788650, -0.528569, -0.314079,
		-0.612836, 0.634544, 0.470942,
		33.570358, 35.480976, 33.619713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474148, 35.185768, 32.780205>,  <33.999344, 35.036793, 33.290054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474148, 35.185768, 32.780205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.459320, 35.470650, 33.060604>,  <33.450424, 35.641579, 33.228844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.459320, 35.470650, 33.060604>,  <33.474148, 35.185768, 32.780205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459320, 35.470650, 33.060604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228429, 0.676865, -0.699767,
		-0.972855, -0.186065, 0.137600,
		-0.037066, 0.712203, 0.700994,
		33.448200, 35.684311, 33.270901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816387, 35.520752, 32.581268>,  <33.474148, 35.185768, 32.780205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816387, 35.520752, 32.581268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.055332, 35.766346, 32.787643>,  <33.198700, 35.913700, 32.911469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.055332, 35.766346, 32.787643>,  <32.816387, 35.520752, 32.581268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055332, 35.766346, 32.787643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116803, 0.703081, -0.701451,
		-0.793423, 0.358755, 0.491706,
		0.597359, 0.613980, 0.515937,
		33.234539, 35.950539, 32.942425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404602, 36.217934, 32.697979>,  <32.816387, 35.520752, 32.581268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404602, 36.217934, 32.697979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.793751, 36.283363, 32.763420>,  <33.027241, 36.322620, 32.802685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.793751, 36.283363, 32.763420>,  <32.404602, 36.217934, 32.697979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793751, 36.283363, 32.763420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022906, 0.771793, -0.635462,
		-0.230214, 0.614474, 0.754601,
		0.972870, 0.163577, 0.163602,
		33.085613, 36.332436, 32.812500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871983, 36.611355, 32.840473>,  <32.404602, 36.217934, 32.697979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871983, 36.611355, 32.840473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.512819, 36.646763, 32.667995>,  <31.297321, 36.668007, 32.564510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.512819, 36.646763, 32.667995>,  <31.871983, 36.611355, 32.840473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512819, 36.646763, 32.667995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365601, -0.695528, 0.618527,
		-0.245153, 0.713024, 0.656883,
		-0.897906, 0.088523, -0.431194,
		31.243448, 36.673321, 32.538639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350973, 36.716167, 33.383667>,  <31.871983, 36.611355, 32.840473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350973, 36.716167, 33.383667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.120926, 36.618965, 33.071209>,  <30.982897, 36.560642, 32.883736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.120926, 36.618965, 33.071209>,  <31.350973, 36.716167, 33.383667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120926, 36.618965, 33.071209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540670, -0.603681, 0.585871,
		-0.613934, 0.759286, 0.215800,
		-0.575118, -0.243009, -0.781144,
		30.948391, 36.546062, 32.836864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782976, 36.626022, 33.727493>,  <31.350973, 36.716167, 33.383667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782976, 36.626022, 33.727493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.753122, 36.446800, 33.371140>,  <30.735210, 36.339268, 33.157326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.753122, 36.446800, 33.371140>,  <30.782976, 36.626022, 33.727493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753122, 36.446800, 33.371140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438095, -0.787814, 0.432923,
		-0.895825, 0.422602, -0.137495,
		-0.074634, -0.448059, -0.890883,
		30.730732, 36.312382, 33.103874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043518, 36.573708, 33.590885>,  <30.782976, 36.626022, 33.727493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043518, 36.573708, 33.590885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.256189, 36.323322, 33.362679>,  <30.383793, 36.173092, 33.225754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.256189, 36.323322, 33.362679>,  <30.043518, 36.573708, 33.590885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256189, 36.323322, 33.362679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553812, -0.766598, 0.324993,
		-0.640789, 0.143165, -0.754250,
		0.531678, -0.625965, -0.570514,
		30.415693, 36.135532, 33.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532690, 36.109455, 33.329536>,  <30.043518, 36.573708, 33.590885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532690, 36.109455, 33.329536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.888885, 35.929466, 33.302521>,  <30.102602, 35.821472, 33.286312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.888885, 35.929466, 33.302521>,  <29.532690, 36.109455, 33.329536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888885, 35.929466, 33.302521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403152, -0.849078, 0.341372,
		-0.210952, -0.276759, -0.937499,
		0.890488, -0.449968, -0.067539,
		30.156033, 35.794476, 33.282261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328716, 35.516079, 33.142323>,  <29.532690, 36.109455, 33.329536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328716, 35.516079, 33.142323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.701553, 35.457096, 33.274662>,  <29.925255, 35.421707, 33.354065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.701553, 35.457096, 33.274662>,  <29.328716, 35.516079, 33.142323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701553, 35.457096, 33.274662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296537, -0.835176, 0.463192,
		0.208019, -0.529847, -0.822186,
		0.932091, -0.147456, 0.330851,
		29.981180, 35.412861, 33.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420275, 34.859276, 33.059578>,  <29.328716, 35.516079, 33.142323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420275, 34.859276, 33.059578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.723179, 34.922543, 33.313046>,  <29.904922, 34.960503, 33.465126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.723179, 34.922543, 33.313046>,  <29.420275, 34.859276, 33.059578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723179, 34.922543, 33.313046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266710, -0.810757, 0.521093,
		0.596172, -0.563610, -0.571771,
		0.757261, 0.158164, 0.633672,
		29.950357, 34.969994, 33.503147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752577, 34.211239, 33.113468>,  <29.420275, 34.859276, 33.059578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752577, 34.211239, 33.113468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.854231, 34.401596, 33.450260>,  <29.915224, 34.515812, 33.652336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.854231, 34.401596, 33.450260>,  <29.752577, 34.211239, 33.113468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854231, 34.401596, 33.450260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141626, -0.842870, 0.519146,
		0.956743, -0.251180, -0.146804,
		0.254136, 0.475898, 0.841984,
		29.930471, 34.544365, 33.702854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449667, 33.867630, 33.340141>,  <29.752577, 34.211239, 33.113468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449667, 33.867630, 33.340141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.260159, 34.036148, 33.649475>,  <30.146454, 34.137260, 33.835075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.260159, 34.036148, 33.649475>,  <30.449667, 33.867630, 33.340141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260159, 34.036148, 33.649475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093410, -0.849151, 0.519825,
		0.875679, 0.318516, 0.362951,
		-0.473773, 0.421296, 0.773336,
		30.118027, 34.162537, 33.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857578, 33.712795, 34.002464>,  <30.449667, 33.867630, 33.340141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857578, 33.712795, 34.002464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476263, 33.802460, 34.083454>,  <30.247475, 33.856258, 34.132046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476263, 33.802460, 34.083454>,  <30.857578, 33.712795, 34.002464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476263, 33.802460, 34.083454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090218, -0.850993, 0.517370,
		0.288274, 0.474936, 0.831465,
		-0.953288, 0.224158, 0.202471,
		30.190277, 33.869705, 34.144196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775513, 33.497513, 34.745483>,  <30.857578, 33.712795, 34.002464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775513, 33.497513, 34.745483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.392166, 33.530949, 34.636269>,  <30.162159, 33.551010, 34.570740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.392166, 33.530949, 34.636269>,  <30.775513, 33.497513, 34.745483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392166, 33.530949, 34.636269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218374, -0.830640, 0.512200,
		-0.183982, 0.550499, 0.814310,
		-0.958365, 0.083589, -0.273037,
		30.104656, 33.556026, 34.554356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421366, 33.222588, 35.303192>,  <30.775513, 33.497513, 34.745483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421366, 33.222588, 35.303192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.147663, 33.211403, 35.011711>,  <29.983442, 33.204693, 34.836823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.147663, 33.211403, 35.011711>,  <30.421366, 33.222588, 35.303192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147663, 33.211403, 35.011711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121231, -0.980998, 0.151482,
		-0.719094, 0.191994, 0.667864,
		-0.684257, -0.027964, -0.728705,
		29.942387, 33.203014, 34.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.603310, 39.370678, 30.086683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335796, 39.116753, 29.931894>,  <32.175289, 38.964397, 29.839022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335796, 39.116753, 29.931894>,  <32.603310, 39.370678, 30.086683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335796, 39.116753, 29.931894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295427, -0.250726, 0.921878,
		-0.682245, 0.730854, -0.019861,
		-0.668779, -0.634814, -0.386971,
		32.135162, 38.926308, 29.815804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881960, 39.571239, 30.297562>,  <32.603310, 39.370678, 30.086683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881960, 39.571239, 30.297562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878166, 39.185158, 30.193026>,  <31.875889, 38.953510, 30.130304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878166, 39.185158, 30.193026>,  <31.881960, 39.571239, 30.297562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878166, 39.185158, 30.193026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490794, -0.223210, 0.842199,
		-0.871224, 0.136253, -0.471597,
		-0.009487, -0.965201, -0.261338,
		31.875320, 38.895599, 30.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338163, 39.298931, 30.633394>,  <31.881960, 39.571239, 30.297562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338163, 39.298931, 30.633394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516251, 38.959087, 30.520296>,  <31.623102, 38.755180, 30.452438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516251, 38.959087, 30.520296>,  <31.338163, 39.298931, 30.633394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516251, 38.959087, 30.520296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413332, -0.475112, 0.776805,
		-0.794316, -0.228981, -0.562699,
		0.445218, -0.849610, -0.282744,
		31.649817, 38.704205, 30.435472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702843, 38.773403, 30.491390>,  <31.338163, 39.298931, 30.633394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702843, 38.773403, 30.491390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044449, 38.576611, 30.559059>,  <31.249413, 38.458534, 30.599661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044449, 38.576611, 30.559059>,  <30.702843, 38.773403, 30.491390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044449, 38.576611, 30.559059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457899, -0.556451, 0.693319,
		-0.246960, -0.669568, -0.700493,
		0.854014, -0.491977, 0.169173,
		31.300653, 38.429016, 30.609812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483360, 38.037308, 30.556360>,  <30.702843, 38.773403, 30.491390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483360, 38.037308, 30.556360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834536, 38.045776, 30.747683>,  <31.045240, 38.050858, 30.862476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834536, 38.045776, 30.747683>,  <30.483360, 38.037308, 30.556360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834536, 38.045776, 30.747683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342441, -0.670425, 0.658229,
		0.334603, -0.741676, -0.581342,
		0.877938, 0.021170, 0.478307,
		31.097918, 38.052128, 30.891174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616886, 37.368576, 30.663174>,  <30.483360, 38.037308, 30.556360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616886, 37.368576, 30.663174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858610, 37.557678, 30.919708>,  <31.003645, 37.671139, 31.073629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858610, 37.557678, 30.919708>,  <30.616886, 37.368576, 30.663174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858610, 37.557678, 30.919708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193347, -0.693869, 0.693659,
		0.772932, -0.543188, -0.327908,
		0.604312, 0.472751, 0.641337,
		31.039904, 37.699505, 31.112110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043453, 36.868099, 30.997475>,  <30.616886, 37.368576, 30.663174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043453, 36.868099, 30.997475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080833, 37.164822, 31.263102>,  <31.103262, 37.342857, 31.422478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080833, 37.164822, 31.263102>,  <31.043453, 36.868099, 30.997475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080833, 37.164822, 31.263102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035634, -0.664067, 0.746824,
		0.994986, -0.093456, -0.035625,
		0.093453, 0.741809, 0.664067,
		31.108870, 37.387363, 31.462322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575287, 36.575699, 31.460117>,  <31.043453, 36.868099, 30.997475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575287, 36.575699, 31.460117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395428, 36.873291, 31.657831>,  <31.287512, 37.051846, 31.776459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395428, 36.873291, 31.657831>,  <31.575287, 36.575699, 31.460117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395428, 36.873291, 31.657831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168236, -0.614020, 0.771153,
		0.877220, 0.263590, 0.401255,
		-0.449647, 0.743976, 0.494285,
		31.260534, 37.096485, 31.806116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982552, 36.630463, 32.062996>,  <31.575287, 36.575699, 31.460117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982552, 36.630463, 32.062996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629080, 36.800282, 32.141857>,  <31.416998, 36.902172, 32.189175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629080, 36.800282, 32.141857>,  <31.982552, 36.630463, 32.062996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629080, 36.800282, 32.141857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174560, -0.689682, 0.702757,
		0.434329, 0.586595, 0.683567,
		-0.883678, 0.424551, 0.197153,
		31.363976, 36.927647, 32.201004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408630, 36.991417, 32.573647>,  <31.982552, 36.630463, 32.062996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408630, 36.991417, 32.573647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782524, 36.849400, 32.579582>,  <33.006859, 36.764191, 32.583141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782524, 36.849400, 32.579582>,  <32.408630, 36.991417, 32.573647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782524, 36.849400, 32.579582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259100, 0.652386, -0.712222,
		0.243187, 0.669582, 0.701797,
		0.934734, -0.355039, 0.014837,
		33.062943, 36.742889, 32.584034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840923, 37.611565, 32.590912>,  <32.408630, 36.991417, 32.573647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840923, 37.611565, 32.590912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042274, 37.302315, 32.436562>,  <33.163086, 37.116764, 32.343952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042274, 37.302315, 32.436562>,  <32.840923, 37.611565, 32.590912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042274, 37.302315, 32.436562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359349, 0.593435, -0.720210,
		0.785801, 0.223871, 0.576540,
		0.503374, -0.773121, -0.385874,
		33.193287, 37.070377, 32.320801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376591, 37.899136, 32.346680>,  <32.840923, 37.611565, 32.590912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376591, 37.899136, 32.346680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381531, 37.542160, 32.166279>,  <33.384495, 37.327976, 32.058037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381531, 37.542160, 32.166279>,  <33.376591, 37.899136, 32.346680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381531, 37.542160, 32.166279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415821, 0.414772, -0.809356,
		0.909362, -0.177537, 0.376218,
		0.012355, -0.892437, -0.451002,
		33.385239, 37.274429, 32.030979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023689, 37.874340, 32.069202>,  <33.376591, 37.899136, 32.346680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023689, 37.874340, 32.069202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823414, 37.594532, 31.865248>,  <33.703247, 37.426647, 31.742876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823414, 37.594532, 31.865248>,  <34.023689, 37.874340, 32.069202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823414, 37.594532, 31.865248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693316, 0.028608, -0.720065,
		0.518285, -0.714042, 0.470663,
		-0.500693, -0.699518, -0.509884,
		33.673206, 37.384678, 31.712282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555004, 37.238220, 31.899530>,  <34.023689, 37.874340, 32.069202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555004, 37.238220, 31.899530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249657, 37.216309, 31.642075>,  <34.066448, 37.203163, 31.487600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249657, 37.216309, 31.642075>,  <34.555004, 37.238220, 31.899530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249657, 37.216309, 31.642075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613807, 0.248972, -0.749169,
		0.201284, -0.966961, -0.156436,
		-0.763365, -0.054774, -0.643641,
		34.020649, 37.199875, 31.448982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795513, 36.961102, 31.347904>,  <34.555004, 37.238220, 31.899530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795513, 36.961102, 31.347904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479237, 37.105633, 31.150219>,  <34.289471, 37.192352, 31.031609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479237, 37.105633, 31.150219>,  <34.795513, 36.961102, 31.347904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479237, 37.105633, 31.150219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582133, 0.193801, -0.789660,
		-0.189550, -0.912074, -0.363581,
		-0.790691, 0.361333, -0.494213,
		34.242031, 37.214031, 31.001955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681866, 36.619003, 30.799429>,  <34.795513, 36.961102, 31.347904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681866, 36.619003, 30.799429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484573, 36.952217, 30.699203>,  <34.366196, 37.152145, 30.639069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484573, 36.952217, 30.699203>,  <34.681866, 36.619003, 30.799429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484573, 36.952217, 30.699203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392458, -0.043964, -0.918719,
		-0.776336, -0.551478, -0.305244,
		-0.493233, 0.833030, -0.250563,
		34.336605, 37.202126, 30.624035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503086, 36.370739, 30.184847>,  <34.681866, 36.619003, 30.799429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503086, 36.370739, 30.184847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435410, 36.764305, 30.161921>,  <34.394806, 37.000446, 30.148165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435410, 36.764305, 30.161921>,  <34.503086, 36.370739, 30.184847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435410, 36.764305, 30.161921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361105, 0.007775, -0.932493,
		-0.917049, -0.178463, -0.356612,
		-0.169188, 0.983916, -0.057314,
		34.384651, 37.059479, 30.144726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318405, 36.451237, 29.525751>,  <34.503086, 36.370739, 30.184847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318405, 36.451237, 29.525751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435555, 36.811283, 29.654762>,  <34.505844, 37.027309, 29.732168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435555, 36.811283, 29.654762>,  <34.318405, 36.451237, 29.525751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435555, 36.811283, 29.654762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373528, 0.202809, -0.905177,
		-0.880173, 0.385572, -0.276821,
		0.292869, 0.900113, 0.322529,
		34.523415, 37.081318, 29.751520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134892, 36.960117, 28.977791>,  <34.318405, 36.451237, 29.525751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134892, 36.960117, 28.977791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413853, 37.139088, 29.201733>,  <34.581230, 37.246471, 29.336098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413853, 37.139088, 29.201733>,  <34.134892, 36.960117, 28.977791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413853, 37.139088, 29.201733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390093, 0.418333, -0.820259,
		-0.601210, 0.790448, 0.117211,
		0.697405, 0.447425, 0.559855,
		34.623074, 37.273315, 29.369690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022858, 37.604321, 28.973270>,  <34.134892, 36.960117, 28.977791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022858, 37.604321, 28.973270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416859, 37.577717, 29.036943>,  <34.653259, 37.561756, 29.075148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416859, 37.577717, 29.036943>,  <34.022858, 37.604321, 28.973270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416859, 37.577717, 29.036943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166978, 0.599430, -0.782817,
		-0.043357, 0.797660, 0.601547,
		0.985007, -0.066505, 0.159181,
		34.712360, 37.557766, 29.084698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210381, 38.280239, 28.775507>,  <34.022858, 37.604321, 28.973270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210381, 38.280239, 28.775507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546482, 38.066231, 28.810673>,  <34.748142, 37.937828, 28.831772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546482, 38.066231, 28.810673>,  <34.210381, 38.280239, 28.775507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546482, 38.066231, 28.810673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394234, 0.491555, -0.776501,
		0.372225, 0.687118, 0.623953,
		0.840255, -0.535017, 0.087916,
		34.798557, 37.905727, 28.837048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671028, 38.811272, 28.671352>,  <34.210381, 38.280239, 28.775507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671028, 38.811272, 28.671352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903534, 38.488487, 28.629503>,  <35.043037, 38.294819, 28.604395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903534, 38.488487, 28.629503>,  <34.671028, 38.811272, 28.671352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903534, 38.488487, 28.629503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510635, 0.461844, -0.725225,
		0.633546, 0.368126, 0.680517,
		0.581267, -0.806959, -0.104622,
		35.077915, 38.246399, 28.598116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403786, 38.983059, 28.653063>,  <34.671028, 38.811272, 28.671352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403786, 38.983059, 28.653063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410587, 38.624283, 28.476336>,  <35.414669, 38.409016, 28.370300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410587, 38.624283, 28.476336>,  <35.403786, 38.983059, 28.653063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410587, 38.624283, 28.476336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713238, 0.320561, -0.623324,
		0.700716, -0.304520, 0.645186,
		0.017007, -0.896944, -0.441817,
		35.415688, 38.355198, 28.343790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.403568, 35.088776, 24.209791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.635475, 35.250263, 24.492884>,  <30.774618, 35.347157, 24.662739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.635475, 35.250263, 24.492884>,  <30.403568, 35.088776, 24.209791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635475, 35.250263, 24.492884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284541, -0.713601, 0.640164,
		0.763484, -0.572523, -0.298846,
		0.579766, 0.403721, 0.707729,
		30.809404, 35.371380, 24.705202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810251, 34.528275, 24.612619>,  <30.403568, 35.088776, 24.209791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810251, 34.528275, 24.612619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.837887, 34.838696, 24.863367>,  <30.854469, 35.024948, 25.013815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.837887, 34.838696, 24.863367>,  <30.810251, 34.528275, 24.612619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837887, 34.838696, 24.863367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215624, -0.601901, 0.768909,
		0.974029, -0.188293, 0.125751,
		0.069091, 0.776055, 0.626869,
		30.858614, 35.071510, 25.051428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226624, 34.253273, 25.151865>,  <30.810251, 34.528275, 24.612619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226624, 34.253273, 25.151865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.004278, 34.559448, 25.281551>,  <30.870871, 34.743153, 25.359364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.004278, 34.559448, 25.281551>,  <31.226624, 34.253273, 25.151865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004278, 34.559448, 25.281551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127766, -0.464059, 0.876542,
		0.821397, 0.445812, 0.355750,
		-0.555862, 0.765441, 0.324217,
		30.837519, 34.789082, 25.378817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617325, 34.456036, 25.786377>,  <31.226624, 34.253273, 25.151865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617325, 34.456036, 25.786377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.237606, 34.579826, 25.764233>,  <31.009775, 34.654102, 25.750946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.237606, 34.579826, 25.764233>,  <31.617325, 34.456036, 25.786377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237606, 34.579826, 25.764233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203383, -0.470242, 0.858783,
		0.239739, 0.826497, 0.509340,
		-0.949295, 0.309475, -0.055361,
		30.952818, 34.672668, 25.747625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402803, 34.534199, 26.432693>,  <31.617325, 34.456036, 25.786377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402803, 34.534199, 26.432693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036797, 34.582199, 26.278633>,  <30.817192, 34.611000, 26.186197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036797, 34.582199, 26.278633>,  <31.402803, 34.534199, 26.432693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036797, 34.582199, 26.278633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403075, -0.232976, 0.885016,
		0.016474, 0.965050, 0.261547,
		-0.915019, 0.120003, -0.385149,
		30.762291, 34.618198, 26.163088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070961, 35.032005, 26.855894>,  <31.402803, 34.534199, 26.432693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070961, 35.032005, 26.855894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.801207, 34.785236, 26.693605>,  <30.639355, 34.637173, 26.596231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.801207, 34.785236, 26.693605>,  <31.070961, 35.032005, 26.855894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801207, 34.785236, 26.693605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260201, -0.315669, 0.912496,
		-0.691015, 0.720941, 0.052358,
		-0.674384, -0.616925, -0.405722,
		30.598892, 34.600159, 26.571890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453842, 35.035019, 27.314638>,  <31.070961, 35.032005, 26.855894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453842, 35.035019, 27.314638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.401905, 34.691891, 27.115725>,  <30.370743, 34.486015, 26.996376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.401905, 34.691891, 27.115725>,  <30.453842, 35.035019, 27.314638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401905, 34.691891, 27.115725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323268, -0.437502, 0.839100,
		-0.937357, 0.269706, -0.220498,
		-0.129842, -0.857817, -0.497283,
		30.362953, 34.434547, 26.966539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748028, 34.866627, 27.456280>,  <30.453842, 35.035019, 27.314638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748028, 34.866627, 27.456280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.924995, 34.528946, 27.335222>,  <30.031176, 34.326336, 27.262589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.924995, 34.528946, 27.335222>,  <29.748028, 34.866627, 27.456280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924995, 34.528946, 27.335222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343957, -0.471387, 0.812089,
		-0.828227, -0.255186, -0.498918,
		0.442417, -0.844200, -0.302642,
		30.057720, 34.275684, 27.244431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238438, 34.354015, 27.385731>,  <29.748028, 34.866627, 27.456280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238438, 34.354015, 27.385731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599924, 34.195171, 27.449736>,  <29.816816, 34.099865, 27.488138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599924, 34.195171, 27.449736>,  <29.238438, 34.354015, 27.385731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599924, 34.195171, 27.449736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304636, -0.333821, 0.892054,
		-0.300824, -0.854909, -0.422652,
		0.903716, -0.397107, 0.160014,
		29.871038, 34.076038, 27.497740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036373, 33.742294, 27.594738>,  <29.238438, 34.354015, 27.385731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036373, 33.742294, 27.594738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.419983, 33.786705, 27.698999>,  <29.650148, 33.813351, 27.761557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.419983, 33.786705, 27.698999>,  <29.036373, 33.742294, 27.594738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419983, 33.786705, 27.698999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162688, -0.537392, 0.827492,
		0.231951, -0.835992, -0.497309,
		0.959026, 0.111031, 0.260655,
		29.707691, 33.820015, 27.777195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107128, 33.124218, 27.844353>,  <29.036373, 33.742294, 27.594738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107128, 33.124218, 27.844353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.426912, 33.312939, 27.993088>,  <29.618784, 33.426170, 28.082329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.426912, 33.312939, 27.993088>,  <29.107128, 33.124218, 27.844353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426912, 33.312939, 27.993088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026817, -0.590346, 0.806705,
		0.600117, -0.654902, -0.459307,
		0.799462, 0.471800, 0.371839,
		29.666752, 33.454479, 28.104639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549023, 32.594818, 28.031704>,  <29.107128, 33.124218, 27.844353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549023, 32.594818, 28.031704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.653936, 32.918697, 28.241692>,  <29.716885, 33.113026, 28.367683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.653936, 32.918697, 28.241692>,  <29.549023, 32.594818, 28.031704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653936, 32.918697, 28.241692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041305, -0.534095, 0.844415,
		0.964106, -0.243162, -0.106640,
		0.262285, 0.809700, 0.524968,
		29.732622, 33.161606, 28.399181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012943, 32.354671, 28.666151>,  <29.549023, 32.594818, 28.031704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012943, 32.354671, 28.666151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.892471, 32.718960, 28.779198>,  <29.820189, 32.937534, 28.847027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.892471, 32.718960, 28.779198>,  <30.012943, 32.354671, 28.666151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892471, 32.718960, 28.779198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149765, -0.247523, 0.957237,
		0.941732, 0.330629, -0.061845,
		-0.301182, 0.910723, 0.282617,
		29.802116, 32.992176, 28.863983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519587, 32.604851, 29.135391>,  <30.012943, 32.354671, 28.666151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519587, 32.604851, 29.135391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.170568, 32.782219, 29.217403>,  <29.961157, 32.888641, 29.266611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.170568, 32.782219, 29.217403>,  <30.519587, 32.604851, 29.135391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170568, 32.782219, 29.217403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214521, -0.029290, 0.976280,
		0.438911, 0.895833, -0.069567,
		-0.872547, 0.443424, 0.205030,
		29.908804, 32.915245, 29.278912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920303, 31.956898, 28.893253>,  <30.519587, 32.604851, 29.135391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920303, 31.956898, 28.893253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.314390, 31.898500, 28.857409>,  <31.550842, 31.863462, 28.835901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.314390, 31.898500, 28.857409>,  <30.920303, 31.956898, 28.893253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314390, 31.898500, 28.857409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021416, 0.414059, -0.909998,
		0.169958, 0.898466, 0.404812,
		0.985219, -0.145992, -0.089614,
		31.609955, 31.854702, 28.830524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116650, 32.523598, 28.465420>,  <30.920303, 31.956898, 28.893253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116650, 32.523598, 28.465420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.459385, 32.317421, 28.460546>,  <31.665026, 32.193714, 28.457623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.459385, 32.317421, 28.460546>,  <31.116650, 32.523598, 28.465420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459385, 32.317421, 28.460546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329669, 0.565882, -0.755709,
		0.396419, 0.643504, 0.654794,
		0.856838, -0.515442, -0.012183,
		31.716436, 32.162788, 28.456892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619711, 33.022713, 28.579573>,  <31.116650, 32.523598, 28.465420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619711, 33.022713, 28.579573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.780558, 32.720276, 28.373028>,  <31.877066, 32.538815, 28.249102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.780558, 32.720276, 28.373028>,  <31.619711, 33.022713, 28.579573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780558, 32.720276, 28.373028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296255, 0.641073, -0.707996,
		0.866335, 0.131721, 0.481781,
		0.402115, -0.756091, -0.516362,
		31.901192, 32.493450, 28.218119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404217, 33.150272, 28.385260>,  <31.619711, 33.022713, 28.579573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404217, 33.150272, 28.385260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.284996, 32.875237, 28.120417>,  <32.213463, 32.710217, 27.961510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.284996, 32.875237, 28.120417>,  <32.404217, 33.150272, 28.385260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284996, 32.875237, 28.120417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538935, 0.451287, -0.711259,
		0.787853, -0.568827, 0.236056,
		-0.298054, -0.687586, -0.662109,
		32.195580, 32.668961, 27.921783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055222, 33.036640, 27.975374>,  <32.404217, 33.150272, 28.385260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055222, 33.036640, 27.975374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.743233, 32.927265, 27.750208>,  <32.556038, 32.861641, 27.615108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.743233, 32.927265, 27.750208>,  <33.055222, 33.036640, 27.975374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743233, 32.927265, 27.750208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501239, 0.265615, -0.823534,
		0.374706, -0.924488, -0.070114,
		-0.779971, -0.273440, -0.562917,
		32.509239, 32.845234, 27.581333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378597, 32.697941, 27.437986>,  <33.055222, 33.036640, 27.975374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378597, 32.697941, 27.437986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.009663, 32.781208, 27.307781>,  <32.788300, 32.831169, 27.229658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.009663, 32.781208, 27.307781>,  <33.378597, 32.697941, 27.437986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009663, 32.781208, 27.307781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384527, 0.412041, -0.826052,
		-0.037833, -0.887067, -0.460087,
		-0.922338, 0.208167, -0.325512,
		32.732960, 32.843658, 27.210127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374783, 32.543587, 26.759005>,  <33.378597, 32.697941, 27.437986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374783, 32.543587, 26.759005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.057571, 32.787056, 26.769072>,  <32.867245, 32.933136, 26.775112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.057571, 32.787056, 26.769072>,  <33.374783, 32.543587, 26.759005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057571, 32.787056, 26.769072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319000, 0.450105, -0.834053,
		-0.518992, -0.653396, -0.551110,
		-0.793024, 0.608670, 0.025167,
		32.819664, 32.969658, 26.776623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896576, 32.451645, 26.114019>,  <33.374783, 32.543587, 26.759005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896576, 32.451645, 26.114019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834042, 32.816772, 26.264923>,  <32.796520, 33.035847, 26.355465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834042, 32.816772, 26.264923>,  <32.896576, 32.451645, 26.114019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834042, 32.816772, 26.264923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018054, 0.384533, -0.922934,
		-0.987539, -0.137474, -0.076596,
		-0.156333, 0.912817, 0.377260,
		32.787140, 33.090618, 26.378101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431007, 32.705727, 25.640636>,  <32.896576, 32.451645, 26.114019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431007, 32.705727, 25.640636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.561691, 33.026260, 25.841087>,  <32.640102, 33.218582, 25.961357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.561691, 33.026260, 25.841087>,  <32.431007, 32.705727, 25.640636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561691, 33.026260, 25.841087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121026, 0.490385, -0.863062,
		-0.937344, 0.342618, 0.063231,
		0.326708, 0.801334, 0.501125,
		32.659702, 33.266659, 25.991425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989176, 33.411221, 25.474964>,  <32.431007, 32.705727, 25.640636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989176, 33.411221, 25.474964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.355404, 33.487633, 25.616518>,  <32.575142, 33.533482, 25.701450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.355404, 33.487633, 25.616518>,  <31.989176, 33.411221, 25.474964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355404, 33.487633, 25.616518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154664, 0.645029, -0.748343,
		-0.371222, 0.739895, 0.561025,
		0.915573, 0.191031, 0.353884,
		32.630077, 33.544941, 25.722683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070995, 34.093937, 25.369116>,  <31.989176, 33.411221, 25.474964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070995, 34.093937, 25.369116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.454697, 33.985935, 25.402399>,  <32.684917, 33.921135, 25.422369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.454697, 33.985935, 25.402399>,  <32.070995, 34.093937, 25.369116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454697, 33.985935, 25.402399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257385, 0.713657, -0.651495,
		0.116521, 0.646369, 0.754076,
		0.959258, -0.270001, 0.083210,
		32.742474, 33.904934, 25.427362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564648, 34.744049, 25.494556>,  <32.070995, 34.093937, 25.369116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564648, 34.744049, 25.494556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809875, 34.453960, 25.369213>,  <32.957012, 34.279907, 25.294006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809875, 34.453960, 25.369213>,  <32.564648, 34.744049, 25.494556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809875, 34.453960, 25.369213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474156, 0.655028, -0.588314,
		0.631919, 0.212097, 0.745448,
		0.613069, -0.725226, -0.313358,
		32.993797, 34.236393, 25.275206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170597, 34.980602, 25.505699>,  <32.564648, 34.744049, 25.494556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170597, 34.980602, 25.505699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194923, 34.681038, 25.241751>,  <33.209518, 34.501297, 25.083382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.194923, 34.681038, 25.241751>,  <33.170597, 34.980602, 25.505699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194923, 34.681038, 25.241751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521049, 0.587690, -0.618973,
		0.851357, -0.306183, 0.425961,
		0.060814, -0.748914, -0.659871,
		33.213169, 34.456364, 25.043789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776215, 35.069077, 25.225296>,  <33.170597, 34.980602, 25.505699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776215, 35.069077, 25.225296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.638702, 34.806770, 24.956434>,  <33.556194, 34.649387, 24.795116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.638702, 34.806770, 24.956434>,  <33.776215, 35.069077, 25.225296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638702, 34.806770, 24.956434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482687, 0.490582, -0.725495,
		0.805499, -0.573850, 0.147876,
		-0.343780, -0.655763, -0.672154,
		33.535568, 34.610043, 24.754787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339195, 35.015202, 25.621820>,  <33.776215, 35.069077, 25.225296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339195, 35.015202, 25.621820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661430, 35.200813, 25.769173>,  <34.854771, 35.312180, 25.857584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661430, 35.200813, 25.769173>,  <34.339195, 35.015202, 25.621820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661430, 35.200813, 25.769173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219682, -0.343496, 0.913099,
		0.550243, -0.816508, -0.174777,
		0.805588, 0.464031, 0.368378,
		34.903107, 35.340023, 25.879686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761818, 34.498665, 26.042986>,  <34.339195, 35.015202, 25.621820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761818, 34.498665, 26.042986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866333, 34.863010, 26.170774>,  <34.929043, 35.081615, 26.247448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866333, 34.863010, 26.170774>,  <34.761818, 34.498665, 26.042986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866333, 34.863010, 26.170774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067543, -0.312905, 0.947380,
		0.962894, -0.269120, -0.020237,
		0.261291, 0.910859, 0.319472,
		34.944721, 35.136269, 26.266617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205944, 34.411289, 26.555332>,  <34.761818, 34.498665, 26.042986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205944, 34.411289, 26.555332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105503, 34.787422, 26.647171>,  <35.045238, 35.013103, 26.702274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105503, 34.787422, 26.647171>,  <35.205944, 34.411289, 26.555332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105503, 34.787422, 26.647171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083050, -0.257253, 0.962768,
		0.964391, 0.222685, 0.142692,
		-0.251103, 0.940336, 0.229599,
		35.030170, 35.069523, 26.716051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684624, 34.694683, 27.072653>,  <35.205944, 34.411289, 26.555332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684624, 34.694683, 27.072653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358105, 34.925461, 27.083933>,  <35.162193, 35.063927, 27.090700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358105, 34.925461, 27.083933>,  <35.684624, 34.694683, 27.072653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358105, 34.925461, 27.083933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011493, -0.032585, 0.999403,
		0.577517, 0.816134, 0.019969,
		-0.816298, 0.576943, 0.028198,
		35.113216, 35.098545, 27.092392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820309, 35.396503, 27.482838>,  <35.684624, 34.694683, 27.072653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820309, 35.396503, 27.482838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435551, 35.287254, 27.477619>,  <35.204697, 35.221706, 27.474487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435551, 35.287254, 27.477619>,  <35.820309, 35.396503, 27.482838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435551, 35.287254, 27.477619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009270, -0.015113, 0.999843,
		-0.273273, 0.961862, 0.012005,
		-0.961892, -0.273118, -0.013046,
		35.146984, 35.205318, 27.473705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648663, 35.528831, 28.099174>,  <35.820309, 35.396503, 27.482838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648663, 35.528831, 28.099174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317234, 35.325897, 28.004452>,  <35.118378, 35.204136, 27.947618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317234, 35.325897, 28.004452>,  <35.648663, 35.528831, 28.099174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317234, 35.325897, 28.004452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223070, -0.088800, 0.970749,
		-0.513529, 0.857158, -0.039596,
		-0.828570, -0.507340, -0.236808,
		35.068665, 35.173695, 27.933409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160847, 35.820892, 28.620951>,  <35.648663, 35.528831, 28.099174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160847, 35.820892, 28.620951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.017147, 35.474789, 28.481087>,  <34.930927, 35.267124, 28.397169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.017147, 35.474789, 28.481087>,  <35.160847, 35.820892, 28.620951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017147, 35.474789, 28.481087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163043, -0.310717, 0.936414,
		-0.918887, 0.393419, -0.029449,
		-0.359253, -0.865261, -0.349658,
		34.909370, 35.215210, 28.376190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465061, 35.704193, 28.935263>,  <35.160847, 35.820892, 28.620951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465061, 35.704193, 28.935263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.608589, 35.347664, 28.824425>,  <34.694706, 35.133747, 28.757921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.608589, 35.347664, 28.824425>,  <34.465061, 35.704193, 28.935263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608589, 35.347664, 28.824425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249509, -0.377655, 0.891696,
		-0.899439, -0.250824, -0.357906,
		0.358824, -0.891327, -0.277094,
		34.716236, 35.080265, 28.741297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968563, 35.169651, 29.160044>,  <34.465061, 35.704193, 28.935263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968563, 35.169651, 29.160044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.315567, 34.979477, 29.101543>,  <34.523769, 34.865372, 29.066442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.315567, 34.979477, 29.101543>,  <33.968563, 35.169651, 29.160044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315567, 34.979477, 29.101543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017180, -0.322480, 0.946420,
		-0.497127, -0.818514, -0.287922,
		0.867507, -0.475438, -0.146252,
		34.575821, 34.836845, 29.057669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795635, 34.458889, 29.235458>,  <33.968563, 35.169651, 29.160044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795635, 34.458889, 29.235458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189198, 34.485638, 29.301735>,  <34.425335, 34.501686, 29.341501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189198, 34.485638, 29.301735>,  <33.795635, 34.458889, 29.235458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189198, 34.485638, 29.301735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126163, -0.396646, 0.909261,
		0.126526, -0.915533, -0.381826,
		0.983908, 0.066873, 0.165693,
		34.484371, 34.505699, 29.351442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006386, 33.801487, 29.436954>,  <33.795635, 34.458889, 29.235458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006386, 33.801487, 29.436954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270123, 34.059761, 29.591022>,  <34.428364, 34.214725, 29.683464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270123, 34.059761, 29.591022>,  <34.006386, 33.801487, 29.436954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270123, 34.059761, 29.591022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206439, -0.337135, 0.918544,
		0.722947, -0.685148, -0.088992,
		0.659341, 0.645687, 0.385172,
		34.467926, 34.253468, 29.706573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467648, 33.290745, 29.852186>,  <34.006386, 33.801487, 29.436954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467648, 33.290745, 29.852186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572563, 33.662262, 29.956913>,  <34.635513, 33.885174, 30.019749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572563, 33.662262, 29.956913>,  <34.467648, 33.290745, 29.852186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572563, 33.662262, 29.956913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171644, -0.311895, 0.934484,
		0.949602, -0.200164, -0.241228,
		0.262288, 0.928793, 0.261819,
		34.651249, 33.940899, 30.035460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163315, 33.180832, 30.292208>,  <34.467648, 33.290745, 29.852186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163315, 33.180832, 30.292208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.005547, 33.537575, 30.380777>,  <34.910885, 33.751621, 30.433918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.005547, 33.537575, 30.380777>,  <35.163315, 33.180832, 30.292208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005547, 33.537575, 30.380777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128694, -0.292193, 0.947661,
		0.909874, 0.345281, 0.230023,
		-0.394421, 0.891854, 0.221423,
		34.887218, 33.805130, 30.447205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570541, 33.428844, 30.838850>,  <35.163315, 33.180832, 30.292208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570541, 33.428844, 30.838850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.211285, 33.603073, 30.862925>,  <34.995731, 33.707611, 30.877369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.211285, 33.603073, 30.862925>,  <35.570541, 33.428844, 30.838850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211285, 33.603073, 30.862925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044471, -0.226159, 0.973075,
		0.437457, 0.871280, 0.222493,
		-0.898139, 0.435573, 0.060188,
		34.941841, 33.733746, 30.880981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.415699, 38.452915, 28.471401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091618, 38.372654, 28.251108>,  <35.897167, 38.324497, 28.118933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.091618, 38.372654, 28.251108>,  <36.415699, 38.452915, 28.471401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091618, 38.372654, 28.251108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554818, 0.040528, -0.830984,
		0.189060, -0.978824, 0.078489,
		-0.810206, -0.200653, -0.550731,
		35.848557, 38.312458, 28.085888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556316, 37.874321, 27.972788>,  <36.415699, 38.452915, 28.471401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556316, 37.874321, 27.972788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.245956, 38.061890, 27.803982>,  <36.059742, 38.174431, 27.702698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.245956, 38.061890, 27.803982>,  <36.556316, 37.874321, 27.972788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245956, 38.061890, 27.803982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420029, -0.115132, -0.900178,
		-0.470704, -0.875702, -0.107632,
		-0.775895, 0.468926, -0.422013,
		36.013187, 38.202568, 27.677378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467598, 37.471973, 27.311041>,  <36.556316, 37.874321, 27.972788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467598, 37.471973, 27.311041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283699, 37.824768, 27.269602>,  <36.173359, 38.036446, 27.244738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283699, 37.824768, 27.269602>,  <36.467598, 37.471973, 27.311041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283699, 37.824768, 27.269602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229149, 0.005112, -0.973378,
		-0.857977, -0.471246, -0.204457,
		-0.459746, 0.881987, -0.103599,
		36.145775, 38.089363, 27.238522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012646, 37.449696, 26.686058>,  <36.467598, 37.471973, 27.311041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012646, 37.449696, 26.686058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027184, 37.843380, 26.755350>,  <36.035908, 38.079590, 26.796926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027184, 37.843380, 26.755350>,  <36.012646, 37.449696, 26.686058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027184, 37.843380, 26.755350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160909, 0.165320, -0.973025,
		-0.986300, 0.063241, -0.152359,
		0.036347, 0.984210, 0.173231,
		36.038086, 38.138641, 26.807320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675343, 37.687294, 26.145990>,  <36.012646, 37.449696, 26.686058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675343, 37.687294, 26.145990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879658, 38.007339, 26.271790>,  <36.002247, 38.199368, 26.347269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879658, 38.007339, 26.271790>,  <35.675343, 37.687294, 26.145990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879658, 38.007339, 26.271790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111765, 0.300917, -0.947078,
		-0.852410, 0.518907, 0.064280,
		0.510789, 0.800115, 0.314500,
		36.032894, 38.247375, 26.366140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497734, 38.150597, 25.684093>,  <35.675343, 37.687294, 26.145990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497734, 38.150597, 25.684093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806339, 38.341000, 25.852940>,  <35.991501, 38.455242, 25.954247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806339, 38.341000, 25.852940>,  <35.497734, 38.150597, 25.684093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806339, 38.341000, 25.852940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213993, 0.430665, -0.876775,
		-0.599143, 0.766774, 0.230402,
		0.771514, 0.476009, 0.422115,
		36.037792, 38.483803, 25.979574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489075, 38.862198, 25.403936>,  <35.497734, 38.150597, 25.684093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489075, 38.862198, 25.403936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864090, 38.820099, 25.536570>,  <36.089100, 38.794838, 25.616150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864090, 38.820099, 25.536570>,  <35.489075, 38.862198, 25.403936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864090, 38.820099, 25.536570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345477, 0.393665, -0.851865,
		-0.040876, 0.913209, 0.405436,
		0.937537, -0.105248, 0.331584,
		36.145351, 38.788525, 25.636045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905262, 39.581829, 25.407049>,  <35.489075, 38.862198, 25.403936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905262, 39.581829, 25.407049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169064, 39.281986, 25.384611>,  <36.327347, 39.102081, 25.371147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169064, 39.281986, 25.384611>,  <35.905262, 39.581829, 25.407049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169064, 39.281986, 25.384611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426643, 0.434715, -0.793094,
		0.618891, 0.499118, 0.606511,
		0.659507, -0.749602, -0.056096,
		36.366917, 39.057106, 25.367783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509548, 39.920597, 25.056446>,  <35.905262, 39.581829, 25.407049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509548, 39.920597, 25.056446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559917, 39.524597, 25.030991>,  <36.590137, 39.286999, 25.015718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559917, 39.524597, 25.030991>,  <36.509548, 39.920597, 25.056446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559917, 39.524597, 25.030991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553547, 0.123352, -0.823632,
		0.823243, 0.068489, 0.563543,
		0.125924, -0.989997, -0.063637,
		36.597694, 39.227596, 25.011900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223331, 39.809032, 24.864365>,  <36.509548, 39.920597, 25.056446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223331, 39.809032, 24.864365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064045, 39.447624, 24.801035>,  <36.968472, 39.230778, 24.763037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064045, 39.447624, 24.801035>,  <37.223331, 39.809032, 24.864365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064045, 39.447624, 24.801035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381078, -0.005954, -0.924524,
		0.834386, -0.428497, 0.346684,
		-0.398220, -0.903523, -0.158323,
		36.944580, 39.176567, 24.753538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762207, 39.415680, 24.615114>,  <37.223331, 39.809032, 24.864365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762207, 39.415680, 24.615114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410053, 39.273586, 24.489431>,  <37.198761, 39.188328, 24.414021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410053, 39.273586, 24.489431>,  <37.762207, 39.415680, 24.615114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410053, 39.273586, 24.489431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286061, 0.130676, -0.949259,
		0.378274, -0.925596, -0.013425,
		-0.880385, -0.355239, -0.314208,
		37.145939, 39.167015, 24.395168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947887, 39.056187, 24.017017>,  <37.762207, 39.415680, 24.615114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947887, 39.056187, 24.017017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555908, 39.128151, 23.982771>,  <37.320721, 39.171329, 23.962223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555908, 39.128151, 23.982771>,  <37.947887, 39.056187, 24.017017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555908, 39.128151, 23.982771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116441, 0.168440, -0.978810,
		-0.161680, -0.969154, -0.186012,
		-0.979949, 0.179914, -0.085616,
		37.261925, 39.182125, 23.957087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741875, 38.751083, 23.393888>,  <37.947887, 39.056187, 24.017017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741875, 38.751083, 23.393888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475880, 39.047100, 23.434132>,  <37.316280, 39.224712, 23.458279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475880, 39.047100, 23.434132>,  <37.741875, 38.751083, 23.393888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475880, 39.047100, 23.434132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244865, 0.343303, -0.906743,
		-0.705570, -0.578340, -0.409505,
		-0.664990, 0.740045, 0.100609,
		37.276382, 39.269112, 23.464314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237152, 38.795288, 22.841770>,  <37.741875, 38.751083, 23.393888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237152, 38.795288, 22.841770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315266, 39.159458, 22.987642>,  <37.362133, 39.377960, 23.075165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315266, 39.159458, 22.987642>,  <37.237152, 38.795288, 22.841770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315266, 39.159458, 22.987642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362929, 0.278359, -0.889269,
		-0.911124, 0.306014, -0.276060,
		0.195285, 0.910424, 0.364681,
		37.373852, 39.432587, 23.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820251, 38.756287, 22.158251>,  <37.237152, 38.795288, 22.841770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820251, 38.756287, 22.158251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926991, 38.435837, 21.943962>,  <36.991035, 38.243568, 21.815390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926991, 38.435837, 21.943962>,  <36.820251, 38.756287, 22.158251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926991, 38.435837, 21.943962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215450, -0.591398, 0.777065,
		-0.939348, -0.091935, -0.330413,
		0.266846, -0.801122, -0.535721,
		37.007046, 38.195499, 21.783245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254494, 38.265263, 22.266438>,  <36.820251, 38.756287, 22.158251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254494, 38.265263, 22.266438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546635, 38.036362, 22.117247>,  <36.721920, 37.899021, 22.027733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546635, 38.036362, 22.117247>,  <36.254494, 38.265263, 22.266438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546635, 38.036362, 22.117247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263656, -0.739886, 0.618914,
		-0.630134, -0.353689, -0.691256,
		0.730354, -0.572252, -0.372975,
		36.765739, 37.864685, 22.005354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888439, 37.592678, 22.166754>,  <36.254494, 38.265263, 22.266438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888439, 37.592678, 22.166754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282509, 37.528419, 22.190842>,  <36.518951, 37.489864, 22.205294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282509, 37.528419, 22.190842>,  <35.888439, 37.592678, 22.166754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282509, 37.528419, 22.190842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159408, -0.727398, 0.667444,
		-0.063418, -0.667147, -0.742221,
		0.985174, -0.160644, 0.060218,
		36.578060, 37.480225, 22.208906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930195, 36.870880, 22.104826>,  <35.888439, 37.592678, 22.166754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930195, 36.870880, 22.104826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277046, 37.011253, 22.246214>,  <36.485157, 37.095478, 22.331047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277046, 37.011253, 22.246214>,  <35.930195, 36.870880, 22.104826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277046, 37.011253, 22.246214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082325, -0.800864, 0.593160,
		0.491241, -0.485245, -0.723339,
		0.867125, 0.350933, 0.353470,
		36.537182, 37.116535, 22.352255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459492, 36.296299, 22.108822>,  <35.930195, 36.870880, 22.104826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459492, 36.296299, 22.108822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508461, 36.585083, 22.381229>,  <36.537842, 36.758354, 22.544674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508461, 36.585083, 22.381229>,  <36.459492, 36.296299, 22.108822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508461, 36.585083, 22.381229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061281, -0.679374, 0.731229,
		0.990584, -0.131255, -0.038931,
		0.122426, 0.721958, 0.681020,
		36.545189, 36.801670, 22.585535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797592, 35.932720, 22.619162>,  <36.459492, 36.296299, 22.108822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797592, 35.932720, 22.619162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708138, 36.276241, 22.803526>,  <36.654465, 36.482353, 22.914145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708138, 36.276241, 22.803526>,  <36.797592, 35.932720, 22.619162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708138, 36.276241, 22.803526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062643, -0.484575, 0.872504,
		0.972657, 0.166255, 0.162168,
		-0.223641, 0.858805, 0.460910,
		36.641045, 36.533882, 22.941799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229675, 35.886982, 23.220957>,  <36.797592, 35.932720, 22.619162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229675, 35.886982, 23.220957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.942917, 36.156422, 23.292862>,  <36.770863, 36.318085, 23.336006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.942917, 36.156422, 23.292862>,  <37.229675, 35.886982, 23.220957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942917, 36.156422, 23.292862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189441, -0.436359, 0.879604,
		0.670944, 0.596534, 0.440434,
		-0.716901, 0.673601, 0.179765,
		36.727848, 36.358501, 23.346792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313202, 36.005947, 23.986519>,  <37.229675, 35.886982, 23.220957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313202, 36.005947, 23.986519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.948860, 36.137859, 23.887249>,  <36.730255, 36.217007, 23.827686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.948860, 36.137859, 23.887249>,  <37.313202, 36.005947, 23.986519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948860, 36.137859, 23.887249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365626, -0.365769, 0.855880,
		0.191475, 0.870321, 0.453738,
		-0.910854, 0.329778, -0.248176,
		36.675606, 36.236794, 23.812796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110897, 36.004356, 24.662958>,  <37.313202, 36.005947, 23.986519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110897, 36.004356, 24.662958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781746, 36.036186, 24.437908>,  <36.584255, 36.055283, 24.302879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781746, 36.036186, 24.437908>,  <37.110897, 36.004356, 24.662958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781746, 36.036186, 24.437908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538988, -0.422817, 0.728504,
		-0.179916, 0.902715, 0.390815,
		-0.822875, 0.079575, -0.562623,
		36.534882, 36.060059, 24.269121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675243, 36.595406, 25.039614>,  <37.110897, 36.004356, 24.662958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675243, 36.595406, 25.039614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452686, 36.372681, 24.792912>,  <36.319153, 36.239048, 24.644890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452686, 36.372681, 24.792912>,  <36.675243, 36.595406, 25.039614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452686, 36.372681, 24.792912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688669, -0.106302, 0.717241,
		-0.464928, 0.823810, -0.324311,
		-0.556396, -0.556809, -0.616756,
		36.285767, 36.205639, 24.607885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949848, 36.825790, 25.167561>,  <36.675243, 36.595406, 25.039614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949848, 36.825790, 25.167561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928177, 36.466061, 24.993998>,  <35.915173, 36.250221, 24.889860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928177, 36.466061, 24.993998>,  <35.949848, 36.825790, 25.167561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928177, 36.466061, 24.993998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766810, -0.240865, 0.594968,
		-0.639584, 0.364956, -0.676564,
		-0.054177, -0.899328, -0.433906,
		35.911922, 36.196262, 24.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191936, 36.687466, 25.275496>,  <35.949848, 36.825790, 25.167561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191936, 36.687466, 25.275496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391144, 36.351940, 25.187517>,  <35.510670, 36.150627, 25.134729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391144, 36.351940, 25.187517>,  <35.191936, 36.687466, 25.275496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391144, 36.351940, 25.187517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676613, -0.534516, 0.506446,
		-0.542390, -0.103378, -0.833742,
		0.498004, -0.838812, -0.219970,
		35.540550, 36.100296, 25.121532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648018, 36.249035, 25.117857>,  <35.191936, 36.687466, 25.275496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648018, 36.249035, 25.117857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978184, 36.042458, 25.209057>,  <35.176281, 35.918510, 25.263777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978184, 36.042458, 25.209057>,  <34.648018, 36.249035, 25.117857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978184, 36.042458, 25.209057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497716, -0.475135, 0.725621,
		-0.266409, -0.712416, -0.649223,
		0.825412, -0.516441, 0.228001,
		35.225807, 35.887524, 25.277456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389030, 35.603432, 25.197868>,  <34.648018, 36.249035, 25.117857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389030, 35.603432, 25.197868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.742722, 35.612198, 25.384483>,  <34.954937, 35.617458, 25.496452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.742722, 35.612198, 25.384483>,  <34.389030, 35.603432, 25.197868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742722, 35.612198, 25.384483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436314, -0.317622, 0.841871,
		0.166633, -0.947964, -0.271289,
		0.884230, 0.021917, 0.466536,
		35.007992, 35.618774, 25.524445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309753, 35.035084, 24.689775>,  <34.389030, 35.603432, 25.197868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309753, 35.035084, 24.689775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990025, 34.874512, 24.510916>,  <33.798187, 34.778168, 24.403599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990025, 34.874512, 24.510916>,  <34.309753, 35.035084, 24.689775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990025, 34.874512, 24.510916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299689, 0.378668, -0.875669,
		0.520841, -0.833945, -0.182373,
		-0.799319, -0.401429, -0.447150,
		33.750229, 34.754082, 24.376770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538437, 34.673412, 24.014927>,  <34.309753, 35.035084, 24.689775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538437, 34.673412, 24.014927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155106, 34.780167, 23.974192>,  <33.925106, 34.844219, 23.949751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155106, 34.780167, 23.974192>,  <34.538437, 34.673412, 24.014927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155106, 34.780167, 23.974192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214232, 0.435684, -0.874233,
		-0.188951, -0.859623, -0.474705,
		-0.958333, 0.266885, -0.101836,
		33.867607, 34.860233, 23.943640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268085, 34.379623, 23.335455>,  <34.538437, 34.673412, 24.014927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268085, 34.379623, 23.335455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054005, 34.694218, 23.458738>,  <33.925556, 34.882973, 23.532709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054005, 34.694218, 23.458738>,  <34.268085, 34.379623, 23.335455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054005, 34.694218, 23.458738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017219, 0.354630, -0.934848,
		-0.844546, -0.505643, -0.176258,
		-0.535206, 0.786487, 0.308208,
		33.893444, 34.930164, 23.551201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699306, 34.466496, 22.820379>,  <34.268085, 34.379623, 23.335455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699306, 34.466496, 22.820379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733643, 34.809299, 23.023617>,  <33.754246, 35.014984, 23.145559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733643, 34.809299, 23.023617>,  <33.699306, 34.466496, 22.820379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733643, 34.809299, 23.023617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047089, 0.505918, -0.861295,
		-0.995196, 0.097859, 0.003072,
		0.085840, 0.857013, 0.508096,
		33.759396, 35.066402, 23.176046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320396, 34.846443, 22.456945>,  <33.699306, 34.466496, 22.820379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320396, 34.846443, 22.456945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.513424, 35.129730, 22.663073>,  <33.629242, 35.299702, 22.786749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.513424, 35.129730, 22.663073>,  <33.320396, 34.846443, 22.456945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513424, 35.129730, 22.663073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051910, 0.564199, -0.824005,
		-0.874317, 0.424391, 0.235502,
		0.482571, 0.708217, 0.515319,
		33.658195, 35.342194, 22.817669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012314, 35.560802, 22.299562>,  <33.320396, 34.846443, 22.456945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012314, 35.560802, 22.299562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375950, 35.653774, 22.437859>,  <33.594131, 35.709557, 22.520836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375950, 35.653774, 22.437859>,  <33.012314, 35.560802, 22.299562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375950, 35.653774, 22.437859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103968, 0.677064, -0.728543,
		-0.403427, 0.698255, 0.591344,
		0.909086, 0.232433, 0.345742,
		33.648674, 35.723503, 22.541582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106766, 36.271362, 22.593140>,  <33.012314, 35.560802, 22.299562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106766, 36.271362, 22.593140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477871, 36.188416, 22.469044>,  <33.700535, 36.138649, 22.394587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477871, 36.188416, 22.469044>,  <33.106766, 36.271362, 22.593140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477871, 36.188416, 22.469044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004921, 0.838113, -0.545475,
		0.373126, 0.504547, 0.778594,
		0.927767, -0.207363, -0.310239,
		33.756203, 36.126205, 22.375973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687454, 36.639591, 23.061426>,  <33.106766, 36.271362, 22.593140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687454, 36.639591, 23.061426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365326, 36.872726, 23.018051>,  <32.172047, 37.012608, 22.992025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365326, 36.872726, 23.018051>,  <32.687454, 36.639591, 23.061426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365326, 36.872726, 23.018051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383325, -0.372400, 0.845210,
		0.452236, 0.722234, 0.523317,
		-0.805323, 0.582835, -0.108438,
		32.123730, 37.047577, 22.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607727, 37.054493, 23.704531>,  <32.687454, 36.639591, 23.061426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607727, 37.054493, 23.704531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249882, 37.049961, 23.525848>,  <32.035175, 37.047241, 23.418638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249882, 37.049961, 23.525848>,  <32.607727, 37.054493, 23.704531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249882, 37.049961, 23.525848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435577, -0.201020, 0.877419,
		-0.099739, 0.979521, 0.174899,
		-0.894609, -0.011331, -0.446706,
		31.981499, 37.046562, 23.391836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173496, 37.393478, 24.111998>,  <32.607727, 37.054493, 23.704531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173496, 37.393478, 24.111998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.936821, 37.159496, 23.890106>,  <31.794815, 37.019108, 23.756971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.936821, 37.159496, 23.890106>,  <32.173496, 37.393478, 24.111998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936821, 37.159496, 23.890106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492622, -0.282339, 0.823169,
		-0.638140, 0.760336, -0.121104,
		-0.591693, -0.584956, -0.554730,
		31.759314, 36.984009, 23.723686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578320, 37.356121, 24.488749>,  <32.173496, 37.393478, 24.111998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578320, 37.356121, 24.488749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521946, 37.064308, 24.221041>,  <31.488121, 36.889221, 24.060417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521946, 37.064308, 24.221041>,  <31.578320, 37.356121, 24.488749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521946, 37.064308, 24.221041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624491, -0.459049, 0.631890,
		-0.768211, 0.507006, -0.390892,
		-0.140934, -0.729533, -0.669267,
		31.479666, 36.845448, 24.020260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858253, 37.115337, 24.606831>,  <31.578320, 37.356121, 24.488749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858253, 37.115337, 24.606831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.042839, 36.823601, 24.404797>,  <31.153591, 36.648560, 24.283577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.042839, 36.823601, 24.404797>,  <30.858253, 37.115337, 24.606831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042839, 36.823601, 24.404797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471911, -0.683903, 0.556396,
		-0.751231, -0.018403, -0.659783,
		0.461467, -0.729341, -0.505085,
		31.181278, 36.604797, 24.253271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322906, 36.613029, 24.314919>,  <30.858253, 37.115337, 24.606831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322906, 36.613029, 24.314919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663525, 36.412354, 24.375818>,  <30.867895, 36.291950, 24.412357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663525, 36.412354, 24.375818>,  <30.322906, 36.613029, 24.314919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663525, 36.412354, 24.375818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474223, -0.613218, 0.631725,
		-0.223567, -0.610142, -0.760095,
		0.851546, -0.501687, 0.152249,
		30.918989, 36.261848, 24.421494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117662, 35.845783, 24.307074>,  <30.322906, 36.613029, 24.314919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117662, 35.845783, 24.307074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.475597, 35.865192, 24.484573>,  <30.690357, 35.876839, 24.591074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.475597, 35.865192, 24.484573>,  <30.117662, 35.845783, 24.307074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475597, 35.865192, 24.484573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309848, -0.648086, 0.695686,
		0.321345, -0.760020, -0.564896,
		0.894836, 0.048524, 0.443749,
		30.744049, 35.879749, 24.617699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.859329, 40.951206, 23.676861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.181568, 40.714218, 23.677233>,  <34.374912, 40.572025, 23.677456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.181568, 40.714218, 23.677233>,  <33.859329, 40.951206, 23.676861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181568, 40.714218, 23.677233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199868, -0.270291, 0.941805,
		-0.557737, -0.758898, -0.336160,
		0.805594, -0.592467, 0.000928,
		34.423248, 40.536480, 23.677511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677425, 40.277645, 23.829720>,  <33.859329, 40.951206, 23.676861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677425, 40.277645, 23.829720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.066429, 40.266853, 23.922237>,  <34.299831, 40.260380, 23.977749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.066429, 40.266853, 23.922237>,  <33.677425, 40.277645, 23.829720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066429, 40.266853, 23.922237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231427, -0.222133, 0.947153,
		0.025827, -0.974643, -0.222270,
		0.972509, -0.026978, 0.231295,
		34.358181, 40.258759, 23.991627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783821, 39.646912, 24.194254>,  <33.677425, 40.277645, 23.829720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783821, 39.646912, 24.194254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087200, 39.886829, 24.296244>,  <34.269226, 40.030781, 24.357437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087200, 39.886829, 24.296244>,  <33.783821, 39.646912, 24.194254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087200, 39.886829, 24.296244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205287, -0.151448, 0.966913,
		0.618560, -0.785694, 0.008264,
		0.758446, 0.599790, 0.254973,
		34.314735, 40.066765, 24.372736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139370, 39.293659, 24.637051>,  <33.783821, 39.646912, 24.194254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139370, 39.293659, 24.637051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184231, 39.682716, 24.718420>,  <34.211147, 39.916153, 24.767242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184231, 39.682716, 24.718420>,  <34.139370, 39.293659, 24.637051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184231, 39.682716, 24.718420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175709, -0.182079, 0.967457,
		0.978033, -0.144244, 0.150483,
		0.112150, 0.972646, 0.203425,
		34.217876, 39.974510, 24.779448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586121, 39.209698, 25.127855>,  <34.139370, 39.293659, 24.637051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586121, 39.209698, 25.127855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.432949, 39.577744, 25.160759>,  <34.341045, 39.798569, 25.180500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.432949, 39.577744, 25.160759>,  <34.586121, 39.209698, 25.127855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432949, 39.577744, 25.160759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050754, -0.109864, 0.992650,
		0.922384, 0.375935, 0.088769,
		-0.382924, 0.920110, 0.082257,
		34.318073, 39.853775, 25.185436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686653, 39.449219, 25.857821>,  <34.586121, 39.209698, 25.127855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686653, 39.449219, 25.857821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.416618, 39.715668, 25.730988>,  <34.254597, 39.875538, 25.654888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.416618, 39.715668, 25.730988>,  <34.686653, 39.449219, 25.857821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416618, 39.715668, 25.730988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314422, 0.129022, 0.940474,
		0.667383, 0.734597, 0.122343,
		-0.675084, 0.666124, -0.317080,
		34.214092, 39.915504, 25.635864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730255, 40.132961, 26.254030>,  <34.686653, 39.449219, 25.857821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730255, 40.132961, 26.254030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.355762, 40.068592, 26.129078>,  <34.131069, 40.029968, 26.054106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.355762, 40.068592, 26.129078>,  <34.730255, 40.132961, 26.254030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355762, 40.068592, 26.129078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299430, -0.099891, 0.948875,
		-0.183902, 0.981899, 0.045335,
		-0.936227, -0.160925, -0.312380,
		34.074894, 40.020313, 26.035364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296406, 40.311977, 26.771269>,  <34.730255, 40.132961, 26.254030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296406, 40.311977, 26.771269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.996616, 40.145813, 26.565079>,  <33.816742, 40.046116, 26.441364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.996616, 40.145813, 26.565079>,  <34.296406, 40.311977, 26.771269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996616, 40.145813, 26.565079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533199, -0.082752, 0.841933,
		-0.392405, 0.905862, -0.159475,
		-0.749478, -0.415411, -0.515477,
		33.771774, 40.021191, 26.410435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658733, 40.616974, 26.991869>,  <34.296406, 40.311977, 26.771269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658733, 40.616974, 26.991869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.513512, 40.292580, 26.808352>,  <33.426380, 40.097942, 26.698240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.513512, 40.292580, 26.808352>,  <33.658733, 40.616974, 26.991869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513512, 40.292580, 26.808352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604777, -0.169478, 0.778153,
		-0.708828, 0.559978, -0.428937,
		-0.363053, -0.810988, -0.458793,
		33.404594, 40.049282, 26.670713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892368, 40.676140, 26.832243>,  <33.658733, 40.616974, 26.991869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892368, 40.676140, 26.832243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023258, 40.300797, 26.876802>,  <33.101791, 40.075592, 26.903538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023258, 40.300797, 26.876802>,  <32.892368, 40.676140, 26.832243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023258, 40.300797, 26.876802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579039, -0.105952, 0.808386,
		-0.746754, -0.329023, -0.578016,
		0.327220, -0.938359, 0.111397,
		33.121426, 40.019287, 26.910221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251160, 40.393135, 27.182968>,  <32.892368, 40.676140, 26.832243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251160, 40.393135, 27.182968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.520687, 40.098225, 27.202585>,  <32.682404, 39.921280, 27.214355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.520687, 40.098225, 27.202585>,  <32.251160, 40.393135, 27.182968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520687, 40.098225, 27.202585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431101, -0.338356, 0.836461,
		-0.600106, -0.584761, -0.545827,
		0.673814, -0.737272, 0.049042,
		32.722832, 39.877045, 27.217299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835207, 39.742416, 27.167471>,  <32.251160, 40.393135, 27.182968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835207, 39.742416, 27.167471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200516, 39.666050, 27.311409>,  <32.419701, 39.620232, 27.397772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200516, 39.666050, 27.311409>,  <31.835207, 39.742416, 27.167471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200516, 39.666050, 27.311409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402942, -0.553026, 0.729246,
		0.059780, -0.810996, -0.581990,
		0.913271, -0.190914, 0.359844,
		32.474499, 39.608776, 27.419363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534662, 39.332512, 26.497311>,  <31.835207, 39.742416, 27.167471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534662, 39.332512, 26.497311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.150196, 39.388985, 26.402464>,  <30.919516, 39.422867, 26.345556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.150196, 39.388985, 26.402464>,  <31.534662, 39.332512, 26.497311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150196, 39.388985, 26.402464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270835, 0.317666, -0.908701,
		-0.052969, -0.937633, -0.343567,
		-0.961167, 0.141183, -0.237118,
		30.861845, 39.431339, 26.331329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397421, 39.027576, 25.782145>,  <31.534662, 39.332512, 26.497311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397421, 39.027576, 25.782145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129192, 39.319660, 25.834503>,  <30.968256, 39.494911, 25.865919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129192, 39.319660, 25.834503>,  <31.397421, 39.027576, 25.782145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129192, 39.319660, 25.834503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283872, 0.415589, -0.864119,
		-0.685386, -0.542294, -0.485967,
		-0.670569, 0.730208, 0.130896,
		30.928022, 39.538723, 25.873772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150249, 39.036491, 25.208332>,  <31.397421, 39.027576, 25.782145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150249, 39.036491, 25.208332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015104, 39.385021, 25.350677>,  <30.934017, 39.594139, 25.436085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015104, 39.385021, 25.350677>,  <31.150249, 39.036491, 25.208332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015104, 39.385021, 25.350677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103298, 0.410141, -0.906153,
		-0.935510, -0.269395, -0.228578,
		-0.337863, 0.871327, 0.355863,
		30.913746, 39.646420, 25.457436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648098, 39.210922, 24.805037>,  <31.150249, 39.036491, 25.208332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648098, 39.210922, 24.805037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.721249, 39.565731, 24.974625>,  <30.765139, 39.778618, 25.076378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.721249, 39.565731, 24.974625>,  <30.648098, 39.210922, 24.805037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721249, 39.565731, 24.974625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040743, 0.437708, -0.898194,
		-0.982292, 0.146983, 0.116186,
		0.182875, 0.887022, 0.423968,
		30.776112, 39.831837, 25.101814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307493, 39.715855, 24.344070>,  <30.648098, 39.210922, 24.805037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307493, 39.715855, 24.344070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580475, 39.914322, 24.558762>,  <30.744263, 40.033401, 24.687576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580475, 39.914322, 24.558762>,  <30.307493, 39.715855, 24.344070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580475, 39.914322, 24.558762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338913, 0.435803, -0.833795,
		-0.647609, 0.750930, 0.129259,
		0.682453, 0.496165, 0.536730,
		30.785210, 40.063171, 24.719780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299276, 40.345623, 24.045626>,  <30.307493, 39.715855, 24.344070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299276, 40.345623, 24.045626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.645260, 40.338409, 24.246233>,  <30.852850, 40.334080, 24.366598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.645260, 40.338409, 24.246233>,  <30.299276, 40.345623, 24.045626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645260, 40.338409, 24.246233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456071, 0.445231, -0.770564,
		-0.209397, 0.895234, 0.393331,
		0.864958, -0.018033, 0.501520,
		30.904747, 40.333000, 24.396688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577497, 40.956505, 24.008850>,  <30.299276, 40.345623, 24.045626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577497, 40.956505, 24.008850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.926380, 40.775097, 24.082140>,  <31.135710, 40.666252, 24.126114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.926380, 40.775097, 24.082140>,  <30.577497, 40.956505, 24.008850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926380, 40.775097, 24.082140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374153, 0.377317, -0.847137,
		0.315061, 0.807434, 0.498785,
		0.872208, -0.453522, 0.183226,
		31.188042, 40.639042, 24.137108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013454, 41.402477, 23.815863>,  <30.577497, 40.956505, 24.008850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013454, 41.402477, 23.815863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260283, 41.089329, 23.847706>,  <31.408381, 40.901440, 23.866812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260283, 41.089329, 23.847706>,  <31.013454, 41.402477, 23.815863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260283, 41.089329, 23.847706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499626, 0.311627, -0.808246,
		0.607945, 0.538519, 0.583438,
		0.617071, -0.782870, 0.079607,
		31.445404, 40.854469, 23.871588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677891, 41.680420, 23.804634>,  <31.013454, 41.402477, 23.815863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677891, 41.680420, 23.804634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.709949, 41.293804, 23.707170>,  <31.729185, 41.061832, 23.648693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.709949, 41.293804, 23.707170>,  <31.677891, 41.680420, 23.804634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709949, 41.293804, 23.707170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495823, 0.250716, -0.831445,
		0.864717, -0.054174, 0.499329,
		0.080147, -0.966544, -0.243659,
		31.733994, 41.003841, 23.634073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348312, 41.553345, 23.728382>,  <31.677891, 41.680420, 23.804634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348312, 41.553345, 23.728382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166992, 41.261158, 23.524054>,  <32.058201, 41.085846, 23.401457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166992, 41.261158, 23.524054>,  <32.348312, 41.553345, 23.728382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166992, 41.261158, 23.524054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532510, 0.237650, -0.812377,
		0.714810, -0.640267, 0.281254,
		-0.453299, -0.730466, -0.510823,
		32.031002, 41.042019, 23.370806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919647, 41.175133, 23.472832>,  <32.348312, 41.553345, 23.728382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919647, 41.175133, 23.472832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.597191, 41.067970, 23.261791>,  <32.403717, 41.003674, 23.135166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.597191, 41.067970, 23.261791>,  <32.919647, 41.175133, 23.472832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597191, 41.067970, 23.261791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481402, 0.221533, -0.848042,
		0.344076, -0.937630, -0.049617,
		-0.806141, -0.267905, -0.527601,
		32.355347, 40.987598, 23.103512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179527, 40.656071, 23.045374>,  <32.919647, 41.175133, 23.472832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179527, 40.656071, 23.045374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870247, 40.842960, 22.873856>,  <32.684681, 40.955093, 22.770945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870247, 40.842960, 22.873856>,  <33.179527, 40.656071, 23.045374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870247, 40.842960, 22.873856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508419, 0.052555, -0.859505,
		-0.379043, -0.882577, -0.278180,
		-0.773199, 0.467221, -0.428798,
		32.638287, 40.983128, 22.745216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398590, 40.655678, 22.370260>,  <33.179527, 40.656071, 23.045374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398590, 40.655678, 22.370260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.062222, 40.866650, 22.321808>,  <32.860401, 40.993233, 22.292736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.062222, 40.866650, 22.321808>,  <33.398590, 40.655678, 22.370260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062222, 40.866650, 22.321808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346229, 0.352333, -0.869475,
		-0.415908, -0.773098, -0.478895,
		-0.840919, 0.527429, -0.121131,
		32.809944, 41.024879, 22.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161907, 40.512230, 21.620075>,  <33.398590, 40.655678, 22.370260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161907, 40.512230, 21.620075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.040169, 40.861290, 21.772842>,  <32.967125, 41.070724, 21.864502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.040169, 40.861290, 21.772842>,  <33.161907, 40.512230, 21.620075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040169, 40.861290, 21.772842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355104, 0.475975, -0.804580,
		-0.883896, -0.109254, -0.454743,
		-0.304349, 0.872647, 0.381916,
		32.948864, 41.123085, 21.887417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674435, 39.893917, 21.636927>,  <33.161907, 40.512230, 21.620075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674435, 39.893917, 21.636927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.724541, 39.625278, 21.344828>,  <32.754604, 39.464096, 21.169567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.724541, 39.625278, 21.344828>,  <32.674435, 39.893917, 21.636927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724541, 39.625278, 21.344828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321303, -0.723841, 0.610590,
		-0.938655, 0.158145, -0.306459,
		0.125266, -0.671599, -0.730249,
		32.762119, 39.423798, 21.125753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092201, 39.540730, 21.672377>,  <32.674435, 39.893917, 21.636927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092201, 39.540730, 21.672377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.359165, 39.304737, 21.490614>,  <32.519344, 39.163143, 21.381556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.359165, 39.304737, 21.490614>,  <32.092201, 39.540730, 21.672377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359165, 39.304737, 21.490614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293836, -0.769323, 0.567276,
		-0.684267, -0.245085, -0.686813,
		0.667412, -0.589979, -0.454407,
		32.559387, 39.127743, 21.354292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687716, 38.982124, 21.465132>,  <32.092201, 39.540730, 21.672377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687716, 38.982124, 21.465132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.053493, 38.820442, 21.457012>,  <32.272961, 38.723434, 21.452141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.053493, 38.820442, 21.457012>,  <31.687716, 38.982124, 21.465132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053493, 38.820442, 21.457012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355550, -0.826307, 0.436807,
		-0.193332, -0.392219, -0.899326,
		0.914443, -0.404205, -0.020298,
		32.327827, 38.699181, 21.450922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636566, 38.296677, 21.290266>,  <31.687716, 38.982124, 21.465132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636566, 38.296677, 21.290266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.990170, 38.306038, 21.477020>,  <32.202332, 38.311657, 21.589073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.990170, 38.306038, 21.477020>,  <31.636566, 38.296677, 21.290266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990170, 38.306038, 21.477020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277351, -0.777711, 0.564129,
		0.376306, -0.628186, -0.681011,
		0.884008, 0.023406, 0.466885,
		32.255371, 38.313061, 21.617086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974123, 37.585503, 21.297537>,  <31.636566, 38.296677, 21.290266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974123, 37.585503, 21.297537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.132603, 37.762863, 21.619137>,  <32.227692, 37.869278, 21.812098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.132603, 37.762863, 21.619137>,  <31.974123, 37.585503, 21.297537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132603, 37.762863, 21.619137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211419, -0.808075, 0.549833,
		0.893492, -0.387825, -0.226416,
		0.396201, 0.443403, 0.804002,
		32.251465, 37.895885, 21.860338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350872, 36.986752, 21.636650>,  <31.974123, 37.585503, 21.297537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350872, 36.986752, 21.636650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.311493, 37.273251, 21.912996>,  <32.287865, 37.445148, 22.078804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.311493, 37.273251, 21.912996>,  <32.350872, 36.986752, 21.636650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311493, 37.273251, 21.912996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315256, -0.680930, 0.661021,
		0.943886, -0.152721, 0.292840,
		-0.098452, 0.716248, 0.690866,
		32.281956, 37.488125, 22.120256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553482, 36.688438, 22.292736>,  <32.350872, 36.986752, 21.636650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553482, 36.688438, 22.292736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330185, 36.994911, 22.420067>,  <32.196205, 37.178795, 22.496466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330185, 36.994911, 22.420067>,  <32.553482, 36.688438, 22.292736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330185, 36.994911, 22.420067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309691, -0.548373, 0.776774,
		0.769711, 0.335046, 0.543405,
		-0.558244, 0.766179, 0.318328,
		32.162712, 37.224766, 22.515566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346081, 36.939991, 22.251820>,  <32.553482, 36.688438, 22.292736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346081, 36.939991, 22.251820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.650398, 36.700188, 22.152391>,  <33.832989, 36.556305, 22.092735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.650398, 36.700188, 22.152391>,  <33.346081, 36.939991, 22.251820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650398, 36.700188, 22.152391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310637, 0.672658, -0.671592,
		0.569828, 0.433725, 0.697982,
		0.760790, -0.599511, -0.248568,
		33.878635, 36.520336, 22.077822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037586, 37.374962, 22.224129>,  <33.346081, 36.939991, 22.251820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037586, 37.374962, 22.224129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086002, 37.038177, 22.013811>,  <34.115051, 36.836109, 21.887621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086002, 37.038177, 22.013811>,  <34.037586, 37.374962, 22.224129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086002, 37.038177, 22.013811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289173, 0.536622, -0.792727,
		0.949594, -0.056093, 0.308424,
		0.121041, -0.841956, -0.525794,
		34.122314, 36.785591, 21.856073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688698, 37.496277, 21.939091>,  <34.037586, 37.374962, 22.224129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688698, 37.496277, 21.939091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.506149, 37.226974, 21.706387>,  <34.396622, 37.065392, 21.566765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.506149, 37.226974, 21.706387>,  <34.688698, 37.496277, 21.939091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506149, 37.226974, 21.706387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397685, 0.430544, -0.810233,
		0.795972, -0.601125, 0.071258,
		-0.456372, -0.673261, -0.581760,
		34.369236, 37.024998, 21.531858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190739, 37.343742, 21.463131>,  <34.688698, 37.496277, 21.939091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190739, 37.343742, 21.463131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847897, 37.247498, 21.280933>,  <34.642193, 37.189751, 21.171614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847897, 37.247498, 21.280933>,  <35.190739, 37.343742, 21.463131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847897, 37.247498, 21.280933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381047, 0.298899, -0.874907,
		0.346660, -0.923453, -0.164504,
		-0.857106, -0.240612, -0.455496,
		34.590763, 37.175316, 21.144285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405499, 36.896229, 20.880758>,  <35.190739, 37.343742, 21.463131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405499, 36.896229, 20.880758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034721, 37.014553, 20.788437>,  <34.812256, 37.085548, 20.733044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034721, 37.014553, 20.788437>,  <35.405499, 36.896229, 20.880758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034721, 37.014553, 20.788437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273777, 0.112637, -0.955175,
		-0.256552, -0.948583, -0.185394,
		-0.926945, 0.295808, -0.230803,
		34.756638, 37.103294, 20.719196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269005, 36.534805, 20.287464>,  <35.405499, 36.896229, 20.880758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269005, 36.534805, 20.287464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.999306, 36.829357, 20.265087>,  <34.837486, 37.006088, 20.251661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.999306, 36.829357, 20.265087>,  <35.269005, 36.534805, 20.287464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999306, 36.829357, 20.265087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155081, 0.067118, -0.985619,
		-0.722037, -0.673229, -0.159453,
		-0.674250, 0.736382, -0.055944,
		34.797031, 37.050270, 20.248304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772099, 36.376297, 19.731161>,  <35.269005, 36.534805, 20.287464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772099, 36.376297, 19.731161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807575, 36.764484, 19.820890>,  <34.828861, 36.997398, 19.874729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807575, 36.764484, 19.820890>,  <34.772099, 36.376297, 19.731161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807575, 36.764484, 19.820890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529913, 0.144723, -0.835612,
		-0.843401, 0.192986, -0.501429,
		0.088693, 0.970470, 0.224325,
		34.834183, 37.055626, 19.888187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603363, 36.675709, 19.093594>,  <34.772099, 36.376297, 19.731161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603363, 36.675709, 19.093594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774467, 36.980042, 19.288797>,  <34.877129, 37.162640, 19.405920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774467, 36.980042, 19.288797>,  <34.603363, 36.675709, 19.093594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774467, 36.980042, 19.288797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496555, 0.253334, -0.830214,
		-0.755284, 0.597457, -0.269429,
		0.427762, 0.760833, 0.488009,
		34.902798, 37.208290, 19.435200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655499, 37.208626, 18.620457>,  <34.603363, 36.675709, 19.093594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655499, 37.208626, 18.620457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.927906, 37.296497, 18.899872>,  <35.091351, 37.349220, 19.067520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.927906, 37.296497, 18.899872>,  <34.655499, 37.208626, 18.620457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927906, 37.296497, 18.899872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667009, 0.207560, -0.715554,
		-0.302184, 0.953236, -0.005179,
		0.681016, 0.219683, 0.698538,
		35.132210, 37.362404, 19.109434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.643433, 29.224152, 32.704224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895330, 29.480154, 32.880322>,  <32.046471, 29.633757, 32.985981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895330, 29.480154, 32.880322>,  <31.643433, 29.224152, 32.704224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895330, 29.480154, 32.880322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152988, 0.453451, -0.878053,
		-0.761589, 0.620299, 0.187644,
		0.629743, 0.640008, 0.440242,
		32.084255, 29.672157, 33.012394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400579, 29.856485, 32.639591>,  <31.643433, 29.224152, 32.704224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400579, 29.856485, 32.639591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792570, 29.925608, 32.679161>,  <32.027763, 29.967081, 32.702904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792570, 29.925608, 32.679161>,  <31.400579, 29.856485, 32.639591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792570, 29.925608, 32.679161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026277, 0.604700, -0.796020,
		-0.197379, 0.777480, 0.597132,
		0.979975, 0.172808, 0.098925,
		32.086563, 29.977449, 32.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473824, 30.664391, 32.585888>,  <31.400579, 29.856485, 32.639591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473824, 30.664391, 32.585888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835348, 30.506401, 32.520008>,  <32.052261, 30.411608, 32.480480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835348, 30.506401, 32.520008>,  <31.473824, 30.664391, 32.585888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835348, 30.506401, 32.520008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101818, 0.572292, -0.813704,
		0.415645, 0.718664, 0.557459,
		0.903810, -0.394972, -0.164697,
		32.106491, 30.387909, 32.470600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807247, 31.156250, 32.141026>,  <31.473824, 30.664391, 32.585888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807247, 31.156250, 32.141026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060276, 30.853529, 32.075180>,  <32.212093, 30.671896, 32.035671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060276, 30.853529, 32.075180>,  <31.807247, 31.156250, 32.141026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060276, 30.853529, 32.075180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086582, 0.280310, -0.955997,
		0.769645, 0.590486, 0.242843,
		0.632574, -0.756804, -0.164614,
		32.250050, 30.626488, 32.025795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356983, 31.436705, 31.812716>,  <31.807247, 31.156250, 32.141026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356983, 31.436705, 31.812716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402916, 31.048971, 31.725811>,  <32.430477, 30.816330, 31.673668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402916, 31.048971, 31.725811>,  <32.356983, 31.436705, 31.812716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402916, 31.048971, 31.725811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103191, 0.229163, -0.967903,
		0.988011, 0.088728, 0.126342,
		0.114833, -0.969335, -0.217260,
		32.437366, 30.758171, 31.660633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998024, 31.386433, 31.377577>,  <32.356983, 31.436705, 31.812716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998024, 31.386433, 31.377577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755203, 31.073870, 31.319754>,  <32.609512, 30.886332, 31.285059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755203, 31.073870, 31.319754>,  <32.998024, 31.386433, 31.377577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755203, 31.073870, 31.319754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058596, 0.137402, -0.988781,
		0.792502, -0.608708, -0.037623,
		-0.607048, -0.781406, -0.144559,
		32.573090, 30.839447, 31.276386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255527, 31.048365, 30.803827>,  <32.998024, 31.386433, 31.377577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255527, 31.048365, 30.803827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875092, 30.925314, 30.815128>,  <32.646832, 30.851484, 30.821909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875092, 30.925314, 30.815128>,  <33.255527, 31.048365, 30.803827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875092, 30.925314, 30.815128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122889, 0.292858, -0.948226,
		0.283390, -0.905330, -0.316336,
		-0.951099, -0.307592, 0.028262,
		32.589764, 30.833027, 30.823605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173294, 30.657457, 30.225285>,  <33.255527, 31.048365, 30.803827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173294, 30.657457, 30.225285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796444, 30.723446, 30.342030>,  <32.570335, 30.763039, 30.412077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796444, 30.723446, 30.342030>,  <33.173294, 30.657457, 30.225285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796444, 30.723446, 30.342030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216314, 0.365996, -0.905127,
		-0.256142, -0.915877, -0.309128,
		-0.942125, 0.164973, 0.291864,
		32.513805, 30.772938, 30.429588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636448, 30.445452, 29.749344>,  <33.173294, 30.657457, 30.225285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636448, 30.445452, 29.749344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396572, 30.704538, 29.937317>,  <32.252647, 30.859989, 30.050100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396572, 30.704538, 29.937317>,  <32.636448, 30.445452, 29.749344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396572, 30.704538, 29.937317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249308, 0.406794, -0.878842,
		-0.760404, -0.644193, -0.082471,
		-0.599692, 0.647715, 0.469931,
		32.216663, 30.898853, 30.078297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008549, 30.490120, 29.335890>,  <32.636448, 30.445452, 29.749344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008549, 30.490120, 29.335890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011314, 30.823538, 29.556852>,  <32.012974, 31.023588, 29.689430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011314, 30.823538, 29.556852>,  <32.008549, 30.490120, 29.335890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011314, 30.823538, 29.556852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365204, 0.516368, -0.774590,
		-0.930902, -0.196383, 0.307987,
		0.006919, 0.833545, 0.552408,
		32.013390, 31.073601, 29.722574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394756, 30.667540, 29.323229>,  <32.008549, 30.490120, 29.335890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394756, 30.667540, 29.323229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607182, 30.994978, 29.410749>,  <31.734636, 31.191441, 29.463263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607182, 30.994978, 29.410749>,  <31.394756, 30.667540, 29.323229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607182, 30.994978, 29.410749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174564, 0.358382, -0.917109,
		-0.829156, 0.448847, 0.333220,
		0.531062, 0.818596, 0.218802,
		31.766500, 31.240557, 29.476391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987694, 31.226154, 29.146749>,  <31.394756, 30.667540, 29.323229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987694, 31.226154, 29.146749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355671, 31.381653, 29.167063>,  <31.576458, 31.474953, 29.179251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355671, 31.381653, 29.167063>,  <30.987694, 31.226154, 29.146749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355671, 31.381653, 29.167063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113947, 0.389065, -0.914136,
		-0.375126, 0.835167, 0.402215,
		0.919944, 0.388748, 0.050784,
		31.631655, 31.498278, 29.182299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926273, 31.167494, 29.874353>,  <30.987694, 31.226154, 29.146749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926273, 31.167494, 29.874353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.584415, 31.371056, 29.833183>,  <30.379301, 31.493193, 29.808481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.584415, 31.371056, 29.833183>,  <30.926273, 31.167494, 29.874353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584415, 31.371056, 29.833183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218979, -0.173557, 0.960170,
		0.470773, 0.843145, 0.259770,
		-0.854647, 0.508906, -0.102925,
		30.328022, 31.523727, 29.802305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663097, 30.944530, 30.520277>,  <30.926273, 31.167494, 29.874353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663097, 30.944530, 30.520277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.404795, 31.213701, 30.375961>,  <30.249813, 31.375204, 30.289371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.404795, 31.213701, 30.375961>,  <30.663097, 30.944530, 30.520277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404795, 31.213701, 30.375961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633001, -0.207583, 0.745801,
		0.426975, 0.709985, 0.560012,
		-0.645756, 0.672927, -0.360789,
		30.211067, 31.415579, 30.267725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423956, 31.277304, 31.096914>,  <30.663097, 30.944530, 30.520277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423956, 31.277304, 31.096914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.155062, 31.369837, 30.815609>,  <29.993725, 31.425358, 30.646826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.155062, 31.369837, 30.815609>,  <30.423956, 31.277304, 31.096914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155062, 31.369837, 30.815609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739753, -0.172191, 0.650473,
		0.029381, 0.957515, 0.286884,
		-0.672236, 0.231335, -0.703265,
		29.953390, 31.439238, 30.604630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924252, 31.708145, 31.441395>,  <30.423956, 31.277304, 31.096914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924252, 31.708145, 31.441395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.724024, 31.606455, 31.110384>,  <29.603888, 31.545441, 30.911777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.724024, 31.606455, 31.110384>,  <29.924252, 31.708145, 31.441395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724024, 31.606455, 31.110384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805002, -0.214927, 0.552971,
		-0.318438, 0.942961, -0.097067,
		-0.500568, -0.254226, -0.827527,
		29.573853, 31.530188, 30.862125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365408, 32.100700, 31.363138>,  <29.924252, 31.708145, 31.441395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365408, 32.100700, 31.363138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.249159, 31.774433, 31.163052>,  <29.179409, 31.578672, 31.042999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.249159, 31.774433, 31.163052>,  <29.365408, 32.100700, 31.363138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249159, 31.774433, 31.163052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855821, -0.012206, 0.517128,
		-0.427913, 0.578385, -0.694522,
		-0.290622, -0.815672, -0.500218,
		29.161972, 31.529732, 31.012987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666107, 32.160221, 31.283432>,  <29.365408, 32.100700, 31.363138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666107, 32.160221, 31.283432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.748730, 31.771116, 31.241365>,  <28.798304, 31.537653, 31.216125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.748730, 31.771116, 31.241365>,  <28.666107, 32.160221, 31.283432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748730, 31.771116, 31.241365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823928, -0.230903, 0.517520,
		-0.527709, -0.020246, -0.849184,
		0.206557, -0.972766, -0.105168,
		28.810698, 31.479286, 31.209814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070011, 31.943491, 31.201262>,  <28.666107, 32.160221, 31.283432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070011, 31.943491, 31.201262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.285770, 31.621078, 31.298717>,  <28.415226, 31.427631, 31.357191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.285770, 31.621078, 31.298717>,  <28.070011, 31.943491, 31.201262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285770, 31.621078, 31.298717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769081, -0.353771, 0.532317,
		-0.342862, -0.474525, -0.810723,
		0.539408, -0.806022, 0.243654,
		28.447590, 31.379269, 31.371809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533697, 31.259254, 31.136292>,  <28.070011, 31.943491, 31.201262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533697, 31.259254, 31.136292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.854874, 31.170277, 31.357489>,  <28.047579, 31.116890, 31.490208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.854874, 31.170277, 31.357489>,  <27.533697, 31.259254, 31.136292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854874, 31.170277, 31.357489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595306, -0.252726, 0.762719,
		-0.029905, -0.941620, -0.335346,
		0.802942, -0.222442, 0.552995,
		28.095757, 31.103544, 31.523388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344381, 30.601528, 31.470642>,  <27.533697, 31.259254, 31.136292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344381, 30.601528, 31.470642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.646252, 30.751812, 31.685793>,  <27.827374, 30.841982, 31.814882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.646252, 30.751812, 31.685793>,  <27.344381, 30.601528, 31.470642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646252, 30.751812, 31.685793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536834, -0.117714, 0.835436,
		0.377196, -0.919231, 0.112858,
		0.754674, 0.375709, 0.537876,
		27.872654, 30.864525, 31.847157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543821, 30.117546, 31.998373>,  <27.344381, 30.601528, 31.470642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543821, 30.117546, 31.998373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.677765, 30.462231, 32.150856>,  <27.758131, 30.669043, 32.242348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.677765, 30.462231, 32.150856>,  <27.543821, 30.117546, 31.998373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677765, 30.462231, 32.150856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612328, -0.108495, 0.783124,
		0.716188, -0.495660, 0.491321,
		0.334858, 0.861714, 0.381209,
		27.778223, 30.720745, 32.265221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783539, 30.000389, 32.777962>,  <27.543821, 30.117546, 31.998373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783539, 30.000389, 32.777962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.687965, 30.383476, 32.713848>,  <27.630621, 30.613329, 32.675381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.687965, 30.383476, 32.713848>,  <27.783539, 30.000389, 32.777962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687965, 30.383476, 32.713848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580737, -0.008645, 0.814046,
		0.778239, 0.287586, 0.558246,
		-0.238934, 0.957716, -0.160284,
		27.616285, 30.670792, 32.665764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697342, 30.212183, 33.444809>,  <27.783539, 30.000389, 32.777962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697342, 30.212183, 33.444809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.525820, 30.489971, 33.213696>,  <27.422907, 30.656645, 33.075027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.525820, 30.489971, 33.213696>,  <27.697342, 30.212183, 33.444809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525820, 30.489971, 33.213696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694878, 0.155151, 0.702191,
		0.577296, 0.702593, 0.416043,
		-0.428805, 0.694472, -0.577785,
		27.397179, 30.698313, 33.040359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600140, 30.713787, 33.893948>,  <27.697342, 30.212183, 33.444809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600140, 30.713787, 33.893948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.355145, 30.794521, 33.588238>,  <27.208147, 30.842962, 33.404812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.355145, 30.794521, 33.588238>,  <27.600140, 30.713787, 33.893948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355145, 30.794521, 33.588238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743715, 0.180486, 0.643672,
		0.267857, 0.962646, 0.039563,
		-0.612488, 0.201835, -0.764278,
		27.171398, 30.855072, 33.358955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240158, 31.389118, 33.975925>,  <27.600140, 30.713787, 33.893948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240158, 31.389118, 33.975925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.981041, 31.186653, 33.748184>,  <26.825571, 31.065174, 33.611538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.981041, 31.186653, 33.748184>,  <27.240158, 31.389118, 33.975925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981041, 31.186653, 33.748184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752897, 0.311349, 0.579834,
		-0.116223, 0.804276, -0.582779,
		-0.647794, -0.506163, -0.569352,
		26.786703, 31.034803, 33.577377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789358, 31.936888, 33.929909>,  <27.240158, 31.389118, 33.975925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789358, 31.936888, 33.929909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.823351, 32.195179, 34.233437>,  <27.843746, 32.350155, 34.415554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.823351, 32.195179, 34.233437>,  <27.789358, 31.936888, 33.929909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823351, 32.195179, 34.233437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275399, 0.716686, -0.640716,
		-0.957566, 0.263430, -0.116927,
		0.084984, 0.645729, 0.758823,
		27.848846, 32.388897, 34.461082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263416, 32.480247, 33.982800>,  <27.789358, 31.936888, 33.929909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263416, 32.480247, 33.982800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.621117, 32.636272, 34.070587>,  <27.835737, 32.729889, 34.123260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.621117, 32.636272, 34.070587>,  <27.263416, 32.480247, 33.982800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621117, 32.636272, 34.070587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115459, 0.674816, -0.728898,
		-0.432416, 0.626478, 0.648491,
		0.894251, 0.390062, 0.219469,
		27.889393, 32.753292, 34.136429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192442, 33.263504, 34.144295>,  <27.263416, 32.480247, 33.982800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192442, 33.263504, 34.144295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.553095, 33.170589, 33.998360>,  <27.769487, 33.114841, 33.910801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.553095, 33.170589, 33.998360>,  <27.192442, 33.263504, 34.144295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553095, 33.170589, 33.998360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044220, 0.888626, -0.456497,
		0.430238, 0.395459, 0.811485,
		0.901632, -0.232286, -0.364833,
		27.823584, 33.100903, 33.888908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485781, 33.902313, 34.119450>,  <27.192442, 33.263504, 34.144295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485781, 33.902313, 34.119450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.736834, 33.682575, 33.898796>,  <27.887465, 33.550732, 33.766403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.736834, 33.682575, 33.898796>,  <27.485781, 33.902313, 34.119450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736834, 33.682575, 33.898796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013044, 0.715891, -0.698090,
		0.778401, 0.430948, 0.456481,
		0.627631, -0.549349, -0.551629,
		27.925123, 33.517769, 33.733307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925812, 34.324558, 34.012344>,  <27.485781, 33.902313, 34.119450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925812, 34.324558, 34.012344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.949245, 34.050976, 33.721478>,  <27.963306, 33.886826, 33.546959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.949245, 34.050976, 33.721478>,  <27.925812, 34.324558, 34.012344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949245, 34.050976, 33.721478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055856, 0.729520, -0.681675,
		0.996719, -0.000681, 0.080941,
		0.058584, -0.683959, -0.727164,
		27.966820, 33.845787, 33.503326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558428, 34.476254, 33.573807>,  <27.925812, 34.324558, 34.012344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558428, 34.476254, 33.573807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.320539, 34.250889, 33.344418>,  <28.177807, 34.115669, 33.206783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.320539, 34.250889, 33.344418>,  <28.558428, 34.476254, 33.573807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320539, 34.250889, 33.344418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085478, 0.664973, -0.741960,
		0.799376, -0.490278, -0.347313,
		-0.594720, -0.563417, -0.573471,
		28.142122, 34.081863, 33.172375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953669, 34.209869, 33.089348>,  <28.558428, 34.476254, 33.573807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953669, 34.209869, 33.089348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.584293, 34.200237, 32.936150>,  <28.362669, 34.194458, 32.844231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.584293, 34.200237, 32.936150>,  <28.953669, 34.209869, 33.089348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584293, 34.200237, 32.936150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313195, 0.529428, -0.788425,
		0.221751, -0.848013, -0.481353,
		-0.923437, -0.024076, -0.382995,
		28.307262, 34.193016, 32.821251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031620, 33.932121, 32.374306>,  <28.953669, 34.209869, 33.089348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031620, 33.932121, 32.374306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.682791, 34.127033, 32.392376>,  <28.473494, 34.243980, 32.403217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.682791, 34.127033, 32.392376>,  <29.031620, 33.932121, 32.374306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682791, 34.127033, 32.392376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213018, 0.461088, -0.861406,
		-0.440578, -0.741588, -0.505904,
		-0.872075, 0.487283, 0.045173,
		28.421167, 34.273220, 32.405930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817621, 33.872452, 31.717621>,  <29.031620, 33.932121, 32.374306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817621, 33.872452, 31.717621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.586979, 34.163841, 31.865595>,  <28.448593, 34.338676, 31.954380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.586979, 34.163841, 31.865595>,  <28.817621, 33.872452, 31.717621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586979, 34.163841, 31.865595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166950, 0.548284, -0.819459,
		-0.799785, -0.410742, -0.437761,
		-0.576603, 0.728475, 0.369936,
		28.413998, 34.382385, 31.976576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330330, 33.961071, 31.227249>,  <28.817621, 33.872452, 31.717621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330330, 33.961071, 31.227249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.301069, 34.297291, 31.441957>,  <28.283512, 34.499023, 31.570782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.301069, 34.297291, 31.441957>,  <28.330330, 33.961071, 31.227249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301069, 34.297291, 31.441957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175761, 0.518922, -0.836557,
		-0.981711, -0.155539, 0.109776,
		-0.073152, 0.840552, 0.536769,
		28.279123, 34.549458, 31.602989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831757, 34.374844, 30.918911>,  <28.330330, 33.961071, 31.227249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831757, 34.374844, 30.918911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980604, 34.661934, 31.154333>,  <28.069912, 34.834187, 31.295588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980604, 34.661934, 31.154333>,  <27.831757, 34.374844, 30.918911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980604, 34.661934, 31.154333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065896, 0.652923, -0.754553,
		-0.925843, 0.242000, 0.290260,
		0.372120, 0.717724, 0.588557,
		28.092239, 34.877251, 31.330900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544367, 35.041271, 30.662514>,  <27.831757, 34.374844, 30.918911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544367, 35.041271, 30.662514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.868694, 35.137630, 30.875885>,  <28.063292, 35.195446, 31.003908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.868694, 35.137630, 30.875885>,  <27.544367, 35.041271, 30.662514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868694, 35.137630, 30.875885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155636, 0.789826, -0.593256,
		-0.564226, 0.564043, 0.602914,
		0.810818, 0.240895, 0.533426,
		28.111940, 35.209900, 31.035913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419640, 35.760490, 30.880886>,  <27.544367, 35.041271, 30.662514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419640, 35.760490, 30.880886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.809778, 35.672333, 30.876434>,  <28.043861, 35.619438, 30.873762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.809778, 35.672333, 30.876434>,  <27.419640, 35.760490, 30.880886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809778, 35.672333, 30.876434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149830, 0.698409, -0.699840,
		0.162016, 0.680919, 0.714213,
		0.975347, -0.220395, -0.011131,
		28.102383, 35.606213, 30.873095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781971, 36.406052, 30.895132>,  <27.419640, 35.760490, 30.880886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781971, 36.406052, 30.895132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.041800, 36.139881, 30.748022>,  <28.197697, 35.980179, 30.659756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.041800, 36.139881, 30.748022>,  <27.781971, 36.406052, 30.895132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041800, 36.139881, 30.748022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236938, 0.636808, -0.733714,
		0.722438, 0.389460, 0.571318,
		0.649572, -0.665430, -0.367777,
		28.236671, 35.940250, 30.637690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338942, 36.880642, 30.665791>,  <27.781971, 36.406052, 30.895132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338942, 36.880642, 30.665791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.424440, 36.535580, 30.482426>,  <28.475739, 36.328541, 30.372408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.424440, 36.535580, 30.482426>,  <28.338942, 36.880642, 30.665791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424440, 36.535580, 30.482426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268911, 0.503083, -0.821337,
		0.939148, 0.052286, 0.339509,
		0.213746, -0.862655, -0.458410,
		28.488564, 36.276783, 30.344902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987862, 36.905811, 30.389971>,  <28.338942, 36.880642, 30.665791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987862, 36.905811, 30.389971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.818996, 36.626507, 30.158730>,  <28.717678, 36.458923, 30.019985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.818996, 36.626507, 30.158730>,  <28.987862, 36.905811, 30.389971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818996, 36.626507, 30.158730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414118, 0.418737, -0.808187,
		0.806402, -0.580590, 0.112389,
		-0.422164, -0.698265, -0.578103,
		28.692347, 36.417027, 29.985298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447851, 36.729374, 29.955507>,  <28.987862, 36.905811, 30.389971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447851, 36.729374, 29.955507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118002, 36.602398, 29.768221>,  <28.920092, 36.526211, 29.655849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118002, 36.602398, 29.768221>,  <29.447851, 36.729374, 29.955507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118002, 36.602398, 29.768221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357219, 0.349575, -0.866136,
		0.438625, -0.881492, -0.174871,
		-0.824623, -0.317442, -0.468218,
		28.870615, 36.507164, 29.627756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659973, 36.262127, 29.286163>,  <29.447851, 36.729374, 29.955507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659973, 36.262127, 29.286163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.301363, 36.434509, 29.245146>,  <29.086197, 36.537937, 29.220535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.301363, 36.434509, 29.245146>,  <29.659973, 36.262127, 29.286163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301363, 36.434509, 29.245146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290958, 0.398304, -0.869883,
		-0.334039, -0.809710, -0.482481,
		-0.896528, 0.430957, -0.102542,
		29.032404, 36.563797, 29.214384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496017, 36.081852, 28.567614>,  <29.659973, 36.262127, 29.286163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496017, 36.081852, 28.567614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260464, 36.384098, 28.682337>,  <29.119131, 36.565445, 28.751171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260464, 36.384098, 28.682337>,  <29.496017, 36.081852, 28.567614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260464, 36.384098, 28.682337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186430, 0.472289, -0.861503,
		-0.786422, -0.453856, -0.418993,
		-0.588884, 0.755617, 0.286806,
		29.083799, 36.610783, 28.768379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350866, 36.355083, 28.036270>,  <29.496017, 36.081852, 28.567614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350866, 36.355083, 28.036270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.194050, 36.646751, 28.260633>,  <29.099960, 36.821751, 28.395250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.194050, 36.646751, 28.260633>,  <29.350866, 36.355083, 28.036270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194050, 36.646751, 28.260633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245368, 0.670510, -0.700150,
		-0.886621, -0.136861, -0.441783,
		-0.392043, 0.729167, 0.560907,
		29.076437, 36.865501, 28.428905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012844, 36.770905, 27.600653>,  <29.350866, 36.355083, 28.036270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012844, 36.770905, 27.600653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075569, 37.007687, 27.916882>,  <29.113205, 37.149754, 28.106619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075569, 37.007687, 27.916882>,  <29.012844, 36.770905, 27.600653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075569, 37.007687, 27.916882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219416, 0.759588, -0.612276,
		-0.962946, 0.269477, -0.010770,
		0.156814, 0.591953, 0.790570,
		29.122614, 37.185272, 28.154053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571539, 37.380817, 27.534496>,  <29.012844, 36.770905, 27.600653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571539, 37.380817, 27.534496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.883745, 37.483959, 27.762287>,  <29.071070, 37.545845, 27.898962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.883745, 37.483959, 27.762287>,  <28.571539, 37.380817, 27.534496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883745, 37.483959, 27.762287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205086, 0.754927, -0.622916,
		-0.590536, 0.602988, 0.536351,
		0.780517, 0.257857, 0.569476,
		29.117901, 37.561317, 27.933130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625513, 37.955315, 27.373917>,  <28.571539, 37.380817, 27.534496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625513, 37.955315, 27.373917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.970879, 37.951202, 27.575672>,  <29.178099, 37.948734, 27.696726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.970879, 37.951202, 27.575672>,  <28.625513, 37.955315, 27.373917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970879, 37.951202, 27.575672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272697, 0.850653, -0.449473,
		-0.424440, 0.525627, 0.737270,
		0.863416, -0.010276, 0.504388,
		29.229904, 37.948120, 27.726988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669825, 38.643383, 27.651747>,  <28.625513, 37.955315, 27.373917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669825, 38.643383, 27.651747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.036499, 38.485119, 27.629322>,  <29.256504, 38.390160, 27.615868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.036499, 38.485119, 27.629322>,  <28.669825, 38.643383, 27.651747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036499, 38.485119, 27.629322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245633, 0.668556, -0.701924,
		0.315203, 0.629673, 0.710042,
		0.916685, -0.395659, -0.056062,
		29.311504, 38.366421, 27.612503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062674, 39.248829, 27.666080>,  <28.669825, 38.643383, 27.651747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062674, 39.248829, 27.666080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283150, 38.959728, 27.499311>,  <29.415436, 38.786270, 27.399250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283150, 38.959728, 27.499311>,  <29.062674, 39.248829, 27.666080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283150, 38.959728, 27.499311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351808, 0.654403, -0.669319,
		0.756585, 0.222244, 0.614969,
		0.551190, -0.722747, -0.416924,
		29.448507, 38.742905, 27.374233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759764, 39.506229, 27.719009>,  <29.062674, 39.248829, 27.666080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759764, 39.506229, 27.719009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.802225, 39.211388, 27.452055>,  <29.827702, 39.034481, 27.291883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.802225, 39.211388, 27.452055>,  <29.759764, 39.506229, 27.719009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802225, 39.211388, 27.452055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557626, 0.599834, -0.573806,
		0.823277, -0.311239, 0.474705,
		0.106154, -0.737109, -0.667384,
		29.834070, 38.990253, 27.251841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491203, 39.412167, 27.661898>,  <29.759764, 39.506229, 27.719009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491203, 39.412167, 27.661898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356962, 39.250832, 27.321383>,  <30.276419, 39.154030, 27.117073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356962, 39.250832, 27.321383>,  <30.491203, 39.412167, 27.661898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356962, 39.250832, 27.321383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689319, 0.510777, -0.513756,
		0.642037, -0.759225, 0.106614,
		-0.335601, -0.403342, -0.851286,
		30.256283, 39.129829, 27.065996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106247, 39.443272, 27.192316>,  <30.491203, 39.412167, 27.661898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106247, 39.443272, 27.192316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.806993, 39.390972, 26.932098>,  <30.627441, 39.359592, 26.775969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.806993, 39.390972, 26.932098>,  <31.106247, 39.443272, 27.192316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806993, 39.390972, 26.932098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542403, 0.444245, -0.713054,
		0.382227, -0.886314, -0.261438,
		-0.748132, -0.130744, -0.650542,
		30.582554, 39.351749, 26.736937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912102, 39.034096, 27.349514>,  <31.106247, 39.443272, 27.192316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912102, 39.034096, 27.349514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188206, 39.236984, 27.555920>,  <32.353867, 39.358719, 27.679764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188206, 39.236984, 27.555920>,  <31.912102, 39.034096, 27.349514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188206, 39.236984, 27.555920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240932, -0.511341, 0.824914,
		0.682273, -0.693727, -0.230752,
		0.690258, 0.507221, 0.516015,
		32.395283, 39.389149, 27.710724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230328, 38.433121, 27.765490>,  <31.912102, 39.034096, 27.349514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230328, 38.433121, 27.765490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.340107, 38.766777, 27.956860>,  <32.405975, 38.966969, 28.071682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.340107, 38.766777, 27.956860>,  <32.230328, 38.433121, 27.765490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340107, 38.766777, 27.956860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170747, -0.447351, 0.877908,
		0.946320, -0.322633, 0.019650,
		0.274452, 0.834137, 0.478426,
		32.422443, 39.017017, 28.100388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567760, 38.135727, 28.249304>,  <32.230328, 38.433121, 27.765490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567760, 38.135727, 28.249304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524780, 38.510235, 28.383087>,  <32.498993, 38.734940, 28.463356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524780, 38.510235, 28.383087>,  <32.567760, 38.135727, 28.249304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524780, 38.510235, 28.383087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042096, -0.340387, 0.939342,
		0.993319, 0.086850, 0.075987,
		-0.107446, 0.936266, 0.334457,
		32.492546, 38.791115, 28.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950188, 38.135601, 28.890196>,  <32.567760, 38.135727, 28.249304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950188, 38.135601, 28.890196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689827, 38.439091, 28.900568>,  <32.533611, 38.621185, 28.906792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689827, 38.439091, 28.900568>,  <32.950188, 38.135601, 28.890196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689827, 38.439091, 28.900568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301583, -0.289768, 0.908340,
		0.696689, 0.583420, 0.417427,
		-0.650900, 0.758720, 0.025929,
		32.494556, 38.666706, 28.908346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048775, 38.389267, 29.563253>,  <32.950188, 38.135601, 28.890196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048775, 38.389267, 29.563253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684483, 38.501812, 29.442316>,  <32.465908, 38.569340, 29.369753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684483, 38.501812, 29.442316>,  <33.048775, 38.389267, 29.563253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684483, 38.501812, 29.442316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411651, -0.559054, 0.719724,
		0.033479, 0.779931, 0.624970,
		-0.910726, 0.281365, -0.302343,
		32.411266, 38.586220, 29.351614>
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
