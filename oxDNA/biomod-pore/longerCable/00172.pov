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
	<24.048704, 34.797081, 35.191978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.160603, 34.986877, 34.858128>,  <24.227741, 35.100754, 34.657818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.160603, 34.986877, 34.858128>,  <24.048704, 34.797081, 35.191978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.160603, 34.986877, 34.858128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900175, -0.431889, 0.056187,
		-0.333807, -0.767029, -0.547941,
		0.279747, 0.474487, -0.834628,
		24.244526, 35.129223, 34.607738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743963, 34.646629, 35.131702>,  <24.048704, 34.797081, 35.191978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743963, 34.646629, 35.131702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707882, 34.891495, 34.817474>,  <24.686234, 35.038414, 34.628937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707882, 34.891495, 34.817474>,  <24.743963, 34.646629, 35.131702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707882, 34.891495, 34.817474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935638, -0.218179, -0.277451,
		-0.341240, -0.760035, -0.553085,
		-0.090201, 0.612165, -0.785569,
		24.680822, 35.075146, 34.581802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821983, 34.341908, 34.362011>,  <24.743963, 34.646629, 35.131702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821983, 34.341908, 34.362011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979654, 34.702351, 34.434261>,  <25.074257, 34.918617, 34.477612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979654, 34.702351, 34.434261>,  <24.821983, 34.341908, 34.362011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979654, 34.702351, 34.434261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917871, -0.395886, -0.028067,
		0.046217, 0.176856, -0.983151,
		0.394179, 0.901108, 0.180627,
		25.097908, 34.972683, 34.488449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457880, 34.411839, 33.990711>,  <24.821983, 34.341908, 34.362011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457880, 34.411839, 33.990711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491831, 34.711521, 34.253460>,  <25.512201, 34.891331, 34.411110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491831, 34.711521, 34.253460>,  <25.457880, 34.411839, 33.990711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491831, 34.711521, 34.253460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975754, -0.195978, 0.097448,
		0.201741, 0.632677, -0.747676,
		0.084875, 0.749208, 0.656875,
		25.517294, 34.936283, 34.450523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018076, 34.623749, 33.781780>,  <25.457880, 34.411839, 33.990711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018076, 34.623749, 33.781780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954870, 34.805553, 34.132423>,  <25.916946, 34.914639, 34.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954870, 34.805553, 34.132423>,  <26.018076, 34.623749, 33.781780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954870, 34.805553, 34.132423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987187, 0.092670, 0.129899,
		-0.022194, 0.885905, -0.463335,
		-0.158015, 0.454515, 0.876611,
		25.907465, 34.941910, 34.395409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353348, 35.297565, 33.868134>,  <26.018076, 34.623749, 33.781780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353348, 35.297565, 33.868134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686132, 35.284904, 34.089706>,  <26.885803, 35.277309, 34.222649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686132, 35.284904, 34.089706>,  <26.353348, 35.297565, 33.868134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686132, 35.284904, 34.089706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039688, 0.999209, -0.002512,
		-0.553414, 0.024074, 0.832558,
		0.831960, -0.031652, 0.553932,
		26.935720, 35.275410, 34.255886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210608, 35.770561, 34.452774>,  <26.353348, 35.297565, 33.868134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210608, 35.770561, 34.452774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600416, 35.751831, 34.365028>,  <26.834301, 35.740593, 34.312382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600416, 35.751831, 34.365028>,  <26.210608, 35.770561, 34.452774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600416, 35.751831, 34.365028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052292, 0.998448, 0.019179,
		0.218123, -0.030162, 0.975455,
		0.974519, -0.046825, -0.219361,
		26.892773, 35.737785, 34.299221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497290, 36.150352, 34.918606>,  <26.210608, 35.770561, 34.452774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497290, 36.150352, 34.918606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766058, 36.147301, 34.622372>,  <26.927319, 36.145470, 34.444630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766058, 36.147301, 34.622372>,  <26.497290, 36.150352, 34.918606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766058, 36.147301, 34.622372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270885, 0.933194, 0.236156,
		0.689308, -0.359291, 0.629098,
		0.671919, -0.007629, -0.740585,
		26.967634, 36.145012, 34.400196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052597, 36.397327, 35.204746>,  <26.497290, 36.150352, 34.918606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052597, 36.397327, 35.204746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084778, 36.464050, 34.811665>,  <27.104086, 36.504082, 34.575817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084778, 36.464050, 34.811665>,  <27.052597, 36.397327, 35.204746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084778, 36.464050, 34.811665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032875, 0.984917, 0.169872,
		0.996216, -0.045972, 0.073754,
		0.080451, 0.166805, -0.982702,
		27.108913, 36.514091, 34.516853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615358, 36.886192, 35.067341>,  <27.052597, 36.397327, 35.204746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615358, 36.886192, 35.067341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408165, 36.922291, 34.727093>,  <27.283850, 36.943951, 34.522945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408165, 36.922291, 34.727093>,  <27.615358, 36.886192, 35.067341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408165, 36.922291, 34.727093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084474, 0.994955, 0.054118,
		0.851210, -0.043823, -0.522992,
		-0.517982, 0.090245, -0.850618,
		27.252769, 36.949364, 34.471909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977226, 37.386982, 34.652576>,  <27.615358, 36.886192, 35.067341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977226, 37.386982, 34.652576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596680, 37.382385, 34.529438>,  <27.368351, 37.379627, 34.455555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596680, 37.382385, 34.529438>,  <27.977226, 37.386982, 34.652576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596680, 37.382385, 34.529438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002247, 0.999536, -0.030371,
		0.308050, -0.028203, -0.950952,
		-0.951367, -0.011493, -0.307844,
		27.311270, 37.378937, 34.437084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985279, 37.810471, 34.162548>,  <27.977226, 37.386982, 34.652576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985279, 37.810471, 34.162548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598028, 37.793285, 34.261246>,  <27.365677, 37.782974, 34.320465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598028, 37.793285, 34.261246>,  <27.985279, 37.810471, 34.162548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598028, 37.793285, 34.261246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000816, 0.984633, 0.174635,
		-0.250458, 0.169270, -0.953215,
		-0.968127, -0.042961, 0.246747,
		27.307590, 37.780396, 34.335270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568180, 38.052937, 34.704094>,  <27.985279, 37.810471, 34.162548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568180, 38.052937, 34.704094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502810, 38.047428, 35.098679>,  <27.463587, 38.044125, 35.335430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502810, 38.047428, 35.098679>,  <27.568180, 38.052937, 34.704094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502810, 38.047428, 35.098679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730534, 0.670313, 0.130386,
		-0.663032, 0.741951, -0.099486,
		-0.163427, -0.013772, 0.986459,
		27.453781, 38.043297, 35.394615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091854, 38.368122, 35.275761>,  <27.568180, 38.052937, 34.704094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091854, 38.368122, 35.275761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874077, 38.451305, 34.950718>,  <26.743410, 38.501217, 34.755692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874077, 38.451305, 34.950718>,  <27.091854, 38.368122, 35.275761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874077, 38.451305, 34.950718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178926, -0.917690, -0.354728,
		-0.819492, -0.338526, 0.462421,
		-0.544444, 0.207957, -0.812610,
		26.710743, 38.513691, 34.706936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522243, 37.873810, 35.193291>,  <27.091854, 38.368122, 35.275761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522243, 37.873810, 35.193291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589182, 38.020851, 34.827370>,  <26.629345, 38.109074, 34.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589182, 38.020851, 34.827370>,  <26.522243, 37.873810, 35.193291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589182, 38.020851, 34.827370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017573, -0.926628, -0.375568,
		-0.985742, 0.078925, -0.148608,
		0.167346, 0.367601, -0.914803,
		26.639385, 38.131130, 34.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025972, 37.586102, 34.680695>,  <26.522243, 37.873810, 35.193291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025972, 37.586102, 34.680695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381563, 37.679619, 34.523182>,  <26.594917, 37.735729, 34.428677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381563, 37.679619, 34.523182>,  <26.025972, 37.586102, 34.680695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381563, 37.679619, 34.523182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076655, -0.923703, -0.375361,
		-0.451491, 0.303502, -0.839072,
		0.888977, 0.233792, -0.393779,
		26.648256, 37.749756, 34.405048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130846, 37.425064, 33.888073>,  <26.025972, 37.586102, 34.680695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130846, 37.425064, 33.888073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483099, 37.396679, 34.075455>,  <26.694450, 37.379646, 34.187881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483099, 37.396679, 34.075455>,  <26.130846, 37.425064, 33.888073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483099, 37.396679, 34.075455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064326, -0.961658, -0.266602,
		0.469410, 0.264913, -0.842304,
		0.880634, -0.070964, 0.468453,
		26.747290, 37.375389, 34.215992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464731, 36.914539, 33.468479>,  <26.130846, 37.425064, 33.888073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464731, 36.914539, 33.468479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723450, 36.932781, 33.772999>,  <26.878681, 36.943726, 33.955711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723450, 36.932781, 33.772999>,  <26.464731, 36.914539, 33.468479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723450, 36.932781, 33.772999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185356, -0.977681, -0.098914,
		0.739797, 0.205088, -0.640812,
		0.646796, 0.045602, 0.761299,
		26.917488, 36.946461, 34.001389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228083, 36.695713, 33.246479>,  <26.464731, 36.914539, 33.468479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228083, 36.695713, 33.246479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175673, 36.632011, 33.637882>,  <27.144226, 36.593788, 33.872723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175673, 36.632011, 33.637882>,  <27.228083, 36.695713, 33.246479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175673, 36.632011, 33.637882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041112, -0.987036, -0.155141,
		0.990526, 0.019901, 0.135875,
		-0.131026, -0.159258, 0.978503,
		27.136364, 36.584232, 33.931435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850931, 36.263031, 33.522148>,  <27.228083, 36.695713, 33.246479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850931, 36.263031, 33.522148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528957, 36.195633, 33.749722>,  <27.335773, 36.155193, 33.886265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528957, 36.195633, 33.749722>,  <27.850931, 36.263031, 33.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528957, 36.195633, 33.749722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047143, -0.973963, -0.221749,
		0.591489, -0.151672, 0.791920,
		-0.804934, -0.168496, 0.568938,
		27.287477, 36.145084, 33.920403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072611, 35.893635, 34.042194>,  <27.850931, 36.263031, 33.522148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072611, 35.893635, 34.042194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686340, 35.790649, 34.028427>,  <27.454578, 35.728859, 34.020168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686340, 35.790649, 34.028427>,  <28.072611, 35.893635, 34.042194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686340, 35.790649, 34.028427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259679, -0.953628, -0.152184,
		0.006360, -0.155898, 0.987753,
		-0.965674, -0.257466, -0.034419,
		27.396639, 35.713409, 34.018101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974052, 35.342228, 34.571735>,  <28.072611, 35.893635, 34.042194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974052, 35.342228, 34.571735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701237, 35.307693, 34.281254>,  <27.537548, 35.286972, 34.106964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701237, 35.307693, 34.281254>,  <27.974052, 35.342228, 34.571735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701237, 35.307693, 34.281254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316517, -0.930033, -0.186696,
		-0.659273, -0.357189, 0.661646,
		-0.682038, -0.086338, -0.726202,
		27.496626, 35.281792, 34.063393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488823, 34.889725, 34.668983>,  <27.974052, 35.342228, 34.571735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488823, 34.889725, 34.668983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575794, 34.903660, 34.278801>,  <27.627977, 34.912022, 34.044693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575794, 34.903660, 34.278801>,  <27.488823, 34.889725, 34.668983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575794, 34.903660, 34.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033443, -0.999042, -0.028228,
		-0.975503, -0.026485, -0.218386,
		0.217429, 0.034840, -0.975454,
		27.641024, 34.914112, 33.986164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607256, 34.153828, 34.502590>,  <27.488823, 34.889725, 34.668983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607256, 34.153828, 34.502590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734247, 34.316643, 34.160007>,  <27.810442, 34.414333, 33.954456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734247, 34.316643, 34.160007>,  <27.607256, 34.153828, 34.502590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734247, 34.316643, 34.160007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037509, -0.897089, -0.440255,
		-0.947523, 0.171897, -0.269539,
		0.317479, 0.407041, -0.856460,
		27.829491, 34.438755, 33.903069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207630, 33.851101, 33.961449>,  <27.607256, 34.153828, 34.502590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207630, 33.851101, 33.961449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553263, 33.974365, 33.802250>,  <27.760643, 34.048325, 33.706730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553263, 33.974365, 33.802250>,  <27.207630, 33.851101, 33.961449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553263, 33.974365, 33.802250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131389, -0.901366, -0.412645,
		-0.485903, 0.304266, -0.819342,
		0.864081, 0.308157, -0.397999,
		27.812487, 34.066811, 33.682850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322647, 33.640347, 33.229095>,  <27.207630, 33.851101, 33.961449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322647, 33.640347, 33.229095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671829, 33.710121, 33.411312>,  <27.881338, 33.751987, 33.520641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671829, 33.710121, 33.411312>,  <27.322647, 33.640347, 33.229095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671829, 33.710121, 33.411312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384935, -0.819955, -0.423672,
		0.299618, 0.545201, -0.782933,
		0.872957, 0.174439, 0.455541,
		27.933716, 33.762451, 33.547974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725315, 33.226871, 32.743244>,  <27.322647, 33.640347, 33.229095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725315, 33.226871, 32.743244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941250, 33.217766, 33.079830>,  <28.070810, 33.212303, 33.281780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941250, 33.217766, 33.079830>,  <27.725315, 33.226871, 32.743244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941250, 33.217766, 33.079830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402310, -0.871096, -0.281670,
		0.739407, 0.490584, -0.461091,
		0.539837, -0.022768, 0.841461,
		28.103201, 33.210934, 33.332268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446720, 33.169674, 32.616009>,  <27.725315, 33.226871, 32.743244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446720, 33.169674, 32.616009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355776, 33.002590, 32.967876>,  <28.301208, 32.902340, 33.178997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355776, 33.002590, 32.967876>,  <28.446720, 33.169674, 32.616009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355776, 33.002590, 32.967876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374018, -0.871503, -0.317165,
		0.899120, 0.256902, 0.354378,
		-0.227361, -0.417713, 0.879672,
		28.287567, 32.877277, 33.231777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996229, 32.796894, 32.815479>,  <28.446720, 33.169674, 32.616009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996229, 32.796894, 32.815479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687328, 32.643787, 33.018307>,  <28.501987, 32.551922, 33.140003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687328, 32.643787, 33.018307>,  <28.996229, 32.796894, 32.815479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687328, 32.643787, 33.018307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316568, -0.923826, -0.215244,
		0.550830, -0.005701, 0.834598,
		-0.772251, -0.382769, 0.507067,
		28.455652, 32.528957, 33.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332504, 32.312698, 33.236511>,  <28.996229, 32.796894, 32.815479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332504, 32.312698, 33.236511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953487, 32.209305, 33.161304>,  <28.726078, 32.147266, 33.116180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953487, 32.209305, 33.161304>,  <29.332504, 32.312698, 33.236511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953487, 32.209305, 33.161304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305352, -0.905901, -0.293434,
		-0.094478, -0.335452, 0.937308,
		-0.947541, -0.258486, -0.188019,
		28.669226, 32.131760, 33.104900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117353, 31.640139, 33.591846>,  <29.332504, 32.312698, 33.236511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117353, 31.640139, 33.591846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922371, 31.703161, 33.248322>,  <28.805382, 31.740974, 33.042206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922371, 31.703161, 33.248322>,  <29.117353, 31.640139, 33.591846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922371, 31.703161, 33.248322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207437, -0.934527, -0.289186,
		-0.848148, -0.319116, 0.422859,
		-0.487457, 0.157555, -0.858814,
		28.776134, 31.750427, 32.990677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664093, 31.034367, 33.492245>,  <29.117353, 31.640139, 33.591846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664093, 31.034367, 33.492245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770493, 31.192616, 33.140625>,  <28.834333, 31.287565, 32.929653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770493, 31.192616, 33.140625>,  <28.664093, 31.034367, 33.492245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770493, 31.192616, 33.140625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302444, -0.900108, -0.313579,
		-0.915298, -0.182451, -0.359083,
		0.266001, 0.395621, -0.879049,
		28.850292, 31.311302, 32.876911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485115, 30.543819, 32.986263>,  <28.664093, 31.034367, 33.492245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485115, 30.543819, 32.986263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773151, 30.784241, 32.847580>,  <28.945972, 30.928493, 32.764370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773151, 30.784241, 32.847580>,  <28.485115, 30.543819, 32.986263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773151, 30.784241, 32.847580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547703, -0.799128, -0.247821,
		-0.426019, -0.011440, -0.904642,
		0.720090, 0.601051, -0.346710,
		28.989178, 30.964556, 32.743568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797182, 30.254711, 32.313972>,  <28.485115, 30.543819, 32.986263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797182, 30.254711, 32.313972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042665, 30.470463, 32.544601>,  <29.189955, 30.599915, 32.682980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042665, 30.470463, 32.544601>,  <28.797182, 30.254711, 32.313972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042665, 30.470463, 32.544601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621492, -0.780416, 0.068554,
		0.486940, 0.316261, -0.814168,
		0.613708, 0.539380, 0.576569,
		29.226778, 30.632277, 32.717571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497030, 30.291695, 32.148628>,  <28.797182, 30.254711, 32.313972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497030, 30.291695, 32.148628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531944, 30.390673, 32.534615>,  <29.552893, 30.450060, 32.766205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531944, 30.390673, 32.534615>,  <29.497030, 30.291695, 32.148628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531944, 30.390673, 32.534615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747160, -0.656944, 0.100875,
		0.658888, 0.712177, -0.242221,
		0.087285, 0.247443, 0.964963,
		29.558130, 30.464905, 32.824104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756992, 30.984257, 32.341961>,  <29.497030, 30.291695, 32.148628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756992, 30.984257, 32.341961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406040, 30.964108, 32.151104>,  <29.195469, 30.952019, 32.036591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406040, 30.964108, 32.151104>,  <29.756992, 30.984257, 32.341961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406040, 30.964108, 32.151104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283735, 0.856418, 0.431326,
		0.386909, 0.513819, -0.765697,
		-0.877380, -0.050371, -0.477144,
		29.142826, 30.948996, 32.007961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526232, 31.694647, 32.035095>,  <29.756992, 30.984257, 32.341961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526232, 31.694647, 32.035095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245045, 31.427502, 32.132912>,  <29.076332, 31.267216, 32.191601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245045, 31.427502, 32.132912>,  <29.526232, 31.694647, 32.035095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245045, 31.427502, 32.132912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538422, 0.724376, 0.430559,
		-0.464694, 0.171001, -0.868803,
		-0.702966, -0.667861, 0.244542,
		29.034155, 31.227144, 32.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894922, 31.850412, 31.716871>,  <29.526232, 31.694647, 32.035095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894922, 31.850412, 31.716871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844065, 31.656048, 32.062756>,  <28.813551, 31.539429, 32.270287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844065, 31.656048, 32.062756>,  <28.894922, 31.850412, 31.716871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844065, 31.656048, 32.062756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646186, 0.701977, 0.299453,
		-0.752514, -0.520690, -0.403241,
		-0.127144, -0.485912, 0.864710,
		28.805922, 31.510275, 32.322170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196022, 31.920410, 31.870440>,  <28.894922, 31.850412, 31.716871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196022, 31.920410, 31.870440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383762, 31.857763, 32.218044>,  <28.496407, 31.820175, 32.426609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383762, 31.857763, 32.218044>,  <28.196022, 31.920410, 31.870440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383762, 31.857763, 32.218044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234803, 0.926577, 0.293806,
		-0.851222, -0.341944, 0.398115,
		0.469350, -0.156616, 0.869012,
		28.524567, 31.810778, 32.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774549, 32.202610, 32.389591>,  <28.196022, 31.920410, 31.870440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774549, 32.202610, 32.389591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149399, 32.220528, 32.528034>,  <28.374310, 32.231277, 32.611099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149399, 32.220528, 32.528034>,  <27.774549, 32.202610, 32.389591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149399, 32.220528, 32.528034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135857, 0.960321, 0.243569,
		-0.321467, -0.275275, 0.906026,
		0.937124, 0.044791, 0.346109,
		28.430536, 32.233963, 32.631866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394808, 31.860992, 32.978725>,  <27.774549, 32.202610, 32.389591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394808, 31.860992, 32.978725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789991, 31.920967, 32.993977>,  <28.027102, 31.956951, 33.003128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789991, 31.920967, 32.993977>,  <27.394808, 31.860992, 32.978725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789991, 31.920967, 32.993977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134430, 0.710031, 0.691219,
		0.076568, -0.688022, 0.721639,
		0.987961, 0.149935, 0.038125,
		28.086380, 31.965948, 33.005413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385401, 32.133595, 33.612286>,  <27.394808, 31.860992, 32.978725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385401, 32.133595, 33.612286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758478, 32.243729, 33.519096>,  <27.982325, 32.309807, 33.463184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758478, 32.243729, 33.519096>,  <27.385401, 32.133595, 33.612286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758478, 32.243729, 33.519096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088650, 0.801131, 0.591887,
		0.349606, -0.531397, 0.771618,
		0.932693, 0.275331, -0.232971,
		28.038286, 32.326328, 33.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712679, 32.421951, 34.234333>,  <27.385401, 32.133595, 33.612286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712679, 32.421951, 34.234333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924816, 32.566509, 33.927574>,  <28.052099, 32.653244, 33.743519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924816, 32.566509, 33.927574>,  <27.712679, 32.421951, 34.234333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924816, 32.566509, 33.927574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144569, 0.852790, 0.501846,
		0.835363, -0.377023, 0.400029,
		0.530348, 0.361392, -0.766895,
		28.083920, 32.674927, 33.697506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439600, 32.584801, 34.515644>,  <27.712679, 32.421951, 34.234333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439600, 32.584801, 34.515644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210836, 32.773212, 34.247002>,  <28.073578, 32.886261, 34.085815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210836, 32.773212, 34.247002>,  <28.439600, 32.584801, 34.515644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210836, 32.773212, 34.247002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052432, 0.796049, 0.602956,
		0.818640, 0.380049, -0.430571,
		-0.571909, 0.471029, -0.671604,
		28.039265, 32.914520, 34.045521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807968, 33.191608, 34.532890>,  <28.439600, 32.584801, 34.515644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807968, 33.191608, 34.532890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421589, 33.223648, 34.434479>,  <28.189762, 33.242874, 34.375431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421589, 33.223648, 34.434479>,  <28.807968, 33.191608, 34.532890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421589, 33.223648, 34.434479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124869, 0.688493, 0.714412,
		0.226616, 0.720806, -0.655045,
		-0.965946, 0.080102, -0.246030,
		28.131805, 33.247681, 34.360668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522697, 33.352940, 34.550224>,  <28.807968, 33.191608, 34.532890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522697, 33.352940, 34.550224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203714, 33.546940, 34.693798>,  <29.012323, 33.663338, 34.779942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203714, 33.546940, 34.693798>,  <29.522697, 33.352940, 34.550224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203714, 33.546940, 34.693798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603372, -0.641149, -0.474204,
		0.000144, -0.594731, 0.803925,
		-0.797460, 0.484998, 0.358937,
		28.964476, 33.692440, 34.801479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315117, 33.411118, 34.367298>,  <29.522697, 33.352940, 34.550224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315117, 33.411118, 34.367298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431385, 33.730278, 34.156071>,  <30.501144, 33.921776, 34.029335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431385, 33.730278, 34.156071>,  <30.315117, 33.411118, 34.367298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431385, 33.730278, 34.156071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855843, 0.029969, 0.516366,
		0.427837, -0.602038, -0.674170,
		0.290668, 0.797905, -0.528072,
		30.518585, 33.969650, 33.997650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026186, 33.339821, 33.981071>,  <30.315117, 33.411118, 34.367298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026186, 33.339821, 33.981071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982973, 33.723804, 34.084465>,  <30.957047, 33.954193, 34.146503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982973, 33.723804, 34.084465>,  <31.026186, 33.339821, 33.981071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982973, 33.723804, 34.084465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864585, -0.037627, 0.501076,
		0.490736, 0.277617, -0.825898,
		-0.108031, 0.959955, 0.258488,
		30.950563, 34.011791, 34.162010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672253, 33.696198, 33.885204>,  <31.026186, 33.339821, 33.981071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672253, 33.696198, 33.885204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440842, 33.879791, 34.154911>,  <31.301994, 33.989948, 34.316734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440842, 33.879791, 34.154911>,  <31.672253, 33.696198, 33.885204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440842, 33.879791, 34.154911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798010, 0.147456, 0.584325,
		0.168774, 0.876120, -0.451585,
		-0.578528, 0.458989, 0.674266,
		31.267282, 34.017487, 34.357189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313520, 34.413208, 33.981899>,  <31.672253, 33.696198, 33.885204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313520, 34.413208, 33.981899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422268, 34.290916, 34.346889>,  <31.487516, 34.217541, 34.565884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422268, 34.290916, 34.346889>,  <31.313520, 34.413208, 33.981899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422268, 34.290916, 34.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303146, 0.927127, 0.220312,
		-0.913339, 0.216718, 0.344738,
		0.271871, -0.305726, 0.912479,
		31.503830, 34.199200, 34.620632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100363, 34.914402, 34.411106>,  <31.313520, 34.413208, 33.981899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100363, 34.914402, 34.411106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388737, 34.717346, 34.606068>,  <31.561762, 34.599113, 34.723045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388737, 34.717346, 34.606068>,  <31.100363, 34.914402, 34.411106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388737, 34.717346, 34.606068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457053, 0.866675, 0.199944,
		-0.520919, 0.078621, 0.849978,
		0.720935, -0.492639, 0.487401,
		31.605017, 34.569553, 34.752289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351761, 35.291676, 35.000126>,  <31.100363, 34.914402, 34.411106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351761, 35.291676, 35.000126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653242, 35.048576, 34.900070>,  <31.834131, 34.902718, 34.840034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653242, 35.048576, 34.900070>,  <31.351761, 35.291676, 35.000126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653242, 35.048576, 34.900070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634400, 0.772195, 0.035359,
		0.171669, -0.185340, 0.967563,
		0.753701, -0.607753, -0.250142,
		31.879353, 34.866249, 34.825027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859026, 35.277374, 35.530804>,  <31.351761, 35.291676, 35.000126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859026, 35.277374, 35.530804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038048, 35.182465, 35.185925>,  <32.145462, 35.125519, 34.978996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038048, 35.182465, 35.185925>,  <31.859026, 35.277374, 35.530804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038048, 35.182465, 35.185925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556486, 0.828628, 0.060826,
		0.700012, -0.507027, 0.502898,
		0.447556, -0.237277, -0.862203,
		32.172314, 35.111282, 34.927265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460457, 35.657097, 35.780418>,  <31.859026, 35.277374, 35.530804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460457, 35.657097, 35.780418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455231, 35.593555, 35.385532>,  <32.452095, 35.555431, 35.148602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455231, 35.593555, 35.385532>,  <32.460457, 35.657097, 35.780418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455231, 35.593555, 35.385532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350983, 0.923750, -0.153289,
		0.936291, -0.348498, 0.043689,
		-0.013063, -0.158857, -0.987215,
		32.451313, 35.545898, 35.089367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505100, 34.914303, 36.190010>,  <32.460457, 35.657097, 35.780418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505100, 34.914303, 36.190010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873081, 34.784508, 36.278008>,  <33.093868, 34.706631, 36.330807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873081, 34.784508, 36.278008>,  <32.505100, 34.914303, 36.190010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873081, 34.784508, 36.278008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258259, -0.079432, 0.962805,
		-0.294942, -0.942549, -0.156875,
		0.919952, -0.324486, 0.219994,
		33.149067, 34.687160, 36.344006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550270, 34.138325, 36.504047>,  <32.505100, 34.914303, 36.190010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550270, 34.138325, 36.504047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884811, 34.314358, 36.634796>,  <33.085537, 34.419979, 36.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884811, 34.314358, 36.634796>,  <32.550270, 34.138325, 36.504047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884811, 34.314358, 36.634796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327137, -0.077798, 0.941769,
		0.439885, -0.894581, 0.078901,
		0.836350, 0.440081, 0.326873,
		33.135715, 34.446381, 36.732857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783539, 33.726948, 36.956257>,  <32.550270, 34.138325, 36.504047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783539, 33.726948, 36.956257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974419, 34.067314, 37.044090>,  <33.088947, 34.271534, 37.096790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974419, 34.067314, 37.044090>,  <32.783539, 33.726948, 36.956257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974419, 34.067314, 37.044090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221899, -0.125095, 0.967012,
		0.850318, -0.510182, 0.129123,
		0.477200, 0.850920, 0.219579,
		33.117580, 34.322590, 37.109962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195545, 33.632721, 37.623405>,  <32.783539, 33.726948, 36.956257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195545, 33.632721, 37.623405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144714, 34.023674, 37.555786>,  <33.114216, 34.258244, 37.515213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144714, 34.023674, 37.555786>,  <33.195545, 33.632721, 37.623405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144714, 34.023674, 37.555786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497802, 0.084572, 0.863157,
		0.857930, 0.193844, 0.475795,
		-0.127079, 0.977380, -0.169053,
		33.106590, 34.316887, 37.505070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512573, 33.618523, 38.010685>,  <33.195545, 33.632721, 37.623405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512573, 33.618523, 38.010685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475838, 33.238255, 38.129200>,  <32.453796, 33.010094, 38.200310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475838, 33.238255, 38.129200>,  <32.512573, 33.618523, 38.010685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475838, 33.238255, 38.129200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434890, 0.305966, 0.846910,
		-0.895788, -0.051071, -0.441538,
		-0.091843, -0.950672, 0.296291,
		32.448284, 32.953053, 38.218086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345333, 34.205025, 38.615643>,  <32.512573, 33.618523, 38.010685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345333, 34.205025, 38.615643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444035, 34.591869, 38.590981>,  <32.503254, 34.823978, 38.576183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444035, 34.591869, 38.590981>,  <32.345333, 34.205025, 38.615643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444035, 34.591869, 38.590981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365926, -0.151897, -0.918164,
		-0.897336, 0.203997, -0.391374,
		0.246751, 0.967115, -0.061655,
		32.518059, 34.882004, 38.572483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073071, 34.702541, 38.006535>,  <32.345333, 34.205025, 38.615643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073071, 34.702541, 38.006535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433907, 34.801643, 38.147865>,  <32.650410, 34.861107, 38.232662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433907, 34.801643, 38.147865>,  <32.073071, 34.702541, 38.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433907, 34.801643, 38.147865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397402, -0.157790, -0.903977,
		-0.168217, 0.955886, -0.240801,
		0.902094, 0.247759, 0.353328,
		32.704536, 34.875973, 38.253864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407661, 34.844673, 37.454132>,  <32.073071, 34.702541, 38.006535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407661, 34.844673, 37.454132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705135, 34.799248, 37.717659>,  <32.883617, 34.771992, 37.875774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705135, 34.799248, 37.717659>,  <32.407661, 34.844673, 37.454132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705135, 34.799248, 37.717659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612503, -0.279172, -0.739529,
		0.267910, 0.953502, -0.138055,
		0.743683, -0.113568, 0.658816,
		32.928242, 34.765179, 37.915302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951557, 35.385269, 37.400978>,  <32.407661, 34.844673, 37.454132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951557, 35.385269, 37.400978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101200, 35.040997, 37.539124>,  <33.190987, 34.834435, 37.622013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101200, 35.040997, 37.539124>,  <32.951557, 35.385269, 37.400978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101200, 35.040997, 37.539124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676496, -0.001466, -0.736445,
		0.634349, 0.509148, 0.581696,
		0.374106, -0.860678, 0.345366,
		33.213432, 34.782795, 37.642735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694904, 35.465565, 37.438354>,  <32.951557, 35.385269, 37.400978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694904, 35.465565, 37.438354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520714, 35.122601, 37.328667>,  <33.416199, 34.916821, 37.262856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520714, 35.122601, 37.328667>,  <33.694904, 35.465565, 37.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520714, 35.122601, 37.328667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562679, -0.021485, -0.826397,
		0.702673, -0.514177, 0.491806,
		-0.435481, -0.857415, -0.274219,
		33.390068, 34.865376, 37.246403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242500, 34.992142, 37.154797>,  <33.694904, 35.465565, 37.438354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242500, 34.992142, 37.154797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899155, 34.844631, 37.012127>,  <33.693146, 34.756126, 36.926525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899155, 34.844631, 37.012127>,  <34.242500, 34.992142, 37.154797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899155, 34.844631, 37.012127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425208, -0.122355, -0.896787,
		0.287073, -0.921430, 0.261832,
		-0.858363, -0.368777, -0.356675,
		33.641647, 34.733997, 36.905125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419060, 34.502457, 36.715538>,  <34.242500, 34.992142, 37.154797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419060, 34.502457, 36.715538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053307, 34.579079, 36.572872>,  <33.833855, 34.625050, 36.487270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053307, 34.579079, 36.572872>,  <34.419060, 34.502457, 36.715538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053307, 34.579079, 36.572872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321763, -0.190836, -0.927389,
		-0.245711, -0.962751, 0.112861,
		-0.914382, 0.191555, -0.356668,
		33.778992, 34.636543, 36.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987080, 33.950195, 36.342422>,  <34.419060, 34.502457, 36.715538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987080, 33.950195, 36.342422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811852, 34.274288, 36.186668>,  <33.706715, 34.468746, 36.093216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811852, 34.274288, 36.186668>,  <33.987080, 33.950195, 36.342422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811852, 34.274288, 36.186668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154095, -0.359063, -0.920505,
		-0.885637, -0.463244, 0.032440,
		-0.438066, 0.810234, -0.389383,
		33.680431, 34.517357, 36.069855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543781, 33.551174, 36.031097>,  <33.987080, 33.950195, 36.342422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543781, 33.551174, 36.031097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661541, 33.907413, 35.892437>,  <33.732197, 34.121155, 35.809238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661541, 33.907413, 35.892437>,  <33.543781, 33.551174, 36.031097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661541, 33.907413, 35.892437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236289, -0.419300, -0.876559,
		-0.926011, 0.176147, -0.333879,
		0.294398, 0.890595, -0.346655,
		33.749859, 34.174591, 35.788441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119823, 33.669250, 35.380005>,  <33.543781, 33.551174, 36.031097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119823, 33.669250, 35.380005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447769, 33.897343, 35.359375>,  <33.644535, 34.034199, 35.346996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447769, 33.897343, 35.359375>,  <33.119823, 33.669250, 35.380005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447769, 33.897343, 35.359375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123067, -0.263483, -0.956782,
		-0.559175, 0.778084, -0.286197,
		0.819865, 0.570229, -0.051577,
		33.693729, 34.068413, 35.343903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925602, 33.976906, 34.795998>,  <33.119823, 33.669250, 35.380005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925602, 33.976906, 34.795998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316338, 34.038265, 34.855663>,  <33.550781, 34.075081, 34.891464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316338, 34.038265, 34.855663>,  <32.925602, 33.976906, 34.795998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316338, 34.038265, 34.855663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173478, -0.159741, -0.971796,
		-0.125242, 0.975168, -0.182652,
		0.976842, 0.153396, 0.149164,
		33.609390, 34.084286, 34.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181633, 34.479790, 34.389614>,  <32.925602, 33.976906, 34.795998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181633, 34.479790, 34.389614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504040, 34.254387, 34.462055>,  <33.697483, 34.119144, 34.505520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504040, 34.254387, 34.462055>,  <33.181633, 34.479790, 34.389614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504040, 34.254387, 34.462055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119877, -0.144214, -0.982258,
		0.579629, 0.813425, -0.048687,
		0.806015, -0.563509, 0.181102,
		33.745846, 34.085335, 34.516384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489956, 34.571579, 33.767666>,  <33.181633, 34.479790, 34.389614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489956, 34.571579, 33.767666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698788, 34.272125, 33.931122>,  <33.824085, 34.092453, 34.029194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698788, 34.272125, 33.931122>,  <33.489956, 34.571579, 33.767666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698788, 34.272125, 33.931122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281121, -0.301297, -0.911148,
		0.805236, 0.590567, 0.053155,
		0.522079, -0.748632, 0.408636,
		33.855412, 34.047535, 34.053711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139072, 34.697113, 33.445766>,  <33.489956, 34.571579, 33.767666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139072, 34.697113, 33.445766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136929, 34.307957, 33.538242>,  <34.135643, 34.074463, 33.593727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136929, 34.307957, 33.538242>,  <34.139072, 34.697113, 33.445766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136929, 34.307957, 33.538242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473470, -0.206111, -0.856355,
		0.880794, 0.104870, 0.461742,
		-0.005364, -0.972893, 0.231194,
		34.135319, 34.016090, 33.607601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838142, 34.506348, 33.292934>,  <34.139072, 34.697113, 33.445766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838142, 34.506348, 33.292934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629097, 34.166798, 33.324642>,  <34.503670, 33.963066, 33.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629097, 34.166798, 33.324642>,  <34.838142, 34.506348, 33.292934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629097, 34.166798, 33.324642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456949, -0.357379, -0.814541,
		0.719775, -0.389466, 0.574665,
		-0.522609, -0.848879, 0.079267,
		34.472313, 33.912132, 33.348423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325687, 33.944897, 33.154598>,  <34.838142, 34.506348, 33.292934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325687, 33.944897, 33.154598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964951, 33.805397, 33.052578>,  <34.748508, 33.721699, 32.991367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964951, 33.805397, 33.052578>,  <35.325687, 33.944897, 33.154598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964951, 33.805397, 33.052578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342802, -0.218266, -0.913699,
		0.262981, -0.911447, 0.316393,
		-0.901847, -0.348746, -0.255047,
		34.694397, 33.700775, 32.976063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415195, 33.270279, 32.823631>,  <35.325687, 33.944897, 33.154598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415195, 33.270279, 32.823631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053185, 33.388458, 32.701229>,  <34.835979, 33.459366, 32.627789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053185, 33.388458, 32.701229>,  <35.415195, 33.270279, 32.823631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053185, 33.388458, 32.701229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253229, -0.203794, -0.945697,
		-0.341772, -0.933368, 0.109621,
		-0.905024, 0.295453, -0.306007,
		34.781677, 33.477093, 32.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184868, 32.810207, 32.392353>,  <35.415195, 33.270279, 32.823631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184868, 32.810207, 32.392353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966511, 33.133224, 32.303020>,  <34.835495, 33.327034, 32.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966511, 33.133224, 32.303020>,  <35.184868, 32.810207, 32.392353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966511, 33.133224, 32.303020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329162, -0.038420, -0.943492,
		-0.770487, -0.588562, -0.244838,
		-0.545897, 0.807539, -0.223334,
		34.802742, 33.375484, 32.236019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802910, 32.590904, 31.847742>,  <35.184868, 32.810207, 32.392353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802910, 32.590904, 31.847742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773941, 32.989746, 31.838499>,  <34.756557, 33.229050, 31.832952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773941, 32.989746, 31.838499>,  <34.802910, 32.590904, 31.847742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773941, 32.989746, 31.838499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129841, -0.013545, -0.991442,
		-0.988886, -0.074806, -0.128485,
		-0.072426, 0.997106, -0.023108,
		34.752213, 33.288879, 31.831566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309982, 32.654560, 31.341440>,  <34.802910, 32.590904, 31.847742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309982, 32.654560, 31.341440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528538, 32.989124, 31.358719>,  <34.659672, 33.189865, 31.369085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528538, 32.989124, 31.358719>,  <34.309982, 32.654560, 31.341440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528538, 32.989124, 31.358719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091621, -0.008426, -0.995758,
		-0.832502, 0.548033, -0.081237,
		0.546393, 0.836414, 0.043196,
		34.692455, 33.240047, 31.371677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912727, 33.103642, 30.996334>,  <34.309982, 32.654560, 31.341440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912727, 33.103642, 30.996334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296276, 33.216938, 31.003813>,  <34.526405, 33.284916, 31.008301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296276, 33.216938, 31.003813>,  <33.912727, 33.103642, 30.996334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296276, 33.216938, 31.003813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032015, 0.173363, -0.984338,
		-0.282043, 0.943251, 0.175300,
		0.958867, 0.283237, 0.018697,
		34.583935, 33.301910, 31.009422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943233, 33.490437, 30.430351>,  <33.912727, 33.103642, 30.996334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943233, 33.490437, 30.430351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334320, 33.474571, 30.512808>,  <34.568974, 33.465050, 30.562281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334320, 33.474571, 30.512808>,  <33.943233, 33.490437, 30.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334320, 33.474571, 30.512808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209559, 0.126717, -0.969550,
		0.012338, 0.991145, 0.132206,
		0.977718, -0.039668, 0.206140,
		34.627636, 33.462669, 30.574650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196880, 34.132690, 30.142811>,  <33.943233, 33.490437, 30.430351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196880, 34.132690, 30.142811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480991, 33.853745, 30.181149>,  <34.651459, 33.686375, 30.204151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480991, 33.853745, 30.181149>,  <34.196880, 34.132690, 30.142811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480991, 33.853745, 30.181149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215312, 0.085598, -0.972787,
		0.670186, 0.711584, 0.210950,
		0.710276, -0.697368, 0.095846,
		34.694073, 33.644535, 30.209902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896713, 34.434620, 29.991236>,  <34.196880, 34.132690, 30.142811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896713, 34.434620, 29.991236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899921, 34.036175, 29.956165>,  <34.901848, 33.797108, 29.935123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899921, 34.036175, 29.956165>,  <34.896713, 34.434620, 29.991236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899921, 34.036175, 29.956165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362453, 0.084613, -0.928153,
		0.931967, -0.024330, 0.361725,
		0.008025, -0.996117, -0.087675,
		34.902328, 33.737339, 29.929863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454937, 34.318111, 29.579927>,  <34.896713, 34.434620, 29.991236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454937, 34.318111, 29.579927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254204, 33.972939, 29.556223>,  <35.133762, 33.765835, 29.542000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254204, 33.972939, 29.556223>,  <35.454937, 34.318111, 29.579927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254204, 33.972939, 29.556223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238724, -0.072328, -0.968390,
		0.831367, -0.500120, 0.242299,
		-0.501837, -0.862930, -0.059259,
		35.103653, 33.714058, 29.538445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899612, 33.860081, 29.137875>,  <35.454937, 34.318111, 29.579927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899612, 33.860081, 29.137875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527855, 33.712654, 29.130102>,  <35.304798, 33.624199, 29.125439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527855, 33.712654, 29.130102>,  <35.899612, 33.860081, 29.137875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527855, 33.712654, 29.130102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052935, -0.081010, -0.995307,
		0.365264, -0.926064, 0.094801,
		-0.929398, -0.368568, -0.019431,
		35.249035, 33.602085, 29.124273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943111, 33.276253, 28.655928>,  <35.899612, 33.860081, 29.137875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943111, 33.276253, 28.655928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552826, 33.343407, 28.712210>,  <35.318653, 33.383698, 28.745979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552826, 33.343407, 28.712210>,  <35.943111, 33.276253, 28.655928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552826, 33.343407, 28.712210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158683, -0.098926, -0.982361,
		-0.151002, -0.980831, 0.123164,
		-0.975714, 0.167883, 0.140703,
		35.260113, 33.393772, 28.754421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572681, 32.628105, 28.296446>,  <35.943111, 33.276253, 28.655928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572681, 32.628105, 28.296446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346249, 32.956635, 28.324690>,  <35.210388, 33.153751, 28.341637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346249, 32.956635, 28.324690>,  <35.572681, 32.628105, 28.296446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346249, 32.956635, 28.324690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132299, -0.005970, -0.991192,
		-0.813663, -0.570438, 0.112039,
		-0.566083, 0.821319, 0.070611,
		35.176422, 33.203030, 28.345873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016171, 32.556755, 27.808399>,  <35.572681, 32.628105, 28.296446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016171, 32.556755, 27.808399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051895, 32.954437, 27.832296>,  <35.073330, 33.193047, 27.846634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051895, 32.954437, 27.832296>,  <35.016171, 32.556755, 27.808399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051895, 32.954437, 27.832296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100943, 0.068709, -0.992517,
		-0.990875, 0.082617, 0.106496,
		0.089316, 0.994210, 0.059743,
		35.078690, 33.252701, 27.850220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605412, 32.738007, 27.257227>,  <35.016171, 32.556755, 27.808399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605412, 32.738007, 27.257227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793949, 33.082787, 27.331928>,  <34.907070, 33.289654, 27.376749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793949, 33.082787, 27.331928>,  <34.605412, 32.738007, 27.257227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793949, 33.082787, 27.331928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026701, 0.225598, -0.973855,
		-0.881545, 0.454035, 0.129349,
		0.471345, 0.861950, 0.186751,
		34.935352, 33.341373, 27.387953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260704, 33.188419, 26.875414>,  <34.605412, 32.738007, 27.257227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260704, 33.188419, 26.875414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602093, 33.383144, 26.949820>,  <34.806927, 33.499981, 26.994463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602093, 33.383144, 26.949820>,  <34.260704, 33.188419, 26.875414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602093, 33.383144, 26.949820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003152, 0.352104, -0.935956,
		-0.521130, 0.799398, 0.298976,
		0.853471, 0.486812, 0.186012,
		34.858135, 33.529186, 27.005623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101997, 33.730553, 26.369587>,  <34.260704, 33.188419, 26.875414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101997, 33.730553, 26.369587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492237, 33.728622, 26.457394>,  <34.726379, 33.727463, 26.510077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492237, 33.728622, 26.457394>,  <34.101997, 33.730553, 26.369587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492237, 33.728622, 26.457394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207290, 0.349889, -0.913569,
		-0.072397, 0.936779, 0.342351,
		0.975597, -0.004826, 0.219516,
		34.784916, 33.727173, 26.523249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394337, 34.348034, 26.120926>,  <34.101997, 33.730553, 26.369587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394337, 34.348034, 26.120926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710640, 34.109535, 26.176344>,  <34.900421, 33.966434, 26.209595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710640, 34.109535, 26.176344>,  <34.394337, 34.348034, 26.120926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710640, 34.109535, 26.176344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447527, 0.408695, -0.795417,
		0.417642, 0.690984, 0.590014,
		0.790756, -0.596247, 0.138545,
		34.947868, 33.930660, 26.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992607, 34.789494, 26.166489>,  <34.394337, 34.348034, 26.120926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992607, 34.789494, 26.166489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094933, 34.417316, 26.061544>,  <35.156326, 34.194008, 25.998577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094933, 34.417316, 26.061544>,  <34.992607, 34.789494, 26.166489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094933, 34.417316, 26.061544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550387, 0.363287, -0.751729,
		0.794755, 0.047901, 0.605037,
		0.255811, -0.930445, -0.262360,
		35.171677, 34.138184, 25.982836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632458, 34.898655, 25.885052>,  <34.992607, 34.789494, 26.166489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632458, 34.898655, 25.885052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557858, 34.531937, 25.743793>,  <35.513096, 34.311905, 25.659039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557858, 34.531937, 25.743793>,  <35.632458, 34.898655, 25.885052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557858, 34.531937, 25.743793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515727, 0.214585, -0.829445,
		0.836207, -0.336820, 0.432793,
		-0.186503, -0.916791, -0.353144,
		35.501907, 34.256901, 25.637850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297337, 34.569126, 25.749916>,  <35.632458, 34.898655, 25.885052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297337, 34.569126, 25.749916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025665, 34.391125, 25.516441>,  <35.862663, 34.284325, 25.376356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025665, 34.391125, 25.516441>,  <36.297337, 34.569126, 25.749916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025665, 34.391125, 25.516441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575602, 0.170493, -0.799759,
		0.455408, -0.879150, 0.140349,
		-0.679180, -0.445002, -0.583685,
		35.821911, 34.257626, 25.341335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704041, 34.088463, 25.352531>,  <36.297337, 34.569126, 25.749916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704041, 34.088463, 25.352531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366669, 34.118622, 25.139763>,  <36.164246, 34.136715, 25.012102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366669, 34.118622, 25.139763>,  <36.704041, 34.088463, 25.352531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366669, 34.118622, 25.139763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533771, 0.005300, -0.845613,
		-0.060938, -0.997139, -0.044715,
		-0.843430, 0.075397, -0.531921,
		36.113640, 34.141239, 24.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843506, 33.761822, 24.757107>,  <36.704041, 34.088463, 25.352531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843506, 33.761822, 24.757107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533459, 34.005756, 24.691021>,  <36.347431, 34.152119, 24.651369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533459, 34.005756, 24.691021>,  <36.843506, 33.761822, 24.757107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533459, 34.005756, 24.691021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411355, 0.288611, -0.864575,
		-0.479569, -0.738105, -0.474567,
		-0.775113, 0.609839, -0.165215,
		36.300926, 34.188709, 24.641457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730839, 33.703308, 24.058868>,  <36.843506, 33.761822, 24.757107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730839, 33.703308, 24.058868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568150, 34.058575, 24.144409>,  <36.470535, 34.271736, 24.195734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568150, 34.058575, 24.144409>,  <36.730839, 33.703308, 24.058868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568150, 34.058575, 24.144409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473953, 0.405267, -0.781746,
		-0.780989, -0.216599, -0.585782,
		-0.406723, 0.888169, 0.213851,
		36.446133, 34.325024, 24.208565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601711, 33.922325, 23.391569>,  <36.730839, 33.703308, 24.058868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601711, 33.922325, 23.391569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559841, 34.260654, 23.600809>,  <36.534718, 34.463650, 23.726353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559841, 34.260654, 23.600809>,  <36.601711, 33.922325, 23.391569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559841, 34.260654, 23.600809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326452, 0.526066, -0.785292,
		-0.939400, 0.088562, -0.331188,
		-0.104680, 0.845820, 0.523098,
		36.528439, 34.514400, 23.757738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283604, 34.399250, 22.878584>,  <36.601711, 33.922325, 23.391569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283604, 34.399250, 22.878584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462067, 34.603439, 23.172621>,  <36.569145, 34.725952, 23.349043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462067, 34.603439, 23.172621>,  <36.283604, 34.399250, 22.878584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462067, 34.603439, 23.172621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578371, 0.462347, -0.672103,
		-0.682957, 0.725022, -0.088960,
		0.446159, 0.510469, 0.735094,
		36.595913, 34.756580, 23.393148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300896, 35.081726, 22.676935>,  <36.283604, 34.399250, 22.878584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300896, 35.081726, 22.676935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586788, 35.044945, 22.954268>,  <36.758324, 35.022877, 23.120667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586788, 35.044945, 22.954268>,  <36.300896, 35.081726, 22.676935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586788, 35.044945, 22.954268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659735, 0.417733, -0.624699,
		-0.232185, 0.903905, 0.359230,
		0.714731, -0.091950, 0.693329,
		36.801208, 35.017361, 23.162266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571522, 35.610138, 22.501596>,  <36.300896, 35.081726, 22.676935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571522, 35.610138, 22.501596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831944, 35.412422, 22.732008>,  <36.988197, 35.293793, 22.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831944, 35.412422, 22.732008>,  <36.571522, 35.610138, 22.501596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831944, 35.412422, 22.732008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758587, 0.397673, -0.516142,
		0.026052, 0.773004, 0.633866,
		0.651051, -0.494289, 0.576030,
		37.027260, 35.264137, 22.904818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083527, 36.098351, 22.880707>,  <36.571522, 35.610138, 22.501596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083527, 36.098351, 22.880707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251854, 35.737854, 22.839386>,  <37.352852, 35.521557, 22.814594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251854, 35.737854, 22.839386>,  <37.083527, 36.098351, 22.880707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251854, 35.737854, 22.839386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792694, 0.420705, -0.441185,
		0.441074, 0.103774, 0.891451,
		0.420821, -0.901243, -0.103301,
		37.378101, 35.467480, 22.808395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747505, 36.251057, 23.138906>,  <37.083527, 36.098351, 22.880707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747505, 36.251057, 23.138906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765747, 35.917976, 22.918169>,  <37.776691, 35.718128, 22.785727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765747, 35.917976, 22.918169>,  <37.747505, 36.251057, 23.138906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765747, 35.917976, 22.918169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756015, 0.389853, -0.525790,
		0.652963, -0.393223, 0.647314,
		0.045605, -0.832701, -0.551843,
		37.779427, 35.668167, 22.752617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445362, 36.244514, 22.994970>,  <37.747505, 36.251057, 23.138906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445362, 36.244514, 22.994970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261852, 36.002846, 22.734354>,  <38.151745, 35.857845, 22.577984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261852, 36.002846, 22.734354>,  <38.445362, 36.244514, 22.994970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261852, 36.002846, 22.734354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663100, 0.255299, -0.703648,
		0.591459, -0.754854, 0.283499,
		-0.458774, -0.604167, -0.651542,
		38.124222, 35.821594, 22.538891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024002, 36.233177, 22.483286>,  <38.445362, 36.244514, 22.994970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024002, 36.233177, 22.483286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675434, 36.094303, 22.344669>,  <38.466293, 36.010979, 22.261499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675434, 36.094303, 22.344669>,  <39.024002, 36.233177, 22.483286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675434, 36.094303, 22.344669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288631, 0.208314, -0.934504,
		0.396631, -0.914369, -0.081322,
		-0.871421, -0.347181, -0.346539,
		38.414009, 35.990150, 22.240707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214962, 35.882095, 21.999849>,  <39.024002, 36.233177, 22.483286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214962, 35.882095, 21.999849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833477, 35.928150, 21.888729>,  <38.604588, 35.955784, 21.822058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833477, 35.928150, 21.888729>,  <39.214962, 35.882095, 21.999849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833477, 35.928150, 21.888729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300592, 0.338513, -0.891658,
		-0.008628, -0.933891, -0.357454,
		-0.953714, 0.115141, -0.277799,
		38.547363, 35.962692, 21.805389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963226, 35.521889, 21.283646>,  <39.214962, 35.882095, 21.999849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963226, 35.521889, 21.283646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697834, 35.818340, 21.324667>,  <38.538597, 35.996212, 21.349279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697834, 35.818340, 21.324667>,  <38.963226, 35.521889, 21.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697834, 35.818340, 21.324667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264424, 0.360496, -0.894496,
		-0.699909, -0.566364, -0.435155,
		-0.663481, 0.741131, 0.102554,
		38.498791, 36.040680, 21.355433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692822, 35.652695, 20.561705>,  <38.963226, 35.521889, 21.283646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692822, 35.652695, 20.561705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571056, 35.966663, 20.777571>,  <38.497997, 36.155045, 20.907089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571056, 35.966663, 20.777571>,  <38.692822, 35.652695, 20.561705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571056, 35.966663, 20.777571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247094, 0.612228, -0.751080,
		-0.919934, -0.095289, -0.380317,
		-0.304411, 0.784919, 0.539664,
		38.479733, 36.202141, 20.939470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227921, 36.028027, 20.114765>,  <38.692822, 35.652695, 20.561705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227921, 36.028027, 20.114765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373863, 36.288448, 20.380999>,  <38.461430, 36.444702, 20.540739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373863, 36.288448, 20.380999>,  <38.227921, 36.028027, 20.114765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373863, 36.288448, 20.380999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333207, 0.576211, -0.746293,
		-0.869396, 0.494070, -0.006700,
		0.364860, 0.651057, 0.665584,
		38.483322, 36.483765, 20.580673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050709, 36.716621, 19.874166>,  <38.227921, 36.028027, 20.114765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050709, 36.716621, 19.874166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378815, 36.738266, 20.101933>,  <38.575680, 36.751251, 20.238592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378815, 36.738266, 20.101933>,  <38.050709, 36.716621, 19.874166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378815, 36.738266, 20.101933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430623, 0.596804, -0.677044,
		-0.376465, 0.800561, 0.466237,
		0.820267, 0.054111, 0.569416,
		38.624893, 36.754498, 20.272757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172665, 37.403183, 20.032726>,  <38.050709, 36.716621, 19.874166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172665, 37.403183, 20.032726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465897, 37.133064, 20.000326>,  <38.641838, 36.970993, 19.980886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465897, 37.133064, 20.000326>,  <38.172665, 37.403183, 20.032726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465897, 37.133064, 20.000326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438607, 0.560410, -0.702542,
		0.519819, 0.479494, 0.707018,
		0.733084, -0.675297, -0.081003,
		38.685822, 36.930473, 19.976025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997124, 37.958874, 20.506292>,  <38.172665, 37.403183, 20.032726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997124, 37.958874, 20.506292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094841, 38.285988, 20.714735>,  <38.153473, 38.482254, 20.839800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094841, 38.285988, 20.714735>,  <37.997124, 37.958874, 20.506292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094841, 38.285988, 20.714735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086675, 0.516823, -0.851693,
		-0.965820, 0.253231, 0.055376,
		0.244294, 0.817782, 0.521107,
		38.168129, 38.531322, 20.871067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498219, 38.545570, 20.288788>,  <37.997124, 37.958874, 20.506292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498219, 38.545570, 20.288788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825497, 38.711567, 20.447950>,  <38.021866, 38.811165, 20.543447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825497, 38.711567, 20.447950>,  <37.498219, 38.545570, 20.288788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825497, 38.711567, 20.447950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065605, 0.620181, -0.781711,
		-0.571179, 0.665700, 0.480206,
		0.818200, 0.414993, 0.397907,
		38.070957, 38.836063, 20.567322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402748, 39.326653, 20.298819>,  <37.498219, 38.545570, 20.288788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402748, 39.326653, 20.298819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796482, 39.256477, 20.305765>,  <38.032722, 39.214371, 20.309933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796482, 39.256477, 20.305765>,  <37.402748, 39.326653, 20.298819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796482, 39.256477, 20.305765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147463, 0.765351, -0.626492,
		0.096623, 0.619240, 0.779234,
		0.984337, -0.175441, 0.017364,
		38.091782, 39.203846, 20.310974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826820, 39.309181, 19.826365>,  <37.402748, 39.326653, 20.298819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826820, 39.309181, 19.826365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071552, 39.625576, 19.826750>,  <38.218391, 39.815414, 19.826981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071552, 39.625576, 19.826750>,  <37.826820, 39.309181, 19.826365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071552, 39.625576, 19.826750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264891, -0.206039, 0.942009,
		0.745316, -0.576096, -0.335587,
		0.611831, 0.790988, 0.000961,
		38.255100, 39.862873, 19.827038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579575, 39.100109, 19.789173>,  <37.826820, 39.309181, 19.826365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579575, 39.100109, 19.789173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505939, 39.435062, 19.995050>,  <38.461758, 39.636032, 20.118576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505939, 39.435062, 19.995050>,  <38.579575, 39.100109, 19.789173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505939, 39.435062, 19.995050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204838, -0.479462, 0.853322,
		0.961329, 0.262512, -0.083265,
		-0.184085, 0.837379, 0.514693,
		38.450714, 39.686275, 20.149458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106926, 39.243095, 20.328058>,  <38.579575, 39.100109, 19.789173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106926, 39.243095, 20.328058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725300, 39.328819, 20.411810>,  <38.496326, 39.380253, 20.462061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725300, 39.328819, 20.411810>,  <39.106926, 39.243095, 20.328058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725300, 39.328819, 20.411810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064167, -0.536467, 0.841478,
		0.292660, 0.816257, 0.498071,
		-0.954061, 0.214307, 0.209379,
		38.439083, 39.393112, 20.474625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033146, 39.533424, 21.062403>,  <39.106926, 39.243095, 20.328058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033146, 39.533424, 21.062403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735649, 39.317219, 20.905075>,  <38.557152, 39.187496, 20.810678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735649, 39.317219, 20.905075>,  <39.033146, 39.533424, 21.062403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735649, 39.317219, 20.905075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111601, -0.680524, 0.724177,
		-0.659089, 0.494704, 0.566454,
		-0.743738, -0.540514, -0.393317,
		38.512527, 39.155064, 20.787081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570004, 39.575397, 21.552393>,  <39.033146, 39.533424, 21.062403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570004, 39.575397, 21.552393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418976, 39.255836, 21.365118>,  <38.328358, 39.064102, 21.252752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418976, 39.255836, 21.365118>,  <38.570004, 39.575397, 21.552393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418976, 39.255836, 21.365118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125807, -0.456666, 0.880698,
		-0.917394, 0.391429, 0.071917,
		-0.377573, -0.798899, -0.468187,
		38.305702, 39.016167, 21.224663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923714, 39.460712, 21.857767>,  <38.570004, 39.575397, 21.552393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923714, 39.460712, 21.857767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051765, 39.126453, 21.679237>,  <38.128597, 38.925896, 21.572119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051765, 39.126453, 21.679237>,  <37.923714, 39.460712, 21.857767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051765, 39.126453, 21.679237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242186, -0.527649, 0.814207,
		-0.915896, -0.152556, -0.371297,
		0.320127, -0.835651, -0.446324,
		38.147804, 38.875759, 21.545340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302258, 39.033970, 21.980122>,  <37.923714, 39.460712, 21.857767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302258, 39.033970, 21.980122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622612, 38.807690, 21.901581>,  <37.814827, 38.671921, 21.854456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622612, 38.807690, 21.901581>,  <37.302258, 39.033970, 21.980122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622612, 38.807690, 21.901581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290647, -0.653928, 0.698500,
		-0.523543, -0.502353, -0.688145,
		0.800891, -0.565702, -0.196352,
		37.862881, 38.637978, 21.842674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145706, 38.347244, 21.878973>,  <37.302258, 39.033970, 21.980122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145706, 38.347244, 21.878973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536526, 38.312496, 21.956772>,  <37.771019, 38.291645, 22.003450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536526, 38.312496, 21.956772>,  <37.145706, 38.347244, 21.878973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536526, 38.312496, 21.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208187, -0.582734, 0.785544,
		0.045098, -0.808007, -0.587445,
		0.977049, -0.086872, 0.194496,
		37.829639, 38.286434, 22.015121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291454, 37.667992, 22.026672>,  <37.145706, 38.347244, 21.878973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291454, 37.667992, 22.026672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582058, 37.880741, 22.200706>,  <37.756420, 38.008392, 22.305126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582058, 37.880741, 22.200706>,  <37.291454, 37.667992, 22.026672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582058, 37.880741, 22.200706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135094, -0.510254, 0.849347,
		0.673748, -0.675834, -0.298851,
		0.726508, 0.531873, 0.435084,
		37.800011, 38.040302, 22.331232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628731, 37.126743, 22.358574>,  <37.291454, 37.667992, 22.026672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628731, 37.126743, 22.358574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741039, 37.459587, 22.549889>,  <37.808426, 37.659294, 22.664677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741039, 37.459587, 22.549889>,  <37.628731, 37.126743, 22.358574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741039, 37.459587, 22.549889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045877, -0.486126, 0.872684,
		0.958678, -0.266966, -0.098315,
		0.280771, 0.832112, 0.478286,
		37.825272, 37.709221, 22.693375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195095, 36.897400, 22.759531>,  <37.628731, 37.126743, 22.358574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195095, 36.897400, 22.759531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041473, 37.228554, 22.923048>,  <37.949303, 37.427246, 23.021158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041473, 37.228554, 22.923048>,  <38.195095, 36.897400, 22.759531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041473, 37.228554, 22.923048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012584, -0.438013, 0.898881,
		0.923226, 0.350362, 0.157802,
		-0.384052, 0.827884, 0.408794,
		37.926258, 37.476917, 23.045687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534775, 36.991943, 23.398670>,  <38.195095, 36.897400, 22.759531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534775, 36.991943, 23.398670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219311, 37.225842, 23.474653>,  <38.030033, 37.366180, 23.520243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219311, 37.225842, 23.474653>,  <38.534775, 36.991943, 23.398670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219311, 37.225842, 23.474653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054714, -0.240987, 0.968985,
		0.612390, 0.774594, 0.158063,
		-0.788661, 0.584748, 0.189959,
		37.982712, 37.401264, 23.531641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737804, 37.266819, 24.035250>,  <38.534775, 36.991943, 23.398670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737804, 37.266819, 24.035250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350319, 37.350479, 23.981794>,  <38.117828, 37.400673, 23.949720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350319, 37.350479, 23.981794>,  <38.737804, 37.266819, 24.035250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350319, 37.350479, 23.981794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149507, -0.061928, 0.986819,
		0.198113, 0.975922, 0.091259,
		-0.968710, 0.209146, -0.133638,
		38.059708, 37.413223, 23.941704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596466, 37.828854, 24.450344>,  <38.737804, 37.266819, 24.035250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596466, 37.828854, 24.450344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249466, 37.636810, 24.398281>,  <38.041267, 37.521584, 24.367043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249466, 37.636810, 24.398281>,  <38.596466, 37.828854, 24.450344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249466, 37.636810, 24.398281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180335, 0.059681, 0.981793,
		-0.463599, 0.875177, -0.138354,
		-0.867499, -0.480108, -0.130157,
		37.989216, 37.492779, 24.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170269, 38.063835, 24.953419>,  <38.596466, 37.828854, 24.450344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170269, 38.063835, 24.953419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931507, 37.758141, 24.855726>,  <37.788250, 37.574726, 24.797110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931507, 37.758141, 24.855726>,  <38.170269, 38.063835, 24.953419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931507, 37.758141, 24.855726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398411, 0.018116, 0.917028,
		-0.696400, 0.644684, -0.315293,
		-0.596905, -0.764234, -0.244233,
		37.752434, 37.528870, 24.782455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594238, 38.264297, 25.325191>,  <38.170269, 38.063835, 24.953419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594238, 38.264297, 25.325191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560364, 37.872929, 25.249796>,  <37.540039, 37.638107, 25.204559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560364, 37.872929, 25.249796>,  <37.594238, 38.264297, 25.325191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560364, 37.872929, 25.249796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419302, -0.136610, 0.897509,
		-0.903889, 0.155036, -0.398685,
		-0.084682, -0.978418, -0.188488,
		37.534958, 37.579403, 25.193249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951786, 38.152191, 25.574789>,  <37.594238, 38.264297, 25.325191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951786, 38.152191, 25.574789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113937, 37.788067, 25.541330>,  <37.211227, 37.569592, 25.521255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113937, 37.788067, 25.541330>,  <36.951786, 38.152191, 25.574789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113937, 37.788067, 25.541330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272705, -0.207762, 0.939397,
		-0.872524, -0.358003, -0.332470,
		0.405381, -0.910312, -0.083648,
		37.235550, 37.514973, 25.516235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399185, 37.725822, 25.657228>,  <36.951786, 38.152191, 25.574789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399185, 37.725822, 25.657228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735893, 37.524361, 25.734955>,  <36.937920, 37.403484, 25.781591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735893, 37.524361, 25.734955>,  <36.399185, 37.725822, 25.657228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735893, 37.524361, 25.734955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319536, -0.174735, 0.931324,
		-0.435110, -0.846051, -0.308022,
		0.841770, -0.503652, 0.194315,
		36.988422, 37.373264, 25.793249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255478, 37.035198, 25.938919>,  <36.399185, 37.725822, 25.657228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255478, 37.035198, 25.938919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590389, 37.200802, 26.081781>,  <36.791336, 37.300163, 26.167500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590389, 37.200802, 26.081781>,  <36.255478, 37.035198, 25.938919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590389, 37.200802, 26.081781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331619, -0.134847, 0.933726,
		0.434730, -0.900230, 0.024388,
		0.837280, 0.414007, 0.357156,
		36.841572, 37.325005, 26.188929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429710, 36.573040, 26.393682>,  <36.255478, 37.035198, 25.938919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429710, 36.573040, 26.393682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594357, 36.912708, 26.526037>,  <36.693142, 37.116508, 26.605450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594357, 36.912708, 26.526037>,  <36.429710, 36.573040, 26.393682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594357, 36.912708, 26.526037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349899, -0.187998, 0.917729,
		0.841514, -0.493526, 0.219742,
		0.411612, 0.849170, 0.330887,
		36.717842, 37.167458, 26.625303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910542, 36.417118, 26.961292>,  <36.429710, 36.573040, 26.393682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910542, 36.417118, 26.961292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808792, 36.798901, 27.023655>,  <36.747742, 37.027969, 27.061071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808792, 36.798901, 27.023655>,  <36.910542, 36.417118, 26.961292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808792, 36.798901, 27.023655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247785, -0.220148, 0.943471,
		0.934825, 0.201360, 0.292499,
		-0.254371, 0.954457, 0.155906,
		36.732479, 37.085239, 27.070427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193451, 36.615173, 27.594135>,  <36.910542, 36.417118, 26.961292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193451, 36.615173, 27.594135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911316, 36.895435, 27.551094>,  <36.742035, 37.063595, 27.525269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911316, 36.895435, 27.551094>,  <37.193451, 36.615173, 27.594135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911316, 36.895435, 27.551094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080663, 0.071481, 0.994175,
		0.704269, 0.709906, 0.006099,
		-0.705335, 0.700659, -0.107605,
		36.699715, 37.105633, 27.518812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468990, 37.244957, 28.002377>,  <37.193451, 36.615173, 27.594135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468990, 37.244957, 28.002377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072781, 37.264133, 27.950886>,  <36.835056, 37.275639, 27.919992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072781, 37.264133, 27.950886>,  <37.468990, 37.244957, 28.002377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072781, 37.264133, 27.950886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127282, 0.032044, 0.991349,
		0.051652, 0.998336, -0.025638,
		-0.990521, 0.047942, -0.128725,
		36.775623, 37.278515, 27.912268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155224, 37.626965, 28.474676>,  <37.468990, 37.244957, 28.002377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155224, 37.626965, 28.474676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781483, 37.506149, 28.399044>,  <36.557236, 37.433662, 28.353664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781483, 37.506149, 28.399044>,  <37.155224, 37.626965, 28.474676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781483, 37.506149, 28.399044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174943, -0.073456, 0.981835,
		-0.310437, 0.950463, 0.015796,
		-0.934358, -0.302034, -0.189080,
		36.501175, 37.415539, 28.342319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701923, 38.031204, 28.859655>,  <37.155224, 37.626965, 28.474676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701923, 38.031204, 28.859655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497101, 37.697582, 28.777536>,  <36.374207, 37.497410, 28.728266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497101, 37.697582, 28.777536>,  <36.701923, 38.031204, 28.859655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497101, 37.697582, 28.777536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344078, -0.019818, 0.938732,
		-0.787022, 0.551326, -0.276832,
		-0.512061, -0.834055, -0.205296,
		36.343483, 37.447365, 28.715948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076782, 38.143223, 29.205145>,  <36.701923, 38.031204, 28.859655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076782, 38.143223, 29.205145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081997, 37.754238, 29.112066>,  <36.085125, 37.520847, 29.056219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081997, 37.754238, 29.112066>,  <36.076782, 38.143223, 29.205145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081997, 37.754238, 29.112066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430168, -0.215537, 0.876641,
		-0.902655, 0.088667, -0.421133,
		0.013041, -0.972462, -0.232697,
		36.085911, 37.462498, 29.042257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387810, 37.881905, 29.314196>,  <36.076782, 38.143223, 29.205145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387810, 37.881905, 29.314196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653294, 37.585560, 29.355419>,  <35.812584, 37.407753, 29.380154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653294, 37.585560, 29.355419>,  <35.387810, 37.881905, 29.314196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653294, 37.585560, 29.355419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355155, -0.190868, 0.915115,
		-0.658300, -0.643970, -0.389800,
		0.663706, -0.740859, 0.103060,
		35.852406, 37.363300, 29.386337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093662, 37.150364, 29.472525>,  <35.387810, 37.881905, 29.314196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093662, 37.150364, 29.472525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471779, 37.112747, 29.597475>,  <35.698650, 37.090176, 29.672445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471779, 37.112747, 29.597475>,  <35.093662, 37.150364, 29.472525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471779, 37.112747, 29.597475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324181, -0.377836, 0.867264,
		0.036465, -0.921084, -0.387653,
		0.945292, -0.094045, 0.312376,
		35.755367, 37.084534, 29.691187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209568, 36.394402, 29.721319>,  <35.093662, 37.150364, 29.472525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209568, 36.394402, 29.721319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492416, 36.602249, 29.913143>,  <35.662125, 36.726955, 30.028238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492416, 36.602249, 29.913143>,  <35.209568, 36.394402, 29.721319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492416, 36.602249, 29.913143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122540, -0.577901, 0.806855,
		0.696392, -0.629310, -0.344973,
		0.707122, 0.519615, 0.479561,
		35.704552, 36.758133, 30.057011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589867, 35.928665, 30.188528>,  <35.209568, 36.394402, 29.721319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589867, 35.928665, 30.188528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703629, 36.280651, 30.340729>,  <35.771885, 36.491840, 30.432049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703629, 36.280651, 30.340729>,  <35.589867, 35.928665, 30.188528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703629, 36.280651, 30.340729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074066, -0.375540, 0.923842,
		0.955838, -0.290929, -0.041630,
		0.284406, 0.879960, 0.380503,
		35.788952, 36.544640, 30.454880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017101, 35.781647, 30.794302>,  <35.589867, 35.928665, 30.188528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017101, 35.781647, 30.794302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921021, 36.166553, 30.845432>,  <35.863373, 36.397499, 30.876110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921021, 36.166553, 30.845432>,  <36.017101, 35.781647, 30.794302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921021, 36.166553, 30.845432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017670, -0.135994, 0.990552,
		0.970562, 0.235676, 0.049670,
		-0.240204, 0.962269, 0.127826,
		35.848961, 36.455235, 30.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264523, 35.822380, 31.493473>,  <36.017101, 35.781647, 30.794302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264523, 35.822380, 31.493473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028702, 36.135746, 31.414793>,  <35.887211, 36.323765, 31.367584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028702, 36.135746, 31.414793>,  <36.264523, 35.822380, 31.493473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028702, 36.135746, 31.414793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258394, 0.047807, 0.964856,
		0.765286, 0.619659, 0.174245,
		-0.589551, 0.783414, -0.196702,
		35.851837, 36.370770, 31.355782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294689, 36.190075, 32.065857>,  <36.264523, 35.822380, 31.493473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294689, 36.190075, 32.065857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980286, 36.392403, 31.923679>,  <35.791645, 36.513798, 31.838373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980286, 36.392403, 31.923679>,  <36.294689, 36.190075, 32.065857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980286, 36.392403, 31.923679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269453, 0.237160, 0.933354,
		0.556404, 0.829399, -0.050115,
		-0.786008, 0.505819, -0.355441,
		35.744484, 36.544147, 31.817047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302265, 36.802666, 32.393185>,  <36.294689, 36.190075, 32.065857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302265, 36.802666, 32.393185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922970, 36.733162, 32.286869>,  <35.695393, 36.691460, 32.223080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922970, 36.733162, 32.286869>,  <36.302265, 36.802666, 32.393185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922970, 36.733162, 32.286869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290796, 0.138897, 0.946650,
		-0.127571, 0.974944, -0.182236,
		-0.948242, -0.173758, -0.265791,
		35.638496, 36.681034, 32.207130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933422, 37.342686, 32.719391>,  <36.302265, 36.802666, 32.393185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933422, 37.342686, 32.719391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680565, 37.040634, 32.649895>,  <35.528851, 36.859406, 32.608196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680565, 37.040634, 32.649895>,  <35.933422, 37.342686, 32.719391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680565, 37.040634, 32.649895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185520, -0.070204, 0.980130,
		-0.752318, 0.651811, -0.095712,
		-0.632140, -0.755125, -0.173739,
		35.490925, 36.814098, 32.597775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352631, 37.525959, 33.135677>,  <35.933422, 37.342686, 32.719391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352631, 37.525959, 33.135677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305901, 37.140137, 33.041035>,  <35.277863, 36.908642, 32.984249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305901, 37.140137, 33.041035>,  <35.352631, 37.525959, 33.135677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305901, 37.140137, 33.041035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316076, -0.189743, 0.929566,
		-0.941513, 0.183386, -0.282705,
		-0.116828, -0.964556, -0.236609,
		35.270851, 36.850769, 32.970051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866413, 37.403828, 33.542179>,  <35.352631, 37.525959, 33.135677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866413, 37.403828, 33.542179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997456, 37.036945, 33.451488>,  <35.076080, 36.816814, 33.397076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997456, 37.036945, 33.451488>,  <34.866413, 37.403828, 33.542179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997456, 37.036945, 33.451488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140008, -0.284447, 0.948413,
		-0.934384, -0.278958, -0.221602,
		0.327602, -0.917209, -0.226727,
		35.095737, 36.761784, 33.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349491, 36.901287, 33.727966>,  <34.866413, 37.403828, 33.542179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349491, 36.901287, 33.727966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709621, 36.727451, 33.737236>,  <34.925701, 36.623150, 33.742798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709621, 36.727451, 33.737236>,  <34.349491, 36.901287, 33.727966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709621, 36.727451, 33.737236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146647, -0.252810, 0.956338,
		-0.409758, -0.864417, -0.291344,
		0.900329, -0.434592, 0.023173,
		34.979721, 36.597073, 33.744186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297291, 36.381252, 34.158760>,  <34.349491, 36.901287, 33.727966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297291, 36.381252, 34.158760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696739, 36.401478, 34.153004>,  <34.936409, 36.413612, 34.149551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696739, 36.401478, 34.153004>,  <34.297291, 36.381252, 34.158760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696739, 36.401478, 34.153004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020246, -0.117253, 0.992896,
		0.048518, -0.991814, -0.118115,
		0.998617, 0.050565, -0.014391,
		34.996323, 36.416649, 34.148685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672207, 35.695885, 34.412766>,  <34.297291, 36.381252, 34.158760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672207, 35.695885, 34.412766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910885, 36.008007, 34.487690>,  <35.054092, 36.195278, 34.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910885, 36.008007, 34.487690>,  <34.672207, 35.695885, 34.412766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910885, 36.008007, 34.487690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086958, -0.294917, 0.951558,
		0.797744, -0.551500, -0.243829,
		0.596694, 0.780302, 0.187311,
		35.089893, 36.242096, 34.543884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245926, 35.370045, 34.818855>,  <34.672207, 35.695885, 34.412766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245926, 35.370045, 34.818855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279213, 35.763691, 34.881577>,  <35.299187, 35.999878, 34.919209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279213, 35.763691, 34.881577>,  <35.245926, 35.370045, 34.818855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279213, 35.763691, 34.881577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255025, -0.173141, 0.951307,
		0.963346, -0.039180, -0.265384,
		0.083221, 0.984118, 0.156802,
		35.304180, 36.058926, 34.928616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639053, 35.393623, 35.378120>,  <35.245926, 35.370045, 34.818855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639053, 35.393623, 35.378120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521942, 35.775974, 35.387726>,  <35.451675, 36.005386, 35.393490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521942, 35.775974, 35.387726>,  <35.639053, 35.393623, 35.378120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521942, 35.775974, 35.387726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081586, -0.000049, 0.996666,
		0.952694, 0.293760, -0.077972,
		-0.292777, 0.955879, 0.024013,
		35.434109, 36.062737, 35.394928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083199, 35.778198, 35.829933>,  <35.639053, 35.393623, 35.378120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083199, 35.778198, 35.829933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755459, 36.006840, 35.812370>,  <35.558815, 36.144024, 35.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755459, 36.006840, 35.812370>,  <36.083199, 35.778198, 35.829933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755459, 36.006840, 35.812370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023070, 0.109397, 0.993730,
		0.572826, 0.813202, -0.102822,
		-0.819352, 0.571607, -0.043905,
		35.509655, 36.178322, 35.799198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123714, 36.293873, 36.236759>,  <36.083199, 35.778198, 35.829933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123714, 36.293873, 36.236759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725471, 36.329182, 36.224281>,  <35.486526, 36.350368, 36.216793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725471, 36.329182, 36.224281>,  <36.123714, 36.293873, 36.236759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725471, 36.329182, 36.224281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031076, 0.002703, 0.999513,
		0.088316, 0.996092, 0.000052,
		-0.995608, 0.088274, -0.031194,
		35.426788, 36.355663, 36.214924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189491, 36.971184, 35.777229>,  <36.123714, 36.293873, 36.236759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189491, 36.971184, 35.777229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533089, 36.801537, 35.891949>,  <36.739246, 36.699749, 35.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533089, 36.801537, 35.891949>,  <36.189491, 36.971184, 35.777229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533089, 36.801537, 35.891949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507448, 0.630863, -0.586949,
		0.068009, 0.649718, 0.757127,
		0.858994, -0.424120, 0.286794,
		36.790787, 36.674301, 35.977985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684200, 37.493797, 35.880268>,  <36.189491, 36.971184, 35.777229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684200, 37.493797, 35.880268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895889, 37.158340, 35.828716>,  <37.022903, 36.957066, 35.797787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895889, 37.158340, 35.828716>,  <36.684200, 37.493797, 35.880268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895889, 37.158340, 35.828716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552941, 0.456089, -0.697309,
		0.643570, 0.297768, 0.705090,
		0.529220, -0.838640, -0.128877,
		37.054657, 36.906750, 35.790054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356670, 37.662167, 35.912365>,  <36.684200, 37.493797, 35.880268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356670, 37.662167, 35.912365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389481, 37.320457, 35.707039>,  <37.409168, 37.115433, 35.583843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389481, 37.320457, 35.707039>,  <37.356670, 37.662167, 35.912365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389481, 37.320457, 35.707039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677061, 0.425717, -0.600294,
		0.731341, -0.298304, 0.613315,
		0.082029, -0.854272, -0.513314,
		37.414089, 37.064175, 35.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090645, 37.531448, 35.884216>,  <37.356670, 37.662167, 35.912365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090645, 37.531448, 35.884216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900665, 37.322403, 35.601006>,  <37.786678, 37.196976, 35.431080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900665, 37.322403, 35.601006>,  <38.090645, 37.531448, 35.884216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900665, 37.322403, 35.601006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588851, 0.409160, -0.697024,
		0.653969, -0.747972, 0.113412,
		-0.474951, -0.522615, -0.708022,
		37.758179, 37.165619, 35.388599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664577, 37.379360, 35.409302>,  <38.090645, 37.531448, 35.884216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664577, 37.379360, 35.409302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339703, 37.282066, 35.197197>,  <38.144775, 37.223690, 35.069935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339703, 37.282066, 35.197197>,  <38.664577, 37.379360, 35.409302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339703, 37.282066, 35.197197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471774, 0.260842, -0.842254,
		0.343186, -0.934235, -0.097098,
		-0.812190, -0.243241, -0.530265,
		38.096046, 37.209095, 35.038116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908646, 37.031616, 34.873898>,  <38.664577, 37.379360, 35.409302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908646, 37.031616, 34.873898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549931, 37.142456, 34.735924>,  <38.334702, 37.208961, 34.653141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549931, 37.142456, 34.735924>,  <38.908646, 37.031616, 34.873898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549931, 37.142456, 34.735924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400394, 0.176513, -0.899182,
		-0.188281, -0.944488, -0.269246,
		-0.896791, 0.277103, -0.344933,
		38.280891, 37.225586, 34.632442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819801, 36.686127, 34.228268>,  <38.908646, 37.031616, 34.873898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819801, 36.686127, 34.228268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557655, 36.988228, 34.224384>,  <38.400368, 37.169487, 34.222054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557655, 36.988228, 34.224384>,  <38.819801, 36.686127, 34.228268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557655, 36.988228, 34.224384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351634, 0.293701, -0.888872,
		-0.668472, -0.585946, -0.458053,
		-0.655361, 0.755253, -0.009708,
		38.361046, 37.214806, 34.221474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456524, 36.594769, 33.624657>,  <38.819801, 36.686127, 34.228268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456524, 36.594769, 33.624657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404461, 36.981804, 33.711212>,  <38.373222, 37.214027, 33.763145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404461, 36.981804, 33.711212>,  <38.456524, 36.594769, 33.624657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404461, 36.981804, 33.711212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097624, 0.229693, -0.968355,
		-0.986676, -0.104914, -0.124356,
		-0.130158, 0.967592, 0.216390,
		38.365414, 37.272083, 33.776131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944035, 36.928986, 33.116108>,  <38.456524, 36.594769, 33.624657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944035, 36.928986, 33.116108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177246, 37.214191, 33.271893>,  <38.317173, 37.385315, 33.365364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177246, 37.214191, 33.271893>,  <37.944035, 36.928986, 33.116108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177246, 37.214191, 33.271893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142514, 0.382175, -0.913035,
		-0.799852, 0.587832, 0.121205,
		0.583033, 0.713019, 0.389458,
		38.352158, 37.428097, 33.388729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691978, 37.608646, 32.931938>,  <37.944035, 36.928986, 33.116108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691978, 37.608646, 32.931938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086018, 37.638260, 32.994030>,  <38.322441, 37.656029, 33.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086018, 37.638260, 32.994030>,  <37.691978, 37.608646, 32.931938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086018, 37.638260, 32.994030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125896, 0.304486, -0.944160,
		-0.117167, 0.949635, 0.290628,
		0.985100, 0.074036, 0.155231,
		38.381546, 37.660469, 33.040600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866623, 38.210876, 32.541477>,  <37.691978, 37.608646, 32.931938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866623, 38.210876, 32.541477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214050, 38.024323, 32.608501>,  <38.422508, 37.912392, 32.648716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214050, 38.024323, 32.608501>,  <37.866623, 38.210876, 32.541477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214050, 38.024323, 32.608501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210713, 0.041518, -0.976666,
		0.448543, 0.883608, 0.134334,
		0.868568, -0.466382, 0.167565,
		38.474621, 37.884407, 32.658772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387562, 38.507618, 32.204628>,  <37.866623, 38.210876, 32.541477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387562, 38.507618, 32.204628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584423, 38.163799, 32.259716>,  <38.702538, 37.957508, 32.292770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584423, 38.163799, 32.259716>,  <38.387562, 38.507618, 32.204628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584423, 38.163799, 32.259716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331857, 0.038996, -0.942523,
		0.804773, 0.509566, 0.304439,
		0.492149, -0.859548, 0.137720,
		38.732067, 37.905933, 32.301033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063744, 38.583286, 31.902575>,  <38.387562, 38.507618, 32.204628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063744, 38.583286, 31.902575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991070, 38.190926, 31.930368>,  <38.947464, 37.955509, 31.947044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991070, 38.190926, 31.930368>,  <39.063744, 38.583286, 31.902575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991070, 38.190926, 31.930368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359107, -0.131963, -0.923920,
		0.915441, -0.142911, 0.376224,
		-0.181686, -0.980899, 0.069484,
		38.936565, 37.896656, 31.951214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587170, 38.292336, 31.599207>,  <39.063744, 38.583286, 31.902575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587170, 38.292336, 31.599207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290905, 38.024078, 31.582914>,  <39.113148, 37.863125, 31.573139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290905, 38.024078, 31.582914>,  <39.587170, 38.292336, 31.599207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290905, 38.024078, 31.582914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316754, -0.295070, -0.901443,
		0.592531, -0.680563, 0.430976,
		-0.740657, -0.670647, -0.040732,
		39.068707, 37.822884, 31.570694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801647, 37.753754, 31.274700>,  <39.587170, 38.292336, 31.599207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801647, 37.753754, 31.274700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414230, 37.663956, 31.231741>,  <39.181782, 37.610077, 31.205965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414230, 37.663956, 31.231741>,  <39.801647, 37.753754, 31.274700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414230, 37.663956, 31.231741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185410, -0.363084, -0.913123,
		0.165996, -0.904308, 0.393284,
		-0.968539, -0.224493, -0.107397,
		39.123669, 37.596607, 31.199522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804665, 37.110176, 30.998968>,  <39.801647, 37.753754, 31.274700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804665, 37.110176, 30.998968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441280, 37.261272, 30.927404>,  <39.223248, 37.351929, 30.884466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441280, 37.261272, 30.927404>,  <39.804665, 37.110176, 30.998968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441280, 37.261272, 30.927404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060468, -0.304761, -0.950507,
		-0.413569, -0.874319, 0.254023,
		-0.908463, 0.377740, -0.178908,
		39.168739, 37.374596, 30.873732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323738, 36.508896, 30.815399>,  <39.804665, 37.110176, 30.998968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323738, 36.508896, 30.815399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223671, 36.860653, 30.653364>,  <39.163631, 37.071705, 30.556143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223671, 36.860653, 30.653364>,  <39.323738, 36.508896, 30.815399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223671, 36.860653, 30.653364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169060, -0.451636, -0.876039,
		-0.953330, -0.150669, 0.261652,
		-0.250164, 0.879388, -0.405086,
		39.148621, 37.124470, 30.531839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817047, 36.476212, 30.300814>,  <39.323738, 36.508896, 30.815399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817047, 36.476212, 30.300814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912296, 36.849880, 30.194515>,  <38.969448, 37.074081, 30.130735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912296, 36.849880, 30.194515>,  <38.817047, 36.476212, 30.300814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912296, 36.849880, 30.194515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060550, -0.258805, -0.964030,
		-0.969345, 0.245650, -0.005064,
		0.238125, 0.934171, -0.265746,
		38.983734, 37.130131, 30.114792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425510, 36.552673, 29.746620>,  <38.817047, 36.476212, 30.300814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425510, 36.552673, 29.746620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680809, 36.856094, 29.694090>,  <38.833988, 37.038147, 29.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680809, 36.856094, 29.694090>,  <38.425510, 36.552673, 29.746620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680809, 36.856094, 29.694090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017163, -0.184567, -0.982670,
		-0.769643, 0.624929, -0.130818,
		0.638243, 0.758551, -0.131326,
		38.872280, 37.083660, 29.654692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119873, 36.996433, 29.316402>,  <38.425510, 36.552673, 29.746620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119873, 36.996433, 29.316402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513943, 37.061626, 29.294952>,  <38.750385, 37.100742, 29.282082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513943, 37.061626, 29.294952>,  <38.119873, 36.996433, 29.316402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513943, 37.061626, 29.294952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036581, -0.105833, -0.993711,
		-0.167630, 0.980937, -0.098301,
		0.985171, 0.162980, -0.053625,
		38.809494, 37.110519, 29.278866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144943, 37.467133, 28.746595>,  <38.119873, 36.996433, 29.316402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144943, 37.467133, 28.746595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532295, 37.373348, 28.780695>,  <38.764706, 37.317078, 28.801155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532295, 37.373348, 28.780695>,  <38.144943, 37.467133, 28.746595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532295, 37.373348, 28.780695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062906, -0.101179, -0.992877,
		0.241417, 0.966846, -0.083231,
		0.968380, -0.234461, 0.085247,
		38.822811, 37.303009, 28.806269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545406, 37.927605, 28.339489>,  <38.144943, 37.467133, 28.746595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545406, 37.927605, 28.339489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779125, 37.605732, 28.381605>,  <38.919357, 37.412609, 28.406874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779125, 37.605732, 28.381605>,  <38.545406, 37.927605, 28.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779125, 37.605732, 28.381605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040764, -0.100473, -0.994105,
		0.810517, 0.585142, -0.025904,
		0.584294, -0.804683, 0.105288,
		38.954414, 37.364326, 28.413191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139385, 38.084450, 27.966557>,  <38.545406, 37.927605, 28.339489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139385, 38.084450, 27.966557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062168, 37.693325, 27.999084>,  <39.015839, 37.458649, 28.018600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062168, 37.693325, 27.999084>,  <39.139385, 38.084450, 27.966557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062168, 37.693325, 27.999084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016712, -0.086142, -0.996143,
		0.981048, -0.190937, 0.032970,
		-0.193041, -0.977815, 0.081318,
		39.004257, 37.399979, 28.023479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600704, 37.851276, 27.553343>,  <39.139385, 38.084450, 27.966557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600704, 37.851276, 27.553343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343773, 37.545513, 27.575590>,  <39.189613, 37.362057, 27.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343773, 37.545513, 27.575590>,  <39.600704, 37.851276, 27.553343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343773, 37.545513, 27.575590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120515, -0.172403, -0.977627,
		0.756893, -0.621257, 0.202862,
		-0.642331, -0.764407, 0.055620,
		39.151073, 37.316193, 27.592276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906578, 37.258736, 27.052711>,  <39.600704, 37.851276, 27.553343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906578, 37.258736, 27.052711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528618, 37.138721, 27.105076>,  <39.301842, 37.066711, 27.136494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528618, 37.138721, 27.105076>,  <39.906578, 37.258736, 27.052711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528618, 37.138721, 27.105076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055824, -0.246352, -0.967571,
		0.322559, -0.921568, 0.216029,
		-0.944902, -0.300040, 0.130909,
		39.245148, 37.048710, 27.144348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906567, 36.620678, 26.793707>,  <39.906578, 37.258736, 27.052711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906567, 36.620678, 26.793707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522316, 36.731205, 26.782099>,  <39.291763, 36.797520, 26.775133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522316, 36.731205, 26.782099>,  <39.906567, 36.620678, 26.793707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522316, 36.731205, 26.782099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049610, -0.273368, -0.960629,
		-0.273368, -0.921369, 0.276313,
		0.960629, -0.276313, 0.029020,
		39.234127, 36.814098, 26.773392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619816, 36.053078, 26.455393>,  <39.906567, 36.620678, 26.793707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619816, 36.053078, 26.455393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359989, 36.355541, 26.423670>,  <39.204094, 36.537018, 26.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359989, 36.355541, 26.423670>,  <39.619816, 36.053078, 26.455393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359989, 36.355541, 26.423670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134560, -0.216996, -0.966854,
		-0.748300, -0.617367, 0.242702,
		-0.649569, 0.756155, -0.079305,
		39.165119, 36.582386, 26.399878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070011, 35.802925, 26.216003>,  <39.619816, 36.053078, 26.455393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070011, 35.802925, 26.216003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059261, 36.188995, 26.111921>,  <39.052811, 36.420639, 26.049471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059261, 36.188995, 26.111921>,  <39.070011, 35.802925, 26.216003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059261, 36.188995, 26.111921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075887, -0.261519, -0.962211,
		-0.996754, -0.006111, 0.080273,
		-0.026873, 0.965179, -0.260206,
		39.051201, 36.478550, 26.033859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580864, 35.802109, 25.774422>,  <39.070011, 35.802925, 26.216003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580864, 35.802109, 25.774422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812286, 36.122829, 25.714581>,  <38.951141, 36.315262, 25.678677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812286, 36.122829, 25.714581>,  <38.580864, 35.802109, 25.774422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812286, 36.122829, 25.714581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220004, -0.330029, -0.917975,
		-0.785408, 0.498190, -0.367341,
		0.578560, 0.801802, -0.149604,
		38.985855, 36.363369, 25.669699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480412, 35.875313, 25.091921>,  <38.580864, 35.802109, 25.774422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480412, 35.875313, 25.091921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806393, 36.094131, 25.168436>,  <39.001984, 36.225422, 25.214344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806393, 36.094131, 25.168436>,  <38.480412, 35.875313, 25.091921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806393, 36.094131, 25.168436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390098, -0.273731, -0.879145,
		-0.428570, 0.791084, -0.436479,
		0.814955, 0.547044, 0.191287,
		39.050880, 36.258244, 25.225822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706207, 36.230415, 24.418148>,  <38.480412, 35.875313, 25.091921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706207, 36.230415, 24.418148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025032, 36.195396, 24.657152>,  <39.216328, 36.174385, 24.800554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025032, 36.195396, 24.657152>,  <38.706207, 36.230415, 24.418148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025032, 36.195396, 24.657152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590226, -0.096369, -0.801465,
		0.127744, 0.991488, -0.025143,
		0.797067, -0.087543, 0.597512,
		39.264153, 36.169132, 24.836407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166279, 36.598026, 24.086370>,  <38.706207, 36.230415, 24.418148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166279, 36.598026, 24.086370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385372, 36.385609, 24.344976>,  <39.516830, 36.258160, 24.500139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385372, 36.385609, 24.344976>,  <39.166279, 36.598026, 24.086370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385372, 36.385609, 24.344976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723188, -0.088046, -0.685016,
		0.420694, 0.842760, 0.335815,
		0.547737, -0.531040, 0.646514,
		39.549694, 36.226295, 24.538931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860416, 36.898876, 24.162245>,  <39.166279, 36.598026, 24.086370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860416, 36.898876, 24.162245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884083, 36.514484, 24.270325>,  <39.898281, 36.283848, 24.335173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884083, 36.514484, 24.270325>,  <39.860416, 36.898876, 24.162245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884083, 36.514484, 24.270325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751631, -0.135240, -0.645569,
		0.656924, 0.241288, 0.714304,
		0.059165, -0.960984, 0.270202,
		39.901833, 36.226189, 24.351385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514610, 36.802231, 24.128927>,  <39.860416, 36.898876, 24.162245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514610, 36.802231, 24.128927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366562, 36.430786, 24.118479>,  <40.277733, 36.207920, 24.112209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366562, 36.430786, 24.118479>,  <40.514610, 36.802231, 24.128927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366562, 36.430786, 24.118479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712874, -0.265879, -0.648937,
		0.595668, -0.258806, 0.760394,
		-0.370122, -0.928616, -0.026120,
		40.255524, 36.152203, 24.110643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110218, 36.384789, 24.134333>,  <40.514610, 36.802231, 24.128927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110218, 36.384789, 24.134333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815762, 36.159409, 23.984335>,  <40.639088, 36.024181, 23.894337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815762, 36.159409, 23.984335>,  <41.110218, 36.384789, 24.134333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815762, 36.159409, 23.984335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578402, -0.235972, -0.780877,
		0.351499, -0.791731, 0.499610,
		-0.736139, -0.563452, -0.374995,
		40.594921, 35.990372, 23.871836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427597, 35.870747, 23.791716>,  <41.110218, 36.384789, 24.134333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427597, 35.870747, 23.791716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055050, 35.848709, 23.647758>,  <40.831520, 35.835487, 23.561384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055050, 35.848709, 23.647758>,  <41.427597, 35.870747, 23.791716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055050, 35.848709, 23.647758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363831, -0.104087, -0.925631,
		0.013534, -0.993041, 0.116987,
		-0.931367, -0.055090, -0.359891,
		40.775639, 35.832184, 23.539791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461773, 35.381744, 23.285500>,  <41.427597, 35.870747, 23.791716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461773, 35.381744, 23.285500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128906, 35.592709, 23.217001>,  <40.929184, 35.719288, 23.175901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128906, 35.592709, 23.217001>,  <41.461773, 35.381744, 23.285500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128906, 35.592709, 23.217001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234688, 0.055183, -0.970503,
		-0.502408, -0.847814, -0.169699,
		-0.832170, 0.527415, -0.171247,
		40.879253, 35.750935, 23.165627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065655, 35.062222, 22.752937>,  <41.461773, 35.381744, 23.285500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065655, 35.062222, 22.752937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957493, 35.446869, 22.734312>,  <40.892593, 35.677658, 22.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957493, 35.446869, 22.734312>,  <41.065655, 35.062222, 22.752937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957493, 35.446869, 22.734312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192511, 0.006621, -0.981272,
		-0.943302, -0.274306, -0.186913,
		-0.270407, 0.961620, -0.046561,
		40.876369, 35.735355, 22.720345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642155, 34.618313, 22.524149>,  <41.065655, 35.062222, 22.752937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642155, 34.618313, 22.524149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786121, 34.259647, 22.421030>,  <41.872501, 34.044449, 22.359159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786121, 34.259647, 22.421030>,  <41.642155, 34.618313, 22.524149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786121, 34.259647, 22.421030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547704, -0.426754, 0.719653,
		-0.755300, -0.117820, -0.644701,
		0.359919, -0.896660, -0.257797,
		41.894096, 33.990650, 22.343691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026516, 34.165054, 22.502310>,  <41.642155, 34.618313, 22.524149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026516, 34.165054, 22.502310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363346, 33.957157, 22.559965>,  <41.565445, 33.832417, 22.594559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363346, 33.957157, 22.559965>,  <41.026516, 34.165054, 22.502310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363346, 33.957157, 22.559965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436538, -0.499798, 0.748089,
		-0.316777, -0.692868, -0.647756,
		0.842073, -0.519747, 0.144139,
		41.615967, 33.801231, 22.603207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723873, 33.506969, 22.686031>,  <41.026516, 34.165054, 22.502310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723873, 33.506969, 22.686031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105854, 33.521748, 22.803814>,  <41.335041, 33.530613, 22.874483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105854, 33.521748, 22.803814>,  <40.723873, 33.506969, 22.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105854, 33.521748, 22.803814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283454, -0.180277, 0.941888,
		0.087885, -0.982922, -0.161683,
		0.954950, 0.036948, 0.294457,
		41.392338, 33.532833, 22.892151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724659, 32.946201, 23.077717>,  <40.723873, 33.506969, 22.686031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724659, 32.946201, 23.077717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047020, 33.148777, 23.200382>,  <41.240437, 33.270321, 23.273981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047020, 33.148777, 23.200382>,  <40.724659, 32.946201, 23.077717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047020, 33.148777, 23.200382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366583, 0.020103, 0.930168,
		0.464907, -0.862042, 0.201852,
		0.805902, 0.506437, 0.306664,
		41.288792, 33.300709, 23.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075790, 32.593102, 23.727859>,  <40.724659, 32.946201, 23.077717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075790, 32.593102, 23.727859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156353, 32.984901, 23.729050>,  <41.204693, 33.219982, 23.729765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156353, 32.984901, 23.729050>,  <41.075790, 32.593102, 23.727859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156353, 32.984901, 23.729050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218392, 0.041944, 0.974959,
		0.954850, -0.197017, 0.222363,
		0.201411, 0.979503, 0.002977,
		41.216778, 33.278751, 23.729942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377720, 32.654358, 24.286509>,  <41.075790, 32.593102, 23.727859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377720, 32.654358, 24.286509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280052, 33.032280, 24.199123>,  <41.221451, 33.259033, 24.146692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280052, 33.032280, 24.199123>,  <41.377720, 32.654358, 24.286509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280052, 33.032280, 24.199123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193370, 0.173321, 0.965695,
		0.950257, 0.278037, 0.140377,
		-0.244169, 0.944804, -0.218463,
		41.206802, 33.315720, 24.133585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733624, 33.077835, 24.784554>,  <41.377720, 32.654358, 24.286509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733624, 33.077835, 24.784554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414658, 33.278942, 24.651077>,  <41.223278, 33.399605, 24.570992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414658, 33.278942, 24.651077>,  <41.733624, 33.077835, 24.784554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414658, 33.278942, 24.651077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234453, 0.251402, 0.939057,
		0.556016, 0.827057, -0.082598,
		-0.797419, 0.502766, -0.333690,
		41.175430, 33.429771, 24.550970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713379, 33.526752, 25.292364>,  <41.733624, 33.077835, 24.784554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713379, 33.526752, 25.292364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360580, 33.610191, 25.123331>,  <41.148903, 33.660255, 25.021912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360580, 33.610191, 25.123331>,  <41.713379, 33.526752, 25.292364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360580, 33.610191, 25.123331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328307, 0.371325, 0.868523,
		0.338091, 0.904766, -0.259021,
		-0.881991, 0.208602, -0.422583,
		41.095982, 33.672771, 24.996555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577660, 34.254021, 25.408175>,  <41.713379, 33.526752, 25.292364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577660, 34.254021, 25.408175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226124, 34.075771, 25.339983>,  <41.015202, 33.968822, 25.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226124, 34.075771, 25.339983>,  <41.577660, 34.254021, 25.408175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226124, 34.075771, 25.339983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347712, 0.353525, 0.868399,
		-0.326710, 0.822460, -0.465639,
		-0.878839, -0.445623, -0.170479,
		40.962471, 33.942085, 25.288839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964607, 34.722687, 25.587355>,  <41.577660, 34.254021, 25.408175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964607, 34.722687, 25.587355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821560, 34.349499, 25.603712>,  <40.735733, 34.125587, 25.613525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821560, 34.349499, 25.603712>,  <40.964607, 34.722687, 25.587355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821560, 34.349499, 25.603712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325790, 0.165677, 0.930812,
		-0.875197, 0.319555, -0.363202,
		-0.357620, -0.932972, 0.040892,
		40.714275, 34.069607, 25.615980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334595, 34.882595, 25.978907>,  <40.964607, 34.722687, 25.587355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334595, 34.882595, 25.978907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381950, 34.486557, 26.009108>,  <40.410362, 34.248936, 26.027229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381950, 34.486557, 26.009108>,  <40.334595, 34.882595, 25.978907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381950, 34.486557, 26.009108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228644, 0.046814, 0.972384,
		-0.966285, -0.132380, -0.220837,
		0.118386, -0.990093, 0.075503,
		40.417465, 34.189529, 26.031759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703648, 34.725731, 26.273149>,  <40.334595, 34.882595, 25.978907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703648, 34.725731, 26.273149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968700, 34.441879, 26.368935>,  <40.127731, 34.271568, 26.426405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968700, 34.441879, 26.368935>,  <39.703648, 34.725731, 26.273149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968700, 34.441879, 26.368935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125142, 0.210329, 0.969588,
		-0.738417, -0.672446, 0.050566,
		0.662631, -0.709632, 0.239462,
		40.167488, 34.228989, 26.440773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325085, 34.263729, 26.783878>,  <39.703648, 34.725731, 26.273149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325085, 34.263729, 26.783878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721703, 34.238350, 26.829165>,  <39.959671, 34.223122, 26.856337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721703, 34.238350, 26.829165>,  <39.325085, 34.263729, 26.783878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721703, 34.238350, 26.829165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102316, 0.154534, 0.982675,
		-0.079847, -0.985948, 0.146735,
		0.991543, -0.063451, 0.113217,
		40.019165, 34.219315, 26.863131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321407, 33.917191, 27.390060>,  <39.325085, 34.263729, 26.783878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321407, 33.917191, 27.390060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694305, 34.052231, 27.338005>,  <39.918045, 34.133255, 27.306772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694305, 34.052231, 27.338005>,  <39.321407, 33.917191, 27.390060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694305, 34.052231, 27.338005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017808, 0.316431, 0.948448,
		0.361383, -0.886506, 0.288979,
		0.932248, 0.337607, -0.130140,
		39.973980, 34.153511, 27.298964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713474, 33.525085, 27.863598>,  <39.321407, 33.917191, 27.390060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713474, 33.525085, 27.863598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865410, 33.885674, 27.780575>,  <39.956570, 34.102024, 27.730761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865410, 33.885674, 27.780575>,  <39.713474, 33.525085, 27.863598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865410, 33.885674, 27.780575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025883, 0.213931, 0.976506,
		0.924691, -0.376285, 0.057926,
		0.379837, 0.901467, -0.207560,
		39.979362, 34.156113, 27.718307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315674, 33.728691, 28.305422>,  <39.713474, 33.525085, 27.863598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315674, 33.728691, 28.305422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162460, 34.083321, 28.201668>,  <40.070534, 34.296097, 28.139416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162460, 34.083321, 28.201668>,  <40.315674, 33.728691, 28.305422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162460, 34.083321, 28.201668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019318, 0.288425, 0.957308,
		0.923533, 0.361669, -0.127603,
		-0.383032, 0.886570, -0.259384,
		40.047550, 34.349293, 28.123852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727608, 34.277611, 28.710171>,  <40.315674, 33.728691, 28.305422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727608, 34.277611, 28.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399780, 34.466389, 28.580200>,  <40.203083, 34.579655, 28.502218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399780, 34.466389, 28.580200>,  <40.727608, 34.277611, 28.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399780, 34.466389, 28.580200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147598, 0.374056, 0.915586,
		0.553644, 0.798344, -0.236907,
		-0.819569, 0.471942, -0.324928,
		40.153908, 34.607971, 28.482721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831032, 34.912056, 28.877035>,  <40.727608, 34.277611, 28.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831032, 34.912056, 28.877035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433926, 34.903168, 28.829844>,  <40.195660, 34.897835, 28.801529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433926, 34.903168, 28.829844>,  <40.831032, 34.912056, 28.877035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433926, 34.903168, 28.829844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118774, 0.324904, 0.938259,
		0.017482, 0.945486, -0.325193,
		-0.992767, -0.022222, -0.117980,
		40.136097, 34.896500, 28.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572441, 35.571068, 29.040567>,  <40.831032, 34.912056, 28.877035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572441, 35.571068, 29.040567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247063, 35.339558, 29.063631>,  <40.051834, 35.200653, 29.077469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247063, 35.339558, 29.063631>,  <40.572441, 35.571068, 29.040567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247063, 35.339558, 29.063631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235720, 0.418664, 0.877016,
		-0.531736, 0.699813, -0.476989,
		-0.813445, -0.578777, 0.057659,
		40.003029, 35.165924, 29.080929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997330, 36.028908, 29.171204>,  <40.572441, 35.571068, 29.040567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997330, 36.028908, 29.171204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952847, 35.655430, 29.307352>,  <39.926155, 35.431343, 29.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952847, 35.655430, 29.307352>,  <39.997330, 36.028908, 29.171204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952847, 35.655430, 29.307352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159670, 0.354835, 0.921194,
		-0.980886, 0.048099, -0.188544,
		-0.111211, -0.933691, 0.340373,
		39.919483, 35.375324, 29.409464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329128, 36.040466, 29.600004>,  <39.997330, 36.028908, 29.171204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329128, 36.040466, 29.600004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505196, 35.700047, 29.714520>,  <39.610836, 35.495792, 29.783228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505196, 35.700047, 29.714520>,  <39.329128, 36.040466, 29.600004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505196, 35.700047, 29.714520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287463, 0.168492, 0.942855,
		-0.850656, -0.497313, -0.170481,
		0.440169, -0.851052, 0.286288,
		39.637245, 35.444733, 29.800406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847443, 35.791313, 29.995176>,  <39.329128, 36.040466, 29.600004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847443, 35.791313, 29.995176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171127, 35.593410, 30.121918>,  <39.365337, 35.474667, 30.197962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171127, 35.593410, 30.121918>,  <38.847443, 35.791313, 29.995176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171127, 35.593410, 30.121918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290658, 0.131559, 0.947740,
		-0.510587, -0.859014, -0.037347,
		0.809209, -0.494759, 0.316851,
		39.413891, 35.444984, 30.216972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631783, 35.438354, 30.499826>,  <38.847443, 35.791313, 29.995176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631783, 35.438354, 30.499826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028156, 35.432480, 30.553253>,  <39.265980, 35.428955, 30.585310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028156, 35.432480, 30.553253>,  <38.631783, 35.438354, 30.499826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028156, 35.432480, 30.553253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134223, -0.061293, 0.989054,
		-0.006338, -0.998012, -0.062709,
		0.990931, -0.014685, 0.133568,
		39.325436, 35.428074, 30.593323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769081, 34.913784, 31.001020>,  <38.631783, 35.438354, 30.499826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769081, 34.913784, 31.001020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110954, 35.121311, 31.008503>,  <39.316078, 35.245827, 31.012993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110954, 35.121311, 31.008503>,  <38.769081, 34.913784, 31.001020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110954, 35.121311, 31.008503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006306, -0.046403, 0.998903,
		0.519118, -0.853624, -0.042932,
		0.854680, 0.518819, 0.018706,
		39.367359, 35.276958, 31.014114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122276, 34.541428, 31.532753>,  <38.769081, 34.913784, 31.001020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122276, 34.541428, 31.532753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315769, 34.887222, 31.478090>,  <39.431866, 35.094700, 31.445292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315769, 34.887222, 31.478090>,  <39.122276, 34.541428, 31.532753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315769, 34.887222, 31.478090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267854, 0.002425, 0.963457,
		0.833222, -0.502658, -0.230382,
		0.483730, 0.864482, -0.136659,
		39.460888, 35.146568, 31.437092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890621, 34.396915, 31.684124>,  <39.122276, 34.541428, 31.532753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890621, 34.396915, 31.684124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813805, 34.785686, 31.738497>,  <39.767715, 35.018948, 31.771120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813805, 34.785686, 31.738497>,  <39.890621, 34.396915, 31.684124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813805, 34.785686, 31.738497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448755, -0.036213, 0.892921,
		0.872776, 0.232481, -0.429202,
		-0.192044, 0.971927, 0.135933,
		39.756191, 35.077263, 31.779276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533062, 34.733288, 31.930779>,  <39.890621, 34.396915, 31.684124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533062, 34.733288, 31.930779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210114, 34.948509, 32.027649>,  <40.016346, 35.077644, 32.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210114, 34.948509, 32.027649>,  <40.533062, 34.733288, 31.930779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210114, 34.948509, 32.027649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299064, 0.019343, 0.954037,
		0.508642, 0.842686, -0.176530,
		-0.807369, 0.538057, 0.242178,
		39.967903, 35.109928, 32.100304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733597, 35.278557, 32.326859>,  <40.533062, 34.733288, 31.930779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733597, 35.278557, 32.326859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345295, 35.261791, 32.421413>,  <40.112312, 35.251732, 32.478146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345295, 35.261791, 32.421413>,  <40.733597, 35.278557, 32.326859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345295, 35.261791, 32.421413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214779, 0.288327, 0.933133,
		-0.107269, 0.956614, -0.270892,
		-0.970754, -0.041914, 0.236389,
		40.054070, 35.249218, 32.492329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601013, 35.805908, 32.852970>,  <40.733597, 35.278557, 32.326859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601013, 35.805908, 32.852970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289886, 35.557686, 32.892807>,  <40.103210, 35.408752, 32.916710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289886, 35.557686, 32.892807>,  <40.601013, 35.805908, 32.852970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289886, 35.557686, 32.892807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108725, 0.023210, 0.993801,
		-0.619017, 0.783822, 0.049416,
		-0.777816, -0.620552, 0.099589,
		40.056541, 35.371521, 32.922684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232788, 36.059444, 33.467522>,  <40.601013, 35.805908, 32.852970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232788, 36.059444, 33.467522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087070, 35.693081, 33.400105>,  <39.999641, 35.473263, 33.359653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087070, 35.693081, 33.400105>,  <40.232788, 36.059444, 33.467522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087070, 35.693081, 33.400105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011562, -0.176514, 0.984230,
		-0.931214, 0.360494, 0.053713,
		-0.364290, -0.915908, -0.168540,
		39.977783, 35.418308, 33.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704178, 36.047974, 33.856190>,  <40.232788, 36.059444, 33.467522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704178, 36.047974, 33.856190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777817, 35.657059, 33.814201>,  <39.822002, 35.422508, 33.789009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777817, 35.657059, 33.814201>,  <39.704178, 36.047974, 33.856190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777817, 35.657059, 33.814201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144945, -0.132625, 0.980511,
		-0.972161, -0.165296, -0.166069,
		0.184100, -0.977286, -0.104974,
		39.833046, 35.363873, 33.782711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087616, 35.816628, 34.127853>,  <39.704178, 36.047974, 33.856190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087616, 35.816628, 34.127853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373184, 35.537174, 34.146774>,  <39.544525, 35.369503, 34.158127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373184, 35.537174, 34.146774>,  <39.087616, 35.816628, 34.127853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373184, 35.537174, 34.146774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266779, -0.208916, 0.940842,
		-0.647417, -0.684304, -0.335529,
		0.713919, -0.698629, 0.047302,
		39.587360, 35.327587, 34.160965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734417, 35.290474, 34.329990>,  <39.087616, 35.816628, 34.127853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734417, 35.290474, 34.329990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112041, 35.185482, 34.409843>,  <39.338615, 35.122486, 34.457756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112041, 35.185482, 34.409843>,  <38.734417, 35.290474, 34.329990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112041, 35.185482, 34.409843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295518, -0.404691, 0.865387,
		-0.146359, -0.875973, -0.459620,
		0.944059, -0.262483, 0.199635,
		39.395260, 35.106735, 34.469734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571266, 34.679409, 34.658871>,  <38.734417, 35.290474, 34.329990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571266, 34.679409, 34.658871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957188, 34.739243, 34.745377>,  <39.188740, 34.775143, 34.797279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957188, 34.739243, 34.745377>,  <38.571266, 34.679409, 34.658871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957188, 34.739243, 34.745377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085413, -0.599576, 0.795747,
		0.248698, -0.786215, -0.565699,
		0.964808, 0.149582, 0.216266,
		39.246632, 34.784119, 34.810257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921368, 33.976959, 34.816990>,  <38.571266, 34.679409, 34.658871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921368, 33.976959, 34.816990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148842, 34.252502, 34.996799>,  <39.285328, 34.417828, 35.104687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148842, 34.252502, 34.996799>,  <38.921368, 33.976959, 34.816990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148842, 34.252502, 34.996799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005749, -0.549816, 0.835266,
		0.822533, -0.472421, -0.316635,
		0.568689, 0.688854, 0.449526,
		39.319447, 34.459160, 35.131657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499241, 33.682335, 35.057446>,  <38.921368, 33.976959, 34.816990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499241, 33.682335, 35.057446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535107, 34.006420, 35.289143>,  <39.556625, 34.200871, 35.428162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535107, 34.006420, 35.289143>,  <39.499241, 33.682335, 35.057446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535107, 34.006420, 35.289143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190124, -0.584811, 0.788574,
		0.977657, 0.039421, -0.206477,
		0.089663, 0.810211, 0.579239,
		39.562004, 34.249485, 35.462914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183064, 33.614326, 35.351906>,  <39.499241, 33.682335, 35.057446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183064, 33.614326, 35.351906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962814, 33.844826, 35.593487>,  <39.830666, 33.983124, 35.738434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962814, 33.844826, 35.593487>,  <40.183064, 33.614326, 35.351906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962814, 33.844826, 35.593487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165697, -0.633660, 0.755659,
		0.818146, 0.516153, 0.253423,
		-0.550619, 0.576248, 0.603951,
		39.797630, 34.017700, 35.774673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494530, 33.817410, 35.936974>,  <40.183064, 33.614326, 35.351906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494530, 33.817410, 35.936974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122650, 33.897110, 36.060883>,  <39.899525, 33.944931, 36.135227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122650, 33.897110, 36.060883>,  <40.494530, 33.817410, 35.936974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122650, 33.897110, 36.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186492, -0.470611, 0.862407,
		0.317622, 0.859548, 0.400366,
		-0.929697, 0.199255, 0.309775,
		39.843742, 33.956886, 36.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564190, 34.174236, 36.544907>,  <40.494530, 33.817410, 35.936974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564190, 34.174236, 36.544907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209358, 33.990471, 36.526924>,  <39.996460, 33.880211, 36.516132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209358, 33.990471, 36.526924>,  <40.564190, 34.174236, 36.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209358, 33.990471, 36.526924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267005, -0.590118, 0.761885,
		-0.376552, 0.663851, 0.646150,
		-0.887083, -0.459415, -0.044959,
		39.943233, 33.852646, 36.513435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347885, 34.223850, 37.251732>,  <40.564190, 34.174236, 36.544907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347885, 34.223850, 37.251732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130108, 33.945797, 37.063953>,  <39.999443, 33.778965, 36.951286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130108, 33.945797, 37.063953>,  <40.347885, 34.223850, 37.251732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130108, 33.945797, 37.063953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086161, -0.603050, 0.793036,
		-0.834363, 0.391312, 0.388217,
		-0.544440, -0.695129, -0.469447,
		39.966778, 33.737259, 36.923119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866661, 33.988609, 37.743755>,  <40.347885, 34.223850, 37.251732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866661, 33.988609, 37.743755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850037, 33.686756, 37.481823>,  <39.840061, 33.505646, 37.324661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850037, 33.686756, 37.481823>,  <39.866661, 33.988609, 37.743755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850037, 33.686756, 37.481823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053546, -0.652776, 0.755656,
		-0.997700, 0.066473, -0.013274,
		-0.041566, -0.754629, -0.654834,
		39.837566, 33.460369, 37.285374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297256, 33.539993, 38.013340>,  <39.866661, 33.988609, 37.743755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297256, 33.539993, 38.013340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565948, 33.329559, 37.804722>,  <39.727165, 33.203297, 37.679550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565948, 33.329559, 37.804722>,  <39.297256, 33.539993, 38.013340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565948, 33.329559, 37.804722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015152, -0.694127, 0.719693,
		-0.740638, -0.491344, -0.458297,
		0.671733, -0.526088, -0.521542,
		39.767467, 33.171734, 37.648258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239197, 32.916950, 38.304901>,  <39.297256, 33.539993, 38.013340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239197, 32.916950, 38.304901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556782, 32.842396, 38.073421>,  <39.747334, 32.797665, 37.934532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556782, 32.842396, 38.073421>,  <39.239197, 32.916950, 38.304901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556782, 32.842396, 38.073421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130250, -0.877605, 0.461351,
		-0.593855, -0.441669, -0.672506,
		0.793959, -0.186382, -0.578697,
		39.794968, 32.786480, 37.899811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063660, 32.256832, 38.002415>,  <39.239197, 32.916950, 38.304901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063660, 32.256832, 38.002415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455330, 32.314438, 37.945179>,  <39.690331, 32.349003, 37.910835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455330, 32.314438, 37.945179>,  <39.063660, 32.256832, 38.002415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455330, 32.314438, 37.945179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164473, -0.975926, 0.143242,
		-0.119019, -0.163793, -0.979289,
		0.979175, 0.144018, -0.143093,
		39.749081, 32.357643, 37.902252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276974, 31.744146, 37.477680>,  <39.063660, 32.256832, 38.002415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276974, 31.744146, 37.477680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569397, 31.865059, 37.722359>,  <39.744850, 31.937607, 37.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569397, 31.865059, 37.722359>,  <39.276974, 31.744146, 37.477680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569397, 31.865059, 37.722359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150949, -0.945947, 0.287051,
		0.665407, -0.117516, -0.737173,
		0.731059, 0.302282, 0.611701,
		39.788715, 31.955744, 37.905869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635414, 31.114365, 37.469849>,  <39.276974, 31.744146, 37.477680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635414, 31.114365, 37.469849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809010, 31.334494, 37.755169>,  <39.913166, 31.466572, 37.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809010, 31.334494, 37.755169>,  <39.635414, 31.114365, 37.469849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809010, 31.334494, 37.755169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215730, -0.832195, 0.510796,
		0.874707, -0.067800, -0.479886,
		0.433991, 0.550323, 0.713300,
		39.939205, 31.499590, 37.969158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129070, 30.739735, 37.722095>,  <39.635414, 31.114365, 37.469849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129070, 30.739735, 37.722095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051426, 30.975048, 38.036098>,  <40.004837, 31.116236, 38.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051426, 30.975048, 38.036098>,  <40.129070, 30.739735, 37.722095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051426, 30.975048, 38.036098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148937, -0.773281, 0.616323,
		0.969607, 0.236554, 0.062488,
		-0.194114, 0.588284, 0.785010,
		39.993191, 31.151533, 38.271603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736877, 30.720388, 38.175060>,  <40.129070, 30.739735, 37.722095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736877, 30.720388, 38.175060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409473, 30.801983, 38.389881>,  <40.213032, 30.850939, 38.518772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409473, 30.801983, 38.389881>,  <40.736877, 30.720388, 38.175060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409473, 30.801983, 38.389881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276940, -0.678942, 0.679958,
		0.503329, 0.705286, 0.499232,
		-0.818514, 0.203985, 0.537053,
		40.163918, 30.863178, 38.550999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926842, 30.962189, 38.912640>,  <40.736877, 30.720388, 38.175060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926842, 30.962189, 38.912640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571857, 30.780027, 38.884319>,  <40.358868, 30.670731, 38.867329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571857, 30.780027, 38.884319>,  <40.926842, 30.962189, 38.912640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571857, 30.780027, 38.884319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307833, -0.700052, 0.644333,
		-0.342994, 0.550030, 0.761460,
		-0.887465, -0.455405, -0.070796,
		40.305618, 30.643406, 38.863079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674263, 30.840607, 39.573761>,  <40.926842, 30.962189, 38.912640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674263, 30.840607, 39.573761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473888, 30.571585, 39.355865>,  <40.353664, 30.410172, 39.225128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473888, 30.571585, 39.355865>,  <40.674263, 30.840607, 39.573761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473888, 30.571585, 39.355865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003999, -0.627593, 0.778531,
		-0.865476, 0.392172, 0.311693,
		-0.500934, -0.672554, -0.544735,
		40.323608, 30.369818, 39.192444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175682, 30.529934, 40.092735>,  <40.674263, 30.840607, 39.573761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175682, 30.529934, 40.092735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143028, 30.283308, 39.779510>,  <40.123436, 30.135332, 39.591576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143028, 30.283308, 39.779510>,  <40.175682, 30.529934, 40.092735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143028, 30.283308, 39.779510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420465, -0.691036, 0.587944,
		-0.903629, 0.377246, -0.202830,
		-0.081637, -0.616566, -0.783059,
		40.118538, 30.098337, 39.544594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478195, 30.451479, 40.000084>,  <40.175682, 30.529934, 40.092735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478195, 30.451479, 40.000084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646873, 30.112522, 39.871029>,  <39.748081, 29.909147, 39.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646873, 30.112522, 39.871029>,  <39.478195, 30.451479, 40.000084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646873, 30.112522, 39.871029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450968, -0.504704, 0.736140,
		-0.786637, -0.164929, -0.594980,
		0.421699, -0.847392, -0.322641,
		39.773384, 29.858305, 39.774235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864368, 29.922773, 39.779766>,  <39.478195, 30.451479, 40.000084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864368, 29.922773, 39.779766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207432, 29.745119, 39.883427>,  <39.413269, 29.638527, 39.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207432, 29.745119, 39.883427>,  <38.864368, 29.922773, 39.779766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207432, 29.745119, 39.883427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477017, -0.499002, 0.723500,
		-0.192015, -0.744138, -0.639835,
		0.857662, -0.444135, 0.259150,
		39.464729, 29.611879, 39.961170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679798, 29.244642, 39.979801>,  <38.864368, 29.922773, 39.779766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679798, 29.244642, 39.979801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056599, 29.227079, 40.112892>,  <39.282681, 29.216541, 40.192745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056599, 29.227079, 40.112892>,  <38.679798, 29.244642, 39.979801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056599, 29.227079, 40.112892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288094, -0.614343, 0.734565,
		0.172154, -0.787817, -0.591361,
		0.942000, -0.043909, 0.332727,
		39.339199, 29.213907, 40.212711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768032, 28.670797, 40.267780>,  <38.679798, 29.244642, 39.979801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768032, 28.670797, 40.267780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040340, 28.909008, 40.438377>,  <39.203728, 29.051933, 40.540737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040340, 28.909008, 40.438377>,  <38.768032, 28.670797, 40.267780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040340, 28.909008, 40.438377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069286, -0.527285, 0.846859,
		0.729210, -0.606069, -0.317700,
		0.680773, 0.595526, 0.426493,
		39.244572, 29.087666, 40.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211609, 28.103777, 40.691837>,  <38.768032, 28.670797, 40.267780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211609, 28.103777, 40.691837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308327, 28.466816, 40.829124>,  <39.366360, 28.684639, 40.911495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308327, 28.466816, 40.829124>,  <39.211609, 28.103777, 40.691837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308327, 28.466816, 40.829124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042226, -0.363221, 0.930746,
		0.969407, -0.210560, -0.126151,
		0.241799, 0.907598, 0.343218,
		39.380867, 28.739096, 40.932091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897713, 28.063509, 40.962437>,  <39.211609, 28.103777, 40.691837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897713, 28.063509, 40.962437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720951, 28.376289, 41.138290>,  <39.614895, 28.563957, 41.243801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720951, 28.376289, 41.138290>,  <39.897713, 28.063509, 40.962437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720951, 28.376289, 41.138290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205239, -0.388952, 0.898105,
		0.873268, 0.487106, 0.011393,
		-0.441903, 0.781949, 0.439633,
		39.588379, 28.610874, 41.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400616, 28.253658, 41.445873>,  <39.897713, 28.063509, 40.962437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400616, 28.253658, 41.445873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047237, 28.404806, 41.556679>,  <39.835209, 28.495495, 41.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047237, 28.404806, 41.556679>,  <40.400616, 28.253658, 41.445873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047237, 28.404806, 41.556679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123903, -0.381776, 0.915912,
		0.451853, 0.843482, 0.290459,
		-0.883446, 0.377869, 0.277016,
		39.782204, 28.518167, 41.639782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523838, 28.507122, 42.160172>,  <40.400616, 28.253658, 41.445873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523838, 28.507122, 42.160172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137310, 28.410952, 42.123466>,  <39.905392, 28.353249, 42.101444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137310, 28.410952, 42.123466>,  <40.523838, 28.507122, 42.160172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137310, 28.410952, 42.123466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015970, -0.411898, 0.911090,
		-0.256846, 0.878939, 0.401865,
		-0.966320, -0.240428, -0.091758,
		39.847412, 28.338823, 42.095940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042892, 28.809568, 42.729443>,  <40.523838, 28.507122, 42.160172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042892, 28.809568, 42.729443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902138, 28.456905, 42.603676>,  <39.817684, 28.245308, 42.528217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902138, 28.456905, 42.603676>,  <40.042892, 28.809568, 42.729443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902138, 28.456905, 42.603676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128890, -0.287060, 0.949202,
		-0.927125, 0.374540, -0.012623,
		-0.351890, -0.881656, -0.314415,
		39.796570, 28.192410, 42.509350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478306, 28.797813, 43.114101>,  <40.042892, 28.809568, 42.729443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478306, 28.797813, 43.114101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567932, 28.420494, 43.016136>,  <39.621708, 28.194103, 42.957359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567932, 28.420494, 43.016136>,  <39.478306, 28.797813, 43.114101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567932, 28.420494, 43.016136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069672, -0.266161, 0.961407,
		-0.972080, -0.198357, -0.125360,
		0.224068, -0.943299, -0.244910,
		39.635151, 28.137505, 42.942665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007233, 28.196270, 43.400135>,  <39.478306, 28.797813, 43.114101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007233, 28.196270, 43.400135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390274, 28.088470, 43.359413>,  <39.620098, 28.023790, 43.334980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390274, 28.088470, 43.359413>,  <39.007233, 28.196270, 43.400135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390274, 28.088470, 43.359413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013890, -0.396168, 0.918073,
		-0.287749, -0.877737, -0.383116,
		0.957605, -0.269496, -0.101805,
		39.677555, 28.007622, 43.328873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177547, 27.472260, 43.621124>,  <39.007233, 28.196270, 43.400135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177547, 27.472260, 43.621124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524857, 27.668945, 43.647430>,  <39.733242, 27.786957, 43.663216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524857, 27.668945, 43.647430>,  <39.177547, 27.472260, 43.621124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524857, 27.668945, 43.647430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146501, -0.380806, 0.912975,
		0.473966, -0.783074, -0.402679,
		0.868270, 0.491712, 0.065768,
		39.785339, 27.816460, 43.667160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756908, 27.165741, 43.046803>,  <39.177547, 27.472260, 43.621124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756908, 27.165741, 43.046803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434990, 27.391739, 42.974049>,  <39.241840, 27.527338, 42.930397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434990, 27.391739, 42.974049>,  <39.756908, 27.165741, 43.046803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434990, 27.391739, 42.974049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519348, 0.521949, -0.676644,
		-0.287369, -0.639020, -0.713493,
		-0.804796, 0.564997, -0.181882,
		39.193550, 27.561237, 42.919483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412468, 27.217669, 42.263500>,  <39.756908, 27.165741, 43.046803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412468, 27.217669, 42.263500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355568, 27.551619, 42.476196>,  <39.321426, 27.751989, 42.603813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355568, 27.551619, 42.476196>,  <39.412468, 27.217669, 42.263500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355568, 27.551619, 42.476196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136762, 0.548627, -0.824806,
		-0.980337, -0.044608, -0.192222,
		-0.142251, 0.834876, 0.531739,
		39.312893, 27.802082, 42.635719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818378, 27.629457, 42.094257>,  <39.412468, 27.217669, 42.263500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818378, 27.629457, 42.094257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070747, 27.892241, 42.259346>,  <39.222168, 28.049911, 42.358398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070747, 27.892241, 42.259346>,  <38.818378, 27.629457, 42.094257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070747, 27.892241, 42.259346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032402, 0.553812, -0.832011,
		-0.775167, 0.511564, 0.370700,
		0.630925, 0.656959, 0.412721,
		39.260025, 28.089329, 42.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526421, 28.311134, 41.989246>,  <38.818378, 27.629457, 42.094257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526421, 28.311134, 41.989246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925846, 28.325535, 42.005119>,  <39.165501, 28.334175, 42.014645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925846, 28.325535, 42.005119>,  <38.526421, 28.311134, 41.989246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925846, 28.325535, 42.005119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008677, 0.622251, -0.782770,
		-0.052875, 0.781989, 0.621045,
		0.998563, 0.036000, 0.039687,
		39.225414, 28.336334, 42.017025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688072, 29.007753, 42.024029>,  <38.526421, 28.311134, 41.989246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688072, 29.007753, 42.024029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023361, 28.825039, 41.904877>,  <39.224533, 28.715410, 41.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023361, 28.825039, 41.904877>,  <38.688072, 29.007753, 42.024029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023361, 28.825039, 41.904877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140292, 0.708482, -0.691644,
		0.526976, 0.537960, 0.657948,
		0.838221, -0.456784, -0.297882,
		39.274826, 28.688004, 41.815514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119335, 29.642384, 41.871384>,  <38.688072, 29.007753, 42.024029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119335, 29.642384, 41.871384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270031, 29.321224, 41.686592>,  <39.360447, 29.128529, 41.575718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270031, 29.321224, 41.686592>,  <39.119335, 29.642384, 41.871384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270031, 29.321224, 41.686592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034438, 0.510517, -0.859178,
		0.925680, 0.307774, 0.219980,
		0.376736, -0.802900, -0.461976,
		39.383053, 29.080355, 41.548000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681984, 29.851370, 41.461105>,  <39.119335, 29.642384, 41.871384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681984, 29.851370, 41.461105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563965, 29.510571, 41.288109>,  <39.493153, 29.306091, 41.184311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563965, 29.510571, 41.288109>,  <39.681984, 29.851370, 41.461105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563965, 29.510571, 41.288109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312239, 0.341816, -0.886379,
		0.903025, -0.396565, 0.165175,
		-0.295047, -0.851997, -0.432492,
		39.475452, 29.254972, 41.158360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294796, 29.594770, 41.124344>,  <39.681984, 29.851370, 41.461105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294796, 29.594770, 41.124344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965534, 29.450794, 40.948677>,  <39.767979, 29.364408, 40.843277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965534, 29.450794, 40.948677>,  <40.294796, 29.594770, 41.124344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965534, 29.450794, 40.948677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291252, 0.396283, -0.870707,
		0.487436, -0.844632, -0.221368,
		-0.823151, -0.359940, -0.439164,
		39.718590, 29.342812, 40.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597706, 29.299479, 40.596447>,  <40.294796, 29.594770, 41.124344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597706, 29.299479, 40.596447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213043, 29.279873, 40.488510>,  <39.982246, 29.268110, 40.423748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213043, 29.279873, 40.488510>,  <40.597706, 29.299479, 40.596447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213043, 29.279873, 40.488510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251793, 0.232185, -0.939516,
		0.108700, -0.971436, -0.210942,
		-0.961657, -0.049012, -0.269839,
		39.924545, 29.265169, 40.407558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542725, 28.843548, 39.954220>,  <40.597706, 29.299479, 40.596447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542725, 28.843548, 39.954220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251549, 29.117802, 39.955280>,  <40.076843, 29.282354, 39.955917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251549, 29.117802, 39.955280>,  <40.542725, 28.843548, 39.954220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251549, 29.117802, 39.955280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320651, 0.343851, -0.882581,
		-0.606039, -0.641618, -0.470152,
		-0.727942, 0.685633, 0.002651,
		40.033165, 29.323492, 39.956074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474182, 28.938473, 39.286106>,  <40.542725, 28.843548, 39.954220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474182, 28.938473, 39.286106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241810, 29.234192, 39.422318>,  <40.102386, 29.411623, 39.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241810, 29.234192, 39.422318>,  <40.474182, 28.938473, 39.286106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241810, 29.234192, 39.422318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158309, 0.512997, -0.843666,
		-0.798408, -0.436205, -0.415054,
		-0.580933, 0.739296, 0.340526,
		40.067532, 29.455980, 39.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104561, 29.112743, 38.702595>,  <40.474182, 28.938473, 39.286106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104561, 29.112743, 38.702595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110989, 29.406424, 38.974091>,  <40.114845, 29.582632, 39.136990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110989, 29.406424, 38.974091>,  <40.104561, 29.112743, 38.702595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110989, 29.406424, 38.974091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000368, 0.678825, -0.734300,
		-0.999871, 0.012050, 0.010639,
		0.016070, 0.734201, 0.678742,
		40.115810, 29.626684, 39.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676697, 29.538256, 38.434883>,  <40.104561, 29.112743, 38.702595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676697, 29.538256, 38.434883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874874, 29.783705, 38.680813>,  <39.993778, 29.930975, 38.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874874, 29.783705, 38.680813>,  <39.676697, 29.538256, 38.434883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874874, 29.783705, 38.680813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241811, 0.777248, -0.580873,
		-0.834306, 0.139117, 0.533461,
		0.495441, 0.613622, 0.614822,
		40.023506, 29.967791, 38.865261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180298, 29.983349, 38.727051>,  <39.676697, 29.538256, 38.434883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180298, 29.983349, 38.727051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537079, 30.163324, 38.744820>,  <39.751148, 30.271309, 38.755482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537079, 30.163324, 38.744820>,  <39.180298, 29.983349, 38.727051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537079, 30.163324, 38.744820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232883, 0.541420, -0.807855,
		-0.387536, 0.710224, 0.587705,
		0.891954, 0.449939, 0.044421,
		39.804665, 30.298306, 38.758144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861450, 30.709517, 38.806282>,  <39.180298, 29.983349, 38.727051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861450, 30.709517, 38.806282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254276, 30.670824, 38.871021>,  <39.489971, 30.647608, 38.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254276, 30.670824, 38.871021>,  <38.861450, 30.709517, 38.806282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254276, 30.670824, 38.871021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127772, 0.972648, -0.193984,
		-0.138655, 0.211184, 0.967562,
		0.982064, -0.096730, 0.161846,
		39.548897, 30.641806, 38.919575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144260, 31.331373, 39.225636>,  <38.861450, 30.709517, 38.806282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144260, 31.331373, 39.225636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432026, 31.151194, 39.014149>,  <39.604687, 31.043085, 38.887257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432026, 31.151194, 39.014149>,  <39.144260, 31.331373, 39.225636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432026, 31.151194, 39.014149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300073, 0.888057, -0.348296,
		0.626418, 0.091917, 0.774049,
		0.719414, -0.450450, -0.528713,
		39.647850, 31.016058, 38.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788307, 31.749195, 39.407848>,  <39.144260, 31.331373, 39.225636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788307, 31.749195, 39.407848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871449, 31.593580, 39.048862>,  <39.921333, 31.500212, 38.833469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871449, 31.593580, 39.048862>,  <39.788307, 31.749195, 39.407848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871449, 31.593580, 39.048862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120957, 0.920686, -0.371088,
		0.970653, -0.031424, 0.238421,
		0.207850, -0.389037, -0.897468,
		39.933804, 31.476870, 38.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362949, 32.136017, 39.125767>,  <39.788307, 31.749195, 39.407848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362949, 32.136017, 39.125767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233612, 31.966446, 38.787361>,  <40.156010, 31.864702, 38.584320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233612, 31.966446, 38.787361>,  <40.362949, 32.136017, 39.125767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233612, 31.966446, 38.787361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334726, 0.784996, -0.521286,
		0.885105, -0.451733, -0.111919,
		-0.323339, -0.423931, -0.846011,
		40.136612, 31.839266, 38.533558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889782, 32.193707, 38.564640>,  <40.362949, 32.136017, 39.125767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889782, 32.193707, 38.564640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530422, 32.140026, 38.397373>,  <40.314808, 32.107819, 38.297012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530422, 32.140026, 38.397373>,  <40.889782, 32.193707, 38.564640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530422, 32.140026, 38.397373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138743, 0.816671, -0.560178,
		0.416685, -0.561282, -0.715078,
		-0.898401, -0.134206, -0.418168,
		40.260902, 32.099766, 38.271923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020508, 32.369877, 37.895714>,  <40.889782, 32.193707, 38.564640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020508, 32.369877, 37.895714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622356, 32.375858, 37.933647>,  <40.383465, 32.379448, 37.956409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622356, 32.375858, 37.933647>,  <41.020508, 32.369877, 37.895714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622356, 32.375858, 37.933647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063072, 0.642903, -0.763347,
		-0.072382, -0.765802, -0.638990,
		-0.995381, 0.014951, 0.094835,
		40.323742, 32.380344, 37.962097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851608, 32.549595, 37.262398>,  <41.020508, 32.369877, 37.895714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851608, 32.549595, 37.262398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516903, 32.619556, 37.469952>,  <40.316078, 32.661533, 37.594482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516903, 32.619556, 37.469952>,  <40.851608, 32.549595, 37.262398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516903, 32.619556, 37.469952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308982, 0.631516, -0.711138,
		-0.452062, -0.755379, -0.474387,
		-0.836762, 0.174901, 0.518883,
		40.265873, 32.672028, 37.625618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388046, 32.483818, 36.722607>,  <40.851608, 32.549595, 37.262398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388046, 32.483818, 36.722607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214668, 32.682281, 37.023525>,  <40.110641, 32.801361, 37.204075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214668, 32.682281, 37.023525>,  <40.388046, 32.483818, 36.722607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214668, 32.682281, 37.023525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414404, 0.631555, -0.655292,
		-0.800249, -0.595785, -0.068130,
		-0.433442, 0.496164, 0.752297,
		40.084637, 32.831131, 37.249214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705582, 32.403553, 36.562832>,  <40.388046, 32.483818, 36.722607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705582, 32.403553, 36.562832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760937, 32.748203, 36.758160>,  <39.794151, 32.954994, 36.875355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760937, 32.748203, 36.758160>,  <39.705582, 32.403553, 36.562832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760937, 32.748203, 36.758160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270095, 0.507208, -0.818406,
		-0.952836, -0.018634, 0.302912,
		0.138389, 0.861622, 0.488319,
		39.802452, 33.006691, 36.904655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290794, 31.979845, 36.056805>,  <39.705582, 32.403553, 36.562832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290794, 31.979845, 36.056805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354591, 31.824453, 35.693787>,  <40.392868, 31.731218, 35.475975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354591, 31.824453, 35.693787>,  <40.290794, 31.979845, 36.056805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354591, 31.824453, 35.693787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979315, 0.178216, 0.095819,
		0.124516, -0.904059, 0.408868,
		0.159493, -0.388480, -0.907549,
		40.402439, 31.707909, 35.421520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785404, 31.382866, 36.199219>,  <40.290794, 31.979845, 36.056805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785404, 31.382866, 36.199219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782356, 31.538185, 35.830616>,  <40.780529, 31.631376, 35.609455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782356, 31.538185, 35.830616>,  <40.785404, 31.382866, 36.199219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782356, 31.538185, 35.830616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998306, 0.056103, 0.015389,
		0.057675, -0.919825, -0.388067,
		-0.007616, 0.388297, -0.921503,
		40.780071, 31.654675, 35.554165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321510, 30.993038, 35.825626>,  <40.785404, 31.382866, 36.199219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321510, 30.993038, 35.825626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274445, 31.371227, 35.704147>,  <41.246204, 31.598141, 35.631260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274445, 31.371227, 35.704147>,  <41.321510, 30.993038, 35.825626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274445, 31.371227, 35.704147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941398, 0.203550, 0.268955,
		0.316108, -0.254252, -0.914020,
		-0.117667, 0.945475, -0.303696,
		41.239143, 31.654869, 35.613037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046776, 31.070570, 35.442551>,  <41.321510, 30.993038, 35.825626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046776, 31.070570, 35.442551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869858, 31.400606, 35.583179>,  <41.763706, 31.598627, 35.667557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869858, 31.400606, 35.583179>,  <42.046776, 31.070570, 35.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869858, 31.400606, 35.583179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896761, 0.412898, 0.159170,
		-0.013833, 0.385673, -0.922532,
		-0.442299, 0.825089, 0.351568,
		41.737167, 31.648132, 35.688648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320847, 31.643003, 35.140530>,  <42.046776, 31.070570, 35.442551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320847, 31.643003, 35.140530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185596, 31.750189, 35.501389>,  <42.104446, 31.814501, 35.717903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185596, 31.750189, 35.501389>,  <42.320847, 31.643003, 35.140530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185596, 31.750189, 35.501389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842476, 0.513399, 0.163264,
		-0.419412, 0.815240, -0.399346,
		-0.338123, 0.267965, 0.902146,
		42.084160, 31.830578, 35.772034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428986, 32.388023, 35.268024>,  <42.320847, 31.643003, 35.140530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428986, 32.388023, 35.268024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417892, 32.199341, 35.620552>,  <42.411236, 32.086132, 35.832069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417892, 32.199341, 35.620552>,  <42.428986, 32.388023, 35.268024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417892, 32.199341, 35.620552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765622, 0.556830, 0.322123,
		-0.642693, 0.683690, 0.345709,
		-0.027731, -0.471709, 0.881318,
		42.409573, 32.057827, 35.884949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369831, 32.947632, 35.806408>,  <42.428986, 32.388023, 35.268024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369831, 32.947632, 35.806408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576893, 32.617310, 35.895920>,  <42.701130, 32.419117, 35.949627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576893, 32.617310, 35.895920>,  <42.369831, 32.947632, 35.806408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576893, 32.617310, 35.895920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832197, 0.546718, 0.092450,
		-0.198690, 0.138372, 0.970245,
		0.517658, -0.825804, 0.223780,
		42.732189, 32.369568, 35.963055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545048, 33.039291, 36.594238>,  <42.369831, 32.947632, 35.806408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545048, 33.039291, 36.594238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758591, 32.836376, 36.323639>,  <42.886719, 32.714626, 36.161278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758591, 32.836376, 36.323639>,  <42.545048, 33.039291, 36.594238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758591, 32.836376, 36.323639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647726, 0.759627, -0.058467,
		0.543549, -0.406975, 0.734115,
		0.533859, -0.507285, -0.676503,
		42.918747, 32.684189, 36.120689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341030, 32.923935, 36.875896>,  <42.545048, 33.039291, 36.594238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341030, 32.923935, 36.875896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252674, 32.923897, 36.485775>,  <43.199661, 32.923874, 36.251701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252674, 32.923897, 36.485775>,  <43.341030, 32.923935, 36.875896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252674, 32.923897, 36.485775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634996, 0.758997, -0.143887,
		0.740263, -0.651094, -0.167593,
		-0.220886, -0.000094, -0.975299,
		43.186409, 32.923870, 36.193184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015877, 33.055038, 36.536522>,  <43.341030, 32.923935, 36.875896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015877, 33.055038, 36.536522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695595, 33.168278, 36.325340>,  <43.503426, 33.236221, 36.198631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695595, 33.168278, 36.325340>,  <44.015877, 33.055038, 36.536522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695595, 33.168278, 36.325340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439918, 0.876068, -0.197428,
		0.406631, -0.390337, -0.826007,
		-0.800702, 0.283095, -0.527953,
		43.455383, 33.253204, 36.166954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243736, 33.178898, 35.869949>,  <44.015877, 33.055038, 36.536522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243736, 33.178898, 35.869949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923676, 33.380047, 36.000717>,  <43.731640, 33.500736, 36.079178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923676, 33.380047, 36.000717>,  <44.243736, 33.178898, 35.869949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923676, 33.380047, 36.000717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406505, 0.855438, -0.320905,
		-0.441034, -0.123878, -0.888900,
		-0.800152, 0.502873, 0.326920,
		43.683632, 33.530910, 36.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925121, 33.675640, 35.345623>,  <44.243736, 33.178898, 35.869949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925121, 33.675640, 35.345623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864563, 33.818253, 35.714397>,  <43.828228, 33.903820, 35.935661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864563, 33.818253, 35.714397>,  <43.925121, 33.675640, 35.345623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864563, 33.818253, 35.714397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660453, 0.730426, -0.174013,
		-0.735446, 0.582550, -0.346055,
		-0.151396, 0.356530, 0.921936,
		43.819145, 33.925213, 35.990978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624134, 33.974537, 35.479328>,  <43.925121, 33.675640, 35.345623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624134, 33.974537, 35.479328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831764, 33.763714, 35.748482>,  <44.956341, 33.637218, 35.909973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831764, 33.763714, 35.748482>,  <44.624134, 33.974537, 35.479328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831764, 33.763714, 35.748482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852146, 0.380272, -0.359500,
		-0.066402, 0.760003, 0.646518,
		0.519074, -0.527057, 0.672885,
		44.987488, 33.605598, 35.950348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044975, 34.361652, 35.988224>,  <44.624134, 33.974537, 35.479328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044975, 34.361652, 35.988224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227448, 34.009068, 35.939354>,  <45.336933, 33.797516, 35.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227448, 34.009068, 35.939354>,  <45.044975, 34.361652, 35.988224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227448, 34.009068, 35.939354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823851, 0.470234, -0.316464,
		0.336403, 0.043708, 0.940703,
		0.456183, -0.881459, -0.122179,
		45.364304, 33.744629, 35.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614147, 34.138767, 36.564705>,  <45.044975, 34.361652, 35.988224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614147, 34.138767, 36.564705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670650, 34.029552, 36.184074>,  <45.704552, 33.964024, 35.955696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670650, 34.029552, 36.184074>,  <45.614147, 34.138767, 36.564705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670650, 34.029552, 36.184074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911171, 0.411673, 0.017136,
		0.387059, -0.869468, 0.306937,
		0.141257, -0.273039, -0.951576,
		45.713028, 33.947639, 35.898602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106213, 33.663887, 36.236866>,  <45.614147, 34.138767, 36.564705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106213, 33.663887, 36.236866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464359, 33.485764, 36.235165>,  <46.679249, 33.378891, 36.234146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464359, 33.485764, 36.235165>,  <46.106213, 33.663887, 36.236866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464359, 33.485764, 36.235165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426233, 0.859702, -0.281491,
		0.129005, 0.250225, 0.959555,
		0.895367, -0.445308, -0.004251,
		46.732971, 33.352173, 36.233891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471462, 34.141685, 36.876186>,  <46.106213, 33.663887, 36.236866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471462, 34.141685, 36.876186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651333, 33.944469, 36.578274>,  <46.759254, 33.826141, 36.399525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651333, 33.944469, 36.578274>,  <46.471462, 34.141685, 36.876186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651333, 33.944469, 36.578274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479959, 0.836611, -0.264046,
		0.753278, -0.238728, 0.612847,
		0.449679, -0.493041, -0.744781,
		46.786236, 33.796558, 36.354839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133511, 34.168015, 36.929863>,  <46.471462, 34.141685, 36.876186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133511, 34.168015, 36.929863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043159, 34.123829, 36.542713>,  <46.988949, 34.097317, 36.310425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043159, 34.123829, 36.542713>,  <47.133511, 34.168015, 36.929863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.043159, 34.123829, 36.542713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517807, 0.827952, -0.215340,
		0.825140, -0.549811, -0.129813,
		-0.225875, -0.110468, -0.967873,
		46.975395, 34.090687, 36.252350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.747253, 34.409218, 36.550396>,  <47.133511, 34.168015, 36.929863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.747253, 34.409218, 36.550396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431255, 34.438000, 36.306847>,  <47.241657, 34.455269, 36.160717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431255, 34.438000, 36.306847>,  <47.747253, 34.409218, 36.550396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431255, 34.438000, 36.306847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465076, 0.717442, -0.518635,
		0.399514, -0.692892, -0.600241,
		-0.789996, 0.071956, -0.608875,
		47.194256, 34.459587, 36.124184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908287, 34.324512, 35.876709>,  <47.747253, 34.409218, 36.550396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908287, 34.324512, 35.876709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589996, 34.563126, 35.918587>,  <47.399021, 34.706295, 35.943714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589996, 34.563126, 35.918587>,  <47.908287, 34.324512, 35.876709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589996, 34.563126, 35.918587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356267, 0.600822, -0.715602,
		-0.489787, -0.532124, -0.690617,
		-0.795727, 0.596537, 0.104697,
		47.351276, 34.742088, 35.949997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.731365, 34.630436, 35.119991>,  <47.908287, 34.324512, 35.876709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.731365, 34.630436, 35.119991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635262, 34.864178, 35.430038>,  <47.577599, 35.004425, 35.616066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635262, 34.864178, 35.430038>,  <47.731365, 34.630436, 35.119991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635262, 34.864178, 35.430038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450963, 0.774297, -0.443955,
		-0.859596, 0.242882, -0.449558,
		-0.240263, 0.584357, 0.775114,
		47.563183, 35.039486, 35.662571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.320862, 30.614357, 27.391062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004818, 30.851406, 27.328423>,  <37.815193, 30.993635, 27.290838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004818, 30.851406, 27.328423>,  <38.320862, 30.614357, 27.391062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004818, 30.851406, 27.328423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244680, -0.070682, 0.967024,
		0.562013, 0.802372, 0.200850,
		-0.790109, 0.592624, -0.156600,
		37.767784, 31.029194, 27.281443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231178, 31.149239, 28.015793>,  <38.320862, 30.614357, 27.391062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231178, 31.149239, 28.015793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869904, 31.151684, 27.844110>,  <37.653137, 31.153151, 27.741102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869904, 31.151684, 27.844110>,  <38.231178, 31.149239, 28.015793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869904, 31.151684, 27.844110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421845, 0.172263, 0.890153,
		0.079376, 0.985032, -0.153007,
		-0.903187, 0.006112, -0.429204,
		37.598946, 31.153517, 27.715349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895840, 31.729816, 28.344679>,  <38.231178, 31.149239, 28.015793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895840, 31.729816, 28.344679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603745, 31.496807, 28.201899>,  <37.428486, 31.357002, 28.116230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603745, 31.496807, 28.201899>,  <37.895840, 31.729816, 28.344679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603745, 31.496807, 28.201899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595519, 0.286685, 0.750446,
		-0.334818, 0.760580, -0.556252,
		-0.730243, -0.582521, -0.356953,
		37.384670, 31.322050, 28.094812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314674, 32.212128, 28.210997>,  <37.895840, 31.729816, 28.344679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314674, 32.212128, 28.210997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170116, 31.839334, 28.222267>,  <37.083382, 31.615658, 28.229031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170116, 31.839334, 28.222267>,  <37.314674, 32.212128, 28.210997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170116, 31.839334, 28.222267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646627, 0.272289, 0.712553,
		-0.671762, 0.239296, -0.701052,
		-0.361399, -0.931985, 0.028178,
		37.061695, 31.559738, 28.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684193, 32.251842, 28.539755>,  <37.314674, 32.212128, 28.210997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684193, 32.251842, 28.539755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726444, 31.855560, 28.574041>,  <36.751797, 31.617792, 28.594614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726444, 31.855560, 28.574041>,  <36.684193, 32.251842, 28.539755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726444, 31.855560, 28.574041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613424, 0.002925, 0.789748,
		-0.782658, -0.136002, -0.607413,
		0.105631, -0.990704, 0.085716,
		36.758133, 31.558350, 28.599756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046169, 31.952850, 28.681795>,  <36.684193, 32.251842, 28.539755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046169, 31.952850, 28.681795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311981, 31.698368, 28.838585>,  <36.471466, 31.545679, 28.932659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311981, 31.698368, 28.838585>,  <36.046169, 31.952850, 28.681795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311981, 31.698368, 28.838585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612041, -0.162436, 0.773964,
		-0.428732, -0.754224, -0.497328,
		0.664526, -0.636208, 0.391974,
		36.511341, 31.507505, 28.956177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602596, 31.498398, 29.113703>,  <36.046169, 31.952850, 28.681795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602596, 31.498398, 29.113703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981457, 31.441254, 29.228586>,  <36.208775, 31.406967, 29.297516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981457, 31.441254, 29.228586>,  <35.602596, 31.498398, 29.113703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981457, 31.441254, 29.228586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308507, -0.160413, 0.937599,
		-0.087873, -0.976657, -0.196009,
		0.947154, -0.142860, 0.287210,
		36.265602, 31.398396, 29.314749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602463, 30.884466, 29.573910>,  <35.602596, 31.498398, 29.113703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602463, 30.884466, 29.573910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941673, 31.067760, 29.680401>,  <36.145199, 31.177736, 29.744295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941673, 31.067760, 29.680401>,  <35.602463, 30.884466, 29.573910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941673, 31.067760, 29.680401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282425, -0.034313, 0.958676,
		0.448434, -0.888168, 0.100319,
		0.848023, 0.458236, 0.266228,
		36.196079, 31.205231, 29.760269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651421, 30.678516, 30.353102>,  <35.602463, 30.884466, 29.573910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651421, 30.678516, 30.353102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955185, 30.933325, 30.300184>,  <36.137444, 31.086210, 30.268435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955185, 30.933325, 30.300184>,  <35.651421, 30.678516, 30.353102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955185, 30.933325, 30.300184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054962, 0.139798, 0.988653,
		0.648285, -0.758066, 0.071152,
		0.759411, 0.637019, -0.132294,
		36.183010, 31.124430, 30.260496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226849, 30.456129, 30.783712>,  <35.651421, 30.678516, 30.353102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226849, 30.456129, 30.783712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260853, 30.851553, 30.733879>,  <36.281254, 31.088808, 30.703979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260853, 30.851553, 30.733879>,  <36.226849, 30.456129, 30.783712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260853, 30.851553, 30.733879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223917, 0.102885, 0.969162,
		0.970894, -0.110286, -0.212609,
		0.085011, 0.988560, -0.124585,
		36.286358, 31.148121, 30.696503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697216, 30.525229, 31.372852>,  <36.226849, 30.456129, 30.783712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697216, 30.525229, 31.372852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.575478, 30.888746, 31.258680>,  <36.502434, 31.106857, 31.190178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.575478, 30.888746, 31.258680>,  <36.697216, 30.525229, 31.372852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575478, 30.888746, 31.258680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287252, 0.373255, 0.882138,
		0.908219, 0.186483, -0.374650,
		-0.304344, 0.908793, -0.285429,
		36.484173, 31.161385, 31.173052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181931, 31.044744, 31.606653>,  <36.697216, 30.525229, 31.372852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181931, 31.044744, 31.606653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845230, 31.258783, 31.578011>,  <36.643211, 31.387207, 31.560825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845230, 31.258783, 31.578011>,  <37.181931, 31.044744, 31.606653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845230, 31.258783, 31.578011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221810, 0.463712, 0.857772,
		0.492195, 0.706147, -0.509019,
		-0.841751, 0.535096, -0.071606,
		36.592705, 31.419312, 31.556528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347633, 31.797159, 31.797983>,  <37.181931, 31.044744, 31.606653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347633, 31.797159, 31.797983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959961, 31.702837, 31.826477>,  <36.727356, 31.646244, 31.843575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959961, 31.702837, 31.826477>,  <37.347633, 31.797159, 31.797983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959961, 31.702837, 31.826477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041060, 0.439788, 0.897163,
		-0.242887, 0.866592, -0.435918,
		-0.969185, -0.235808, 0.071237,
		36.669205, 31.632095, 31.847849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945168, 32.400654, 32.007080>,  <37.347633, 31.797159, 31.797983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945168, 32.400654, 32.007080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.693642, 32.113911, 32.127552>,  <36.542725, 31.941866, 32.199837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.693642, 32.113911, 32.127552>,  <36.945168, 32.400654, 32.007080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693642, 32.113911, 32.127552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024889, 0.405702, 0.913666,
		-0.777156, 0.567031, -0.272954,
		-0.628815, -0.716855, 0.301181,
		36.504997, 31.898853, 32.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404591, 32.754219, 32.505459>,  <36.945168, 32.400654, 32.007080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404591, 32.754219, 32.505459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395325, 32.358997, 32.566410>,  <36.389767, 32.121864, 32.602982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395325, 32.358997, 32.566410>,  <36.404591, 32.754219, 32.505459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395325, 32.358997, 32.566410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169324, 0.154097, 0.973439,
		-0.985288, -0.003251, -0.170871,
		-0.023166, -0.988050, 0.152381,
		36.388374, 32.062584, 32.612125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892143, 32.631344, 33.088837>,  <36.404591, 32.754219, 32.505459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892143, 32.631344, 33.088837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059349, 32.268051, 33.096573>,  <36.159672, 32.050076, 33.101215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059349, 32.268051, 33.096573>,  <35.892143, 32.631344, 33.088837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059349, 32.268051, 33.096573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158628, 0.093935, 0.982860,
		-0.894485, -0.407778, 0.183338,
		0.418011, -0.908236, 0.019339,
		36.184753, 31.995581, 33.102375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445251, 32.258343, 33.531368>,  <35.892143, 32.631344, 33.088837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445251, 32.258343, 33.531368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815926, 32.108219, 33.539288>,  <36.038330, 32.018147, 33.544037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815926, 32.108219, 33.539288>,  <35.445251, 32.258343, 33.531368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815926, 32.108219, 33.539288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015836, 0.091617, 0.995668,
		-0.375495, -0.922361, 0.090844,
		0.926689, -0.375308, 0.019795,
		36.093933, 31.995626, 33.545227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385044, 31.688587, 34.022751>,  <35.445251, 32.258343, 33.531368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385044, 31.688587, 34.022751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765408, 31.807026, 33.986732>,  <35.993626, 31.878090, 33.965122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765408, 31.807026, 33.986732>,  <35.385044, 31.688587, 34.022751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765408, 31.807026, 33.986732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117034, -0.074693, 0.990315,
		0.286504, -0.952233, -0.105679,
		0.950904, 0.296097, -0.090044,
		36.050678, 31.895855, 33.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748737, 31.353157, 34.543125>,  <35.385044, 31.688587, 34.022751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748737, 31.353157, 34.543125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.027687, 31.624437, 34.450428>,  <36.195057, 31.787207, 34.394810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.027687, 31.624437, 34.450428>,  <35.748737, 31.353157, 34.543125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027687, 31.624437, 34.450428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295325, 0.022699, 0.955127,
		0.653031, -0.734524, -0.184461,
		0.697376, 0.678203, -0.231747,
		36.236900, 31.827898, 34.380905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286335, 31.138311, 34.997185>,  <35.748737, 31.353157, 34.543125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286335, 31.138311, 34.997185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342724, 31.514471, 34.873394>,  <36.376556, 31.740168, 34.799122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342724, 31.514471, 34.873394>,  <36.286335, 31.138311, 34.997185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342724, 31.514471, 34.873394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223460, 0.274302, 0.935320,
		0.964465, -0.201011, -0.171472,
		0.140975, 0.940400, -0.309473,
		36.385017, 31.796591, 34.780552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027580, 31.320641, 35.178379>,  <36.286335, 31.138311, 34.997185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027580, 31.320641, 35.178379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765190, 31.621925, 35.158901>,  <36.607758, 31.802696, 35.147217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765190, 31.621925, 35.158901>,  <37.027580, 31.320641, 35.178379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765190, 31.621925, 35.158901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162953, 0.204317, 0.965247,
		0.736982, 0.625244, -0.256764,
		-0.655976, 0.753210, -0.048693,
		36.568398, 31.847889, 35.144295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583904, 31.316347, 35.654499>,  <37.027580, 31.320641, 35.178379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583904, 31.316347, 35.654499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966114, 31.394855, 35.742542>,  <38.195442, 31.441961, 35.795368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966114, 31.394855, 35.742542>,  <37.583904, 31.316347, 35.654499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966114, 31.394855, 35.742542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204803, 0.095395, -0.974143,
		-0.212193, 0.975898, 0.050956,
		0.955526, 0.196271, 0.220109,
		38.252773, 31.453737, 35.808575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861759, 31.882517, 35.259590>,  <37.583904, 31.316347, 35.654499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861759, 31.882517, 35.259590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201447, 31.703249, 35.371288>,  <38.405258, 31.595688, 35.438309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201447, 31.703249, 35.371288>,  <37.861759, 31.882517, 35.259590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201447, 31.703249, 35.371288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272293, -0.081436, -0.958762,
		0.452429, 0.890232, 0.052877,
		0.849214, -0.448169, 0.279248,
		38.456211, 31.568798, 35.455063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436214, 32.229000, 34.931042>,  <37.861759, 31.882517, 35.259590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436214, 32.229000, 34.931042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.549675, 31.850395, 34.992565>,  <38.617752, 31.623232, 35.029480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.549675, 31.850395, 34.992565>,  <38.436214, 32.229000, 34.931042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549675, 31.850395, 34.992565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222571, -0.091034, -0.970657,
		0.932740, 0.309564, 0.184844,
		0.283653, -0.946511, 0.153811,
		38.634769, 31.566442, 35.038708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737923, 32.039215, 34.286247>,  <38.436214, 32.229000, 34.931042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737923, 32.039215, 34.286247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777615, 31.687313, 34.472229>,  <38.801430, 31.476171, 34.583817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777615, 31.687313, 34.472229>,  <38.737923, 32.039215, 34.286247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777615, 31.687313, 34.472229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367185, -0.401911, -0.838834,
		0.924840, 0.253960, 0.283153,
		0.099228, -0.879757, 0.464954,
		38.807384, 31.423386, 34.611713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511299, 31.830555, 34.218723>,  <38.737923, 32.039215, 34.286247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511299, 31.830555, 34.218723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252701, 31.529488, 34.268581>,  <39.097542, 31.348846, 34.298496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252701, 31.529488, 34.268581>,  <39.511299, 31.830555, 34.218723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252701, 31.529488, 34.268581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392350, -0.468128, -0.791781,
		0.654298, -0.462977, 0.597951,
		-0.646494, -0.752668, 0.124646,
		39.058754, 31.303688, 34.305977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905273, 31.179424, 34.292912>,  <39.511299, 31.830555, 34.218723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905273, 31.179424, 34.292912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537704, 31.101231, 34.155876>,  <39.317162, 31.054316, 34.073654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537704, 31.101231, 34.155876>,  <39.905273, 31.179424, 34.292912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537704, 31.101231, 34.155876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393155, -0.383939, -0.835476,
		0.031788, -0.902428, 0.429665,
		-0.918922, -0.195484, -0.342590,
		39.262028, 31.042585, 34.053101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040260, 30.460064, 33.962498>,  <39.905273, 31.179424, 34.292912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040260, 30.460064, 33.962498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.693394, 30.603140, 33.823883>,  <39.485275, 30.688986, 33.740715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.693394, 30.603140, 33.823883>,  <40.040260, 30.460064, 33.962498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693394, 30.603140, 33.823883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292104, -0.198272, -0.935608,
		-0.403367, -0.912549, 0.067451,
		-0.867162, 0.357691, -0.346536,
		39.433247, 30.710447, 33.719921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827278, 29.970818, 33.481220>,  <40.040260, 30.460064, 33.962498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827278, 29.970818, 33.481220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566288, 30.249382, 33.361694>,  <39.409695, 30.416521, 33.289978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566288, 30.249382, 33.361694>,  <39.827278, 29.970818, 33.481220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566288, 30.249382, 33.361694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107248, -0.305483, -0.946139,
		-0.750182, -0.649380, 0.124631,
		-0.652476, 0.696410, -0.298812,
		39.370544, 30.458305, 33.272049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229355, 29.726997, 33.097263>,  <39.827278, 29.970818, 33.481220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229355, 29.726997, 33.097263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266254, 30.102228, 32.963696>,  <39.288395, 30.327366, 32.883556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266254, 30.102228, 32.963696>,  <39.229355, 29.726997, 33.097263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266254, 30.102228, 32.963696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129193, -0.343789, -0.930117,
		-0.987319, 0.042667, -0.152908,
		0.092254, 0.938077, -0.333917,
		39.293930, 30.383652, 32.863522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854904, 29.783739, 32.567055>,  <39.229355, 29.726997, 33.097263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854904, 29.783739, 32.567055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117382, 30.077868, 32.499283>,  <39.274868, 30.254345, 32.458618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117382, 30.077868, 32.499283>,  <38.854904, 29.783739, 32.567055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117382, 30.077868, 32.499283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012958, -0.235479, -0.971793,
		-0.754478, 0.635493, -0.164049,
		0.656197, 0.735322, -0.169429,
		39.314240, 30.298464, 32.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736130, 29.961676, 31.890001>,  <38.854904, 29.783739, 32.567055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736130, 29.961676, 31.890001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106590, 30.102539, 31.944012>,  <39.328865, 30.187057, 31.976418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106590, 30.102539, 31.944012>,  <38.736130, 29.961676, 31.890001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106590, 30.102539, 31.944012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152281, -0.021630, -0.988101,
		-0.345046, 0.935691, -0.073659,
		0.926150, 0.352157, 0.135025,
		39.384434, 30.208187, 31.984520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870525, 30.387775, 31.358213>,  <38.736130, 29.961676, 31.890001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870525, 30.387775, 31.358213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240734, 30.325333, 31.496225>,  <39.462860, 30.287867, 31.579033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240734, 30.325333, 31.496225>,  <38.870525, 30.387775, 31.358213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240734, 30.325333, 31.496225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348833, -0.003243, -0.937179,
		0.147421, 0.987734, 0.051454,
		0.925518, -0.156109, 0.345032,
		39.518391, 30.278500, 31.599735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346508, 30.843998, 30.965069>,  <38.870525, 30.387775, 31.358213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346508, 30.843998, 30.965069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.602859, 30.563026, 31.088917>,  <39.756672, 30.394444, 31.163225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.602859, 30.563026, 31.088917>,  <39.346508, 30.843998, 30.965069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602859, 30.563026, 31.088917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352711, -0.088786, -0.931511,
		0.681810, 0.706194, 0.190853,
		0.640882, -0.702430, 0.309618,
		39.795124, 30.352297, 31.181803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019836, 31.073124, 30.776161>,  <39.346508, 30.843998, 30.965069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019836, 31.073124, 30.776161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038319, 30.676779, 30.826849>,  <40.049408, 30.438972, 30.857262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038319, 30.676779, 30.826849>,  <40.019836, 31.073124, 30.776161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038319, 30.676779, 30.826849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416438, -0.096199, -0.904060,
		0.907990, 0.094541, 0.408188,
		0.046204, -0.990862, 0.126719,
		40.052181, 30.379520, 30.864864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559837, 30.966801, 30.351316>,  <40.019836, 31.073124, 30.776161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559837, 30.966801, 30.351316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.386219, 30.611834, 30.413408>,  <40.282047, 30.398853, 30.450663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.386219, 30.611834, 30.413408>,  <40.559837, 30.966801, 30.351316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386219, 30.611834, 30.413408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231334, -0.276318, -0.932809,
		0.870683, -0.368971, 0.325224,
		-0.434045, -0.887417, 0.155229,
		40.256004, 30.345608, 30.459976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012974, 30.480722, 30.170303>,  <40.559837, 30.966801, 30.351316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012974, 30.480722, 30.170303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.651302, 30.313923, 30.133272>,  <40.434299, 30.213844, 30.111053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.651302, 30.313923, 30.133272>,  <41.012974, 30.480722, 30.170303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651302, 30.313923, 30.133272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194079, -0.207987, -0.958684,
		0.380515, -0.884790, 0.268988,
		-0.904180, -0.416998, -0.092577,
		40.380047, 30.188824, 30.105499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206615, 29.938913, 29.680141>,  <41.012974, 30.480722, 30.170303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206615, 29.938913, 29.680141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.810959, 29.997616, 29.677088>,  <40.573566, 30.032837, 29.675257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.810959, 29.997616, 29.677088>,  <41.206615, 29.938913, 29.680141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810959, 29.997616, 29.677088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017623, -0.170028, -0.985282,
		-0.145889, -0.974451, 0.170768,
		-0.989144, 0.146751, -0.007632,
		40.514217, 30.041643, 29.674797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059303, 29.527512, 29.275194>,  <41.206615, 29.938913, 29.680141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059303, 29.527512, 29.275194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.737778, 29.765369, 29.268415>,  <40.544865, 29.908083, 29.264347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.737778, 29.765369, 29.268415>,  <41.059303, 29.527512, 29.275194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737778, 29.765369, 29.268415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007666, -0.038843, -0.999216,
		-0.594835, -0.803051, 0.035781,
		-0.803812, 0.594643, -0.016949,
		40.496635, 29.943762, 29.263330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582745, 29.197414, 28.897038>,  <41.059303, 29.527512, 29.275194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582745, 29.197414, 28.897038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484158, 29.584837, 28.883419>,  <40.425007, 29.817289, 28.875248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484158, 29.584837, 28.883419>,  <40.582745, 29.197414, 28.897038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484158, 29.584837, 28.883419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000798, -0.035332, -0.999375,
		-0.969152, -0.246282, 0.009481,
		-0.246463, 0.968554, -0.034045,
		40.410217, 29.875402, 28.873205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.745792, 29.331036, 28.438717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.985859, 29.650387, 28.458288>,  <40.129898, 29.841997, 28.470032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.985859, 29.650387, 28.458288>,  <39.745792, 29.331036, 28.438717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985859, 29.650387, 28.458288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247047, 0.243199, -0.937988,
		-0.760769, 0.550860, 0.343196,
		0.600165, 0.798378, 0.048930,
		40.165909, 29.889900, 28.472967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367451, 29.868893, 27.988718>,  <39.745792, 29.331036, 28.438717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367451, 29.868893, 27.988718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738804, 30.014460, 28.018827>,  <39.961617, 30.101801, 28.036892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738804, 30.014460, 28.018827>,  <39.367451, 29.868893, 27.988718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738804, 30.014460, 28.018827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055808, 0.336783, -0.939927,
		-0.367408, 0.868412, 0.332973,
		0.928384, 0.363919, 0.075272,
		40.017319, 30.123636, 28.041409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374428, 30.556398, 27.603521>,  <39.367451, 29.868893, 27.988718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374428, 30.556398, 27.603521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.763382, 30.468285, 27.634361>,  <39.996754, 30.415417, 27.652866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.763382, 30.468285, 27.634361>,  <39.374428, 30.556398, 27.603521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763382, 30.468285, 27.634361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161433, 0.396249, -0.903840,
		0.168550, 0.891326, 0.420867,
		0.972384, -0.220284, 0.077101,
		40.055096, 30.402199, 27.657492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788242, 31.198685, 27.416628>,  <39.374428, 30.556398, 27.603521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788242, 31.198685, 27.416628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027893, 30.881596, 27.371668>,  <40.171684, 30.691341, 27.344692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027893, 30.881596, 27.371668>,  <39.788242, 31.198685, 27.416628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027893, 30.881596, 27.371668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251364, 0.319522, -0.913631,
		0.760172, 0.519128, 0.390697,
		0.599128, -0.792724, -0.112402,
		40.207630, 30.643778, 27.337948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450897, 31.378040, 27.093899>,  <39.788242, 31.198685, 27.416628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450897, 31.378040, 27.093899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.396343, 30.988617, 27.020594>,  <40.363609, 30.754963, 26.976610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.396343, 30.988617, 27.020594>,  <40.450897, 31.378040, 27.093899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396343, 30.988617, 27.020594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154969, 0.161747, -0.974588,
		0.978460, -0.161321, 0.128812,
		-0.136386, -0.973557, -0.183263,
		40.355427, 30.696550, 26.965614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857162, 31.268906, 26.583158>,  <40.450897, 31.378040, 27.093899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857162, 31.268906, 26.583158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639595, 30.933783, 26.564268>,  <40.509052, 30.732710, 26.552935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639595, 30.933783, 26.564268>,  <40.857162, 31.268906, 26.583158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639595, 30.933783, 26.564268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026368, 0.039188, -0.998884,
		0.838722, -0.544559, 0.000776,
		-0.543921, -0.837807, -0.047227,
		40.476418, 30.682440, 26.550100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155319, 30.815748, 26.153461>,  <40.857162, 31.268906, 26.583158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155319, 30.815748, 26.153461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.780651, 30.676109, 26.142277>,  <40.555851, 30.592325, 26.135565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.780651, 30.676109, 26.142277>,  <41.155319, 30.815748, 26.153461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780651, 30.676109, 26.142277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014249, 0.041790, -0.999025,
		0.349927, -0.936154, -0.034169,
		-0.936669, -0.349099, -0.027963,
		40.499649, 30.571381, 26.133888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159508, 30.201200, 25.682682>,  <41.155319, 30.815748, 26.153461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159508, 30.201200, 25.682682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.790131, 30.352322, 25.709566>,  <40.568504, 30.442995, 25.725697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.790131, 30.352322, 25.709566>,  <41.159508, 30.201200, 25.682682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790131, 30.352322, 25.709566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069447, 0.007718, -0.997556,
		-0.377401, -0.925853, 0.019110,
		-0.923442, 0.377805, 0.067210,
		40.513100, 30.465664, 25.729729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847931, 29.815323, 25.101303>,  <41.159508, 30.201200, 25.682682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847931, 29.815323, 25.101303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.610809, 30.124563, 25.191544>,  <40.468536, 30.310108, 25.245687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.610809, 30.124563, 25.191544>,  <40.847931, 29.815323, 25.101303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610809, 30.124563, 25.191544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163061, 0.159109, -0.973702,
		-0.788665, -0.614003, 0.031741,
		-0.592806, 0.773100, 0.225603,
		40.432968, 30.356493, 25.259224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395790, 29.773384, 24.549738>,  <40.847931, 29.815323, 25.101303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395790, 29.773384, 24.549738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356709, 30.144060, 24.694899>,  <40.333260, 30.366467, 24.781996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356709, 30.144060, 24.694899>,  <40.395790, 29.773384, 24.549738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356709, 30.144060, 24.694899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085170, 0.371096, -0.924680,
		-0.991565, -0.059434, -0.115183,
		-0.097701, 0.926691, 0.362904,
		40.327396, 30.422068, 24.803770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868507, 30.141623, 24.084555>,  <40.395790, 29.773384, 24.549738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868507, 30.141623, 24.084555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106831, 30.408659, 24.263144>,  <40.249825, 30.568882, 24.370296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106831, 30.408659, 24.263144>,  <39.868507, 30.141623, 24.084555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106831, 30.408659, 24.263144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199929, 0.415130, -0.887522,
		-0.777847, 0.618052, 0.113865,
		0.595803, 0.667592, 0.446474,
		40.285572, 30.608936, 24.397085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590961, 30.727051, 23.794254>,  <39.868507, 30.141623, 24.084555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590961, 30.727051, 23.794254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.964230, 30.775356, 23.929668>,  <40.188190, 30.804338, 24.010918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.964230, 30.775356, 23.929668>,  <39.590961, 30.727051, 23.794254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964230, 30.775356, 23.929668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216525, 0.562912, -0.797651,
		-0.286892, 0.817647, 0.499146,
		0.933172, 0.120762, 0.338536,
		40.244183, 30.811584, 24.031229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831554, 31.344643, 23.635223>,  <39.590961, 30.727051, 23.794254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831554, 31.344643, 23.635223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183197, 31.169653, 23.710888>,  <40.394184, 31.064659, 23.756287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183197, 31.169653, 23.710888>,  <39.831554, 31.344643, 23.635223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183197, 31.169653, 23.710888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347077, 0.315585, -0.883144,
		0.326655, 0.842035, 0.429271,
		0.879110, -0.437474, 0.189163,
		40.446930, 31.038410, 23.767637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246105, 31.889894, 23.550940>,  <39.831554, 31.344643, 23.635223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246105, 31.889894, 23.550940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.471901, 31.562284, 23.509861>,  <40.607380, 31.365719, 23.485214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.471901, 31.562284, 23.509861>,  <40.246105, 31.889894, 23.550940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471901, 31.562284, 23.509861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416910, 0.390276, -0.820896,
		0.712414, 0.420575, 0.561768,
		0.564493, -0.819025, -0.102696,
		40.641251, 31.316578, 23.479052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683483, 32.222618, 23.156609>,  <40.246105, 31.889894, 23.550940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683483, 32.222618, 23.156609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760193, 31.831463, 23.123228>,  <40.806217, 31.596769, 23.103201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760193, 31.831463, 23.123228>,  <40.683483, 32.222618, 23.156609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760193, 31.831463, 23.123228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379052, 0.152228, -0.912768,
		0.905287, 0.143410, 0.399862,
		0.191770, -0.977886, -0.083450,
		40.817722, 31.538097, 23.098192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291981, 32.261700, 22.840042>,  <40.683483, 32.222618, 23.156609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291981, 32.261700, 22.840042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133331, 31.901386, 22.769293>,  <41.038143, 31.685200, 22.726843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133331, 31.901386, 22.769293>,  <41.291981, 32.261700, 22.840042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133331, 31.901386, 22.769293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137134, 0.132376, -0.981667,
		0.907680, -0.413609, 0.071024,
		-0.396624, -0.900780, -0.176875,
		41.014343, 31.631153, 22.716230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741714, 31.980808, 22.368084>,  <41.291981, 32.261700, 22.840042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741714, 31.980808, 22.368084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404121, 31.766926, 22.351196>,  <41.201565, 31.638596, 22.341063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404121, 31.766926, 22.351196>,  <41.741714, 31.980808, 22.368084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404121, 31.766926, 22.351196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001962, 0.075639, -0.997133,
		0.536368, -0.841645, -0.062789,
		-0.843982, -0.534707, -0.042222,
		41.150928, 31.606514, 22.338530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876884, 31.368326, 21.981024>,  <41.741714, 31.980808, 22.368084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876884, 31.368326, 21.981024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490681, 31.471012, 21.963631>,  <41.258957, 31.532623, 21.953196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490681, 31.471012, 21.963631>,  <41.876884, 31.368326, 21.981024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490681, 31.471012, 21.963631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127780, 0.321673, -0.938189,
		-0.226860, -0.911386, -0.343381,
		-0.965509, 0.256715, -0.043482,
		41.201027, 31.548027, 21.950586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540272, 31.152353, 21.349453>,  <41.876884, 31.368326, 21.981024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540272, 31.152353, 21.349453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.292759, 31.443811, 21.466883>,  <41.144253, 31.618687, 21.537340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.292759, 31.443811, 21.466883>,  <41.540272, 31.152353, 21.349453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292759, 31.443811, 21.466883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019618, 0.359264, -0.933030,
		-0.785320, -0.583099, -0.208010,
		-0.618779, 0.728646, 0.293576,
		41.107124, 31.662405, 21.554956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104294, 31.243176, 20.833693>,  <41.540272, 31.152353, 21.349453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104294, 31.243176, 20.833693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041492, 31.584366, 21.032804>,  <41.003811, 31.789080, 21.152271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041492, 31.584366, 21.032804>,  <41.104294, 31.243176, 20.833693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041492, 31.584366, 21.032804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244705, 0.454713, -0.856362,
		-0.956802, -0.256257, 0.137338,
		-0.156999, 0.852976, 0.497778,
		40.994392, 31.840260, 21.182138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423409, 31.520544, 20.550066>,  <41.104294, 31.243176, 20.833693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423409, 31.520544, 20.550066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.556049, 31.840155, 20.750704>,  <40.635635, 32.031921, 20.871086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.556049, 31.840155, 20.750704>,  <40.423409, 31.520544, 20.550066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556049, 31.840155, 20.750704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271207, 0.589972, -0.760513,
		-0.903596, 0.116154, 0.412339,
		0.331605, 0.799025, 0.501594,
		40.655529, 32.079861, 20.901182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903404, 32.164082, 20.605768>,  <40.423409, 31.520544, 20.550066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903404, 32.164082, 20.605768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.272018, 32.309128, 20.661314>,  <40.493187, 32.396156, 20.694641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.272018, 32.309128, 20.661314>,  <39.903404, 32.164082, 20.605768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272018, 32.309128, 20.661314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146050, 0.655064, -0.741323,
		-0.359780, 0.662874, 0.656625,
		0.921536, 0.362613, 0.138866,
		40.548481, 32.417912, 20.702974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395752, 31.588976, 20.524717>,  <39.903404, 32.164082, 20.605768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395752, 31.588976, 20.524717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.667526, 31.425310, 20.768339>,  <39.830593, 31.327110, 20.914513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.667526, 31.425310, 20.768339>,  <39.395752, 31.588976, 20.524717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667526, 31.425310, 20.768339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723354, 0.234402, -0.649473,
		0.122978, 0.881839, 0.455232,
		0.679438, -0.409164, 0.609056,
		39.871357, 31.302561, 20.951056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715427, 31.789131, 20.309353>,  <39.395752, 31.588976, 20.524717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715427, 31.789131, 20.309353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678707, 32.026028, 19.989147>,  <38.656677, 32.168167, 19.797024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678707, 32.026028, 19.989147>,  <38.715427, 31.789131, 20.309353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678707, 32.026028, 19.989147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198240, 0.798686, 0.568156,
		0.975845, -0.106538, -0.190724,
		-0.091798, 0.592242, -0.800514,
		38.651169, 32.203701, 19.748993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300392, 32.189564, 20.109335>,  <38.715427, 31.789131, 20.309353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300392, 32.189564, 20.109335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969204, 32.385601, 20.000326>,  <38.770489, 32.503223, 19.934921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969204, 32.385601, 20.000326>,  <39.300392, 32.189564, 20.109335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969204, 32.385601, 20.000326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207620, 0.719358, 0.662886,
		0.520918, 0.492270, -0.697363,
		-0.827973, 0.490096, -0.272521,
		38.720814, 32.532631, 19.918570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482243, 32.931870, 20.141548>,  <39.300392, 32.189564, 20.109335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482243, 32.931870, 20.141548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083969, 32.930256, 20.178640>,  <38.845005, 32.929287, 20.200895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083969, 32.930256, 20.178640>,  <39.482243, 32.931870, 20.141548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083969, 32.930256, 20.178640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073221, 0.579888, 0.811399,
		-0.057044, 0.814686, -0.577089,
		-0.995683, -0.004031, 0.092731,
		38.785263, 32.929047, 20.206459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302113, 33.593555, 20.454288>,  <39.482243, 32.931870, 20.141548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302113, 33.593555, 20.454288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003853, 33.336586, 20.525059>,  <38.824898, 33.182404, 20.567520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003853, 33.336586, 20.525059>,  <39.302113, 33.593555, 20.454288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003853, 33.336586, 20.525059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222618, 0.490432, 0.842566,
		-0.628053, 0.588872, -0.508704,
		-0.745648, -0.642423, 0.176924,
		38.780159, 33.143860, 20.578136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831577, 33.930447, 20.964119>,  <39.302113, 33.593555, 20.454288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831577, 33.930447, 20.964119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725750, 33.546204, 20.998156>,  <38.662254, 33.315659, 21.018578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725750, 33.546204, 20.998156>,  <38.831577, 33.930447, 20.964119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725750, 33.546204, 20.998156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164959, 0.132016, 0.977425,
		-0.950153, 0.244562, -0.193388,
		-0.264571, -0.960605, 0.085093,
		38.646378, 33.258022, 21.023684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184139, 33.949181, 21.278280>,  <38.831577, 33.930447, 20.964119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184139, 33.949181, 21.278280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297726, 33.572868, 21.352348>,  <38.365879, 33.347080, 21.396790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297726, 33.572868, 21.352348>,  <38.184139, 33.949181, 21.278280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297726, 33.572868, 21.352348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152052, 0.146491, 0.977456,
		-0.946700, -0.305723, -0.101448,
		0.283970, -0.940783, 0.185169,
		38.382915, 33.290634, 21.407900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678791, 33.662022, 21.701628>,  <38.184139, 33.949181, 21.278280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678791, 33.662022, 21.701628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994873, 33.423492, 21.758158>,  <38.184521, 33.280376, 21.792076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994873, 33.423492, 21.758158>,  <37.678791, 33.662022, 21.701628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994873, 33.423492, 21.758158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264903, -0.124410, 0.956216,
		-0.552632, -0.793045, -0.256277,
		0.790206, -0.596324, 0.141327,
		38.231934, 33.244595, 21.800556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401772, 33.109806, 22.164396>,  <37.678791, 33.662022, 21.701628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401772, 33.109806, 22.164396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800148, 33.138313, 22.186405>,  <38.039173, 33.155418, 22.199612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800148, 33.138313, 22.186405>,  <37.401772, 33.109806, 22.164396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800148, 33.138313, 22.186405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038796, -0.211816, 0.976539,
		0.081251, -0.974708, -0.208191,
		0.995938, 0.071267, 0.055025,
		38.098930, 33.159695, 22.202913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628326, 32.514378, 22.532137>,  <37.401772, 33.109806, 22.164396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628326, 32.514378, 22.532137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932087, 32.766953, 22.594877>,  <38.114342, 32.918499, 22.632523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932087, 32.766953, 22.594877>,  <37.628326, 32.514378, 22.532137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932087, 32.766953, 22.594877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122645, -0.375683, 0.918597,
		0.638963, -0.678343, -0.362735,
		0.759398, 0.631437, 0.156852,
		38.159904, 32.956383, 22.641933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134426, 32.098862, 22.820847>,  <37.628326, 32.514378, 22.532137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134426, 32.098862, 22.820847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230793, 32.470955, 22.931574>,  <38.288612, 32.694210, 22.998011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230793, 32.470955, 22.931574>,  <38.134426, 32.098862, 22.820847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230793, 32.470955, 22.931574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197540, -0.326249, 0.924413,
		0.950229, -0.168028, -0.262358,
		0.240921, 0.930230, 0.276819,
		38.303070, 32.750023, 23.014620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763672, 31.982063, 23.166815>,  <38.134426, 32.098862, 22.820847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763672, 31.982063, 23.166815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582058, 32.325325, 23.262669>,  <38.473091, 32.531281, 23.320181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582058, 32.325325, 23.262669>,  <38.763672, 31.982063, 23.166815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582058, 32.325325, 23.262669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074502, -0.231446, 0.969991,
		0.887864, 0.458262, 0.041150,
		-0.454034, 0.858154, 0.239634,
		38.445847, 32.582771, 23.334558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172798, 32.286850, 23.620411>,  <38.763672, 31.982063, 23.166815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172798, 32.286850, 23.620411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827835, 32.478577, 23.685530>,  <38.620857, 32.593613, 23.724602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827835, 32.478577, 23.685530>,  <39.172798, 32.286850, 23.620411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827835, 32.478577, 23.685530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094089, -0.164217, 0.981927,
		0.497387, 0.862142, 0.096524,
		-0.862411, 0.479316, 0.162797,
		38.569111, 32.622372, 23.734369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235054, 32.465260, 24.301981>,  <39.172798, 32.286850, 23.620411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235054, 32.465260, 24.301981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846821, 32.537098, 24.237841>,  <38.613880, 32.580200, 24.199356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846821, 32.537098, 24.237841>,  <39.235054, 32.465260, 24.301981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846821, 32.537098, 24.237841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200501, -0.234199, 0.951289,
		0.133293, 0.955456, 0.263319,
		-0.970583, 0.179596, -0.160353,
		38.555645, 32.590977, 24.189735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077808, 32.847397, 24.863276>,  <39.235054, 32.465260, 24.301981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077808, 32.847397, 24.863276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744267, 32.680027, 24.719271>,  <38.544144, 32.579605, 24.632868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744267, 32.680027, 24.719271>,  <39.077808, 32.847397, 24.863276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744267, 32.680027, 24.719271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224888, -0.338099, 0.913846,
		-0.504099, 0.842975, 0.187826,
		-0.833853, -0.418429, -0.360010,
		38.494110, 32.554497, 24.611267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580566, 32.950775, 25.424461>,  <39.077808, 32.847397, 24.863276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580566, 32.950775, 25.424461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448093, 32.651634, 25.194319>,  <38.368610, 32.472149, 25.056232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448093, 32.651634, 25.194319>,  <38.580566, 32.950775, 25.424461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448093, 32.651634, 25.194319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163614, -0.555017, 0.815590,
		-0.929273, 0.364246, 0.061454,
		-0.331184, -0.747851, -0.575357,
		38.348740, 32.427280, 25.021711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009792, 32.734390, 25.836922>,  <38.580566, 32.950775, 25.424461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009792, 32.734390, 25.836922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111671, 32.430904, 25.597095>,  <38.172798, 32.248814, 25.453199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111671, 32.430904, 25.597095>,  <38.009792, 32.734390, 25.836922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111671, 32.430904, 25.597095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231486, -0.649823, 0.723978,
		-0.938905, -0.045604, -0.341140,
		0.254697, -0.758716, -0.599566,
		38.188080, 32.203289, 25.417225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505249, 32.272896, 25.934675>,  <38.009792, 32.734390, 25.836922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505249, 32.272896, 25.934675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790905, 32.055649, 25.758026>,  <37.962299, 31.925301, 25.652037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790905, 32.055649, 25.758026>,  <37.505249, 32.272896, 25.934675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790905, 32.055649, 25.758026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177066, -0.750523, 0.636681,
		-0.677236, -0.376486, -0.632147,
		0.714142, -0.543115, -0.441618,
		38.005146, 31.892714, 25.625540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240856, 31.645386, 25.608131>,  <37.505249, 32.272896, 25.934675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240856, 31.645386, 25.608131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620964, 31.575346, 25.711151>,  <37.849030, 31.533321, 25.772963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620964, 31.575346, 25.711151>,  <37.240856, 31.645386, 25.608131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620964, 31.575346, 25.711151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300727, -0.730899, 0.612658,
		0.080967, -0.659641, -0.747207,
		0.950267, -0.175100, 0.257551,
		37.906044, 31.522816, 25.788416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283241, 30.931084, 25.710220>,  <37.240856, 31.645386, 25.608131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283241, 30.931084, 25.710220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591644, 31.099909, 25.900972>,  <37.776684, 31.201204, 26.015423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591644, 31.099909, 25.900972>,  <37.283241, 30.931084, 25.710220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591644, 31.099909, 25.900972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111367, -0.647932, 0.753513,
		0.627015, -0.634071, -0.452555,
		0.771005, 0.422064, 0.476878,
		37.822945, 31.226528, 26.044035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535881, 30.395903, 26.033348>,  <37.283241, 30.931084, 25.710220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535881, 30.395903, 26.033348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670704, 30.727156, 26.212498>,  <37.751598, 30.925907, 26.319988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670704, 30.727156, 26.212498>,  <37.535881, 30.395903, 26.033348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670704, 30.727156, 26.212498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106482, -0.439127, 0.892092,
		0.935445, -0.348373, -0.059828,
		0.337053, 0.828132, 0.447874,
		37.771820, 30.975595, 26.346861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961899, 30.273434, 26.591774>,  <37.535881, 30.395903, 26.033348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961899, 30.273434, 26.591774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791283, 30.628044, 26.663485>,  <37.688911, 30.840811, 26.706511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791283, 30.628044, 26.663485>,  <37.961899, 30.273434, 26.591774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791283, 30.628044, 26.663485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162997, -0.270310, 0.948875,
		0.889661, 0.375510, 0.259798,
		-0.426539, 0.886524, 0.179278,
		37.663322, 30.894001, 26.717268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.615784, 29.469406, 31.598862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364132, 29.754925, 31.475773>,  <40.213142, 29.926235, 31.401918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364132, 29.754925, 31.475773>,  <40.615784, 29.469406, 31.598862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364132, 29.754925, 31.475773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184727, 0.247248, 0.951180,
		0.755033, 0.655259, -0.023693,
		-0.629128, 0.713795, -0.307724,
		40.175392, 29.969063, 31.383455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838188, 30.153408, 31.924099>,  <40.615784, 29.469406, 31.598862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838188, 30.153408, 31.924099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.446217, 30.170563, 31.846224>,  <40.211033, 30.180857, 31.799498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.446217, 30.170563, 31.846224>,  <40.838188, 30.153408, 31.924099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446217, 30.170563, 31.846224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190505, 0.086343, 0.977882,
		0.058750, 0.995342, -0.076439,
		-0.979927, 0.042889, -0.194690,
		40.152237, 30.183430, 31.787817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513004, 30.814228, 32.211487>,  <40.838188, 30.153408, 31.924099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513004, 30.814228, 32.211487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173420, 30.610533, 32.154991>,  <39.969669, 30.488316, 32.121094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173420, 30.610533, 32.154991>,  <40.513004, 30.814228, 32.211487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173420, 30.610533, 32.154991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344691, 0.331009, 0.878420,
		-0.400576, 0.794423, -0.456543,
		-0.848956, -0.509240, -0.141236,
		39.918732, 30.457760, 32.112621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032970, 31.320036, 32.238823>,  <40.513004, 30.814228, 32.211487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032970, 31.320036, 32.238823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850838, 30.973583, 32.321270>,  <39.741558, 30.765711, 32.370739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850838, 30.973583, 32.321270>,  <40.032970, 31.320036, 32.238823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850838, 30.973583, 32.321270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367932, 0.393876, 0.842311,
		-0.810739, 0.307695, -0.498023,
		-0.455334, -0.866133, 0.206119,
		39.714237, 30.713743, 32.383106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549274, 31.608105, 32.544582>,  <40.032970, 31.320036, 32.238823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549274, 31.608105, 32.544582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463524, 31.228155, 32.635609>,  <39.412071, 31.000185, 32.690224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463524, 31.228155, 32.635609>,  <39.549274, 31.608105, 32.544582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463524, 31.228155, 32.635609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389519, 0.296790, 0.871889,
		-0.895721, 0.098274, -0.433619,
		-0.214378, -0.949873, 0.227562,
		39.399212, 30.943193, 32.703876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947300, 31.650131, 32.907482>,  <39.549274, 31.608105, 32.544582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947300, 31.650131, 32.907482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063683, 31.284573, 33.020718>,  <39.133511, 31.065237, 33.088657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063683, 31.284573, 33.020718>,  <38.947300, 31.650131, 32.907482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063683, 31.284573, 33.020718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408930, 0.148708, 0.900368,
		-0.864939, -0.377732, -0.330452,
		0.290957, -0.913895, 0.283089,
		39.150970, 31.010405, 33.105644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388371, 31.311945, 33.324165>,  <38.947300, 31.650131, 32.907482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388371, 31.311945, 33.324165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.717716, 31.116636, 33.439869>,  <38.915321, 30.999451, 33.509289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.717716, 31.116636, 33.439869>,  <38.388371, 31.311945, 33.324165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717716, 31.116636, 33.439869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373817, -0.083113, 0.923771,
		-0.427009, -0.868726, -0.250956,
		0.823361, -0.488270, 0.289254,
		38.964725, 30.970156, 33.526646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150486, 30.602682, 33.712776>,  <38.388371, 31.311945, 33.324165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150486, 30.602682, 33.712776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507172, 30.750443, 33.817375>,  <38.721184, 30.839100, 33.880135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507172, 30.750443, 33.817375>,  <38.150486, 30.602682, 33.712776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507172, 30.750443, 33.817375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317738, 0.099490, 0.942944,
		0.322310, -0.923928, 0.206090,
		0.891717, 0.369403, 0.261501,
		38.774685, 30.861263, 33.895824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317223, 30.244707, 34.355289>,  <38.150486, 30.602682, 33.712776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317223, 30.244707, 34.355289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539322, 30.577063, 34.340767>,  <38.672581, 30.776476, 34.332054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539322, 30.577063, 34.340767>,  <38.317223, 30.244707, 34.355289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539322, 30.577063, 34.340767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027771, 0.062156, 0.997680,
		0.831219, -0.552955, 0.057587,
		0.555252, 0.830889, -0.036310,
		38.705898, 30.826330, 34.329872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590210, 30.230486, 34.974911>,  <38.317223, 30.244707, 34.355289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590210, 30.230486, 34.974911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694065, 30.597494, 34.854416>,  <38.756378, 30.817699, 34.782120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694065, 30.597494, 34.854416>,  <38.590210, 30.230486, 34.974911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694065, 30.597494, 34.854416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006638, 0.310236, 0.950636,
		0.965683, -0.248821, 0.074458,
		0.259638, 0.917519, -0.301241,
		38.771957, 30.872749, 34.764042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004379, 30.390732, 35.506638>,  <38.590210, 30.230486, 34.974911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004379, 30.390732, 35.506638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894836, 30.739799, 35.344921>,  <38.829113, 30.949240, 35.247890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894836, 30.739799, 35.344921>,  <39.004379, 30.390732, 35.506638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894836, 30.739799, 35.344921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112956, 0.446635, 0.887558,
		0.955115, 0.197395, -0.220886,
		-0.273855, 0.872670, -0.404290,
		38.812679, 31.001600, 35.223633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426777, 30.825886, 35.908623>,  <39.004379, 30.390732, 35.506638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426777, 30.825886, 35.908623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135288, 31.056356, 35.760571>,  <38.960396, 31.194639, 35.671741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135288, 31.056356, 35.760571>,  <39.426777, 30.825886, 35.908623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135288, 31.056356, 35.760571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113420, 0.431470, 0.894969,
		0.675357, 0.694160, -0.249069,
		-0.728717, 0.576174, -0.370128,
		38.916672, 31.229208, 35.649532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512566, 31.502943, 36.256680>,  <39.426777, 30.825886, 35.908623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512566, 31.502943, 36.256680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.136684, 31.511097, 36.120129>,  <38.911156, 31.515989, 36.038197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.136684, 31.511097, 36.120129>,  <39.512566, 31.502943, 36.256680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136684, 31.511097, 36.120129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303902, 0.408008, 0.860914,
		0.156832, 0.912751, -0.377213,
		-0.939706, 0.020383, -0.341376,
		38.854774, 31.517212, 36.017715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044117, 32.196003, 36.279495>,  <39.512566, 31.502943, 36.256680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044117, 32.196003, 36.279495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798412, 31.881729, 36.308830>,  <38.650990, 31.693165, 36.326431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798412, 31.881729, 36.308830>,  <39.044117, 32.196003, 36.279495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798412, 31.881729, 36.308830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189638, 0.237199, 0.952772,
		-0.765973, 0.571347, -0.294699,
		-0.614266, -0.785684, 0.073339,
		38.614132, 31.646025, 36.330833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992474, 32.834873, 36.454266>,  <39.044117, 32.196003, 36.279495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992474, 32.834873, 36.454266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290916, 33.085976, 36.543037>,  <39.469982, 33.236637, 36.596298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290916, 33.085976, 36.543037>,  <38.992474, 32.834873, 36.454266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290916, 33.085976, 36.543037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345248, 0.649753, -0.677218,
		-0.569323, 0.428657, 0.701516,
		0.746106, 0.627753, 0.221926,
		39.514748, 33.274303, 36.609615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690052, 33.431213, 36.286415>,  <38.992474, 32.834873, 36.454266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690052, 33.431213, 36.286415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064861, 33.547623, 36.363667>,  <39.289745, 33.617470, 36.410015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064861, 33.547623, 36.363667>,  <38.690052, 33.431213, 36.286415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064861, 33.547623, 36.363667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162580, 0.852803, -0.496280,
		-0.309128, 0.433626, 0.846409,
		0.937021, 0.291023, 0.193126,
		39.345966, 33.634930, 36.421604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574455, 34.129490, 36.494431>,  <38.690052, 33.431213, 36.286415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574455, 34.129490, 36.494431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952026, 34.064217, 36.379627>,  <39.178570, 34.025055, 36.310745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952026, 34.064217, 36.379627>,  <38.574455, 34.129490, 36.494431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952026, 34.064217, 36.379627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059365, 0.771265, -0.633740,
		0.324776, 0.615242, 0.718329,
		0.943926, -0.163180, -0.287012,
		39.235203, 34.015263, 36.293522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989525, 34.821827, 36.504082>,  <38.574455, 34.129490, 36.494431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989525, 34.821827, 36.504082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234264, 34.587379, 36.291630>,  <39.381107, 34.446712, 36.164158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234264, 34.587379, 36.291630>,  <38.989525, 34.821827, 36.504082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234264, 34.587379, 36.291630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103256, 0.724935, -0.681034,
		0.784204, 0.361849, 0.504073,
		0.611852, -0.586118, -0.531134,
		39.417820, 34.411545, 36.132290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509830, 35.200611, 36.276115>,  <38.989525, 34.821827, 36.504082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509830, 35.200611, 36.276115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522163, 34.890869, 36.023315>,  <39.529564, 34.705025, 35.871635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522163, 34.890869, 36.023315>,  <39.509830, 35.200611, 36.276115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522163, 34.890869, 36.023315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196894, 0.624621, -0.755699,
		0.979940, -0.101135, 0.171727,
		0.030837, -0.774352, -0.632004,
		39.531414, 34.658566, 35.833714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940479, 35.435551, 35.691681>,  <39.509830, 35.200611, 36.276115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940479, 35.435551, 35.691681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743824, 35.132950, 35.519173>,  <39.625832, 34.951389, 35.415668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743824, 35.132950, 35.519173>,  <39.940479, 35.435551, 35.691681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743824, 35.132950, 35.519173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197644, 0.385392, -0.901338,
		0.848074, -0.528370, -0.039955,
		-0.491638, -0.756504, -0.431270,
		39.596333, 34.905998, 35.389793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393044, 35.176075, 35.195992>,  <39.940479, 35.435551, 35.691681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393044, 35.176075, 35.195992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048038, 35.015858, 35.072296>,  <39.841034, 34.919727, 34.998077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048038, 35.015858, 35.072296>,  <40.393044, 35.176075, 35.195992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048038, 35.015858, 35.072296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264592, 0.163929, -0.950325,
		0.431344, -0.901492, -0.035409,
		-0.862516, -0.400548, -0.309238,
		39.789284, 34.895695, 34.979527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653847, 34.933239, 34.659122>,  <40.393044, 35.176075, 35.195992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653847, 34.933239, 34.659122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.255756, 34.930031, 34.620197>,  <40.016903, 34.928108, 34.596840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.255756, 34.930031, 34.620197>,  <40.653847, 34.933239, 34.659122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255756, 34.930031, 34.620197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097109, 0.023069, -0.995006,
		0.010211, -0.999702, -0.022181,
		-0.995221, -0.008006, -0.097315,
		39.957191, 34.927624, 34.591003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509686, 34.355392, 34.238121>,  <40.653847, 34.933239, 34.659122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509686, 34.355392, 34.238121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221531, 34.631283, 34.208935>,  <40.048637, 34.796818, 34.191425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221531, 34.631283, 34.208935>,  <40.509686, 34.355392, 34.238121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221531, 34.631283, 34.208935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102064, 0.001368, -0.994777,
		-0.686024, -0.724069, -0.071382,
		-0.720384, 0.689727, -0.072962,
		40.005417, 34.838200, 34.187046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070255, 34.137444, 33.827896>,  <40.509686, 34.355392, 34.238121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070255, 34.137444, 33.827896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.963936, 34.521275, 33.790886>,  <39.900143, 34.751572, 33.768681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.963936, 34.521275, 33.790886>,  <40.070255, 34.137444, 33.827896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963936, 34.521275, 33.790886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059148, -0.112031, -0.991943,
		-0.962212, -0.258186, 0.086535,
		-0.265800, 0.959578, -0.092526,
		39.884197, 34.809147, 33.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489208, 34.229111, 33.269844>,  <40.070255, 34.137444, 33.827896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489208, 34.229111, 33.269844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656044, 34.592186, 33.288338>,  <39.756145, 34.810032, 33.299435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656044, 34.592186, 33.288338>,  <39.489208, 34.229111, 33.269844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656044, 34.592186, 33.288338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156041, 0.121631, -0.980233,
		-0.895370, 0.401630, 0.192367,
		0.417089, 0.907689, 0.046234,
		39.781170, 34.864494, 33.302208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969585, 34.677818, 32.979153>,  <39.489208, 34.229111, 33.269844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969585, 34.677818, 32.979153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312489, 34.883770, 32.977924>,  <39.518230, 35.007343, 32.977188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312489, 34.883770, 32.977924>,  <38.969585, 34.677818, 32.979153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312489, 34.883770, 32.977924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150802, 0.245373, -0.957628,
		-0.492314, 0.821393, 0.287993,
		0.857255, 0.514884, -0.003068,
		39.569664, 35.038235, 32.977005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785294, 35.346558, 32.662262>,  <38.969585, 34.677818, 32.979153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785294, 35.346558, 32.662262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183323, 35.316513, 32.636402>,  <39.422142, 35.298485, 32.620884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183323, 35.316513, 32.636402>,  <38.785294, 35.346558, 32.662262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183323, 35.316513, 32.636402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023011, 0.459431, -0.887915,
		0.096396, 0.885032, 0.455441,
		0.995077, -0.075111, -0.064653,
		39.481846, 35.293980, 32.617004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041019, 36.020679, 32.466866>,  <38.785294, 35.346558, 32.662262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041019, 36.020679, 32.466866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302574, 35.743759, 32.344784>,  <39.459507, 35.577606, 32.271534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302574, 35.743759, 32.344784>,  <39.041019, 36.020679, 32.466866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302574, 35.743759, 32.344784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233222, 0.199314, -0.951778,
		0.719749, 0.693536, -0.031131,
		0.653888, -0.692302, -0.305203,
		39.498741, 35.536068, 32.253223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318485, 36.830399, 32.557980>,  <39.041019, 36.020679, 32.466866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318485, 36.830399, 32.557980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165428, 37.189922, 32.472439>,  <39.073593, 37.405636, 32.421116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165428, 37.189922, 32.472439>,  <39.318485, 36.830399, 32.557980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165428, 37.189922, 32.472439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101449, 0.189194, 0.976685,
		0.918311, 0.395413, 0.018790,
		-0.382639, 0.898807, -0.213853,
		39.050636, 37.459564, 32.408283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743164, 37.461441, 32.861443>,  <39.318485, 36.830399, 32.557980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743164, 37.461441, 32.861443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357262, 37.556511, 32.816246>,  <39.125721, 37.613552, 32.789127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357262, 37.556511, 32.816246>,  <39.743164, 37.461441, 32.861443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357262, 37.556511, 32.816246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090167, 0.104818, 0.990395,
		0.247233, 0.965673, -0.079693,
		-0.964752, 0.237673, -0.112987,
		39.067837, 37.627811, 32.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560921, 37.967918, 33.425190>,  <39.743164, 37.461441, 32.861443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560921, 37.967918, 33.425190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.205822, 37.845917, 33.287273>,  <38.992764, 37.772717, 33.204521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.205822, 37.845917, 33.287273>,  <39.560921, 37.967918, 33.425190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205822, 37.845917, 33.287273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417524, 0.218043, 0.882117,
		-0.193870, 0.927054, -0.320914,
		-0.887743, -0.305005, -0.344795,
		38.939499, 37.754414, 33.183834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113392, 38.280018, 33.951176>,  <39.560921, 37.967918, 33.425190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113392, 38.280018, 33.951176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.870064, 38.034061, 33.750431>,  <38.724068, 37.886490, 33.629986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.870064, 38.034061, 33.750431>,  <39.113392, 38.280018, 33.951176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870064, 38.034061, 33.750431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585084, -0.079848, 0.807032,
		-0.536308, 0.784561, -0.311189,
		-0.608317, -0.614889, -0.501857,
		38.687569, 37.849594, 33.599873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451633, 38.562626, 34.064331>,  <39.113392, 38.280018, 33.951176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451633, 38.562626, 34.064331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438992, 38.170437, 33.986694>,  <38.431408, 37.935123, 33.940113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438992, 38.170437, 33.986694>,  <38.451633, 38.562626, 34.064331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438992, 38.170437, 33.986694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524507, -0.149034, 0.838260,
		-0.850819, 0.128297, -0.509555,
		-0.031605, -0.980473, -0.194094,
		38.429508, 37.876293, 33.928467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647411, 38.313362, 34.261597>,  <38.451633, 38.562626, 34.064331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647411, 38.313362, 34.261597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.865730, 37.979092, 34.237106>,  <37.996723, 37.778530, 34.222412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.865730, 37.979092, 34.237106>,  <37.647411, 38.313362, 34.261597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865730, 37.979092, 34.237106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534453, -0.403478, 0.742675,
		-0.645340, -0.372628, -0.666847,
		0.545799, -0.835676, -0.061228,
		38.029469, 37.728390, 34.218739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145386, 37.668716, 34.157463>,  <37.647411, 38.313362, 34.261597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145386, 37.668716, 34.157463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489712, 37.535641, 34.311512>,  <37.696308, 37.455795, 34.403942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489712, 37.535641, 34.311512>,  <37.145386, 37.668716, 34.157463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489712, 37.535641, 34.311512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505377, -0.469657, 0.723890,
		-0.059955, -0.817765, -0.572420,
		0.860813, -0.332689, 0.385122,
		37.747955, 37.435833, 34.427048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057793, 37.008430, 34.219978>,  <37.145386, 37.668716, 34.157463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057793, 37.008430, 34.219978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375038, 37.056545, 34.458809>,  <37.565388, 37.085415, 34.602108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375038, 37.056545, 34.458809>,  <37.057793, 37.008430, 34.219978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375038, 37.056545, 34.458809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435989, -0.572403, 0.694455,
		0.425299, -0.811102, -0.401540,
		0.793117, 0.120283, 0.597074,
		37.612972, 37.092628, 34.637932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189545, 36.366726, 34.513844>,  <37.057793, 37.008430, 34.219978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189545, 36.366726, 34.513844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387280, 36.596455, 34.774853>,  <37.505920, 36.734291, 34.931458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387280, 36.596455, 34.774853>,  <37.189545, 36.366726, 34.513844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387280, 36.596455, 34.774853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397243, -0.518439, 0.757244,
		0.773197, -0.633542, -0.028135,
		0.494333, 0.574322, 0.652525,
		37.535580, 36.768753, 34.970612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619362, 35.894600, 34.960583>,  <37.189545, 36.366726, 34.513844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619362, 35.894600, 34.960583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548664, 36.240524, 35.148567>,  <37.506245, 36.448078, 35.261356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548664, 36.240524, 35.148567>,  <37.619362, 35.894600, 34.960583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548664, 36.240524, 35.148567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151303, -0.495672, 0.855229,
		0.972558, 0.080050, 0.218455,
		-0.176744, 0.864813, 0.469958,
		37.495640, 36.499969, 35.289555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793701, 35.862892, 35.653809>,  <37.619362, 35.894600, 34.960583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793701, 35.862892, 35.653809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578899, 36.193199, 35.722786>,  <37.450016, 36.391384, 35.764172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578899, 36.193199, 35.722786>,  <37.793701, 35.862892, 35.653809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578899, 36.193199, 35.722786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182661, -0.313398, 0.931889,
		0.823565, 0.468931, 0.319132,
		-0.537007, 0.825764, 0.172448,
		37.417797, 36.440929, 35.774521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930592, 36.215450, 36.354309>,  <37.793701, 35.862892, 35.653809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930592, 36.215450, 36.354309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.567608, 36.323631, 36.225700>,  <37.349819, 36.388542, 36.148537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.567608, 36.323631, 36.225700>,  <37.930592, 36.215450, 36.354309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567608, 36.323631, 36.225700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341994, -0.030964, 0.939192,
		0.244054, 0.962234, 0.120593,
		-0.907457, 0.270455, -0.321521,
		37.295372, 36.404766, 36.129246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.949078, 36.720795, 28.880434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610882, 36.933819, 28.864841>,  <39.407963, 37.061634, 28.855486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610882, 36.933819, 28.864841>,  <39.949078, 36.720795, 28.880434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610882, 36.933819, 28.864841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024847, 0.033688, 0.999123,
		0.533411, 0.845719, -0.015250,
		-0.845491, 0.532565, -0.038983,
		39.357235, 37.093590, 28.853148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089905, 37.349087, 29.299105>,  <39.949078, 36.720795, 28.880434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089905, 37.349087, 29.299105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691711, 37.319672, 29.275103>,  <39.452793, 37.302021, 29.260702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691711, 37.319672, 29.275103>,  <40.089905, 37.349087, 29.299105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691711, 37.319672, 29.275103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071982, 0.172885, 0.982308,
		-0.061862, 0.982193, -0.177398,
		-0.995486, -0.073537, -0.060006,
		39.393066, 37.297611, 29.257101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844097, 37.969280, 29.537424>,  <40.089905, 37.349087, 29.299105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844097, 37.969280, 29.537424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542664, 37.709835, 29.580143>,  <39.361801, 37.554169, 29.605774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542664, 37.709835, 29.580143>,  <39.844097, 37.969280, 29.537424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542664, 37.709835, 29.580143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154943, 0.333153, 0.930055,
		-0.638827, 0.684330, -0.351558,
		-0.753587, -0.648615, 0.106795,
		39.316589, 37.515251, 29.612181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334824, 38.325378, 29.879938>,  <39.844097, 37.969280, 29.537424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334824, 38.325378, 29.879938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219112, 37.947891, 29.944094>,  <39.149685, 37.721401, 29.982586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219112, 37.947891, 29.944094>,  <39.334824, 38.325378, 29.879938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219112, 37.947891, 29.944094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376191, 0.266146, 0.887494,
		-0.880227, 0.196394, -0.432006,
		-0.289275, -0.943714, 0.160388,
		39.132328, 37.664776, 29.992210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654926, 38.393303, 30.201883>,  <39.334824, 38.325378, 29.879938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654926, 38.393303, 30.201883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786488, 38.022968, 30.276337>,  <38.865425, 37.800766, 30.321009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786488, 38.022968, 30.276337>,  <38.654926, 38.393303, 30.201883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786488, 38.022968, 30.276337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270282, 0.096565, 0.957926,
		-0.904860, -0.365371, -0.218477,
		0.328901, -0.925840, 0.186131,
		38.885159, 37.745216, 30.332176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084484, 38.037590, 30.602728>,  <38.654926, 38.393303, 30.201883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084484, 38.037590, 30.602728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413479, 37.821289, 30.673271>,  <38.610878, 37.691509, 30.715597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413479, 37.821289, 30.673271>,  <38.084484, 38.037590, 30.602728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413479, 37.821289, 30.673271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210379, -0.001155, 0.977619,
		-0.528443, -0.841183, -0.114712,
		0.822489, -0.540749, 0.176357,
		38.660225, 37.659065, 30.726179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907749, 37.385933, 30.974478>,  <38.084484, 38.037590, 30.602728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907749, 37.385933, 30.974478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291477, 37.462456, 31.057522>,  <38.521713, 37.508369, 31.107349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291477, 37.462456, 31.057522>,  <37.907749, 37.385933, 30.974478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291477, 37.462456, 31.057522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149126, -0.281041, 0.948039,
		0.239710, -0.940436, -0.241081,
		0.959323, 0.191303, 0.207612,
		38.579273, 37.519848, 31.119804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183250, 36.914078, 31.411392>,  <37.907749, 37.385933, 30.974478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183250, 36.914078, 31.411392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471558, 37.180584, 31.487896>,  <38.644543, 37.340488, 31.533798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471558, 37.180584, 31.487896>,  <38.183250, 36.914078, 31.411392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471558, 37.180584, 31.487896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060939, -0.213943, 0.974944,
		0.690489, -0.714367, -0.113603,
		0.720772, 0.666265, 0.191258,
		38.687790, 37.380463, 31.545273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674053, 36.627457, 31.962057>,  <38.183250, 36.914078, 31.411392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674053, 36.627457, 31.962057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753788, 37.019184, 31.975958>,  <38.801628, 37.254219, 31.984299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753788, 37.019184, 31.975958>,  <38.674053, 36.627457, 31.962057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753788, 37.019184, 31.975958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165373, -0.001339, 0.986230,
		0.965877, -0.202338, 0.161685,
		0.199335, 0.979315, 0.034754,
		38.813587, 37.312977, 31.986383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368889, 36.344536, 31.918858>,  <38.674053, 36.627457, 31.962057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368889, 36.344536, 31.918858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502960, 35.971279, 31.866858>,  <39.583401, 35.747326, 31.835657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502960, 35.971279, 31.866858>,  <39.368889, 36.344536, 31.918858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502960, 35.971279, 31.866858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071038, 0.162617, -0.984129,
		0.939474, 0.320620, 0.120794,
		0.335174, -0.933144, -0.129999,
		39.603512, 35.691338, 31.827858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935947, 36.374233, 31.400595>,  <39.368889, 36.344536, 31.918858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935947, 36.374233, 31.400595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812393, 35.993793, 31.400320>,  <39.738262, 35.765530, 31.400154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812393, 35.993793, 31.400320>,  <39.935947, 36.374233, 31.400595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812393, 35.993793, 31.400320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065097, -0.020419, -0.997670,
		0.948869, -0.308210, 0.068220,
		-0.308884, -0.951099, -0.000689,
		39.719727, 35.708466, 31.400114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413769, 36.006817, 31.104082>,  <39.935947, 36.374233, 31.400595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413769, 36.006817, 31.104082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101555, 35.761189, 31.057285>,  <39.914227, 35.613811, 31.029207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101555, 35.761189, 31.057285>,  <40.413769, 36.006817, 31.104082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101555, 35.761189, 31.057285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221972, -0.097308, -0.970185,
		0.584377, -0.783231, 0.212258,
		-0.780533, -0.614069, -0.116991,
		39.867393, 35.576969, 31.022188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680969, 35.385006, 30.770639>,  <40.413769, 36.006817, 31.104082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680969, 35.385006, 30.770639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286312, 35.417656, 30.714260>,  <40.049519, 35.437248, 30.680433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286312, 35.417656, 30.714260>,  <40.680969, 35.385006, 30.770639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286312, 35.417656, 30.714260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134396, -0.080885, -0.987621,
		-0.092027, -0.993374, 0.068833,
		-0.986645, 0.081637, -0.140949,
		39.990318, 35.442146, 30.671976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547516, 34.865910, 30.374125>,  <40.680969, 35.385006, 30.770639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547516, 34.865910, 30.374125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190979, 35.039101, 30.320393>,  <39.977058, 35.143017, 30.288153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190979, 35.039101, 30.320393>,  <40.547516, 34.865910, 30.374125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190979, 35.039101, 30.320393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017885, -0.329670, -0.943927,
		-0.452987, -0.838955, 0.301591,
		-0.891337, 0.432981, -0.134332,
		39.923576, 35.168995, 30.280092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177166, 34.325027, 30.066040>,  <40.547516, 34.865910, 30.374125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177166, 34.325027, 30.066040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988640, 34.671383, 29.998995>,  <39.875526, 34.879196, 29.958769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988640, 34.671383, 29.998995>,  <40.177166, 34.325027, 30.066040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988640, 34.671383, 29.998995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170418, -0.275871, -0.945967,
		-0.865345, -0.417282, 0.277585,
		-0.471313, 0.865893, -0.167611,
		39.847244, 34.931152, 29.948711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522289, 34.222584, 29.826458>,  <40.177166, 34.325027, 30.066040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522289, 34.222584, 29.826458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649700, 34.576859, 29.691339>,  <39.726147, 34.789421, 29.610270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649700, 34.576859, 29.691339>,  <39.522289, 34.222584, 29.826458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649700, 34.576859, 29.691339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062500, -0.335957, -0.939801,
		-0.945851, 0.320464, -0.051656,
		0.318527, 0.885684, -0.337794,
		39.745258, 34.842564, 29.590002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011032, 34.357517, 29.243391>,  <39.522289, 34.222584, 29.826458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011032, 34.357517, 29.243391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321568, 34.604702, 29.193726>,  <39.507889, 34.753014, 29.163925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321568, 34.604702, 29.193726>,  <39.011032, 34.357517, 29.243391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321568, 34.604702, 29.193726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040131, -0.148132, -0.988153,
		-0.629033, 0.772127, -0.090202,
		0.776342, 0.617961, -0.124166,
		39.554470, 34.790089, 29.156475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819248, 34.821064, 28.708881>,  <39.011032, 34.357517, 29.243391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819248, 34.821064, 28.708881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218979, 34.832642, 28.717897>,  <39.458817, 34.839588, 28.723307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218979, 34.832642, 28.717897>,  <38.819248, 34.821064, 28.708881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218979, 34.832642, 28.717897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022450, 0.003447, -0.999742,
		-0.029016, 0.999575, 0.002795,
		0.999327, 0.028945, 0.022540,
		39.518776, 34.841324, 28.724659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132545, 35.320152, 28.118034>,  <38.819248, 34.821064, 28.708881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132545, 35.320152, 28.118034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438072, 35.086231, 28.227270>,  <39.621387, 34.945877, 28.292812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438072, 35.086231, 28.227270>,  <39.132545, 35.320152, 28.118034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438072, 35.086231, 28.227270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242805, -0.131678, -0.961097,
		0.598015, 0.800414, 0.041415,
		0.763822, -0.584806, 0.273090,
		39.667217, 34.910789, 28.309196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684177, 35.445522, 27.645956>,  <39.132545, 35.320152, 28.118034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684177, 35.445522, 27.645956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802986, 35.103237, 27.815445>,  <39.874271, 34.897865, 27.917137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802986, 35.103237, 27.815445>,  <39.684177, 35.445522, 27.645956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802986, 35.103237, 27.815445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485494, -0.246772, -0.838689,
		0.822236, 0.454826, 0.342143,
		0.297026, -0.855709, 0.423720,
		39.892094, 34.846523, 27.942560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379120, 35.307060, 27.422140>,  <39.684177, 35.445522, 27.645956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379120, 35.307060, 27.422140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251217, 34.942795, 27.526791>,  <40.174477, 34.724236, 27.589581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251217, 34.942795, 27.526791>,  <40.379120, 35.307060, 27.422140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251217, 34.942795, 27.526791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301522, -0.359570, -0.883059,
		0.898242, -0.203480, 0.389560,
		-0.319759, -0.910662, 0.261627,
		40.155289, 34.669598, 27.605278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994545, 34.900188, 27.243645>,  <40.379120, 35.307060, 27.422140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994545, 34.900188, 27.243645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686695, 34.645332, 27.260277>,  <40.501984, 34.492420, 27.270256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686695, 34.645332, 27.260277>,  <40.994545, 34.900188, 27.243645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686695, 34.645332, 27.260277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295685, -0.413371, -0.861217,
		0.565904, -0.650520, 0.506533,
		-0.769625, -0.637140, 0.041579,
		40.455807, 34.454189, 27.272751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307182, 34.380066, 27.178362>,  <40.994545, 34.900188, 27.243645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307182, 34.380066, 27.178362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924400, 34.323746, 27.076849>,  <40.694729, 34.289955, 27.015942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924400, 34.323746, 27.076849>,  <41.307182, 34.380066, 27.178362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924400, 34.323746, 27.076849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279572, -0.212524, -0.936308,
		0.077896, -0.966959, 0.242740,
		-0.956960, -0.140798, -0.253780,
		40.637314, 34.281506, 27.000715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.945648, 33.525120, 24.733229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215473, 33.757084, 24.915949>,  <35.377369, 33.896263, 25.025581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215473, 33.757084, 24.915949>,  <34.945648, 33.525120, 24.733229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215473, 33.757084, 24.915949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391967, -0.242996, 0.887307,
		0.625563, -0.777594, 0.063392,
		0.674561, 0.579914, 0.456801,
		35.417843, 33.931057, 25.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980732, 33.120125, 25.336201>,  <34.945648, 33.525120, 24.733229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980732, 33.120125, 25.336201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171627, 33.464146, 25.408369>,  <35.286163, 33.670559, 25.451670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171627, 33.464146, 25.408369>,  <34.980732, 33.120125, 25.336201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171627, 33.464146, 25.408369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202977, -0.091872, 0.974864,
		0.855009, -0.501866, 0.130725,
		0.477241, 0.860052, 0.180419,
		35.314800, 33.722160, 25.462494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696304, 32.977280, 25.639606>,  <34.980732, 33.120125, 25.336201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696304, 32.977280, 25.639606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510952, 33.320896, 25.726624>,  <35.399742, 33.527065, 25.778833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510952, 33.320896, 25.726624>,  <35.696304, 32.977280, 25.639606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510952, 33.320896, 25.726624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084109, -0.201745, 0.975820,
		0.882159, 0.470472, 0.021231,
		-0.463379, 0.859043, 0.217542,
		35.371937, 33.578609, 25.791885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910183, 33.111610, 26.340851>,  <35.696304, 32.977280, 25.639606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910183, 33.111610, 26.340851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644890, 33.408020, 26.298901>,  <35.485714, 33.585865, 26.273729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644890, 33.408020, 26.298901>,  <35.910183, 33.111610, 26.340851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644890, 33.408020, 26.298901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132070, 0.022049, 0.990995,
		0.736665, 0.671115, 0.083243,
		-0.663236, 0.741025, -0.104877,
		35.445919, 33.630329, 26.267437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055962, 33.678173, 26.807356>,  <35.910183, 33.111610, 26.340851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055962, 33.678173, 26.807356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.667404, 33.711891, 26.718548>,  <35.434269, 33.732121, 26.665262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.667404, 33.711891, 26.718548>,  <36.055962, 33.678173, 26.807356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667404, 33.711891, 26.718548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229198, -0.087948, 0.969399,
		0.062187, 0.992552, 0.104752,
		-0.971391, 0.084293, -0.222021,
		35.375988, 33.737179, 26.651941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964355, 34.232670, 27.167913>,  <36.055962, 33.678173, 26.807356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964355, 34.232670, 27.167913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617504, 34.038929, 27.121464>,  <35.409393, 33.922684, 27.093594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617504, 34.038929, 27.121464>,  <35.964355, 34.232670, 27.167913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617504, 34.038929, 27.121464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190202, 0.106532, 0.975948,
		-0.460332, 0.868363, -0.184502,
		-0.867132, -0.484353, -0.116124,
		35.357365, 33.893623, 27.086626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454796, 34.489475, 27.580101>,  <35.964355, 34.232670, 27.167913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454796, 34.489475, 27.580101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.289059, 34.128616, 27.532028>,  <35.189617, 33.912102, 27.503183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.289059, 34.128616, 27.532028>,  <35.454796, 34.489475, 27.580101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289059, 34.128616, 27.532028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308487, 0.014979, 0.951110,
		-0.856243, 0.431165, -0.284508,
		-0.414347, -0.902149, -0.120183,
		35.164753, 33.857971, 27.495974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907959, 34.532604, 27.974243>,  <35.454796, 34.489475, 27.580101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907959, 34.532604, 27.974243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998894, 34.145912, 27.927334>,  <35.053455, 33.913898, 27.899189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998894, 34.145912, 27.927334>,  <34.907959, 34.532604, 27.974243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998894, 34.145912, 27.927334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220638, -0.168427, 0.960703,
		-0.948492, -0.192528, -0.251586,
		0.227336, -0.966729, -0.117273,
		35.067093, 33.855892, 27.892153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452160, 34.316933, 28.415167>,  <34.907959, 34.532604, 27.974243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452160, 34.316933, 28.415167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.678375, 33.987762, 28.393414>,  <34.814102, 33.790260, 28.380362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.678375, 33.987762, 28.393414>,  <34.452160, 34.316933, 28.415167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678375, 33.987762, 28.393414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188405, -0.193110, 0.962918,
		-0.802916, -0.534318, -0.264254,
		0.565535, -0.822929, -0.054383,
		34.848038, 33.740883, 28.377098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050018, 33.857124, 28.688135>,  <34.452160, 34.316933, 28.415167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050018, 33.857124, 28.688135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.422733, 33.719093, 28.733200>,  <34.646362, 33.636272, 28.760239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.422733, 33.719093, 28.733200>,  <34.050018, 33.857124, 28.688135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422733, 33.719093, 28.733200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199463, -0.227407, 0.953153,
		-0.303299, -0.910606, -0.280726,
		0.931786, -0.345084, 0.112660,
		34.702271, 33.615570, 28.766998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025902, 33.217670, 29.077675>,  <34.050018, 33.857124, 28.688135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025902, 33.217670, 29.077675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407810, 33.335133, 29.096336>,  <34.636955, 33.405609, 29.107533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407810, 33.335133, 29.096336>,  <34.025902, 33.217670, 29.077675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407810, 33.335133, 29.096336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031409, -0.255630, 0.966264,
		0.295674, -0.921097, -0.253292,
		0.954772, 0.293655, 0.046653,
		34.694241, 33.423229, 29.110332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405148, 32.616470, 29.456535>,  <34.025902, 33.217670, 29.077675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405148, 32.616470, 29.456535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593937, 32.968716, 29.473305>,  <34.707211, 33.180061, 29.483366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593937, 32.968716, 29.473305>,  <34.405148, 32.616470, 29.456535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593937, 32.968716, 29.473305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127638, -0.115304, 0.985096,
		0.872324, -0.459589, -0.166821,
		0.471974, 0.880615, 0.041921,
		34.735531, 33.232899, 29.485882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920914, 32.415241, 29.939436>,  <34.405148, 32.616470, 29.456535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920914, 32.415241, 29.939436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916496, 32.814922, 29.924093>,  <34.913845, 33.054729, 29.914888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916496, 32.814922, 29.924093>,  <34.920914, 32.415241, 29.939436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916496, 32.814922, 29.924093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184165, 0.039733, 0.982092,
		0.982833, 0.003782, -0.184457,
		-0.011043, 0.999203, -0.038355,
		34.913185, 33.114685, 29.912586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558544, 32.585617, 30.290094>,  <34.920914, 32.415241, 29.939436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558544, 32.585617, 30.290094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322327, 32.907814, 30.270374>,  <35.180595, 33.101131, 30.258541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322327, 32.907814, 30.270374>,  <35.558544, 32.585617, 30.290094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322327, 32.907814, 30.270374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114431, 0.144056, 0.982931,
		0.798850, 0.574824, -0.177246,
		-0.590546, 0.805497, -0.049302,
		35.145164, 33.149464, 30.255585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335556, 32.397907, 30.433531>,  <35.558544, 32.585617, 30.290094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335556, 32.397907, 30.433531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.349884, 32.011341, 30.535322>,  <36.358482, 31.779402, 30.596397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.349884, 32.011341, 30.535322>,  <36.335556, 32.397907, 30.433531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349884, 32.011341, 30.535322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176680, -0.244507, -0.953415,
		0.983616, 0.079112, 0.161988,
		0.035819, -0.966415, 0.254478,
		36.360630, 31.721416, 30.611666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972088, 32.171448, 30.291523>,  <36.335556, 32.397907, 30.433531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972088, 32.171448, 30.291523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744350, 31.842697, 30.283924>,  <36.607708, 31.645447, 30.279366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744350, 31.842697, 30.283924>,  <36.972088, 32.171448, 30.291523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744350, 31.842697, 30.283924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140440, -0.074467, -0.987285,
		0.810013, -0.564775, 0.157822,
		-0.569346, -0.821878, -0.018998,
		36.573547, 31.596134, 30.278225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364307, 31.650015, 29.976923>,  <36.972088, 32.171448, 30.291523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364307, 31.650015, 29.976923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991875, 31.510357, 29.934629>,  <36.768414, 31.426561, 29.909254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991875, 31.510357, 29.934629>,  <37.364307, 31.650015, 29.976923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991875, 31.510357, 29.934629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231904, -0.342744, -0.910356,
		0.281609, -0.872137, 0.400092,
		-0.931084, -0.349147, -0.105732,
		36.712551, 31.405613, 29.902910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485153, 31.046835, 29.675468>,  <37.364307, 31.650015, 29.976923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485153, 31.046835, 29.675468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111267, 31.153515, 29.581505>,  <36.886936, 31.217524, 29.525127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111267, 31.153515, 29.581505>,  <37.485153, 31.046835, 29.675468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111267, 31.153515, 29.581505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190171, -0.183054, -0.964534,
		-0.300244, -0.946235, 0.120384,
		-0.934713, 0.266702, -0.234908,
		36.830853, 31.233526, 29.511032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306919, 30.537378, 29.288567>,  <37.485153, 31.046835, 29.675468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306919, 30.537378, 29.288567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062355, 30.834621, 29.179775>,  <36.915619, 31.012968, 29.114500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062355, 30.834621, 29.179775>,  <37.306919, 30.537378, 29.288567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062355, 30.834621, 29.179775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233390, -0.159071, -0.959284,
		-0.756117, -0.649988, -0.076177,
		-0.611406, 0.743109, -0.271977,
		36.878933, 31.057554, 29.098183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848251, 30.273180, 28.766792>,  <37.306919, 30.537378, 29.288567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848251, 30.273180, 28.766792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.837406, 30.668386, 28.706011>,  <36.830898, 30.905510, 28.669542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.837406, 30.668386, 28.706011>,  <36.848251, 30.273180, 28.766792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837406, 30.668386, 28.706011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044348, -0.150669, -0.987589,
		-0.998648, -0.033519, -0.039731,
		-0.027117, 0.988016, -0.151952,
		36.829269, 30.964790, 28.660425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371387, 30.359241, 28.197899>,  <36.848251, 30.273180, 28.766792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371387, 30.359241, 28.197899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.597637, 30.689102, 28.196205>,  <36.733387, 30.887018, 28.195189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.597637, 30.689102, 28.196205>,  <36.371387, 30.359241, 28.197899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597637, 30.689102, 28.196205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119495, -0.087038, -0.989012,
		-0.815960, 0.558903, -0.147773,
		0.565624, 0.824652, -0.004234,
		36.767323, 30.936499, 28.194935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447010, 30.542629, 27.578257>,  <36.371387, 30.359241, 28.197899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447010, 30.542629, 27.578257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702637, 30.818159, 27.715147>,  <36.856014, 30.983477, 27.797281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702637, 30.818159, 27.715147>,  <36.447010, 30.542629, 27.578257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702637, 30.818159, 27.715147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362229, 0.122975, -0.923941,
		-0.678516, 0.714424, -0.170923,
		0.639066, 0.688822, 0.342226,
		36.894356, 31.024805, 27.817814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405003, 31.124317, 27.161167>,  <36.447010, 30.542629, 27.578257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405003, 31.124317, 27.161167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765404, 31.147879, 27.333082>,  <36.981644, 31.162016, 27.436232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765404, 31.147879, 27.333082>,  <36.405003, 31.124317, 27.161167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765404, 31.147879, 27.333082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414597, 0.174624, -0.893093,
		-0.127659, 0.982872, 0.132915,
		0.901006, 0.058905, 0.429788,
		37.035706, 31.165550, 27.462019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716347, 31.767973, 26.987301>,  <36.405003, 31.124317, 27.161167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716347, 31.767973, 26.987301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024582, 31.527260, 27.071255>,  <37.209522, 31.382832, 27.121628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024582, 31.527260, 27.071255>,  <36.716347, 31.767973, 26.987301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024582, 31.527260, 27.071255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428281, 0.245064, -0.869781,
		0.471983, 0.760133, 0.446575,
		0.770589, -0.601782, 0.209884,
		37.255760, 31.346725, 27.134220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383408, 32.095951, 26.967945>,  <36.716347, 31.767973, 26.987301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383408, 32.095951, 26.967945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.471325, 31.716743, 26.875898>,  <37.524075, 31.489220, 26.820671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.471325, 31.716743, 26.875898>,  <37.383408, 32.095951, 26.967945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471325, 31.716743, 26.875898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402921, 0.303042, -0.863609,
		0.888450, 0.097099, 0.448584,
		0.219796, -0.948017, -0.230115,
		37.537262, 31.432339, 26.806864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132069, 32.118725, 26.875402>,  <37.383408, 32.095951, 26.967945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132069, 32.118725, 26.875402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043201, 31.759096, 26.724504>,  <37.989880, 31.543320, 26.633966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043201, 31.759096, 26.724504>,  <38.132069, 32.118725, 26.875402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043201, 31.759096, 26.724504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605321, 0.176128, -0.776250,
		0.764347, -0.400812, 0.505097,
		-0.222168, -0.899071, -0.377243,
		37.976551, 31.489374, 26.611332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718510, 31.816566, 26.680931>,  <38.132069, 32.118725, 26.875402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718510, 31.816566, 26.680931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460564, 31.593536, 26.471832>,  <38.305798, 31.459719, 26.346373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460564, 31.593536, 26.471832>,  <38.718510, 31.816566, 26.680931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460564, 31.593536, 26.471832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501090, 0.208015, -0.840023,
		0.577116, -0.803641, 0.145255,
		-0.644861, -0.557576, -0.522745,
		38.267105, 31.426264, 26.315008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110996, 31.415182, 26.167372>,  <38.718510, 31.816566, 26.680931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110996, 31.415182, 26.167372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733498, 31.467312, 26.045807>,  <38.507000, 31.498590, 25.972868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733498, 31.467312, 26.045807>,  <39.110996, 31.415182, 26.167372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733498, 31.467312, 26.045807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325193, 0.532485, -0.781479,
		0.059982, -0.836346, -0.544911,
		-0.943743, 0.130327, -0.303913,
		38.450375, 31.506411, 25.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262577, 30.928534, 25.753960>,  <39.110996, 31.415182, 26.167372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262577, 30.928534, 25.753960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638359, 30.791824, 25.744093>,  <39.863831, 30.709799, 25.738173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638359, 30.791824, 25.744093>,  <39.262577, 30.928534, 25.753960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638359, 30.791824, 25.744093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111212, -0.372209, 0.921462,
		-0.324109, -0.862933, -0.387685,
		0.939460, -0.341769, -0.024668,
		39.920197, 30.689293, 25.736692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247742, 30.341084, 26.147188>,  <39.262577, 30.928534, 25.753960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247742, 30.341084, 26.147188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.642635, 30.403625, 26.135098>,  <39.879574, 30.441151, 26.127844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.642635, 30.403625, 26.135098>,  <39.247742, 30.341084, 26.147188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642635, 30.403625, 26.135098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077810, -0.308006, 0.948197,
		0.138945, -0.938448, -0.316241,
		0.987238, 0.156354, -0.030225,
		39.938808, 30.450531, 26.126030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546032, 29.747267, 26.532461>,  <39.247742, 30.341084, 26.147188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546032, 29.747267, 26.532461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.853104, 30.003517, 26.525877>,  <40.037346, 30.157267, 26.521927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.853104, 30.003517, 26.525877>,  <39.546032, 29.747267, 26.532461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853104, 30.003517, 26.525877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239928, -0.263504, 0.934345,
		0.594228, -0.721224, -0.355990,
		0.767677, 0.640625, -0.016460,
		40.083408, 30.195705, 26.520939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127342, 29.431967, 26.845516>,  <39.546032, 29.747267, 26.532461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127342, 29.431967, 26.845516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176105, 29.828344, 26.868034>,  <40.205364, 30.066172, 26.881546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176105, 29.828344, 26.868034>,  <40.127342, 29.431967, 26.845516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176105, 29.828344, 26.868034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334881, -0.094458, 0.937514,
		0.934340, -0.095441, -0.343364,
		0.121911, 0.990943, 0.056295,
		40.212677, 30.125628, 26.884922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877838, 29.596724, 27.163513>,  <40.127342, 29.431967, 26.845516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877838, 29.596724, 27.163513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.653908, 29.913794, 27.260063>,  <40.519550, 30.104036, 27.317993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.653908, 29.913794, 27.260063>,  <40.877838, 29.596724, 27.163513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653908, 29.913794, 27.260063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305360, -0.073439, 0.949401,
		0.770294, 0.605203, -0.200939,
		-0.559823, 0.792677, 0.241374,
		40.485962, 30.151596, 27.332476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349163, 30.014662, 27.682158>,  <40.877838, 29.596724, 27.163513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349163, 30.014662, 27.682158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.961338, 30.111164, 27.698866>,  <40.728642, 30.169065, 27.708891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.961338, 30.111164, 27.698866>,  <41.349163, 30.014662, 27.682158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961338, 30.111164, 27.698866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, -0.111642, 0.993635,
		0.244386, 0.964018, 0.104618,
		-0.969562, 0.241258, 0.041772,
		40.670471, 30.183542, 27.711397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231804, 30.515461, 28.136431>,  <41.349163, 30.014662, 27.682158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231804, 30.515461, 28.136431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.851265, 30.397144, 28.101906>,  <40.622944, 30.326155, 28.081192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.851265, 30.397144, 28.101906>,  <41.231804, 30.515461, 28.136431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851265, 30.397144, 28.101906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101523, 0.036430, 0.994166,
		-0.290921, 0.954558, -0.064688,
		-0.951346, -0.295791, -0.086311,
		40.565861, 30.308407, 28.076012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841656, 30.956076, 28.559315>,  <41.231804, 30.515461, 28.136431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841656, 30.956076, 28.559315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620144, 30.625643, 28.517525>,  <40.487236, 30.427383, 28.492451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620144, 30.625643, 28.517525>,  <40.841656, 30.956076, 28.559315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620144, 30.625643, 28.517525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176653, -0.006056, 0.984254,
		-0.813708, 0.563517, -0.142576,
		-0.553780, -0.826083, -0.104475,
		40.454010, 30.377817, 28.486183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129204, 31.145649, 28.875738>,  <40.841656, 30.956076, 28.559315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129204, 31.145649, 28.875738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223843, 30.757505, 28.856012>,  <40.280624, 30.524620, 28.844177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223843, 30.757505, 28.856012>,  <40.129204, 31.145649, 28.875738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223843, 30.757505, 28.856012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204988, -0.099464, 0.973697,
		-0.949739, -0.220262, -0.222444,
		0.236594, -0.970356, -0.049314,
		40.294819, 30.466398, 28.841219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587608, 30.888618, 29.305885>,  <40.129204, 31.145649, 28.875738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587608, 30.888618, 29.305885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.847855, 30.586147, 29.277895>,  <40.004002, 30.404665, 29.261101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.847855, 30.586147, 29.277895>,  <39.587608, 30.888618, 29.305885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847855, 30.586147, 29.277895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095488, -0.172872, 0.980305,
		-0.753382, -0.631117, -0.184678,
		0.650613, -0.756178, -0.069975,
		40.043037, 30.359293, 29.256903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269745, 30.244699, 29.521061>,  <39.587608, 30.888618, 29.305885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269745, 30.244699, 29.521061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661034, 30.188171, 29.581863>,  <39.895809, 30.154255, 29.618345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661034, 30.188171, 29.581863>,  <39.269745, 30.244699, 29.521061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661034, 30.188171, 29.581863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187077, -0.283181, 0.940644,
		-0.089887, -0.948597, -0.303452,
		0.978224, -0.141320, 0.152007,
		39.954502, 30.145775, 29.627466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262386, 29.611265, 29.867863>,  <39.269745, 30.244699, 29.521061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262386, 29.611265, 29.867863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610092, 29.784397, 29.963394>,  <39.818714, 29.888277, 30.020714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610092, 29.784397, 29.963394>,  <39.262386, 29.611265, 29.867863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610092, 29.784397, 29.963394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121434, -0.281362, 0.951887,
		0.479205, -0.856442, -0.192017,
		0.869262, 0.432831, 0.238831,
		39.870872, 29.914246, 30.035044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717640, 29.221302, 30.395247>,  <39.262386, 29.611265, 29.867863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717640, 29.221302, 30.395247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900501, 29.576059, 30.421856>,  <40.010220, 29.788914, 30.437820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900501, 29.576059, 30.421856>,  <39.717640, 29.221302, 30.395247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900501, 29.576059, 30.421856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000007, -0.074791, 0.997199,
		0.889386, -0.455876, -0.034185,
		0.457156, 0.886895, 0.066522,
		40.037647, 29.842129, 30.441813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304188, 29.150341, 30.914570>,  <39.717640, 29.221302, 30.395247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304188, 29.150341, 30.914570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.250687, 29.546726, 30.910471>,  <40.218586, 29.784557, 30.908012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.250687, 29.546726, 30.910471>,  <40.304188, 29.150341, 30.914570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250687, 29.546726, 30.910471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025616, 0.006878, 0.999648,
		0.990684, 0.133966, 0.024464,
		-0.133750, 0.990962, -0.010246,
		40.210560, 29.844015, 30.907396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.947186, 33.187023, 26.711836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.697765, 33.482552, 26.609596>,  <40.548115, 33.659870, 26.548252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.697765, 33.482552, 26.609596>,  <40.947186, 33.187023, 26.711836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697765, 33.482552, 26.609596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090547, -0.256490, -0.962296,
		-0.776522, -0.623183, 0.093037,
		-0.623550, 0.738820, -0.255598,
		40.510700, 33.704197, 26.532917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463772, 32.925388, 26.233673>,  <40.947186, 33.187023, 26.711836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463772, 32.925388, 26.233673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458588, 33.319641, 26.166304>,  <40.455475, 33.556190, 26.125881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458588, 33.319641, 26.166304>,  <40.463772, 32.925388, 26.233673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458588, 33.319641, 26.166304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069606, -0.167142, -0.983473,
		-0.997490, -0.024472, -0.066439,
		-0.012963, 0.985629, -0.168426,
		40.454700, 33.615330, 26.115776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112679, 32.914356, 25.539495>,  <40.463772, 32.925388, 26.233673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112679, 32.914356, 25.539495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280327, 33.277107, 25.556988>,  <40.380917, 33.494759, 25.567482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280327, 33.277107, 25.556988>,  <40.112679, 32.914356, 25.539495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280327, 33.277107, 25.556988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156363, -0.024654, -0.987392,
		-0.894363, 0.420678, -0.152135,
		0.419125, 0.906875, 0.043729,
		40.406063, 33.549171, 25.570107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876961, 33.296715, 25.008484>,  <40.112679, 32.914356, 25.539495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876961, 33.296715, 25.008484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.206055, 33.502754, 25.104631>,  <40.403511, 33.626377, 25.162321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.206055, 33.502754, 25.104631>,  <39.876961, 33.296715, 25.008484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206055, 33.502754, 25.104631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252558, 0.047581, -0.966411,
		-0.509236, 0.855808, -0.090945,
		0.822735, 0.515100, 0.240371,
		40.452877, 33.657284, 25.176743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909733, 33.765667, 24.468857>,  <39.876961, 33.296715, 25.008484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909733, 33.765667, 24.468857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274551, 33.754955, 24.632544>,  <40.493443, 33.748528, 24.730755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274551, 33.754955, 24.632544>,  <39.909733, 33.765667, 24.468857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274551, 33.754955, 24.632544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410076, 0.050930, -0.910628,
		0.003548, 0.998343, 0.057433,
		0.912044, -0.026783, 0.409216,
		40.548164, 33.746922, 24.755308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164188, 34.145893, 24.026979>,  <39.909733, 33.765667, 24.468857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164188, 34.145893, 24.026979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.485172, 33.961380, 24.178385>,  <40.677765, 33.850674, 24.269228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.485172, 33.961380, 24.178385>,  <40.164188, 34.145893, 24.026979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485172, 33.961380, 24.178385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408227, -0.038253, -0.912079,
		0.435205, 0.886429, 0.157611,
		0.802464, -0.461282, 0.378512,
		40.725910, 33.822994, 24.291939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785339, 34.501694, 23.881659>,  <40.164188, 34.145893, 24.026979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785339, 34.501694, 23.881659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.925419, 34.135353, 23.960228>,  <41.009468, 33.915550, 24.007370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.925419, 34.135353, 23.960228>,  <40.785339, 34.501694, 23.881659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925419, 34.135353, 23.960228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521629, 0.016514, -0.853013,
		0.777986, 0.401186, 0.483516,
		0.350201, -0.915848, 0.196423,
		41.030479, 33.860600, 24.019156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580944, 34.479881, 23.781427>,  <40.785339, 34.501694, 23.881659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580944, 34.479881, 23.781427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.444965, 34.105606, 23.743629>,  <41.363380, 33.881042, 23.720951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.444965, 34.105606, 23.743629>,  <41.580944, 34.479881, 23.781427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444965, 34.105606, 23.743629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488285, -0.089732, -0.868059,
		0.803751, -0.341233, 0.487385,
		-0.339944, -0.935686, -0.094497,
		41.342983, 33.824902, 23.715281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279530, 34.112862, 23.673235>,  <41.580944, 34.479881, 23.781427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279530, 34.112862, 23.673235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981670, 33.876377, 23.549316>,  <41.802956, 33.734486, 23.474966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981670, 33.876377, 23.549316>,  <42.279530, 34.112862, 23.673235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981670, 33.876377, 23.549316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564112, -0.309366, -0.765552,
		0.356759, -0.744827, 0.563875,
		-0.744648, -0.591207, -0.309797,
		41.758278, 33.699017, 23.456377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619865, 33.459248, 23.420858>,  <42.279530, 34.112862, 23.673235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619865, 33.459248, 23.420858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257889, 33.468185, 23.250881>,  <42.040703, 33.473549, 23.148895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257889, 33.468185, 23.250881>,  <42.619865, 33.459248, 23.420858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257889, 33.468185, 23.250881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422285, -0.075956, -0.903275,
		-0.052444, -0.996861, 0.059307,
		-0.904945, 0.022327, -0.424943,
		41.986404, 33.474888, 23.123398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729656, 33.068855, 22.838247>,  <42.619865, 33.459248, 23.420858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729656, 33.068855, 22.838247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389442, 33.265217, 22.762766>,  <42.185314, 33.383034, 22.717478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389442, 33.265217, 22.762766>,  <42.729656, 33.068855, 22.838247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389442, 33.265217, 22.762766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254982, 0.071094, -0.964329,
		-0.459975, -0.868309, -0.185639,
		-0.850534, 0.490902, -0.188701,
		42.134281, 33.412487, 22.706156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472202, 32.816441, 22.152830>,  <42.729656, 33.068855, 22.838247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472202, 32.816441, 22.152830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313637, 33.177345, 22.220682>,  <42.218498, 33.393890, 22.261393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313637, 33.177345, 22.220682>,  <42.472202, 32.816441, 22.152830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313637, 33.177345, 22.220682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289075, 0.298041, -0.909729,
		-0.871373, -0.311594, -0.378970,
		-0.396415, 0.902264, 0.169631,
		42.194714, 33.448025, 22.271572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994732, 32.962585, 21.640738>,  <42.472202, 32.816441, 22.152830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994732, 32.962585, 21.640738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.173740, 33.292885, 21.778065>,  <42.281147, 33.491062, 21.860460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.173740, 33.292885, 21.778065>,  <41.994732, 32.962585, 21.640738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173740, 33.292885, 21.778065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220401, 0.270221, -0.937232,
		-0.866686, 0.495102, -0.061064,
		0.447524, 0.825745, 0.343318,
		42.307999, 33.540607, 21.881060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025444, 33.458221, 21.038321>,  <41.994732, 32.962585, 21.640738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025444, 33.458221, 21.038321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.279072, 33.583740, 21.321020>,  <42.431248, 33.659050, 21.490639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.279072, 33.583740, 21.321020>,  <42.025444, 33.458221, 21.038321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279072, 33.583740, 21.321020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568386, 0.430567, -0.701106,
		-0.524306, 0.846253, 0.094652,
		0.634067, 0.313795, 0.706747,
		42.469292, 33.677879, 21.533045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693790, 32.909328, 20.958405>,  <42.025444, 33.458221, 21.038321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693790, 32.909328, 20.958405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321655, 32.791355, 20.871243>,  <41.098373, 32.720570, 20.818945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321655, 32.791355, 20.871243>,  <41.693790, 32.909328, 20.958405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321655, 32.791355, 20.871243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055910, -0.473198, 0.879180,
		-0.362416, 0.830118, 0.423744,
		-0.930338, -0.294937, -0.217906,
		41.042553, 32.702873, 20.805870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288727, 33.066368, 21.592056>,  <41.693790, 32.909328, 20.958405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288727, 33.066368, 21.592056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111290, 32.777966, 21.379124>,  <41.004829, 32.604923, 21.251364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111290, 32.777966, 21.379124>,  <41.288727, 33.066368, 21.592056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111290, 32.777966, 21.379124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001696, -0.594642, 0.803989,
		-0.896230, 0.355737, 0.264998,
		-0.443587, -0.721008, -0.532332,
		40.978214, 32.561665, 21.219423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813953, 32.859467, 21.963764>,  <41.288727, 33.066368, 21.592056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813953, 32.859467, 21.963764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851692, 32.560524, 21.700689>,  <40.874336, 32.381157, 21.542845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851692, 32.560524, 21.700689>,  <40.813953, 32.859467, 21.963764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851692, 32.560524, 21.700689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118706, -0.664366, 0.737920,
		-0.988437, 0.008448, -0.151399,
		0.094350, -0.747360, -0.657687,
		40.879997, 32.336315, 21.503384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104366, 32.377869, 21.883839>,  <40.813953, 32.859467, 21.963764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104366, 32.377869, 21.883839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430847, 32.164536, 21.794968>,  <40.626736, 32.036537, 21.741646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430847, 32.164536, 21.794968>,  <40.104366, 32.377869, 21.883839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430847, 32.164536, 21.794968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292629, -0.713187, 0.636972,
		-0.498171, -0.454885, -0.738177,
		0.816206, -0.533333, -0.222176,
		40.675709, 32.004536, 21.728315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865051, 31.709892, 21.889347>,  <40.104366, 32.377869, 21.883839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865051, 31.709892, 21.889347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261848, 31.665438, 21.913340>,  <40.499928, 31.638765, 21.927734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261848, 31.665438, 21.913340>,  <39.865051, 31.709892, 21.889347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261848, 31.665438, 21.913340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123432, -0.752758, 0.646622,
		-0.026710, -0.648849, -0.760449,
		0.991993, -0.111135, 0.059982,
		40.559448, 31.632097, 21.931334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952988, 31.030180, 22.179272>,  <39.865051, 31.709892, 21.889347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952988, 31.030180, 22.179272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.323227, 31.176867, 22.216787>,  <40.545368, 31.264877, 22.239296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.323227, 31.176867, 22.216787>,  <39.952988, 31.030180, 22.179272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323227, 31.176867, 22.216787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044253, -0.350914, 0.935362,
		0.375922, -0.861615, -0.341032,
		0.925594, 0.366714, 0.093787,
		40.600906, 31.286880, 22.244923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513702, 30.476959, 22.325329>,  <39.952988, 31.030180, 22.179272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513702, 30.476959, 22.325329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.633415, 30.832495, 22.464121>,  <40.705242, 31.045816, 22.547396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.633415, 30.832495, 22.464121>,  <40.513702, 30.476959, 22.325329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633415, 30.832495, 22.464121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060116, -0.380489, 0.922830,
		0.952269, -0.255328, -0.167307,
		0.299282, 0.888840, 0.346978,
		40.723202, 31.099146, 22.568214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992447, 30.292116, 22.776825>,  <40.513702, 30.476959, 22.325329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992447, 30.292116, 22.776825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.921593, 30.671106, 22.883343>,  <40.879078, 30.898500, 22.947252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.921593, 30.671106, 22.883343>,  <40.992447, 30.292116, 22.776825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921593, 30.671106, 22.883343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014558, -0.268020, 0.963303,
		0.984078, 0.174516, 0.033684,
		-0.177140, 0.947475, 0.266293,
		40.868450, 30.955349, 22.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413601, 30.305880, 23.447739>,  <40.992447, 30.292116, 22.776825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413601, 30.305880, 23.447739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.151695, 30.608212, 23.448521>,  <40.994553, 30.789612, 23.448990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.151695, 30.608212, 23.448521>,  <41.413601, 30.305880, 23.447739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151695, 30.608212, 23.448521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177499, -0.156279, 0.971633,
		0.734696, 0.635843, 0.236486,
		-0.654763, 0.755831, 0.001956,
		40.955265, 30.834961, 23.449108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632252, 30.663897, 24.054813>,  <41.413601, 30.305880, 23.447739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632252, 30.663897, 24.054813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.255760, 30.748671, 23.949615>,  <41.029865, 30.799536, 23.886496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.255760, 30.748671, 23.949615>,  <41.632252, 30.663897, 24.054813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255760, 30.748671, 23.949615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231185, 0.163434, 0.959084,
		0.246248, 0.963521, -0.104832,
		-0.941231, 0.211937, -0.262997,
		40.973392, 30.812252, 23.870716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488533, 31.105293, 24.520065>,  <41.632252, 30.663897, 24.054813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488533, 31.105293, 24.520065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.123402, 31.023350, 24.378771>,  <40.904324, 30.974184, 24.293993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.123402, 31.023350, 24.378771>,  <41.488533, 31.105293, 24.520065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123402, 31.023350, 24.378771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387177, 0.159325, 0.908135,
		-0.129758, 0.965738, -0.224752,
		-0.912829, -0.204857, -0.353238,
		40.849552, 30.961893, 24.272799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989128, 31.569248, 24.915932>,  <41.488533, 31.105293, 24.520065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989128, 31.569248, 24.915932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.764305, 31.278685, 24.757730>,  <40.629410, 31.104347, 24.662809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.764305, 31.278685, 24.757730>,  <40.989128, 31.569248, 24.915932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764305, 31.278685, 24.757730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509404, -0.072703, 0.857450,
		-0.651613, 0.683408, -0.329172,
		-0.562057, -0.726407, -0.395505,
		40.595688, 31.060762, 24.639078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249237, 31.703119, 25.098476>,  <40.989128, 31.569248, 24.915932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249237, 31.703119, 25.098476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294407, 31.310564, 25.036345>,  <40.321510, 31.075031, 24.999065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294407, 31.310564, 25.036345>,  <40.249237, 31.703119, 25.098476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294407, 31.310564, 25.036345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418022, -0.188749, 0.888612,
		-0.901391, -0.035417, -0.431556,
		0.112928, -0.981386, -0.155332,
		40.328285, 31.016148, 24.989744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741753, 31.394590, 25.398975>,  <40.249237, 31.703119, 25.098476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741753, 31.394590, 25.398975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.967644, 31.066343, 25.363947>,  <40.103180, 30.869394, 25.342930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.967644, 31.066343, 25.363947>,  <39.741753, 31.394590, 25.398975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967644, 31.066343, 25.363947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329165, -0.321277, 0.887937,
		-0.756792, -0.472616, -0.451553,
		0.564727, -0.820619, -0.087571,
		40.137062, 30.820158, 25.337675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000526, 31.195145, 25.146822>,  <39.741753, 31.394590, 25.398975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000526, 31.195145, 25.146822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687321, 31.400555, 25.287207>,  <38.499397, 31.523802, 25.371437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687321, 31.400555, 25.287207>,  <39.000526, 31.195145, 25.146822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687321, 31.400555, 25.287207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005096, 0.558930, -0.829199,
		-0.621978, -0.651067, -0.435036,
		-0.783018, 0.513527, 0.350960,
		38.452415, 31.554613, 25.392494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490425, 31.290646, 24.564859>,  <39.000526, 31.195145, 25.146822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490425, 31.290646, 24.564859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.397198, 31.573456, 24.831930>,  <38.341263, 31.743141, 24.992172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.397198, 31.573456, 24.831930>,  <38.490425, 31.290646, 24.564859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397198, 31.573456, 24.831930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114139, 0.661952, -0.740805,
		-0.965740, -0.248864, -0.073579,
		-0.233065, 0.707026, 0.667679,
		38.327278, 31.785564, 25.032234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860153, 31.482613, 24.221289>,  <38.490425, 31.290646, 24.564859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860153, 31.482613, 24.221289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008289, 31.758102, 24.470610>,  <38.097172, 31.923395, 24.620203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008289, 31.758102, 24.470610>,  <37.860153, 31.482613, 24.221289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008289, 31.758102, 24.470610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018412, 0.676327, -0.736372,
		-0.928713, 0.261233, 0.263154,
		0.370342, 0.688723, 0.623303,
		38.119392, 31.964720, 24.657600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464512, 31.999149, 24.022150>,  <37.860153, 31.482613, 24.221289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464512, 31.999149, 24.022150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754669, 32.179688, 24.230032>,  <37.928764, 32.288010, 24.354761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754669, 32.179688, 24.230032>,  <37.464512, 31.999149, 24.022150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754669, 32.179688, 24.230032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014823, 0.744598, -0.667348,
		-0.688176, 0.491793, 0.533436,
		0.725392, 0.451346, 0.519705,
		37.972286, 32.315090, 24.385942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253868, 32.621708, 24.156981>,  <37.464512, 31.999149, 24.022150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253868, 32.621708, 24.156981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.652718, 32.651993, 24.155828>,  <37.892029, 32.670162, 24.155136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.652718, 32.651993, 24.155828>,  <37.253868, 32.621708, 24.156981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652718, 32.651993, 24.155828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046281, 0.578520, -0.814354,
		-0.059990, 0.812147, 0.580361,
		0.997126, 0.075713, -0.002881,
		37.951855, 32.674706, 24.154964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490028, 33.314297, 23.945093>,  <37.253868, 32.621708, 24.156981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490028, 33.314297, 23.945093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822182, 33.099560, 23.885414>,  <38.021473, 32.970718, 23.849607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822182, 33.099560, 23.885414>,  <37.490028, 33.314297, 23.945093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822182, 33.099560, 23.885414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108565, 0.418521, -0.901695,
		0.546512, 0.732556, 0.405816,
		0.830384, -0.536844, -0.149197,
		38.071297, 32.938507, 23.840654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779194, 33.735962, 23.517944>,  <37.490028, 33.314297, 23.945093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779194, 33.735962, 23.517944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003716, 33.407276, 23.478497>,  <38.138428, 33.210064, 23.454828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003716, 33.407276, 23.478497>,  <37.779194, 33.735962, 23.517944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003716, 33.407276, 23.478497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128257, 0.204090, -0.970514,
		0.817614, 0.532100, 0.219946,
		0.561299, -0.821716, -0.098621,
		38.172104, 33.160763, 23.448910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867702, 34.578369, 23.611300>,  <37.779194, 33.735962, 23.517944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867702, 34.578369, 23.611300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.618431, 34.807106, 23.397892>,  <37.468868, 34.944347, 23.269848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.618431, 34.807106, 23.397892>,  <37.867702, 34.578369, 23.611300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618431, 34.807106, 23.397892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668069, -0.034562, 0.743297,
		0.406610, 0.819634, 0.403570,
		-0.623179, 0.571844, -0.533518,
		37.431477, 34.978661, 23.237837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726875, 35.073177, 24.036739>,  <37.867702, 34.578369, 23.611300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726875, 35.073177, 24.036739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.431541, 35.040337, 23.768972>,  <37.254341, 35.020634, 23.608313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.431541, 35.040337, 23.768972>,  <37.726875, 35.073177, 24.036739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431541, 35.040337, 23.768972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670753, -0.014194, 0.741545,
		-0.070385, 0.996523, -0.044591,
		-0.738334, -0.082103, -0.669419,
		37.210041, 35.015705, 23.568146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241169, 35.239468, 24.476130>,  <37.726875, 35.073177, 24.036739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241169, 35.239468, 24.476130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052078, 35.123234, 24.143364>,  <36.938622, 35.053493, 23.943705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052078, 35.123234, 24.143364>,  <37.241169, 35.239468, 24.476130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052078, 35.123234, 24.143364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815156, -0.214407, 0.538099,
		-0.334733, 0.932517, -0.135517,
		-0.472731, -0.290588, -0.831916,
		36.910259, 35.036057, 23.893789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543591, 35.574215, 24.477255>,  <37.241169, 35.239468, 24.476130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543591, 35.574215, 24.477255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546741, 35.232014, 24.270163>,  <36.548630, 35.026691, 24.145906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546741, 35.232014, 24.270163>,  <36.543591, 35.574215, 24.477255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546741, 35.232014, 24.270163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688993, -0.379879, 0.617236,
		-0.724725, 0.351853, -0.592430,
		0.007875, -0.855507, -0.517732,
		36.549103, 34.975361, 24.114843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838322, 35.426731, 24.491497>,  <36.543591, 35.574215, 24.477255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838322, 35.426731, 24.491497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026825, 35.086723, 24.397369>,  <36.139927, 34.882717, 24.340893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026825, 35.086723, 24.397369>,  <35.838322, 35.426731, 24.491497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026825, 35.086723, 24.397369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709571, -0.523855, 0.471259,
		-0.523855, -0.055109, -0.850023,
		-0.471259, 0.850023, 0.235321,
		36.168201, 34.831715, 24.326773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281219, 34.939854, 24.462883>,  <35.838322, 35.426731, 24.491497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281219, 34.939854, 24.462883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595345, 34.696194, 24.507114>,  <35.783817, 34.549999, 24.533653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595345, 34.696194, 24.507114>,  <35.281219, 34.939854, 24.462883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595345, 34.696194, 24.507114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536543, -0.580529, 0.612460,
		-0.308882, -0.540303, -0.782729,
		0.785311, -0.609146, 0.110581,
		35.830936, 34.513451, 24.540289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024647, 34.251560, 24.311832>,  <35.281219, 34.939854, 24.462883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024647, 34.251560, 24.311832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.359406, 34.215614, 24.527805>,  <35.560261, 34.194046, 24.657389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.359406, 34.215614, 24.527805>,  <35.024647, 34.251560, 24.311832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359406, 34.215614, 24.527805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477187, -0.603010, 0.639274,
		0.268134, -0.792655, -0.547541,
		0.836897, -0.089869, 0.539932,
		35.610474, 34.188652, 24.689785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.384808, 36.902302, 22.761917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546482, 36.537422, 22.735006>,  <40.643486, 36.318497, 22.718859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546482, 36.537422, 22.735006>,  <40.384808, 36.902302, 22.761917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546482, 36.537422, 22.735006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357024, -0.225060, 0.906577,
		-0.842119, -0.342409, -0.416644,
		0.404190, -0.912198, -0.067279,
		40.667740, 36.263763, 22.714823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843067, 36.430668, 22.732260>,  <40.384808, 36.902302, 22.761917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843067, 36.430668, 22.732260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143150, 36.222454, 22.895342>,  <40.323200, 36.097527, 22.993191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143150, 36.222454, 22.895342>,  <39.843067, 36.430668, 22.732260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143150, 36.222454, 22.895342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530137, -0.105039, 0.841380,
		-0.395146, -0.847352, -0.354759,
		0.750209, -0.520539, 0.407707,
		40.368214, 36.066292, 23.017654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625656, 35.760815, 23.036789>,  <39.843067, 36.430668, 22.732260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625656, 35.760815, 23.036789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.992867, 35.741467, 23.194214>,  <40.213192, 35.729858, 23.288670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.992867, 35.741467, 23.194214>,  <39.625656, 35.760815, 23.036789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992867, 35.741467, 23.194214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396051, -0.063368, 0.916040,
		-0.019359, -0.996818, -0.077325,
		0.918025, -0.048358, 0.393564,
		40.268272, 35.726955, 23.312283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573360, 35.181923, 23.463337>,  <39.625656, 35.760815, 23.036789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573360, 35.181923, 23.463337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865685, 35.431183, 23.574772>,  <40.041077, 35.580738, 23.641634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865685, 35.431183, 23.574772>,  <39.573360, 35.181923, 23.463337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865685, 35.431183, 23.574772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335812, -0.027103, 0.941539,
		0.594267, -0.781636, 0.189453,
		0.730806, 0.623146, 0.278589,
		40.084927, 35.618126, 23.658348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668182, 34.960560, 24.087351>,  <39.573360, 35.181923, 23.463337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668182, 34.960560, 24.087351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.864788, 35.308659, 24.100481>,  <39.982750, 35.517517, 24.108358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.864788, 35.308659, 24.100481>,  <39.668182, 34.960560, 24.087351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864788, 35.308659, 24.100481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296561, 0.131819, 0.945873,
		0.818819, -0.474646, 0.322873,
		0.491515, 0.870250, 0.032826,
		40.012241, 35.569733, 24.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930428, 34.988213, 24.723709>,  <39.668182, 34.960560, 24.087351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930428, 34.988213, 24.723709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.894943, 35.367146, 24.600624>,  <39.873653, 35.594505, 24.526773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.894943, 35.367146, 24.600624>,  <39.930428, 34.988213, 24.723709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894943, 35.367146, 24.600624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331079, 0.263324, 0.906117,
		0.939424, 0.182258, 0.290284,
		-0.088708, 0.947335, -0.307715,
		39.868332, 35.651344, 24.508310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282192, 35.423454, 25.196190>,  <39.930428, 34.988213, 24.723709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282192, 35.423454, 25.196190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050636, 35.676636, 24.990568>,  <39.911701, 35.828545, 24.867195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050636, 35.676636, 24.990568>,  <40.282192, 35.423454, 25.196190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050636, 35.676636, 24.990568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337420, 0.387970, 0.857687,
		0.742317, 0.669958, -0.011019,
		-0.578889, 0.632958, -0.514054,
		39.876968, 35.866524, 24.836351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340660, 36.089680, 25.568689>,  <40.282192, 35.423454, 25.196190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340660, 36.089680, 25.568689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.008968, 36.108379, 25.345911>,  <39.809952, 36.119598, 25.212244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.008968, 36.108379, 25.345911>,  <40.340660, 36.089680, 25.568689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008968, 36.108379, 25.345911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508403, 0.350837, 0.786409,
		0.232162, 0.935269, -0.267157,
		-0.829233, 0.046751, -0.556945,
		39.760197, 36.122406, 25.178827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157799, 36.814842, 25.595636>,  <40.340660, 36.089680, 25.568689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157799, 36.814842, 25.595636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821251, 36.632629, 25.479300>,  <39.619324, 36.523300, 25.409498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821251, 36.632629, 25.479300>,  <40.157799, 36.814842, 25.595636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821251, 36.632629, 25.479300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478700, 0.378307, 0.792294,
		-0.250888, 0.805837, -0.536360,
		-0.841369, -0.455533, -0.290842,
		39.568840, 36.495968, 25.392048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700756, 37.459194, 25.534834>,  <40.157799, 36.814842, 25.595636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700756, 37.459194, 25.534834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.476974, 37.128281, 25.555273>,  <39.342705, 36.929733, 25.567537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.476974, 37.128281, 25.555273>,  <39.700756, 37.459194, 25.534834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476974, 37.128281, 25.555273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432409, 0.343903, 0.833519,
		-0.707129, 0.444221, -0.550123,
		-0.559455, -0.827284, 0.051098,
		39.309139, 36.880096, 25.570602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078342, 37.716736, 25.892042>,  <39.700756, 37.459194, 25.534834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078342, 37.716736, 25.892042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048794, 37.320118, 25.934729>,  <39.031063, 37.082150, 25.960340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048794, 37.320118, 25.934729>,  <39.078342, 37.716736, 25.892042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048794, 37.320118, 25.934729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365772, 0.126492, 0.922069,
		-0.927768, 0.029083, -0.372023,
		-0.073875, -0.991541, 0.106717,
		39.026630, 37.022655, 25.966743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273140, 37.441814, 26.064861>,  <39.078342, 37.716736, 25.892042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273140, 37.441814, 26.064861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.574043, 37.213810, 26.197039>,  <38.754585, 37.077007, 26.276344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.574043, 37.213810, 26.197039>,  <38.273140, 37.441814, 26.064861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574043, 37.213810, 26.197039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346154, 0.084818, 0.934336,
		-0.560607, -0.817250, -0.133505,
		0.752262, -0.570008, 0.330444,
		38.799721, 37.042809, 26.296171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029293, 36.703491, 26.052122>,  <38.273140, 37.441814, 26.064861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029293, 36.703491, 26.052122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691586, 36.909958, 25.994469>,  <37.488960, 37.033836, 25.959877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691586, 36.909958, 25.994469>,  <38.029293, 36.703491, 26.052122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691586, 36.909958, 25.994469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122139, -0.076548, -0.989557,
		-0.521810, -0.853060, 0.001583,
		-0.844273, 0.516167, -0.144135,
		37.438305, 37.064808, 25.951227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744846, 36.309853, 25.545351>,  <38.029293, 36.703491, 26.052122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744846, 36.309853, 25.545351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581631, 36.675034, 25.543444>,  <37.483700, 36.894142, 25.542299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581631, 36.675034, 25.543444>,  <37.744846, 36.309853, 25.545351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581631, 36.675034, 25.543444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019290, 0.003399, -0.999808,
		-0.912761, -0.408051, -0.018998,
		-0.408037, 0.912953, -0.004768,
		37.459221, 36.948921, 25.542013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240776, 36.286404, 25.055655>,  <37.744846, 36.309853, 25.545351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240776, 36.286404, 25.055655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.345596, 36.670780, 25.091263>,  <37.408489, 36.901405, 25.112629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.345596, 36.670780, 25.091263>,  <37.240776, 36.286404, 25.055655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345596, 36.670780, 25.091263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093616, 0.066498, -0.993385,
		-0.960503, 0.268651, -0.072534,
		0.262051, 0.960939, 0.089022,
		37.424213, 36.959061, 25.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966614, 36.469547, 24.443459>,  <37.240776, 36.286404, 25.055655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966614, 36.469547, 24.443459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184883, 36.785000, 24.556814>,  <37.315845, 36.974270, 24.624826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184883, 36.785000, 24.556814>,  <36.966614, 36.469547, 24.443459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184883, 36.785000, 24.556814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155917, 0.236721, -0.958985,
		-0.823367, 0.567476, 0.006211,
		0.545671, 0.788628, 0.283388,
		37.348583, 37.021587, 24.641830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736305, 37.091682, 24.217505>,  <36.966614, 36.469547, 24.443459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736305, 37.091682, 24.217505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117756, 37.210094, 24.239262>,  <37.346626, 37.281143, 24.252316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117756, 37.210094, 24.239262>,  <36.736305, 37.091682, 24.217505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117756, 37.210094, 24.239262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051407, 0.338250, -0.939651,
		-0.296564, 0.893282, 0.337783,
		0.953628, 0.296031, 0.054392,
		37.403843, 37.298904, 24.255579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813805, 37.561787, 23.711889>,  <36.736305, 37.091682, 24.217505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813805, 37.561787, 23.711889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191338, 37.571239, 23.843723>,  <37.417858, 37.576912, 23.922823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191338, 37.571239, 23.843723>,  <36.813805, 37.561787, 23.711889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191338, 37.571239, 23.843723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281582, 0.464414, -0.839661,
		-0.172902, 0.885303, 0.431676,
		0.943831, 0.023628, 0.329583,
		37.474487, 37.578327, 23.942598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984333, 38.236778, 23.837488>,  <36.813805, 37.561787, 23.711889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984333, 38.236778, 23.837488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281273, 37.992004, 23.728348>,  <37.459438, 37.845139, 23.662863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281273, 37.992004, 23.728348>,  <36.984333, 38.236778, 23.837488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281273, 37.992004, 23.728348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163053, 0.559993, -0.812294,
		0.649865, 0.558520, 0.515491,
		0.742353, -0.611934, -0.272852,
		37.503979, 37.808426, 23.646492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506535, 38.645012, 23.558741>,  <36.984333, 38.236778, 23.837488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506535, 38.645012, 23.558741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637447, 38.294464, 23.417400>,  <37.715996, 38.084133, 23.332596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637447, 38.294464, 23.417400>,  <37.506535, 38.645012, 23.558741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637447, 38.294464, 23.417400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253713, 0.441715, -0.860533,
		0.910228, 0.191990, 0.366914,
		0.327285, -0.876372, -0.353351,
		37.735634, 38.031551, 23.311396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192684, 38.764923, 23.386227>,  <37.506535, 38.645012, 23.558741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192684, 38.764923, 23.386227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065567, 38.462891, 23.156841>,  <37.989296, 38.281673, 23.019211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065567, 38.462891, 23.156841>,  <38.192684, 38.764923, 23.386227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065567, 38.462891, 23.156841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326127, 0.480865, -0.813886,
		0.890307, -0.445672, 0.093434,
		-0.317797, -0.755080, -0.573463,
		37.970226, 38.236366, 22.984802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752605, 38.648453, 22.908627>,  <38.192684, 38.764923, 23.386227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752605, 38.648453, 22.908627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.450695, 38.457203, 22.728977>,  <38.269550, 38.342453, 22.621187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.450695, 38.457203, 22.728977>,  <38.752605, 38.648453, 22.908627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450695, 38.457203, 22.728977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407665, 0.194511, -0.892174,
		0.513928, -0.856483, 0.048102,
		-0.754776, -0.478123, -0.449123,
		38.224262, 38.313766, 22.594240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031391, 38.227066, 22.341497>,  <38.752605, 38.648453, 22.908627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031391, 38.227066, 22.341497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.651405, 38.212845, 22.217365>,  <38.423412, 38.204311, 22.142885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.651405, 38.212845, 22.217365>,  <39.031391, 38.227066, 22.341497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651405, 38.212845, 22.217365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272685, 0.390187, -0.879430,
		0.152357, -0.920049, -0.360968,
		-0.949963, -0.035557, -0.310331,
		38.366417, 38.202179, 22.124266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976635, 38.021072, 21.659872>,  <39.031391, 38.227066, 22.341497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976635, 38.021072, 21.659872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.615913, 38.189606, 21.698303>,  <38.399483, 38.290726, 21.721363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.615913, 38.189606, 21.698303>,  <38.976635, 38.021072, 21.659872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615913, 38.189606, 21.698303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020781, 0.179790, -0.983486,
		-0.431653, -0.888904, -0.153379,
		-0.901800, 0.421337, 0.096079,
		38.345375, 38.316006, 21.727127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564701, 37.735912, 21.043814>,  <38.976635, 38.021072, 21.659872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564701, 37.735912, 21.043814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415253, 38.080070, 21.182447>,  <38.325584, 38.286568, 21.265627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415253, 38.080070, 21.182447>,  <38.564701, 37.735912, 21.043814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415253, 38.080070, 21.182447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095285, 0.336064, -0.937007,
		-0.922673, -0.383112, -0.043578,
		-0.373624, 0.860399, 0.346582,
		38.303165, 38.338192, 21.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906998, 37.131931, 21.534529>,  <38.564701, 37.735912, 21.043814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906998, 37.131931, 21.534529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.703117, 36.994846, 21.218870>,  <38.580791, 36.912594, 21.029474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.703117, 36.994846, 21.218870>,  <38.906998, 37.131931, 21.534529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703117, 36.994846, 21.218870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434323, -0.689286, 0.579869,
		-0.742679, 0.638303, 0.202478,
		-0.509698, -0.342716, -0.789148,
		38.550209, 36.892033, 20.982126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125626, 37.306831, 21.541294>,  <38.906998, 37.131931, 21.534529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125626, 37.306831, 21.541294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.212650, 36.966949, 21.349180>,  <38.264866, 36.763020, 21.233912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.212650, 36.966949, 21.349180>,  <38.125626, 37.306831, 21.541294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212650, 36.966949, 21.349180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318803, -0.526943, 0.787843,
		-0.922515, -0.018286, -0.385528,
		0.217558, -0.849704, -0.480284,
		38.277916, 36.712040, 21.205095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517670, 36.904545, 21.581812>,  <38.125626, 37.306831, 21.541294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517670, 36.904545, 21.581812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.805557, 36.636635, 21.508705>,  <37.978291, 36.475887, 21.464840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.805557, 36.636635, 21.508705>,  <37.517670, 36.904545, 21.581812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805557, 36.636635, 21.508705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337904, -0.567909, 0.750533,
		-0.606484, -0.478416, -0.635055,
		0.719720, -0.669775, -0.182769,
		38.021473, 36.435703, 21.453875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222305, 36.272415, 21.594454>,  <37.517670, 36.904545, 21.581812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222305, 36.272415, 21.594454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.610207, 36.190090, 21.646929>,  <37.842949, 36.140694, 21.678413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.610207, 36.190090, 21.646929>,  <37.222305, 36.272415, 21.594454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610207, 36.190090, 21.646929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228563, -0.577259, 0.783920,
		-0.085613, -0.790197, -0.606843,
		0.969758, -0.205816, 0.131189,
		37.901134, 36.128345, 21.686285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397850, 35.591236, 21.396042>,  <37.222305, 36.272415, 21.594454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397850, 35.591236, 21.396042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.678383, 35.700329, 21.659479>,  <37.846703, 35.765785, 21.817541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.678383, 35.700329, 21.659479>,  <37.397850, 35.591236, 21.396042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678383, 35.700329, 21.659479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307774, -0.717504, 0.624870,
		0.642965, -0.640942, -0.419272,
		0.701335, 0.272729, 0.658595,
		37.888783, 35.782146, 21.857058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722336, 35.009518, 21.614634>,  <37.397850, 35.591236, 21.396042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722336, 35.009518, 21.614634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821777, 35.258060, 21.911852>,  <37.881443, 35.407185, 22.090183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821777, 35.258060, 21.911852>,  <37.722336, 35.009518, 21.614634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821777, 35.258060, 21.911852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257573, -0.697098, 0.669111,
		0.933730, -0.357733, -0.013259,
		0.248606, 0.621354, 0.743044,
		37.896358, 35.444466, 22.134766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882843, 34.530556, 22.141207>,  <37.722336, 35.009518, 21.614634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882843, 34.530556, 22.141207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853378, 34.883274, 22.327547>,  <37.835701, 35.094906, 22.439352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853378, 34.883274, 22.327547>,  <37.882843, 34.530556, 22.141207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853378, 34.883274, 22.327547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453000, -0.445733, 0.772084,
		0.888462, -0.154159, 0.432284,
		-0.073660, 0.881792, 0.465851,
		37.831280, 35.147812, 22.467302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054008, 34.400684, 22.827984>,  <37.882843, 34.530556, 22.141207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054008, 34.400684, 22.827984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.822983, 34.727177, 22.833582>,  <37.684368, 34.923073, 22.836941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.822983, 34.727177, 22.833582>,  <38.054008, 34.400684, 22.827984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822983, 34.727177, 22.833582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499638, -0.366999, 0.784649,
		0.645587, 0.446192, 0.619782,
		-0.577563, 0.816226, 0.013995,
		37.649715, 34.972046, 22.837780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554554, 33.980190, 23.111435>,  <38.054008, 34.400684, 22.827984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554554, 33.980190, 23.111435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538662, 33.582062, 23.076214>,  <38.529129, 33.343185, 23.055082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538662, 33.582062, 23.076214>,  <38.554554, 33.980190, 23.111435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538662, 33.582062, 23.076214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153664, 0.080986, -0.984799,
		0.987324, -0.052654, 0.149728,
		-0.039727, -0.995324, -0.088051,
		38.526745, 33.283466, 23.049799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174141, 33.807671, 22.703520>,  <38.554554, 33.980190, 23.111435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174141, 33.807671, 22.703520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.881149, 33.537575, 22.668821>,  <38.705353, 33.375519, 22.648003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.881149, 33.537575, 22.668821>,  <39.174141, 33.807671, 22.703520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881149, 33.537575, 22.668821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134871, -0.019031, -0.990680,
		0.667293, -0.737355, 0.105009,
		-0.732482, -0.675237, -0.086748,
		38.661404, 33.335003, 22.642797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419670, 33.290039, 22.333029>,  <39.174141, 33.807671, 22.703520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419670, 33.290039, 22.333029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027790, 33.227016, 22.283440>,  <38.792664, 33.189201, 22.253687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027790, 33.227016, 22.283440>,  <39.419670, 33.290039, 22.333029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027790, 33.227016, 22.283440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161726, -0.255651, -0.953146,
		0.118483, -0.953844, 0.275942,
		-0.979697, -0.157558, -0.123971,
		38.733879, 33.179749, 22.246248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364494, 32.603317, 22.076303>,  <39.419670, 33.290039, 22.333029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364494, 32.603317, 22.076303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.022953, 32.796185, 21.997860>,  <38.818027, 32.911903, 21.950794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.022953, 32.796185, 21.997860>,  <39.364494, 32.603317, 22.076303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022953, 32.796185, 21.997860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107576, -0.205160, -0.972798,
		-0.509284, -0.851719, 0.123306,
		-0.853849, 0.482166, -0.196110,
		38.766800, 32.940834, 21.939028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028152, 32.179691, 21.542368>,  <39.364494, 32.603317, 22.076303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028152, 32.179691, 21.542368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836269, 32.528072, 21.499800>,  <38.721142, 32.737103, 21.474258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836269, 32.528072, 21.499800>,  <39.028152, 32.179691, 21.542368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836269, 32.528072, 21.499800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128307, -0.189611, -0.973440,
		-0.867999, -0.453308, 0.202706,
		-0.479703, 0.870953, -0.106419,
		38.692360, 32.789360, 21.467875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380901, 31.992020, 21.188309>,  <39.028152, 32.179691, 21.542368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380901, 31.992020, 21.188309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491386, 32.372375, 21.132429>,  <38.557678, 32.600590, 21.098902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491386, 32.372375, 21.132429>,  <38.380901, 31.992020, 21.188309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491386, 32.372375, 21.132429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153451, -0.099858, -0.983098,
		-0.948767, 0.292983, 0.118333,
		0.276214, 0.950889, -0.139701,
		38.574249, 32.657642, 21.090519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738976, 32.416950, 20.980223>,  <38.380901, 31.992020, 21.188309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738976, 32.416950, 20.980223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068928, 32.596428, 20.842672>,  <38.266899, 32.704117, 20.760143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068928, 32.596428, 20.842672>,  <37.738976, 32.416950, 20.980223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068928, 32.596428, 20.842672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223641, -0.299657, -0.927464,
		-0.519194, 0.841949, -0.146833,
		0.824877, 0.448696, -0.343874,
		38.316391, 32.731037, 20.739510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490349, 32.681721, 20.270094>,  <37.738976, 32.416950, 20.980223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490349, 32.681721, 20.270094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.880772, 32.768433, 20.262894>,  <38.115025, 32.820457, 20.258574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.880772, 32.768433, 20.262894>,  <37.490349, 32.681721, 20.270094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880772, 32.768433, 20.262894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029853, -0.215464, -0.976055,
		-0.215464, 0.952147, -0.216776,
		0.976055, 0.216776, -0.018001,
		38.173588, 32.833466, 20.257494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638275, 33.241959, 19.718956>,  <37.490349, 32.681721, 20.270094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638275, 33.241959, 19.718956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.926315, 32.977394, 19.802841>,  <38.099140, 32.818653, 19.853172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.926315, 32.977394, 19.802841>,  <37.638275, 33.241959, 19.718956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926315, 32.977394, 19.802841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039603, -0.340927, -0.939255,
		0.692736, 0.668055, -0.271697,
		0.720103, -0.661416, 0.209715,
		38.142345, 32.778969, 19.865755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.862034, 32.827934, 35.441479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228111, 32.666950, 35.449829>,  <36.447758, 32.570358, 35.454842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228111, 32.666950, 35.449829>,  <35.862034, 32.827934, 35.441479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228111, 32.666950, 35.449829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050047, -0.164911, -0.985038,
		0.399885, 0.900460, -0.171068,
		0.915198, -0.402463, 0.020880,
		36.502670, 32.546211, 35.456093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115101, 33.134583, 34.837669>,  <35.862034, 32.827934, 35.441479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115101, 33.134583, 34.837669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265434, 32.770683, 34.908218>,  <36.355637, 32.552345, 34.950550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265434, 32.770683, 34.908218>,  <36.115101, 33.134583, 34.837669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265434, 32.770683, 34.908218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040018, -0.174219, -0.983894,
		0.925822, 0.376841, -0.029072,
		0.375836, -0.909746, 0.176376,
		36.378185, 32.497761, 34.961132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701702, 33.018059, 34.485424>,  <36.115101, 33.134583, 34.837669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701702, 33.018059, 34.485424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611797, 32.636402, 34.564518>,  <36.557854, 32.407410, 34.611977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611797, 32.636402, 34.564518>,  <36.701702, 33.018059, 34.485424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611797, 32.636402, 34.564518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097454, -0.179900, -0.978846,
		0.969528, -0.239280, -0.052550,
		-0.224764, -0.954139, 0.197737,
		36.544369, 32.350159, 34.623840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135986, 32.681423, 34.091984>,  <36.701702, 33.018059, 34.485424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135986, 32.681423, 34.091984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880703, 32.389553, 34.190186>,  <36.727535, 32.214432, 34.249107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880703, 32.389553, 34.190186>,  <37.135986, 32.681423, 34.091984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880703, 32.389553, 34.190186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101726, -0.236164, -0.966374,
		0.763117, -0.641717, 0.076494,
		-0.638204, -0.729675, 0.245500,
		36.689243, 32.170650, 34.263836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383743, 32.037033, 33.821213>,  <37.135986, 32.681423, 34.091984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383743, 32.037033, 33.821213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990635, 31.994852, 33.881927>,  <36.754768, 31.969543, 33.918354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990635, 31.994852, 33.881927>,  <37.383743, 32.037033, 33.821213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990635, 31.994852, 33.881927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101210, -0.380095, -0.919394,
		0.154645, -0.918917, 0.362874,
		-0.982772, -0.105453, 0.151783,
		36.695805, 31.963217, 33.927464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330368, 31.486513, 33.458096>,  <37.383743, 32.037033, 33.821213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330368, 31.486513, 33.458096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954208, 31.618486, 33.491051>,  <36.728512, 31.697670, 33.510826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954208, 31.618486, 33.491051>,  <37.330368, 31.486513, 33.458096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954208, 31.618486, 33.491051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192785, -0.317652, -0.928403,
		-0.280133, -0.888957, 0.362326,
		-0.940404, 0.329927, 0.082393,
		36.672089, 31.717466, 33.515766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889080, 30.939123, 33.179668>,  <37.330368, 31.486513, 33.458096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889080, 30.939123, 33.179668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665997, 31.270699, 33.162556>,  <36.532146, 31.469643, 33.152287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665997, 31.270699, 33.162556>,  <36.889080, 30.939123, 33.179668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665997, 31.270699, 33.162556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273511, -0.232190, -0.933424,
		-0.783682, -0.508874, 0.356216,
		-0.557705, 0.828936, -0.042780,
		36.498684, 31.519379, 33.149723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229980, 30.826056, 32.914917>,  <36.889080, 30.939123, 33.179668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229980, 30.826056, 32.914917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294083, 31.205999, 32.807526>,  <36.332546, 31.433966, 32.743092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294083, 31.205999, 32.807526>,  <36.229980, 30.826056, 32.914917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294083, 31.205999, 32.807526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365465, -0.195568, -0.910049,
		-0.916926, 0.243964, 0.315799,
		0.160259, 0.949860, -0.268481,
		36.342159, 31.490957, 32.726982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604279, 31.039255, 32.484253>,  <36.229980, 30.826056, 32.914917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604279, 31.039255, 32.484253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902931, 31.284636, 32.381325>,  <36.082123, 31.431864, 32.319569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902931, 31.284636, 32.381325>,  <35.604279, 31.039255, 32.484253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902931, 31.284636, 32.381325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167309, -0.201211, -0.965154,
		-0.643851, 0.763669, -0.047595,
		0.746635, 0.613452, -0.257319,
		36.126923, 31.468672, 32.304131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377392, 31.435793, 31.807716>,  <35.604279, 31.039255, 32.484253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377392, 31.435793, 31.807716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768379, 31.509266, 31.849318>,  <36.002972, 31.553349, 31.874279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768379, 31.509266, 31.849318>,  <35.377392, 31.435793, 31.807716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768379, 31.509266, 31.849318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087818, 0.094173, -0.991675,
		-0.191945, 0.978465, 0.075921,
		0.977469, 0.183680, 0.104003,
		36.061619, 31.564369, 31.880518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433342, 31.923773, 31.377163>,  <35.377392, 31.435793, 31.807716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433342, 31.923773, 31.377163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796642, 31.772114, 31.447960>,  <36.014622, 31.681118, 31.490438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796642, 31.772114, 31.447960>,  <35.433342, 31.923773, 31.377163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796642, 31.772114, 31.447960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149294, -0.101516, -0.983568,
		0.390887, 0.919750, -0.035597,
		0.908250, -0.379149, 0.176994,
		36.069118, 31.658369, 31.501059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858414, 32.376007, 30.960405>,  <35.433342, 31.923773, 31.377163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858414, 32.376007, 30.960405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028652, 32.017338, 31.009134>,  <36.130795, 31.802135, 31.038372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028652, 32.017338, 31.009134>,  <35.858414, 32.376007, 30.960405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028652, 32.017338, 31.009134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213593, -0.031278, -0.976422,
		0.879343, 0.441583, 0.178212,
		0.425597, -0.896675, 0.121823,
		36.156330, 31.748335, 31.045681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830162, 33.134724, 30.866850>,  <35.858414, 32.376007, 30.960405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830162, 33.134724, 30.866850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464657, 33.269661, 30.776308>,  <35.245354, 33.350624, 30.721983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464657, 33.269661, 30.776308>,  <35.830162, 33.134724, 30.866850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464657, 33.269661, 30.776308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142413, 0.255829, 0.956175,
		0.380468, 0.905953, -0.185725,
		-0.913763, 0.337344, -0.226354,
		35.190529, 33.370865, 30.708403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796169, 33.804573, 31.127634>,  <35.830162, 33.134724, 30.866850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796169, 33.804573, 31.127634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431828, 33.647682, 31.076237>,  <35.213223, 33.553547, 31.045399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431828, 33.647682, 31.076237>,  <35.796169, 33.804573, 31.127634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431828, 33.647682, 31.076237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238305, 0.245580, 0.939628,
		-0.336992, 0.886481, -0.317156,
		-0.910850, -0.392227, -0.128494,
		35.158573, 33.530014, 31.037689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447823, 34.315685, 31.508516>,  <35.796169, 33.804573, 31.127634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447823, 34.315685, 31.508516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232372, 33.984230, 31.447550>,  <35.103100, 33.785355, 31.410971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232372, 33.984230, 31.447550>,  <35.447823, 34.315685, 31.508516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232372, 33.984230, 31.447550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402570, 0.094199, 0.910529,
		-0.740146, 0.551795, -0.384325,
		-0.538629, -0.828642, -0.152416,
		35.070786, 33.735638, 31.401825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708523, 34.544247, 31.834154>,  <35.447823, 34.315685, 31.508516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708523, 34.544247, 31.834154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711876, 34.145756, 31.799610>,  <34.713886, 33.906662, 31.778885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711876, 34.145756, 31.799610>,  <34.708523, 34.544247, 31.834154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711876, 34.145756, 31.799610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360539, -0.083564, 0.928993,
		-0.932706, 0.023349, -0.359880,
		0.008382, -0.996229, -0.086359,
		34.714390, 33.846886, 31.773703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023308, 34.307301, 31.861271>,  <34.708523, 34.544247, 31.834154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023308, 34.307301, 31.861271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292149, 34.045666, 32.000095>,  <34.453453, 33.888683, 32.083389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292149, 34.045666, 32.000095>,  <34.023308, 34.307301, 31.861271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292149, 34.045666, 32.000095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518443, -0.081032, 0.851264,
		-0.528679, -0.752065, -0.393569,
		0.672097, -0.654089, 0.347062,
		34.493778, 33.849438, 32.104214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618111, 33.927731, 32.238205>,  <34.023308, 34.307301, 31.861271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618111, 33.927731, 32.238205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971195, 33.781212, 32.355949>,  <34.183044, 33.693302, 32.426598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971195, 33.781212, 32.355949>,  <33.618111, 33.927731, 32.238205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971195, 33.781212, 32.355949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281646, 0.089035, 0.955379,
		-0.376159, -0.926229, -0.024573,
		0.882712, -0.366295, 0.294360,
		34.236008, 33.671322, 32.444256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524677, 33.253693, 32.743355>,  <33.618111, 33.927731, 32.238205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524677, 33.253693, 32.743355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883976, 33.413155, 32.817360>,  <34.099556, 33.508831, 32.861763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883976, 33.413155, 32.817360>,  <33.524677, 33.253693, 32.743355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883976, 33.413155, 32.817360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229466, 0.066381, 0.971051,
		0.374831, -0.914697, 0.151103,
		0.898247, 0.398653, 0.185010,
		34.153450, 33.532749, 32.872864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576981, 32.989487, 33.361076>,  <33.524677, 33.253693, 32.743355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576981, 32.989487, 33.361076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892830, 33.234890, 33.364929>,  <34.082340, 33.382133, 33.367241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892830, 33.234890, 33.364929>,  <33.576981, 32.989487, 33.361076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892830, 33.234890, 33.364929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201313, 0.244207, 0.948597,
		0.579624, -0.750977, 0.316340,
		0.789627, 0.613513, 0.009633,
		34.129719, 33.418945, 33.367821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995346, 32.766911, 33.862228>,  <33.576981, 32.989487, 33.361076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995346, 32.766911, 33.862228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068649, 33.156281, 33.807293>,  <34.112629, 33.389904, 33.774334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068649, 33.156281, 33.807293>,  <33.995346, 32.766911, 33.862228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068649, 33.156281, 33.807293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293695, 0.187534, 0.937323,
		0.938169, -0.131434, 0.320256,
		0.183255, 0.973425, -0.137337,
		34.123627, 33.448307, 33.766090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344288, 32.944057, 34.444668>,  <33.995346, 32.766911, 33.862228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344288, 32.944057, 34.444668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219131, 33.304653, 34.325062>,  <34.144039, 33.521011, 34.253296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219131, 33.304653, 34.325062>,  <34.344288, 32.944057, 34.444668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219131, 33.304653, 34.325062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179037, 0.253200, 0.950703,
		0.932764, 0.350997, 0.082178,
		-0.312887, 0.901494, -0.299017,
		34.125267, 33.575100, 34.235355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813725, 33.441765, 34.672138>,  <34.344288, 32.944057, 34.444668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813725, 33.441765, 34.672138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467007, 33.634289, 34.619987>,  <34.258976, 33.749805, 34.588696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467007, 33.634289, 34.619987>,  <34.813725, 33.441765, 34.672138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467007, 33.634289, 34.619987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006433, 0.250647, 0.968057,
		0.498617, 0.839949, -0.214164,
		-0.866798, 0.481312, -0.130381,
		34.206966, 33.778683, 34.580872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950775, 34.179405, 35.012486>,  <34.813725, 33.441765, 34.672138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950775, 34.179405, 35.012486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553154, 34.175373, 34.969109>,  <34.314583, 34.172955, 34.943081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553154, 34.175373, 34.969109>,  <34.950775, 34.179405, 35.012486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553154, 34.175373, 34.969109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095380, 0.561289, 0.822105,
		0.052581, 0.827558, -0.558912,
		-0.994051, -0.010082, -0.108446,
		34.254940, 34.172348, 34.936573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704395, 34.822411, 35.056644>,  <34.950775, 34.179405, 35.012486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704395, 34.822411, 35.056644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385406, 34.604668, 35.160728>,  <34.194012, 34.474022, 35.223179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385406, 34.604668, 35.160728>,  <34.704395, 34.822411, 35.056644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385406, 34.604668, 35.160728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015719, 0.449877, 0.892952,
		-0.603151, 0.708014, -0.367322,
		-0.797472, -0.544358, 0.260215,
		34.146164, 34.441360, 35.238792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301552, 35.277767, 35.311356>,  <34.704395, 34.822411, 35.056644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301552, 35.277767, 35.311356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173046, 34.933838, 35.470100>,  <34.095943, 34.727482, 35.565346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173046, 34.933838, 35.470100>,  <34.301552, 35.277767, 35.311356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173046, 34.933838, 35.470100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178126, 0.466460, 0.866422,
		-0.930088, 0.207656, -0.303012,
		-0.321261, -0.859822, 0.396859,
		34.076668, 34.675892, 35.589157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651211, 35.360680, 35.649368>,  <34.301552, 35.277767, 35.311356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651211, 35.360680, 35.649368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906967, 35.105991, 35.821774>,  <34.060421, 34.953178, 35.925217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906967, 35.105991, 35.821774>,  <33.651211, 35.360680, 35.649368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906967, 35.105991, 35.821774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019026, 0.547296, 0.836723,
		-0.768648, -0.543192, 0.337821,
		0.639389, -0.636718, 0.431013,
		34.098785, 34.914978, 35.951077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668526, 36.130131, 35.479813>,  <33.651211, 35.360680, 35.649368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668526, 36.130131, 35.479813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484856, 36.247959, 35.144577>,  <33.374653, 36.318657, 34.943436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484856, 36.247959, 35.144577>,  <33.668526, 36.130131, 35.479813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484856, 36.247959, 35.144577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808871, -0.251405, -0.531530,
		-0.367271, -0.921968, -0.122829,
		-0.459173, 0.294569, -0.838087,
		33.347103, 36.336330, 34.893150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193249, 36.382290, 35.846176>,  <33.668526, 36.130131, 35.479813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193249, 36.382290, 35.846176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575054, 36.390179, 35.965183>,  <34.804138, 36.394913, 36.036587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575054, 36.390179, 35.965183>,  <34.193249, 36.382290, 35.846176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575054, 36.390179, 35.965183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287899, 0.198656, -0.936830,
		-0.077578, 0.979871, 0.183942,
		0.954513, 0.019721, 0.297515,
		34.861408, 36.396095, 36.054440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527267, 37.070721, 35.723888>,  <34.193249, 36.382290, 35.846176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527267, 37.070721, 35.723888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823524, 36.803680, 35.754230>,  <35.001278, 36.643456, 35.772438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823524, 36.803680, 35.754230>,  <34.527267, 37.070721, 35.723888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823524, 36.803680, 35.754230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306062, 0.234716, -0.922624,
		0.598137, 0.706555, 0.378168,
		0.740647, -0.667599, 0.075857,
		35.045719, 36.603401, 35.776989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073963, 37.347443, 35.437534>,  <34.527267, 37.070721, 35.723888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073963, 37.347443, 35.437534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180286, 36.962337, 35.417835>,  <35.244080, 36.731274, 35.406013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180286, 36.962337, 35.417835>,  <35.073963, 37.347443, 35.437534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180286, 36.962337, 35.417835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344685, 0.142626, -0.927820,
		0.900298, 0.229649, 0.369763,
		0.265810, -0.962766, -0.049249,
		35.260029, 36.673508, 35.403061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500542, 37.370312, 34.937771>,  <35.073963, 37.347443, 35.437534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500542, 37.370312, 34.937771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446640, 36.974945, 34.965714>,  <35.414299, 36.737724, 34.982479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446640, 36.974945, 34.965714>,  <35.500542, 37.370312, 34.937771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446640, 36.974945, 34.965714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329064, -0.111136, -0.937745,
		0.934643, -0.103376, 0.340227,
		-0.134752, -0.988414, 0.069855,
		35.406216, 36.678421, 34.986671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082577, 37.041683, 34.575031>,  <35.500542, 37.370312, 34.937771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082577, 37.041683, 34.575031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761456, 36.803516, 34.562477>,  <35.568783, 36.660618, 34.554943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761456, 36.803516, 34.562477>,  <36.082577, 37.041683, 34.575031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761456, 36.803516, 34.562477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182543, -0.195335, -0.963599,
		0.567611, -0.779311, 0.265504,
		-0.802806, -0.595415, -0.031384,
		35.520615, 36.624893, 34.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273872, 36.560192, 34.140240>,  <36.082577, 37.041683, 34.575031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273872, 36.560192, 34.140240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875458, 36.525852, 34.149506>,  <35.636410, 36.505249, 34.155064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875458, 36.525852, 34.149506>,  <36.273872, 36.560192, 34.140240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875458, 36.525852, 34.149506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000162, -0.262260, -0.964997,
		0.088924, -0.961170, 0.261235,
		-0.996038, -0.085854, 0.023166,
		35.576645, 36.500095, 34.156456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171795, 36.027954, 33.758881>,  <36.273872, 36.560192, 34.140240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171795, 36.027954, 33.758881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818649, 36.215244, 33.744392>,  <35.606762, 36.327618, 33.735699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818649, 36.215244, 33.744392>,  <36.171795, 36.027954, 33.758881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818649, 36.215244, 33.744392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051342, -0.172889, -0.983602,
		-0.466806, -0.866532, 0.176677,
		-0.882868, 0.468223, -0.036216,
		35.553787, 36.355713, 33.733528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814480, 35.736958, 33.193413>,  <36.171795, 36.027954, 33.758881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814480, 35.736958, 33.193413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601490, 36.069748, 33.255756>,  <35.473698, 36.269421, 33.293163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601490, 36.069748, 33.255756>,  <35.814480, 35.736958, 33.193413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601490, 36.069748, 33.255756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190968, 0.061304, -0.979680,
		-0.824622, -0.551418, 0.126238,
		-0.532475, 0.831973, 0.155856,
		35.441746, 36.319340, 33.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129444, 35.590073, 32.851383>,  <35.814480, 35.736958, 33.193413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129444, 35.590073, 32.851383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177742, 35.985592, 32.886494>,  <35.206722, 36.222904, 32.907558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177742, 35.985592, 32.886494>,  <35.129444, 35.590073, 32.851383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177742, 35.985592, 32.886494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242036, 0.115076, -0.963419,
		-0.962724, 0.095088, 0.253219,
		0.120748, 0.988795, 0.087771,
		35.213966, 36.282230, 32.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567715, 35.884907, 32.536667>,  <35.129444, 35.590073, 32.851383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567715, 35.884907, 32.536667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863728, 36.153824, 32.528969>,  <35.041336, 36.315174, 32.524349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863728, 36.153824, 32.528969>,  <34.567715, 35.884907, 32.536667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863728, 36.153824, 32.528969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261018, 0.260713, -0.929461,
		-0.619857, 0.692853, 0.368417,
		0.740031, 0.672297, -0.019242,
		35.085735, 36.355515, 32.523197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441566, 36.297810, 31.914429>,  <34.567715, 35.884907, 32.536667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441566, 36.297810, 31.914429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807781, 36.433815, 32.000381>,  <35.027512, 36.515419, 32.051952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807781, 36.433815, 32.000381>,  <34.441566, 36.297810, 31.914429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807781, 36.433815, 32.000381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160377, 0.181344, -0.970254,
		-0.368872, 0.922769, 0.111496,
		0.915540, 0.340018, 0.214883,
		35.082443, 36.535820, 32.064846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521748, 36.805588, 31.492945>,  <34.441566, 36.297810, 31.914429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521748, 36.805588, 31.492945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903812, 36.730659, 31.584667>,  <35.133049, 36.685703, 31.639700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903812, 36.730659, 31.584667>,  <34.521748, 36.805588, 31.492945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903812, 36.730659, 31.584667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269480, 0.229093, -0.935359,
		0.122677, 0.955211, 0.269299,
		0.955160, -0.187318, 0.229306,
		35.190361, 36.674465, 31.653460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918243, 37.291908, 31.229609>,  <34.521748, 36.805588, 31.492945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918243, 37.291908, 31.229609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208225, 37.017685, 31.256269>,  <35.382214, 36.853149, 31.272266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208225, 37.017685, 31.256269>,  <34.918243, 37.291908, 31.229609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208225, 37.017685, 31.256269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361581, 0.296415, -0.883967,
		0.586256, 0.664939, 0.462774,
		0.724957, -0.685561, 0.066655,
		35.425713, 36.812016, 31.276266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500050, 37.641068, 31.176357>,  <34.918243, 37.291908, 31.229609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500050, 37.641068, 31.176357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589203, 37.268391, 31.061625>,  <35.642696, 37.044785, 30.992785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589203, 37.268391, 31.061625>,  <35.500050, 37.641068, 31.176357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589203, 37.268391, 31.061625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411085, 0.356624, -0.838945,
		0.883929, 0.069078, 0.462491,
		0.222888, -0.931691, -0.286834,
		35.656071, 36.988884, 30.975574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192020, 37.669201, 30.861937>,  <35.500050, 37.641068, 31.176357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192020, 37.669201, 30.861937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036236, 37.321644, 30.739729>,  <35.942764, 37.113110, 30.666405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036236, 37.321644, 30.739729>,  <36.192020, 37.669201, 30.861937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036236, 37.321644, 30.739729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427714, 0.123156, -0.895485,
		0.815710, -0.479429, 0.323675,
		-0.389459, -0.868896, -0.305518,
		35.919399, 37.060974, 30.648073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725193, 37.370026, 30.532291>,  <36.192020, 37.669201, 30.861937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725193, 37.370026, 30.532291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407688, 37.186756, 30.372278>,  <36.217186, 37.076794, 30.276270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.407688, 37.186756, 30.372278>,  <36.725193, 37.370026, 30.532291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407688, 37.186756, 30.372278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400764, 0.100764, -0.910623,
		0.457529, -0.883135, 0.103635,
		-0.793760, -0.458170, -0.400032,
		36.169559, 37.049305, 30.252268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940464, 36.848145, 30.093601>,  <36.725193, 37.370026, 30.532291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940464, 36.848145, 30.093601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570637, 36.924412, 29.961653>,  <36.348740, 36.970173, 29.882484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570637, 36.924412, 29.961653>,  <36.940464, 36.848145, 30.093601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570637, 36.924412, 29.961653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349272, 0.078193, -0.933753,
		-0.152245, -0.978535, -0.138890,
		-0.924571, 0.190670, -0.329870,
		36.293266, 36.981613, 29.862692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729618, 36.392971, 29.490597>,  <36.940464, 36.848145, 30.093601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729618, 36.392971, 29.490597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463875, 36.691074, 29.467915>,  <36.304428, 36.869938, 29.454306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463875, 36.691074, 29.467915>,  <36.729618, 36.392971, 29.490597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463875, 36.691074, 29.467915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143723, 0.052930, -0.988201,
		-0.733464, -0.664671, -0.142276,
		-0.664360, 0.745259, -0.056706,
		36.264568, 36.914654, 29.450903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242916, 36.192226, 28.851999>,  <36.729618, 36.392971, 29.490597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242916, 36.192226, 28.851999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196842, 36.583290, 28.922329>,  <36.169197, 36.817928, 28.964527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196842, 36.583290, 28.922329>,  <36.242916, 36.192226, 28.851999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196842, 36.583290, 28.922329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086380, 0.186190, -0.978709,
		-0.989581, -0.097546, -0.105897,
		-0.115186, 0.977659, 0.175824,
		36.162285, 36.876587, 28.975077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621655, 36.407455, 28.488493>,  <36.242916, 36.192226, 28.851999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621655, 36.407455, 28.488493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851955, 36.727615, 28.555262>,  <35.990135, 36.919712, 28.595324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851955, 36.727615, 28.555262>,  <35.621655, 36.407455, 28.488493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851955, 36.727615, 28.555262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028143, 0.223434, -0.974313,
		-0.817136, 0.556269, 0.151169,
		0.575757, 0.800401, 0.166921,
		36.024681, 36.967735, 28.605337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499615, 36.789837, 27.950079>,  <35.621655, 36.407455, 28.488493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499615, 36.789837, 27.950079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831516, 36.981133, 28.065182>,  <36.030655, 37.095909, 28.134243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831516, 36.981133, 28.065182>,  <35.499615, 36.789837, 27.950079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831516, 36.981133, 28.065182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188080, 0.245830, -0.950891,
		-0.525492, 0.843123, 0.114031,
		0.829750, 0.478238, 0.287756,
		36.080441, 37.124603, 28.151508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458889, 37.482300, 27.721872>,  <35.499615, 36.789837, 27.950079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458889, 37.482300, 27.721872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843357, 37.384060, 27.772188>,  <36.074039, 37.325115, 27.802378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843357, 37.384060, 27.772188>,  <35.458889, 37.482300, 27.721872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843357, 37.384060, 27.772188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196169, 0.287589, -0.937449,
		0.194064, 0.925728, 0.324603,
		0.961175, -0.245602, 0.125789,
		36.131710, 37.310379, 27.809925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738937, 37.978630, 27.375814>,  <35.458889, 37.482300, 27.721872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738937, 37.978630, 27.375814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042469, 37.721279, 27.416292>,  <36.224586, 37.566868, 27.440578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042469, 37.721279, 27.416292>,  <35.738937, 37.978630, 27.375814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042469, 37.721279, 27.416292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273743, 0.174084, -0.945917,
		0.590969, 0.745490, 0.308221,
		0.758828, -0.643381, 0.101194,
		36.270119, 37.528263, 27.446650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406387, 38.342384, 27.102777>,  <35.738937, 37.978630, 27.375814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406387, 38.342384, 27.102777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528381, 37.961441, 27.103447>,  <36.601578, 37.732876, 27.103848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528381, 37.961441, 27.103447>,  <36.406387, 38.342384, 27.102777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528381, 37.961441, 27.103447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418440, 0.132423, -0.898539,
		0.855508, 0.274738, 0.438891,
		0.304982, -0.952357, 0.001673,
		36.619877, 37.675735, 27.103949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054310, 38.413845, 26.875708>,  <36.406387, 38.342384, 27.102777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054310, 38.413845, 26.875708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935627, 38.043488, 26.782166>,  <36.864418, 37.821274, 26.726040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935627, 38.043488, 26.782166>,  <37.054310, 38.413845, 26.875708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935627, 38.043488, 26.782166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470962, 0.071160, -0.879279,
		0.830759, -0.371025, 0.414946,
		-0.296707, -0.925892, -0.233855,
		36.846615, 37.765720, 26.712009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633606, 37.869438, 27.014286>,  <37.054310, 38.413845, 26.875708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633606, 37.869438, 27.014286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381042, 37.762909, 26.722973>,  <37.229504, 37.698990, 26.548185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381042, 37.762909, 26.722973>,  <37.633606, 37.869438, 27.014286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381042, 37.762909, 26.722973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742841, 0.061746, -0.666614,
		0.222504, -0.961904, 0.158849,
		-0.631410, -0.266324, -0.728281,
		37.191620, 37.683010, 26.504488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997612, 37.179585, 26.670757>,  <37.633606, 37.869438, 27.014286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997612, 37.179585, 26.670757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378601, 37.066536, 26.716227>,  <38.607193, 36.998707, 26.743507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378601, 37.066536, 26.716227>,  <37.997612, 37.179585, 26.670757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378601, 37.066536, 26.716227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132079, -0.046888, 0.990130,
		-0.274505, -0.958084, -0.081988,
		0.952471, -0.282624, 0.113672,
		38.664341, 36.981750, 26.750328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012581, 36.856808, 27.335115>,  <37.997612, 37.179585, 26.670757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012581, 36.856808, 27.335115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407364, 36.884518, 27.276981>,  <38.644234, 36.901142, 27.242100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407364, 36.884518, 27.276981>,  <38.012581, 36.856808, 27.335115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407364, 36.884518, 27.276981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153024, -0.122995, 0.980538,
		0.050050, -0.989986, -0.131991,
		0.986954, 0.069274, -0.145336,
		38.703449, 36.905300, 27.233381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343918, 36.324707, 27.713663>,  <38.012581, 36.856808, 27.335115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343918, 36.324707, 27.713663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604088, 36.625301, 27.669451>,  <38.760189, 36.805656, 27.642923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604088, 36.625301, 27.669451>,  <38.343918, 36.324707, 27.713663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604088, 36.625301, 27.669451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141560, 0.023040, 0.989661,
		0.746263, -0.659347, -0.091395,
		0.650424, 0.751486, -0.110531,
		38.799213, 36.850746, 27.636292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896648, 36.117298, 28.147713>,  <38.343918, 36.324707, 27.713663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896648, 36.117298, 28.147713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934864, 36.512737, 28.101160>,  <38.957794, 36.750000, 28.073229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934864, 36.512737, 28.101160>,  <38.896648, 36.117298, 28.147713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934864, 36.512737, 28.101160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277794, 0.085792, 0.956802,
		0.955878, -0.123738, -0.266431,
		0.095535, 0.988599, -0.116381,
		38.963524, 36.809319, 28.066246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528950, 36.230232, 28.493687>,  <38.896648, 36.117298, 28.147713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528950, 36.230232, 28.493687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362003, 36.593143, 28.473095>,  <39.261837, 36.810890, 28.460741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362003, 36.593143, 28.473095>,  <39.528950, 36.230232, 28.493687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362003, 36.593143, 28.473095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182837, 0.139326, 0.973221,
		0.890157, 0.396775, -0.224034,
		-0.417364, 0.907281, -0.051477,
		39.236794, 36.865326, 28.457651>
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
