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
	<23.973520, 35.102802, 35.193718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283060, 34.852623, 35.233654>,  <24.468784, 34.702515, 35.257614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283060, 34.852623, 35.233654>,  <23.973520, 35.102802, 35.193718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283060, 34.852623, 35.233654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579322, 0.635255, -0.510722,
		0.256009, 0.453061, 0.853929,
		0.773851, -0.625449, 0.099838,
		24.515215, 34.664989, 35.263607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590687, 35.422173, 35.476601>,  <23.973520, 35.102802, 35.193718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590687, 35.422173, 35.476601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729305, 35.116646, 35.258801>,  <24.812477, 34.933331, 35.128120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729305, 35.116646, 35.258801>,  <24.590687, 35.422173, 35.476601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729305, 35.116646, 35.258801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672444, 0.607002, -0.423518,
		0.654007, -0.219381, 0.723980,
		0.346546, -0.763820, -0.544505,
		24.833269, 34.887501, 35.095448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413816, 35.276615, 35.579475>,  <24.590687, 35.422173, 35.476601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413816, 35.276615, 35.579475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243044, 35.218460, 35.222469>,  <25.140579, 35.183567, 35.008266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243044, 35.218460, 35.222469>,  <25.413816, 35.276615, 35.579475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243044, 35.218460, 35.222469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567431, 0.725420, -0.389599,
		0.704095, -0.672775, -0.227208,
		-0.426935, -0.145390, -0.892518,
		25.114964, 35.174843, 34.954712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989094, 35.044491, 35.088791>,  <25.413816, 35.276615, 35.579475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989094, 35.044491, 35.088791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666241, 35.251904, 34.975891>,  <25.472528, 35.376350, 34.908154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666241, 35.251904, 34.975891>,  <25.989094, 35.044491, 35.088791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666241, 35.251904, 34.975891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579096, 0.788360, -0.207695,
		0.114816, -0.331086, -0.936589,
		-0.807134, 0.518528, -0.282246,
		25.424101, 35.407463, 34.891216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579214, 34.860508, 35.606117>,  <25.989094, 35.044491, 35.088791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579214, 34.860508, 35.606117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720871, 34.488419, 35.644638>,  <26.805866, 34.265167, 35.667751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720871, 34.488419, 35.644638>,  <26.579214, 34.860508, 35.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720871, 34.488419, 35.644638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074494, -0.130705, -0.988619,
		0.932220, 0.342939, -0.115584,
		0.354143, -0.930220, 0.096298,
		26.827114, 34.209354, 35.673527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490931, 34.516243, 34.898914>,  <26.579214, 34.860508, 35.606117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490931, 34.516243, 34.898914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877428, 34.431305, 34.840565>,  <27.109327, 34.380344, 34.805553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877428, 34.431305, 34.840565>,  <26.490931, 34.516243, 34.898914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877428, 34.431305, 34.840565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107436, 0.182524, -0.977314,
		0.234150, 0.959998, 0.153550,
		0.966246, -0.212342, -0.145876,
		27.167301, 34.367603, 34.796803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658415, 34.972862, 34.423847>,  <26.490931, 34.516243, 34.898914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658415, 34.972862, 34.423847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002821, 34.773529, 34.383221>,  <27.209465, 34.653927, 34.358845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002821, 34.773529, 34.383221>,  <26.658415, 34.972862, 34.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002821, 34.773529, 34.383221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046551, 0.276094, -0.960003,
		0.506447, 0.821847, 0.260919,
		0.861014, -0.498336, -0.101569,
		27.261126, 34.624027, 34.352749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170967, 35.416790, 34.123306>,  <26.658415, 34.972862, 34.423847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170967, 35.416790, 34.123306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287277, 35.039722, 34.057793>,  <27.357063, 34.813480, 34.018486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287277, 35.039722, 34.057793>,  <27.170967, 35.416790, 34.123306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287277, 35.039722, 34.057793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027561, 0.179358, -0.983398,
		0.956395, 0.281432, 0.078134,
		0.290774, -0.942670, -0.163780,
		27.374510, 34.756920, 34.008659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789637, 35.429203, 33.656109>,  <27.170967, 35.416790, 34.123306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789637, 35.429203, 33.656109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570230, 35.096966, 33.617657>,  <27.438587, 34.897621, 33.594585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570230, 35.096966, 33.617657>,  <27.789637, 35.429203, 33.656109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570230, 35.096966, 33.617657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008377, 0.109509, -0.993950,
		0.836099, -0.546001, -0.053109,
		-0.548514, -0.830596, -0.096135,
		27.405676, 34.847786, 33.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181965, 35.122932, 33.062115>,  <27.789637, 35.429203, 33.656109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181965, 35.122932, 33.062115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820902, 34.953976, 33.095078>,  <27.604263, 34.852600, 33.114857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820902, 34.953976, 33.095078>,  <28.181965, 35.122932, 33.062115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820902, 34.953976, 33.095078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120362, 0.063929, -0.990670,
		0.413185, -0.904155, -0.108546,
		-0.902658, -0.422395, 0.082411,
		27.550104, 34.827259, 33.119801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135805, 34.697281, 32.527874>,  <28.181965, 35.122932, 33.062115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135805, 34.697281, 32.527874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754681, 34.702515, 32.649185>,  <27.526005, 34.705654, 32.721970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754681, 34.702515, 32.649185>,  <28.135805, 34.697281, 32.527874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754681, 34.702515, 32.649185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301941, 0.062140, -0.951299,
		-0.031292, -0.997982, -0.055258,
		-0.952813, 0.013083, 0.303276,
		27.468836, 34.706440, 32.740170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819229, 34.244926, 32.095699>,  <28.135805, 34.697281, 32.527874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819229, 34.244926, 32.095699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516203, 34.468666, 32.230297>,  <27.334387, 34.602909, 32.311058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516203, 34.468666, 32.230297>,  <27.819229, 34.244926, 32.095699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516203, 34.468666, 32.230297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390609, 0.024570, -0.920229,
		-0.522994, -0.828570, 0.199872,
		-0.757563, 0.559345, 0.336497,
		27.288935, 34.636471, 32.331245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196033, 34.000858, 31.679058>,  <27.819229, 34.244926, 32.095699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196033, 34.000858, 31.679058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125286, 34.367867, 31.821533>,  <27.082838, 34.588074, 31.907019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125286, 34.367867, 31.821533>,  <27.196033, 34.000858, 31.679058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125286, 34.367867, 31.821533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395457, 0.265148, -0.879380,
		-0.901294, -0.296391, 0.315945,
		-0.176868, 0.917523, 0.356187,
		27.072226, 34.643124, 31.928389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511358, 34.184734, 31.466072>,  <27.196033, 34.000858, 31.679058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511358, 34.184734, 31.466072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687395, 34.536747, 31.537483>,  <26.793016, 34.747955, 31.580330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687395, 34.536747, 31.537483>,  <26.511358, 34.184734, 31.466072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687395, 34.536747, 31.537483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345795, 0.349577, -0.870759,
		-0.828701, 0.321478, 0.458155,
		0.440090, 0.880027, 0.178529,
		26.819422, 34.800755, 31.591042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052044, 34.690735, 31.142490>,  <26.511358, 34.184734, 31.466072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052044, 34.690735, 31.142490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393824, 34.885906, 31.213863>,  <26.598892, 35.003010, 31.256687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393824, 34.885906, 31.213863>,  <26.052044, 34.690735, 31.142490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393824, 34.885906, 31.213863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051691, 0.421587, -0.905313,
		-0.516957, 0.764321, 0.385446,
		0.854449, 0.487933, 0.178434,
		26.650158, 35.032288, 31.267393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937431, 35.449429, 30.954155>,  <26.052044, 34.690735, 31.142490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937431, 35.449429, 30.954155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333771, 35.395668, 30.959143>,  <26.571575, 35.363411, 30.962135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333771, 35.395668, 30.959143>,  <25.937431, 35.449429, 30.954155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333771, 35.395668, 30.959143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077027, 0.487173, -0.869902,
		0.110841, 0.862902, 0.493067,
		0.990849, -0.134401, 0.012468,
		26.631025, 35.355347, 30.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295641, 36.125732, 30.796717>,  <25.937431, 35.449429, 30.954155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295641, 36.125732, 30.796717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537695, 35.820717, 30.705202>,  <26.682926, 35.637707, 30.650293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537695, 35.820717, 30.705202>,  <26.295641, 36.125732, 30.796717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537695, 35.820717, 30.705202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220817, 0.436861, -0.872005,
		0.764888, 0.477159, 0.432742,
		0.605133, -0.762543, -0.228785,
		26.719234, 35.591953, 30.636566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979872, 36.468834, 30.606859>,  <26.295641, 36.125732, 30.796717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979872, 36.468834, 30.606859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011723, 36.112160, 30.428621>,  <27.030834, 35.898155, 30.321678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011723, 36.112160, 30.428621>,  <26.979872, 36.468834, 30.606859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011723, 36.112160, 30.428621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162724, 0.452644, -0.876718,
		0.983453, -0.002697, 0.181143,
		0.079629, -0.891687, -0.445593,
		27.035610, 35.844654, 30.294943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569485, 36.468849, 30.234669>,  <26.979872, 36.468834, 30.606859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569485, 36.468849, 30.234669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371649, 36.176632, 30.046335>,  <27.252947, 36.001301, 29.933334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371649, 36.176632, 30.046335>,  <27.569485, 36.468849, 30.234669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371649, 36.176632, 30.046335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205009, 0.428386, -0.880032,
		0.844603, -0.531779, -0.062106,
		-0.494588, -0.730546, -0.470835,
		27.223272, 35.957470, 29.905085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955767, 36.438576, 29.621119>,  <27.569485, 36.468849, 30.234669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955767, 36.438576, 29.621119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605400, 36.259155, 29.550041>,  <27.395180, 36.151505, 29.507395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605400, 36.259155, 29.550041>,  <27.955767, 36.438576, 29.621119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605400, 36.259155, 29.550041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042946, 0.294354, -0.954731,
		0.480547, -0.843896, -0.238566,
		-0.875917, -0.448548, -0.177693,
		27.342625, 36.124592, 29.496733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063288, 35.988750, 29.051580>,  <27.955767, 36.438576, 29.621119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063288, 35.988750, 29.051580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674335, 36.081520, 29.062071>,  <27.440964, 36.137180, 29.068365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674335, 36.081520, 29.062071>,  <28.063288, 35.988750, 29.051580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674335, 36.081520, 29.062071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032453, 0.245621, -0.968823,
		-0.231134, -0.941213, -0.246363,
		-0.972380, 0.231923, 0.026226,
		27.382622, 36.151096, 29.069939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922173, 35.787254, 28.390551>,  <28.063288, 35.988750, 29.051580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922173, 35.787254, 28.390551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581944, 35.963711, 28.505037>,  <27.377806, 36.069584, 28.573729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581944, 35.963711, 28.505037>,  <27.922173, 35.787254, 28.390551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581944, 35.963711, 28.505037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162403, 0.297312, -0.940867,
		-0.500151, -0.846758, -0.181243,
		-0.850573, 0.441141, 0.286217,
		27.326771, 36.096054, 28.590902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324455, 35.627277, 27.865557>,  <27.922173, 35.787254, 28.390551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324455, 35.627277, 27.865557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268013, 35.966965, 28.069092>,  <27.234148, 36.170776, 28.191212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268013, 35.966965, 28.069092>,  <27.324455, 35.627277, 27.865557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268013, 35.966965, 28.069092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117276, 0.496021, -0.860354,
		-0.983024, -0.181074, 0.029603,
		-0.141104, 0.849220, 0.508837,
		27.225681, 36.221729, 28.221743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860798, 35.922710, 27.467205>,  <27.324455, 35.627277, 27.865557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860798, 35.922710, 27.467205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964420, 36.239952, 27.687704>,  <27.026594, 36.430298, 27.820004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964420, 36.239952, 27.687704>,  <26.860798, 35.922710, 27.467205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964420, 36.239952, 27.687704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169364, 0.599189, -0.782489,
		-0.950898, 0.109346, 0.289546,
		0.259055, 0.793105, 0.551248,
		27.042137, 36.477882, 27.853079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522543, 36.465786, 27.259829>,  <26.860798, 35.922710, 27.467205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522543, 36.465786, 27.259829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831284, 36.642525, 27.442701>,  <27.016527, 36.748569, 27.552425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831284, 36.642525, 27.442701>,  <26.522543, 36.465786, 27.259829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831284, 36.642525, 27.442701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089786, 0.636108, -0.766358,
		-0.629432, 0.632563, 0.451309,
		0.771851, 0.441849, 0.457182,
		27.062840, 36.775078, 27.579857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388102, 37.088787, 27.118069>,  <26.522543, 36.465786, 27.259829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388102, 37.088787, 27.118069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781115, 37.033146, 27.167517>,  <27.016922, 36.999763, 27.197186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781115, 37.033146, 27.167517>,  <26.388102, 37.088787, 27.118069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781115, 37.033146, 27.167517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173569, 0.445428, -0.878333,
		0.067112, 0.884447, 0.461790,
		0.982532, -0.139100, 0.123619,
		27.075874, 36.991417, 27.204603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661304, 37.680153, 27.103365>,  <26.388102, 37.088787, 27.118069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661304, 37.680153, 27.103365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950260, 37.436180, 26.973049>,  <27.123632, 37.289795, 26.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950260, 37.436180, 26.973049>,  <26.661304, 37.680153, 27.103365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950260, 37.436180, 26.973049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027213, 0.445703, -0.894767,
		0.690952, 0.655235, 0.305373,
		0.722388, -0.609931, -0.325791,
		27.166977, 37.253201, 26.875313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197920, 37.976616, 26.690165>,  <26.661304, 37.680153, 27.103365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197920, 37.976616, 26.690165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198294, 37.599415, 26.557051>,  <27.198519, 37.373093, 26.477182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198294, 37.599415, 26.557051>,  <27.197920, 37.976616, 26.690165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198294, 37.599415, 26.557051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033797, 0.332624, -0.942454,
		0.999428, -0.010365, 0.032182,
		0.000936, -0.943003, -0.332784,
		27.198574, 37.316513, 26.457216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767536, 37.802399, 26.202608>,  <27.197920, 37.976616, 26.690165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767536, 37.802399, 26.202608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469463, 37.548500, 26.120831>,  <27.290621, 37.396160, 26.071764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469463, 37.548500, 26.120831>,  <27.767536, 37.802399, 26.202608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469463, 37.548500, 26.120831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036862, 0.266898, -0.963019,
		0.665843, -0.725159, -0.175490,
		-0.745180, -0.634751, -0.204443,
		27.245909, 37.358074, 26.059498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959366, 37.300697, 25.626596>,  <27.767536, 37.802399, 26.202608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959366, 37.300697, 25.626596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567785, 37.379536, 25.647785>,  <27.332836, 37.426838, 25.660498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567785, 37.379536, 25.647785>,  <27.959366, 37.300697, 25.626596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567785, 37.379536, 25.647785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034970, 0.417692, -0.907916,
		-0.201075, -0.886953, -0.415793,
		-0.978952, 0.197099, 0.052971,
		27.274099, 37.438667, 25.663677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254065, 36.754913, 25.011606>,  <27.959366, 37.300697, 25.626596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254065, 36.754913, 25.011606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315992, 36.365967, 24.941711>,  <28.353149, 36.132599, 24.899775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315992, 36.365967, 24.941711>,  <28.254065, 36.754913, 25.011606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315992, 36.365967, 24.941711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233380, -0.135867, 0.962847,
		-0.959982, -0.189847, 0.205897,
		0.154819, -0.972367, -0.174736,
		28.362438, 36.074257, 24.889290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891403, 36.288666, 25.522062>,  <28.254065, 36.754913, 25.011606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891403, 36.288666, 25.522062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181007, 36.066410, 25.358564>,  <28.354771, 35.933056, 25.260466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181007, 36.066410, 25.358564>,  <27.891403, 36.288666, 25.522062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181007, 36.066410, 25.358564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396079, -0.150263, 0.905838,
		-0.564737, -0.817733, 0.111284,
		0.724012, -0.555638, -0.408746,
		28.398211, 35.899719, 25.235941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042875, 35.835541, 26.089958>,  <27.891403, 36.288666, 25.522062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042875, 35.835541, 26.089958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351418, 35.854172, 25.836081>,  <28.536543, 35.865349, 25.683754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351418, 35.854172, 25.836081>,  <28.042875, 35.835541, 26.089958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351418, 35.854172, 25.836081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634802, -0.127004, 0.762166,
		-0.045107, -0.990808, -0.127534,
		0.771357, 0.046580, -0.634696,
		28.582825, 35.868145, 25.645672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445992, 35.179035, 26.089804>,  <28.042875, 35.835541, 26.089958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445992, 35.179035, 26.089804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660954, 35.498928, 25.982758>,  <28.789930, 35.690865, 25.918530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660954, 35.498928, 25.982758>,  <28.445992, 35.179035, 26.089804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660954, 35.498928, 25.982758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631392, -0.171193, 0.756332,
		0.559051, -0.575428, -0.596946,
		0.537407, 0.799735, -0.267615,
		28.822176, 35.738850, 25.902473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180576, 34.919437, 26.155394>,  <28.445992, 35.179035, 26.089804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180576, 34.919437, 26.155394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142740, 35.316959, 26.178762>,  <29.120039, 35.555473, 26.192783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142740, 35.316959, 26.178762>,  <29.180576, 34.919437, 26.155394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142740, 35.316959, 26.178762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630549, 0.014394, 0.776016,
		0.770364, 0.110242, -0.628002,
		-0.094589, 0.993801, 0.058424,
		29.114363, 35.615101, 26.196289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963610, 35.280678, 26.221416>,  <29.180576, 34.919437, 26.155394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963610, 35.280678, 26.221416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649206, 35.474297, 26.375240>,  <29.460564, 35.590469, 26.467535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649206, 35.474297, 26.375240>,  <29.963610, 35.280678, 26.221416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649206, 35.474297, 26.375240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508133, 0.151531, 0.847844,
		0.352127, 0.861820, -0.365066,
		-0.786008, 0.484051, 0.384560,
		29.413404, 35.619511, 26.490608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198610, 35.773567, 26.520638>,  <29.963610, 35.280678, 26.221416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198610, 35.773567, 26.520638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842726, 35.806667, 26.700222>,  <29.629194, 35.826527, 26.807972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842726, 35.806667, 26.700222>,  <30.198610, 35.773567, 26.520638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842726, 35.806667, 26.700222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456266, 0.128236, 0.880555,
		0.015289, 0.988286, -0.151847,
		-0.889712, 0.082746, 0.448961,
		29.575811, 35.831490, 26.834909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243446, 36.368095, 26.948792>,  <30.198610, 35.773567, 26.520638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243446, 36.368095, 26.948792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925180, 36.174442, 27.094412>,  <29.734221, 36.058250, 27.181784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925180, 36.174442, 27.094412>,  <30.243446, 36.368095, 26.948792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925180, 36.174442, 27.094412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320828, 0.172962, 0.931211,
		-0.513798, 0.857729, 0.017705,
		-0.795664, -0.484134, 0.364051,
		29.686481, 36.029202, 27.203627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798552, 36.888592, 27.435558>,  <30.243446, 36.368095, 26.948792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798552, 36.888592, 27.435558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806091, 36.494682, 27.504694>,  <29.810616, 36.258339, 27.546175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806091, 36.494682, 27.504694>,  <29.798552, 36.888592, 27.435558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806091, 36.494682, 27.504694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287250, 0.170915, 0.942484,
		-0.957670, 0.031883, 0.286097,
		0.018849, -0.984770, 0.172839,
		29.811747, 36.199253, 27.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858986, 36.883930, 28.142029>,  <29.798552, 36.888592, 27.435558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858986, 36.883930, 28.142029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874588, 36.488449, 28.084129>,  <29.883949, 36.251160, 28.049391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874588, 36.488449, 28.084129>,  <29.858986, 36.883930, 28.142029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874588, 36.488449, 28.084129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102828, -0.140117, 0.984781,
		-0.993934, -0.053297, 0.096201,
		0.039007, -0.988699, -0.144748,
		29.886290, 36.191841, 28.040705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505968, 36.476765, 28.748997>,  <29.858986, 36.883930, 28.142029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505968, 36.476765, 28.748997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735577, 36.203411, 28.568558>,  <29.873343, 36.039398, 28.460295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735577, 36.203411, 28.568558>,  <29.505968, 36.476765, 28.748997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735577, 36.203411, 28.568558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044618, -0.523974, 0.850565,
		-0.817623, -0.508371, -0.270282,
		0.574023, -0.683382, -0.451095,
		29.907784, 35.998398, 28.433229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115868, 35.854771, 28.840195>,  <29.505968, 36.476765, 28.748997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115868, 35.854771, 28.840195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503651, 35.766220, 28.797964>,  <29.736320, 35.713089, 28.772625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503651, 35.766220, 28.797964>,  <29.115868, 35.854771, 28.840195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503651, 35.766220, 28.797964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038630, -0.562911, 0.825614,
		-0.242204, -0.796318, -0.554269,
		0.969456, -0.221378, -0.105577,
		29.794487, 35.699806, 28.766291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287596, 35.095261, 29.048649>,  <29.115868, 35.854771, 28.840195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287596, 35.095261, 29.048649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637108, 35.289787, 29.048225>,  <29.846815, 35.406506, 29.047972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637108, 35.289787, 29.048225>,  <29.287596, 35.095261, 29.048649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637108, 35.289787, 29.048225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220595, -0.394411, 0.892064,
		0.433410, -0.779702, -0.451908,
		0.873781, 0.486318, -0.001057,
		29.899242, 35.435684, 29.047909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729361, 34.555836, 29.190212>,  <29.287596, 35.095261, 29.048649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729361, 34.555836, 29.190212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910416, 34.902458, 29.274311>,  <30.019049, 35.110432, 29.324770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910416, 34.902458, 29.274311>,  <29.729361, 34.555836, 29.190212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910416, 34.902458, 29.274311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265282, -0.355970, 0.896053,
		0.851320, -0.349812, -0.391006,
		0.452636, 0.866555, 0.210246,
		30.046207, 35.162426, 29.337385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369810, 34.367764, 29.494085>,  <29.729361, 34.555836, 29.190212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369810, 34.367764, 29.494085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340212, 34.755081, 29.589533>,  <30.322453, 34.987473, 29.646801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340212, 34.755081, 29.589533>,  <30.369810, 34.367764, 29.494085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340212, 34.755081, 29.589533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033770, -0.236706, 0.970994,
		0.996687, 0.079908, -0.015184,
		-0.073996, 0.968290, 0.238621,
		30.318014, 35.045567, 29.661119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793295, 34.359589, 30.000269>,  <30.369810, 34.367764, 29.494085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793295, 34.359589, 30.000269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593964, 34.704231, 30.038851>,  <30.474365, 34.911018, 30.062000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593964, 34.704231, 30.038851>,  <30.793295, 34.359589, 30.000269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593964, 34.704231, 30.038851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073746, -0.152975, 0.985475,
		0.863845, 0.483978, 0.139772,
		-0.498329, 0.861605, 0.096455,
		30.444466, 34.962711, 30.067787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202469, 34.769791, 30.313208>,  <30.793295, 34.359589, 30.000269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202469, 34.769791, 30.313208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846457, 34.925541, 30.408066>,  <30.632849, 35.018990, 30.464981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846457, 34.925541, 30.408066>,  <31.202469, 34.769791, 30.313208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846457, 34.925541, 30.408066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195081, -0.144870, 0.970029,
		0.412057, 0.909617, 0.052979,
		-0.890029, 0.389372, 0.237144,
		30.579447, 35.042351, 30.479208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222342, 35.219971, 30.936838>,  <31.202469, 34.769791, 30.313208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222342, 35.219971, 30.936838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836685, 35.117405, 30.909468>,  <30.605291, 35.055866, 30.893045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836685, 35.117405, 30.909468>,  <31.222342, 35.219971, 30.936838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836685, 35.117405, 30.909468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057713, -0.049089, 0.997126,
		-0.259041, 0.965319, 0.032530,
		-0.964141, -0.256419, -0.068427,
		30.547443, 35.040478, 30.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970369, 35.544991, 31.414663>,  <31.222342, 35.219971, 30.936838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970369, 35.544991, 31.414663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709152, 35.249641, 31.347322>,  <30.552422, 35.072433, 31.306919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709152, 35.249641, 31.347322>,  <30.970369, 35.544991, 31.414663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709152, 35.249641, 31.347322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198423, -0.047712, 0.978955,
		-0.730865, 0.672703, -0.115352,
		-0.653042, -0.738372, -0.168351,
		30.513239, 35.028130, 31.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353489, 35.681046, 31.758064>,  <30.970369, 35.544991, 31.414663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353489, 35.681046, 31.758064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349201, 35.284004, 31.709696>,  <30.346628, 35.045780, 31.680676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349201, 35.284004, 31.709696>,  <30.353489, 35.681046, 31.758064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349201, 35.284004, 31.709696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184002, -0.116903, 0.975949,
		-0.982867, 0.032712, -0.181388,
		-0.010720, -0.992604, -0.120919,
		30.345985, 34.986221, 31.673420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849129, 35.543995, 32.196957>,  <30.353489, 35.681046, 31.758064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849129, 35.543995, 32.196957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031706, 35.195660, 32.123962>,  <30.141253, 34.986660, 32.080166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031706, 35.195660, 32.123962>,  <29.849129, 35.543995, 32.196957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031706, 35.195660, 32.123962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232725, -0.314809, 0.920182,
		-0.858778, -0.377539, -0.346358,
		0.456442, -0.870838, -0.182488,
		30.168638, 34.934410, 32.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322536, 35.097809, 32.250011>,  <29.849129, 35.543995, 32.196957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322536, 35.097809, 32.250011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666418, 34.906330, 32.321304>,  <29.872747, 34.791443, 32.364079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666418, 34.906330, 32.321304>,  <29.322536, 35.097809, 32.250011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666418, 34.906330, 32.321304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383656, -0.374771, 0.844011,
		-0.337226, -0.793978, -0.505844,
		0.859701, -0.478692, 0.178232,
		29.924328, 34.762722, 32.374775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181276, 34.489708, 32.599415>,  <29.322536, 35.097809, 32.250011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181276, 34.489708, 32.599415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572672, 34.461445, 32.676941>,  <29.807508, 34.444489, 32.723457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572672, 34.461445, 32.676941>,  <29.181276, 34.489708, 32.599415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572672, 34.461445, 32.676941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205777, -0.267625, 0.941293,
		-0.014635, -0.960929, -0.276407,
		0.978489, -0.070654, 0.193820,
		29.866219, 34.440247, 32.735088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405088, 33.800167, 32.958824>,  <29.181276, 34.489708, 32.599415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405088, 33.800167, 32.958824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655144, 34.097061, 33.055389>,  <29.805178, 34.275200, 33.113331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655144, 34.097061, 33.055389>,  <29.405088, 33.800167, 32.958824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655144, 34.097061, 33.055389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032506, -0.333794, 0.942085,
		0.779836, -0.581087, -0.232795,
		0.625139, 0.742239, 0.241416,
		29.842686, 34.319733, 33.127815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698250, 33.475483, 33.445213>,  <29.405088, 33.800167, 32.958824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698250, 33.475483, 33.445213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821135, 33.853565, 33.489395>,  <29.894865, 34.080414, 33.515903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821135, 33.853565, 33.489395>,  <29.698250, 33.475483, 33.445213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821135, 33.853565, 33.489395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106394, -0.149452, 0.983028,
		0.945675, -0.290245, -0.146478,
		0.307211, 0.945210, 0.110452,
		29.913298, 34.137127, 33.522530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381573, 33.460777, 33.738964>,  <29.698250, 33.475483, 33.445213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381573, 33.460777, 33.738964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226406, 33.821598, 33.814682>,  <30.133307, 34.038090, 33.860111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226406, 33.821598, 33.814682>,  <30.381573, 33.460777, 33.738964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226406, 33.821598, 33.814682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087712, -0.168315, 0.981823,
		0.917512, 0.397467, -0.013829,
		-0.387915, 0.902048, 0.189294,
		30.110031, 34.092213, 33.871471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852232, 33.736961, 34.251827>,  <30.381573, 33.460777, 33.738964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852232, 33.736961, 34.251827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509945, 33.942616, 34.275196>,  <30.304573, 34.066010, 34.289215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509945, 33.942616, 34.275196>,  <30.852232, 33.736961, 34.251827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509945, 33.942616, 34.275196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003299, -0.107476, 0.994202,
		0.517432, 0.850949, 0.090273,
		-0.855718, 0.514135, 0.058419,
		30.253229, 34.096855, 34.292721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017799, 34.077995, 34.868752>,  <30.852232, 33.736961, 34.251827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017799, 34.077995, 34.868752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623817, 34.114155, 34.809841>,  <30.387428, 34.135849, 34.774494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623817, 34.114155, 34.809841>,  <31.017799, 34.077995, 34.868752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623817, 34.114155, 34.809841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150595, -0.031017, 0.988109,
		0.084753, 0.995423, 0.044163,
		-0.984956, 0.090396, -0.147277,
		30.328331, 34.141273, 34.765659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713301, 34.324295, 34.600929>,  <31.017799, 34.077995, 34.868752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713301, 34.324295, 34.600929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949615, 34.521973, 34.345821>,  <32.091404, 34.640579, 34.192757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949615, 34.521973, 34.345821>,  <31.713301, 34.324295, 34.600929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949615, 34.521973, 34.345821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433319, 0.472440, 0.767486,
		0.680593, -0.729776, 0.064967,
		0.590786, 0.494194, -0.637765,
		32.126850, 34.670231, 34.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413876, 34.292336, 34.820122>,  <31.713301, 34.324295, 34.600929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413876, 34.292336, 34.820122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397781, 34.610203, 34.577839>,  <32.388126, 34.800922, 34.432468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397781, 34.610203, 34.577839>,  <32.413876, 34.292336, 34.820122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397781, 34.610203, 34.577839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288331, 0.589643, 0.754445,
		0.956685, -0.144288, -0.252853,
		-0.040236, 0.794671, -0.605705,
		32.385712, 34.848606, 34.396126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130146, 34.545593, 34.697605>,  <32.413876, 34.292336, 34.820122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130146, 34.545593, 34.697605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841507, 34.821877, 34.678795>,  <32.668324, 34.987648, 34.667511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841507, 34.821877, 34.678795>,  <33.130146, 34.545593, 34.697605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841507, 34.821877, 34.678795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421696, 0.492390, 0.761397,
		0.549058, 0.529595, -0.646579,
		-0.721601, 0.690711, -0.047022,
		32.625027, 35.029091, 34.664688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478035, 35.137508, 34.752106>,  <33.130146, 34.545593, 34.697605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478035, 35.137508, 34.752106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107754, 35.232098, 34.870197>,  <32.885586, 35.288849, 34.941051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107754, 35.232098, 34.870197>,  <33.478035, 35.137508, 34.752106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107754, 35.232098, 34.870197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374362, 0.684474, 0.625579,
		-0.054149, 0.689622, -0.722142,
		-0.925700, 0.236468, 0.295232,
		32.830044, 35.303040, 34.958767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353352, 35.869102, 34.564091>,  <33.478035, 35.137508, 34.752106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353352, 35.869102, 34.564091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179134, 35.698009, 34.880913>,  <33.074604, 35.595352, 35.071007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179134, 35.698009, 34.880913>,  <33.353352, 35.869102, 34.564091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179134, 35.698009, 34.880913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455898, 0.653886, 0.603813,
		-0.776185, 0.624080, -0.089788,
		-0.435539, -0.427736, 0.792053,
		33.048473, 35.569687, 35.118530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994476, 36.411930, 34.958389>,  <33.353352, 35.869102, 34.564091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994476, 36.411930, 34.958389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093979, 36.119274, 35.212265>,  <33.153683, 35.943680, 35.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093979, 36.119274, 35.212265>,  <32.994476, 36.411930, 34.958389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093979, 36.119274, 35.212265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374412, 0.676984, 0.633647,
		-0.893272, 0.080008, 0.442339,
		0.248760, -0.731636, 0.634687,
		33.168606, 35.899784, 35.402672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797844, 36.661930, 35.605061>,  <32.994476, 36.411930, 34.958389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797844, 36.661930, 35.605061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020805, 36.343346, 35.698833>,  <33.154583, 36.152195, 35.755096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020805, 36.343346, 35.698833>,  <32.797844, 36.661930, 35.605061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020805, 36.343346, 35.698833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370238, 0.491186, 0.788455,
		-0.743117, -0.352695, 0.568668,
		0.557405, -0.796456, 0.234428,
		33.188026, 36.104408, 35.769161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768711, 36.571907, 36.273182>,  <32.797844, 36.661930, 35.605061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768711, 36.571907, 36.273182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115231, 36.397907, 36.174950>,  <33.323143, 36.293507, 36.116013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115231, 36.397907, 36.174950>,  <32.768711, 36.571907, 36.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115231, 36.397907, 36.174950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488613, 0.635677, 0.597638,
		-0.103862, -0.637725, 0.763230,
		0.866297, -0.434996, -0.245578,
		33.375118, 36.267410, 36.101276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097649, 36.518150, 36.979511>,  <32.768711, 36.571907, 36.273182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097649, 36.518150, 36.979511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385803, 36.462700, 36.707680>,  <33.558697, 36.429432, 36.544579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385803, 36.462700, 36.707680>,  <33.097649, 36.518150, 36.979511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385803, 36.462700, 36.707680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593880, 0.629413, 0.501145,
		0.358267, -0.764606, 0.535745,
		0.720383, -0.138624, -0.679582,
		33.601917, 36.421112, 36.503803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707191, 36.045746, 37.320236>,  <33.097649, 36.518150, 36.979511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707191, 36.045746, 37.320236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824699, 36.279564, 37.017712>,  <33.895203, 36.419857, 36.836197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824699, 36.279564, 37.017712>,  <33.707191, 36.045746, 37.320236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824699, 36.279564, 37.017712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715723, 0.389941, 0.579385,
		0.633595, -0.711511, -0.303824,
		0.293765, 0.584550, -0.756309,
		33.912830, 36.454929, 36.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423752, 36.068668, 37.319870>,  <33.707191, 36.045746, 37.320236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423752, 36.068668, 37.319870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339211, 36.385696, 37.091080>,  <34.288486, 36.575912, 36.953804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339211, 36.385696, 37.091080>,  <34.423752, 36.068668, 37.319870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339211, 36.385696, 37.091080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708206, 0.527495, 0.469248,
		0.673628, -0.305900, -0.672793,
		-0.211351, 0.792575, -0.571976,
		34.275806, 36.623470, 36.919487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027897, 36.442398, 37.362534>,  <34.423752, 36.068668, 37.319870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027897, 36.442398, 37.362534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784813, 36.717377, 37.203480>,  <34.638962, 36.882362, 37.108047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784813, 36.717377, 37.203480>,  <35.027897, 36.442398, 37.362534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784813, 36.717377, 37.203480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594160, 0.725785, 0.346713,
		0.526942, -0.025558, -0.849517,
		-0.607705, 0.687447, -0.397632,
		34.602501, 36.923611, 37.084190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467716, 36.998432, 37.094765>,  <35.027897, 36.442398, 37.362534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467716, 36.998432, 37.094765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098434, 37.146683, 37.135429>,  <34.876865, 37.235634, 37.159828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098434, 37.146683, 37.135429>,  <35.467716, 36.998432, 37.094765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098434, 37.146683, 37.135429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382300, 0.858559, 0.341646,
		0.039344, 0.354272, -0.934314,
		-0.923200, 0.370630, 0.101659,
		34.821476, 37.257874, 37.165928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525017, 37.580547, 36.836952>,  <35.467716, 36.998432, 37.094765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525017, 37.580547, 36.836952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194351, 37.592525, 37.061714>,  <34.995953, 37.599712, 37.196571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194351, 37.592525, 37.061714>,  <35.525017, 37.580547, 36.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194351, 37.592525, 37.061714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246502, 0.916940, 0.313780,
		-0.505833, 0.397900, -0.765381,
		-0.826662, 0.029948, 0.561902,
		34.946354, 37.601509, 37.230286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446308, 38.285946, 36.921230>,  <35.525017, 37.580547, 36.836952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446308, 38.285946, 36.921230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202145, 38.156281, 37.210316>,  <35.055645, 38.078484, 37.383766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202145, 38.156281, 37.210316>,  <35.446308, 38.285946, 36.921230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202145, 38.156281, 37.210316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205453, 0.816400, 0.539704,
		-0.764977, 0.477925, -0.431738,
		-0.610409, -0.324159, 0.722718,
		35.019020, 38.059032, 37.427132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905659, 38.833542, 37.103481>,  <35.446308, 38.285946, 36.921230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905659, 38.833542, 37.103481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935116, 38.586349, 37.416576>,  <34.952789, 38.438034, 37.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935116, 38.586349, 37.416576>,  <34.905659, 38.833542, 37.103481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935116, 38.586349, 37.416576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176144, 0.780590, 0.599711,
		-0.981605, 0.093707, 0.166342,
		0.073647, -0.617979, 0.782737,
		34.957211, 38.400955, 37.651398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618992, 39.157135, 37.631210>,  <34.905659, 38.833542, 37.103481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618992, 39.157135, 37.631210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833260, 38.871918, 37.812157>,  <34.961819, 38.700787, 37.920723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833260, 38.871918, 37.812157>,  <34.618992, 39.157135, 37.631210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833260, 38.871918, 37.812157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117414, 0.593393, 0.796303,
		-0.836228, -0.373437, 0.401581,
		0.535665, -0.713042, 0.452365,
		34.993958, 38.658005, 37.947865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244080, 39.209831, 38.354706>,  <34.618992, 39.157135, 37.631210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244080, 39.209831, 38.354706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591160, 39.012157, 38.376190>,  <34.799408, 38.893555, 38.389080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591160, 39.012157, 38.376190>,  <34.244080, 39.209831, 38.354706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591160, 39.012157, 38.376190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203203, 0.451239, 0.868960,
		-0.453661, -0.743081, 0.491958,
		0.867698, -0.494181, 0.053713,
		34.851471, 38.863903, 38.392303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173824, 38.702225, 38.865082>,  <34.244080, 39.209831, 38.354706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173824, 38.702225, 38.865082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548599, 38.832748, 38.815006>,  <34.773464, 38.911060, 38.784962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548599, 38.832748, 38.815006>,  <34.173824, 38.702225, 38.865082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548599, 38.832748, 38.815006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040562, 0.254243, 0.966289,
		0.347135, -0.910430, 0.224974,
		0.936938, 0.326308, -0.125185,
		34.829681, 38.930641, 38.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466278, 38.586071, 39.526276>,  <34.173824, 38.702225, 38.865082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466278, 38.586071, 39.526276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718937, 38.839180, 39.347111>,  <34.870533, 38.991047, 39.239613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718937, 38.839180, 39.347111>,  <34.466278, 38.586071, 39.526276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718937, 38.839180, 39.347111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171404, 0.449469, 0.876698,
		0.756074, -0.630533, 0.175443,
		0.631643, 0.632776, -0.447908,
		34.908428, 39.029015, 39.212738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123299, 38.430496, 39.810253>,  <34.466278, 38.586071, 39.526276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123299, 38.430496, 39.810253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113079, 38.802395, 39.663326>,  <35.106945, 39.025532, 39.575169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113079, 38.802395, 39.663326>,  <35.123299, 38.430496, 39.810253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113079, 38.802395, 39.663326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139423, 0.367164, 0.919648,
		0.989903, -0.027712, -0.139010,
		-0.025554, 0.929743, -0.367321,
		35.105412, 39.081318, 39.553131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746479, 38.747311, 40.041897>,  <35.123299, 38.430496, 39.810253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746479, 38.747311, 40.041897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504997, 39.049801, 39.940968>,  <35.360107, 39.231297, 39.880409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504997, 39.049801, 39.940968>,  <35.746479, 38.747311, 40.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504997, 39.049801, 39.940968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162636, 0.426679, 0.889660,
		0.780443, 0.496054, -0.380577,
		-0.603703, 0.756225, -0.252323,
		35.323887, 39.276669, 39.865273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187481, 39.352093, 40.179489>,  <35.746479, 38.747311, 40.041897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187481, 39.352093, 40.179489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799744, 39.450104, 40.186817>,  <35.567101, 39.508911, 40.191212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799744, 39.450104, 40.186817>,  <36.187481, 39.352093, 40.179489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799744, 39.450104, 40.186817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148445, 0.524595, 0.838310,
		0.195797, 0.815330, -0.544886,
		-0.969344, 0.245024, 0.018318,
		35.508942, 39.523613, 40.192314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311420, 39.959602, 40.463669>,  <36.187481, 39.352093, 40.179489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311420, 39.959602, 40.463669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923107, 39.872322, 40.503597>,  <35.690121, 39.819954, 40.527554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923107, 39.872322, 40.503597>,  <36.311420, 39.959602, 40.463669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923107, 39.872322, 40.503597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074487, 0.669487, 0.739080,
		-0.228098, 0.710052, -0.666181,
		-0.970785, -0.218204, 0.099819,
		35.631870, 39.806862, 40.533543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020679, 40.556866, 40.583450>,  <36.311420, 39.959602, 40.463669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020679, 40.556866, 40.583450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766209, 40.291817, 40.741543>,  <35.613525, 40.132786, 40.836399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766209, 40.291817, 40.741543>,  <36.020679, 40.556866, 40.583450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766209, 40.291817, 40.741543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065462, 0.556772, 0.828082,
		-0.768760, 0.500935, -0.397583,
		-0.636179, -0.662623, 0.395231,
		35.575356, 40.093029, 40.860111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339733, 40.879803, 40.782776>,  <36.020679, 40.556866, 40.583450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339733, 40.879803, 40.782776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362320, 40.547234, 41.003880>,  <35.375874, 40.347691, 41.136543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362320, 40.547234, 41.003880>,  <35.339733, 40.879803, 40.782776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362320, 40.547234, 41.003880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355305, 0.500662, 0.789364,
		-0.933043, -0.240972, -0.267138,
		0.056469, -0.831427, 0.552758,
		35.379261, 40.297806, 41.169708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620716, 40.823017, 41.172707>,  <35.339733, 40.879803, 40.782776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620716, 40.823017, 41.172707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891739, 40.607235, 41.372669>,  <35.054352, 40.477768, 41.492645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891739, 40.607235, 41.372669>,  <34.620716, 40.823017, 41.172707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891739, 40.607235, 41.372669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137060, 0.575185, 0.806460,
		-0.722584, -0.614941, 0.315784,
		0.677559, -0.539454, 0.499903,
		35.095005, 40.445400, 41.522640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295155, 40.718109, 41.762825>,  <34.620716, 40.823017, 41.172707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295155, 40.718109, 41.762825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678310, 40.642361, 41.849155>,  <34.908203, 40.596912, 41.900951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678310, 40.642361, 41.849155>,  <34.295155, 40.718109, 41.762825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678310, 40.642361, 41.849155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125111, 0.401273, 0.907374,
		-0.258436, -0.896169, 0.360684,
		0.957893, -0.189372, 0.215823,
		34.965679, 40.585548, 41.913902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217834, 40.448433, 42.363079>,  <34.295155, 40.718109, 41.762825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217834, 40.448433, 42.363079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606449, 40.538322, 42.393063>,  <34.839619, 40.592255, 42.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606449, 40.538322, 42.393063>,  <34.217834, 40.448433, 42.363079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606449, 40.538322, 42.393063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149825, 0.337778, 0.929225,
		0.183501, -0.914005, 0.361832,
		0.971535, 0.224725, 0.074958,
		34.897911, 40.605740, 42.415550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549530, 40.167103, 43.038368>,  <34.217834, 40.448433, 42.363079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549530, 40.167103, 43.038368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782757, 40.467194, 42.913670>,  <34.922695, 40.647247, 42.838852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782757, 40.467194, 42.913670>,  <34.549530, 40.167103, 43.038368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782757, 40.467194, 42.913670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050943, 0.416733, 0.907600,
		0.810824, -0.513312, 0.281203,
		0.583069, 0.750230, -0.311747,
		34.957676, 40.692261, 42.820145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779091, 40.376476, 43.639263>,  <34.549530, 40.167103, 43.038368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779091, 40.376476, 43.639263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880455, 40.677315, 43.395908>,  <34.941273, 40.857819, 43.249897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880455, 40.677315, 43.395908>,  <34.779091, 40.376476, 43.639263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880455, 40.677315, 43.395908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095362, 0.606427, 0.789400,
		0.962648, -0.258057, 0.081952,
		0.253408, 0.752099, -0.608384,
		34.956478, 40.902943, 43.213394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276554, 40.660309, 44.023739>,  <34.779091, 40.376476, 43.639263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276554, 40.660309, 44.023739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148098, 40.942402, 43.770912>,  <35.071026, 41.111660, 43.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148098, 40.942402, 43.770912>,  <35.276554, 40.660309, 44.023739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148098, 40.942402, 43.770912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127700, 0.629080, 0.766780,
		0.938383, 0.326958, -0.111963,
		-0.321139, 0.705235, -0.632071,
		35.051758, 41.153973, 43.581291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645123, 41.202648, 44.220623>,  <35.276554, 40.660309, 44.023739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645123, 41.202648, 44.220623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324379, 41.340687, 44.025509>,  <35.131935, 41.423512, 43.908440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324379, 41.340687, 44.025509>,  <35.645123, 41.202648, 44.220623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324379, 41.340687, 44.025509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190338, 0.626301, 0.755988,
		0.566389, 0.699039, -0.436518,
		-0.801857, 0.345098, -0.487784,
		35.083820, 41.444218, 43.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711006, 41.981106, 44.147820>,  <35.645123, 41.202648, 44.220623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711006, 41.981106, 44.147820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328300, 41.864861, 44.142956>,  <35.098679, 41.795113, 44.140038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328300, 41.864861, 44.142956>,  <35.711006, 41.981106, 44.147820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328300, 41.864861, 44.142956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166579, 0.513199, 0.841949,
		-0.238444, 0.807571, -0.539421,
		-0.956763, -0.290614, -0.012155,
		35.041271, 41.777676, 44.139309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407589, 42.592121, 44.269672>,  <35.711006, 41.981106, 44.147820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407589, 42.592121, 44.269672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143360, 42.304825, 44.357101>,  <34.984821, 42.132446, 44.409557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143360, 42.304825, 44.357101>,  <35.407589, 42.592121, 44.269672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143360, 42.304825, 44.357101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442993, 0.607942, 0.658911,
		-0.606135, 0.338434, -0.719766,
		-0.660574, -0.718240, 0.218571,
		34.945187, 42.089352, 44.422672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759846, 42.917278, 44.226997>,  <35.407589, 42.592121, 44.269672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759846, 42.917278, 44.226997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728752, 42.597061, 44.464684>,  <34.710098, 42.404930, 44.607296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728752, 42.597061, 44.464684>,  <34.759846, 42.917278, 44.226997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728752, 42.597061, 44.464684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374171, 0.575876, 0.726885,
		-0.924096, -0.165838, -0.344302,
		-0.077730, -0.800540, 0.594217,
		34.705433, 42.356899, 44.642948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094246, 42.882725, 44.479473>,  <34.759846, 42.917278, 44.226997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094246, 42.882725, 44.479473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295349, 42.674080, 44.755203>,  <34.416012, 42.548893, 44.920639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295349, 42.674080, 44.755203>,  <34.094246, 42.882725, 44.479473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295349, 42.674080, 44.755203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471809, 0.502596, 0.724426,
		-0.724316, -0.689437, 0.006583,
		0.502754, -0.521608, 0.689321,
		34.446175, 42.517597, 44.961998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646603, 42.646835, 44.966389>,  <34.094246, 42.882725, 44.479473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646603, 42.646835, 44.966389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989594, 42.623447, 45.170864>,  <34.195389, 42.609413, 45.293549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989594, 42.623447, 45.170864>,  <33.646603, 42.646835, 44.966389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989594, 42.623447, 45.170864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419712, 0.495188, 0.760678,
		-0.297609, -0.866816, 0.400073,
		0.857479, -0.058469, 0.511185,
		34.246838, 42.605907, 45.324219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466877, 42.459373, 45.705219>,  <33.646603, 42.646835, 44.966389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466877, 42.459373, 45.705219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830528, 42.625889, 45.699566>,  <34.048717, 42.725796, 45.696175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830528, 42.625889, 45.699566>,  <33.466877, 42.459373, 45.705219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830528, 42.625889, 45.699566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259199, 0.591977, 0.763138,
		0.326048, -0.690125, 0.646081,
		0.909125, 0.416283, -0.014134,
		34.103264, 42.750774, 45.695324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325371, 42.849216, 46.293255>,  <33.466877, 42.459373, 45.705219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325371, 42.849216, 46.293255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687546, 42.988728, 46.196484>,  <33.904850, 43.072433, 46.138420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687546, 42.988728, 46.196484>,  <33.325371, 42.849216, 46.293255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687546, 42.988728, 46.196484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096305, 0.723875, 0.683176,
		0.413403, -0.595278, 0.689016,
		0.905441, 0.348782, -0.241924,
		33.959179, 43.093361, 46.123905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720619, 42.876011, 46.873859>,  <33.325371, 42.849216, 46.293255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720619, 42.876011, 46.873859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868958, 43.161041, 46.635628>,  <33.957962, 43.332058, 46.492687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868958, 43.161041, 46.635628>,  <33.720619, 42.876011, 46.873859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868958, 43.161041, 46.635628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264952, 0.695835, 0.667544,
		0.890099, -0.089755, 0.446843,
		0.370844, 0.712572, -0.595581,
		33.980209, 43.374813, 46.456955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045918, 43.268936, 47.265900>,  <33.720619, 42.876011, 46.873859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045918, 43.268936, 47.265900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982235, 43.513931, 46.956188>,  <33.944023, 43.660927, 46.770359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982235, 43.513931, 46.956188>,  <34.045918, 43.268936, 47.265900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982235, 43.513931, 46.956188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356118, 0.695855, 0.623672,
		0.920778, 0.375030, 0.107331,
		-0.159209, 0.612486, -0.774283,
		33.934471, 43.697678, 46.723904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471645, 43.855499, 47.416985>,  <34.045918, 43.268936, 47.265900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471645, 43.855499, 47.416985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184208, 43.955292, 47.157330>,  <34.011745, 44.015167, 47.001537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184208, 43.955292, 47.157330>,  <34.471645, 43.855499, 47.416985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184208, 43.955292, 47.157330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412989, 0.597917, 0.686975,
		0.559518, 0.761744, -0.326628,
		-0.718596, 0.249481, -0.649137,
		33.968628, 44.030136, 46.962589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461418, 44.586723, 47.426102>,  <34.471645, 43.855499, 47.416985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461418, 44.586723, 47.426102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106003, 44.484600, 47.273617>,  <33.892754, 44.423325, 47.182125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106003, 44.484600, 47.273617>,  <34.461418, 44.586723, 47.426102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106003, 44.484600, 47.273617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438192, 0.718493, 0.540145,
		0.135990, 0.646981, -0.750281,
		-0.888535, -0.255313, -0.381210,
		33.839443, 44.408005, 47.159252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144531, 45.165802, 47.189342>,  <34.461418, 44.586723, 47.426102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144531, 45.165802, 47.189342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842167, 44.909225, 47.241730>,  <33.660748, 44.755280, 47.273163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842167, 44.909225, 47.241730>,  <34.144531, 45.165802, 47.189342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842167, 44.909225, 47.241730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456765, 0.660049, 0.596406,
		-0.469004, 0.391009, -0.791927,
		-0.755911, -0.641441, 0.130966,
		33.615395, 44.716793, 47.281021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595402, 45.751461, 47.188919>,  <34.144531, 45.165802, 47.189342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595402, 45.751461, 47.188919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428692, 45.416130, 47.329494>,  <33.328667, 45.214931, 47.413837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428692, 45.416130, 47.329494>,  <33.595402, 45.751461, 47.188919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428692, 45.416130, 47.329494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246734, 0.476428, 0.843883,
		-0.874884, 0.264998, -0.405407,
		-0.416775, -0.838327, 0.351435,
		33.303658, 45.164631, 47.434925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963192, 45.954575, 47.419968>,  <33.595402, 45.751461, 47.188919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963192, 45.954575, 47.419968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083981, 45.622662, 47.607700>,  <33.156452, 45.423512, 47.720341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083981, 45.622662, 47.607700>,  <32.963192, 45.954575, 47.419968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083981, 45.622662, 47.607700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168203, 0.438214, 0.882993,
		-0.938361, -0.345580, -0.007245,
		0.301970, -0.829784, 0.469331,
		33.174572, 45.373726, 47.748501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520409, 45.835388, 47.979843>,  <32.963192, 45.954575, 47.419968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520409, 45.835388, 47.979843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837723, 45.623596, 48.100075>,  <33.028111, 45.496521, 48.172215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837723, 45.623596, 48.100075>,  <32.520409, 45.835388, 47.979843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837723, 45.623596, 48.100075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117170, 0.351690, 0.928754,
		-0.597469, -0.771986, 0.216951,
		0.793285, -0.529482, 0.300578,
		33.075706, 45.464752, 48.190247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961287, 45.484619, 48.169628>,  <32.520409, 45.835388, 47.979843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961287, 45.484619, 48.169628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950632, 45.833515, 48.364967>,  <31.944241, 46.042854, 48.482170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950632, 45.833515, 48.364967>,  <31.961287, 45.484619, 48.169628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950632, 45.833515, 48.364967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097688, -0.488450, 0.867106,
		0.994861, -0.024611, 0.098217,
		-0.026634, 0.872245, 0.488344,
		31.942642, 46.095188, 48.511471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414295, 45.452106, 48.716656>,  <31.961287, 45.484619, 48.169628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414295, 45.452106, 48.716656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149139, 45.723274, 48.843781>,  <31.990047, 45.885975, 48.920055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149139, 45.723274, 48.843781>,  <32.414295, 45.452106, 48.716656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149139, 45.723274, 48.843781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114222, -0.327939, 0.937768,
		0.739956, 0.657935, 0.139953,
		-0.662887, 0.677921, 0.317811,
		31.950274, 45.926651, 48.939125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790607, 45.926949, 49.231998>,  <32.414295, 45.452106, 48.716656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790607, 45.926949, 49.231998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403061, 45.848248, 49.292114>,  <32.170532, 45.801025, 49.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403061, 45.848248, 49.292114>,  <32.790607, 45.926949, 49.231998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403061, 45.848248, 49.292114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225754, -0.452841, 0.862537,
		-0.101651, 0.869611, 0.483160,
		-0.968866, -0.196754, 0.150287,
		32.112400, 45.789223, 49.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548153, 46.143742, 49.908157>,  <32.790607, 45.926949, 49.231998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548153, 46.143742, 49.908157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314167, 45.850010, 49.770420>,  <32.173775, 45.673771, 49.687778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314167, 45.850010, 49.770420>,  <32.548153, 46.143742, 49.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314167, 45.850010, 49.770420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001662, -0.425650, 0.904887,
		-0.811055, 0.528757, 0.250212,
		-0.584967, -0.734329, -0.344347,
		32.138676, 45.629711, 49.667114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540070, 45.545101, 50.151512>,  <32.548153, 46.143742, 49.908157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540070, 45.545101, 50.151512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651402, 45.304764, 50.451248>,  <32.718201, 45.160561, 50.631092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651402, 45.304764, 50.451248>,  <32.540070, 45.545101, 50.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651402, 45.304764, 50.451248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214513, -0.799353, -0.561266,
		0.936224, -0.004526, -0.351375,
		0.278332, -0.600845, 0.749344,
		32.734901, 45.124512, 50.676052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989052, 45.080280, 49.851471>,  <32.540070, 45.545101, 50.151512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989052, 45.080280, 49.851471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865314, 44.914856, 50.193996>,  <32.791073, 44.815601, 50.399513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865314, 44.914856, 50.193996>,  <32.989052, 45.080280, 49.851471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865314, 44.914856, 50.193996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195432, -0.853614, -0.482855,
		0.930651, -0.316721, 0.183240,
		-0.309347, -0.413558, 0.856314,
		32.772511, 44.790787, 50.450890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269974, 44.417534, 49.899036>,  <32.989052, 45.080280, 49.851471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269974, 44.417534, 49.899036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946167, 44.420799, 50.133854>,  <32.751884, 44.422760, 50.274746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946167, 44.420799, 50.133854>,  <33.269974, 44.417534, 49.899036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946167, 44.420799, 50.133854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292885, -0.872210, -0.391749,
		0.508829, -0.489063, 0.708456,
		-0.809513, 0.008163, 0.587045,
		32.703312, 44.423248, 50.309967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197514, 43.855492, 50.433876>,  <33.269974, 44.417534, 49.899036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197514, 43.855492, 50.433876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828827, 43.972153, 50.331593>,  <32.607616, 44.042149, 50.270222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828827, 43.972153, 50.331593>,  <33.197514, 43.855492, 50.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828827, 43.972153, 50.331593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197990, -0.920667, -0.336410,
		-0.333533, -0.259446, 0.906335,
		-0.921713, 0.291649, -0.255705,
		32.552315, 44.059647, 50.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685757, 43.274616, 50.452873>,  <33.197514, 43.855492, 50.433876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685757, 43.274616, 50.452873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545143, 43.552547, 50.201912>,  <32.460773, 43.719307, 50.051334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545143, 43.552547, 50.201912>,  <32.685757, 43.274616, 50.452873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545143, 43.552547, 50.201912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338754, -0.719174, -0.606658,
		-0.872736, -0.000727, 0.488191,
		-0.351535, 0.694829, -0.627403,
		32.439682, 43.760998, 50.013691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142807, 42.878006, 49.955139>,  <32.685757, 43.274616, 50.452873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142807, 42.878006, 49.955139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266621, 43.171494, 49.713200>,  <32.340908, 43.347588, 49.568035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266621, 43.171494, 49.713200>,  <32.142807, 42.878006, 49.955139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266621, 43.171494, 49.713200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004009, -0.635077, -0.772439,
		-0.950881, 0.241519, -0.193635,
		0.309532, 0.733721, -0.604850,
		32.359482, 43.391609, 49.531746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709328, 42.976723, 49.460388>,  <32.142807, 42.878006, 49.955139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709328, 42.976723, 49.460388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071575, 43.079842, 49.325687>,  <32.288921, 43.141712, 49.244869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071575, 43.079842, 49.325687>,  <31.709328, 42.976723, 49.460388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071575, 43.079842, 49.325687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097579, -0.646072, -0.757014,
		-0.412719, 0.718424, -0.559938,
		0.905616, 0.257796, -0.336749,
		32.343262, 43.157181, 49.224663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682840, 43.216213, 48.773731>,  <31.709328, 42.976723, 49.460388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682840, 43.216213, 48.773731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054657, 43.079964, 48.830196>,  <32.277748, 42.998215, 48.864075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054657, 43.079964, 48.830196>,  <31.682840, 43.216213, 48.773731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054657, 43.079964, 48.830196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056302, -0.509484, -0.858636,
		0.364392, 0.790191, -0.492764,
		0.929542, -0.340624, 0.141162,
		32.333519, 42.977776, 48.872543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971096, 43.176319, 48.063103>,  <31.682840, 43.216213, 48.773731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971096, 43.176319, 48.063103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238861, 42.978313, 48.284679>,  <32.399521, 42.859509, 48.417625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238861, 42.978313, 48.284679>,  <31.971096, 43.176319, 48.063103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238861, 42.978313, 48.284679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228700, -0.572122, -0.787638,
		0.706812, 0.653940, -0.269776,
		0.669412, -0.495014, 0.553939,
		32.439686, 42.829807, 48.450859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658504, 43.179455, 47.758408>,  <31.971096, 43.176319, 48.063103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658504, 43.179455, 47.758408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611454, 42.857254, 47.990726>,  <32.583225, 42.663933, 48.130119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611454, 42.857254, 47.990726>,  <32.658504, 43.179455, 47.758408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611454, 42.857254, 47.990726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231809, -0.590971, -0.772669,
		0.965624, 0.043751, 0.256235,
		-0.117623, -0.805505, 0.580798,
		32.576168, 42.615601, 48.164967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155785, 42.678123, 47.560680>,  <32.658504, 43.179455, 47.758408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155785, 42.678123, 47.560680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933640, 42.427418, 47.779308>,  <32.800350, 42.276993, 47.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933640, 42.427418, 47.779308>,  <33.155785, 42.678123, 47.560680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933640, 42.427418, 47.779308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110556, -0.595764, -0.795514,
		0.824225, -0.502227, 0.261573,
		-0.555365, -0.626764, 0.546568,
		32.767029, 42.239388, 47.943279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466244, 42.039307, 47.459599>,  <33.155785, 42.678123, 47.560680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466244, 42.039307, 47.459599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103401, 41.946003, 47.599739>,  <32.885696, 41.890022, 47.683823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103401, 41.946003, 47.599739>,  <33.466244, 42.039307, 47.459599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103401, 41.946003, 47.599739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033999, -0.789058, -0.613377,
		0.419522, -0.568311, 0.707831,
		-0.907109, -0.233260, 0.350349,
		32.831268, 41.876026, 47.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506397, 41.343540, 47.664215>,  <33.466244, 42.039307, 47.459599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506397, 41.343540, 47.664215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134148, 41.451351, 47.565193>,  <32.910797, 41.516037, 47.505779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134148, 41.451351, 47.565193>,  <33.506397, 41.343540, 47.664215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134148, 41.451351, 47.565193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072561, -0.798916, -0.597050,
		-0.358702, -0.537668, 0.763050,
		-0.930628, 0.269531, -0.247559,
		32.854958, 41.532211, 47.490925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225758, 40.695679, 47.633789>,  <33.506397, 41.343540, 47.664215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225758, 40.695679, 47.633789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921944, 40.894279, 47.465698>,  <32.739655, 41.013439, 47.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921944, 40.894279, 47.465698>,  <33.225758, 40.695679, 47.633789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921944, 40.894279, 47.465698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156357, -0.766455, -0.622977,
		-0.631393, -0.407468, 0.659782,
		-0.759536, 0.496505, -0.420224,
		32.694084, 41.043232, 47.339630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717026, 40.162239, 47.636509>,  <33.225758, 40.695679, 47.633789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717026, 40.162239, 47.636509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594055, 40.438335, 47.374496>,  <32.520271, 40.603992, 47.217289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594055, 40.438335, 47.374496>,  <32.717026, 40.162239, 47.636509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594055, 40.438335, 47.374496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372278, -0.720739, -0.584760,
		-0.875727, 0.064081, 0.478534,
		-0.307426, 0.690238, -0.655027,
		32.501827, 40.645409, 47.177990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153969, 40.008411, 47.442142>,  <32.717026, 40.162239, 47.636509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153969, 40.008411, 47.442142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269924, 40.239399, 47.136856>,  <32.339497, 40.377991, 46.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269924, 40.239399, 47.136856>,  <32.153969, 40.008411, 47.442142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269924, 40.239399, 47.136856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176084, -0.751664, -0.635607,
		-0.940722, 0.318647, -0.116219,
		0.289891, 0.577465, -0.763215,
		32.356892, 40.412640, 46.907890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662085, 39.989925, 46.977741>,  <32.153969, 40.008411, 47.442142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662085, 39.989925, 46.977741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976118, 40.107971, 46.759914>,  <32.164539, 40.178799, 46.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976118, 40.107971, 46.759914>,  <31.662085, 39.989925, 46.977741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976118, 40.107971, 46.759914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193264, -0.718584, -0.668046,
		-0.588468, 0.629716, -0.507112,
		0.785082, 0.295118, -0.544565,
		32.211643, 40.196507, 46.596546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491997, 39.841431, 46.350258>,  <31.662085, 39.989925, 46.977741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491997, 39.841431, 46.350258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881618, 39.889576, 46.273602>,  <32.115391, 39.918465, 46.227608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881618, 39.889576, 46.273602>,  <31.491997, 39.841431, 46.350258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881618, 39.889576, 46.273602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081420, -0.603739, -0.793014,
		-0.211155, 0.788043, -0.578275,
		0.974056, 0.120365, -0.191645,
		32.173836, 39.925686, 46.216106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546827, 40.092003, 45.576027>,  <31.491997, 39.841431, 46.350258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546827, 40.092003, 45.576027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891129, 39.942425, 45.714169>,  <32.097710, 39.852680, 45.797054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891129, 39.942425, 45.714169>,  <31.546827, 40.092003, 45.576027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891129, 39.942425, 45.714169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111635, -0.523270, -0.844823,
		0.496627, 0.765739, -0.408663,
		0.860755, -0.373941, 0.345353,
		32.149357, 39.830242, 45.817776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101845, 40.050396, 44.973419>,  <31.546827, 40.092003, 45.576027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101845, 40.050396, 44.973419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255665, 39.797718, 45.242664>,  <32.347958, 39.646111, 45.404213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255665, 39.797718, 45.242664>,  <32.101845, 40.050396, 44.973419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255665, 39.797718, 45.242664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122742, -0.687722, -0.715523,
		0.914907, 0.357774, -0.186928,
		0.384550, -0.631693, 0.673116,
		32.371029, 39.608212, 45.444599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736549, 39.729229, 44.601940>,  <32.101845, 40.050396, 44.973419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736549, 39.729229, 44.601940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600803, 39.508911, 44.906956>,  <32.519356, 39.376720, 45.089966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600803, 39.508911, 44.906956>,  <32.736549, 39.729229, 44.601940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600803, 39.508911, 44.906956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132807, -0.774468, -0.618515,
		0.931231, -0.311174, 0.189681,
		-0.339367, -0.550790, 0.762535,
		32.498993, 39.343674, 45.135715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090950, 39.112896, 44.417484>,  <32.736549, 39.729229, 44.601940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090950, 39.112896, 44.417484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780540, 39.030281, 44.655857>,  <32.594296, 38.980713, 44.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780540, 39.030281, 44.655857>,  <33.090950, 39.112896, 44.417484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780540, 39.030281, 44.655857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170901, -0.840655, -0.513898,
		0.607113, -0.500641, 0.617068,
		-0.776020, -0.206536, 0.595933,
		32.547733, 38.968319, 44.834637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166439, 38.424221, 44.509541>,  <33.090950, 39.112896, 44.417484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166439, 38.424221, 44.509541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787148, 38.513638, 44.599770>,  <32.559570, 38.567287, 44.653908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787148, 38.513638, 44.599770>,  <33.166439, 38.424221, 44.509541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787148, 38.513638, 44.599770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304417, -0.842155, -0.445089,
		0.090468, -0.490716, 0.866610,
		-0.948233, 0.223545, 0.225571,
		32.502678, 38.580700, 44.667442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826160, 37.825054, 44.673050>,  <33.166439, 38.424221, 44.509541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826160, 37.825054, 44.673050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529182, 38.083233, 44.601299>,  <32.350998, 38.238140, 44.558250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529182, 38.083233, 44.601299>,  <32.826160, 37.825054, 44.673050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529182, 38.083233, 44.601299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494890, -0.708911, -0.502523,
		-0.451515, -0.284322, 0.845751,
		-0.742441, 0.645451, -0.179376,
		32.306450, 38.276867, 44.547485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209366, 37.440701, 44.773743>,  <32.826160, 37.825054, 44.673050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209366, 37.440701, 44.773743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129425, 37.771183, 44.563053>,  <32.081459, 37.969475, 44.436642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129425, 37.771183, 44.563053>,  <32.209366, 37.440701, 44.773743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129425, 37.771183, 44.563053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561439, -0.537129, -0.629506,
		-0.803022, 0.169913, 0.571214,
		-0.199855, 0.826209, -0.526722,
		32.069469, 38.019047, 44.405037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507847, 37.384590, 44.560158>,  <32.209366, 37.440701, 44.773743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507847, 37.384590, 44.560158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666027, 37.643730, 44.299725>,  <31.760935, 37.799213, 44.143463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666027, 37.643730, 44.299725>,  <31.507847, 37.384590, 44.560158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666027, 37.643730, 44.299725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517999, -0.428071, -0.740562,
		-0.758482, 0.630117, 0.166304,
		0.395451, 0.647848, -0.651084,
		31.784662, 37.838085, 44.104401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929924, 37.484276, 44.060013>,  <31.507847, 37.384590, 44.560158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929924, 37.484276, 44.060013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290100, 37.588226, 43.920486>,  <31.506207, 37.650597, 43.836773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290100, 37.588226, 43.920486>,  <30.929924, 37.484276, 44.060013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290100, 37.588226, 43.920486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292327, -0.232277, -0.927681,
		-0.322102, 0.937290, -0.133184,
		0.900442, 0.259875, -0.348812,
		31.560232, 37.666187, 43.815842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711758, 37.800797, 43.499535>,  <30.929924, 37.484276, 44.060013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711758, 37.800797, 43.499535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087442, 37.679390, 43.435341>,  <31.312853, 37.606544, 43.396824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087442, 37.679390, 43.435341>,  <30.711758, 37.800797, 43.499535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087442, 37.679390, 43.435341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243819, -0.260538, -0.934169,
		0.241724, 0.916514, -0.318704,
		0.939213, -0.303517, -0.160486,
		31.369205, 37.588333, 43.387196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789743, 37.968136, 42.854153>,  <30.711758, 37.800797, 43.499535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789743, 37.968136, 42.854153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103462, 37.722332, 42.888233>,  <31.291693, 37.574852, 42.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103462, 37.722332, 42.888233>,  <30.789743, 37.968136, 42.854153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103462, 37.722332, 42.888233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061609, -0.213813, -0.974930,
		0.617318, 0.759386, -0.205552,
		0.784298, -0.614506, 0.085205,
		31.338751, 37.537979, 42.913795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097139, 38.003567, 42.226749>,  <30.789743, 37.968136, 42.854153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097139, 38.003567, 42.226749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217394, 37.664921, 42.402412>,  <31.289547, 37.461735, 42.507809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217394, 37.664921, 42.402412>,  <31.097139, 38.003567, 42.226749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217394, 37.664921, 42.402412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014487, -0.464459, -0.885476,
		0.953629, 0.259845, -0.151898,
		0.300637, -0.846616, 0.439157,
		31.307585, 37.410934, 42.534161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650276, 37.850849, 41.881149>,  <31.097139, 38.003567, 42.226749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650276, 37.850849, 41.881149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508204, 37.509304, 42.033344>,  <31.422960, 37.304379, 42.124660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508204, 37.509304, 42.033344>,  <31.650276, 37.850849, 41.881149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508204, 37.509304, 42.033344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038784, -0.393216, -0.918628,
		0.933993, -0.341036, 0.106547,
		-0.355181, -0.853859, 0.380488,
		31.401649, 37.253147, 42.147491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127785, 37.394314, 41.797333>,  <31.650276, 37.850849, 41.881149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127785, 37.394314, 41.797333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785784, 37.192009, 41.843243>,  <31.580584, 37.070625, 41.870789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785784, 37.192009, 41.843243>,  <32.127785, 37.394314, 41.797333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785784, 37.192009, 41.843243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071571, -0.334252, -0.939762,
		0.513662, -0.795285, 0.321984,
		-0.855002, -0.505765, 0.114773,
		31.529284, 37.040279, 41.877674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299232, 36.659046, 41.633270>,  <32.127785, 37.394314, 41.797333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299232, 36.659046, 41.633270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903599, 36.696861, 41.588047>,  <31.666220, 36.719551, 41.560913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903599, 36.696861, 41.588047>,  <32.299232, 36.659046, 41.633270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903599, 36.696861, 41.588047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098066, -0.150449, -0.983742,
		-0.110006, -0.984088, 0.139535,
		-0.989081, 0.094533, -0.113056,
		31.606874, 36.725224, 41.554131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104561, 36.035591, 41.202496>,  <32.299232, 36.659046, 41.633270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104561, 36.035591, 41.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807619, 36.302612, 41.179592>,  <31.629454, 36.462826, 41.165852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807619, 36.302612, 41.179592>,  <32.104561, 36.035591, 41.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807619, 36.302612, 41.179592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151686, -0.250692, -0.956109,
		-0.652611, -0.701087, 0.287361,
		-0.742355, 0.667556, -0.057259,
		31.584913, 36.502880, 41.162415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532730, 35.695396, 40.846111>,  <32.104561, 36.035591, 41.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532730, 35.695396, 40.846111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456209, 36.084942, 40.797142>,  <31.410297, 36.318668, 40.767761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456209, 36.084942, 40.797142>,  <31.532730, 35.695396, 40.846111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456209, 36.084942, 40.797142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204959, -0.161614, -0.965335,
		-0.959894, -0.159577, 0.230520,
		-0.191300, 0.973866, -0.122425,
		31.398819, 36.377102, 40.760414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979193, 35.659237, 40.471592>,  <31.532730, 35.695396, 40.846111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979193, 35.659237, 40.471592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109434, 36.032837, 40.412769>,  <31.187580, 36.256996, 40.377476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109434, 36.032837, 40.412769>,  <30.979193, 35.659237, 40.471592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109434, 36.032837, 40.412769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024019, -0.163652, -0.986225,
		-0.945200, 0.317589, -0.075719,
		0.325606, 0.934000, -0.147056,
		31.207115, 36.313038, 40.368652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622366, 35.952717, 39.830910>,  <30.979193, 35.659237, 40.471592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622366, 35.952717, 39.830910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930418, 36.204582, 39.871742>,  <31.115250, 36.355701, 39.896240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930418, 36.204582, 39.871742>,  <30.622366, 35.952717, 39.830910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930418, 36.204582, 39.871742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160872, -0.036867, -0.986287,
		-0.617266, 0.775992, -0.129688,
		0.770132, 0.629664, 0.102078,
		31.161457, 36.393482, 39.902367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492359, 36.381371, 39.352859>,  <30.622366, 35.952717, 39.830910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492359, 36.381371, 39.352859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880322, 36.425892, 39.439480>,  <31.113098, 36.452606, 39.491451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880322, 36.425892, 39.439480>,  <30.492359, 36.381371, 39.352859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880322, 36.425892, 39.439480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225079, -0.070697, -0.971772,
		-0.092851, 0.991269, -0.093621,
		0.969906, 0.111302, 0.216550,
		31.171293, 36.459282, 39.504444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813667, 36.706726, 38.811863>,  <30.492359, 36.381371, 39.352859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813667, 36.706726, 38.811863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134024, 36.582474, 39.016640>,  <31.326237, 36.507923, 39.139507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134024, 36.582474, 39.016640>,  <30.813667, 36.706726, 38.811863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134024, 36.582474, 39.016640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425242, -0.306889, -0.851463,
		0.421600, 0.899627, -0.113691,
		0.800889, -0.310630, 0.511943,
		31.374290, 36.489285, 39.170223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312771, 36.984158, 38.455215>,  <30.813667, 36.706726, 38.811863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312771, 36.984158, 38.455215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435253, 36.649223, 38.636372>,  <31.508741, 36.448261, 38.745064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435253, 36.649223, 38.636372>,  <31.312771, 36.984158, 38.455215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435253, 36.649223, 38.636372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290022, -0.371074, -0.882152,
		0.906712, 0.401467, 0.129221,
		0.306205, -0.837334, 0.452891,
		31.527115, 36.398022, 38.772240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927038, 36.867798, 38.124165>,  <31.312771, 36.984158, 38.455215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927038, 36.867798, 38.124165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815416, 36.526855, 38.301079>,  <31.748444, 36.322289, 38.407227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815416, 36.526855, 38.301079>,  <31.927038, 36.867798, 38.124165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815416, 36.526855, 38.301079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422733, -0.522589, -0.740404,
		0.862222, -0.019644, 0.506150,
		-0.279053, -0.852358, 0.442283,
		31.731701, 36.271149, 38.433765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539261, 36.554344, 38.150398>,  <31.927038, 36.867798, 38.124165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539261, 36.554344, 38.150398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296299, 36.239868, 38.195946>,  <32.150520, 36.051182, 38.223274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296299, 36.239868, 38.195946>,  <32.539261, 36.554344, 38.150398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296299, 36.239868, 38.195946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485979, -0.481136, -0.729611,
		0.628396, -0.387835, 0.674316,
		-0.607406, -0.786188, 0.113864,
		32.114079, 36.004013, 38.230106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977608, 36.042236, 38.025764>,  <32.539261, 36.554344, 38.150398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977608, 36.042236, 38.025764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616863, 35.869503, 38.020699>,  <32.400417, 35.765862, 38.017658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616863, 35.869503, 38.020699>,  <32.977608, 36.042236, 38.025764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616863, 35.869503, 38.020699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301432, -0.607976, -0.734509,
		0.309487, -0.666245, 0.678481,
		-0.901863, -0.431836, -0.012667,
		32.346306, 35.739952, 38.016899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028027, 35.386368, 38.149933>,  <32.977608, 36.042236, 38.025764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028027, 35.386368, 38.149933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684650, 35.406940, 37.945801>,  <32.478626, 35.419285, 37.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684650, 35.406940, 37.945801>,  <33.028027, 35.386368, 38.149933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684650, 35.406940, 37.945801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277262, -0.790528, -0.546068,
		-0.431515, -0.610261, 0.664361,
		-0.858441, 0.051434, -0.510327,
		32.427116, 35.422371, 37.792702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614254, 34.773590, 38.137531>,  <33.028027, 35.386368, 38.149933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614254, 34.773590, 38.137531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513958, 34.976902, 37.807980>,  <32.453781, 35.098888, 37.610249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513958, 34.976902, 37.807980>,  <32.614254, 34.773590, 38.137531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513958, 34.976902, 37.807980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170059, -0.814708, -0.554374,
		-0.952999, -0.279115, 0.117847,
		-0.250745, 0.508276, -0.823882,
		32.438736, 35.129383, 37.560814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600548, 33.984447, 38.100407>,  <32.614254, 34.773590, 38.137531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600548, 33.984447, 38.100407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882866, 33.702278, 38.074375>,  <33.052258, 33.532978, 38.058758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882866, 33.702278, 38.074375>,  <32.600548, 33.984447, 38.100407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882866, 33.702278, 38.074375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447268, 0.372486, 0.813145,
		-0.549370, -0.603020, 0.578411,
		0.705793, -0.705423, -0.065078,
		33.094604, 33.490650, 38.054852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737614, 33.733013, 38.843498>,  <32.600548, 33.984447, 38.100407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737614, 33.733013, 38.843498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068764, 33.627037, 38.645741>,  <33.267452, 33.563450, 38.527084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068764, 33.627037, 38.645741>,  <32.737614, 33.733013, 38.843498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068764, 33.627037, 38.645741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542805, 0.156264, 0.825194,
		-0.141372, -0.951519, 0.273178,
		0.827875, -0.264941, -0.494398,
		33.317127, 33.547554, 38.497421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000942, 33.202686, 39.229809>,  <32.737614, 33.733013, 38.843498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000942, 33.202686, 39.229809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288918, 33.367619, 39.006500>,  <33.461704, 33.466579, 38.872517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288918, 33.367619, 39.006500>,  <33.000942, 33.202686, 39.229809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288918, 33.367619, 39.006500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581317, 0.081178, 0.809617,
		0.379149, -0.907411, -0.181251,
		0.719942, 0.412330, -0.558272,
		33.504902, 33.491318, 38.839020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645748, 32.926418, 39.583096>,  <33.000942, 33.202686, 39.229809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645748, 32.926418, 39.583096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765358, 33.232250, 39.354710>,  <33.837124, 33.415749, 39.217678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765358, 33.232250, 39.354710>,  <33.645748, 32.926418, 39.583096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765358, 33.232250, 39.354710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550418, 0.350569, 0.757721,
		0.779502, -0.540845, -0.316012,
		0.299026, 0.764584, -0.570960,
		33.855064, 33.461624, 39.183422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298653, 33.002613, 39.855217>,  <33.645748, 32.926418, 39.583096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298653, 33.002613, 39.855217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221279, 33.338554, 39.652348>,  <34.174854, 33.540119, 39.530624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221279, 33.338554, 39.652348>,  <34.298653, 33.002613, 39.855217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221279, 33.338554, 39.652348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720749, 0.472370, 0.507334,
		0.665660, -0.267408, -0.696699,
		-0.193434, 0.839857, -0.507172,
		34.163250, 33.590511, 39.500195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872490, 33.344009, 39.767853>,  <34.298653, 33.002613, 39.855217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872490, 33.344009, 39.767853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604916, 33.640564, 39.746384>,  <34.444370, 33.818497, 39.733501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604916, 33.640564, 39.746384>,  <34.872490, 33.344009, 39.767853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604916, 33.640564, 39.746384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511961, 0.511873, 0.689841,
		0.538912, 0.433976, -0.721968,
		-0.668931, 0.741384, -0.053676,
		34.404236, 33.862980, 39.730282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240990, 33.884464, 39.788868>,  <34.872490, 33.344009, 39.767853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240990, 33.884464, 39.788868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880348, 34.024109, 39.891026>,  <34.663963, 34.107895, 39.952320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880348, 34.024109, 39.891026>,  <35.240990, 33.884464, 39.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880348, 34.024109, 39.891026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413912, 0.524836, 0.743791,
		0.125628, 0.776316, -0.617698,
		-0.901607, 0.349114, 0.255392,
		34.609867, 34.128841, 39.967644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330582, 34.625710, 39.870625>,  <35.240990, 33.884464, 39.788868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330582, 34.625710, 39.870625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001141, 34.527340, 40.075058>,  <34.803478, 34.468319, 40.197720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001141, 34.527340, 40.075058>,  <35.330582, 34.625710, 39.870625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001141, 34.527340, 40.075058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334335, 0.517398, 0.787731,
		-0.458154, 0.819647, -0.343908,
		-0.823599, -0.245922, 0.511085,
		34.754063, 34.453564, 40.228382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027756, 35.267956, 40.083645>,  <35.330582, 34.625710, 39.870625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027756, 35.267956, 40.083645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861088, 34.995926, 40.324940>,  <34.761086, 34.832710, 40.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861088, 34.995926, 40.324940>,  <35.027756, 35.267956, 40.083645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861088, 34.995926, 40.324940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196767, 0.580378, 0.790218,
		-0.887508, 0.447955, -0.108010,
		-0.416669, -0.680071, 0.603233,
		34.736088, 34.791904, 40.505909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588348, 35.641975, 40.564758>,  <35.027756, 35.267956, 40.083645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588348, 35.641975, 40.564758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653782, 35.287670, 40.738499>,  <34.693043, 35.075085, 40.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653782, 35.287670, 40.738499>,  <34.588348, 35.641975, 40.564758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653782, 35.287670, 40.738499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055305, 0.431354, 0.900486,
		-0.984978, -0.171324, 0.021574,
		0.163581, -0.885766, 0.434349,
		34.702858, 35.021938, 40.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127384, 35.700172, 41.051105>,  <34.588348, 35.641975, 40.564758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127384, 35.700172, 41.051105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382977, 35.406105, 41.141647>,  <34.536331, 35.229664, 41.195972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382977, 35.406105, 41.141647>,  <34.127384, 35.700172, 41.051105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382977, 35.406105, 41.141647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015042, 0.282263, 0.959219,
		-0.769078, -0.616324, 0.169302,
		0.638977, -0.735168, 0.226353,
		34.574669, 35.185555, 41.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833729, 35.480328, 41.675510>,  <34.127384, 35.700172, 41.051105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833729, 35.480328, 41.675510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208225, 35.340317, 41.663353>,  <34.432922, 35.256310, 41.656059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208225, 35.340317, 41.663353>,  <33.833729, 35.480328, 41.675510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208225, 35.340317, 41.663353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118922, 0.234320, 0.964858,
		-0.330608, -0.906958, 0.261007,
		0.936246, -0.350030, -0.030390,
		34.489098, 35.235310, 41.654236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909035, 35.134232, 42.304638>,  <33.833729, 35.480328, 41.675510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909035, 35.134232, 42.304638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283390, 35.213779, 42.188320>,  <34.508003, 35.261509, 42.118530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283390, 35.213779, 42.188320>,  <33.909035, 35.134232, 42.304638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283390, 35.213779, 42.188320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267419, 0.136330, 0.953887,
		0.229346, -0.970497, 0.074408,
		0.935888, 0.198873, -0.290796,
		34.564156, 35.273441, 42.101082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340050, 34.739544, 42.748863>,  <33.909035, 35.134232, 42.304638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340050, 34.739544, 42.748863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546436, 35.047047, 42.597710>,  <34.670269, 35.231548, 42.507019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546436, 35.047047, 42.597710>,  <34.340050, 34.739544, 42.748863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546436, 35.047047, 42.597710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102232, 0.382720, 0.918191,
		0.850484, -0.512391, 0.118881,
		0.515971, 0.768753, -0.377880,
		34.701229, 35.277672, 42.484344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784927, 34.794659, 43.222458>,  <34.340050, 34.739544, 42.748863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784927, 34.794659, 43.222458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804417, 35.151848, 43.043472>,  <34.816109, 35.366161, 42.936081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804417, 35.151848, 43.043472>,  <34.784927, 34.794659, 43.222458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804417, 35.151848, 43.043472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041742, 0.445784, 0.894167,
		0.997940, -0.062241, -0.015556,
		0.048720, 0.892974, -0.447464,
		34.819031, 35.419739, 42.909233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372387, 35.067711, 43.511906>,  <34.784927, 34.794659, 43.222458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372387, 35.067711, 43.511906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175373, 35.392353, 43.386242>,  <35.057163, 35.587139, 43.310844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175373, 35.392353, 43.386242>,  <35.372387, 35.067711, 43.511906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175373, 35.392353, 43.386242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030433, 0.376828, 0.925783,
		0.869759, 0.446422, -0.210302,
		-0.492538, 0.811608, -0.314164,
		35.027611, 35.635834, 43.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816044, 35.665253, 43.726543>,  <35.372387, 35.067711, 43.511906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816044, 35.665253, 43.726543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452892, 35.815956, 43.652988>,  <35.235001, 35.906380, 43.608856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452892, 35.815956, 43.652988>,  <35.816044, 35.665253, 43.726543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452892, 35.815956, 43.652988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065781, 0.561202, 0.825061,
		0.414048, 0.736956, -0.534285,
		-0.907875, 0.376761, -0.183887,
		35.180531, 35.928986, 43.597824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838196, 36.395027, 43.987526>,  <35.816044, 35.665253, 43.726543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838196, 36.395027, 43.987526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449028, 36.310635, 43.949745>,  <35.215527, 36.259998, 43.927078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449028, 36.310635, 43.949745>,  <35.838196, 36.395027, 43.987526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449028, 36.310635, 43.949745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212019, 0.651669, 0.728269,
		-0.092106, 0.728569, -0.678752,
		-0.972916, -0.210986, -0.094448,
		35.157154, 36.247337, 43.921410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586529, 36.980061, 44.019775>,  <35.838196, 36.395027, 43.987526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586529, 36.980061, 44.019775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283623, 36.738663, 44.119644>,  <35.101879, 36.593822, 44.179565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283623, 36.738663, 44.119644>,  <35.586529, 36.980061, 44.019775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283623, 36.738663, 44.119644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257831, 0.627481, 0.734705,
		-0.600058, 0.491995, -0.630771,
		-0.757267, -0.603497, 0.249674,
		35.056442, 36.557613, 44.194546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866619, 37.425964, 44.003323>,  <35.586529, 36.980061, 44.019775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866619, 37.425964, 44.003323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882065, 37.137550, 44.280052>,  <34.891331, 36.964500, 44.446091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882065, 37.137550, 44.280052>,  <34.866619, 37.425964, 44.003323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882065, 37.137550, 44.280052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237582, 0.665861, 0.707237,
		-0.970600, -0.191672, -0.145595,
		0.038611, -0.721035, 0.691823,
		34.893650, 36.921242, 44.487598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307014, 37.619732, 44.398182>,  <34.866619, 37.425964, 44.003323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307014, 37.619732, 44.398182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491547, 37.347584, 44.625965>,  <34.602264, 37.184296, 44.762634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491547, 37.347584, 44.625965>,  <34.307014, 37.619732, 44.398182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491547, 37.347584, 44.625965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060948, 0.616016, 0.785372,
		-0.885133, -0.397022, 0.242719,
		0.461329, -0.680366, 0.569454,
		34.629944, 37.143475, 44.796803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823448, 37.262928, 44.849518>,  <34.307014, 37.619732, 44.398182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823448, 37.262928, 44.849518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199829, 37.294548, 44.981190>,  <34.425659, 37.313522, 45.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199829, 37.294548, 44.981190>,  <33.823448, 37.262928, 44.849518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199829, 37.294548, 44.981190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290575, 0.687508, 0.665507,
		-0.173702, -0.721861, 0.669884,
		0.940954, 0.079052, 0.329176,
		34.482117, 37.318264, 45.079941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782528, 37.230160, 45.557232>,  <33.823448, 37.262928, 44.849518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782528, 37.230160, 45.557232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125015, 37.413208, 45.461338>,  <34.330509, 37.523037, 45.403801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125015, 37.413208, 45.461338>,  <33.782528, 37.230160, 45.557232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125015, 37.413208, 45.461338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092049, 0.591763, 0.800839,
		0.508339, -0.663630, 0.548804,
		0.856223, 0.457615, -0.239730,
		34.381882, 37.550491, 45.389420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071892, 37.291031, 46.253918>,  <33.782528, 37.230160, 45.557232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071892, 37.291031, 46.253918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255783, 37.546265, 46.006859>,  <34.366119, 37.699406, 45.858624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255783, 37.546265, 46.006859>,  <34.071892, 37.291031, 46.253918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255783, 37.546265, 46.006859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124369, 0.642389, 0.756220,
		0.879307, -0.424474, 0.215967,
		0.459730, 0.638089, -0.617649,
		34.393703, 37.737690, 45.821564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752956, 37.497238, 46.605881>,  <34.071892, 37.291031, 46.253918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752956, 37.497238, 46.605881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671391, 37.778461, 46.333370>,  <34.622452, 37.947193, 46.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671391, 37.778461, 46.333370>,  <34.752956, 37.497238, 46.605881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671391, 37.778461, 46.333370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009097, 0.694504, 0.719431,
		0.978946, 0.152902, -0.135225,
		-0.203916, 0.703054, -0.681273,
		34.610214, 37.989376, 46.128986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329514, 37.914436, 46.673618>,  <34.752956, 37.497238, 46.605881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329514, 37.914436, 46.673618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013008, 38.121487, 46.543407>,  <34.823105, 38.245716, 46.465282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013008, 38.121487, 46.543407>,  <35.329514, 37.914436, 46.673618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013008, 38.121487, 46.543407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105314, 0.639767, 0.761320,
		0.602342, 0.568119, -0.560735,
		-0.791260, 0.517628, -0.325528,
		34.775631, 38.276775, 46.445747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555725, 38.578125, 46.393700>,  <35.329514, 37.914436, 46.673618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555725, 38.578125, 46.393700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172638, 38.594547, 46.507607>,  <34.942787, 38.604401, 46.575951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172638, 38.594547, 46.507607>,  <35.555725, 38.578125, 46.393700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172638, 38.594547, 46.507607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210784, 0.773795, 0.597337,
		-0.195828, 0.632104, -0.749730,
		-0.957717, 0.041055, 0.284768,
		34.885323, 38.606865, 46.593037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569729, 39.244141, 46.502010>,  <35.555725, 38.578125, 46.393700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569729, 39.244141, 46.502010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244522, 39.109543, 46.692070>,  <35.049397, 39.028786, 46.806107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244522, 39.109543, 46.692070>,  <35.569729, 39.244141, 46.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244522, 39.109543, 46.692070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077962, 0.745820, 0.661570,
		-0.576991, 0.574914, -0.580134,
		-0.813021, -0.336492, 0.475153,
		35.000614, 39.008595, 46.834618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103970, 39.853016, 46.570503>,  <35.569729, 39.244141, 46.502010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103970, 39.853016, 46.570503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984257, 39.599770, 46.856049>,  <34.912430, 39.447823, 47.027374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984257, 39.599770, 46.856049>,  <35.103970, 39.853016, 46.570503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984257, 39.599770, 46.856049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030186, 0.754062, 0.656110,
		-0.953688, 0.174813, -0.244787,
		-0.299281, -0.633113, 0.713862,
		34.894474, 39.409836, 47.070206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658482, 40.248619, 46.967525>,  <35.103970, 39.853016, 46.570503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658482, 40.248619, 46.967525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750652, 39.937740, 47.201748>,  <34.805954, 39.751213, 47.342281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750652, 39.937740, 47.201748>,  <34.658482, 40.248619, 46.967525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750652, 39.937740, 47.201748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076471, 0.614350, 0.785319,
		-0.970080, -0.136182, 0.200997,
		0.230429, -0.777193, 0.585555,
		34.819782, 39.704582, 47.377415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239639, 40.323677, 47.501896>,  <34.658482, 40.248619, 46.967525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239639, 40.323677, 47.501896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522697, 40.085972, 47.654781>,  <34.692532, 39.943348, 47.746513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522697, 40.085972, 47.654781>,  <34.239639, 40.323677, 47.501896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522697, 40.085972, 47.654781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006541, 0.546428, 0.837480,
		-0.706537, -0.590140, 0.390565,
		0.707646, -0.594265, 0.382212,
		34.734993, 39.907692, 47.769444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079727, 40.209682, 48.209641>,  <34.239639, 40.323677, 47.501896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079727, 40.209682, 48.209641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466133, 40.117939, 48.161961>,  <34.697975, 40.062893, 48.133354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466133, 40.117939, 48.161961>,  <34.079727, 40.209682, 48.209641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466133, 40.117939, 48.161961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240157, 0.625843, 0.742055,
		-0.095598, -0.745463, 0.659656,
		0.966015, -0.229360, -0.119199,
		34.755939, 40.049129, 48.126202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349243, 40.026318, 48.828381>,  <34.079727, 40.209682, 48.209641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349243, 40.026318, 48.828381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651592, 40.147175, 48.596050>,  <34.833004, 40.219688, 48.456654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651592, 40.147175, 48.596050>,  <34.349243, 40.026318, 48.828381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651592, 40.147175, 48.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248355, 0.688514, 0.681372,
		0.605780, -0.659284, 0.445392,
		0.755877, 0.302146, -0.580825,
		34.878357, 40.237820, 48.421803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817608, 40.152172, 49.400623>,  <34.349243, 40.026318, 48.828381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817608, 40.152172, 49.400623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005070, 40.326130, 49.093056>,  <35.117546, 40.430504, 48.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005070, 40.326130, 49.093056>,  <34.817608, 40.152172, 49.400623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005070, 40.326130, 49.093056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313965, 0.731591, 0.605145,
		0.825706, -0.525016, 0.206320,
		0.468652, 0.434894, -0.768916,
		35.145664, 40.456596, 48.862381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552750, 40.226925, 49.554890>,  <34.817608, 40.152172, 49.400623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552750, 40.226925, 49.554890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442101, 40.507938, 49.292614>,  <35.375710, 40.676544, 49.135250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442101, 40.507938, 49.292614>,  <35.552750, 40.226925, 49.554890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442101, 40.507938, 49.292614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247014, 0.711370, 0.657979,
		0.928690, 0.020047, -0.370315,
		-0.276621, 0.702532, -0.655690,
		35.359116, 40.718697, 49.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910744, 40.719822, 49.860844>,  <35.552750, 40.226925, 49.554890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910744, 40.719822, 49.860844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685326, 40.899158, 49.583309>,  <35.550076, 41.006760, 49.416790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685326, 40.899158, 49.583309>,  <35.910744, 40.719822, 49.860844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685326, 40.899158, 49.583309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076022, 0.864487, 0.496873,
		0.822579, 0.227264, -0.521263,
		-0.563547, 0.448344, -0.693832,
		35.516262, 41.033661, 49.375160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213905, 41.346279, 49.642002>,  <35.910744, 40.719822, 49.860844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213905, 41.346279, 49.642002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818974, 41.375351, 49.585590>,  <35.582012, 41.392796, 49.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818974, 41.375351, 49.585590>,  <36.213905, 41.346279, 49.642002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818974, 41.375351, 49.585590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045273, 0.722859, 0.689511,
		0.152058, 0.687162, -0.710413,
		-0.987334, 0.072683, -0.141026,
		35.522774, 41.397156, 49.543282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111755, 42.099277, 49.527229>,  <36.213905, 41.346279, 49.642002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111755, 42.099277, 49.527229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787861, 41.918839, 49.677341>,  <35.593525, 41.810574, 49.767406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787861, 41.918839, 49.677341>,  <36.111755, 42.099277, 49.527229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787861, 41.918839, 49.677341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030981, 0.671516, 0.740342,
		-0.585971, 0.587857, -0.557729,
		-0.809739, -0.451098, 0.375277,
		35.544937, 41.783508, 49.789925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698223, 42.527397, 49.178501>,  <36.111755, 42.099277, 49.527229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698223, 42.527397, 49.178501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053112, 42.674023, 49.066456>,  <37.266045, 42.761997, 48.999229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053112, 42.674023, 49.066456>,  <36.698223, 42.527397, 49.178501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053112, 42.674023, 49.066456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000670, -0.606153, -0.795348,
		-0.461342, 0.705838, -0.537547,
		0.887222, 0.366567, -0.280116,
		37.319279, 42.783993, 48.982422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582207, 42.741920, 48.540874>,  <36.698223, 42.527397, 49.178501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582207, 42.741920, 48.540874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981461, 42.721073, 48.528145>,  <37.221012, 42.708565, 48.520508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981461, 42.721073, 48.528145>,  <36.582207, 42.741920, 48.540874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981461, 42.721073, 48.528145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049594, -0.387840, -0.920391,
		0.035625, 0.920252, -0.389701,
		0.998134, -0.052116, -0.031822,
		37.280899, 42.705437, 48.518597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704784, 43.073750, 47.912888>,  <36.582207, 42.741920, 48.540874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704784, 43.073750, 47.912888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023838, 42.852825, 48.009830>,  <37.215271, 42.720272, 48.067997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023838, 42.852825, 48.009830>,  <36.704784, 43.073750, 47.912888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023838, 42.852825, 48.009830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019934, -0.425740, -0.904626,
		0.602816, 0.716727, -0.350594,
		0.797631, -0.552311, 0.242356,
		37.263126, 42.687130, 48.082539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173943, 43.055683, 47.357735>,  <36.704784, 43.073750, 47.912888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173943, 43.055683, 47.357735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306412, 42.740582, 47.565491>,  <37.385891, 42.551521, 47.690144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306412, 42.740582, 47.565491>,  <37.173943, 43.055683, 47.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306412, 42.740582, 47.565491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091653, -0.520991, -0.848627,
		0.939109, 0.328643, -0.100336,
		0.331169, -0.787758, 0.519388,
		37.405762, 42.504253, 47.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618099, 42.677139, 46.880249>,  <37.173943, 43.055683, 47.357735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618099, 42.677139, 46.880249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549366, 42.395275, 47.155621>,  <37.508125, 42.226158, 47.320843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549366, 42.395275, 47.155621>,  <37.618099, 42.677139, 46.880249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549366, 42.395275, 47.155621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005792, -0.698087, -0.715989,
		0.985108, -0.127020, 0.115875,
		-0.171836, -0.704656, 0.688427,
		37.497814, 42.183880, 47.362148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021835, 42.127697, 46.661819>,  <37.618099, 42.677139, 46.880249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021835, 42.127697, 46.661819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736732, 41.969383, 46.893452>,  <37.565670, 41.874397, 47.032433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736732, 41.969383, 46.893452>,  <38.021835, 42.127697, 46.661819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736732, 41.969383, 46.893452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062817, -0.786261, -0.614693,
		0.698596, -0.474501, 0.535549,
		-0.712754, -0.395781, 0.579085,
		37.522907, 41.850651, 47.067177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126675, 41.446693, 46.589710>,  <38.021835, 42.127697, 46.661819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126675, 41.446693, 46.589710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742512, 41.477711, 46.696743>,  <37.512012, 41.496323, 46.760963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742512, 41.477711, 46.696743>,  <38.126675, 41.446693, 46.589710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742512, 41.477711, 46.696743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206069, -0.844097, -0.495010,
		0.187482, -0.530553, 0.826658,
		-0.960409, 0.077543, 0.267584,
		37.454388, 41.500973, 46.777020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050594, 40.773594, 46.904404>,  <38.126675, 41.446693, 46.589710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050594, 40.773594, 46.904404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693661, 40.917461, 46.795322>,  <37.479500, 41.003784, 46.729874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693661, 40.917461, 46.795322>,  <38.050594, 40.773594, 46.904404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693661, 40.917461, 46.795322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099038, -0.745472, -0.659138,
		-0.440367, -0.561166, 0.700835,
		-0.892338, 0.359672, -0.272705,
		37.425961, 41.025364, 46.713512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510941, 40.167072, 46.916393>,  <38.050594, 40.773594, 46.904404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510941, 40.167072, 46.916393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334091, 40.442329, 46.686268>,  <37.227982, 40.607483, 46.548195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334091, 40.442329, 46.686268>,  <37.510941, 40.167072, 46.916393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334091, 40.442329, 46.686268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186101, -0.697826, -0.691669,
		-0.877435, -0.198738, 0.436590,
		-0.442124, 0.688144, -0.575312,
		37.201454, 40.648773, 46.513676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853714, 39.925861, 46.697342>,  <37.510941, 40.167072, 46.916393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853714, 39.925861, 46.697342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938560, 40.208252, 46.427052>,  <36.989468, 40.377686, 46.264877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938560, 40.208252, 46.427052>,  <36.853714, 39.925861, 46.697342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938560, 40.208252, 46.427052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212782, -0.641509, -0.737015,
		-0.953798, 0.300114, 0.014146,
		0.212114, 0.705974, -0.675729,
		37.002193, 40.420044, 46.224335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291992, 39.888893, 46.329990>,  <36.853714, 39.925861, 46.697342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291992, 39.888893, 46.329990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551453, 40.074043, 46.088333>,  <36.707130, 40.185135, 45.943340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551453, 40.074043, 46.088333>,  <36.291992, 39.888893, 46.329990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551453, 40.074043, 46.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014327, -0.801081, -0.598384,
		-0.760948, 0.379489, -0.526257,
		0.648655, 0.462879, -0.604144,
		36.746048, 40.212906, 45.907089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992561, 39.969425, 45.576103>,  <36.291992, 39.888893, 46.329990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992561, 39.969425, 45.576103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392479, 39.969231, 45.584179>,  <36.632431, 39.969112, 45.589024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392479, 39.969231, 45.584179>,  <35.992561, 39.969425, 45.576103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392479, 39.969231, 45.584179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014429, -0.682272, -0.730956,
		0.014133, 0.731098, -0.682126,
		0.999796, -0.000488, 0.020192,
		36.692417, 39.969086, 45.590237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169991, 40.031078, 44.946194>,  <35.992561, 39.969425, 45.576103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169991, 40.031078, 44.946194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521339, 39.893456, 45.078915>,  <36.732147, 39.810883, 45.158546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521339, 39.893456, 45.078915>,  <36.169991, 40.031078, 44.946194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521339, 39.893456, 45.078915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102832, -0.541898, -0.834130,
		0.466788, 0.766795, -0.440607,
		0.878371, -0.344053, 0.331802,
		36.784851, 39.790241, 45.178455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591167, 40.078197, 44.370331>,  <36.169991, 40.031078, 44.946194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591167, 40.078197, 44.370331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766319, 39.818295, 44.618870>,  <36.871410, 39.662354, 44.767994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766319, 39.818295, 44.618870>,  <36.591167, 40.078197, 44.370331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766319, 39.818295, 44.618870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158885, -0.624325, -0.764836,
		0.884882, 0.433630, -0.170144,
		0.437881, -0.649756, 0.621351,
		36.897682, 39.623367, 44.805275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194756, 39.947880, 44.019096>,  <36.591167, 40.078197, 44.370331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194756, 39.947880, 44.019096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128834, 39.647350, 44.274704>,  <37.089279, 39.467033, 44.428070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128834, 39.647350, 44.274704>,  <37.194756, 39.947880, 44.019096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128834, 39.647350, 44.274704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299132, -0.655441, -0.693482,
		0.939871, 0.076860, 0.332768,
		-0.164808, -0.751325, 0.639022,
		37.079391, 39.421951, 44.466412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810650, 39.483044, 44.027836>,  <37.194756, 39.947880, 44.019096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810650, 39.483044, 44.027836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485870, 39.269951, 44.123283>,  <37.291004, 39.142094, 44.180553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485870, 39.269951, 44.123283>,  <37.810650, 39.483044, 44.027836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485870, 39.269951, 44.123283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238809, -0.676157, -0.696981,
		0.532650, -0.508925, 0.676224,
		-0.811945, -0.532735, 0.238619,
		37.242287, 39.110130, 44.194870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060825, 38.865025, 43.855656>,  <37.810650, 39.483044, 44.027836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060825, 38.865025, 43.855656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672142, 38.799267, 43.923485>,  <37.438931, 38.759811, 43.964184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672142, 38.799267, 43.923485>,  <38.060825, 38.865025, 43.855656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672142, 38.799267, 43.923485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021940, -0.652047, -0.757861,
		0.235158, -0.740141, 0.629993,
		-0.971709, -0.164395, 0.169572,
		37.380630, 38.749947, 43.974358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071426, 38.239906, 43.933987>,  <38.060825, 38.865025, 43.855656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071426, 38.239906, 43.933987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690952, 38.318798, 43.839035>,  <37.462669, 38.366135, 43.782063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690952, 38.318798, 43.839035>,  <38.071426, 38.239906, 43.933987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690952, 38.318798, 43.839035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027751, -0.711387, -0.702253,
		-0.307375, -0.674559, 0.671186,
		-0.951184, 0.197228, -0.237382,
		37.405598, 38.377968, 43.767818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681873, 37.640545, 44.094238>,  <38.071426, 38.239906, 43.933987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681873, 37.640545, 44.094238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467278, 37.819447, 43.807983>,  <37.338520, 37.926788, 43.636230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467278, 37.819447, 43.807983>,  <37.681873, 37.640545, 44.094238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467278, 37.819447, 43.807983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036342, -0.859465, -0.509901,
		-0.843119, -0.247553, 0.477355,
		-0.536498, 0.447255, -0.715635,
		37.306328, 37.953625, 43.593292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144112, 37.131805, 44.009686>,  <37.681873, 37.640545, 44.094238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144112, 37.131805, 44.009686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106388, 37.374546, 43.694008>,  <37.083755, 37.520191, 43.504601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106388, 37.374546, 43.694008>,  <37.144112, 37.131805, 44.009686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106388, 37.374546, 43.694008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259763, -0.780270, -0.568949,
		-0.961056, 0.151347, 0.231225,
		-0.094309, 0.606855, -0.789197,
		37.078094, 37.556602, 43.457249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449986, 36.933094, 43.668415>,  <37.144112, 37.131805, 44.009686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449986, 36.933094, 43.668415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693638, 37.116642, 43.409679>,  <36.839828, 37.226772, 43.254440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693638, 37.116642, 43.409679>,  <36.449986, 36.933094, 43.668415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693638, 37.116642, 43.409679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149511, -0.734541, -0.661888,
		-0.778852, 0.499884, -0.378823,
		0.609128, 0.458874, -0.646837,
		36.876377, 37.254303, 43.215630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028652, 37.233353, 43.151890>,  <36.449986, 36.933094, 43.668415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028652, 37.233353, 43.151890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397228, 37.177853, 43.006729>,  <36.618374, 37.144554, 42.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397228, 37.177853, 43.006729>,  <36.028652, 37.233353, 43.151890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397228, 37.177853, 43.006729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374456, -0.566188, -0.734312,
		-0.103588, 0.812515, -0.573663,
		0.921440, -0.138746, -0.362902,
		36.673660, 37.136230, 42.897858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876411, 37.123409, 42.479744>,  <36.028652, 37.233353, 43.151890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876411, 37.123409, 42.479744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266811, 37.036621, 42.487301>,  <36.501049, 36.984547, 42.491833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266811, 37.036621, 42.487301>,  <35.876411, 37.123409, 42.479744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266811, 37.036621, 42.487301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146668, -0.718916, -0.679447,
		0.161000, 0.660366, -0.733482,
		0.975995, -0.216969, 0.018891,
		36.559608, 36.971531, 42.492970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111137, 37.095585, 41.754284>,  <35.876411, 37.123409, 42.479744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111137, 37.095585, 41.754284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360363, 36.868950, 41.969978>,  <36.509899, 36.732971, 42.099396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360363, 36.868950, 41.969978>,  <36.111137, 37.095585, 41.754284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360363, 36.868950, 41.969978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015876, -0.698427, -0.715505,
		0.782010, 0.437245, -0.444159,
		0.623064, -0.566583, 0.539235,
		36.547283, 36.698975, 42.131748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677944, 36.971375, 41.400715>,  <36.111137, 37.095585, 41.754284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677944, 36.971375, 41.400715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681637, 36.672699, 41.666759>,  <36.683853, 36.493496, 41.826385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681637, 36.672699, 41.666759>,  <36.677944, 36.971375, 41.400715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681637, 36.672699, 41.666759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219219, -0.647451, -0.729897,
		0.975632, 0.152543, 0.157711,
		0.009230, -0.746684, 0.665114,
		36.684406, 36.448692, 41.866295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365395, 36.559822, 41.273174>,  <36.677944, 36.971375, 41.400715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365395, 36.559822, 41.273174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103966, 36.329491, 41.469650>,  <36.947109, 36.191292, 41.587536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103966, 36.329491, 41.469650>,  <37.365395, 36.559822, 41.273174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103966, 36.329491, 41.469650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042326, -0.675771, -0.735896,
		0.755679, -0.460172, 0.466038,
		-0.653573, -0.575826, 0.491188,
		36.907894, 36.156742, 41.617008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612141, 35.973907, 41.397758>,  <37.365395, 36.559822, 41.273174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612141, 35.973907, 41.397758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223019, 35.884266, 41.374374>,  <36.989544, 35.830479, 41.360344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223019, 35.884266, 41.374374>,  <37.612141, 35.973907, 41.397758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223019, 35.884266, 41.374374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206853, -0.727172, -0.654548,
		0.104181, -0.648843, 0.753757,
		-0.972810, -0.224108, -0.058457,
		36.931175, 35.817032, 41.356838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538300, 35.389271, 41.772984>,  <37.612141, 35.973907, 41.397758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538300, 35.389271, 41.772984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242825, 35.428226, 41.506191>,  <37.065540, 35.451599, 41.346115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242825, 35.428226, 41.506191>,  <37.538300, 35.389271, 41.772984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242825, 35.428226, 41.506191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245308, -0.882811, -0.400586,
		-0.627826, -0.459522, 0.628230,
		-0.738687, 0.097389, -0.666976,
		37.021217, 35.457443, 41.306099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386589, 34.716091, 41.709305>,  <37.538300, 35.389271, 41.772984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386589, 34.716091, 41.709305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236721, 34.888046, 41.380714>,  <37.146801, 34.991219, 41.183559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236721, 34.888046, 41.380714>,  <37.386589, 34.716091, 41.709305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236721, 34.888046, 41.380714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153858, -0.844901, -0.512319,
		-0.914303, -0.318341, 0.250418,
		-0.374671, 0.429886, -0.821475,
		37.124321, 35.017014, 41.134274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938992, 34.249783, 41.433502>,  <37.386589, 34.716091, 41.709305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938992, 34.249783, 41.433502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993862, 34.499584, 41.125950>,  <37.026787, 34.649464, 40.941418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993862, 34.499584, 41.125950>,  <36.938992, 34.249783, 41.433502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993862, 34.499584, 41.125950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119590, -0.780983, -0.612995,
		-0.983301, -0.007861, -0.181819,
		0.137179, 0.624502, -0.768882,
		37.035015, 34.686935, 40.895287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622227, 33.919689, 40.863159>,  <36.938992, 34.249783, 41.433502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622227, 33.919689, 40.863159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889103, 34.173424, 40.706966>,  <37.049229, 34.325665, 40.613251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889103, 34.173424, 40.706966>,  <36.622227, 33.919689, 40.863159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889103, 34.173424, 40.706966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373390, -0.738404, -0.561550,
		-0.644543, 0.228860, -0.729511,
		0.667191, 0.634336, -0.390479,
		37.089260, 34.363724, 40.589821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533360, 33.992748, 40.135960>,  <36.622227, 33.919689, 40.863159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533360, 33.992748, 40.135960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911446, 34.119686, 40.166576>,  <37.138298, 34.195850, 40.184944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911446, 34.119686, 40.166576>,  <36.533360, 33.992748, 40.135960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911446, 34.119686, 40.166576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263324, -0.602606, -0.753343,
		-0.192949, 0.732226, -0.653158,
		0.945215, 0.317349, 0.076540,
		37.195011, 34.214890, 40.189537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728439, 33.956505, 39.409428>,  <36.533360, 33.992748, 40.135960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728439, 33.956505, 39.409428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079727, 33.972546, 39.600056>,  <37.290501, 33.982170, 39.714432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079727, 33.972546, 39.600056>,  <36.728439, 33.956505, 39.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079727, 33.972546, 39.600056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452540, -0.392030, -0.800950,
		0.154709, 0.919078, -0.362437,
		0.878222, 0.040103, 0.476570,
		37.343193, 33.984577, 39.743027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160526, 34.044605, 38.922318>,  <36.728439, 33.956505, 39.409428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160526, 34.044605, 38.922318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412548, 33.958019, 39.220623>,  <37.563763, 33.906067, 39.399609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412548, 33.958019, 39.220623>,  <37.160526, 34.044605, 38.922318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412548, 33.958019, 39.220623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642126, -0.394832, -0.657102,
		0.436693, 0.892889, -0.109769,
		0.630059, -0.216467, 0.745767,
		37.601566, 33.893078, 39.444355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792465, 34.268044, 38.641327>,  <37.160526, 34.044605, 38.922318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792465, 34.268044, 38.641327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842464, 33.993652, 38.928047>,  <37.872463, 33.829018, 39.100079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842464, 33.993652, 38.928047>,  <37.792465, 34.268044, 38.641327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842464, 33.993652, 38.928047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641487, -0.495269, -0.585836,
		0.756882, 0.533046, 0.378142,
		0.124996, -0.685982, 0.716802,
		37.879963, 33.787857, 39.143089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574921, 34.227303, 38.762703>,  <37.792465, 34.268044, 38.641327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574921, 34.227303, 38.762703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473610, 33.887001, 38.946907>,  <38.412823, 33.682819, 39.057430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473610, 33.887001, 38.946907>,  <38.574921, 34.227303, 38.762703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473610, 33.887001, 38.946907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790956, -0.456194, -0.407770,
		0.556994, 0.260966, 0.788451,
		-0.253273, -0.850755, 0.460510,
		38.397629, 33.631775, 39.085060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215286, 33.891823, 38.936516>,  <38.574921, 34.227303, 38.762703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215286, 33.891823, 38.936516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950836, 33.591846, 38.945484>,  <38.792168, 33.411861, 38.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950836, 33.591846, 38.945484>,  <39.215286, 33.891823, 38.936516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950836, 33.591846, 38.945484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682204, -0.613305, -0.398065,
		0.312277, -0.247874, 0.917083,
		-0.661121, -0.749944, 0.022421,
		38.752499, 33.366863, 38.952209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551041, 33.212151, 39.263851>,  <39.215286, 33.891823, 38.936516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551041, 33.212151, 39.263851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243729, 33.086739, 39.040627>,  <39.059341, 33.011490, 38.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243729, 33.086739, 39.040627>,  <39.551041, 33.212151, 39.263851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243729, 33.086739, 39.040627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602776, -0.647749, -0.465921,
		-0.215406, -0.694349, 0.686644,
		-0.768284, -0.313530, -0.558066,
		39.013245, 32.992680, 38.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609692, 32.478138, 39.285408>,  <39.551041, 33.212151, 39.263851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609692, 32.478138, 39.285408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384033, 32.574684, 38.969563>,  <39.248638, 32.632610, 38.780056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384033, 32.574684, 38.969563>,  <39.609692, 32.478138, 39.285408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384033, 32.574684, 38.969563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631849, -0.489417, -0.601031,
		-0.531518, -0.837981, 0.123593,
		-0.564141, 0.241367, -0.789611,
		39.214790, 32.647095, 38.732677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497566, 31.849222, 38.978416>,  <39.609692, 32.478138, 39.285408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497566, 31.849222, 38.978416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466541, 32.127769, 38.693024>,  <39.447926, 32.294899, 38.521790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466541, 32.127769, 38.693024>,  <39.497566, 31.849222, 38.978416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466541, 32.127769, 38.693024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617631, -0.528214, -0.582686,
		-0.782635, -0.485859, -0.389132,
		-0.077558, 0.696370, -0.713479,
		39.443275, 32.336681, 38.478981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640942, 31.548887, 38.364880>,  <39.497566, 31.849222, 38.978416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640942, 31.548887, 38.364880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735752, 31.929659, 38.287262>,  <39.792637, 32.158123, 38.240692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735752, 31.929659, 38.287262>,  <39.640942, 31.548887, 38.364880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735752, 31.929659, 38.287262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744962, -0.306292, -0.592635,
		-0.623580, -0.004084, -0.781749,
		0.237023, 0.951929, -0.194040,
		39.806858, 32.215237, 38.229050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658100, 31.618332, 37.597660>,  <39.640942, 31.548887, 38.364880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658100, 31.618332, 37.597660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913479, 31.881464, 37.757481>,  <40.066708, 32.039345, 37.853374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913479, 31.881464, 37.757481>,  <39.658100, 31.618332, 37.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913479, 31.881464, 37.757481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735972, -0.369879, -0.567040,
		-0.225232, 0.656084, -0.720295,
		0.638448, 0.657832, 0.399551,
		40.105015, 32.078815, 37.877346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037663, 31.988630, 37.018559>,  <39.658100, 31.618332, 37.597660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037663, 31.988630, 37.018559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253555, 31.989277, 37.355293>,  <40.383091, 31.989664, 37.557335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253555, 31.989277, 37.355293>,  <40.037663, 31.988630, 37.018559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253555, 31.989277, 37.355293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776526, -0.387141, -0.497121,
		0.325105, 0.922019, -0.210208,
		0.539735, 0.001615, 0.841833,
		40.415474, 31.989761, 37.607841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683075, 32.167038, 36.808926>,  <40.037663, 31.988630, 37.018559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683075, 32.167038, 36.808926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692909, 31.952036, 37.146088>,  <40.698811, 31.823036, 37.348385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692909, 31.952036, 37.146088>,  <40.683075, 32.167038, 36.808926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692909, 31.952036, 37.146088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464273, -0.740579, -0.485791,
		0.885351, 0.403280, 0.231343,
		0.024582, -0.537502, 0.842904,
		40.700283, 31.790785, 37.398960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223614, 31.841364, 36.906792>,  <40.683075, 32.167038, 36.808926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223614, 31.841364, 36.906792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993469, 31.613249, 37.141308>,  <40.855385, 31.476379, 37.282017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993469, 31.613249, 37.141308>,  <41.223614, 31.841364, 36.906792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993469, 31.613249, 37.141308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463177, -0.817988, -0.341120,
		0.674115, 0.075291, 0.734779,
		-0.575357, -0.570287, 0.586291,
		40.820862, 31.442163, 37.317196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536327, 32.088730, 37.487171>,  <41.223614, 31.841364, 36.906792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536327, 32.088730, 37.487171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772156, 32.386959, 37.611446>,  <41.913654, 32.565895, 37.686012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772156, 32.386959, 37.611446>,  <41.536327, 32.088730, 37.487171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772156, 32.386959, 37.611446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726590, 0.657566, -0.199184,
		-0.352806, -0.108312, 0.929406,
		0.589572, 0.745570, 0.310692,
		41.949028, 32.610630, 37.704655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130531, 32.641701, 37.579407>,  <41.536327, 32.088730, 37.487171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130531, 32.641701, 37.579407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483624, 32.797127, 37.473724>,  <41.695480, 32.890385, 37.410316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483624, 32.797127, 37.473724>,  <41.130531, 32.641701, 37.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483624, 32.797127, 37.473724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461862, 0.614071, -0.640000,
		-0.086443, 0.686973, 0.721523,
		0.882729, 0.388568, -0.264205,
		41.748444, 32.913696, 37.394463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069435, 33.353790, 37.766289>,  <41.130531, 32.641701, 37.579407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069435, 33.353790, 37.766289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305729, 33.258896, 37.457806>,  <41.447506, 33.201958, 37.272717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305729, 33.258896, 37.457806>,  <41.069435, 33.353790, 37.766289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305729, 33.258896, 37.457806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466133, 0.679826, -0.566177,
		0.658603, 0.693942, 0.291010,
		0.590730, -0.237237, -0.771205,
		41.482948, 33.187725, 37.226444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303658, 33.954205, 37.447483>,  <41.069435, 33.353790, 37.766289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303658, 33.954205, 37.447483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379372, 33.668087, 37.178402>,  <41.424801, 33.496418, 37.016953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379372, 33.668087, 37.178402>,  <41.303658, 33.954205, 37.447483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379372, 33.668087, 37.178402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367430, 0.583717, -0.724065,
		0.910586, 0.384226, -0.152331,
		0.189286, -0.715294, -0.672700,
		41.436157, 33.453499, 36.976593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508774, 34.301685, 36.847561>,  <41.303658, 33.954205, 37.447483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508774, 34.301685, 36.847561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410313, 33.940834, 36.705818>,  <41.351234, 33.724323, 36.620773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410313, 33.940834, 36.705818>,  <41.508774, 34.301685, 36.847561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410313, 33.940834, 36.705818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404641, 0.427875, -0.808201,
		0.880724, -0.055553, -0.470361,
		-0.246154, -0.902129, -0.354361,
		41.336468, 33.670197, 36.599510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847660, 34.186073, 36.086018>,  <41.508774, 34.301685, 36.847561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847660, 34.186073, 36.086018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534695, 33.939705, 36.122845>,  <41.346916, 33.791885, 36.144939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534695, 33.939705, 36.122845>,  <41.847660, 34.186073, 36.086018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534695, 33.939705, 36.122845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415324, 0.405903, -0.814094,
		0.464045, -0.675194, -0.573389,
		-0.782411, -0.615919, 0.092068,
		41.299973, 33.754929, 36.150463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792721, 34.159500, 35.413048>,  <41.847660, 34.186073, 36.086018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792721, 34.159500, 35.413048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462528, 34.023647, 35.593369>,  <41.264412, 33.942135, 35.701561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462528, 34.023647, 35.593369>,  <41.792721, 34.159500, 35.413048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462528, 34.023647, 35.593369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563061, 0.440076, -0.699496,
		0.039179, -0.831256, -0.554507,
		-0.825486, -0.339627, 0.450807,
		41.214882, 33.921761, 35.728611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345856, 33.926273, 34.927124>,  <41.792721, 34.159500, 35.413048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345856, 33.926273, 34.927124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099483, 34.014576, 35.229622>,  <40.951660, 34.067558, 35.411121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099483, 34.014576, 35.229622>,  <41.345856, 33.926273, 34.927124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099483, 34.014576, 35.229622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578605, 0.524708, -0.624418,
		-0.534650, -0.822161, -0.195451,
		-0.615927, 0.220757, 0.756241,
		40.914707, 34.080803, 35.456493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660851, 33.861263, 34.709164>,  <41.345856, 33.926273, 34.927124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660851, 33.861263, 34.709164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577602, 34.099262, 35.019688>,  <40.527653, 34.242062, 35.206001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577602, 34.099262, 35.019688>,  <40.660851, 33.861263, 34.709164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577602, 34.099262, 35.019688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589027, 0.557391, -0.585118,
		-0.780855, -0.579041, 0.234470,
		-0.208116, 0.595002, 0.776312,
		40.515167, 34.277763, 35.252583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061234, 34.029812, 34.629402>,  <40.660851, 33.861263, 34.709164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061234, 34.029812, 34.629402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132404, 34.287140, 34.927258>,  <40.175106, 34.441536, 35.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132404, 34.287140, 34.927258>,  <40.061234, 34.029812, 34.629402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132404, 34.287140, 34.927258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642564, 0.649064, -0.407220,
		-0.745288, -0.406021, 0.528860,
		0.177924, 0.643322, 0.744634,
		40.185783, 34.480137, 35.150646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400715, 34.328030, 34.860771>,  <40.061234, 34.029812, 34.629402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400715, 34.328030, 34.860771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685211, 34.590260, 34.962238>,  <39.855911, 34.747597, 35.023117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685211, 34.590260, 34.962238>,  <39.400715, 34.328030, 34.860771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685211, 34.590260, 34.962238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623142, 0.755016, -0.204073,
		-0.325307, -0.012924, 0.945520,
		0.711245, 0.655579, 0.253666,
		39.898586, 34.786934, 35.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984581, 34.815674, 35.200203>,  <39.400715, 34.328030, 34.860771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984581, 34.815674, 35.200203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332169, 34.989002, 35.104591>,  <39.540722, 35.092999, 35.047226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332169, 34.989002, 35.104591>,  <38.984581, 34.815674, 35.200203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332169, 34.989002, 35.104591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494643, 0.775184, -0.392961,
		0.015012, 0.459702, 0.887946,
		0.868966, 0.433318, -0.239026,
		39.592857, 35.118996, 35.032883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836185, 35.554607, 35.303291>,  <38.984581, 34.815674, 35.200203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836185, 35.554607, 35.303291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179249, 35.568382, 35.098068>,  <39.385086, 35.576649, 34.974934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179249, 35.568382, 35.098068>,  <38.836185, 35.554607, 35.303291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179249, 35.568382, 35.098068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328014, 0.805036, -0.494291,
		0.396008, 0.592225, 0.701746,
		0.857662, 0.034440, -0.513059,
		39.436546, 35.578712, 34.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920578, 36.229603, 35.187496>,  <38.836185, 35.554607, 35.303291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920578, 36.229603, 35.187496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132824, 36.059807, 34.894032>,  <39.260170, 35.957932, 34.717953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132824, 36.059807, 34.894032>,  <38.920578, 36.229603, 35.187496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132824, 36.059807, 34.894032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325075, 0.697460, -0.638651,
		0.782798, 0.577373, 0.232094,
		0.530616, -0.424487, -0.733660,
		39.292007, 35.932461, 34.673935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479504, 36.700424, 34.893936>,  <38.920578, 36.229603, 35.187496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479504, 36.700424, 34.893936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384884, 36.436287, 34.608841>,  <39.328114, 36.277805, 34.437786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384884, 36.436287, 34.608841>,  <39.479504, 36.700424, 34.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384884, 36.436287, 34.608841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169171, 0.750338, -0.639041,
		0.956780, -0.030587, -0.289200,
		-0.236544, -0.660346, -0.712734,
		39.313919, 36.238182, 34.395020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686451, 37.008408, 34.321232>,  <39.479504, 36.700424, 34.893936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686451, 37.008408, 34.321232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448227, 36.720371, 34.178806>,  <39.305294, 36.547550, 34.093353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448227, 36.720371, 34.178806>,  <39.686451, 37.008408, 34.321232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448227, 36.720371, 34.178806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265496, 0.594776, -0.758784,
		0.758169, -0.357369, -0.545405,
		-0.595560, -0.720090, -0.356061,
		39.269558, 36.504345, 34.071987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843105, 36.971359, 33.612366>,  <39.686451, 37.008408, 34.321232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843105, 36.971359, 33.612366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484463, 36.795670, 33.634895>,  <39.269276, 36.690254, 33.648415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484463, 36.795670, 33.634895>,  <39.843105, 36.971359, 33.612366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484463, 36.795670, 33.634895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352566, 0.631099, -0.690950,
		0.267938, -0.639370, -0.720705,
		-0.896608, -0.439228, 0.056325,
		39.215481, 36.663902, 33.651794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565628, 36.701912, 32.944931>,  <39.843105, 36.971359, 33.612366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565628, 36.701912, 32.944931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237530, 36.782021, 33.159252>,  <39.040668, 36.830086, 33.287846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237530, 36.782021, 33.159252>,  <39.565628, 36.701912, 32.944931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237530, 36.782021, 33.159252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386820, 0.495836, -0.777506,
		-0.421381, -0.845008, -0.329241,
		-0.820248, 0.200269, 0.535802,
		38.991455, 36.842102, 33.319992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056419, 36.470425, 32.577564>,  <39.565628, 36.701912, 32.944931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056419, 36.470425, 32.577564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832424, 36.669872, 32.842228>,  <38.698029, 36.789539, 33.001026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832424, 36.669872, 32.842228>,  <39.056419, 36.470425, 32.577564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832424, 36.669872, 32.842228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576385, 0.339221, -0.743444,
		-0.595147, -0.797688, 0.097439,
		-0.559983, 0.498621, 0.661662,
		38.664429, 36.819458, 33.040726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402283, 36.265945, 32.373737>,  <39.056419, 36.470425, 32.577564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402283, 36.265945, 32.373737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375721, 36.606125, 32.582478>,  <38.359783, 36.810234, 32.707722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375721, 36.606125, 32.582478>,  <38.402283, 36.265945, 32.373737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375721, 36.606125, 32.582478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582659, 0.391522, -0.712194,
		-0.810000, -0.351349, 0.469525,
		-0.066400, 0.850450, 0.521849,
		38.355801, 36.861259, 32.739033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564358, 36.441730, 32.530270>,  <38.402283, 36.265945, 32.373737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564358, 36.441730, 32.530270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763954, 36.786003, 32.570728>,  <37.883713, 36.992565, 32.595001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763954, 36.786003, 32.570728>,  <37.564358, 36.441730, 32.530270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763954, 36.786003, 32.570728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714035, 0.474472, -0.514810,
		-0.491078, 0.184666, 0.851317,
		0.498994, 0.860682, 0.101145,
		37.913654, 37.044209, 32.601070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054604, 36.856449, 32.657772>,  <37.564358, 36.441730, 32.530270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054604, 36.856449, 32.657772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366875, 37.063320, 32.517445>,  <37.554237, 37.187443, 32.433250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366875, 37.063320, 32.517445>,  <37.054604, 36.856449, 32.657772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366875, 37.063320, 32.517445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605155, 0.485506, -0.630930,
		-0.155977, 0.704851, 0.691994,
		0.780679, 0.517174, -0.350816,
		37.601078, 37.218472, 32.412201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925365, 37.561684, 32.662064>,  <37.054604, 36.856449, 32.657772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925365, 37.561684, 32.662064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196121, 37.509735, 32.372250>,  <37.358574, 37.478565, 32.198360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196121, 37.509735, 32.372250>,  <36.925365, 37.561684, 32.662064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196121, 37.509735, 32.372250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638699, 0.385661, -0.665830,
		0.365899, 0.913454, 0.178101,
		0.676892, -0.129873, -0.724535,
		37.399189, 37.470772, 32.154888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170494, 38.203850, 32.425179>,  <36.925365, 37.561684, 32.662064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170494, 38.203850, 32.425179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154148, 37.910934, 32.153271>,  <37.144341, 37.735188, 31.990126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154148, 37.910934, 32.153271>,  <37.170494, 38.203850, 32.425179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154148, 37.910934, 32.153271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674728, 0.522011, -0.521774,
		0.736935, 0.437337, -0.515426,
		-0.040867, -0.732285, -0.679771,
		37.141888, 37.691250, 31.949339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546555, 38.367702, 32.811508>,  <37.170494, 38.203850, 32.425179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546555, 38.367702, 32.811508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299294, 38.217293, 32.535397>,  <36.150936, 38.127048, 32.369728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299294, 38.217293, 32.535397>,  <36.546555, 38.367702, 32.811508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299294, 38.217293, 32.535397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745591, -0.002361, -0.666399,
		0.248953, -0.926606, 0.281821,
		-0.618155, -0.376025, -0.690282,
		36.113846, 38.104485, 32.328312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826065, 38.989258, 33.191868>,  <36.546555, 38.367702, 32.811508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826065, 38.989258, 33.191868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784977, 39.385986, 33.161552>,  <36.760323, 39.624023, 33.143364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784977, 39.385986, 33.161552>,  <36.826065, 38.989258, 33.191868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784977, 39.385986, 33.161552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406025, 0.027751, 0.913441,
		0.908070, 0.124604, 0.399853,
		-0.102722, 0.991818, -0.075792,
		36.754162, 39.683533, 33.138813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967945, 39.317886, 33.901009>,  <36.826065, 38.989258, 33.191868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967945, 39.317886, 33.901009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739822, 39.573723, 33.694839>,  <36.602947, 39.727226, 33.571136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739822, 39.573723, 33.694839>,  <36.967945, 39.317886, 33.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739822, 39.573723, 33.694839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511015, 0.215017, 0.832245,
		0.643125, 0.738028, 0.204217,
		-0.570310, 0.639596, -0.515426,
		36.568729, 39.765602, 33.540211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440193, 39.804153, 33.622021>,  <36.967945, 39.317886, 33.901009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440193, 39.804153, 33.622021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482994, 39.547203, 33.318466>,  <37.508675, 39.393032, 33.136333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482994, 39.547203, 33.318466>,  <37.440193, 39.804153, 33.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482994, 39.547203, 33.318466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975243, -0.080751, 0.205866,
		-0.193523, -0.762127, 0.617827,
		0.107006, -0.642372, -0.758886,
		37.515095, 39.354492, 33.090801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734516, 39.120586, 33.882862>,  <37.440193, 39.804153, 33.622021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734516, 39.120586, 33.882862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839298, 39.218529, 33.509460>,  <37.902168, 39.277294, 33.285419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839298, 39.218529, 33.509460>,  <37.734516, 39.120586, 33.882862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839298, 39.218529, 33.509460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959817, -0.166985, 0.225537,
		-0.100656, -0.955072, -0.278759,
		0.261953, 0.244856, -0.933502,
		37.917885, 39.291985, 33.229408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252926, 38.662933, 33.657749>,  <37.734516, 39.120586, 33.882862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252926, 38.662933, 33.657749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276924, 39.016163, 33.471596>,  <38.291321, 39.228100, 33.359901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276924, 39.016163, 33.471596>,  <38.252926, 38.662933, 33.657749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276924, 39.016163, 33.471596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947978, 0.095615, 0.303635,
		0.312630, -0.459393, -0.831397,
		0.059994, 0.883072, -0.465387,
		38.294922, 39.281086, 33.331978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841423, 38.782715, 33.264328>,  <38.252926, 38.662933, 33.657749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841423, 38.782715, 33.264328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715546, 39.132450, 33.412113>,  <38.640018, 39.342293, 33.500782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715546, 39.132450, 33.412113>,  <38.841423, 38.782715, 33.264328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715546, 39.132450, 33.412113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888636, 0.134578, 0.438424,
		0.333609, 0.466285, -0.819319,
		-0.314693, 0.874338, 0.369461,
		38.621140, 39.394753, 33.522953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327419, 39.296028, 33.288448>,  <38.841423, 38.782715, 33.264328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327419, 39.296028, 33.288448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136772, 39.408009, 33.621784>,  <39.022385, 39.475197, 33.821785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136772, 39.408009, 33.621784>,  <39.327419, 39.296028, 33.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136772, 39.408009, 33.621784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876091, 0.072780, 0.476621,
		0.072780, 0.957252, -0.279949,
		-0.476621, 0.279949, 0.833343,
		38.993786, 39.491993, 33.871788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833504, 39.735466, 33.518936>,  <39.327419, 39.296028, 33.288448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833504, 39.735466, 33.518936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583874, 39.654320, 33.820766>,  <39.434097, 39.605633, 34.001865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583874, 39.654320, 33.820766>,  <39.833504, 39.735466, 33.518936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583874, 39.654320, 33.820766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778926, -0.085225, 0.621298,
		-0.061732, 0.975491, 0.211204,
		-0.624071, -0.202866, 0.754574,
		39.396652, 39.593460, 34.047138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195087, 40.160950, 33.960587>,  <39.833504, 39.735466, 33.518936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195087, 40.160950, 33.960587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979279, 39.840843, 34.065266>,  <39.849792, 39.648781, 34.128075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979279, 39.840843, 34.065266>,  <40.195087, 40.160950, 33.960587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979279, 39.840843, 34.065266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818366, -0.425346, 0.386467,
		-0.197964, 0.422674, 0.884396,
		-0.539524, -0.800267, 0.261699,
		39.817421, 39.600761, 34.143776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184383, 40.028816, 34.676239>,  <40.195087, 40.160950, 33.960587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184383, 40.028816, 34.676239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103889, 39.685219, 34.487926>,  <40.055595, 39.479061, 34.374939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103889, 39.685219, 34.487926>,  <40.184383, 40.028816, 34.676239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103889, 39.685219, 34.487926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752126, -0.443404, 0.487543,
		-0.627544, -0.255981, 0.735297,
		-0.201232, -0.858992, -0.470786,
		40.043518, 39.427521, 34.346691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326630, 39.491783, 35.244137>,  <40.184383, 40.028816, 34.676239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326630, 39.491783, 35.244137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340031, 39.321007, 34.882671>,  <40.348072, 39.218540, 34.665794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340031, 39.321007, 34.882671>,  <40.326630, 39.491783, 35.244137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340031, 39.321007, 34.882671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923173, -0.333200, 0.191646,
		-0.382921, -0.840656, 0.382974,
		0.033502, -0.426937, -0.903661,
		40.350082, 39.192924, 34.611572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450680, 38.774441, 35.401875>,  <40.326630, 39.491783, 35.244137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450680, 38.774441, 35.401875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546642, 38.842590, 35.019585>,  <40.604221, 38.883480, 34.790211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546642, 38.842590, 35.019585>,  <40.450680, 38.774441, 35.401875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546642, 38.842590, 35.019585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686650, -0.725716, 0.042994,
		-0.686262, -0.666565, -0.291093,
		0.239909, 0.170374, -0.955728,
		40.618614, 38.893703, 34.732864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520947, 38.097290, 35.097729>,  <40.450680, 38.774441, 35.401875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520947, 38.097290, 35.097729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704136, 38.350651, 34.848228>,  <40.814049, 38.502666, 34.698528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704136, 38.350651, 34.848228>,  <40.520947, 38.097290, 35.097729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704136, 38.350651, 34.848228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590024, -0.741404, -0.319676,
		-0.664933, -0.221623, -0.713266,
		0.457970, 0.633407, -0.623746,
		40.841526, 38.540672, 34.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537643, 37.916714, 34.415359>,  <40.520947, 38.097290, 35.097729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537643, 37.916714, 34.415359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847958, 38.168926, 34.425068>,  <41.034145, 38.320255, 34.430893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847958, 38.168926, 34.425068>,  <40.537643, 37.916714, 34.415359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847958, 38.168926, 34.425068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541457, -0.645456, -0.538712,
		-0.324010, 0.431066, -0.842140,
		0.775785, 0.630531, 0.024270,
		41.080692, 38.358086, 34.432350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942192, 37.670776, 33.793663>,  <40.537643, 37.916714, 34.415359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942192, 37.670776, 33.793663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195198, 37.890709, 34.011875>,  <41.347004, 38.022667, 34.142803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195198, 37.890709, 34.011875>,  <40.942192, 37.670776, 33.793663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195198, 37.890709, 34.011875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734220, -0.649933, -0.196234,
		0.246665, 0.524664, -0.814791,
		0.632517, 0.549832, 0.545535,
		41.384953, 38.055660, 34.175537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630417, 37.642193, 33.500134>,  <40.942192, 37.670776, 33.793663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630417, 37.642193, 33.500134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697418, 37.737442, 33.882805>,  <41.737621, 37.794590, 34.112408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697418, 37.737442, 33.882805>,  <41.630417, 37.642193, 33.500134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697418, 37.737442, 33.882805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816953, -0.576705, 0.000503,
		0.551842, 0.781479, -0.291139,
		0.167508, 0.238124, 0.956681,
		41.747669, 37.808880, 34.169807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399593, 37.704525, 33.586498>,  <41.630417, 37.642193, 33.500134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399593, 37.704525, 33.586498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230801, 37.638317, 33.943047>,  <42.129524, 37.598591, 34.156975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230801, 37.638317, 33.943047>,  <42.399593, 37.704525, 33.586498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230801, 37.638317, 33.943047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661530, -0.728514, 0.177891,
		0.619929, 0.664733, 0.416915,
		-0.421978, -0.165522, 0.891368,
		42.104206, 37.588661, 34.210457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942020, 37.778191, 34.116108>,  <42.399593, 37.704525, 33.586498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942020, 37.778191, 34.116108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644009, 37.560165, 34.269901>,  <42.465202, 37.429348, 34.362179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644009, 37.560165, 34.269901>,  <42.942020, 37.778191, 34.116108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644009, 37.560165, 34.269901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651092, -0.719512, 0.241624,
		0.144942, 0.430354, 0.890948,
		-0.745031, -0.545067, 0.384487,
		42.420498, 37.396645, 34.385246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100117, 37.551296, 34.874977>,  <42.942020, 37.778191, 34.116108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100117, 37.551296, 34.874977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826859, 37.305725, 34.716789>,  <42.662903, 37.158382, 34.621876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826859, 37.305725, 34.716789>,  <43.100117, 37.551296, 34.874977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826859, 37.305725, 34.716789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504973, -0.788326, 0.351489,
		-0.527552, 0.040415, 0.848561,
		-0.683148, -0.613929, -0.395474,
		42.621914, 37.121548, 34.598148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220551, 36.980450, 35.338154>,  <43.100117, 37.551296, 34.874977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220551, 36.980450, 35.338154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951828, 36.820839, 35.088528>,  <42.790596, 36.725071, 34.938751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951828, 36.820839, 35.088528>,  <43.220551, 36.980450, 35.338154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951828, 36.820839, 35.088528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370863, -0.910492, 0.182935,
		-0.641202, -0.108547, 0.759656,
		-0.671804, -0.399027, -0.624065,
		42.750286, 36.701130, 34.901310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821308, 36.505581, 35.666988>,  <43.220551, 36.980450, 35.338154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821308, 36.505581, 35.666988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773281, 36.398937, 35.284470>,  <42.744465, 36.334953, 35.054958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773281, 36.398937, 35.284470>,  <42.821308, 36.505581, 35.666988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773281, 36.398937, 35.284470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386786, -0.899713, 0.202268,
		-0.914319, -0.345596, 0.211149,
		-0.120070, -0.266607, -0.956297,
		42.737259, 36.318954, 34.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409443, 35.817646, 35.657486>,  <42.821308, 36.505581, 35.666988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409443, 35.817646, 35.657486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623482, 35.838772, 35.320232>,  <42.751904, 35.851448, 35.117878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623482, 35.838772, 35.320232>,  <42.409443, 35.817646, 35.657486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623482, 35.838772, 35.320232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362856, -0.915659, 0.172925,
		-0.762892, -0.398469, -0.509133,
		0.535098, 0.052819, -0.843137,
		42.784012, 35.854618, 35.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244179, 35.302700, 35.249439>,  <42.409443, 35.817646, 35.657486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244179, 35.302700, 35.249439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583805, 35.378601, 35.052227>,  <42.787582, 35.424141, 34.933899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583805, 35.378601, 35.052227>,  <42.244179, 35.302700, 35.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583805, 35.378601, 35.052227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244273, -0.968522, 0.047914,
		-0.468415, -0.161115, -0.868694,
		0.849069, 0.189754, -0.493026,
		42.838528, 35.435528, 34.904320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300957, 34.761303, 34.730518>,  <42.244179, 35.302700, 35.249439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300957, 34.761303, 34.730518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654995, 34.915977, 34.834114>,  <42.867416, 35.008781, 34.896271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654995, 34.915977, 34.834114>,  <42.300957, 34.761303, 34.730518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654995, 34.915977, 34.834114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315083, -0.907420, 0.278048,
		0.342535, -0.164494, -0.924993,
		0.885095, 0.386691, 0.258994,
		42.920525, 35.031986, 34.911812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680561, 34.259663, 34.565708>,  <42.300957, 34.761303, 34.730518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680561, 34.259663, 34.565708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936764, 34.477654, 34.782135>,  <43.090485, 34.608448, 34.911991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936764, 34.477654, 34.782135>,  <42.680561, 34.259663, 34.565708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936764, 34.477654, 34.782135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456169, -0.836784, 0.302823,
		0.617791, 0.052861, -0.784563,
		0.640503, 0.544975, 0.541072,
		43.128914, 34.641148, 34.944458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420399, 33.952297, 34.544922>,  <42.680561, 34.259663, 34.565708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420399, 33.952297, 34.544922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424206, 34.172840, 34.878609>,  <43.426491, 34.305164, 35.078819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424206, 34.172840, 34.878609>,  <43.420399, 33.952297, 34.544922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424206, 34.172840, 34.878609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401852, -0.766032, 0.501707,
		0.915655, 0.330454, -0.228858,
		0.009521, 0.551358, 0.834215,
		43.427063, 34.338249, 35.128872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117390, 33.838814, 34.861008>,  <43.420399, 33.952297, 34.544922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117390, 33.838814, 34.861008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873062, 33.966328, 35.150909>,  <43.726463, 34.042835, 35.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873062, 33.966328, 35.150909>,  <44.117390, 33.838814, 34.861008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873062, 33.966328, 35.150909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367019, -0.697082, 0.615933,
		0.701566, 0.642225, 0.308793,
		-0.610821, 0.318785, 0.724758,
		43.689816, 34.061962, 35.368336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528793, 34.057873, 35.504749>,  <44.117390, 33.838814, 34.861008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528793, 34.057873, 35.504749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163551, 33.960442, 35.635532>,  <43.944405, 33.901981, 35.714001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163551, 33.960442, 35.635532>,  <44.528793, 34.057873, 35.504749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163551, 33.960442, 35.635532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405506, -0.625918, 0.666177,
		0.042383, 0.740876, 0.670303,
		-0.913109, -0.243578, 0.326958,
		43.889618, 33.887367, 35.733620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288380, 34.237206, 35.353493>,  <44.528793, 34.057873, 35.504749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288380, 34.237206, 35.353493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527512, 34.466011, 35.578136>,  <45.670990, 34.603294, 35.712921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527512, 34.466011, 35.578136>,  <45.288380, 34.237206, 35.353493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527512, 34.466011, 35.578136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705691, -0.707876, -0.030208,
		0.380268, 0.414379, -0.826853,
		0.597827, 0.572016, 0.561606,
		45.706860, 34.637615, 35.746620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027180, 34.045097, 35.181419>,  <45.288380, 34.237206, 35.353493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027180, 34.045097, 35.181419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042789, 34.230228, 35.535656>,  <46.052155, 34.341309, 35.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042789, 34.230228, 35.535656>,  <46.027180, 34.045097, 35.181419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042789, 34.230228, 35.535656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904858, -0.392359, 0.165186,
		0.423921, 0.794886, -0.434104,
		0.039020, 0.462829, 0.885589,
		46.054497, 34.369076, 35.801334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566566, 34.626007, 35.209900>,  <46.027180, 34.045097, 35.181419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566566, 34.626007, 35.209900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501339, 34.396881, 35.531219>,  <46.462204, 34.259407, 35.724010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501339, 34.396881, 35.531219>,  <46.566566, 34.626007, 35.209900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501339, 34.396881, 35.531219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972912, -0.228588, 0.034495,
		0.163866, 0.787168, 0.594570,
		-0.163065, -0.572812, 0.803303,
		46.452419, 34.225037, 35.772209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.098640, 34.719837, 35.711075>,  <46.566566, 34.626007, 35.209900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.098640, 34.719837, 35.711075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954193, 34.364502, 35.824520>,  <46.867523, 34.151299, 35.892590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954193, 34.364502, 35.824520>,  <47.098640, 34.719837, 35.711075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.954193, 34.364502, 35.824520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930344, -0.363971, 0.044558,
		0.063645, 0.279953, 0.957902,
		-0.361123, -0.888342, 0.283618,
		46.845856, 34.098000, 35.909607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411808, 35.080841, 35.249149>,  <47.098640, 34.719837, 35.711075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411808, 35.080841, 35.249149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693108, 35.106281, 34.965912>,  <47.861889, 35.121544, 34.795971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693108, 35.106281, 34.965912>,  <47.411808, 35.080841, 35.249149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.693108, 35.106281, 34.965912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623254, 0.424036, 0.657075,
		0.342046, -0.903410, 0.258564,
		0.703249, 0.063599, -0.708094,
		47.904083, 35.125362, 34.753483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.569916, 42.741764, 41.238583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170570, 42.761326, 41.226730>,  <36.930962, 42.773064, 41.219620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170570, 42.761326, 41.226730>,  <37.569916, 42.741764, 41.238583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170570, 42.761326, 41.226730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013631, -0.706775, -0.707307,
		-0.055533, -0.705746, 0.706285,
		-0.998364, 0.048906, -0.029629,
		36.871059, 42.775997, 41.217842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289494, 42.043247, 41.212711>,  <37.569916, 42.741764, 41.238583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289494, 42.043247, 41.212711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027561, 42.303322, 41.058594>,  <36.870399, 42.459366, 40.966122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027561, 42.303322, 41.058594>,  <37.289494, 42.043247, 41.212711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027561, 42.303322, 41.058594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296491, -0.689941, -0.660360,
		-0.695204, -0.318173, 0.644560,
		-0.654817, 0.650191, -0.385314,
		36.831112, 42.498375, 40.943005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798653, 41.646042, 40.980495>,  <37.289494, 42.043247, 41.212711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798653, 41.646042, 40.980495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705021, 41.967384, 40.761467>,  <36.648842, 42.160191, 40.630051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705021, 41.967384, 40.761467>,  <36.798653, 41.646042, 40.980495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705021, 41.967384, 40.761467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209411, -0.591657, -0.778517,
		-0.949396, -0.067571, 0.306727,
		-0.234082, 0.803353, -0.547567,
		36.634796, 42.208389, 40.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304447, 41.381950, 40.647530>,  <36.798653, 41.646042, 40.980495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304447, 41.381950, 40.647530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393269, 41.712624, 40.440731>,  <36.446564, 41.911030, 40.316654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393269, 41.712624, 40.440731>,  <36.304447, 41.381950, 40.647530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393269, 41.712624, 40.440731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029172, -0.524360, -0.850997,
		-0.974597, 0.204051, -0.092321,
		0.222056, 0.826686, -0.516992,
		36.459885, 41.960629, 40.285633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718082, 41.446075, 40.143753>,  <36.304447, 41.381950, 40.647530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718082, 41.446075, 40.143753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045105, 41.639679, 40.018959>,  <36.241318, 41.755840, 39.944084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045105, 41.639679, 40.018959>,  <35.718082, 41.446075, 40.143753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045105, 41.639679, 40.018959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043386, -0.592017, -0.804757,
		-0.574210, 0.644400, -0.505007,
		0.817558, 0.484010, -0.311984,
		36.290371, 41.784882, 39.925365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670010, 41.555656, 39.439224>,  <35.718082, 41.446075, 40.143753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670010, 41.555656, 39.439224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061245, 41.614750, 39.497913>,  <36.295986, 41.650204, 39.533127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061245, 41.614750, 39.497913>,  <35.670010, 41.555656, 39.439224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061245, 41.614750, 39.497913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204524, -0.549694, -0.809943,
		-0.039002, 0.822200, -0.567861,
		0.978084, 0.147730, 0.146720,
		36.354671, 41.659069, 39.541931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848873, 41.671684, 38.821609>,  <35.670010, 41.555656, 39.439224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848873, 41.671684, 38.821609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.173046, 41.545216, 39.018887>,  <36.367550, 41.469334, 39.137253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.173046, 41.545216, 39.018887>,  <35.848873, 41.671684, 38.821609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173046, 41.545216, 39.018887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243171, -0.584358, -0.774205,
		0.532984, 0.747369, -0.396696,
		0.810429, -0.316174, 0.493192,
		36.416176, 41.450363, 39.166843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416145, 41.728283, 38.343258>,  <35.848873, 41.671684, 38.821609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416145, 41.728283, 38.343258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563854, 41.465923, 38.606602>,  <36.652477, 41.308506, 38.764606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563854, 41.465923, 38.606602>,  <36.416145, 41.728283, 38.343258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563854, 41.465923, 38.606602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246419, -0.613965, -0.749883,
		0.896057, 0.439140, -0.065092,
		0.369268, -0.655899, 0.658360,
		36.674633, 41.269154, 38.804111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797256, 41.382431, 37.882729>,  <36.416145, 41.728283, 38.343258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797256, 41.382431, 37.882729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798389, 41.154133, 38.211178>,  <36.799068, 41.017155, 38.408245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798389, 41.154133, 38.211178>,  <36.797256, 41.382431, 37.882729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798389, 41.154133, 38.211178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351064, -0.768291, -0.535241,
		0.936347, 0.289784, 0.198191,
		0.002836, -0.570749, 0.821120,
		36.799240, 40.982906, 38.457512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491119, 41.211163, 38.082401>,  <36.797256, 41.382431, 37.882729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491119, 41.211163, 38.082401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257118, 40.918400, 38.222164>,  <37.116718, 40.742744, 38.306023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257118, 40.918400, 38.222164>,  <37.491119, 41.211163, 38.082401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257118, 40.918400, 38.222164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477548, -0.659071, -0.581011,
		0.655529, -0.173034, 0.735079,
		-0.585004, -0.731905, 0.349408,
		37.081615, 40.698830, 38.326988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921101, 40.668903, 38.023567>,  <37.491119, 41.211163, 38.082401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921101, 40.668903, 38.023567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561756, 40.494530, 38.045181>,  <37.346149, 40.389908, 38.058147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561756, 40.494530, 38.045181>,  <37.921101, 40.668903, 38.023567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561756, 40.494530, 38.045181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335369, -0.760106, -0.556566,
		0.283695, -0.481874, 0.829044,
		-0.898357, -0.435931, 0.054033,
		37.292248, 40.363750, 38.061390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189529, 39.987438, 38.083633>,  <37.921101, 40.668903, 38.023567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189529, 39.987438, 38.083633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799000, 39.996914, 37.997620>,  <37.564682, 40.002602, 37.946011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799000, 39.996914, 37.997620>,  <38.189529, 39.987438, 38.083633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799000, 39.996914, 37.997620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085569, -0.870624, -0.484449,
		-0.198689, -0.491377, 0.847980,
		-0.976320, 0.023694, -0.215030,
		37.506104, 40.004021, 37.933109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029671, 39.427570, 38.339088>,  <38.189529, 39.987438, 38.083633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029671, 39.427570, 38.339088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748695, 39.497547, 38.063122>,  <37.580112, 39.539532, 37.897541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748695, 39.497547, 38.063122>,  <38.029671, 39.427570, 38.339088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748695, 39.497547, 38.063122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070127, -0.947596, -0.311681,
		-0.708284, -0.267317, 0.653357,
		-0.702436, 0.174941, -0.689913,
		37.537964, 39.550030, 37.856148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499519, 38.929142, 38.446014>,  <38.029671, 39.427570, 38.339088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499519, 38.929142, 38.446014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482468, 39.032181, 38.059891>,  <37.472237, 39.094002, 37.828217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482468, 39.032181, 38.059891>,  <37.499519, 38.929142, 38.446014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482468, 39.032181, 38.059891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023725, -0.966180, -0.256777,
		-0.998809, 0.011955, 0.047303,
		-0.042633, 0.257593, -0.965312,
		37.469677, 39.109459, 37.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007526, 38.448288, 38.097324>,  <37.499519, 38.929142, 38.446014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007526, 38.448288, 38.097324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243675, 38.622135, 37.825275>,  <37.385365, 38.726444, 37.662045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243675, 38.622135, 37.825275>,  <37.007526, 38.448288, 38.097324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243675, 38.622135, 37.825275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214097, -0.896784, -0.387222,
		-0.778214, 0.082995, -0.622490,
		0.590377, 0.434614, -0.680122,
		37.420788, 38.752518, 37.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794331, 38.064598, 37.539314>,  <37.007526, 38.448288, 38.097324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794331, 38.064598, 37.539314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144199, 38.203854, 37.404408>,  <37.354122, 38.287407, 37.323463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144199, 38.203854, 37.404408>,  <36.794331, 38.064598, 37.539314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144199, 38.203854, 37.404408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139507, -0.847173, -0.512674,
		-0.464207, 0.401370, -0.789566,
		0.874671, 0.348137, -0.337270,
		37.406601, 38.308296, 37.303226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819748, 37.806911, 36.967484>,  <36.794331, 38.064598, 37.539314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819748, 37.806911, 36.967484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202858, 37.901043, 37.033558>,  <37.432724, 37.957520, 37.073200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202858, 37.901043, 37.033558>,  <36.819748, 37.806911, 36.967484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202858, 37.901043, 37.033558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285492, -0.846389, -0.449578,
		0.034011, 0.477754, -0.877835,
		0.957778, 0.235324, 0.165181,
		37.490192, 37.971642, 37.083111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106209, 37.626797, 36.335617>,  <36.819748, 37.806911, 36.967484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106209, 37.626797, 36.335617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399296, 37.632351, 36.607773>,  <37.575150, 37.635685, 36.771069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399296, 37.632351, 36.607773>,  <37.106209, 37.626797, 36.335617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399296, 37.632351, 36.607773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261564, -0.928741, -0.262724,
		0.628259, 0.370469, -0.684137,
		0.732718, 0.013887, 0.680391,
		37.619110, 37.636517, 36.811890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614056, 37.342037, 36.000305>,  <37.106209, 37.626797, 36.335617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614056, 37.342037, 36.000305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696980, 37.293568, 36.388603>,  <37.746735, 37.264484, 36.621582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696980, 37.293568, 36.388603>,  <37.614056, 37.342037, 36.000305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696980, 37.293568, 36.388603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175995, -0.971489, -0.158853,
		0.962314, 0.203777, -0.180073,
		0.207309, -0.121175, 0.970742,
		37.759171, 37.257214, 36.679825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231239, 36.765125, 36.024178>,  <37.614056, 37.342037, 36.000305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231239, 36.765125, 36.024178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066490, 36.803345, 36.386665>,  <37.967640, 36.826275, 36.604156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066490, 36.803345, 36.386665>,  <38.231239, 36.765125, 36.024178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066490, 36.803345, 36.386665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078655, -0.987048, 0.139818,
		0.907840, 0.128866, 0.399025,
		-0.411874, 0.095547, 0.906218,
		37.942928, 36.832008, 36.658531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620594, 36.360672, 36.479813>,  <38.231239, 36.765125, 36.024178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620594, 36.360672, 36.479813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256924, 36.351311, 36.646111>,  <38.038719, 36.345692, 36.745892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256924, 36.351311, 36.646111>,  <38.620594, 36.360672, 36.479813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256924, 36.351311, 36.646111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074153, -0.991561, 0.106340,
		0.409751, 0.127511, 0.903242,
		-0.909179, -0.023405, 0.415748,
		37.984169, 36.344288, 36.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623356, 35.861813, 37.050220>,  <38.620594, 36.360672, 36.479813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623356, 35.861813, 37.050220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231667, 35.905979, 36.982189>,  <37.996651, 35.932480, 36.941372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231667, 35.905979, 36.982189>,  <38.623356, 35.861813, 37.050220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231667, 35.905979, 36.982189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119636, -0.991802, 0.044907,
		-0.163726, 0.064321, 0.984407,
		-0.979225, 0.110418, -0.170079,
		37.937901, 35.939106, 36.931164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987286, 35.271561, 37.074474>,  <38.623356, 35.861813, 37.050220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987286, 35.271561, 37.074474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.235413, 35.073898, 37.318119>,  <39.384289, 34.955299, 37.464306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.235413, 35.073898, 37.318119>,  <38.987286, 35.271561, 37.074474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235413, 35.073898, 37.318119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340333, 0.530095, 0.776642,
		-0.706670, -0.689064, 0.160648,
		0.620315, -0.494156, 0.609113,
		39.421509, 34.925652, 37.500854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574883, 35.203465, 37.680641>,  <38.987286, 35.271561, 37.074474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574883, 35.203465, 37.680641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950726, 35.128971, 37.795498>,  <39.176231, 35.084274, 37.864414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950726, 35.128971, 37.795498>,  <38.574883, 35.203465, 37.680641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950726, 35.128971, 37.795498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169423, 0.475881, 0.863037,
		-0.297376, -0.859566, 0.415589,
		0.939608, -0.186236, 0.287145,
		39.232609, 35.073101, 37.881641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577099, 35.012196, 38.506233>,  <38.574883, 35.203465, 37.680641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577099, 35.012196, 38.506233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949890, 35.126366, 38.416832>,  <39.173565, 35.194866, 38.363194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949890, 35.126366, 38.416832>,  <38.577099, 35.012196, 38.506233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949890, 35.126366, 38.416832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084163, 0.770032, 0.632430,
		0.352611, -0.570600, 0.741675,
		0.931977, 0.285423, -0.223499,
		39.229485, 35.211994, 38.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869644, 35.266056, 39.066296>,  <38.577099, 35.012196, 38.506233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869644, 35.266056, 39.066296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123196, 35.429493, 38.803616>,  <39.275326, 35.527554, 38.646008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123196, 35.429493, 38.803616>,  <38.869644, 35.266056, 39.066296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123196, 35.429493, 38.803616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292141, 0.659688, 0.692435,
		0.716142, -0.630765, 0.298791,
		0.633872, 0.408592, -0.656703,
		39.313358, 35.552071, 38.606606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401802, 35.406727, 39.402245>,  <38.869644, 35.266056, 39.066296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401802, 35.406727, 39.402245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419540, 35.660107, 39.093239>,  <39.430183, 35.812134, 38.907837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419540, 35.660107, 39.093239>,  <39.401802, 35.406727, 39.402245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419540, 35.660107, 39.093239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234405, 0.745087, 0.624419,
		0.971127, -0.208771, -0.115442,
		0.044346, 0.633451, -0.772511,
		39.432846, 35.850143, 38.861485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047031, 35.899452, 39.562340>,  <39.401802, 35.406727, 39.402245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047031, 35.899452, 39.562340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803757, 36.074478, 39.297417>,  <39.657791, 36.179493, 39.138462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803757, 36.074478, 39.297417>,  <40.047031, 35.899452, 39.562340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803757, 36.074478, 39.297417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123577, 0.876371, 0.465513,
		0.784117, 0.201272, -0.587069,
		-0.608185, 0.437565, -0.662305,
		39.621300, 36.205750, 39.098724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138134, 36.660141, 39.676674>,  <40.047031, 35.899452, 39.562340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138134, 36.660141, 39.676674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830120, 36.677029, 39.422035>,  <39.645309, 36.687160, 39.269253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830120, 36.677029, 39.422035>,  <40.138134, 36.660141, 39.676674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830120, 36.677029, 39.422035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243484, 0.902839, 0.354396,
		0.589711, 0.427900, -0.684940,
		-0.770037, 0.042219, -0.636601,
		39.599110, 36.689693, 39.231056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147110, 37.438759, 39.353336>,  <40.138134, 36.660141, 39.676674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147110, 37.438759, 39.353336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.781265, 37.280869, 39.318291>,  <39.561760, 37.186134, 39.297264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.781265, 37.280869, 39.318291>,  <40.147110, 37.438759, 39.353336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781265, 37.280869, 39.318291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403491, 0.877050, 0.260726,
		-0.026072, 0.273816, -0.961429,
		-0.914612, -0.394726, -0.087616,
		39.506882, 37.162453, 39.292007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758057, 37.948158, 38.904179>,  <40.147110, 37.438759, 39.353336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758057, 37.948158, 38.904179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524715, 37.726856, 39.142040>,  <39.384712, 37.594074, 39.284756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524715, 37.726856, 39.142040>,  <39.758057, 37.948158, 38.904179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524715, 37.726856, 39.142040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432139, 0.831319, 0.349521,
		-0.687720, -0.053080, -0.724032,
		-0.583349, -0.553255, 0.594653,
		39.349712, 37.560879, 39.320435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019180, 38.141251, 38.848839>,  <39.758057, 37.948158, 38.904179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019180, 38.141251, 38.848839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993343, 37.966702, 39.207817>,  <38.977840, 37.861973, 39.423203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993343, 37.966702, 39.207817>,  <39.019180, 38.141251, 38.848839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993343, 37.966702, 39.207817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550378, 0.765753, 0.332726,
		-0.832414, -0.472444, -0.289627,
		-0.064588, -0.436370, 0.897446,
		38.973969, 37.835789, 39.477051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496716, 38.461048, 39.155411>,  <39.019180, 38.141251, 38.848839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496716, 38.461048, 39.155411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643383, 38.280849, 39.481014>,  <38.731384, 38.172729, 39.676376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643383, 38.280849, 39.481014>,  <38.496716, 38.461048, 39.155411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643383, 38.280849, 39.481014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357432, 0.739585, 0.570312,
		-0.858951, -0.500068, 0.110161,
		0.366668, -0.450496, 0.814008,
		38.753384, 38.145702, 39.725216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898056, 38.344917, 39.629311>,  <38.496716, 38.461048, 39.155411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898056, 38.344917, 39.629311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220837, 38.347435, 39.865543>,  <38.414505, 38.348946, 40.007282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220837, 38.347435, 39.865543>,  <37.898056, 38.344917, 39.629311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220837, 38.347435, 39.865543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422803, 0.704359, 0.570189,
		-0.412393, -0.709816, 0.571046,
		0.806951, 0.006298, 0.590585,
		38.462921, 38.349323, 40.042717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659744, 38.464928, 40.429749>,  <37.898056, 38.344917, 39.629311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659744, 38.464928, 40.429749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048176, 38.560383, 40.432884>,  <38.281235, 38.617657, 40.434765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048176, 38.560383, 40.432884>,  <37.659744, 38.464928, 40.429749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048176, 38.560383, 40.432884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166811, 0.654563, 0.737374,
		0.170832, -0.717356, 0.675439,
		0.971077, 0.238638, 0.007843,
		38.339500, 38.631973, 40.435238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890232, 38.353455, 41.114185>,  <37.659744, 38.464928, 40.429749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890232, 38.353455, 41.114185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150482, 38.613277, 40.956829>,  <38.306633, 38.769173, 40.862415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150482, 38.613277, 40.956829>,  <37.890232, 38.353455, 41.114185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150482, 38.613277, 40.956829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205503, 0.649303, 0.732239,
		0.731060, -0.395574, 0.555942,
		0.650630, 0.649559, -0.393388,
		38.345673, 38.808144, 40.838814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302265, 38.492012, 41.625729>,  <37.890232, 38.353455, 41.114185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302265, 38.492012, 41.625729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368069, 38.808201, 41.389729>,  <38.407551, 38.997913, 41.248131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368069, 38.808201, 41.389729>,  <38.302265, 38.492012, 41.625729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368069, 38.808201, 41.389729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039358, 0.592408, 0.804676,
		0.985590, -0.155597, 0.066345,
		0.164508, 0.790470, -0.589996,
		38.417419, 39.045341, 41.212730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911030, 38.798267, 41.916603>,  <38.302265, 38.492012, 41.625729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911030, 38.798267, 41.916603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706997, 39.068413, 41.703548>,  <38.584576, 39.230499, 41.575718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706997, 39.068413, 41.703548>,  <38.911030, 38.798267, 41.916603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706997, 39.068413, 41.703548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179666, 0.689250, 0.701893,
		0.841152, 0.262327, -0.472915,
		-0.510082, 0.675366, -0.532632,
		38.553970, 39.271023, 41.543758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323219, 39.442955, 42.049847>,  <38.911030, 38.798267, 41.916603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323219, 39.442955, 42.049847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999596, 39.592903, 41.868786>,  <38.805420, 39.682873, 41.760151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999596, 39.592903, 41.868786>,  <39.323219, 39.442955, 42.049847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999596, 39.592903, 41.868786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106093, 0.850673, 0.514878,
		0.578072, 0.368545, -0.728017,
		-0.809060, 0.374874, -0.452650,
		38.756878, 39.705364, 41.732990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516533, 40.218349, 41.845516>,  <39.323219, 39.442955, 42.049847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516533, 40.218349, 41.845516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123909, 40.152546, 41.884445>,  <38.888332, 40.113064, 41.907803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123909, 40.152546, 41.884445>,  <39.516533, 40.218349, 41.845516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123909, 40.152546, 41.884445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082268, 0.823203, 0.561755,
		-0.172526, 0.543392, -0.821559,
		-0.981564, -0.164505, 0.097320,
		38.829441, 40.103195, 41.913643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.168808, 40.918217, 41.925259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.884636, 40.669121, 42.056396>,  <38.714134, 40.519661, 42.135078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.884636, 40.669121, 42.056396>,  <39.168808, 40.918217, 41.925259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884636, 40.669121, 42.056396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318793, 0.700066, 0.638967,
		-0.627425, 0.349426, -0.695873,
		-0.710429, -0.622743, 0.327844,
		38.671509, 40.482296, 42.154751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486168, 41.170204, 41.770454>,  <39.168808, 40.918217, 41.925259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486168, 41.170204, 41.770454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469521, 40.929504, 42.089497>,  <38.459534, 40.785084, 42.280922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469521, 40.929504, 42.089497>,  <38.486168, 41.170204, 41.770454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469521, 40.929504, 42.089497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270543, 0.775259, 0.570772,
		-0.961808, -0.192033, -0.195060,
		-0.041615, -0.601745, 0.797603,
		38.457035, 40.748981, 42.328777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864609, 41.422485, 42.105499>,  <38.486168, 41.170204, 41.770454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864609, 41.422485, 42.105499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086342, 41.215542, 42.366283>,  <38.219383, 41.091373, 42.522755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086342, 41.215542, 42.366283>,  <37.864609, 41.422485, 42.105499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086342, 41.215542, 42.366283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180589, 0.689900, 0.701018,
		-0.812465, -0.506336, 0.289006,
		0.554335, -0.517362, 0.651959,
		38.252644, 41.060333, 42.561871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573921, 41.507816, 42.757137>,  <37.864609, 41.422485, 42.105499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573921, 41.507816, 42.757137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936665, 41.377571, 42.864151>,  <38.154312, 41.299423, 42.928360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936665, 41.377571, 42.864151>,  <37.573921, 41.507816, 42.757137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936665, 41.377571, 42.864151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060150, 0.528327, 0.846908,
		-0.417114, -0.784120, 0.459533,
		0.906861, -0.325617, 0.267538,
		38.208721, 41.279884, 42.944412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574715, 41.421711, 43.535133>,  <37.573921, 41.507816, 42.757137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574715, 41.421711, 43.535133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963188, 41.464134, 43.449760>,  <38.196274, 41.489590, 43.398537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963188, 41.464134, 43.449760>,  <37.574715, 41.421711, 43.535133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963188, 41.464134, 43.449760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130088, 0.514460, 0.847590,
		0.199695, -0.850931, 0.485839,
		0.971184, 0.106058, -0.213430,
		38.254543, 41.495953, 43.385731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898300, 41.401978, 44.174145>,  <37.574715, 41.421711, 43.535133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898300, 41.401978, 44.174145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172993, 41.567753, 43.935268>,  <38.337811, 41.667217, 43.791943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172993, 41.567753, 43.935268>,  <37.898300, 41.401978, 44.174145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172993, 41.567753, 43.935268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253451, 0.633474, 0.731076,
		0.681292, -0.653413, 0.329988,
		0.686734, 0.414441, -0.597189,
		38.379013, 41.692085, 43.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473934, 41.500748, 44.651386>,  <37.898300, 41.401978, 44.174145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473934, 41.500748, 44.651386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479782, 41.757408, 44.344643>,  <38.483292, 41.911404, 44.160599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479782, 41.757408, 44.344643>,  <38.473934, 41.500748, 44.651386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479782, 41.757408, 44.344643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031040, 0.766859, 0.641065,
		0.999411, 0.014430, 0.031128,
		0.014621, 0.641654, -0.766855,
		38.484169, 41.949905, 44.114586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885059, 42.016712, 44.870182>,  <38.473934, 41.500748, 44.651386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885059, 42.016712, 44.870182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692978, 42.190392, 44.565319>,  <38.577728, 42.294598, 44.382401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692978, 42.190392, 44.565319>,  <38.885059, 42.016712, 44.870182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692978, 42.190392, 44.565319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103779, 0.834666, 0.540891,
		0.870997, 0.338833, -0.355748,
		-0.480203, 0.434195, -0.762155,
		38.548916, 42.320648, 44.336674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203407, 42.546520, 44.746033>,  <38.885059, 42.016712, 44.870182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203407, 42.546520, 44.746033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851265, 42.652416, 44.588612>,  <38.639980, 42.715954, 44.494160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851265, 42.652416, 44.588612>,  <39.203407, 42.546520, 44.746033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851265, 42.652416, 44.588612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054103, 0.880367, 0.471197,
		0.471216, 0.393529, -0.789361,
		-0.880357, 0.264743, -0.393552,
		38.587158, 42.731838, 44.470547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277328, 43.199650, 44.756599>,  <39.203407, 42.546520, 44.746033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277328, 43.199650, 44.756599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890820, 43.147251, 44.667923>,  <38.658913, 43.115810, 44.614716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890820, 43.147251, 44.667923>,  <39.277328, 43.199650, 44.756599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890820, 43.147251, 44.667923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235133, 0.799851, 0.552223,
		0.104983, 0.585728, -0.803680,
		-0.966277, -0.130997, -0.221695,
		38.600937, 43.107952, 44.601414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122162, 43.858948, 44.510742>,  <39.277328, 43.199650, 44.756599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122162, 43.858948, 44.510742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806610, 43.669594, 44.667496>,  <38.617279, 43.555981, 44.761547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806610, 43.669594, 44.667496>,  <39.122162, 43.858948, 44.510742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806610, 43.669594, 44.667496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090896, 0.720546, 0.687424,
		-0.607784, 0.506677, -0.611455,
		-0.788883, -0.473384, 0.391881,
		38.569946, 43.527580, 44.785061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720573, 44.435139, 44.606255>,  <39.122162, 43.858948, 44.510742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720573, 44.435139, 44.606255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537426, 44.160294, 44.831902>,  <38.427536, 43.995384, 44.967289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537426, 44.160294, 44.831902>,  <38.720573, 44.435139, 44.606255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537426, 44.160294, 44.831902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021943, 0.625612, 0.779825,
		-0.888749, 0.369436, -0.271371,
		-0.457868, -0.687115, 0.564119,
		38.400066, 43.954159, 45.001137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176212, 44.830662, 45.005974>,  <38.720573, 44.435139, 44.606255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176212, 44.830662, 45.005974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244160, 44.496166, 45.214531>,  <38.284927, 44.295467, 45.339664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244160, 44.496166, 45.214531>,  <38.176212, 44.830662, 45.005974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244160, 44.496166, 45.214531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025739, 0.525135, 0.850630,
		-0.985131, -0.157914, 0.067680,
		0.169868, -0.836239, 0.521391,
		38.295120, 44.245293, 45.370949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585602, 44.734695, 45.521534>,  <38.176212, 44.830662, 45.005974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585602, 44.734695, 45.521534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895966, 44.520985, 45.655704>,  <38.082184, 44.392757, 45.736206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895966, 44.520985, 45.655704>,  <37.585602, 44.734695, 45.521534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895966, 44.520985, 45.655704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083407, 0.440160, 0.894037,
		-0.625303, -0.721671, 0.296963,
		0.775912, -0.534275, 0.335426,
		38.128738, 44.360703, 45.756332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310837, 44.438519, 46.157734>,  <37.585602, 44.734695, 45.521534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310837, 44.438519, 46.157734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709633, 44.409088, 46.167503>,  <37.948910, 44.391430, 46.173363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709633, 44.409088, 46.167503>,  <37.310837, 44.438519, 46.157734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709633, 44.409088, 46.167503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002205, 0.287973, 0.957636,
		-0.077493, -0.954808, 0.286945,
		0.996990, -0.073578, 0.024421,
		38.008732, 44.387016, 46.174831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487621, 43.999805, 46.776657>,  <37.310837, 44.438519, 46.157734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487621, 43.999805, 46.776657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805054, 44.225582, 46.685764>,  <37.995514, 44.361046, 46.631229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805054, 44.225582, 46.685764>,  <37.487621, 43.999805, 46.776657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805054, 44.225582, 46.685764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103454, 0.242853, 0.964531,
		0.599603, -0.788943, 0.134330,
		0.793583, 0.564439, -0.227234,
		38.043129, 44.394913, 46.617596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974983, 43.864231, 47.278019>,  <37.487621, 43.999805, 46.776657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974983, 43.864231, 47.278019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065536, 44.218662, 47.116226>,  <38.119869, 44.431320, 47.019150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065536, 44.218662, 47.116226>,  <37.974983, 43.864231, 47.278019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065536, 44.218662, 47.116226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086367, 0.395369, 0.914453,
		0.970201, -0.241955, 0.012978,
		0.226388, 0.886082, -0.404484,
		38.133453, 44.484486, 46.994881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495838, 44.003704, 47.737198>,  <37.974983, 43.864231, 47.278019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495838, 44.003704, 47.737198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369675, 44.337265, 47.556034>,  <38.293976, 44.537403, 47.447338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369675, 44.337265, 47.556034>,  <38.495838, 44.003704, 47.737198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369675, 44.337265, 47.556034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194673, 0.523978, 0.829186,
		0.928773, 0.173365, -0.327606,
		-0.315410, 0.833902, -0.452907,
		38.275051, 44.587437, 47.420162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030159, 44.473530, 47.921978>,  <38.495838, 44.003704, 47.737198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030159, 44.473530, 47.921978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710918, 44.690243, 47.816521>,  <38.519375, 44.820271, 47.753246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710918, 44.690243, 47.816521>,  <39.030159, 44.473530, 47.921978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710918, 44.690243, 47.816521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125076, 0.577005, 0.807107,
		0.589399, 0.611177, -0.528272,
		-0.798100, 0.541783, -0.263642,
		38.471489, 44.852779, 47.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235760, 45.015968, 48.183453>,  <39.030159, 44.473530, 47.921978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235760, 45.015968, 48.183453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846489, 45.082607, 48.119995>,  <38.612926, 45.122589, 48.081921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846489, 45.082607, 48.119995>,  <39.235760, 45.015968, 48.183453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846489, 45.082607, 48.119995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007452, 0.666419, 0.745540,
		0.229928, 0.726726, -0.647304,
		-0.973179, 0.166596, -0.158644,
		38.554535, 45.132587, 48.072403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087975, 45.730831, 48.273254>,  <39.235760, 45.015968, 48.183453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087975, 45.730831, 48.273254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735317, 45.559528, 48.352558>,  <38.523724, 45.456745, 48.400139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735317, 45.559528, 48.352558>,  <39.087975, 45.730831, 48.273254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735317, 45.559528, 48.352558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078523, 0.547372, 0.833198,
		-0.465345, 0.719012, -0.516213,
		-0.881639, -0.428259, 0.198258,
		38.470825, 45.431049, 48.412037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632435, 46.237759, 48.381840>,  <39.087975, 45.730831, 48.273254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632435, 46.237759, 48.381840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496040, 45.920940, 48.584377>,  <38.414204, 45.730850, 48.705902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496040, 45.920940, 48.584377>,  <38.632435, 46.237759, 48.381840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496040, 45.920940, 48.584377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070597, 0.558683, 0.826371,
		-0.937412, 0.246038, -0.246422,
		-0.340991, -0.792047, 0.506347,
		38.393742, 45.683327, 48.736282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028435, 46.306610, 48.572128>,  <38.632435, 46.237759, 48.381840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028435, 46.306610, 48.572128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113159, 46.040962, 48.858925>,  <38.163994, 45.881573, 49.031002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113159, 46.040962, 48.858925>,  <38.028435, 46.306610, 48.572128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113159, 46.040962, 48.858925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365856, 0.626410, 0.688302,
		-0.906248, -0.408106, -0.110293,
		0.211811, -0.664124, 0.716991,
		38.176704, 45.841724, 49.074020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355919, 46.514832, 48.737839>,  <38.028435, 46.306610, 48.572128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355919, 46.514832, 48.737839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988628, 46.581238, 48.594006>,  <36.768253, 46.621082, 48.507706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988628, 46.581238, 48.594006>,  <37.355919, 46.514832, 48.737839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988628, 46.581238, 48.594006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160137, -0.674755, -0.720459,
		-0.362234, -0.719128, 0.592994,
		-0.918228, 0.166015, -0.359579,
		36.713161, 46.631042, 48.486134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191372, 45.943790, 48.406643>,  <37.355919, 46.514832, 48.737839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191372, 45.943790, 48.406643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880409, 46.168888, 48.294254>,  <36.693832, 46.303947, 48.226822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880409, 46.168888, 48.294254>,  <37.191372, 45.943790, 48.406643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880409, 46.168888, 48.294254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155858, -0.605120, -0.780729,
		-0.609402, -0.563137, 0.558127,
		-0.777391, 0.562766, -0.280992,
		36.647186, 46.337711, 48.209961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640129, 45.478989, 48.326370>,  <37.191372, 45.943790, 48.406643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640129, 45.478989, 48.326370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550781, 45.807842, 48.116913>,  <36.497173, 46.005154, 47.991238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.550781, 45.807842, 48.116913>,  <36.640129, 45.478989, 48.326370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550781, 45.807842, 48.116913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311817, -0.569252, -0.760738,
		-0.923513, -0.006647, 0.383511,
		-0.223371, 0.822136, -0.523639,
		36.483768, 46.054482, 47.959820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060478, 45.428005, 48.031639>,  <36.640129, 45.478989, 48.326370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060478, 45.428005, 48.031639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187874, 45.736420, 47.811069>,  <36.264309, 45.921467, 47.678726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187874, 45.736420, 47.811069>,  <36.060478, 45.428005, 48.031639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187874, 45.736420, 47.811069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285581, -0.476647, -0.831415,
		-0.903886, 0.422271, 0.068387,
		0.318486, 0.771034, -0.551428,
		36.283421, 45.967731, 47.645641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492584, 45.622749, 47.472076>,  <36.060478, 45.428005, 48.031639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492584, 45.622749, 47.472076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838726, 45.759144, 47.325169>,  <36.046410, 45.840981, 47.237022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838726, 45.759144, 47.325169>,  <35.492584, 45.622749, 47.472076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838726, 45.759144, 47.325169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207711, -0.422912, -0.882044,
		-0.456090, 0.839567, -0.295142,
		0.865354, 0.340987, -0.367274,
		36.098331, 45.861439, 47.214985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262829, 45.899910, 46.898441>,  <35.492584, 45.622749, 47.472076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262829, 45.899910, 46.898441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658466, 45.850807, 46.865898>,  <35.895851, 45.821346, 46.846371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658466, 45.850807, 46.865898>,  <35.262829, 45.899910, 46.898441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658466, 45.850807, 46.865898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112303, -0.271340, -0.955909,
		0.095267, 0.954623, -0.282168,
		0.989097, -0.122755, -0.081357,
		35.955196, 45.813980, 46.841492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278748, 45.977047, 46.222649>,  <35.262829, 45.899910, 46.898441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278748, 45.977047, 46.222649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.636314, 45.820435, 46.309937>,  <35.850853, 45.726467, 46.362309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.636314, 45.820435, 46.309937>,  <35.278748, 45.977047, 46.222649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636314, 45.820435, 46.309937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060171, -0.377608, -0.924008,
		0.444182, 0.839114, -0.313990,
		0.893914, -0.391534, 0.218217,
		35.904488, 45.702972, 46.375401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649853, 46.151203, 45.587700>,  <35.278748, 45.977047, 46.222649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649853, 46.151203, 45.587700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812531, 45.844509, 45.786381>,  <35.910137, 45.660492, 45.905590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812531, 45.844509, 45.786381>,  <35.649853, 46.151203, 45.587700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812531, 45.844509, 45.786381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251008, -0.428989, -0.867735,
		0.878404, 0.477581, 0.017988,
		0.406697, -0.766736, 0.496702,
		35.934540, 45.614487, 45.935390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299995, 46.051289, 45.290554>,  <35.649853, 46.151203, 45.587700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299995, 46.051289, 45.290554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172161, 45.713505, 45.462486>,  <36.095463, 45.510834, 45.565647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172161, 45.713505, 45.462486>,  <36.299995, 46.051289, 45.290554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172161, 45.713505, 45.462486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111585, -0.484005, -0.867921,
		0.940965, -0.229409, 0.248909,
		-0.319583, -0.844459, 0.429833,
		36.076286, 45.460167, 45.591434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749111, 45.574333, 45.143780>,  <36.299995, 46.051289, 45.290554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749111, 45.574333, 45.143780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439026, 45.340672, 45.239948>,  <36.252975, 45.200474, 45.297649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439026, 45.340672, 45.239948>,  <36.749111, 45.574333, 45.143780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439026, 45.340672, 45.239948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313177, -0.685930, -0.656826,
		0.548600, -0.433888, 0.714688,
		-0.775215, -0.584159, 0.240417,
		36.206463, 45.165424, 45.312073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990303, 45.029583, 44.973648>,  <36.749111, 45.574333, 45.143780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990303, 45.029583, 44.973648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608223, 44.919746, 45.017822>,  <36.378975, 44.853844, 45.044327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608223, 44.919746, 45.017822>,  <36.990303, 45.029583, 44.973648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608223, 44.919746, 45.017822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079483, -0.597414, -0.797984,
		0.285099, -0.753454, 0.592474,
		-0.955197, -0.274596, 0.110435,
		36.321663, 44.837368, 45.050953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009060, 44.355099, 45.081600>,  <36.990303, 45.029583, 44.973648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009060, 44.355099, 45.081600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647736, 44.446980, 44.936676>,  <36.430943, 44.502110, 44.849720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647736, 44.446980, 44.936676>,  <37.009060, 44.355099, 45.081600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647736, 44.446980, 44.936676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169916, -0.583913, -0.793835,
		-0.393906, -0.778640, 0.488423,
		-0.903309, 0.229706, -0.362311,
		36.376743, 44.515892, 44.827984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713409, 43.772644, 45.031891>,  <37.009060, 44.355099, 45.081600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713409, 43.772644, 45.031891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538967, 44.032345, 44.782642>,  <36.434299, 44.188168, 44.633095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538967, 44.032345, 44.782642>,  <36.713409, 43.772644, 45.031891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538967, 44.032345, 44.782642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295819, -0.550522, -0.780652,
		-0.849883, -0.524779, 0.048025,
		-0.436108, 0.649256, -0.623119,
		36.408134, 44.227123, 44.595707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443188, 43.346447, 44.465324>,  <36.713409, 43.772644, 45.031891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443188, 43.346447, 44.465324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417458, 43.716042, 44.314529>,  <36.402020, 43.937798, 44.224052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417458, 43.716042, 44.314529>,  <36.443188, 43.346447, 44.465324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417458, 43.716042, 44.314529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074286, -0.372283, -0.925142,
		-0.995160, -0.087515, -0.044692,
		-0.064326, 0.923984, -0.376983,
		36.398159, 43.993237, 44.201435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924179, 43.274406, 43.985992>,  <36.443188, 43.346447, 44.465324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924179, 43.274406, 43.985992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144760, 43.597786, 43.903713>,  <36.277107, 43.791813, 43.854343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144760, 43.597786, 43.903713>,  <35.924179, 43.274406, 43.985992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144760, 43.597786, 43.903713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001264, -0.247393, -0.968915,
		-0.834207, 0.534048, -0.137446,
		0.551450, 0.808449, -0.205702,
		36.310196, 43.840321, 43.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685131, 43.391136, 43.410049>,  <35.924179, 43.274406, 43.985992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685131, 43.391136, 43.410049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029114, 43.593048, 43.379948>,  <36.235504, 43.714195, 43.361889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029114, 43.593048, 43.379948>,  <35.685131, 43.391136, 43.410049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029114, 43.593048, 43.379948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020850, -0.112573, -0.993425,
		-0.509935, 0.855874, -0.086284,
		0.859960, 0.504783, -0.075250,
		36.287102, 43.744484, 43.357372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621262, 43.771927, 42.760883>,  <35.685131, 43.391136, 43.410049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621262, 43.771927, 42.760883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010773, 43.765167, 42.851635>,  <36.244480, 43.761112, 42.906086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010773, 43.765167, 42.851635>,  <35.621262, 43.771927, 42.760883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010773, 43.765167, 42.851635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204339, -0.373480, -0.904853,
		0.100024, 0.927484, -0.360233,
		0.973777, -0.016897, 0.226878,
		36.302906, 43.760098, 42.919697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869591, 44.232548, 42.339981>,  <35.621262, 43.771927, 42.760883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869591, 44.232548, 42.339981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152279, 43.975132, 42.457561>,  <36.321892, 43.820683, 42.528111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152279, 43.975132, 42.457561>,  <35.869591, 44.232548, 42.339981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152279, 43.975132, 42.457561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122368, -0.298036, -0.946679,
		0.696828, 0.705009, -0.131880,
		0.706722, -0.643535, 0.293951,
		36.364296, 43.782070, 42.545746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464870, 44.307346, 41.842129>,  <35.869591, 44.232548, 42.339981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464870, 44.307346, 41.842129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508320, 43.948769, 42.013988>,  <36.534389, 43.733624, 42.117104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508320, 43.948769, 42.013988>,  <36.464870, 44.307346, 41.842129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508320, 43.948769, 42.013988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171571, -0.408812, -0.896346,
		0.979165, 0.171077, 0.109397,
		0.108621, -0.896440, 0.429647,
		36.540905, 43.679836, 42.142883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023399, 43.930332, 41.449886>,  <36.464870, 44.307346, 41.842129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023399, 43.930332, 41.449886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860516, 43.623058, 41.647503>,  <36.762787, 43.438694, 41.766071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860516, 43.623058, 41.647503>,  <37.023399, 43.930332, 41.449886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860516, 43.623058, 41.647503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140841, -0.587260, -0.797050,
		0.902412, -0.254982, 0.347327,
		-0.407205, -0.768186, 0.494039,
		36.738354, 43.392601, 41.795715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436131, 43.421074, 41.474907>,  <37.023399, 43.930332, 41.449886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436131, 43.421074, 41.474907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075199, 43.249622, 41.493164>,  <36.858643, 43.146751, 41.504116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075199, 43.249622, 41.493164>,  <37.436131, 43.421074, 41.474907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075199, 43.249622, 41.493164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282897, -0.668751, -0.687561,
		0.325232, -0.607493, 0.724691,
		-0.902327, -0.428630, 0.045641,
		36.804501, 43.121033, 41.506855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.359192, 37.776287, 31.426674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070568, 37.662598, 31.679203>,  <37.897392, 37.594383, 31.830721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070568, 37.662598, 31.679203>,  <38.359192, 37.776287, 31.426674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070568, 37.662598, 31.679203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622004, 0.134366, 0.771399,
		-0.304076, 0.949297, 0.079833,
		-0.721560, -0.284221, 0.631324,
		37.854099, 37.577332, 31.868601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589256, 38.062321, 32.040432>,  <38.359192, 37.776287, 31.426674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589256, 38.062321, 32.040432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294811, 37.821545, 32.164249>,  <38.118145, 37.677078, 32.238541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294811, 37.821545, 32.164249>,  <38.589256, 38.062321, 32.040432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294811, 37.821545, 32.164249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512821, -0.197500, 0.835469,
		-0.441765, 0.773735, 0.454067,
		-0.736110, -0.601936, 0.309539,
		38.073978, 37.640965, 32.257111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558464, 38.138340, 32.725979>,  <38.589256, 38.062321, 32.040432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558464, 38.138340, 32.725979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355003, 37.794823, 32.701515>,  <38.232925, 37.588711, 32.686836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355003, 37.794823, 32.701515>,  <38.558464, 38.138340, 32.725979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355003, 37.794823, 32.701515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473526, -0.338371, 0.813190,
		-0.719059, 0.384671, 0.578776,
		-0.508652, -0.858797, -0.061157,
		38.202408, 37.537182, 32.683167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229519, 37.995583, 33.393066>,  <38.558464, 38.138340, 32.725979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229519, 37.995583, 33.393066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.268684, 37.644436, 33.205551>,  <38.292183, 37.433746, 33.093040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.268684, 37.644436, 33.205551>,  <38.229519, 37.995583, 33.393066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268684, 37.644436, 33.205551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472840, -0.373456, 0.798093,
		-0.875692, -0.299804, 0.378525,
		0.097910, -0.877866, -0.468792,
		38.298058, 37.381077, 33.064915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042381, 37.570061, 33.874115>,  <38.229519, 37.995583, 33.393066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042381, 37.570061, 33.874115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199322, 37.325684, 33.599068>,  <38.293484, 37.179058, 33.434040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199322, 37.325684, 33.599068>,  <38.042381, 37.570061, 33.874115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199322, 37.325684, 33.599068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316930, -0.611991, 0.724584,
		-0.863492, -0.502216, -0.046490,
		0.392349, -0.610938, -0.687617,
		38.317028, 37.142403, 33.392784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888054, 36.865292, 33.961884>,  <38.042381, 37.570061, 33.874115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888054, 36.865292, 33.961884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221985, 36.852859, 33.742031>,  <38.422344, 36.845402, 33.610119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221985, 36.852859, 33.742031>,  <37.888054, 36.865292, 33.961884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221985, 36.852859, 33.742031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325616, -0.777159, 0.538514,
		-0.443888, -0.628536, -0.638674,
		0.834828, -0.031077, -0.549634,
		38.472435, 36.843536, 33.577141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040558, 36.150143, 33.753632>,  <37.888054, 36.865292, 33.961884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040558, 36.150143, 33.753632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407043, 36.306355, 33.717793>,  <38.626934, 36.400082, 33.696289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407043, 36.306355, 33.717793>,  <38.040558, 36.150143, 33.753632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407043, 36.306355, 33.717793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371047, -0.742579, 0.557584,
		0.151223, -0.544114, -0.825271,
		0.916218, 0.390534, -0.089597,
		38.681908, 36.423515, 33.690914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468044, 35.630249, 33.599270>,  <38.040558, 36.150143, 33.753632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468044, 35.630249, 33.599270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734097, 35.894558, 33.738400>,  <38.893726, 36.053143, 33.821877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734097, 35.894558, 33.738400>,  <38.468044, 35.630249, 33.599270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734097, 35.894558, 33.738400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449627, -0.726289, 0.519942,
		0.596186, -0.189436, -0.780177,
		0.665130, 0.660771, 0.347827,
		38.933636, 36.092789, 33.842747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148453, 35.345570, 33.421894>,  <38.468044, 35.630249, 33.599270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148453, 35.345570, 33.421894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201248, 35.614922, 33.712860>,  <39.232925, 35.776535, 33.887440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201248, 35.614922, 33.712860>,  <39.148453, 35.345570, 33.421894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201248, 35.614922, 33.712860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433366, -0.699191, 0.568618,
		0.891500, 0.240185, -0.384109,
		0.131992, 0.673382, 0.727416,
		39.240845, 35.816936, 33.931084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880344, 35.260338, 33.752441>,  <39.148453, 35.345570, 33.421894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880344, 35.260338, 33.752441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.714020, 35.482521, 34.040485>,  <39.614223, 35.615833, 34.213314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.714020, 35.482521, 34.040485>,  <39.880344, 35.260338, 33.752441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714020, 35.482521, 34.040485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332528, -0.644124, 0.688861,
		0.846478, 0.525895, 0.083128,
		-0.415813, 0.555463, 0.720112,
		39.589275, 35.649158, 34.256519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405407, 35.529530, 34.085545>,  <39.880344, 35.260338, 33.752441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405407, 35.529530, 34.085545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110207, 35.532223, 34.355453>,  <39.933086, 35.533840, 34.517399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110207, 35.532223, 34.355453>,  <40.405407, 35.529530, 34.085545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110207, 35.532223, 34.355453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542351, -0.589060, 0.599052,
		0.401517, 0.808061, 0.431071,
		-0.737997, 0.006737, 0.674770,
		39.888809, 35.534245, 34.557884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675209, 35.783447, 34.733864>,  <40.405407, 35.529530, 34.085545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675209, 35.783447, 34.733864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355785, 35.554966, 34.809792>,  <40.164131, 35.417877, 34.855350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355785, 35.554966, 34.809792>,  <40.675209, 35.783447, 34.733864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355785, 35.554966, 34.809792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527750, -0.512779, 0.677154,
		-0.289454, 0.640927, 0.710936,
		-0.798559, -0.571201, 0.189823,
		40.116219, 35.383606, 34.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779411, 35.589233, 35.428497>,  <40.675209, 35.783447, 34.733864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779411, 35.589233, 35.428497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483116, 35.348846, 35.308399>,  <40.305340, 35.204617, 35.236340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483116, 35.348846, 35.308399>,  <40.779411, 35.589233, 35.428497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483116, 35.348846, 35.308399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365266, -0.735384, 0.570780,
		-0.563812, 0.313132, 0.764241,
		-0.740741, -0.600964, -0.300242,
		40.260895, 35.168556, 35.218327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504341, 35.398506, 35.988846>,  <40.779411, 35.589233, 35.428497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504341, 35.398506, 35.988846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.406807, 35.117504, 35.721405>,  <40.348286, 34.948902, 35.560940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.406807, 35.117504, 35.721405>,  <40.504341, 35.398506, 35.988846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406807, 35.117504, 35.721405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343020, -0.707318, 0.618093,
		-0.907129, -0.078634, 0.413441,
		-0.243831, -0.702509, -0.668602,
		40.333656, 34.906750, 35.520824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095329, 34.862106, 36.309391>,  <40.504341, 35.398506, 35.988846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095329, 34.862106, 36.309391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251461, 34.696026, 35.980698>,  <40.345142, 34.596378, 35.783482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251461, 34.696026, 35.980698>,  <40.095329, 34.862106, 36.309391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251461, 34.696026, 35.980698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296484, -0.788304, 0.539142,
		-0.871629, -0.454076, -0.184601,
		0.390333, -0.415201, -0.821736,
		40.368561, 34.571465, 35.734177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152439, 34.248489, 36.469223>,  <40.095329, 34.862106, 36.309391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152439, 34.248489, 36.469223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381508, 34.194626, 36.145763>,  <40.518948, 34.162308, 35.951687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381508, 34.194626, 36.145763>,  <40.152439, 34.248489, 36.469223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381508, 34.194626, 36.145763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506195, -0.717826, 0.478010,
		-0.644840, -0.683076, -0.342912,
		0.572668, -0.134659, -0.808652,
		40.553307, 34.154228, 35.903168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100330, 33.503738, 36.384083>,  <40.152439, 34.248489, 36.469223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100330, 33.503738, 36.384083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418587, 33.632793, 36.179001>,  <40.609539, 33.710224, 36.055950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418587, 33.632793, 36.179001>,  <40.100330, 33.503738, 36.384083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418587, 33.632793, 36.179001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548702, -0.742465, 0.384280,
		-0.256686, -0.587072, -0.767762,
		0.795637, 0.322634, -0.512708,
		40.657276, 33.729584, 36.025188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325268, 32.914291, 36.104500>,  <40.100330, 33.503738, 36.384083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325268, 32.914291, 36.104500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619389, 33.184021, 36.131676>,  <40.795860, 33.345860, 36.147980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619389, 33.184021, 36.131676>,  <40.325268, 32.914291, 36.104500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619389, 33.184021, 36.131676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585928, -0.682875, 0.436314,
		0.340610, -0.281017, -0.897226,
		0.735305, 0.674323, 0.067938,
		40.839981, 33.386318, 36.152058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866177, 32.560711, 36.202789>,  <40.325268, 32.914291, 36.104500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866177, 32.560711, 36.202789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042645, 32.906277, 36.299965>,  <41.148525, 33.113617, 36.358273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042645, 32.906277, 36.299965>,  <40.866177, 32.560711, 36.202789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042645, 32.906277, 36.299965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694202, -0.500085, 0.517686,
		0.568727, -0.059738, -0.820354,
		0.441172, 0.863913, 0.242942,
		41.174995, 33.165451, 36.372849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601536, 32.481522, 36.130596>,  <40.866177, 32.560711, 36.202789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601536, 32.481522, 36.130596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549171, 32.788986, 36.381042>,  <41.517754, 32.973465, 36.531311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549171, 32.788986, 36.381042>,  <41.601536, 32.481522, 36.130596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549171, 32.788986, 36.381042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601615, -0.440377, 0.666429,
		0.787986, 0.463921, -0.404791,
		-0.130910, 0.768665, 0.626112,
		41.509899, 33.019585, 36.568874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242397, 32.687065, 36.254417>,  <41.601536, 32.481522, 36.130596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242397, 32.687065, 36.254417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.017063, 32.858788, 36.536793>,  <41.881863, 32.961823, 36.706219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.017063, 32.858788, 36.536793>,  <42.242397, 32.687065, 36.254417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017063, 32.858788, 36.536793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643883, -0.307296, 0.700702,
		0.517749, 0.849272, -0.103313,
		-0.563338, 0.429309, 0.705934,
		41.848061, 32.987579, 36.748573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827259, 33.036610, 35.832325>,  <42.242397, 32.687065, 36.254417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827259, 33.036610, 35.832325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.185650, 33.196465, 35.909794>,  <43.400684, 33.292377, 35.956276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.185650, 33.196465, 35.909794>,  <42.827259, 33.036610, 35.832325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185650, 33.196465, 35.909794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274051, 0.840732, -0.466974,
		-0.349449, 0.365322, 0.862800,
		0.895980, 0.399635, 0.193676,
		43.454445, 33.316357, 35.967896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703091, 33.679604, 36.136963>,  <42.827259, 33.036610, 35.832325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703091, 33.679604, 36.136963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073215, 33.764549, 36.011299>,  <43.295292, 33.815517, 35.935902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073215, 33.764549, 36.011299>,  <42.703091, 33.679604, 36.136963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073215, 33.764549, 36.011299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316425, 0.888976, -0.331055,
		0.208979, 0.405738, 0.889778,
		0.925312, 0.212365, -0.314163,
		43.350811, 33.828259, 35.917049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809299, 34.494305, 36.276211>,  <42.703091, 33.679604, 36.136963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809299, 34.494305, 36.276211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078861, 34.375809, 36.005478>,  <43.240597, 34.304710, 35.843040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078861, 34.375809, 36.005478>,  <42.809299, 34.494305, 36.276211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078861, 34.375809, 36.005478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114124, 0.863358, -0.491516,
		0.729954, 0.408476, 0.548010,
		0.673901, -0.296243, -0.676829,
		43.281033, 34.286934, 35.802429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285038, 35.086868, 36.150818>,  <42.809299, 34.494305, 36.276211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285038, 35.086868, 36.150818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.317005, 34.843513, 35.834976>,  <43.336185, 34.697498, 35.645470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.317005, 34.843513, 35.834976>,  <43.285038, 35.086868, 36.150818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317005, 34.843513, 35.834976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036346, 0.789832, -0.612245,
		0.996139, 0.077627, 0.041008,
		0.079916, -0.608391, -0.789604,
		43.340981, 34.660995, 35.598095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841839, 35.390083, 35.778992>,  <43.285038, 35.086868, 36.150818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841839, 35.390083, 35.778992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634403, 35.157806, 35.527958>,  <43.509941, 35.018440, 35.377338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634403, 35.157806, 35.527958>,  <43.841839, 35.390083, 35.778992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634403, 35.157806, 35.527958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106481, 0.772146, -0.626460,
		0.848367, -0.258050, -0.462259,
		-0.518590, -0.580690, -0.627586,
		43.478825, 34.983601, 35.339684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102669, 35.605816, 35.070358>,  <43.841839, 35.390083, 35.778992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102669, 35.605816, 35.070358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740246, 35.439003, 35.041656>,  <43.522793, 35.338917, 35.024433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740246, 35.439003, 35.041656>,  <44.102669, 35.605816, 35.070358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740246, 35.439003, 35.041656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285686, 0.727944, -0.623282,
		0.312161, -0.544229, -0.778698,
		-0.906057, -0.417028, -0.071757,
		43.468430, 35.313896, 35.020130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961525, 35.901531, 34.467007>,  <44.102669, 35.605816, 35.070358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961525, 35.901531, 34.467007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610382, 35.730026, 34.552361>,  <43.399696, 35.627121, 34.603573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610382, 35.730026, 34.552361>,  <43.961525, 35.901531, 34.467007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610382, 35.730026, 34.552361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466061, 0.867376, -0.174487,
		-0.110269, -0.252623, -0.961261,
		-0.877854, -0.428766, 0.213382,
		43.347027, 35.601395, 34.616375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418175, 36.101910, 33.973972>,  <43.961525, 35.901531, 34.467007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418175, 36.101910, 33.973972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.206581, 36.016430, 34.302486>,  <43.079624, 35.965141, 34.499596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.206581, 36.016430, 34.302486>,  <43.418175, 36.101910, 33.973972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206581, 36.016430, 34.302486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534056, 0.835935, -0.126475,
		-0.659513, -0.505516, -0.556324,
		-0.528986, -0.213697, 0.821284,
		43.047886, 35.952320, 34.548870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723846, 36.041195, 33.742783>,  <43.418175, 36.101910, 33.973972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723846, 36.041195, 33.742783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745640, 36.139771, 34.129833>,  <42.758717, 36.198914, 34.362064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745640, 36.139771, 34.129833>,  <42.723846, 36.041195, 33.742783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745640, 36.139771, 34.129833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603593, 0.780097, -0.164691,
		-0.795429, -0.575080, 0.191248,
		0.054481, 0.246436, 0.967627,
		42.761986, 36.213703, 34.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082268, 36.085300, 33.981739>,  <42.723846, 36.041195, 33.742783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082268, 36.085300, 33.981739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278595, 36.287308, 34.265724>,  <42.396393, 36.408512, 34.436115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278595, 36.287308, 34.265724>,  <42.082268, 36.085300, 33.981739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278595, 36.287308, 34.265724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484012, 0.835611, -0.259782,
		-0.724451, -0.216126, 0.654569,
		0.490820, 0.505018, 0.709967,
		42.425842, 36.438812, 34.478714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535053, 36.419346, 34.366764>,  <42.082268, 36.085300, 33.981739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535053, 36.419346, 34.366764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870598, 36.623978, 34.441162>,  <42.071926, 36.746758, 34.485802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870598, 36.623978, 34.441162>,  <41.535053, 36.419346, 34.366764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870598, 36.623978, 34.441162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506661, 0.858717, -0.076811,
		-0.199016, -0.029805, 0.979543,
		0.838860, 0.511583, 0.185999,
		42.122257, 36.777454, 34.496964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454433, 36.821930, 34.981323>,  <41.535053, 36.419346, 34.366764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454433, 36.821930, 34.981323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736664, 36.994396, 34.756374>,  <41.906002, 37.097878, 34.621407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736664, 36.994396, 34.756374>,  <41.454433, 36.821930, 34.981323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736664, 36.994396, 34.756374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454009, 0.884375, 0.108424,
		0.544095, 0.178820, 0.819746,
		0.705575, 0.431165, -0.562370,
		41.948338, 37.123745, 34.587662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593418, 37.448788, 35.359379>,  <41.454433, 36.821930, 34.981323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593418, 37.448788, 35.359379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758541, 37.493900, 34.997856>,  <41.857616, 37.520969, 34.780941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758541, 37.493900, 34.997856>,  <41.593418, 37.448788, 35.359379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758541, 37.493900, 34.997856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408347, 0.909906, -0.072964,
		0.814150, 0.399187, 0.421675,
		0.412811, 0.112786, -0.903807,
		41.882385, 37.527737, 34.726715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957256, 38.159935, 35.410168>,  <41.593418, 37.448788, 35.359379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957256, 38.159935, 35.410168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.902172, 38.054653, 35.028225>,  <41.869122, 37.991486, 34.799057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.902172, 38.054653, 35.028225>,  <41.957256, 38.159935, 35.410168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902172, 38.054653, 35.028225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481861, 0.860073, -0.167584,
		0.865359, 0.437032, -0.245269,
		-0.137710, -0.263205, -0.954861,
		41.860859, 37.975693, 34.741768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101597, 38.796013, 35.003033>,  <41.957256, 38.159935, 35.410168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101597, 38.796013, 35.003033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877811, 38.571198, 34.759354>,  <41.743542, 38.436310, 34.613148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877811, 38.571198, 34.759354>,  <42.101597, 38.796013, 35.003033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877811, 38.571198, 34.759354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507186, 0.813452, -0.284707,
		0.655566, 0.149692, -0.740153,
		-0.559460, -0.562039, -0.609193,
		41.709972, 38.402584, 34.576595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958996, 39.250881, 34.450069>,  <42.101597, 38.796013, 35.003033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958996, 39.250881, 34.450069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692745, 38.952614, 34.437935>,  <41.532997, 38.773651, 34.430653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692745, 38.952614, 34.437935>,  <41.958996, 39.250881, 34.450069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692745, 38.952614, 34.437935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730490, 0.659316, -0.178007,
		0.152736, -0.096326, -0.983561,
		-0.665624, -0.745670, -0.030336,
		41.493057, 38.728912, 34.428833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440525, 39.323292, 33.885227>,  <41.958996, 39.250881, 34.450069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440525, 39.323292, 33.885227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254639, 39.056698, 34.118408>,  <41.143108, 38.896740, 34.258316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254639, 39.056698, 34.118408>,  <41.440525, 39.323292, 33.885227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254639, 39.056698, 34.118408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881917, 0.407238, -0.237444,
		-0.079147, -0.624461, -0.777036,
		-0.464713, -0.666488, 0.582954,
		41.115227, 38.856750, 34.293293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889565, 38.957176, 33.490906>,  <41.440525, 39.323292, 33.885227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889565, 38.957176, 33.490906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816410, 38.964455, 33.884090>,  <40.772518, 38.968822, 34.120003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816410, 38.964455, 33.884090>,  <40.889565, 38.957176, 33.490906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816410, 38.964455, 33.884090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912175, 0.369813, -0.176563,
		-0.366727, -0.928928, -0.051033,
		-0.182887, 0.018199, 0.982966,
		40.761543, 38.969913, 34.178982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273155, 38.587284, 33.491207>,  <40.889565, 38.957176, 33.490906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273155, 38.587284, 33.491207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309280, 38.800236, 33.827877>,  <40.330956, 38.928005, 34.029881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309280, 38.800236, 33.827877>,  <40.273155, 38.587284, 33.491207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309280, 38.800236, 33.827877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972443, 0.229535, -0.040835,
		-0.214934, -0.814795, 0.538435,
		0.090317, 0.532375, 0.841677,
		40.336376, 38.959949, 34.080379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705460, 38.273735, 33.899723>,  <40.273155, 38.587284, 33.491207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705460, 38.273735, 33.899723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806496, 38.634518, 34.039818>,  <39.867119, 38.850986, 34.123875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806496, 38.634518, 34.039818>,  <39.705460, 38.273735, 33.899723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806496, 38.634518, 34.039818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959781, 0.279412, -0.027376,
		-0.122553, -0.329237, 0.936261,
		0.252589, 0.901960, 0.350238,
		39.882271, 38.905106, 34.144890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131130, 38.547939, 34.278648>,  <39.705460, 38.273735, 33.899723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131130, 38.547939, 34.278648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354420, 38.878307, 34.247063>,  <39.488392, 39.076530, 34.228111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354420, 38.878307, 34.247063>,  <39.131130, 38.547939, 34.278648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354420, 38.878307, 34.247063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822229, 0.563428, 0.080544,
		0.111011, 0.019961, 0.993619,
		0.558225, 0.825924, -0.078959,
		39.521889, 39.126083, 34.223373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.533890, 38.305386, 40.760437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193958, 38.320168, 40.550137>,  <38.989998, 38.329037, 40.423954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193958, 38.320168, 40.550137>,  <39.533890, 38.305386, 40.760437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193958, 38.320168, 40.550137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255402, -0.843715, -0.472138,
		-0.461037, -0.535517, 0.707578,
		-0.849833, 0.036957, -0.525756,
		38.939007, 38.331253, 40.392410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339844, 37.633839, 40.760178>,  <39.533890, 38.305386, 40.760437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339844, 37.633839, 40.760178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144608, 37.785549, 40.445747>,  <39.027466, 37.876575, 40.257088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144608, 37.785549, 40.445747>,  <39.339844, 37.633839, 40.760178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144608, 37.785549, 40.445747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165813, -0.843949, -0.510154,
		-0.856901, -0.379341, 0.349030,
		-0.488085, 0.379278, -0.786080,
		38.998180, 37.899334, 40.209923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759090, 37.160076, 40.580910>,  <39.339844, 37.633839, 40.760178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759090, 37.160076, 40.580910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834019, 37.365280, 40.245831>,  <38.878975, 37.488403, 40.044785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834019, 37.365280, 40.245831>,  <38.759090, 37.160076, 40.580910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834019, 37.365280, 40.245831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244332, -0.850320, -0.466109,
		-0.951428, -0.117366, -0.284624,
		0.187316, 0.513011, -0.837694,
		38.890213, 37.519184, 39.994522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484890, 36.804909, 40.047928>,  <38.759090, 37.160076, 40.580910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484890, 36.804909, 40.047928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740807, 37.032574, 39.841351>,  <38.894356, 37.169174, 39.717403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740807, 37.032574, 39.841351>,  <38.484890, 36.804909, 40.047928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740807, 37.032574, 39.841351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209145, -0.775553, -0.595631,
		-0.739543, 0.273068, -0.615231,
		0.639792, 0.569167, -0.516444,
		38.932743, 37.203323, 39.686417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356770, 36.583782, 39.353184>,  <38.484890, 36.804909, 40.047928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356770, 36.583782, 39.353184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715633, 36.760464, 39.352444>,  <38.930950, 36.866474, 39.352001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715633, 36.760464, 39.352444>,  <38.356770, 36.583782, 39.353184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715633, 36.760464, 39.352444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376061, -0.766007, -0.521356,
		-0.231702, 0.467043, -0.853338,
		0.897158, 0.441706, -0.001849,
		38.984779, 36.892975, 39.351891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429108, 36.765820, 38.720203>,  <38.356770, 36.583782, 39.353184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429108, 36.765820, 38.720203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789204, 36.742165, 38.892750>,  <39.005260, 36.727970, 38.996277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789204, 36.742165, 38.892750>,  <38.429108, 36.765820, 38.720203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789204, 36.742165, 38.892750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267013, -0.707580, -0.654244,
		0.343917, 0.704155, -0.621198,
		0.900236, -0.059138, 0.431367,
		39.059273, 36.724422, 39.022160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845249, 36.679111, 38.216721>,  <38.429108, 36.765820, 38.720203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845249, 36.679111, 38.216721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102715, 36.547714, 38.493210>,  <39.257195, 36.468876, 38.659103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102715, 36.547714, 38.493210>,  <38.845249, 36.679111, 38.216721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102715, 36.547714, 38.493210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303090, -0.719931, -0.624369,
		0.702737, 0.611385, -0.363826,
		0.643659, -0.328495, 0.691226,
		39.295811, 36.449165, 38.700577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378872, 36.632969, 37.865341>,  <38.845249, 36.679111, 38.216721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378872, 36.632969, 37.865341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398197, 36.371101, 38.167091>,  <39.409794, 36.213982, 38.348141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398197, 36.371101, 38.167091>,  <39.378872, 36.632969, 37.865341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398197, 36.371101, 38.167091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298201, -0.711355, -0.636436,
		0.953280, 0.255704, 0.160853,
		0.048315, -0.654667, 0.754371,
		39.412693, 36.174702, 38.393402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048084, 36.232906, 37.817131>,  <39.378872, 36.632969, 37.865341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048084, 36.232906, 37.817131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804607, 36.009987, 38.043018>,  <39.658520, 35.876236, 38.178551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804607, 36.009987, 38.043018>,  <40.048084, 36.232906, 37.817131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804607, 36.009987, 38.043018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186349, -0.792278, -0.581007,
		0.771213, -0.248419, 0.586105,
		-0.608692, -0.557300, 0.564722,
		39.622002, 35.842796, 38.212437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413780, 35.616230, 38.013000>,  <40.048084, 36.232906, 37.817131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413780, 35.616230, 38.013000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049023, 35.483929, 38.110195>,  <39.830166, 35.404549, 38.168514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049023, 35.483929, 38.110195>,  <40.413780, 35.616230, 38.013000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049023, 35.483929, 38.110195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168129, -0.841146, -0.514009,
		0.374401, -0.427870, 0.822649,
		-0.911897, -0.330757, 0.242989,
		39.775452, 35.384701, 38.183090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487816, 34.900959, 38.173889>,  <40.413780, 35.616230, 38.013000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487816, 34.900959, 38.173889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098064, 34.959980, 38.105984>,  <39.864212, 34.995392, 38.065243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098064, 34.959980, 38.105984>,  <40.487816, 34.900959, 38.173889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098064, 34.959980, 38.105984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049745, -0.877433, -0.477113,
		-0.219350, -0.456443, 0.862290,
		-0.974377, 0.147550, -0.169759,
		39.805752, 35.004246, 38.055058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117115, 34.247246, 38.347668>,  <40.487816, 34.900959, 38.173889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117115, 34.247246, 38.347668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918446, 34.460251, 38.073517>,  <39.799244, 34.588055, 37.909027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918446, 34.460251, 38.073517>,  <40.117115, 34.247246, 38.347668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918446, 34.460251, 38.073517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044202, -0.804157, -0.592771,
		-0.866810, -0.264120, 0.422944,
		-0.496676, 0.532515, -0.685377,
		39.769444, 34.620007, 37.867905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475628, 33.887791, 38.036171>,  <40.117115, 34.247246, 38.347668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475628, 33.887791, 38.036171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630234, 34.155262, 37.782093>,  <39.722996, 34.315746, 37.629646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630234, 34.155262, 37.782093>,  <39.475628, 33.887791, 38.036171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630234, 34.155262, 37.782093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246308, -0.738548, -0.627598,
		-0.888785, 0.086121, -0.450160,
		0.386514, 0.668678, -0.635199,
		39.746189, 34.355865, 37.591534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984428, 33.379253, 37.939491>,  <39.475628, 33.887791, 38.036171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984428, 33.379253, 37.939491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867096, 32.997437, 37.918316>,  <39.796696, 32.768345, 37.905609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867096, 32.997437, 37.918316>,  <39.984428, 33.379253, 37.939491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867096, 32.997437, 37.918316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912978, 0.263272, 0.311705,
		-0.283598, 0.139766, -0.948703,
		-0.293332, -0.954544, -0.052940,
		39.779095, 32.711075, 37.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333012, 33.290726, 37.632446>,  <39.984428, 33.379253, 37.939491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333012, 33.290726, 37.632446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350868, 32.978680, 37.882065>,  <39.361584, 32.791454, 38.031837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350868, 32.978680, 37.882065>,  <39.333012, 33.290726, 37.632446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350868, 32.978680, 37.882065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861326, 0.286393, 0.419638,
		-0.506087, -0.556242, -0.659144,
		0.044646, -0.780112, 0.624045,
		39.364262, 32.744648, 38.069279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557308, 32.920170, 37.671322>,  <39.333012, 33.290726, 37.632446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557308, 32.920170, 37.671322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774746, 32.864388, 38.002396>,  <38.905209, 32.830917, 38.201038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774746, 32.864388, 38.002396>,  <38.557308, 32.920170, 37.671322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774746, 32.864388, 38.002396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752195, 0.356607, 0.554107,
		-0.372432, -0.923787, 0.088950,
		0.543596, -0.139459, 0.827680,
		38.937824, 32.822548, 38.250698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998371, 32.568913, 38.173447>,  <38.557308, 32.920170, 37.671322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998371, 32.568913, 38.173447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301754, 32.737511, 38.372276>,  <38.483784, 32.838669, 38.491573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301754, 32.737511, 38.372276>,  <37.998371, 32.568913, 38.173447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301754, 32.737511, 38.372276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649291, 0.422921, 0.632107,
		0.056205, -0.802174, 0.594439,
		0.758461, 0.421491, 0.497074,
		38.529293, 32.863956, 38.521397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791161, 32.457432, 38.835651>,  <37.998371, 32.568913, 38.173447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791161, 32.457432, 38.835651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077419, 32.734592, 38.870850>,  <38.249172, 32.900890, 38.891968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077419, 32.734592, 38.870850>,  <37.791161, 32.457432, 38.835651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077419, 32.734592, 38.870850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544930, 0.475073, 0.690911,
		0.436924, -0.542401, 0.717565,
		0.715646, 0.692898, 0.087999,
		38.292110, 32.942463, 38.897247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901505, 32.536583, 39.565643>,  <37.791161, 32.457432, 38.835651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901505, 32.536583, 39.565643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056664, 32.874222, 39.417572>,  <38.149757, 33.076805, 39.328728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056664, 32.874222, 39.417572>,  <37.901505, 32.536583, 39.565643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056664, 32.874222, 39.417572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395589, 0.515217, 0.760303,
		0.832495, -0.148476, 0.533766,
		0.387892, 0.844101, -0.370180,
		38.173031, 33.127453, 39.306519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244892, 32.863960, 40.034821>,  <37.901505, 32.536583, 39.565643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244892, 32.863960, 40.034821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132278, 33.145882, 39.774364>,  <38.064713, 33.315033, 39.618092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132278, 33.145882, 39.774364>,  <38.244892, 32.863960, 40.034821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132278, 33.145882, 39.774364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410917, 0.524666, 0.745569,
		0.867114, 0.477468, 0.141906,
		-0.281533, 0.704805, -0.651145,
		38.047817, 33.357323, 39.579021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494526, 33.415577, 40.247639>,  <38.244892, 32.863960, 40.034821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494526, 33.415577, 40.247639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212261, 33.578159, 40.015488>,  <38.042904, 33.675709, 39.876198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212261, 33.578159, 40.015488>,  <38.494526, 33.415577, 40.247639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212261, 33.578159, 40.015488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402925, 0.443575, 0.800557,
		0.582833, 0.798769, -0.149241,
		-0.705660, 0.406458, -0.580375,
		38.000565, 33.700096, 39.841373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452801, 34.066578, 40.382717>,  <38.494526, 33.415577, 40.247639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452801, 34.066578, 40.382717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115253, 34.065712, 40.168098>,  <37.912724, 34.065193, 40.039330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115253, 34.065712, 40.168098>,  <38.452801, 34.066578, 40.382717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115253, 34.065712, 40.168098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345570, 0.767157, 0.540417,
		0.410447, 0.641455, -0.648127,
		-0.843869, -0.002161, -0.536545,
		37.862091, 34.065063, 40.007133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346310, 34.739136, 40.097454>,  <38.452801, 34.066578, 40.382717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346310, 34.739136, 40.097454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984570, 34.571972, 40.132103>,  <37.767525, 34.471672, 40.152893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984570, 34.571972, 40.132103>,  <38.346310, 34.739136, 40.097454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984570, 34.571972, 40.132103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335375, 0.821368, 0.461388,
		-0.263968, 0.388205, -0.882960,
		-0.904348, -0.417914, 0.086621,
		37.713264, 34.446598, 40.158089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938885, 35.286602, 40.172943>,  <38.346310, 34.739136, 40.097454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938885, 35.286602, 40.172943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686466, 35.003979, 40.301037>,  <37.535015, 34.834404, 40.377892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686466, 35.003979, 40.301037>,  <37.938885, 35.286602, 40.172943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686466, 35.003979, 40.301037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462332, 0.674037, 0.576128,
		-0.622916, 0.215513, -0.752017,
		-0.631050, -0.706561, 0.320230,
		37.497150, 34.792011, 40.397106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249737, 35.520805, 39.926373>,  <37.938885, 35.286602, 40.172943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249737, 35.520805, 39.926373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193356, 35.260582, 40.224876>,  <37.159527, 35.104450, 40.403980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193356, 35.260582, 40.224876>,  <37.249737, 35.520805, 39.926373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193356, 35.260582, 40.224876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408505, 0.724846, 0.554727,
		-0.901807, -0.226664, -0.367923,
		-0.140951, -0.650556, 0.746264,
		37.151070, 35.065414, 40.448757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545383, 35.471172, 40.099766>,  <37.249737, 35.520805, 39.926373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545383, 35.471172, 40.099766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741714, 35.352367, 40.427391>,  <36.859512, 35.281086, 40.623966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741714, 35.352367, 40.427391>,  <36.545383, 35.471172, 40.099766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741714, 35.352367, 40.427391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496515, 0.677148, 0.543086,
		-0.715933, -0.673242, 0.184893,
		0.490828, -0.297011, 0.819068,
		36.888962, 35.263264, 40.673111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004044, 35.348652, 40.492596>,  <36.545383, 35.471172, 40.099766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004044, 35.348652, 40.492596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321327, 35.390690, 40.732521>,  <36.511700, 35.415913, 40.876476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321327, 35.390690, 40.732521>,  <36.004044, 35.348652, 40.492596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321327, 35.390690, 40.732521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473820, 0.725235, 0.499529,
		-0.382506, -0.680434, 0.625059,
		0.793211, 0.105092, 0.599810,
		36.559292, 35.422218, 40.912464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708015, 35.400776, 41.117641>,  <36.004044, 35.348652, 40.492596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708015, 35.400776, 41.117641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068111, 35.565342, 41.174648>,  <36.284168, 35.664082, 41.208851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068111, 35.565342, 41.174648>,  <35.708015, 35.400776, 41.117641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068111, 35.565342, 41.174648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434599, 0.829298, 0.351267,
		0.026326, -0.378162, 0.925365,
		0.900239, 0.411410, 0.142517,
		36.338184, 35.688766, 41.217403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713009, 34.862339, 41.532520>,  <35.708015, 35.400776, 41.117641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713009, 34.862339, 41.532520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335796, 34.985050, 41.584015>,  <35.109467, 35.058678, 41.614910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335796, 34.985050, 41.584015>,  <35.713009, 34.862339, 41.532520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335796, 34.985050, 41.584015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269014, -0.475453, -0.837601,
		-0.195751, -0.824519, 0.530896,
		-0.943034, 0.306779, 0.128737,
		35.052887, 35.077084, 41.622635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386364, 34.231606, 41.646126>,  <35.713009, 34.862339, 41.532520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386364, 34.231606, 41.646126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123631, 34.503052, 41.514641>,  <34.965992, 34.665920, 41.435749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123631, 34.503052, 41.514641>,  <35.386364, 34.231606, 41.646126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123631, 34.503052, 41.514641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169585, -0.557715, -0.812524,
		-0.734718, -0.477948, 0.481409,
		-0.656833, 0.678616, -0.328710,
		34.926579, 34.706638, 41.416027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855011, 33.824425, 41.376415>,  <35.386364, 34.231606, 41.646126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855011, 33.824425, 41.376415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802834, 34.195667, 41.236927>,  <34.771526, 34.418411, 41.153233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802834, 34.195667, 41.236927>,  <34.855011, 33.824425, 41.376415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802834, 34.195667, 41.236927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275782, -0.371813, -0.886397,
		-0.952328, -0.019450, 0.304454,
		-0.130441, 0.928104, -0.348724,
		34.763702, 34.474098, 41.132309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109386, 33.886539, 41.244461>,  <34.855011, 33.824425, 41.376415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109386, 33.886539, 41.244461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299870, 34.164886, 41.029427>,  <34.414158, 34.331894, 40.900406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299870, 34.164886, 41.029427>,  <34.109386, 33.886539, 41.244461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299870, 34.164886, 41.029427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457904, -0.325685, -0.827196,
		-0.750699, 0.640081, 0.163545,
		0.476208, 0.695863, -0.537587,
		34.442734, 34.373646, 40.868149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615463, 34.293037, 40.854935>,  <34.109386, 33.886539, 41.244461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615463, 34.293037, 40.854935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963947, 34.322830, 40.660847>,  <34.173038, 34.340706, 40.544395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963947, 34.322830, 40.660847>,  <33.615463, 34.293037, 40.854935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963947, 34.322830, 40.660847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424322, -0.382781, -0.820628,
		-0.246856, 0.920832, -0.301879,
		0.871213, 0.074483, -0.485221,
		34.225311, 34.345177, 40.515282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431435, 34.448490, 40.259872>,  <33.615463, 34.293037, 40.854935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431435, 34.448490, 40.259872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804821, 34.355869, 40.150314>,  <34.028854, 34.300297, 40.084579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804821, 34.355869, 40.150314>,  <33.431435, 34.448490, 40.259872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804821, 34.355869, 40.150314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336154, -0.298576, -0.893227,
		0.125053, 0.925870, -0.356549,
		0.933468, -0.231556, -0.273897,
		34.084862, 34.286404, 40.068146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450218, 34.722103, 39.498047>,  <33.431435, 34.448490, 40.259872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450218, 34.722103, 39.498047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748608, 34.467045, 39.574917>,  <33.927643, 34.314011, 39.621040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748608, 34.467045, 39.574917>,  <33.450218, 34.722103, 39.498047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748608, 34.467045, 39.574917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125764, -0.418249, -0.899584,
		0.653994, 0.646896, -0.392195,
		0.745973, -0.637647, 0.192177,
		33.972401, 34.275749, 39.632568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795532, 34.715191, 38.909557>,  <33.450218, 34.722103, 39.498047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795532, 34.715191, 38.909557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900948, 34.375374, 39.092342>,  <33.964199, 34.171482, 39.202015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900948, 34.375374, 39.092342>,  <33.795532, 34.715191, 38.909557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900948, 34.375374, 39.092342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135084, -0.501548, -0.854519,
		0.955143, 0.163472, -0.246939,
		0.263542, -0.849545, 0.456967,
		33.980011, 34.120510, 39.229431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203419, 34.490864, 38.426884>,  <33.795532, 34.715191, 38.909557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203419, 34.490864, 38.426884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094273, 34.183098, 38.657898>,  <34.028786, 33.998436, 38.796505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094273, 34.183098, 38.657898>,  <34.203419, 34.490864, 38.426884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094273, 34.183098, 38.657898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078758, -0.580433, -0.810491,
		0.958824, -0.266639, 0.097781,
		-0.272863, -0.769417, 0.577532,
		34.012413, 33.952274, 38.831158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398518, 33.916546, 38.011059>,  <34.203419, 34.490864, 38.426884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398518, 33.916546, 38.011059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132462, 33.784992, 38.279213>,  <33.972828, 33.706059, 38.440105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132462, 33.784992, 38.279213>,  <34.398518, 33.916546, 38.011059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132462, 33.784992, 38.279213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368463, -0.636312, -0.677747,
		0.649477, -0.697812, 0.302057,
		-0.665142, -0.328884, 0.670388,
		33.932919, 33.686329, 38.480328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405323, 33.213966, 37.877914>,  <34.398518, 33.916546, 38.011059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405323, 33.213966, 37.877914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063213, 33.304344, 38.064445>,  <33.857948, 33.358570, 38.176365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063213, 33.304344, 38.064445>,  <34.405323, 33.213966, 37.877914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063213, 33.304344, 38.064445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500976, -0.590533, -0.632688,
		0.132426, -0.774738, 0.618260,
		-0.855270, 0.225949, 0.466327,
		33.806633, 33.372128, 38.204342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034256, 32.556068, 38.141209>,  <34.405323, 33.213966, 37.877914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034256, 32.556068, 38.141209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762882, 32.845516, 38.090450>,  <33.600060, 33.019184, 38.059998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762882, 32.845516, 38.090450>,  <34.034256, 32.556068, 38.141209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762882, 32.845516, 38.090450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541428, -0.609219, -0.579403,
		-0.496574, -0.324382, 0.805103,
		-0.678432, 0.723622, -0.126893,
		33.559353, 33.062603, 38.052383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.140762, 36.127373, 45.404442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962677, 36.445557, 45.239990>,  <34.855824, 36.636467, 45.141319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962677, 36.445557, 45.239990>,  <35.140762, 36.127373, 45.404442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962677, 36.445557, 45.239990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039645, -0.476205, -0.878440,
		-0.894545, -0.374797, 0.243550,
		-0.445217, 0.795459, -0.411128,
		34.829113, 36.684193, 45.116653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634388, 35.794552, 45.105793>,  <35.140762, 36.127373, 45.404442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634388, 35.794552, 45.105793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701351, 36.143837, 44.922718>,  <34.741528, 36.353409, 44.812874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701351, 36.143837, 44.922718>,  <34.634388, 35.794552, 45.105793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701351, 36.143837, 44.922718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202854, -0.423799, -0.882748,
		-0.964793, 0.240623, 0.106186,
		0.167408, 0.873209, -0.457690,
		34.751575, 36.405800, 44.785412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009289, 35.954010, 44.641209>,  <34.634388, 35.794552, 45.105793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009289, 35.954010, 44.641209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357048, 36.112694, 44.523380>,  <34.565704, 36.207905, 44.452682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357048, 36.112694, 44.523380>,  <34.009289, 35.954010, 44.641209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357048, 36.112694, 44.523380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178288, -0.304145, -0.935793,
		-0.460829, 0.866094, -0.193695,
		0.869396, 0.396707, -0.294574,
		34.617867, 36.231705, 44.435009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917522, 36.027912, 43.840279>,  <34.009289, 35.954010, 44.641209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917522, 36.027912, 43.840279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310688, 36.092319, 43.875938>,  <34.546589, 36.130962, 43.897335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310688, 36.092319, 43.875938>,  <33.917522, 36.027912, 43.840279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310688, 36.092319, 43.875938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128389, -0.252774, -0.958969,
		-0.131876, 0.954033, -0.269129,
		0.982917, 0.161019, 0.089153,
		34.605564, 36.140625, 43.902683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003990, 36.466522, 43.353333>,  <33.917522, 36.027912, 43.840279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003990, 36.466522, 43.353333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357285, 36.294506, 43.428116>,  <34.569263, 36.191296, 43.472984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357285, 36.294506, 43.428116>,  <34.003990, 36.466522, 43.353333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357285, 36.294506, 43.428116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068172, -0.276705, -0.958534,
		0.463942, 0.859360, -0.215079,
		0.883239, -0.430041, 0.186959,
		34.622257, 36.165493, 43.484203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423130, 36.725487, 42.904003>,  <34.003990, 36.466522, 43.353333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423130, 36.725487, 42.904003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574642, 36.378971, 43.034275>,  <34.665550, 36.171062, 43.112438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574642, 36.378971, 43.034275>,  <34.423130, 36.725487, 42.904003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574642, 36.378971, 43.034275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024925, -0.342226, -0.939287,
		0.925149, 0.363905, -0.108038,
		0.378785, -0.866288, 0.325681,
		34.688278, 36.119083, 43.131981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864193, 36.463711, 42.262829>,  <34.423130, 36.725487, 42.904003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864193, 36.463711, 42.262829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919540, 36.132210, 42.479725>,  <34.952747, 35.933311, 42.609863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919540, 36.132210, 42.479725>,  <34.864193, 36.463711, 42.262829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919540, 36.132210, 42.479725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219477, -0.508236, -0.832782,
		0.965756, 0.234241, 0.111567,
		0.138369, -0.828750, 0.542242,
		34.961052, 35.883583, 42.642399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515991, 36.239094, 42.090839>,  <34.864193, 36.463711, 42.262829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515991, 36.239094, 42.090839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257484, 35.957115, 42.207726>,  <35.102379, 35.787930, 42.277859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257484, 35.957115, 42.207726>,  <35.515991, 36.239094, 42.090839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257484, 35.957115, 42.207726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022495, -0.365164, -0.930671,
		0.762780, -0.608035, 0.220135,
		-0.646267, -0.704946, 0.292218,
		35.063606, 35.745632, 42.295391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787220, 35.692581, 41.793068>,  <35.515991, 36.239094, 42.090839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787220, 35.692581, 41.793068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410130, 35.590485, 41.878975>,  <35.183876, 35.529228, 41.930519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410130, 35.590485, 41.878975>,  <35.787220, 35.692581, 41.793068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410130, 35.590485, 41.878975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085001, -0.438764, -0.894573,
		0.322564, -0.861590, 0.391937,
		-0.942723, -0.255242, 0.214765,
		35.127312, 35.513912, 41.943405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101006, 35.351879, 42.338997>,  <35.787220, 35.692581, 41.793068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101006, 35.351879, 42.338997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.339130, 35.592564, 42.125999>,  <36.482002, 35.736973, 41.998199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.339130, 35.592564, 42.125999>,  <36.101006, 35.351879, 42.338997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339130, 35.592564, 42.125999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118546, 0.589697, 0.798877,
		0.794706, -0.538702, 0.279720,
		0.595307, 0.601712, -0.532496,
		36.517723, 35.773079, 41.966251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782230, 35.535103, 42.735424>,  <36.101006, 35.351879, 42.338997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782230, 35.535103, 42.735424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754978, 35.821644, 42.457664>,  <36.738625, 35.993568, 42.291008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754978, 35.821644, 42.457664>,  <36.782230, 35.535103, 42.735424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754978, 35.821644, 42.457664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362079, 0.666317, 0.651859,
		0.929654, -0.207014, -0.304776,
		-0.068134, 0.716356, -0.694400,
		36.734539, 36.036552, 42.249344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465221, 35.956890, 42.714489>,  <36.782230, 35.535103, 42.735424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465221, 35.956890, 42.714489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162415, 36.175648, 42.571476>,  <36.980728, 36.306904, 42.485668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162415, 36.175648, 42.571476>,  <37.465221, 35.956890, 42.714489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162415, 36.175648, 42.571476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298180, 0.776050, 0.555730,
		0.581387, 0.314090, -0.750557,
		-0.757019, 0.546896, -0.357530,
		36.935310, 36.339718, 42.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753185, 36.495235, 42.694786>,  <37.465221, 35.956890, 42.714489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753185, 36.495235, 42.694786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.390541, 36.645199, 42.617317>,  <37.172955, 36.735176, 42.570835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.390541, 36.645199, 42.617317>,  <37.753185, 36.495235, 42.694786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390541, 36.645199, 42.617317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278920, 0.876816, 0.391660,
		0.316650, 0.301063, -0.899497,
		-0.906607, 0.374906, -0.193671,
		37.118557, 36.757671, 42.559216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851978, 37.087952, 42.375961>,  <37.753185, 36.495235, 42.694786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851978, 37.087952, 42.375961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478546, 37.093029, 42.519218>,  <37.254486, 37.096073, 42.605175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478546, 37.093029, 42.519218>,  <37.851978, 37.087952, 42.375961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478546, 37.093029, 42.519218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153479, 0.917241, 0.367578,
		-0.323841, 0.398131, -0.858265,
		-0.933580, 0.012689, 0.358145,
		37.198471, 37.096836, 42.626663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599640, 37.762753, 42.292259>,  <37.851978, 37.087952, 42.375961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599640, 37.762753, 42.292259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347927, 37.612034, 42.564152>,  <37.196899, 37.521603, 42.727287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347927, 37.612034, 42.564152>,  <37.599640, 37.762753, 42.292259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347927, 37.612034, 42.564152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034137, 0.860366, 0.508532,
		-0.776430, 0.343212, -0.528547,
		-0.629278, -0.376797, 0.679731,
		37.159145, 37.498993, 42.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126144, 38.300499, 42.429653>,  <37.599640, 37.762753, 42.292259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126144, 38.300499, 42.429653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100029, 38.059132, 42.747555>,  <37.084362, 37.914310, 42.938293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100029, 38.059132, 42.747555>,  <37.126144, 38.300499, 42.429653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100029, 38.059132, 42.747555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047208, 0.793690, 0.606488,
		-0.996749, 0.077114, -0.023331,
		-0.065286, -0.603415, 0.794751,
		37.080444, 37.878109, 42.985981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559994, 38.589676, 42.773769>,  <37.126144, 38.300499, 42.429653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559994, 38.589676, 42.773769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.786011, 38.384750, 43.032463>,  <36.921619, 38.261795, 43.187679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.786011, 38.384750, 43.032463>,  <36.559994, 38.589676, 42.773769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786011, 38.384750, 43.032463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056647, 0.757922, 0.649881,
		-0.823118, -0.403843, 0.399234,
		0.565038, -0.512313, 0.646736,
		36.955521, 38.231056, 43.226482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155220, 38.479401, 43.464302>,  <36.559994, 38.589676, 42.773769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155220, 38.479401, 43.464302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547855, 38.477936, 43.540684>,  <36.783436, 38.477058, 43.586514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547855, 38.477936, 43.540684>,  <36.155220, 38.479401, 43.464302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547855, 38.477936, 43.540684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148433, 0.614528, 0.774805,
		-0.120180, -0.788886, 0.602674,
		0.981593, -0.003659, 0.190950,
		36.842335, 38.476837, 43.597969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149357, 38.552002, 44.152695>,  <36.155220, 38.479401, 43.464302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149357, 38.552002, 44.152695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.544968, 38.602871, 44.122604>,  <36.782333, 38.633392, 44.104549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.544968, 38.602871, 44.122604>,  <36.149357, 38.552002, 44.152695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544968, 38.602871, 44.122604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012912, 0.581543, 0.813413,
		0.147189, -0.803514, 0.576803,
		0.989024, 0.127173, -0.075221,
		36.841675, 38.641022, 44.100037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342682, 38.444096, 44.859955>,  <36.149357, 38.552002, 44.152695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342682, 38.444096, 44.859955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648441, 38.608315, 44.661102>,  <36.831898, 38.706848, 44.541790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648441, 38.608315, 44.661102>,  <36.342682, 38.444096, 44.859955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648441, 38.608315, 44.661102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175550, 0.609394, 0.773189,
		0.620398, -0.678289, 0.393738,
		0.764387, 0.410564, -0.497141,
		36.877762, 38.731480, 44.511963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914093, 38.432636, 45.263798>,  <36.342682, 38.444096, 44.859955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914093, 38.432636, 45.263798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.973282, 38.735096, 45.008816>,  <37.008797, 38.916573, 44.855827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.973282, 38.735096, 45.008816>,  <36.914093, 38.432636, 45.263798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973282, 38.735096, 45.008816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192401, 0.610226, 0.768509,
		0.970096, -0.236365, -0.055187,
		0.147972, 0.756145, -0.637455,
		37.017673, 38.961941, 44.817581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396088, 38.736984, 45.609669>,  <36.914093, 38.432636, 45.263798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396088, 38.736984, 45.609669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263206, 39.013844, 45.353363>,  <37.183475, 39.179958, 45.199581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263206, 39.013844, 45.353363>,  <37.396088, 38.736984, 45.609669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263206, 39.013844, 45.353363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102461, 0.701806, 0.704962,
		0.937626, 0.168539, -0.304061,
		-0.332205, 0.692144, -0.640762,
		37.163544, 39.221485, 45.161133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893204, 39.249981, 45.576893>,  <37.396088, 38.736984, 45.609669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893204, 39.249981, 45.576893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557369, 39.431881, 45.458035>,  <37.355869, 39.541023, 45.386719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557369, 39.431881, 45.458035>,  <37.893204, 39.249981, 45.576893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557369, 39.431881, 45.458035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067336, 0.629898, 0.773753,
		0.539036, 0.629625, -0.559476,
		-0.839587, 0.454753, -0.297141,
		37.305492, 39.568306, 45.368893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.080585, 41.926163, 43.246555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.392658, 41.782619, 43.451511>,  <34.579903, 41.696495, 43.574486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.392658, 41.782619, 43.451511>,  <34.080585, 41.926163, 43.246555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392658, 41.782619, 43.451511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371135, -0.393839, -0.840922,
		0.503568, 0.846236, -0.174081,
		0.780178, -0.358854, 0.512393,
		34.626713, 41.674965, 43.605228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564789, 42.075794, 42.796253>,  <34.080585, 41.926163, 43.246555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564789, 42.075794, 42.796253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706902, 41.797798, 43.046295>,  <34.792168, 41.631001, 43.196320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706902, 41.797798, 43.046295>,  <34.564789, 42.075794, 42.796253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706902, 41.797798, 43.046295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414969, -0.481962, -0.771695,
		0.837601, 0.533570, 0.117168,
		0.355282, -0.694993, 0.625107,
		34.813488, 41.589298, 43.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225124, 41.974197, 42.539970>,  <34.564789, 42.075794, 42.796253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225124, 41.974197, 42.539970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.164177, 41.636742, 42.745907>,  <35.127609, 41.434269, 42.869469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.164177, 41.636742, 42.745907>,  <35.225124, 41.974197, 42.539970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164177, 41.636742, 42.745907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192279, -0.536271, -0.821853,
		0.969440, -0.026230, 0.243924,
		-0.152367, -0.843638, 0.514839,
		35.118465, 41.383652, 42.900360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874367, 41.562115, 42.477695>,  <35.225124, 41.974197, 42.539970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874367, 41.562115, 42.477695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.597565, 41.292000, 42.579769>,  <35.431484, 41.129929, 42.641014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.597565, 41.292000, 42.579769>,  <35.874367, 41.562115, 42.477695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597565, 41.292000, 42.579769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271333, -0.570874, -0.774908,
		0.668965, -0.466997, 0.578273,
		-0.692001, -0.675290, 0.255183,
		35.389965, 41.089413, 42.656322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165142, 40.872681, 42.310352>,  <35.874367, 41.562115, 42.477695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165142, 40.872681, 42.310352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773106, 40.801826, 42.346233>,  <35.537884, 40.759315, 42.367764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773106, 40.801826, 42.346233>,  <36.165142, 40.872681, 42.310352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773106, 40.801826, 42.346233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033896, -0.594420, -0.803440,
		0.195641, -0.784403, 0.588588,
		-0.980089, -0.177137, 0.089705,
		35.479080, 40.748684, 42.373146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053799, 40.130867, 42.398991>,  <36.165142, 40.872681, 42.310352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053799, 40.130867, 42.398991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724201, 40.291500, 42.239109>,  <35.526443, 40.387882, 42.143181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724201, 40.291500, 42.239109>,  <36.053799, 40.130867, 42.398991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724201, 40.291500, 42.239109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015980, -0.688688, -0.724882,
		-0.566371, -0.603686, 0.561058,
		-0.823995, 0.401586, -0.399700,
		35.477001, 40.411976, 42.119198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779530, 39.615177, 42.184307>,  <36.053799, 40.130867, 42.398991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779530, 39.615177, 42.184307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574627, 39.882713, 41.968807>,  <35.451687, 40.043236, 41.839508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574627, 39.882713, 41.968807>,  <35.779530, 39.615177, 42.184307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574627, 39.882713, 41.968807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103360, -0.574736, -0.811785,
		-0.852591, -0.471526, 0.225281,
		-0.512255, 0.668836, -0.538751,
		35.420952, 40.083363, 41.807182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334679, 39.151638, 41.752140>,  <35.779530, 39.615177, 42.184307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334679, 39.151638, 41.752140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373127, 39.515812, 41.591206>,  <35.396194, 39.734318, 41.494644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373127, 39.515812, 41.591206>,  <35.334679, 39.151638, 41.752140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373127, 39.515812, 41.591206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032316, -0.401137, -0.915448,
		-0.994845, 0.100991, -0.009134,
		0.096116, 0.910434, -0.402333,
		35.401962, 39.788940, 41.470505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763973, 39.153221, 41.248142>,  <35.334679, 39.151638, 41.752140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763973, 39.153221, 41.248142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015137, 39.445801, 41.141781>,  <35.165836, 39.621349, 41.077965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015137, 39.445801, 41.141781>,  <34.763973, 39.153221, 41.248142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015137, 39.445801, 41.141781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131463, -0.237066, -0.962558,
		-0.767101, 0.639359, -0.052699,
		0.627913, 0.731451, -0.265906,
		35.203510, 39.665237, 41.062008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423725, 39.673073, 40.780746>,  <34.763973, 39.153221, 41.248142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423725, 39.673073, 40.780746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813431, 39.677998, 40.690708>,  <35.047253, 39.680954, 40.636684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813431, 39.677998, 40.690708>,  <34.423725, 39.673073, 40.780746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813431, 39.677998, 40.690708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223557, -0.075627, -0.971753,
		-0.028989, 0.997060, -0.070927,
		0.974260, 0.012314, -0.225092,
		35.105709, 39.681690, 40.623180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277988, 39.890591, 40.044621>,  <34.423725, 39.673073, 40.780746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277988, 39.890591, 40.044621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.657249, 39.783577, 40.113232>,  <34.884808, 39.719368, 40.154400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.657249, 39.783577, 40.113232>,  <34.277988, 39.890591, 40.044621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657249, 39.783577, 40.113232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135558, -0.147705, -0.979698,
		0.287442, 0.952159, -0.103780,
		0.948157, -0.267538, 0.171529,
		34.941696, 39.703316, 40.164692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535709, 40.325645, 39.509235>,  <34.277988, 39.890591, 40.044621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535709, 40.325645, 39.509235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.742580, 40.004368, 39.627491>,  <34.866703, 39.811600, 39.698444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.742580, 40.004368, 39.627491>,  <34.535709, 40.325645, 39.509235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742580, 40.004368, 39.627491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144462, -0.258549, -0.955135,
		0.843596, 0.536687, -0.017686,
		0.517182, -0.803193, 0.295641,
		34.897736, 39.763409, 39.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094238, 40.320816, 39.066410>,  <34.535709, 40.325645, 39.509235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094238, 40.320816, 39.066410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078957, 39.944374, 39.200794>,  <35.069786, 39.718510, 39.281425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078957, 39.944374, 39.200794>,  <35.094238, 40.320816, 39.066410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078957, 39.944374, 39.200794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159493, -0.337639, -0.927665,
		0.986459, 0.018141, 0.162999,
		-0.038206, -0.941101, 0.335960,
		35.067493, 39.662045, 39.301582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568153, 39.967701, 38.636211>,  <35.094238, 40.320816, 39.066410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568153, 39.967701, 38.636211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.365105, 39.663685, 38.798523>,  <35.243275, 39.481274, 38.895908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.365105, 39.663685, 38.798523>,  <35.568153, 39.967701, 38.636211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365105, 39.663685, 38.798523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035746, -0.489141, -0.871472,
		0.860836, -0.427877, 0.275469,
		-0.507625, -0.760041, 0.405776,
		35.212818, 39.435673, 38.920254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267994, 39.808868, 38.845615>,  <35.568153, 39.967701, 38.636211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267994, 39.808868, 38.845615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501976, 40.073151, 38.657448>,  <36.642365, 40.231720, 38.544548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501976, 40.073151, 38.657448>,  <36.267994, 39.808868, 38.845615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501976, 40.073151, 38.657448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212025, 0.684397, 0.697600,
		0.782862, -0.308325, 0.540429,
		0.584956, 0.660709, -0.470415,
		36.677464, 40.271362, 38.516323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530251, 40.158108, 39.439857>,  <36.267994, 39.808868, 38.845615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530251, 40.158108, 39.439857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617668, 40.413425, 39.144611>,  <36.670120, 40.566616, 38.967464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617668, 40.413425, 39.144611>,  <36.530251, 40.158108, 39.439857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617668, 40.413425, 39.144611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146056, 0.726482, 0.671484,
		0.964834, -0.254557, 0.065543,
		0.218547, 0.638298, -0.738115,
		36.683231, 40.604916, 38.923176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172955, 40.413643, 39.631935>,  <36.530251, 40.158108, 39.439857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172955, 40.413643, 39.631935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007915, 40.667797, 39.370846>,  <36.908890, 40.820290, 39.214191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007915, 40.667797, 39.370846>,  <37.172955, 40.413643, 39.631935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007915, 40.667797, 39.370846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127380, 0.749761, 0.649333,
		0.901962, 0.184772, -0.390287,
		-0.412601, 0.635388, -0.652720,
		36.884136, 40.858414, 39.175030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485886, 41.039116, 39.756241>,  <37.172955, 40.413643, 39.631935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485886, 41.039116, 39.756241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158710, 41.171890, 39.568287>,  <36.962406, 41.251556, 39.455513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158710, 41.171890, 39.568287>,  <37.485886, 41.039116, 39.756241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158710, 41.171890, 39.568287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007549, 0.810498, 0.585693,
		0.575256, 0.482609, -0.660431,
		-0.817939, 0.331938, -0.469887,
		36.913330, 41.271473, 39.427322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647758, 41.680801, 39.585754>,  <37.485886, 41.039116, 39.756241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647758, 41.680801, 39.585754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.249096, 41.679588, 39.553074>,  <37.009899, 41.678860, 39.533466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.249096, 41.679588, 39.553074>,  <37.647758, 41.680801, 39.585754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249096, 41.679588, 39.553074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040263, 0.887908, 0.458255,
		0.071153, 0.460010, -0.885058,
		-0.996652, -0.003029, -0.081699,
		36.950100, 41.678680, 39.528564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420418, 42.335117, 39.538692>,  <37.647758, 41.680801, 39.585754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420418, 42.335117, 39.538692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070755, 42.174652, 39.648178>,  <36.860958, 42.078373, 39.713871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070755, 42.174652, 39.648178>,  <37.420418, 42.335117, 39.538692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070755, 42.174652, 39.648178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110903, 0.713618, 0.691701,
		-0.472809, 0.574301, -0.668304,
		-0.874158, -0.401159, 0.273713,
		36.808506, 42.054306, 39.730293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990997, 42.961311, 39.663433>,  <37.420418, 42.335117, 39.538692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990997, 42.961311, 39.663433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836918, 42.643127, 39.850571>,  <36.744473, 42.452217, 39.962852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836918, 42.643127, 39.850571>,  <36.990997, 42.961311, 39.663433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836918, 42.643127, 39.850571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069369, 0.480569, 0.874209,
		-0.920224, 0.369195, -0.129933,
		-0.385195, -0.795455, 0.467841,
		36.721359, 42.404491, 39.990925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362083, 43.299629, 40.097496>,  <36.990997, 42.961311, 39.663433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362083, 43.299629, 40.097496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.458992, 42.943977, 40.252800>,  <36.517136, 42.730587, 40.345982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.458992, 42.943977, 40.252800>,  <36.362083, 43.299629, 40.097496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458992, 42.943977, 40.252800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113096, 0.371574, 0.921489,
		-0.963595, -0.267157, -0.010537,
		0.242267, -0.889134, 0.388262,
		36.531673, 42.677238, 40.369278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825516, 43.110432, 40.511013>,  <36.362083, 43.299629, 40.097496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825516, 43.110432, 40.511013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145119, 42.914963, 40.651176>,  <36.336880, 42.797680, 40.735275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145119, 42.914963, 40.651176>,  <35.825516, 43.110432, 40.511013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145119, 42.914963, 40.651176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230912, 0.288706, 0.929155,
		-0.555221, -0.823313, 0.117837,
		0.799005, -0.488676, 0.350409,
		36.384819, 42.768360, 40.756298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636124, 42.990799, 41.218742>,  <35.825516, 43.110432, 40.511013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636124, 42.990799, 41.218742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.015259, 42.863300, 41.218353>,  <36.242741, 42.786800, 41.218121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.015259, 42.863300, 41.218353>,  <35.636124, 42.990799, 41.218742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015259, 42.863300, 41.218353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099788, 0.293833, 0.950634,
		-0.302729, -0.901144, 0.310314,
		0.947838, -0.318750, -0.000972,
		36.299610, 42.767677, 41.218063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746048, 42.446239, 41.819187>,  <35.636124, 42.990799, 41.218742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746048, 42.446239, 41.819187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.072445, 42.657642, 41.725521>,  <36.268284, 42.784485, 41.669323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.072445, 42.657642, 41.725521>,  <35.746048, 42.446239, 41.819187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072445, 42.657642, 41.725521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004306, 0.410632, 0.911791,
		0.578043, -0.743009, 0.337350,
		0.815995, 0.528507, -0.234163,
		36.317242, 42.816193, 41.655273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078835, 42.497147, 42.437134>,  <35.746048, 42.446239, 41.819187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078835, 42.497147, 42.437134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291401, 42.766853, 42.232014>,  <36.418941, 42.928677, 42.108944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291401, 42.766853, 42.232014>,  <36.078835, 42.497147, 42.437134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291401, 42.766853, 42.232014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216846, 0.476901, 0.851788,
		0.818884, -0.563854, 0.107223,
		0.531419, 0.674266, -0.512796,
		36.450829, 42.969131, 42.078175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827877, 42.552334, 42.655869>,  <36.078835, 42.497147, 42.437134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827877, 42.552334, 42.655869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708069, 42.900333, 42.499207>,  <36.636185, 43.109135, 42.405209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708069, 42.900333, 42.499207>,  <36.827877, 42.552334, 42.655869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708069, 42.900333, 42.499207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227153, 0.463718, 0.856368,
		0.926655, 0.167535, -0.336516,
		-0.299520, 0.869998, -0.391651,
		36.618214, 43.161331, 42.381710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227684, 42.877705, 43.130634>,  <36.827877, 42.552334, 42.655869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227684, 42.877705, 43.130634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989151, 43.144531, 42.952015>,  <36.846031, 43.304626, 42.844845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989151, 43.144531, 42.952015>,  <37.227684, 42.877705, 43.130634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989151, 43.144531, 42.952015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122957, 0.625623, 0.770375,
		0.793262, 0.404497, -0.455102,
		-0.596336, 0.667067, -0.446547,
		36.810249, 43.344650, 42.818050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009079, 42.939262, 43.346111>,  <37.227684, 42.877705, 43.130634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009079, 42.939262, 43.346111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191483, 42.747894, 43.646290>,  <38.300926, 42.633072, 43.826397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191483, 42.747894, 43.646290>,  <38.009079, 42.939262, 43.346111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191483, 42.747894, 43.646290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250352, -0.740214, -0.624024,
		0.854036, 0.472438, -0.217773,
		0.456011, -0.478419, 0.750446,
		38.328285, 42.604370, 43.871422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755756, 42.755646, 43.151146>,  <38.009079, 42.939262, 43.346111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755756, 42.755646, 43.151146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.667385, 42.497890, 43.443981>,  <38.614361, 42.343239, 43.619682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.667385, 42.497890, 43.443981>,  <38.755756, 42.755646, 43.151146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667385, 42.497890, 43.443981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002009, -0.750936, -0.660372,
		0.975287, -0.144426, 0.167200,
		-0.220931, -0.644388, 0.732088,
		38.601105, 42.304573, 43.663609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244480, 42.237305, 42.977619>,  <38.755756, 42.755646, 43.151146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244480, 42.237305, 42.977619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984379, 42.060181, 43.224548>,  <38.828316, 41.953907, 43.372707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984379, 42.060181, 43.224548>,  <39.244480, 42.237305, 42.977619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984379, 42.060181, 43.224548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007008, -0.816033, -0.577963,
		0.759683, -0.371497, 0.533733,
		-0.650256, -0.442809, 0.617323,
		38.789303, 41.927338, 43.409744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502960, 41.460316, 43.081806>,  <39.244480, 42.237305, 42.977619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502960, 41.460316, 43.081806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108299, 41.504112, 43.130028>,  <38.871502, 41.530388, 43.158958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108299, 41.504112, 43.130028>,  <39.502960, 41.460316, 43.081806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108299, 41.504112, 43.130028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159961, -0.790379, -0.591365,
		0.030533, -0.602754, 0.797342,
		-0.986651, 0.109488, 0.120550,
		38.812305, 41.536961, 43.166191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360859, 40.797363, 43.234024>,  <39.502960, 41.460316, 43.081806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360859, 40.797363, 43.234024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.008377, 40.960968, 43.139202>,  <38.796890, 41.059132, 43.082310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.008377, 40.960968, 43.139202>,  <39.360859, 40.797363, 43.234024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008377, 40.960968, 43.139202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192867, -0.768853, -0.609645,
		-0.431611, -0.491501, 0.756399,
		-0.881201, 0.409014, -0.237051,
		38.744019, 41.083672, 43.068085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845322, 40.296936, 43.380161>,  <39.360859, 40.797363, 43.234024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845322, 40.296936, 43.380161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680267, 40.544178, 43.112526>,  <38.581234, 40.692524, 42.951946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680267, 40.544178, 43.112526>,  <38.845322, 40.296936, 43.380161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680267, 40.544178, 43.112526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082390, -0.756851, -0.648373,
		-0.907164, -0.212414, 0.363228,
		-0.412633, 0.618107, -0.669087,
		38.556477, 40.729610, 42.911800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126999, 40.004494, 43.303253>,  <38.845322, 40.296936, 43.380161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126999, 40.004494, 43.303253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248470, 40.233681, 42.998760>,  <38.321354, 40.371193, 42.816063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248470, 40.233681, 42.998760>,  <38.126999, 40.004494, 43.303253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248470, 40.233681, 42.998760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029447, -0.792942, -0.608585,
		-0.952318, 0.207233, -0.223931,
		0.303683, 0.572972, -0.761235,
		38.339577, 40.405571, 42.770390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743290, 39.738174, 42.651482>,  <38.126999, 40.004494, 43.303253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743290, 39.738174, 42.651482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033337, 39.956760, 42.483871>,  <38.207363, 40.087914, 42.383305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033337, 39.956760, 42.483871>,  <37.743290, 39.738174, 42.651482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033337, 39.956760, 42.483871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042440, -0.642803, -0.764855,
		-0.687321, 0.536822, -0.489297,
		0.725113, 0.546467, -0.419029,
		38.250870, 40.120701, 42.358162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540653, 39.745007, 41.969959>,  <37.743290, 39.738174, 42.651482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540653, 39.745007, 41.969959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.917076, 39.878414, 41.947441>,  <38.142929, 39.958458, 41.933929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.917076, 39.878414, 41.947441>,  <37.540653, 39.745007, 41.969959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917076, 39.878414, 41.947441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133392, -0.518888, -0.844371,
		-0.310826, 0.787095, -0.532794,
		0.941060, 0.333523, -0.056292,
		38.199394, 39.978470, 41.930553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622150, 40.230232, 41.408180>,  <37.540653, 39.745007, 41.969959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622150, 40.230232, 41.408180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.982944, 40.085564, 41.502514>,  <38.199421, 39.998764, 41.559116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.982944, 40.085564, 41.502514>,  <37.622150, 40.230232, 41.408180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982944, 40.085564, 41.502514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016001, -0.517832, -0.855333,
		0.431473, 0.775270, -0.461289,
		0.901984, -0.361672, 0.235836,
		38.253540, 39.977062, 41.573265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852737, 40.038673, 40.742477>,  <37.622150, 40.230232, 41.408180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852737, 40.038673, 40.742477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094032, 39.836140, 40.988968>,  <38.238808, 39.714619, 41.136860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094032, 39.836140, 40.988968>,  <37.852737, 40.038673, 40.742477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094032, 39.836140, 40.988968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215239, -0.640615, -0.737078,
		0.767969, 0.577269, -0.277460,
		0.603238, -0.506333, 0.616223,
		38.275005, 39.684238, 41.173836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617161, 40.048595, 40.426678>,  <37.852737, 40.038673, 40.742477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617161, 40.048595, 40.426678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537971, 39.740089, 40.668655>,  <38.490459, 39.554985, 40.813843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537971, 39.740089, 40.668655>,  <38.617161, 40.048595, 40.426678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537971, 39.740089, 40.668655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391125, -0.628051, -0.672736,
		0.898793, 0.103425, 0.425998,
		-0.197970, -0.771268, 0.604940,
		38.478580, 39.508709, 40.850136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126938, 39.655857, 40.237019>,  <38.617161, 40.048595, 40.426678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126938, 39.655857, 40.237019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.880199, 39.404434, 40.426510>,  <38.732155, 39.253582, 40.540203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.880199, 39.404434, 40.426510>,  <39.126938, 39.655857, 40.237019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880199, 39.404434, 40.426510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376280, -0.764139, -0.523932,
		0.691314, -0.144931, 0.707870,
		-0.616845, -0.628559, 0.473726,
		38.695145, 39.215866, 40.568626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507927, 39.121960, 40.530582>,  <39.126938, 39.655857, 40.237019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507927, 39.121960, 40.530582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.144218, 38.960114, 40.491566>,  <38.925995, 38.863007, 40.468155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.144218, 38.960114, 40.491566>,  <39.507927, 39.121960, 40.530582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144218, 38.960114, 40.491566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416197, -0.885270, -0.207550,
		-0.002376, -0.229317, 0.973349,
		-0.909271, -0.404612, -0.097545,
		38.871437, 38.838730, 40.462303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.898674, 37.413658, 27.820707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514284, 37.303387, 27.811506>,  <27.283649, 37.237225, 27.805984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514284, 37.303387, 27.811506>,  <27.898674, 37.413658, 27.820707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514284, 37.303387, 27.811506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117825, -0.483124, 0.867588,
		-0.250287, 0.831020, 0.496752,
		-0.960975, -0.275676, -0.023005,
		27.225992, 37.220684, 27.804605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515293, 37.517395, 28.471205>,  <27.898674, 37.413658, 27.820707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515293, 37.517395, 28.471205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342375, 37.208633, 28.284748>,  <27.238625, 37.023376, 28.172874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342375, 37.208633, 28.284748>,  <27.515293, 37.517395, 28.471205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342375, 37.208633, 28.284748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080467, -0.481857, 0.872548,
		-0.898134, 0.414708, 0.146193,
		-0.432297, -0.771901, -0.466142,
		27.212687, 36.977062, 28.144905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135180, 37.284664, 28.989002>,  <27.515293, 37.517395, 28.471205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135180, 37.284664, 28.989002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108238, 36.992432, 28.717201>,  <27.092073, 36.817093, 28.554121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108238, 36.992432, 28.717201>,  <27.135180, 37.284664, 28.989002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108238, 36.992432, 28.717201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329538, -0.626537, 0.706297,
		-0.941737, 0.271493, -0.198553,
		-0.067354, -0.730577, -0.679501,
		27.088032, 36.773258, 28.513351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507042, 36.988468, 29.005987>,  <27.135180, 37.284664, 28.989002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507042, 36.988468, 29.005987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.757839, 36.709824, 28.866493>,  <26.908318, 36.542637, 28.782797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.757839, 36.709824, 28.866493>,  <26.507042, 36.988468, 29.005987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757839, 36.709824, 28.866493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304801, -0.631335, 0.713101,
		-0.716922, -0.340814, -0.608169,
		0.626993, -0.696608, -0.348737,
		26.945936, 36.500843, 28.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097469, 36.369961, 29.179270>,  <26.507042, 36.988468, 29.005987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097469, 36.369961, 29.179270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489061, 36.298973, 29.139059>,  <26.724016, 36.256378, 29.114933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489061, 36.298973, 29.139059>,  <26.097469, 36.369961, 29.179270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489061, 36.298973, 29.139059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012928, -0.545857, 0.837778,
		-0.203554, -0.818867, -0.536677,
		0.978978, -0.177471, -0.100525,
		26.782755, 36.245731, 29.108902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150675, 35.671841, 29.380138>,  <26.097469, 36.369961, 29.179270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150675, 35.671841, 29.380138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.529505, 35.798462, 29.401445>,  <26.756804, 35.874435, 29.414230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.529505, 35.798462, 29.401445>,  <26.150675, 35.671841, 29.380138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529505, 35.798462, 29.401445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148382, -0.578854, 0.801818,
		0.284653, -0.751479, -0.595190,
		0.947077, 0.316556, 0.053267,
		26.813627, 35.893429, 29.417425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658932, 35.006413, 29.317709>,  <26.150675, 35.671841, 29.380138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658932, 35.006413, 29.317709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823322, 35.322353, 29.499798>,  <26.921957, 35.511917, 29.609051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823322, 35.322353, 29.499798>,  <26.658932, 35.006413, 29.317709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823322, 35.322353, 29.499798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002917, -0.500479, 0.865744,
		0.911642, -0.354472, -0.207988,
		0.410975, 0.789855, 0.455223,
		26.946615, 35.559311, 29.636364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172981, 34.688007, 29.755404>,  <26.658932, 35.006413, 29.317709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172981, 34.688007, 29.755404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118938, 35.048359, 29.920406>,  <27.086514, 35.264568, 30.019407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118938, 35.048359, 29.920406>,  <27.172981, 34.688007, 29.755404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118938, 35.048359, 29.920406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113019, -0.427620, 0.896866,
		0.984364, 0.074552, 0.159591,
		-0.135107, 0.900879, 0.412508,
		27.078405, 35.318623, 30.044159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616871, 34.745785, 30.320511>,  <27.172981, 34.688007, 29.755404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616871, 34.745785, 30.320511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309004, 34.988537, 30.399820>,  <27.124283, 35.134186, 30.447407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309004, 34.988537, 30.399820>,  <27.616871, 34.745785, 30.320511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309004, 34.988537, 30.399820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021237, -0.334722, 0.942078,
		0.638092, 0.720875, 0.270513,
		-0.769667, 0.606877, 0.198274,
		27.078104, 35.170601, 30.459303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818905, 34.927994, 30.921362>,  <27.616871, 34.745785, 30.320511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818905, 34.927994, 30.921362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445431, 35.071224, 30.922838>,  <27.221346, 35.157162, 30.923725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445431, 35.071224, 30.922838>,  <27.818905, 34.927994, 30.921362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445431, 35.071224, 30.922838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009106, -0.034047, 0.999379,
		0.357979, 0.933072, 0.035049,
		-0.933685, 0.358076, 0.003692,
		27.165325, 35.178646, 30.923946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824171, 35.524780, 31.363106>,  <27.818905, 34.927994, 30.921362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824171, 35.524780, 31.363106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451115, 35.381577, 31.345169>,  <27.227282, 35.295654, 31.334406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451115, 35.381577, 31.345169>,  <27.824171, 35.524780, 31.363106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451115, 35.381577, 31.345169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088400, 0.106231, 0.990404,
		-0.349812, 0.927655, -0.130723,
		-0.932640, -0.358011, -0.044844,
		27.171322, 35.274174, 31.331717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277584, 35.959850, 31.775492>,  <27.824171, 35.524780, 31.363106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277584, 35.959850, 31.775492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.157650, 35.580524, 31.733932>,  <27.085690, 35.352928, 31.708998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.157650, 35.580524, 31.733932>,  <27.277584, 35.959850, 31.775492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157650, 35.580524, 31.733932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100155, -0.077015, 0.991987,
		-0.948719, 0.307839, -0.071887,
		-0.299836, -0.948316, -0.103897,
		27.067699, 35.296028, 31.702763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881725, 35.871387, 32.319160>,  <27.277584, 35.959850, 31.775492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881725, 35.871387, 32.319160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934675, 35.493469, 32.199268>,  <26.966444, 35.266720, 32.127335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934675, 35.493469, 32.199268>,  <26.881725, 35.871387, 32.319160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934675, 35.493469, 32.199268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055910, -0.294792, 0.953924,
		-0.989622, -0.143032, 0.013801,
		0.132373, -0.944796, -0.299730,
		26.974388, 35.210030, 32.109348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388487, 35.497486, 32.753429>,  <26.881725, 35.871387, 32.319160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388487, 35.497486, 32.753429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657412, 35.225903, 32.635437>,  <26.818766, 35.062954, 32.564640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657412, 35.225903, 32.635437>,  <26.388487, 35.497486, 32.753429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657412, 35.225903, 32.635437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131584, -0.282526, 0.950192,
		-0.728480, -0.677639, -0.100605,
		0.672311, -0.678958, -0.294981,
		26.859104, 35.022217, 32.546944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204124, 34.806496, 33.151981>,  <26.388487, 35.497486, 32.753429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204124, 34.806496, 33.151981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.578945, 34.767563, 33.017841>,  <26.803839, 34.744202, 32.937359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.578945, 34.767563, 33.017841>,  <26.204124, 34.806496, 33.151981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578945, 34.767563, 33.017841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257375, -0.456514, 0.851677,
		-0.235984, -0.884377, -0.402727,
		0.937054, -0.097331, -0.335346,
		26.860062, 34.738365, 32.917236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397545, 34.056870, 33.214684>,  <26.204124, 34.806496, 33.151981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397545, 34.056870, 33.214684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731558, 34.276947, 33.215820>,  <26.931965, 34.408993, 33.216503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731558, 34.276947, 33.215820>,  <26.397545, 34.056870, 33.214684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731558, 34.276947, 33.215820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335872, -0.513826, 0.789413,
		0.435789, -0.658232, -0.613856,
		0.835032, 0.550195, 0.002838,
		26.982067, 34.442005, 33.216671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979494, 33.596371, 33.412415>,  <26.397545, 34.056870, 33.214684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979494, 33.596371, 33.412415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098734, 33.971348, 33.484344>,  <27.170279, 34.196335, 33.527500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.098734, 33.971348, 33.484344>,  <26.979494, 33.596371, 33.412415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098734, 33.971348, 33.484344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377690, -0.288854, 0.879723,
		0.876633, -0.194329, -0.440171,
		0.298101, 0.937443, 0.179823,
		27.188164, 34.252583, 33.538292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616135, 33.496181, 33.702515>,  <26.979494, 33.596371, 33.412415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616135, 33.496181, 33.702515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508726, 33.867470, 33.805519>,  <27.444281, 34.090240, 33.867321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508726, 33.867470, 33.805519>,  <27.616135, 33.496181, 33.702515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508726, 33.867470, 33.805519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329770, -0.162596, 0.929954,
		0.905069, 0.334630, -0.262437,
		-0.268520, 0.928216, 0.257512,
		27.428171, 34.145935, 33.882774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235266, 33.889389, 33.966637>,  <27.616135, 33.496181, 33.702515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235266, 33.889389, 33.966637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921858, 34.082943, 34.122562>,  <27.733812, 34.199074, 34.216118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921858, 34.082943, 34.122562>,  <28.235266, 33.889389, 33.966637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921858, 34.082943, 34.122562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338836, -0.193141, 0.920808,
		0.520849, 0.853555, -0.012626,
		-0.783522, 0.483880, 0.389812,
		27.686802, 34.228107, 34.239506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488853, 34.376995, 34.537098>,  <28.235266, 33.889389, 33.966637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488853, 34.376995, 34.537098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097357, 34.359257, 34.617199>,  <27.862459, 34.348614, 34.665260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097357, 34.359257, 34.617199>,  <28.488853, 34.376995, 34.537098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097357, 34.359257, 34.617199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197598, 0.057909, 0.978571,
		-0.054990, 0.997337, -0.047916,
		-0.978740, -0.044344, 0.200256,
		27.803736, 34.345955, 34.677277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167618, 34.797852, 34.467514>,  <28.488853, 34.376995, 34.537098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167618, 34.797852, 34.467514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518618, 34.609230, 34.432568>,  <29.729218, 34.496056, 34.411602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518618, 34.609230, 34.432568>,  <29.167618, 34.797852, 34.467514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518618, 34.609230, 34.432568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010299, 0.200650, -0.979609,
		0.479468, 0.858706, 0.180927,
		0.877499, -0.471554, -0.087362,
		29.781868, 34.467762, 34.406361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480165, 35.188694, 34.046852>,  <29.167618, 34.797852, 34.467514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480165, 35.188694, 34.046852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716570, 34.868935, 34.003639>,  <29.858412, 34.677078, 33.977711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716570, 34.868935, 34.003639>,  <29.480165, 35.188694, 34.046852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716570, 34.868935, 34.003639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143031, 0.235647, -0.961256,
		0.793882, 0.552660, 0.253609,
		0.591010, -0.799398, -0.108028,
		29.893873, 34.629116, 33.971230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161903, 35.386299, 33.704453>,  <29.480165, 35.188694, 34.046852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161903, 35.386299, 33.704453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077845, 34.999363, 33.647766>,  <30.027409, 34.767200, 33.613754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077845, 34.999363, 33.647766>,  <30.161903, 35.386299, 33.704453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077845, 34.999363, 33.647766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225439, 0.093104, -0.969799,
		0.951323, -0.235749, 0.198511,
		-0.210147, -0.967344, -0.141719,
		30.014801, 34.709160, 33.605251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734453, 35.149418, 33.333508>,  <30.161903, 35.386299, 33.704453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734453, 35.149418, 33.333508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462914, 34.861118, 33.277390>,  <30.299990, 34.688137, 33.243721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462914, 34.861118, 33.277390>,  <30.734453, 35.149418, 33.333508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462914, 34.861118, 33.277390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347453, -0.146992, -0.926105,
		0.646869, -0.677430, 0.350212,
		-0.678850, -0.720751, -0.140290,
		30.259258, 34.644894, 33.235302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150352, 34.493225, 33.027451>,  <30.734453, 35.149418, 33.333508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150352, 34.493225, 33.027451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762617, 34.480930, 32.929932>,  <30.529976, 34.473553, 32.871418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762617, 34.480930, 32.929932>,  <31.150352, 34.493225, 33.027451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762617, 34.480930, 32.929932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244320, -0.014392, -0.969588,
		0.026288, -0.999424, 0.021459,
		-0.969338, -0.030732, -0.243801,
		30.471815, 34.471710, 32.856792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148397, 34.091354, 32.490593>,  <31.150352, 34.493225, 33.027451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148397, 34.091354, 32.490593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799046, 34.284081, 32.462124>,  <30.589434, 34.399715, 32.445042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799046, 34.284081, 32.462124>,  <31.148397, 34.091354, 32.490593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799046, 34.284081, 32.462124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088165, 0.012678, -0.996025,
		-0.478994, -0.876183, -0.053552,
		-0.873380, 0.481811, -0.071176,
		30.537031, 34.428623, 32.440773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784342, 33.773247, 31.910458>,  <31.148397, 34.091354, 32.490593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784342, 33.773247, 31.910458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.581150, 34.113628, 31.963871>,  <30.459236, 34.317860, 31.995918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.581150, 34.113628, 31.963871>,  <30.784342, 33.773247, 31.910458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581150, 34.113628, 31.963871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177436, 0.048323, -0.982945,
		-0.842896, -0.523008, 0.126443,
		-0.507978, 0.850957, 0.133532,
		30.428757, 34.368916, 32.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169733, 33.692955, 31.494764>,  <30.784342, 33.773247, 31.910458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169733, 33.692955, 31.494764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.258749, 34.077370, 31.560341>,  <30.312159, 34.308018, 31.599686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.258749, 34.077370, 31.560341>,  <30.169733, 33.692955, 31.494764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258749, 34.077370, 31.560341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167171, 0.203282, -0.964744,
		-0.960484, 0.187289, 0.205896,
		0.222541, 0.961041, 0.163940,
		30.325512, 34.365681, 31.609524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568983, 34.086086, 31.181452>,  <30.169733, 33.692955, 31.494764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568983, 34.086086, 31.181452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888618, 34.321198, 31.232012>,  <30.080400, 34.462265, 31.262348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888618, 34.321198, 31.232012>,  <29.568983, 34.086086, 31.181452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888618, 34.321198, 31.232012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339292, 0.614442, -0.712279,
		-0.496326, 0.526287, 0.690421,
		0.799088, 0.587777, 0.126398,
		30.128345, 34.497532, 31.269932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332077, 34.639385, 30.847082>,  <29.568983, 34.086086, 31.181452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332077, 34.639385, 30.847082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699678, 34.794769, 30.873999>,  <29.920240, 34.888000, 30.890148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699678, 34.794769, 30.873999>,  <29.332077, 34.639385, 30.847082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699678, 34.794769, 30.873999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126942, 0.453156, -0.882347,
		-0.373250, 0.802339, 0.465764,
		0.919005, 0.388461, 0.067291,
		29.975380, 34.911308, 30.894186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303366, 35.427486, 30.728912>,  <29.332077, 34.639385, 30.847082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303366, 35.427486, 30.728912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680971, 35.314449, 30.660816>,  <29.907534, 35.246628, 30.619959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680971, 35.314449, 30.660816>,  <29.303366, 35.427486, 30.728912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680971, 35.314449, 30.660816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064152, 0.348929, -0.934951,
		0.323612, 0.893527, 0.311264,
		0.944013, -0.282593, -0.170239,
		29.964174, 35.229671, 30.609745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759613, 36.007664, 30.449675>,  <29.303366, 35.427486, 30.728912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759613, 36.007664, 30.449675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929182, 35.679741, 30.295685>,  <30.030924, 35.482986, 30.203291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929182, 35.679741, 30.295685>,  <29.759613, 36.007664, 30.449675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929182, 35.679741, 30.295685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036422, 0.440146, -0.897187,
		0.904965, 0.366317, 0.216448,
		0.423924, -0.819807, -0.384975,
		30.056358, 35.433800, 30.180193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066408, 36.278320, 29.926294>,  <29.759613, 36.007664, 30.449675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066408, 36.278320, 29.926294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173773, 35.898415, 29.861908>,  <30.238192, 35.670471, 29.823277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173773, 35.898415, 29.861908>,  <30.066408, 36.278320, 29.926294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173773, 35.898415, 29.861908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231216, 0.225731, -0.946353,
		0.935144, 0.216794, 0.280188,
		0.268411, -0.949761, -0.160965,
		30.254295, 35.613487, 29.813618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701658, 36.316132, 29.625416>,  <30.066408, 36.278320, 29.926294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701658, 36.316132, 29.625416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517635, 35.971939, 29.537849>,  <30.407223, 35.765423, 29.485310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517635, 35.971939, 29.537849>,  <30.701658, 36.316132, 29.625416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517635, 35.971939, 29.537849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068225, 0.211569, -0.974979,
		0.885265, -0.463480, -0.038628,
		-0.460055, -0.860480, -0.218916,
		30.379620, 35.713795, 29.472176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079161, 35.935276, 29.068132>,  <30.701658, 36.316132, 29.625416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079161, 35.935276, 29.068132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713223, 35.774536, 29.052263>,  <30.493660, 35.678093, 29.042742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713223, 35.774536, 29.052263>,  <31.079161, 35.935276, 29.068132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713223, 35.774536, 29.052263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052146, 0.214996, -0.975222,
		0.400428, -0.890106, -0.217642,
		-0.914843, -0.401856, -0.039675,
		30.438770, 35.653980, 29.040361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049091, 35.518078, 28.386990>,  <31.079161, 35.935276, 29.068132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049091, 35.518078, 28.386990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.669849, 35.556202, 28.508327>,  <30.442305, 35.579075, 28.581129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.669849, 35.556202, 28.508327>,  <31.049091, 35.518078, 28.386990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669849, 35.556202, 28.508327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273431, 0.242531, -0.930814,
		-0.162284, -0.965451, -0.203884,
		-0.948103, 0.095308, 0.303343,
		30.385418, 35.584793, 28.599331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812891, 35.319092, 27.767653>,  <31.049091, 35.518078, 28.386990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812891, 35.319092, 27.767653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519619, 35.482697, 27.984966>,  <30.343657, 35.580860, 28.115355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519619, 35.482697, 27.984966>,  <30.812891, 35.319092, 27.767653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519619, 35.482697, 27.984966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457480, 0.294443, -0.839056,
		-0.503152, -0.863719, -0.028763,
		-0.733178, 0.409014, 0.543284,
		30.299665, 35.605400, 28.147951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217880, 35.068787, 27.571650>,  <30.812891, 35.319092, 27.767653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217880, 35.068787, 27.571650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.093061, 35.396534, 27.764011>,  <30.018169, 35.593182, 27.879429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.093061, 35.396534, 27.764011>,  <30.217880, 35.068787, 27.571650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093061, 35.396534, 27.764011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609186, 0.215868, -0.763081,
		-0.729053, -0.531078, 0.431784,
		-0.312047, 0.819364, 0.480905,
		29.999447, 35.642342, 27.908283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495289, 35.006516, 27.800007>,  <30.217880, 35.068787, 27.571650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495289, 35.006516, 27.800007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588554, 35.389465, 27.731817>,  <29.644514, 35.619236, 27.690903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588554, 35.389465, 27.731817>,  <29.495289, 35.006516, 27.800007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588554, 35.389465, 27.731817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733280, 0.057956, -0.677452,
		-0.638697, 0.282964, 0.715540,
		0.233164, 0.957378, -0.170476,
		29.658504, 35.676678, 27.680676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822653, 35.241127, 27.658525>,  <29.495289, 35.006516, 27.800007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822653, 35.241127, 27.658525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072250, 35.526272, 27.530489>,  <29.222010, 35.697361, 27.453667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072250, 35.526272, 27.530489>,  <28.822653, 35.241127, 27.658525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072250, 35.526272, 27.530489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551581, 0.111651, -0.826615,
		-0.553525, 0.692358, 0.462871,
		0.623994, 0.712864, -0.320089,
		29.259449, 35.740131, 27.434462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408936, 35.941921, 27.390699>,  <28.822653, 35.241127, 27.658525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408936, 35.941921, 27.390699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758278, 35.857342, 27.215183>,  <28.967884, 35.806595, 27.109875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758278, 35.857342, 27.215183>,  <28.408936, 35.941921, 27.390699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758278, 35.857342, 27.215183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383831, 0.255835, -0.887255,
		0.299868, 0.943311, 0.142274,
		0.873357, -0.211451, -0.438789,
		29.020285, 35.793907, 27.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396437, 36.273540, 26.877878>,  <28.408936, 35.941921, 27.390699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396437, 36.273540, 26.877878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714497, 36.052116, 26.778833>,  <28.905333, 35.919262, 26.719406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714497, 36.052116, 26.778833>,  <28.396437, 36.273540, 26.877878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714497, 36.052116, 26.778833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327034, -0.047586, -0.943814,
		0.510671, 0.831451, -0.218870,
		0.795150, -0.553557, -0.247612,
		28.953041, 35.886051, 26.704550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.001434, 40.282108, 45.188194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624428, 40.201828, 45.295059>,  <37.398224, 40.153660, 45.359177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624428, 40.201828, 45.295059>,  <38.001434, 40.282108, 45.188194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624428, 40.201828, 45.295059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072927, 0.903806, 0.421682,
		-0.326094, 0.377961, -0.866492,
		-0.942520, -0.200699, 0.267163,
		37.341671, 40.141617, 45.375210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662338, 40.949940, 45.311584>,  <38.001434, 40.282108, 45.188194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662338, 40.949940, 45.311584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381992, 40.717438, 45.476959>,  <37.213783, 40.577938, 45.576183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381992, 40.717438, 45.476959>,  <37.662338, 40.949940, 45.311584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381992, 40.717438, 45.476959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193858, 0.713022, 0.673809,
		-0.686447, 0.392099, -0.612412,
		-0.700863, -0.581255, 0.413441,
		37.171734, 40.543060, 45.600990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272121, 41.411648, 45.433819>,  <37.662338, 40.949940, 45.311584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272121, 41.411648, 45.433819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188522, 41.101654, 45.672386>,  <37.138363, 40.915657, 45.815525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188522, 41.101654, 45.672386>,  <37.272121, 41.411648, 45.433819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188522, 41.101654, 45.672386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142360, 0.627502, 0.765490,
		-0.967499, 0.075080, -0.241473,
		-0.208998, -0.774987, 0.596419,
		37.125824, 40.869160, 45.851311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710640, 41.594139, 45.777779>,  <37.272121, 41.411648, 45.433819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710640, 41.594139, 45.777779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864216, 41.307365, 46.010536>,  <36.956360, 41.135300, 46.150188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864216, 41.307365, 46.010536>,  <36.710640, 41.594139, 45.777779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864216, 41.307365, 46.010536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088595, 0.598678, 0.796075,
		-0.919098, -0.357198, 0.166340,
		0.383941, -0.716934, 0.581890,
		36.979397, 41.092285, 46.185104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312641, 41.510174, 46.412300>,  <36.710640, 41.594139, 45.777779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312641, 41.510174, 46.412300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664734, 41.351131, 46.515907>,  <36.875992, 41.255707, 46.578072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664734, 41.351131, 46.515907>,  <36.312641, 41.510174, 46.412300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664734, 41.351131, 46.515907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086636, 0.671317, 0.736089,
		-0.466561, -0.625491, 0.625365,
		0.880236, -0.397610, 0.259020,
		36.928806, 41.231850, 46.593613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234886, 41.437706, 47.161781>,  <36.312641, 41.510174, 46.412300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234886, 41.437706, 47.161781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620693, 41.460979, 47.058762>,  <36.852177, 41.474945, 46.996952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620693, 41.460979, 47.058762>,  <36.234886, 41.437706, 47.161781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620693, 41.460979, 47.058762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133122, 0.735205, 0.664644,
		0.228021, -0.675342, 0.701369,
		0.964513, 0.058185, -0.257545,
		36.910046, 41.478436, 46.981499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580570, 41.316544, 47.773540>,  <36.234886, 41.437706, 47.161781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580570, 41.316544, 47.773540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872261, 41.477787, 47.552368>,  <37.047276, 41.574532, 47.419662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872261, 41.477787, 47.552368>,  <36.580570, 41.316544, 47.773540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872261, 41.477787, 47.552368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284757, 0.555998, 0.780884,
		0.622214, -0.726890, 0.290657,
		0.729222, 0.403110, -0.552937,
		37.091026, 41.598721, 47.386486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064850, 41.371029, 48.306828>,  <36.580570, 41.316544, 47.773540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064850, 41.371029, 48.306828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192406, 41.610889, 48.013233>,  <37.268940, 41.754807, 47.837078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192406, 41.610889, 48.013233>,  <37.064850, 41.371029, 48.306828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192406, 41.610889, 48.013233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372624, 0.632737, 0.678820,
		0.871472, -0.489966, -0.021672,
		0.318886, 0.599648, -0.733985,
		37.288071, 41.790783, 47.793037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685768, 41.566502, 48.542065>,  <37.064850, 41.371029, 48.306828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685768, 41.566502, 48.542065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608006, 41.860844, 48.282612>,  <37.561348, 42.037449, 48.126938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608006, 41.860844, 48.282612>,  <37.685768, 41.566502, 48.542065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608006, 41.860844, 48.282612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508181, 0.641149, 0.575047,
		0.839022, -0.217831, -0.498590,
		-0.194407, 0.735851, -0.648636,
		37.549683, 42.081600, 48.088020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354130, 41.960365, 48.444798>,  <37.685768, 41.566502, 48.542065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354130, 41.960365, 48.444798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044128, 42.187054, 48.332943>,  <37.858128, 42.323067, 48.265831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044128, 42.187054, 48.332943>,  <38.354130, 41.960365, 48.444798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044128, 42.187054, 48.332943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158923, 0.603048, 0.781714,
		0.611650, 0.561389, -0.557429,
		-0.775002, 0.566723, -0.279637,
		37.811626, 42.357071, 48.249050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593864, 42.684406, 48.502258>,  <38.354130, 41.960365, 48.444798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593864, 42.684406, 48.502258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.194740, 42.709885, 48.495052>,  <37.955265, 42.725170, 48.490726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.194740, 42.709885, 48.495052>,  <38.593864, 42.684406, 48.502258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194740, 42.709885, 48.495052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025500, 0.621086, 0.783327,
		0.061083, 0.781150, -0.621348,
		-0.997807, 0.063692, -0.018018,
		37.895397, 42.728992, 48.489647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426189, 43.378925, 48.587559>,  <38.593864, 42.684406, 48.502258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426189, 43.378925, 48.587559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.092072, 43.190418, 48.700825>,  <37.891602, 43.077312, 48.768784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.092072, 43.190418, 48.700825>,  <38.426189, 43.378925, 48.587559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092072, 43.190418, 48.700825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033456, 0.557647, 0.829404,
		-0.548777, 0.683327, -0.481568,
		-0.835299, -0.471269, 0.283163,
		37.841480, 43.049038, 48.785774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092045, 43.885220, 48.805328>,  <38.426189, 43.378925, 48.587559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092045, 43.885220, 48.805328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956547, 43.555325, 48.986462>,  <37.875248, 43.357388, 49.095142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956547, 43.555325, 48.986462>,  <38.092045, 43.885220, 48.805328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956547, 43.555325, 48.986462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007432, 0.478930, 0.877822,
		-0.940848, 0.300725, -0.156106,
		-0.338747, -0.824737, 0.452835,
		37.854923, 43.307903, 49.122311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421551, 43.914314, 49.147770>,  <38.092045, 43.885220, 48.805328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421551, 43.914314, 49.147770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687660, 43.674961, 49.326366>,  <37.847324, 43.531349, 49.433525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687660, 43.674961, 49.326366>,  <37.421551, 43.914314, 49.147770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687660, 43.674961, 49.326366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048397, 0.562210, 0.825578,
		-0.745030, -0.570843, 0.345063,
		0.665273, -0.598380, 0.446490,
		37.887241, 43.495445, 49.460312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709023, 44.660133, 49.132961>,  <37.421551, 43.914314, 49.147770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709023, 44.660133, 49.132961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854626, 45.011913, 49.010281>,  <37.941990, 45.222980, 48.936672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854626, 45.011913, 49.010281>,  <37.709023, 44.660133, 49.132961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854626, 45.011913, 49.010281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027618, -0.318959, -0.947366,
		-0.930986, 0.353321, -0.091816,
		0.364010, 0.879448, -0.306704,
		37.963829, 45.275749, 48.918270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281097, 44.992081, 48.552868>,  <37.709023, 44.660133, 49.132961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281097, 44.992081, 48.552868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656406, 45.125584, 48.516518>,  <37.881592, 45.205685, 48.494705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656406, 45.125584, 48.516518>,  <37.281097, 44.992081, 48.552868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656406, 45.125584, 48.516518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025257, -0.328124, -0.944297,
		-0.344983, 0.883710, -0.316298,
		0.938269, 0.333755, -0.090877,
		37.937885, 45.225712, 48.489254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223484, 45.319210, 47.933544>,  <37.281097, 44.992081, 48.552868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223484, 45.319210, 47.933544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.618603, 45.259079, 47.949795>,  <37.855675, 45.223000, 47.959545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.618603, 45.259079, 47.949795>,  <37.223484, 45.319210, 47.933544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618603, 45.259079, 47.949795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003988, -0.285231, -0.958450,
		0.155673, 0.946596, -0.282351,
		0.987801, -0.150331, 0.040628,
		37.914944, 45.213978, 47.961983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451199, 45.528049, 47.295582>,  <37.223484, 45.319210, 47.933544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451199, 45.528049, 47.295582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746292, 45.306725, 47.450291>,  <37.923347, 45.173927, 47.543114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746292, 45.306725, 47.450291>,  <37.451199, 45.528049, 47.295582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746292, 45.306725, 47.450291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165900, -0.406753, -0.898348,
		0.654388, 0.726908, -0.208281,
		0.737735, -0.553315, 0.386768,
		37.967613, 45.140732, 47.566322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962666, 45.703522, 46.817120>,  <37.451199, 45.528049, 47.295582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962666, 45.703522, 46.817120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.081875, 45.376026, 47.013424>,  <38.153400, 45.179527, 47.131207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.081875, 45.376026, 47.013424>,  <37.962666, 45.703522, 46.817120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081875, 45.376026, 47.013424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182346, -0.455824, -0.871191,
		0.936980, 0.349124, 0.013448,
		0.298024, -0.818741, 0.490759,
		38.171284, 45.130405, 47.160652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574959, 45.627693, 46.549171>,  <37.962666, 45.703522, 46.817120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574959, 45.627693, 46.549171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435532, 45.278584, 46.685852>,  <38.351875, 45.069118, 46.767860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435532, 45.278584, 46.685852>,  <38.574959, 45.627693, 46.549171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435532, 45.278584, 46.685852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383671, -0.465487, -0.797570,
		0.855158, -0.146909, 0.497114,
		-0.348571, -0.872777, 0.341701,
		38.330959, 45.016750, 46.788361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097366, 45.127789, 46.268612>,  <38.574959, 45.627693, 46.549171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097366, 45.127789, 46.268612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.806553, 44.888096, 46.402679>,  <38.632065, 44.744278, 46.483120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.806553, 44.888096, 46.402679>,  <39.097366, 45.127789, 46.268612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806553, 44.888096, 46.402679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149694, -0.614757, -0.774381,
		0.670083, -0.512829, 0.536651,
		-0.727035, -0.599233, 0.335171,
		38.588444, 44.708324, 46.503231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307034, 44.398792, 46.262363>,  <39.097366, 45.127789, 46.268612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307034, 44.398792, 46.262363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908012, 44.392105, 46.235214>,  <38.668598, 44.388092, 46.218925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908012, 44.392105, 46.235214>,  <39.307034, 44.398792, 46.262363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908012, 44.392105, 46.235214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060628, -0.690247, -0.721030,
		-0.034799, -0.723381, 0.689571,
		-0.997554, -0.016716, -0.067877,
		38.608746, 44.387089, 46.214851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099007, 43.679222, 46.278366>,  <39.307034, 44.398792, 46.262363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099007, 43.679222, 46.278366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812145, 43.900421, 46.108715>,  <38.640030, 44.033142, 46.006924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812145, 43.900421, 46.108715>,  <39.099007, 43.679222, 46.278366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812145, 43.900421, 46.108715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079014, -0.669174, -0.738893,
		-0.692430, -0.496381, 0.523590,
		-0.717145, 0.553003, -0.424135,
		38.597000, 44.066322, 45.981476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568741, 43.224480, 46.079895>,  <39.099007, 43.679222, 46.278366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568741, 43.224480, 46.079895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473007, 43.529171, 45.839069>,  <38.415565, 43.711987, 45.694572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473007, 43.529171, 45.839069>,  <38.568741, 43.224480, 46.079895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473007, 43.529171, 45.839069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155138, -0.642124, -0.750739,
		-0.958463, -0.086273, 0.271855,
		-0.239333, 0.761730, -0.602068,
		38.401207, 43.757690, 45.658447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851307, 43.164684, 45.841026>,  <38.568741, 43.224480, 46.079895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851307, 43.164684, 45.841026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048393, 43.397694, 45.582443>,  <38.166645, 43.537498, 45.427296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048393, 43.397694, 45.582443>,  <37.851307, 43.164684, 45.841026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048393, 43.397694, 45.582443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186439, -0.654971, -0.732294,
		-0.849984, 0.481337, -0.214110,
		0.492715, 0.582519, -0.646454,
		38.196209, 43.572449, 45.388508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438820, 43.110863, 45.197227>,  <37.851307, 43.164684, 45.841026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438820, 43.110863, 45.197227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791809, 43.245598, 45.065907>,  <38.003601, 43.326439, 44.987114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791809, 43.245598, 45.065907>,  <37.438820, 43.110863, 45.197227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791809, 43.245598, 45.065907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107334, -0.535347, -0.837784,
		-0.457956, 0.774559, -0.436274,
		0.882472, 0.336841, -0.328302,
		38.056549, 43.346649, 44.967415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328617, 42.827888, 44.557148>,  <37.438820, 43.110863, 45.197227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328617, 42.827888, 44.557148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.707088, 42.956894, 44.546299>,  <37.934170, 43.034298, 44.539791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.707088, 42.956894, 44.546299>,  <37.328617, 42.827888, 44.557148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707088, 42.956894, 44.546299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174464, -0.578828, -0.796568,
		-0.272600, 0.748963, -0.603941,
		0.946177, 0.322510, -0.027122,
		37.990940, 43.053646, 44.538162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471027, 43.078079, 43.898346>,  <37.328617, 42.827888, 44.557148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471027, 43.078079, 43.898346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812561, 42.958389, 44.068726>,  <38.017483, 42.886574, 44.170952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812561, 42.958389, 44.068726>,  <37.471027, 43.078079, 43.898346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812561, 42.958389, 44.068726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144355, -0.650068, -0.746038,
		0.500130, 0.698480, -0.511855,
		0.853833, -0.299227, 0.425948,
		38.068710, 42.868622, 44.196510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558777, 43.650681, 43.322136>,  <37.471027, 43.078079, 43.898346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558777, 43.650681, 43.322136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184296, 43.689873, 43.187126>,  <36.959606, 43.713390, 43.106121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184296, 43.689873, 43.187126>,  <37.558777, 43.650681, 43.322136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184296, 43.689873, 43.187126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155352, 0.746074, 0.647487,
		0.315261, 0.658615, -0.683255,
		-0.936203, 0.097982, -0.337525,
		36.903435, 43.719269, 43.085869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390270, 44.392502, 43.236683>,  <37.558777, 43.650681, 43.322136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390270, 44.392502, 43.236683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034676, 44.213432, 43.275242>,  <36.821320, 44.105991, 43.298378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034676, 44.213432, 43.275242>,  <37.390270, 44.392502, 43.236683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034676, 44.213432, 43.275242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236582, 0.629220, 0.740346,
		-0.392093, 0.635348, -0.665278,
		-0.888984, -0.447678, 0.096401,
		36.767979, 44.079128, 43.304161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899208, 44.892849, 43.439651>,  <37.390270, 44.392502, 43.236683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899208, 44.892849, 43.439651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727627, 44.558136, 43.575764>,  <36.624676, 44.357307, 43.657433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727627, 44.558136, 43.575764>,  <36.899208, 44.892849, 43.439651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727627, 44.558136, 43.575764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243694, 0.469932, 0.848396,
		-0.869833, 0.281000, -0.405499,
		-0.428956, -0.836781, 0.340285,
		36.598938, 44.307102, 43.677849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154423, 45.097446, 43.665337>,  <36.899208, 44.892849, 43.439651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154423, 45.097446, 43.665337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.246407, 44.737560, 43.813728>,  <36.301598, 44.521629, 43.902763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.246407, 44.737560, 43.813728>,  <36.154423, 45.097446, 43.665337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246407, 44.737560, 43.813728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508571, 0.213906, 0.834026,
		-0.829743, -0.380463, -0.408380,
		0.229961, -0.899718, 0.370980,
		36.315395, 44.467644, 43.925022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540047, 44.959240, 43.962807>,  <36.154423, 45.097446, 43.665337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540047, 44.959240, 43.962807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818668, 44.733494, 44.140034>,  <35.985844, 44.598045, 44.246368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818668, 44.733494, 44.140034>,  <35.540047, 44.959240, 43.962807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818668, 44.733494, 44.140034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405265, 0.200112, 0.892029,
		-0.592090, -0.800906, -0.089327,
		0.696556, -0.564362, 0.443063,
		36.027634, 44.564186, 44.272953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143326, 44.717010, 44.473774>,  <35.540047, 44.959240, 43.962807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143326, 44.717010, 44.473774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524895, 44.658611, 44.578629>,  <35.753838, 44.623573, 44.641541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524895, 44.658611, 44.578629>,  <35.143326, 44.717010, 44.473774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524895, 44.658611, 44.578629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222797, 0.240529, 0.944726,
		-0.200982, -0.959599, 0.196918,
		0.953923, -0.146000, 0.262138,
		35.811073, 44.614811, 44.657269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028187, 44.466442, 45.047596>,  <35.143326, 44.717010, 44.473774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028187, 44.466442, 45.047596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412689, 44.576378, 45.055992>,  <35.643391, 44.642342, 45.061028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412689, 44.576378, 45.055992>,  <35.028187, 44.466442, 45.047596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412689, 44.576378, 45.055992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107995, 0.305473, 0.946057,
		0.253603, -0.911674, 0.323321,
		0.961260, 0.274840, 0.020987,
		35.701069, 44.658833, 45.062286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818771, 43.694286, 45.434258>,  <35.028187, 44.466442, 45.047596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818771, 43.694286, 45.434258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561291, 43.503506, 45.673645>,  <34.406803, 43.389038, 45.817280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561291, 43.503506, 45.673645>,  <34.818771, 43.694286, 45.434258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561291, 43.503506, 45.673645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243989, -0.869128, -0.430216,
		0.725338, -0.130911, 0.675831,
		-0.643704, -0.476947, 0.598471,
		34.368179, 43.360420, 45.853188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270538, 43.201893, 45.770367>,  <34.818771, 43.694286, 45.434258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270538, 43.201893, 45.770367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891472, 43.075348, 45.753147>,  <34.664032, 42.999420, 45.742817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891472, 43.075348, 45.753147>,  <35.270538, 43.201893, 45.770367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891472, 43.075348, 45.753147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299270, -0.833192, -0.465003,
		0.111244, -0.453548, 0.884262,
		-0.947662, -0.316362, -0.043045,
		34.607174, 42.980438, 45.740234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353039, 42.452183, 45.912125>,  <35.270538, 43.201893, 45.770367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353039, 42.452183, 45.912125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993710, 42.497822, 45.742424>,  <34.778111, 42.525204, 45.640602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993710, 42.497822, 45.742424>,  <35.353039, 42.452183, 45.912125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993710, 42.497822, 45.742424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172096, -0.797127, -0.578767,
		-0.404219, -0.592935, 0.696445,
		-0.898326, 0.114093, -0.424255,
		34.724213, 42.532051, 45.615147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120487, 41.775249, 45.757244>,  <35.353039, 42.452183, 45.912125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120487, 41.775249, 45.757244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934139, 42.028461, 45.509941>,  <34.822330, 42.180389, 45.361561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934139, 42.028461, 45.509941>,  <35.120487, 41.775249, 45.757244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934139, 42.028461, 45.509941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202627, -0.603821, -0.770936,
		-0.861343, -0.484428, 0.153030,
		-0.465866, 0.633032, -0.618255,
		34.794380, 42.218372, 45.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656178, 41.304447, 45.427147>,  <35.120487, 41.775249, 45.757244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656178, 41.304447, 45.427147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669746, 41.618603, 45.179916>,  <34.677887, 41.807095, 45.031578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669746, 41.618603, 45.179916>,  <34.656178, 41.304447, 45.427147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669746, 41.618603, 45.179916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064028, -0.615454, -0.785568,
		-0.997371, 0.066223, 0.029409,
		0.033923, 0.785386, -0.618076,
		34.679924, 41.854218, 44.994495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182171, 41.159653, 44.902477>,  <34.656178, 41.304447, 45.427147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182171, 41.159653, 44.902477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423820, 41.436417, 44.744335>,  <34.568810, 41.602474, 44.649452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423820, 41.436417, 44.744335>,  <34.182171, 41.159653, 44.902477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423820, 41.436417, 44.744335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048860, -0.463021, -0.885000,
		-0.795394, 0.553963, -0.245913,
		0.604120, 0.691908, -0.395351,
		34.605057, 41.643990, 44.625729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969757, 41.137482, 44.231789>,  <34.182171, 41.159653, 44.902477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969757, 41.137482, 44.231789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303574, 41.357391, 44.217377>,  <34.503864, 41.489338, 44.208729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303574, 41.357391, 44.217377>,  <33.969757, 41.137482, 44.231789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303574, 41.357391, 44.217377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089611, -0.199977, -0.975694,
		-0.543615, 0.811024, -0.216154,
		0.834537, 0.549772, -0.036034,
		34.553936, 41.522324, 44.206566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.417423, 41.288441, 50.126469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.734898, 41.486755, 49.985470>,  <34.925381, 41.605743, 49.900871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.734898, 41.486755, 49.985470>,  <34.417423, 41.288441, 50.126469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734898, 41.486755, 49.985470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113304, -0.689796, -0.715083,
		-0.597685, 0.527611, -0.603656,
		0.793685, 0.495791, -0.352500,
		34.973003, 41.635494, 49.879719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265858, 41.492863, 49.378788>,  <34.417423, 41.288441, 50.126469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265858, 41.492863, 49.378788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663490, 41.481930, 49.420837>,  <34.902069, 41.475372, 49.446068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.663490, 41.481930, 49.420837>,  <34.265858, 41.492863, 49.378788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663490, 41.481930, 49.420837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069467, -0.584064, -0.808729,
		0.083501, 0.811247, -0.578710,
		0.994083, -0.027328, 0.105125,
		34.961716, 41.473732, 49.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569641, 41.580612, 48.682934>,  <34.265858, 41.492863, 49.378788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569641, 41.580612, 48.682934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.864700, 41.403576, 48.886890>,  <35.041737, 41.297356, 49.009266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.864700, 41.403576, 48.886890>,  <34.569641, 41.580612, 48.682934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864700, 41.403576, 48.886890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099317, -0.675850, -0.730317,
		0.667843, 0.589357, -0.454582,
		0.737647, -0.442589, 0.509894,
		35.085995, 41.270798, 49.039860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072258, 41.653835, 48.297016>,  <34.569641, 41.580612, 48.682934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072258, 41.653835, 48.297016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.147110, 41.345261, 48.540283>,  <35.192020, 41.160114, 48.686241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.147110, 41.345261, 48.540283>,  <35.072258, 41.653835, 48.297016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147110, 41.345261, 48.540283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068361, -0.607375, -0.791469,
		0.979953, 0.189686, -0.060924,
		0.187135, -0.771437, 0.608166,
		35.203251, 41.113831, 48.722733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431202, 41.225407, 47.878723>,  <35.072258, 41.653835, 48.297016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431202, 41.225407, 47.878723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363754, 40.971909, 48.180698>,  <35.323288, 40.819809, 48.361885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363754, 40.971909, 48.180698>,  <35.431202, 41.225407, 47.878723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363754, 40.971909, 48.180698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116918, -0.773357, -0.623097,
		0.978723, -0.016798, 0.204496,
		-0.168615, -0.633748, 0.754938,
		35.313171, 40.781784, 48.407181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943829, 40.610256, 47.846935>,  <35.431202, 41.225407, 47.878723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943829, 40.610256, 47.846935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.617268, 40.481808, 48.038921>,  <35.421329, 40.404739, 48.154114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.617268, 40.481808, 48.038921>,  <35.943829, 40.610256, 47.846935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617268, 40.481808, 48.038921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075011, -0.765120, -0.639504,
		0.572590, -0.558096, 0.600559,
		-0.816403, -0.321124, 0.479963,
		35.372345, 40.385471, 48.182911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018784, 39.915356, 47.932583>,  <35.943829, 40.610256, 47.846935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018784, 39.915356, 47.932583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.626461, 39.987381, 47.962528>,  <35.391068, 40.030598, 47.980495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.626461, 39.987381, 47.962528>,  <36.018784, 39.915356, 47.932583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626461, 39.987381, 47.962528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193365, -0.848380, -0.492810,
		-0.025227, -0.497825, 0.866911,
		-0.980802, 0.180062, 0.074860,
		35.332222, 40.041401, 47.984985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783394, 39.156116, 48.099617>,  <36.018784, 39.915356, 47.932583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783394, 39.156116, 48.099617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474148, 39.389748, 48.000706>,  <35.288601, 39.529926, 47.941357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474148, 39.389748, 48.000706>,  <35.783394, 39.156116, 48.099617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474148, 39.389748, 48.000706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357059, -0.723006, -0.591414,
		-0.524220, -0.368935, 0.767516,
		-0.773112, 0.584079, -0.247283,
		35.242214, 39.564972, 47.926521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176865, 38.749638, 48.194172>,  <35.783394, 39.156116, 48.099617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176865, 38.749638, 48.194172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063091, 39.041168, 47.945042>,  <34.994827, 39.216087, 47.795563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063091, 39.041168, 47.945042>,  <35.176865, 38.749638, 48.194172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063091, 39.041168, 47.945042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518962, -0.663292, -0.539186,
		-0.806088, 0.169861, 0.566895,
		-0.284430, 0.728829, -0.622823,
		34.977760, 39.259815, 47.758194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604572, 38.410778, 47.868111>,  <35.176865, 38.749638, 48.194172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604572, 38.410778, 47.868111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.674335, 38.731125, 47.638954>,  <34.716194, 38.923332, 47.501461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.674335, 38.731125, 47.638954>,  <34.604572, 38.410778, 47.868111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674335, 38.731125, 47.638954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449466, -0.452908, -0.769970,
		-0.876107, 0.391779, 0.280973,
		0.174403, 0.800864, -0.572888,
		34.726658, 38.971386, 47.467087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927944, 38.737698, 47.509113>,  <34.604572, 38.410778, 47.868111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927944, 38.737698, 47.509113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.270599, 38.787796, 47.308922>,  <34.476192, 38.817856, 47.188805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.270599, 38.787796, 47.308922>,  <33.927944, 38.737698, 47.509113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270599, 38.787796, 47.308922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383542, -0.494211, -0.780161,
		-0.345058, 0.860273, -0.375322,
		0.856639, 0.125249, -0.500482,
		34.527592, 38.825371, 47.158779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711746, 38.937149, 46.770256>,  <33.927944, 38.737698, 47.509113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711746, 38.937149, 46.770256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087570, 38.800827, 46.757153>,  <34.313065, 38.719032, 46.749290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087570, 38.800827, 46.757153>,  <33.711746, 38.937149, 46.770256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087570, 38.800827, 46.757153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222470, -0.534962, -0.815060,
		0.260253, 0.773087, -0.578450,
		0.939561, -0.340810, -0.032763,
		34.369438, 38.698586, 46.747322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261429, 39.406799, 46.328037>,  <33.711746, 38.937149, 46.770256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261429, 39.406799, 46.328037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.920456, 39.524166, 46.154945>,  <32.715870, 39.594585, 46.051090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.920456, 39.524166, 46.154945>,  <33.261429, 39.406799, 46.328037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920456, 39.524166, 46.154945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012287, 0.838685, 0.544479,
		0.522688, 0.458816, -0.718530,
		-0.852436, 0.293421, -0.432733,
		32.664726, 39.612194, 46.025127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421841, 40.057270, 46.054272>,  <33.261429, 39.406799, 46.328037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421841, 40.057270, 46.054272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023449, 40.049908, 46.089321>,  <32.784412, 40.045490, 46.110352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023449, 40.049908, 46.089321>,  <33.421841, 40.057270, 46.054272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023449, 40.049908, 46.089321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027899, 0.866108, 0.499078,
		-0.085075, 0.499518, -0.862116,
		-0.995984, -0.018407, 0.087620,
		32.724655, 40.044384, 46.115608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214977, 40.717937, 45.978458>,  <33.421841, 40.057270, 46.054272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214977, 40.717937, 45.978458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.898266, 40.555004, 46.160519>,  <32.708241, 40.457245, 46.269756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.898266, 40.555004, 46.160519>,  <33.214977, 40.717937, 45.978458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898266, 40.555004, 46.160519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112386, 0.829602, 0.546929,
		-0.600378, 0.381894, -0.702640,
		-0.791780, -0.407331, 0.455155,
		32.660732, 40.432804, 46.297066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711578, 41.228195, 45.934074>,  <33.214977, 40.717937, 45.978458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711578, 41.228195, 45.934074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.613556, 40.978748, 46.231007>,  <32.554745, 40.829082, 46.409164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.613556, 40.978748, 46.231007>,  <32.711578, 41.228195, 45.934074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613556, 40.978748, 46.231007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093120, 0.777274, 0.622232,
		-0.965027, 0.083355, -0.248546,
		-0.245055, -0.623616, 0.742329,
		32.540039, 40.791664, 46.453705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085110, 41.456245, 46.225220>,  <32.711578, 41.228195, 45.934074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085110, 41.456245, 46.225220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.230530, 41.232830, 46.523445>,  <32.317780, 41.098782, 46.702381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.230530, 41.232830, 46.523445>,  <32.085110, 41.456245, 46.225220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230530, 41.232830, 46.523445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147825, 0.755597, 0.638139,
		-0.919773, -0.342205, 0.192128,
		0.363546, -0.558542, 0.745564,
		32.339592, 41.065269, 46.747116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839998, 41.879787, 46.697491>,  <32.085110, 41.456245, 46.225220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839998, 41.879787, 46.697491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.085938, 41.627117, 46.886360>,  <32.233501, 41.475513, 46.999680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.085938, 41.627117, 46.886360>,  <31.839998, 41.879787, 46.697491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085938, 41.627117, 46.886360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073945, 0.642249, 0.762921,
		-0.785171, -0.434166, 0.441595,
		0.614848, -0.631677, 0.472171,
		32.270393, 41.437614, 47.028011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550812, 41.726208, 47.386978>,  <31.839998, 41.879787, 46.697491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550812, 41.726208, 47.386978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.944342, 41.655643, 47.399414>,  <32.180458, 41.613304, 47.406876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.944342, 41.655643, 47.399414>,  <31.550812, 41.726208, 47.386978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944342, 41.655643, 47.399414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056382, 0.469704, 0.881022,
		-0.170027, -0.865018, 0.472053,
		0.983825, -0.176413, 0.031091,
		32.239491, 41.602718, 47.408741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692705, 41.455936, 48.087475>,  <31.550812, 41.726208, 47.386978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692705, 41.455936, 48.087475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050720, 41.586536, 47.965946>,  <32.265530, 41.664894, 47.893028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050720, 41.586536, 47.965946>,  <31.692705, 41.455936, 48.087475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050720, 41.586536, 47.965946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125138, 0.470025, 0.873737,
		0.428071, -0.820049, 0.379835,
		0.895040, 0.326490, -0.303824,
		32.319233, 41.684486, 47.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122448, 41.443371, 48.711163>,  <31.692705, 41.455936, 48.087475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122448, 41.443371, 48.711163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.338867, 41.673008, 48.465340>,  <32.468719, 41.810791, 48.317844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.338867, 41.673008, 48.465340>,  <32.122448, 41.443371, 48.711163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338867, 41.673008, 48.465340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275161, 0.569693, 0.774426,
		0.794706, -0.588102, 0.150261,
		0.541045, 0.574095, -0.614562,
		32.501183, 41.845238, 48.280972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605534, 41.631195, 49.075489>,  <32.122448, 41.443371, 48.711163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605534, 41.631195, 49.075489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.586601, 41.907959, 48.787315>,  <32.575241, 42.074017, 48.614410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.586601, 41.907959, 48.787315>,  <32.605534, 41.631195, 49.075489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586601, 41.907959, 48.787315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366166, 0.683053, 0.631950,
		0.929345, -0.233888, -0.285682,
		-0.047330, 0.691906, -0.720434,
		32.572403, 42.115532, 48.571186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163925, 41.993645, 49.095871>,  <32.605534, 41.631195, 49.075489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163925, 41.993645, 49.095871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.958370, 42.265228, 48.886135>,  <32.835037, 42.428177, 48.760292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.958370, 42.265228, 48.886135>,  <33.163925, 41.993645, 49.095871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958370, 42.265228, 48.886135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242723, 0.701329, 0.670242,
		0.822801, 0.217161, -0.525204,
		-0.513891, 0.678955, -0.524344,
		32.804203, 42.468914, 48.728832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602711, 42.624462, 49.062210>,  <33.163925, 41.993645, 49.095871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602711, 42.624462, 49.062210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218792, 42.722637, 49.007740>,  <32.988441, 42.781544, 48.975060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218792, 42.722637, 49.007740>,  <33.602711, 42.624462, 49.062210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218792, 42.722637, 49.007740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096065, 0.743100, 0.662249,
		0.263732, 0.622545, -0.736806,
		-0.959800, 0.245438, -0.136174,
		32.930851, 42.796268, 48.966888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515915, 43.333897, 48.833115>,  <33.602711, 42.624462, 49.062210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515915, 43.333897, 48.833115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.172215, 43.230358, 49.009609>,  <32.965996, 43.168236, 49.115505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.172215, 43.230358, 49.009609>,  <33.515915, 43.333897, 48.833115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172215, 43.230358, 49.009609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074459, 0.790068, 0.608481,
		-0.506105, 0.555692, -0.659594,
		-0.859252, -0.258843, 0.441234,
		32.914440, 43.152706, 49.141979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999271, 43.938072, 48.875237>,  <33.515915, 43.333897, 48.833115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999271, 43.938072, 48.875237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967316, 43.680458, 49.179562>,  <32.948143, 43.525890, 49.362156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967316, 43.680458, 49.179562>,  <32.999271, 43.938072, 48.875237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967316, 43.680458, 49.179562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057829, 0.758972, 0.648550,
		-0.995125, 0.095809, -0.023389,
		-0.079888, -0.644036, 0.760812,
		32.943348, 43.487247, 49.407806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129337, 44.479614, 48.343014>,  <32.999271, 43.938072, 48.875237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129337, 44.479614, 48.343014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.021572, 44.760853, 48.079781>,  <32.956913, 44.929596, 47.921841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.021572, 44.760853, 48.079781>,  <33.129337, 44.479614, 48.343014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021572, 44.760853, 48.079781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117060, -0.654376, -0.747054,
		-0.955882, -0.278304, 0.093995,
		-0.269416, 0.703093, -0.658085,
		32.940746, 44.971779, 47.882355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645309, 44.183193, 47.941540>,  <33.129337, 44.479614, 48.343014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645309, 44.183193, 47.941540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844944, 44.479591, 47.761829>,  <32.964725, 44.657429, 47.654003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844944, 44.479591, 47.761829>,  <32.645309, 44.183193, 47.941540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844944, 44.479591, 47.761829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227302, -0.612250, -0.757287,
		-0.836212, 0.275829, -0.473992,
		0.499083, 0.740992, -0.449274,
		32.994667, 44.701889, 47.627048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514366, 44.082142, 47.235611>,  <32.645309, 44.183193, 47.941540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514366, 44.082142, 47.235611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.849144, 44.300377, 47.252861>,  <33.050011, 44.431320, 47.263210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.849144, 44.300377, 47.252861>,  <32.514366, 44.082142, 47.235611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849144, 44.300377, 47.252861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372060, -0.509416, -0.775930,
		-0.401373, 0.665452, -0.629344,
		0.836942, 0.545591, 0.043122,
		33.100227, 44.464054, 47.265797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637562, 44.241180, 46.602573>,  <32.514366, 44.082142, 47.235611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637562, 44.241180, 46.602573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.001087, 44.288792, 46.762520>,  <33.219204, 44.317360, 46.858486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.001087, 44.288792, 46.762520>,  <32.637562, 44.241180, 46.602573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001087, 44.288792, 46.762520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387664, -0.595141, -0.703935,
		0.154186, 0.794758, -0.587015,
		0.908814, 0.119028, 0.399861,
		33.273731, 44.324501, 46.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162437, 44.558846, 46.054935>,  <32.637562, 44.241180, 46.602573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162437, 44.558846, 46.054935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388134, 44.378708, 46.331726>,  <33.523552, 44.270626, 46.497799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388134, 44.378708, 46.331726>,  <33.162437, 44.558846, 46.054935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388134, 44.378708, 46.331726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470929, -0.512861, -0.717774,
		0.678128, 0.730868, -0.077299,
		0.564241, -0.450340, 0.691972,
		33.557407, 44.243607, 46.539318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872105, 44.538109, 45.803581>,  <33.162437, 44.558846, 46.054935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872105, 44.538109, 45.803581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863556, 44.242409, 46.072819>,  <33.858425, 44.064991, 46.234364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863556, 44.242409, 46.072819>,  <33.872105, 44.538109, 45.803581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863556, 44.242409, 46.072819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651739, -0.520837, -0.551330,
		0.758142, 0.426900, 0.492927,
		-0.021372, -0.739247, 0.673096,
		33.857143, 44.020634, 46.274746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541595, 44.238560, 45.827137>,  <33.872105, 44.538109, 45.803581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541595, 44.238560, 45.827137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299625, 43.952625, 45.967464>,  <34.154442, 43.781063, 46.051662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299625, 43.952625, 45.967464>,  <34.541595, 44.238560, 45.827137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299625, 43.952625, 45.967464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545989, -0.693051, -0.470719,
		0.579623, -0.093206, 0.809536,
		-0.604923, -0.714838, 0.350819,
		34.118149, 43.738174, 46.072712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270004, 44.350807, 45.708279>,  <34.541595, 44.238560, 45.827137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270004, 44.350807, 45.708279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.522923, 44.628849, 45.571438>,  <35.674675, 44.795673, 45.489334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.522923, 44.628849, 45.571438>,  <35.270004, 44.350807, 45.708279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522923, 44.628849, 45.571438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106221, 0.359620, 0.927033,
		0.767409, -0.622499, 0.153552,
		0.632298, 0.695103, -0.342099,
		35.712612, 44.837379, 45.468807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907276, 44.302570, 46.144257>,  <35.270004, 44.350807, 45.708279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907276, 44.302570, 46.144257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929340, 44.664654, 45.975704>,  <35.942581, 44.881905, 45.874573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929340, 44.664654, 45.975704>,  <35.907276, 44.302570, 46.144257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929340, 44.664654, 45.975704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207648, 0.402396, 0.891606,
		0.976647, -0.136684, -0.165766,
		0.055165, 0.905205, -0.421380,
		35.945889, 44.936214, 45.849289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570358, 44.464188, 46.279850>,  <35.907276, 44.302570, 46.144257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570358, 44.464188, 46.279850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.366886, 44.798000, 46.195187>,  <36.244804, 44.998287, 46.144386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.366886, 44.798000, 46.195187>,  <36.570358, 44.464188, 46.279850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366886, 44.798000, 46.195187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295960, 0.400355, 0.867251,
		0.808490, 0.378507, -0.450640,
		-0.508676, 0.834535, -0.211660,
		36.214283, 45.048359, 46.131687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020367, 45.115257, 46.531460>,  <36.570358, 44.464188, 46.279850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020367, 45.115257, 46.531460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.673267, 45.311550, 46.500000>,  <36.465008, 45.429325, 46.481125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.673267, 45.311550, 46.500000>,  <37.020367, 45.115257, 46.531460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673267, 45.311550, 46.500000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261001, 0.584631, 0.768170,
		0.422946, 0.646055, -0.635397,
		-0.867753, 0.490734, -0.078646,
		36.412941, 45.458771, 46.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259041, 45.838299, 46.604549>,  <37.020367, 45.115257, 46.531460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259041, 45.838299, 46.604549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.868477, 45.821800, 46.689335>,  <36.634140, 45.811901, 46.740208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.868477, 45.821800, 46.689335>,  <37.259041, 45.838299, 46.604549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868477, 45.821800, 46.689335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133016, 0.658376, 0.740843,
		-0.170107, 0.751559, -0.637356,
		-0.976407, -0.041244, 0.211963,
		36.575554, 45.809425, 46.752922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165318, 46.448711, 46.779701>,  <37.259041, 45.838299, 46.604549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165318, 46.448711, 46.779701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825695, 46.280216, 46.907242>,  <36.621922, 46.179119, 46.983765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825695, 46.280216, 46.907242>,  <37.165318, 46.448711, 46.779701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825695, 46.280216, 46.907242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010770, 0.589601, 0.807623,
		-0.528197, 0.689149, -0.496066,
		-0.849053, -0.421242, 0.318848,
		36.570980, 46.153843, 47.002895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736568, 46.959618, 46.954063>,  <37.165318, 46.448711, 46.779701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736568, 46.959618, 46.954063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562489, 46.661053, 47.155445>,  <36.458038, 46.481915, 47.276276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562489, 46.661053, 47.155445>,  <36.736568, 46.959618, 46.954063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562489, 46.661053, 47.155445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002158, 0.558325, 0.829619,
		-0.900329, 0.362140, -0.241375,
		-0.435204, -0.746410, 0.503458,
		36.431927, 46.437130, 47.306484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127258, 47.124401, 47.339188>,  <36.736568, 46.959618, 46.954063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127258, 47.124401, 47.339188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.215004, 46.786022, 47.533611>,  <36.267651, 46.582996, 47.650265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.215004, 46.786022, 47.533611>,  <36.127258, 47.124401, 47.339188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215004, 46.786022, 47.533611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128379, 0.468836, 0.873906,
		-0.967160, -0.254103, -0.005757,
		0.219363, -0.845946, 0.486061,
		36.280811, 46.532238, 47.679428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656929, 47.145836, 47.883091>,  <36.127258, 47.124401, 47.339188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656929, 47.145836, 47.883091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946449, 46.888477, 47.982815>,  <36.120159, 46.734062, 48.042648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946449, 46.888477, 47.982815>,  <35.656929, 47.145836, 47.883091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946449, 46.888477, 47.982815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068843, 0.426844, 0.901701,
		-0.686568, -0.635487, 0.353243,
		0.723799, -0.643398, 0.249308,
		36.163589, 46.695457, 48.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.719776, 36.281792, 36.675419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085751, 36.166233, 36.788151>,  <37.305336, 36.096897, 36.855789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085751, 36.166233, 36.788151>,  <36.719776, 36.281792, 36.675419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085751, 36.166233, 36.788151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210980, 0.937648, 0.276233,
		-0.344064, -0.193274, 0.918839,
		0.914936, -0.288899, 0.281834,
		37.360229, 36.079563, 36.872700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859142, 36.522598, 37.414700>,  <36.719776, 36.281792, 36.675419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859142, 36.522598, 37.414700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201942, 36.459576, 37.218445>,  <37.407623, 36.421761, 37.100693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201942, 36.459576, 37.218445>,  <36.859142, 36.522598, 37.414700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201942, 36.459576, 37.218445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293938, 0.931491, 0.214299,
		0.423256, -0.327871, 0.844604,
		0.857003, -0.157558, -0.490633,
		37.459042, 36.412308, 37.071255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515549, 36.637123, 37.880947>,  <36.859142, 36.522598, 37.414700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515549, 36.637123, 37.880947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645058, 36.730297, 37.514141>,  <37.722763, 36.786201, 37.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645058, 36.730297, 37.514141>,  <37.515549, 36.637123, 37.880947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645058, 36.730297, 37.514141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279202, 0.902536, 0.327835,
		0.904008, -0.362170, 0.227160,
		0.323752, 0.232942, -0.917018,
		37.742191, 36.800179, 37.239037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109818, 37.120049, 37.980675>,  <37.515549, 36.637123, 37.880947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109818, 37.120049, 37.980675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013836, 37.167015, 37.595211>,  <37.956245, 37.195194, 37.363934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013836, 37.167015, 37.595211>,  <38.109818, 37.120049, 37.980675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013836, 37.167015, 37.595211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122355, 0.988401, 0.089961,
		0.963042, -0.096321, -0.251541,
		-0.239958, 0.117414, -0.963657,
		37.941849, 37.202240, 37.306114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546345, 37.658104, 37.737083>,  <38.109818, 37.120049, 37.980675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546345, 37.658104, 37.737083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262276, 37.661018, 37.455490>,  <38.091835, 37.662766, 37.286533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262276, 37.661018, 37.455490>,  <38.546345, 37.658104, 37.737083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262276, 37.661018, 37.455490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001788, 0.999925, 0.012150,
		0.704021, 0.009888, -0.710111,
		-0.710177, 0.007284, -0.703986,
		38.049221, 37.663204, 37.244293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718102, 38.202538, 37.300079>,  <38.546345, 37.658104, 37.737083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718102, 38.202538, 37.300079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333214, 38.130287, 37.218575>,  <38.102283, 38.086937, 37.169674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333214, 38.130287, 37.218575>,  <38.718102, 38.202538, 37.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333214, 38.130287, 37.218575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204821, 0.973202, 0.104530,
		0.179417, 0.142314, -0.973425,
		-0.962215, -0.180624, -0.203758,
		38.044548, 38.076099, 37.157448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494221, 38.858833, 36.984600>,  <38.718102, 38.202538, 37.300079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494221, 38.858833, 36.984600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153950, 38.673611, 37.084137>,  <37.949787, 38.562477, 37.143860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153950, 38.673611, 37.084137>,  <38.494221, 38.858833, 36.984600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153950, 38.673611, 37.084137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490715, 0.869251, -0.060008,
		-0.188523, -0.173161, -0.966682,
		-0.850681, -0.463053, 0.248847,
		37.898746, 38.534695, 37.158791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947678, 39.196056, 36.516987>,  <38.494221, 38.858833, 36.984600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947678, 39.196056, 36.516987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754677, 39.076191, 36.846203>,  <37.638878, 39.004272, 37.043732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754677, 39.076191, 36.846203>,  <37.947678, 39.196056, 36.516987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754677, 39.076191, 36.846203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359261, 0.924685, 0.126054,
		-0.798828, -0.234866, -0.553815,
		-0.482499, -0.299660, 0.823042,
		37.609928, 38.986294, 37.093117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382404, 39.605484, 36.560764>,  <37.947678, 39.196056, 36.516987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382404, 39.605484, 36.560764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393375, 39.445564, 36.927242>,  <37.399960, 39.349613, 37.147129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393375, 39.445564, 36.927242>,  <37.382404, 39.605484, 36.560764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393375, 39.445564, 36.927242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457022, 0.810121, 0.367199,
		-0.889032, -0.428791, -0.160500,
		0.027428, -0.399804, 0.916190,
		37.401604, 39.325623, 37.202099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691231, 39.737171, 36.875782>,  <37.382404, 39.605484, 36.560764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691231, 39.737171, 36.875782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932083, 39.682270, 37.190384>,  <37.076595, 39.649330, 37.379147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932083, 39.682270, 37.190384>,  <36.691231, 39.737171, 36.875782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932083, 39.682270, 37.190384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462820, 0.742701, 0.483935,
		-0.650562, -0.655406, 0.383683,
		0.602136, -0.137253, 0.786508,
		37.112724, 39.641094, 37.426334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298874, 39.858940, 37.463451>,  <36.691231, 39.737171, 36.875782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298874, 39.858940, 37.463451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664951, 39.918118, 37.613400>,  <36.884598, 39.953625, 37.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664951, 39.918118, 37.613400>,  <36.298874, 39.858940, 37.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664951, 39.918118, 37.613400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357685, 0.726745, 0.586433,
		-0.185680, -0.670788, 0.718030,
		0.915196, 0.147940, 0.374872,
		36.939510, 39.962498, 37.725861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120037, 39.800182, 38.091866>,  <36.298874, 39.858940, 37.463451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120037, 39.800182, 38.091866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482101, 39.968880, 38.113113>,  <36.699341, 40.070099, 38.125862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482101, 39.968880, 38.113113>,  <36.120037, 39.800182, 38.091866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482101, 39.968880, 38.113113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283704, 0.506326, 0.814338,
		0.316550, -0.752173, 0.577955,
		0.905157, 0.421746, 0.053117,
		36.753647, 40.095402, 38.129047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076729, 39.189034, 38.499283>,  <36.120037, 39.800182, 38.091866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076729, 39.189034, 38.499283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699024, 39.105953, 38.601444>,  <35.472401, 39.056107, 38.662739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699024, 39.105953, 38.601444>,  <36.076729, 39.189034, 38.499283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699024, 39.105953, 38.601444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015512, -0.803053, -0.595706,
		0.328826, -0.558541, 0.761515,
		-0.944263, -0.207696, 0.255401,
		35.415745, 39.043644, 38.678066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067066, 38.494865, 38.589508>,  <36.076729, 39.189034, 38.499283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067066, 38.494865, 38.589508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683018, 38.595448, 38.540634>,  <35.452587, 38.655796, 38.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683018, 38.595448, 38.540634>,  <36.067066, 38.494865, 38.589508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683018, 38.595448, 38.540634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123504, -0.773571, -0.621559,
		-0.250812, -0.581684, 0.773781,
		-0.960125, 0.251460, -0.122180,
		35.394981, 38.670887, 38.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646721, 37.882008, 38.705772>,  <36.067066, 38.494865, 38.589508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646721, 37.882008, 38.705772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449543, 38.118057, 38.450035>,  <35.331238, 38.259686, 38.296593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449543, 38.118057, 38.450035>,  <35.646721, 37.882008, 38.705772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449543, 38.118057, 38.450035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245372, -0.799290, -0.548569,
		-0.834744, -0.113537, 0.538806,
		-0.492945, 0.590123, -0.639344,
		35.301659, 38.295094, 38.258232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036846, 37.485096, 38.601299>,  <35.646721, 37.882008, 38.705772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036846, 37.485096, 38.601299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003609, 37.775940, 38.328709>,  <34.983665, 37.950447, 38.165154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003609, 37.775940, 38.328709>,  <35.036846, 37.485096, 38.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003609, 37.775940, 38.328709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465552, -0.632949, -0.618575,
		-0.881111, 0.265864, 0.391100,
		-0.083089, 0.727112, -0.681473,
		34.978683, 37.994072, 38.124268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428352, 37.395367, 38.375782>,  <35.036846, 37.485096, 38.601299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428352, 37.395367, 38.375782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573963, 37.633450, 38.089226>,  <34.661331, 37.776299, 37.917294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573963, 37.633450, 38.089226>,  <34.428352, 37.395367, 38.375782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573963, 37.633450, 38.089226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555560, -0.478588, -0.679931,
		-0.747554, 0.645511, 0.156453,
		0.364027, 0.595205, -0.716391,
		34.683170, 37.812012, 37.874310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905460, 37.674446, 38.037823>,  <34.428352, 37.395367, 38.375782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905460, 37.674446, 38.037823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216972, 37.667446, 37.786999>,  <34.403877, 37.663246, 37.636505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216972, 37.667446, 37.786999>,  <33.905460, 37.674446, 38.037823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216972, 37.667446, 37.786999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544004, -0.516585, -0.661211,
		-0.312355, 0.856057, -0.411826,
		0.778778, -0.017502, -0.627056,
		34.450607, 37.662197, 37.598881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649323, 37.737114, 37.365055>,  <33.905460, 37.674446, 38.037823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649323, 37.737114, 37.365055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019341, 37.589909, 37.327393>,  <34.241352, 37.501587, 37.304794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019341, 37.589909, 37.327393>,  <33.649323, 37.737114, 37.365055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019341, 37.589909, 37.327393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334448, -0.671508, -0.661228,
		0.180115, 0.643153, -0.744254,
		0.925042, -0.368011, -0.094153,
		34.296852, 37.479504, 37.299149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671928, 37.713562, 36.664707>,  <33.649323, 37.737114, 37.365055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671928, 37.713562, 36.664707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969849, 37.486473, 36.804970>,  <34.148602, 37.350220, 36.889130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969849, 37.486473, 36.804970>,  <33.671928, 37.713562, 36.664707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969849, 37.486473, 36.804970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408323, -0.803382, -0.433416,
		0.527775, 0.179626, -0.830174,
		0.744799, -0.567725, 0.350660,
		34.193287, 37.316154, 36.910168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989460, 37.547077, 36.080349>,  <33.671928, 37.713562, 36.664707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989460, 37.547077, 36.080349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084755, 37.260437, 36.342564>,  <34.141933, 37.088451, 36.499893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084755, 37.260437, 36.342564>,  <33.989460, 37.547077, 36.080349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084755, 37.260437, 36.342564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413290, -0.685608, -0.599278,
		0.878882, -0.128155, -0.459502,
		0.238238, -0.716602, 0.655533,
		34.156227, 37.045456, 36.539223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371891, 37.085762, 35.745136>,  <33.989460, 37.547077, 36.080349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371891, 37.085762, 35.745136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255219, 36.885132, 36.070919>,  <34.185215, 36.764751, 36.266388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255219, 36.885132, 36.070919>,  <34.371891, 37.085762, 35.745136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255219, 36.885132, 36.070919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371330, -0.725323, -0.579673,
		0.881495, -0.471513, 0.025314,
		-0.291685, -0.501579, 0.814456,
		34.167713, 36.734657, 36.315254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598366, 36.402649, 35.588539>,  <34.371891, 37.085762, 35.745136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598366, 36.402649, 35.588539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300282, 36.403851, 35.855270>,  <34.121433, 36.404572, 36.015308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300282, 36.403851, 35.855270>,  <34.598366, 36.402649, 35.588539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300282, 36.403851, 35.855270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504129, -0.657091, -0.560433,
		0.436484, -0.753805, 0.491182,
		-0.745209, 0.003000, 0.666825,
		34.076717, 36.404751, 36.055317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525177, 35.683525, 35.708755>,  <34.598366, 36.402649, 35.588539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525177, 35.683525, 35.708755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185749, 35.868851, 35.810951>,  <33.982094, 35.980045, 35.872269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185749, 35.868851, 35.810951>,  <34.525177, 35.683525, 35.708755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185749, 35.868851, 35.810951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526923, -0.696402, -0.487213,
		-0.047811, -0.548055, 0.835075,
		-0.848567, 0.463314, 0.255487,
		33.931179, 36.007847, 35.887596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052158, 35.145462, 36.054440>,  <34.525177, 35.683525, 35.708755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052158, 35.145462, 36.054440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816021, 35.449730, 35.946457>,  <33.674339, 35.632290, 35.881668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816021, 35.449730, 35.946457>,  <34.052158, 35.145462, 36.054440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816021, 35.449730, 35.946457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718774, -0.647596, -0.252949,
		-0.367236, 0.044714, 0.929052,
		-0.590340, 0.760671, -0.269960,
		33.638920, 35.677933, 35.865467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322468, 34.946903, 36.261589>,  <34.052158, 35.145462, 36.054440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322468, 34.946903, 36.261589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296844, 35.226376, 35.976566>,  <33.281471, 35.394058, 35.805553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296844, 35.226376, 35.976566>,  <33.322468, 34.946903, 36.261589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296844, 35.226376, 35.976566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635227, -0.579240, -0.510849,
		-0.769664, 0.419911, 0.480928,
		-0.064062, 0.698681, -0.712559,
		33.277626, 35.435982, 35.762798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713299, 35.346397, 36.179955>,  <33.322468, 34.946903, 36.261589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713299, 35.346397, 36.179955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896381, 35.267838, 35.833099>,  <33.006233, 35.220703, 35.624985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896381, 35.267838, 35.833099>,  <32.713299, 35.346397, 36.179955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896381, 35.267838, 35.833099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792025, -0.533210, -0.297293,
		-0.403979, 0.822870, -0.399607,
		0.457708, -0.196399, -0.867139,
		33.033695, 35.208920, 35.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531822, 35.962826, 36.592941>,  <32.713299, 35.346397, 36.179955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531822, 35.962826, 36.592941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482910, 35.595810, 36.744289>,  <32.453564, 35.375599, 36.835098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482910, 35.595810, 36.744289>,  <32.531822, 35.962826, 36.592941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482910, 35.595810, 36.744289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615957, 0.369091, 0.695966,
		-0.778231, -0.147955, -0.610300,
		-0.122284, -0.917541, 0.378372,
		32.446224, 35.320549, 36.857800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838949, 35.765572, 36.652344>,  <32.531822, 35.962826, 36.592941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838949, 35.765572, 36.652344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061398, 35.588226, 36.933529>,  <32.194866, 35.481819, 37.102242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061398, 35.588226, 36.933529>,  <31.838949, 35.765572, 36.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061398, 35.588226, 36.933529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496635, 0.500917, 0.708827,
		-0.666395, -0.743310, 0.058380,
		0.556122, -0.443365, 0.702962,
		32.228233, 35.455215, 37.144417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306341, 35.453453, 37.145504>,  <31.838949, 35.765572, 36.652344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306341, 35.453453, 37.145504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651844, 35.435570, 37.346272>,  <31.859146, 35.424839, 37.466732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651844, 35.435570, 37.346272>,  <31.306341, 35.453453, 37.145504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651844, 35.435570, 37.346272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450636, 0.377214, 0.809096,
		-0.225505, -0.925047, 0.305674,
		0.863756, -0.044707, 0.501923,
		31.910971, 35.422157, 37.496849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144642, 35.095985, 37.750957>,  <31.306341, 35.453453, 37.145504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144642, 35.095985, 37.750957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472353, 35.312504, 37.826626>,  <31.668980, 35.442413, 37.872028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472353, 35.312504, 37.826626>,  <31.144642, 35.095985, 37.750957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472353, 35.312504, 37.826626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408193, 0.318870, 0.855395,
		0.402701, -0.778022, 0.482196,
		0.819274, 0.541298, 0.189174,
		31.718136, 35.474892, 37.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140453, 35.135391, 38.424351>,  <31.144642, 35.095985, 37.750957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140453, 35.135391, 38.424351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432211, 35.402325, 38.364147>,  <31.607265, 35.562485, 38.328026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432211, 35.402325, 38.364147>,  <31.140453, 35.135391, 38.424351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432211, 35.402325, 38.364147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245327, 0.460538, 0.853065,
		0.638594, -0.585295, 0.499627,
		0.729392, 0.667334, -0.150508,
		31.651030, 35.602524, 38.318996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417475, 35.147614, 39.056965>,  <31.140453, 35.135391, 38.424351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417475, 35.147614, 39.056965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523638, 35.486267, 38.872452>,  <31.587336, 35.689457, 38.761745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523638, 35.486267, 38.872452>,  <31.417475, 35.147614, 39.056965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523638, 35.486267, 38.872452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229811, 0.520199, 0.822545,
		0.936348, -0.112301, 0.332629,
		0.265406, 0.846630, -0.461279,
		31.603260, 35.740257, 38.734070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960312, 35.324177, 39.360172>,  <31.417475, 35.147614, 39.056965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960312, 35.324177, 39.360172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835747, 35.659210, 39.180626>,  <31.761007, 35.860229, 39.072899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835747, 35.659210, 39.180626>,  <31.960312, 35.324177, 39.360172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835747, 35.659210, 39.180626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162586, 0.418430, 0.893578,
		0.936263, 0.351250, 0.005875,
		-0.311412, 0.837579, -0.448869,
		31.742323, 35.910484, 39.045963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295898, 35.829391, 39.714676>,  <31.960312, 35.324177, 39.360172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295898, 35.829391, 39.714676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030407, 36.056896, 39.520367>,  <31.871113, 36.193398, 39.403782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030407, 36.056896, 39.520367>,  <32.295898, 35.829391, 39.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030407, 36.056896, 39.520367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130989, 0.551033, 0.824139,
		0.736418, 0.610632, -0.291232,
		-0.663724, 0.568763, -0.485777,
		31.831289, 36.227524, 39.374634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476532, 36.535904, 39.726200>,  <32.295898, 35.829391, 39.714676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476532, 36.535904, 39.726200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080101, 36.496895, 39.689869>,  <31.842241, 36.473488, 39.668072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080101, 36.496895, 39.689869>,  <32.476532, 36.535904, 39.726200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080101, 36.496895, 39.689869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127358, 0.492367, 0.861019,
		-0.039250, 0.864907, -0.500396,
		-0.991080, -0.097525, -0.090827,
		31.782778, 36.467636, 39.662621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235611, 37.093128, 40.105549>,  <32.476532, 36.535904, 39.726200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235611, 37.093128, 40.105549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919371, 36.858742, 40.034458>,  <31.729626, 36.718109, 39.991802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919371, 36.858742, 40.034458>,  <32.235611, 37.093128, 40.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919371, 36.858742, 40.034458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365474, 0.218686, 0.904768,
		-0.491298, 0.780268, -0.387050,
		-0.790604, -0.585967, -0.177728,
		31.682190, 36.682953, 39.981140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649464, 37.499367, 40.162384>,  <32.235611, 37.093128, 40.105549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649464, 37.499367, 40.162384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520361, 37.129669, 40.243969>,  <31.442900, 36.907852, 40.292919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520361, 37.129669, 40.243969>,  <31.649464, 37.499367, 40.162384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520361, 37.129669, 40.243969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422163, 0.333451, 0.842964,
		-0.847116, 0.185968, -0.497806,
		-0.322758, -0.924244, 0.203963,
		31.423534, 36.852398, 40.305157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029394, 37.615093, 40.541035>,  <31.649464, 37.499367, 40.162384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029394, 37.615093, 40.541035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157272, 37.245136, 40.623363>,  <31.233999, 37.023163, 40.672760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157272, 37.245136, 40.623363>,  <31.029394, 37.615093, 40.541035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157272, 37.245136, 40.623363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304374, 0.105469, 0.946696,
		-0.897303, -0.365300, -0.247797,
		0.319693, -0.924896, 0.205825,
		31.253180, 36.967667, 40.685112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621935, 37.399136, 41.114796>,  <31.029394, 37.615093, 40.541035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621935, 37.399136, 41.114796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894926, 37.106846, 41.108227>,  <31.058722, 36.931473, 41.104286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894926, 37.106846, 41.108227>,  <30.621935, 37.399136, 41.114796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894926, 37.106846, 41.108227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058856, -0.077336, 0.995266,
		-0.728533, -0.678280, -0.095788,
		0.682477, -0.730722, -0.016421,
		31.099669, 36.887630, 41.103302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323673, 36.932491, 41.510334>,  <30.621935, 37.399136, 41.114796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323673, 36.932491, 41.510334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717060, 36.860325, 41.516541>,  <30.953093, 36.817024, 41.520264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717060, 36.860325, 41.516541>,  <30.323673, 36.932491, 41.510334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717060, 36.860325, 41.516541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019724, -0.021570, 0.999573,
		-0.180002, -0.983354, -0.024772,
		0.983468, -0.180413, 0.015513,
		31.012100, 36.806202, 41.521194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428915, 36.313496, 41.977581>,  <30.323673, 36.932491, 41.510334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428915, 36.313496, 41.977581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749506, 36.549923, 41.941185>,  <30.941860, 36.691780, 41.919346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749506, 36.549923, 41.941185>,  <30.428915, 36.313496, 41.977581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749506, 36.549923, 41.941185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047033, 0.089379, 0.994887,
		0.596174, -0.801657, 0.043836,
		0.801476, 0.591064, -0.090990,
		30.989948, 36.727242, 41.913887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872065, 36.134571, 42.636257>,  <30.428915, 36.313496, 41.977581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872065, 36.134571, 42.636257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047834, 36.464249, 42.493366>,  <31.153296, 36.662056, 42.407631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047834, 36.464249, 42.493366>,  <30.872065, 36.134571, 42.636257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047834, 36.464249, 42.493366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295354, 0.243005, 0.923967,
		0.848335, -0.511522, -0.136646,
		0.439424, 0.824193, -0.357230,
		31.179661, 36.711506, 42.386196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645069, 36.255730, 42.972740>,  <30.872065, 36.134571, 42.636257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645069, 36.255730, 42.972740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553314, 36.620926, 42.837784>,  <31.498260, 36.840042, 42.756809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553314, 36.620926, 42.837784>,  <31.645069, 36.255730, 42.972740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553314, 36.620926, 42.837784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378158, 0.402999, 0.833420,
		0.896871, 0.063590, -0.437697,
		-0.229388, 0.912989, -0.337391,
		31.484497, 36.894821, 42.736568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267277, 36.605541, 43.059521>,  <31.645069, 36.255730, 42.972740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267277, 36.605541, 43.059521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982546, 36.884159, 43.023468>,  <31.811707, 37.051331, 43.001835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982546, 36.884159, 43.023468>,  <32.267277, 36.605541, 43.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982546, 36.884159, 43.023468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418193, 0.523434, 0.742383,
		0.564279, 0.490759, -0.663886,
		-0.711831, 0.696544, -0.090131,
		31.768997, 37.093121, 42.996429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560974, 37.270035, 43.079453>,  <32.267277, 36.605541, 43.059521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560974, 37.270035, 43.079453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187431, 37.347958, 43.199429>,  <31.963306, 37.394711, 43.271416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187431, 37.347958, 43.199429>,  <32.560974, 37.270035, 43.079453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187431, 37.347958, 43.199429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346466, 0.700842, 0.623524,
		-0.088747, 0.686201, -0.721978,
		-0.933855, 0.194805, 0.299942,
		31.907274, 37.406399, 43.289410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637939, 38.005535, 43.196232>,  <32.560974, 37.270035, 43.079453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637939, 38.005535, 43.196232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297127, 37.895138, 43.374161>,  <32.092640, 37.828899, 43.480919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297127, 37.895138, 43.374161>,  <32.637939, 38.005535, 43.196232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297127, 37.895138, 43.374161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134934, 0.705233, 0.696016,
		-0.505798, 0.653052, -0.563642,
		-0.852034, -0.275989, 0.444824,
		32.041515, 37.812340, 43.507607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215969, 38.667267, 43.249088>,  <32.637939, 38.005535, 43.196232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215969, 38.667267, 43.249088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079422, 38.418900, 43.531345>,  <31.997494, 38.269878, 43.700699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079422, 38.418900, 43.531345>,  <32.215969, 38.667267, 43.249088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079422, 38.418900, 43.531345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047176, 0.738471, 0.672633,
		-0.938744, 0.262907, -0.222800,
		-0.341371, -0.620919, 0.705638,
		31.977011, 38.232624, 43.743038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746132, 38.974281, 43.609665>,  <32.215969, 38.667267, 43.249088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746132, 38.974281, 43.609665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842442, 38.687462, 43.871311>,  <31.900227, 38.515369, 44.028297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842442, 38.687462, 43.871311>,  <31.746132, 38.974281, 43.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842442, 38.687462, 43.871311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202404, 0.696218, 0.688704,
		-0.949243, -0.033425, 0.312764,
		0.240772, -0.717052, 0.654114,
		31.914673, 38.472347, 44.067547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360619, 39.092331, 44.280647>,  <31.746132, 38.974281, 43.609665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360619, 39.092331, 44.280647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666908, 38.847012, 44.358147>,  <31.850681, 38.699821, 44.404648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666908, 38.847012, 44.358147>,  <31.360619, 39.092331, 44.280647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666908, 38.847012, 44.358147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241907, 0.553747, 0.796772,
		-0.595945, -0.563235, 0.572376,
		0.765722, -0.613294, 0.193752,
		31.896626, 38.663025, 44.416271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279430, 38.846409, 45.105568>,  <31.360619, 39.092331, 44.280647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279430, 38.846409, 45.105568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655119, 38.799412, 44.976536>,  <31.880531, 38.771214, 44.899117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655119, 38.799412, 44.976536>,  <31.279430, 38.846409, 45.105568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655119, 38.799412, 44.976536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342430, 0.253249, 0.904769,
		-0.024608, -0.960240, 0.278089,
		0.939221, -0.117491, -0.322583,
		31.936886, 38.764164, 44.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607533, 38.767181, 45.693893>,  <31.279430, 38.846409, 45.105568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607533, 38.767181, 45.693893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903374, 38.806450, 45.427555>,  <32.080879, 38.830009, 45.267754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903374, 38.806450, 45.427555>,  <31.607533, 38.767181, 45.693893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903374, 38.806450, 45.427555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465715, 0.639573, 0.611601,
		0.485894, -0.762437, 0.427314,
		0.739606, 0.098167, -0.665843,
		32.125256, 38.835899, 45.227802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085762, 38.582397, 46.110256>,  <31.607533, 38.767181, 45.693893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085762, 38.582397, 46.110256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217300, 38.813625, 45.811539>,  <32.296223, 38.952362, 45.632309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217300, 38.813625, 45.811539>,  <32.085762, 38.582397, 46.110256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217300, 38.813625, 45.811539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474330, 0.582689, 0.659913,
		0.816621, -0.571236, -0.082579,
		0.328848, 0.578068, -0.746791,
		32.315956, 38.987045, 45.587502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882648, 38.665348, 46.126053>,  <32.085762, 38.582397, 46.110256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882648, 38.665348, 46.126053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685757, 38.962132, 45.943974>,  <32.567623, 39.140202, 45.834728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685757, 38.962132, 45.943974>,  <32.882648, 38.665348, 46.126053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685757, 38.962132, 45.943974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480483, 0.667644, 0.568671,
		0.725841, 0.061203, -0.685134,
		-0.492230, 0.741961, -0.455196,
		32.538086, 39.184719, 45.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709213, 38.851627, 45.902195>,  <32.882648, 38.665348, 46.126053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709213, 38.851627, 45.902195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075253, 38.742134, 46.020630>,  <34.294876, 38.676437, 46.091690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075253, 38.742134, 46.020630>,  <33.709213, 38.851627, 45.902195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075253, 38.742134, 46.020630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036493, -0.675054, -0.736865,
		0.401580, 0.685108, -0.607750,
		0.915097, -0.273731, 0.296090,
		34.349781, 38.660015, 46.109455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246616, 38.832672, 45.277096>,  <33.709213, 38.851627, 45.902195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246616, 38.832672, 45.277096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386581, 38.585251, 45.558510>,  <34.470558, 38.436798, 45.727360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386581, 38.585251, 45.558510>,  <34.246616, 38.832672, 45.277096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386581, 38.585251, 45.558510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027767, -0.743832, -0.667790,
		0.936372, 0.253200, -0.243098,
		0.349909, -0.618550, 0.703534,
		34.491554, 38.399685, 45.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930847, 38.533344, 44.974453>,  <34.246616, 38.832672, 45.277096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930847, 38.533344, 44.974453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806633, 38.264256, 45.243080>,  <34.732105, 38.102802, 45.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806633, 38.264256, 45.243080>,  <34.930847, 38.533344, 44.974453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806633, 38.264256, 45.243080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141130, -0.731300, -0.667296,
		0.940027, -0.112440, 0.322036,
		-0.310536, -0.672725, 0.671572,
		34.713470, 38.062439, 45.444553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453114, 38.137245, 45.103718>,  <34.930847, 38.533344, 44.974453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453114, 38.137245, 45.103718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119934, 37.941910, 45.207813>,  <34.920029, 37.824707, 45.270271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119934, 37.941910, 45.207813>,  <35.453114, 38.137245, 45.103718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119934, 37.941910, 45.207813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327716, -0.814290, -0.479096,
		0.445874, -0.313776, 0.838297,
		-0.832946, -0.488340, 0.260241,
		34.870049, 37.795406, 45.285885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694729, 37.508945, 45.265713>,  <35.453114, 38.137245, 45.103718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694729, 37.508945, 45.265713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309982, 37.451675, 45.172485>,  <35.079136, 37.417313, 45.116547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309982, 37.451675, 45.172485>,  <35.694729, 37.508945, 45.265713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309982, 37.451675, 45.172485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252868, -0.790341, -0.558049,
		-0.104306, -0.595702, 0.796404,
		-0.961862, -0.143177, -0.233072,
		35.021423, 37.408722, 45.102562>
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
