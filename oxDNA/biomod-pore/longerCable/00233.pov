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
	<24.343487, 34.763767, 34.750317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366335, 35.138401, 34.888622>,  <24.380043, 35.363182, 34.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366335, 35.138401, 34.888622>,  <24.343487, 34.763767, 34.750317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366335, 35.138401, 34.888622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346848, 0.306140, -0.886552,
		-0.936181, 0.170566, -0.307365,
		0.057119, 0.936582, 0.345763,
		24.383471, 35.419376, 34.992352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.904064, 35.274494, 34.728699>,  <24.343487, 34.763767, 34.750317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.904064, 35.274494, 34.728699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271704, 35.430134, 34.703842>,  <25.492287, 35.523518, 34.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271704, 35.430134, 34.703842>,  <24.904064, 35.274494, 34.728699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271704, 35.430134, 34.703842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276673, -0.524998, 0.804878,
		0.280552, -0.756955, -0.590178,
		0.919098, 0.389097, -0.062140,
		25.547434, 35.546864, 34.685200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425817, 34.766590, 34.632572>,  <24.904064, 35.274494, 34.728699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425817, 34.766590, 34.632572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577345, 35.066029, 34.850235>,  <25.668261, 35.245689, 34.980831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577345, 35.066029, 34.850235>,  <25.425817, 34.766590, 34.632572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577345, 35.066029, 34.850235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002176, -0.587254, 0.809400,
		0.925469, -0.307798, -0.220832,
		0.378817, 0.748594, 0.544156,
		25.690990, 35.290607, 35.013481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877251, 34.453369, 35.002499>,  <25.425817, 34.766590, 34.632572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877251, 34.453369, 35.002499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841286, 34.806629, 35.186661>,  <25.819708, 35.018585, 35.297157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841286, 34.806629, 35.186661>,  <25.877251, 34.453369, 35.002499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841286, 34.806629, 35.186661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163424, -0.442925, 0.881538,
		0.982450, 0.154500, -0.104504,
		-0.089910, 0.883146, 0.460401,
		25.814312, 35.071571, 35.324780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546640, 34.597004, 35.350033>,  <25.877251, 34.453369, 35.002499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546640, 34.597004, 35.350033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251921, 34.800514, 35.528141>,  <26.075089, 34.922623, 35.635006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251921, 34.800514, 35.528141>,  <26.546640, 34.597004, 35.350033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251921, 34.800514, 35.528141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078989, -0.718847, 0.690666,
		0.671480, 0.473712, 0.569835,
		-0.736801, 0.508779, 0.445273,
		26.030880, 34.953148, 35.661724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896252, 34.733131, 35.948608>,  <26.546640, 34.597004, 35.350033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896252, 34.733131, 35.948608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498165, 34.751736, 35.982983>,  <26.259314, 34.762897, 36.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498165, 34.751736, 35.982983>,  <26.896252, 34.733131, 35.948608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498165, 34.751736, 35.982983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032494, -0.671890, 0.739938,
		0.092155, 0.739190, 0.667163,
		-0.995214, 0.046510, 0.085938,
		26.199600, 34.765690, 36.008762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709112, 34.892807, 36.580635>,  <26.896252, 34.733131, 35.948608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709112, 34.892807, 36.580635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401579, 34.691174, 36.423260>,  <26.217058, 34.570194, 36.328835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401579, 34.691174, 36.423260>,  <26.709112, 34.892807, 36.580635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401579, 34.691174, 36.423260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012245, -0.626771, 0.779107,
		-0.639332, 0.594186, 0.488055,
		-0.768833, -0.504085, -0.393439,
		26.170929, 34.539948, 36.305229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151505, 34.940472, 37.010696>,  <26.709112, 34.892807, 36.580635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151505, 34.940472, 37.010696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180002, 34.598721, 36.804798>,  <26.197102, 34.393669, 36.681259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180002, 34.598721, 36.804798>,  <26.151505, 34.940472, 37.010696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180002, 34.598721, 36.804798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052929, -0.512096, 0.857296,
		-0.996054, -0.088323, 0.008737,
		0.071245, -0.854375, -0.514750,
		26.201376, 34.342407, 36.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719212, 34.389519, 37.315437>,  <26.151505, 34.940472, 37.010696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719212, 34.389519, 37.315437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998219, 34.200336, 37.100109>,  <26.165623, 34.086826, 36.970913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998219, 34.200336, 37.100109>,  <25.719212, 34.389519, 37.315437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998219, 34.200336, 37.100109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108596, -0.672796, 0.731814,
		-0.708294, -0.568910, -0.417924,
		0.697514, -0.472955, -0.538319,
		26.207474, 34.058453, 36.938614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502249, 33.766682, 37.432709>,  <25.719212, 34.389519, 37.315437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502249, 33.766682, 37.432709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880646, 33.707348, 37.317406>,  <26.107685, 33.671749, 37.248222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880646, 33.707348, 37.317406>,  <25.502249, 33.766682, 37.432709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880646, 33.707348, 37.317406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051883, -0.808452, 0.586270,
		-0.320006, -0.569564, -0.757095,
		0.945994, -0.148330, -0.288260,
		26.164444, 33.662849, 37.230927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539999, 33.083279, 37.142696>,  <25.502249, 33.766682, 37.432709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539999, 33.083279, 37.142696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906099, 33.184193, 37.268345>,  <26.125759, 33.244740, 37.343735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906099, 33.184193, 37.268345>,  <25.539999, 33.083279, 37.142696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906099, 33.184193, 37.268345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059137, -0.855357, 0.514652,
		0.398526, -0.452458, -0.797784,
		0.915249, 0.252281, 0.314125,
		26.180674, 33.259876, 37.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897139, 32.490463, 37.067265>,  <25.539999, 33.083279, 37.142696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897139, 32.490463, 37.067265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084799, 32.704285, 37.348450>,  <26.197395, 32.832577, 37.517162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084799, 32.704285, 37.348450>,  <25.897139, 32.490463, 37.067265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084799, 32.704285, 37.348450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074718, -0.817172, 0.571531,
		0.879952, -0.215609, -0.423317,
		0.469150, 0.534549, 0.702962,
		26.225544, 32.864651, 37.559338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481611, 32.147865, 37.292442>,  <25.897139, 32.490463, 37.067265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481611, 32.147865, 37.292442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411762, 32.402035, 37.593304>,  <26.369854, 32.554539, 37.773823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411762, 32.402035, 37.593304>,  <26.481611, 32.147865, 37.292442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411762, 32.402035, 37.593304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016534, -0.765679, 0.643010,
		0.984497, 0.099847, 0.144210,
		-0.174621, 0.635426, 0.752158,
		26.359377, 32.592663, 37.818951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024038, 32.293236, 37.938358>,  <26.481611, 32.147865, 37.292442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024038, 32.293236, 37.938358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634405, 32.326668, 38.022430>,  <26.400625, 32.346725, 38.072872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634405, 32.326668, 38.022430>,  <27.024038, 32.293236, 37.938358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634405, 32.326668, 38.022430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061838, -0.795415, 0.602902,
		0.217567, 0.600274, 0.769633,
		-0.974084, 0.083579, 0.210176,
		26.342180, 32.351742, 38.085484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602262, 32.568844, 38.446869>,  <27.024038, 32.293236, 37.938358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602262, 32.568844, 38.446869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258030, 32.733341, 38.326683>,  <27.051491, 32.832039, 38.254570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258030, 32.733341, 38.326683>,  <27.602262, 32.568844, 38.446869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258030, 32.733341, 38.326683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256795, 0.859821, 0.441321,
		0.439834, 0.302635, -0.845552,
		-0.860582, 0.411242, -0.300463,
		26.999855, 32.856712, 38.236546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801058, 33.123940, 38.175457>,  <27.602262, 32.568844, 38.446869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801058, 33.123940, 38.175457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420073, 33.208057, 38.263626>,  <27.191481, 33.258530, 38.316528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420073, 33.208057, 38.263626>,  <27.801058, 33.123940, 38.175457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420073, 33.208057, 38.263626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291861, 0.837298, 0.462330,
		-0.087336, 0.504686, -0.858874,
		-0.952465, 0.210294, 0.220424,
		27.134333, 33.271145, 38.329754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454880, 33.519932, 37.679237>,  <27.801058, 33.123940, 38.175457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454880, 33.519932, 37.679237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082129, 33.439491, 37.558468>,  <26.858477, 33.391228, 37.486008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082129, 33.439491, 37.558468>,  <27.454880, 33.519932, 37.679237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082129, 33.439491, 37.558468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028034, 0.789874, -0.612628,
		0.361682, -0.579360, -0.730430,
		-0.931880, -0.201099, -0.301925,
		26.802565, 33.379162, 37.467892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444616, 33.566776, 37.013393>,  <27.454880, 33.519932, 37.679237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444616, 33.566776, 37.013393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048056, 33.584793, 37.062542>,  <26.810120, 33.595604, 37.092030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048056, 33.584793, 37.062542>,  <27.444616, 33.566776, 37.013393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048056, 33.584793, 37.062542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054428, 0.711904, -0.700164,
		-0.119009, -0.700831, -0.703330,
		-0.991400, 0.045045, 0.122868,
		26.750635, 33.598305, 37.099403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103603, 33.346245, 36.403004>,  <27.444616, 33.566776, 37.013393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103603, 33.346245, 36.403004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808224, 33.557045, 36.571274>,  <26.630995, 33.683525, 36.672234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808224, 33.557045, 36.571274>,  <27.103603, 33.346245, 36.403004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808224, 33.557045, 36.571274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231644, 0.387630, -0.892235,
		-0.633271, -0.756318, -0.164170,
		-0.738451, 0.526998, 0.420671,
		26.586689, 33.715145, 36.697475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594889, 33.321884, 35.924973>,  <27.103603, 33.346245, 36.403004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594889, 33.321884, 35.924973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449572, 33.622433, 36.145321>,  <26.362381, 33.802761, 36.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449572, 33.622433, 36.145321>,  <26.594889, 33.321884, 35.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449572, 33.622433, 36.145321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182574, 0.522387, -0.832934,
		-0.913611, -0.403174, -0.052599,
		-0.363294, 0.751374, 0.550867,
		26.340584, 33.847843, 36.310581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912865, 33.499451, 35.737339>,  <26.594889, 33.321884, 35.924973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912865, 33.499451, 35.737339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036638, 33.830051, 35.925438>,  <26.110903, 34.028412, 36.038300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036638, 33.830051, 35.925438>,  <25.912865, 33.499451, 35.737339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036638, 33.830051, 35.925438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442565, 0.562872, -0.698077,
		-0.841657, 0.007893, 0.539956,
		0.309436, 0.826507, 0.470251,
		26.129469, 34.078003, 36.066513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680305, 33.811630, 36.337250>,  <25.912865, 33.499451, 35.737339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680305, 33.811630, 36.337250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808245, 34.107742, 36.573788>,  <25.885008, 34.285408, 36.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808245, 34.107742, 36.573788>,  <25.680305, 33.811630, 36.337250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808245, 34.107742, 36.573788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187276, 0.661211, -0.726448,
		-0.928776, 0.121608, 0.350123,
		0.319847, 0.740278, 0.591343,
		25.904200, 34.329826, 36.751190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124378, 34.377537, 36.248974>,  <25.680305, 33.811630, 36.337250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124378, 34.377537, 36.248974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471626, 34.524254, 36.382740>,  <25.679976, 34.612286, 36.463001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471626, 34.524254, 36.382740>,  <25.124378, 34.377537, 36.248974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471626, 34.524254, 36.382740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052563, 0.737887, -0.672874,
		-0.493567, 0.566556, 0.659853,
		0.868118, 0.366792, 0.334417,
		25.732061, 34.634293, 36.483067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971216, 35.107597, 36.501801>,  <25.124378, 34.377537, 36.248974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971216, 35.107597, 36.501801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337318, 35.025249, 36.363281>,  <25.556980, 34.975842, 36.280170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337318, 35.025249, 36.363281>,  <24.971216, 35.107597, 36.501801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337318, 35.025249, 36.363281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078442, 0.752066, -0.654404,
		0.395158, 0.626112, 0.672185,
		0.915258, -0.205866, -0.346298,
		25.611897, 34.963490, 36.259392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222996, 35.704723, 36.334057>,  <24.971216, 35.107597, 36.501801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222996, 35.704723, 36.334057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474585, 35.471405, 36.128471>,  <25.625538, 35.331413, 36.005119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474585, 35.471405, 36.128471>,  <25.222996, 35.704723, 36.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474585, 35.471405, 36.128471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024327, 0.646011, -0.762940,
		0.777047, 0.492372, 0.392133,
		0.628973, -0.583300, -0.513959,
		25.663277, 35.296413, 35.974285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596809, 36.211220, 36.021515>,  <25.222996, 35.704723, 36.334057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596809, 36.211220, 36.021515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667021, 35.876495, 35.814079>,  <25.709148, 35.675663, 35.689617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667021, 35.876495, 35.814079>,  <25.596809, 36.211220, 36.021515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667021, 35.876495, 35.814079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049871, 0.533654, -0.844231,
		0.983210, 0.122326, 0.135405,
		0.175531, -0.836809, -0.518593,
		25.719681, 35.625454, 35.658501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230021, 36.206909, 35.810024>,  <25.596809, 36.211220, 36.021515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230021, 36.206909, 35.810024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057987, 35.939369, 35.567478>,  <25.954767, 35.778847, 35.421951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057987, 35.939369, 35.567478>,  <26.230021, 36.206909, 35.810024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057987, 35.939369, 35.567478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120250, 0.623227, -0.772741,
		0.894746, -0.405256, -0.187610,
		-0.430082, -0.668847, -0.606361,
		25.928963, 35.738716, 35.385571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634439, 35.989578, 35.247089>,  <26.230021, 36.206909, 35.810024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634439, 35.989578, 35.247089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245287, 36.051579, 35.178417>,  <26.011795, 36.088779, 35.137215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245287, 36.051579, 35.178417>,  <26.634439, 35.989578, 35.247089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245287, 36.051579, 35.178417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229246, 0.744916, -0.626536,
		0.030774, -0.648903, -0.760248,
		-0.972882, 0.155002, -0.171682,
		25.953423, 36.098080, 35.126911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809422, 35.679684, 34.584793>,  <26.634439, 35.989578, 35.247089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809422, 35.679684, 34.584793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820763, 36.047592, 34.741364>,  <26.827568, 36.268337, 34.835308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820763, 36.047592, 34.741364>,  <26.809422, 35.679684, 34.584793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820763, 36.047592, 34.741364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057094, 0.392439, -0.918005,
		-0.997966, 0.003681, 0.063640,
		0.028354, 0.919771, 0.391430,
		26.829269, 36.323524, 34.858791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135582, 36.007816, 34.498520>,  <26.809422, 35.679684, 34.584793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135582, 36.007816, 34.498520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438589, 36.268780, 34.489277>,  <26.620394, 36.425358, 34.483730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438589, 36.268780, 34.489277>,  <26.135582, 36.007816, 34.498520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438589, 36.268780, 34.489277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387952, 0.421427, -0.819690,
		-0.525032, 0.629895, 0.572340,
		0.757519, 0.652404, -0.023107,
		26.665844, 36.464500, 34.482346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854286, 36.707039, 34.384464>,  <26.135582, 36.007816, 34.498520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854286, 36.707039, 34.384464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228767, 36.657089, 34.253056>,  <26.453457, 36.627117, 34.174210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228767, 36.657089, 34.253056>,  <25.854286, 36.707039, 34.384464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228767, 36.657089, 34.253056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279163, 0.303653, -0.910968,
		0.213517, 0.944563, 0.249420,
		0.936204, -0.124878, -0.328523,
		26.509628, 36.619625, 34.154499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238031, 37.396832, 34.153046>,  <25.854286, 36.707039, 34.384464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238031, 37.396832, 34.153046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366018, 37.062969, 33.973728>,  <26.442810, 36.862652, 33.866138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366018, 37.062969, 33.973728>,  <26.238031, 37.396832, 34.153046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366018, 37.062969, 33.973728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603006, 0.185548, -0.775858,
		0.730757, 0.518571, -0.443935,
		0.319966, -0.834659, -0.448292,
		26.462008, 36.812572, 33.839241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355087, 37.607460, 33.460102>,  <26.238031, 37.396832, 34.153046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355087, 37.607460, 33.460102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324364, 37.208721, 33.452171>,  <26.305929, 36.969479, 33.447411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324364, 37.208721, 33.452171>,  <26.355087, 37.607460, 33.460102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324364, 37.208721, 33.452171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490155, 0.055073, -0.869894,
		0.868244, -0.057096, -0.492840,
		-0.076810, -0.996848, -0.019831,
		26.301321, 36.909668, 33.446220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430117, 37.367840, 32.790619>,  <26.355087, 37.607460, 33.460102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430117, 37.367840, 32.790619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240520, 37.064602, 32.969784>,  <26.126762, 36.882660, 33.077282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240520, 37.064602, 32.969784>,  <26.430117, 37.367840, 32.790619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240520, 37.064602, 32.969784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605165, -0.089039, -0.791105,
		0.639617, -0.646033, -0.416571,
		-0.473989, -0.758098, 0.447908,
		26.098324, 36.837173, 33.104156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135956, 37.130558, 32.984840>,  <26.430117, 37.367840, 32.790619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135956, 37.130558, 32.984840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895092, 36.920361, 33.225262>,  <26.750574, 36.794243, 33.369514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895092, 36.920361, 33.225262>,  <27.135956, 37.130558, 32.984840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895092, 36.920361, 33.225262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681484, -0.730505, 0.044067,
		0.415912, 0.436141, 0.797996,
		-0.602159, -0.525494, 0.601049,
		26.714445, 36.762711, 33.405575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962994, 36.646236, 32.517406>,  <27.135956, 37.130558, 32.984840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962994, 36.646236, 32.517406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649992, 36.589180, 32.759842>,  <26.462191, 36.554947, 32.905304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649992, 36.589180, 32.759842>,  <26.962994, 36.646236, 32.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649992, 36.589180, 32.759842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563172, 0.577305, -0.591232,
		-0.265565, -0.803973, -0.532073,
		-0.782504, -0.142638, 0.606088,
		26.415241, 36.546387, 32.941669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386211, 36.892612, 32.266071>,  <26.962994, 36.646236, 32.517406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386211, 36.892612, 32.266071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099497, 36.771072, 32.517117>,  <25.927469, 36.698147, 32.667744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099497, 36.771072, 32.517117>,  <26.386211, 36.892612, 32.266071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099497, 36.771072, 32.517117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692201, 0.201462, -0.693016,
		0.084133, -0.931176, -0.354730,
		-0.716785, -0.303850, 0.627611,
		25.884462, 36.679916, 32.705399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009235, 36.445030, 31.904902>,  <26.386211, 36.892612, 32.266071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009235, 36.445030, 31.904902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768120, 36.548309, 32.206890>,  <25.623451, 36.610275, 32.388084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768120, 36.548309, 32.206890>,  <26.009235, 36.445030, 31.904902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768120, 36.548309, 32.206890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696832, 0.290569, -0.655740,
		-0.388681, -0.921360, 0.004768,
		-0.602787, 0.258196, 0.754971,
		25.587284, 36.625767, 32.433380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369215, 36.040787, 31.785212>,  <26.009235, 36.445030, 31.904902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369215, 36.040787, 31.785212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282162, 36.362137, 32.006924>,  <25.229929, 36.554947, 32.139950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282162, 36.362137, 32.006924>,  <25.369215, 36.040787, 31.785212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282162, 36.362137, 32.006924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466436, 0.413242, -0.782093,
		-0.857364, -0.428747, 0.284787,
		-0.217634, 0.803373, 0.554282,
		25.216871, 36.603149, 32.173206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690458, 36.128246, 31.769745>,  <25.369215, 36.040787, 31.785212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690458, 36.128246, 31.769745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827126, 36.490105, 31.871626>,  <24.909126, 36.707222, 31.932755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827126, 36.490105, 31.871626>,  <24.690458, 36.128246, 31.769745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827126, 36.490105, 31.871626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688460, 0.425403, -0.587413,
		-0.639754, 0.025349, 0.768162,
		0.341669, 0.904649, 0.254701,
		24.929626, 36.761497, 31.948036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090345, 36.396801, 32.139164>,  <24.690458, 36.128246, 31.769745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090345, 36.396801, 32.139164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353579, 36.627918, 31.946049>,  <24.511518, 36.766590, 31.830181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353579, 36.627918, 31.946049>,  <24.090345, 36.396801, 32.139164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353579, 36.627918, 31.946049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752680, 0.487828, -0.442150,
		-0.019955, 0.654355, 0.755925,
		0.658084, 0.577792, -0.482785,
		24.551004, 36.801254, 31.801212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218983, 36.886089, 32.636173>,  <24.090345, 36.396801, 32.139164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218983, 36.886089, 32.636173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183279, 36.500317, 32.735695>,  <24.161858, 36.268852, 32.795406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183279, 36.500317, 32.735695>,  <24.218983, 36.886089, 32.636173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183279, 36.500317, 32.735695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161203, 0.232516, 0.959140,
		-0.982877, 0.125718, 0.134716,
		-0.089258, -0.964433, 0.248800,
		24.156502, 36.210987, 32.810333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.197868, 37.715542, 32.736526>,  <24.218983, 36.886089, 32.636173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.197868, 37.715542, 32.736526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196110, 38.070900, 32.920147>,  <24.195055, 38.284115, 33.030319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196110, 38.070900, 32.920147>,  <24.197868, 37.715542, 32.736526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196110, 38.070900, 32.920147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989003, 0.064001, -0.133332,
		-0.147831, -0.454590, 0.878347,
		-0.004397, 0.888399, 0.459052,
		24.194790, 38.337418, 33.057861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909241, 37.607178, 32.990238>,  <24.197868, 37.715542, 32.736526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909241, 37.607178, 32.990238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977840, 37.288399, 32.758560>,  <25.019001, 37.097130, 32.619553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977840, 37.288399, 32.758560>,  <24.909241, 37.607178, 32.990238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977840, 37.288399, 32.758560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601114, -0.381135, 0.702422,
		-0.780544, -0.468625, 0.413692,
		0.171500, -0.796948, -0.579190,
		25.029291, 37.049313, 32.584805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813848, 37.002613, 33.417702>,  <24.909241, 37.607178, 32.990238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813848, 37.002613, 33.417702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040852, 36.885567, 33.109856>,  <25.177053, 36.815338, 32.925148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040852, 36.885567, 33.109856>,  <24.813848, 37.002613, 33.417702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040852, 36.885567, 33.109856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630495, -0.446708, 0.634766,
		-0.529536, -0.845475, -0.069018,
		0.567510, -0.292616, -0.769616,
		25.211105, 36.797783, 32.878971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993399, 36.210430, 33.469524>,  <24.813848, 37.002613, 33.417702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993399, 36.210430, 33.469524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279423, 36.383572, 33.249954>,  <25.451038, 36.487457, 33.118210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279423, 36.383572, 33.249954>,  <24.993399, 36.210430, 33.469524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279423, 36.383572, 33.249954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696140, -0.512630, 0.502592,
		-0.063845, -0.741515, -0.667892,
		0.715061, 0.432858, -0.548927,
		25.493940, 36.513428, 33.085278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483229, 35.757229, 33.409904>,  <24.993399, 36.210430, 33.469524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483229, 35.757229, 33.409904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668575, 36.106792, 33.351154>,  <25.779783, 36.316532, 33.315907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668575, 36.106792, 33.351154>,  <25.483229, 35.757229, 33.409904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668575, 36.106792, 33.351154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762245, -0.308524, 0.569031,
		0.451970, -0.375620, -0.809094,
		0.463364, 0.873912, -0.146871,
		25.807585, 36.368965, 33.307095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100540, 35.660801, 33.463974>,  <25.483229, 35.757229, 33.409904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100540, 35.660801, 33.463974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158730, 36.056244, 33.448536>,  <26.193644, 36.293510, 33.439274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158730, 36.056244, 33.448536>,  <26.100540, 35.660801, 33.463974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158730, 36.056244, 33.448536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803042, -0.095204, 0.588269,
		0.577894, -0.116567, -0.807744,
		0.145473, 0.988609, -0.038591,
		26.202372, 36.352825, 33.436958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759203, 35.723953, 33.205235>,  <26.100540, 35.660801, 33.463974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759203, 35.723953, 33.205235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665606, 36.050560, 33.416348>,  <26.609447, 36.246525, 33.543015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665606, 36.050560, 33.416348>,  <26.759203, 35.723953, 33.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665606, 36.050560, 33.416348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695682, -0.238601, 0.677566,
		0.679172, 0.525712, -0.512204,
		-0.233992, 0.816515, 0.527780,
		26.595407, 36.295513, 33.574680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205246, 36.287006, 33.200817>,  <26.759203, 35.723953, 33.205235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205246, 36.287006, 33.200817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008272, 36.268616, 33.548470>,  <26.890087, 36.257580, 33.757061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008272, 36.268616, 33.548470>,  <27.205246, 36.287006, 33.200817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008272, 36.268616, 33.548470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818471, -0.364073, 0.444472,
		0.295992, 0.930235, 0.216914,
		-0.492436, -0.045977, 0.869133,
		26.860542, 36.254822, 33.809208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584187, 36.647614, 33.804443>,  <27.205246, 36.287006, 33.200817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584187, 36.647614, 33.804443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361698, 36.330097, 33.902843>,  <27.228205, 36.139587, 33.961884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361698, 36.330097, 33.902843>,  <27.584187, 36.647614, 33.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361698, 36.330097, 33.902843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822152, -0.482451, 0.302170,
		-0.121177, 0.370322, 0.920966,
		-0.556221, -0.793790, 0.245999,
		27.194832, 36.091961, 33.976643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875694, 36.334923, 34.278469>,  <27.584187, 36.647614, 33.804443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875694, 36.334923, 34.278469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659302, 36.044174, 34.109234>,  <27.529467, 35.869724, 34.007694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659302, 36.044174, 34.109234>,  <27.875694, 36.334923, 34.278469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659302, 36.044174, 34.109234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777025, -0.624457, 0.079279,
		-0.321826, -0.285861, 0.902614,
		-0.540981, -0.726868, -0.423088,
		27.497007, 35.826115, 33.982307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902241, 35.867733, 34.764137>,  <27.875694, 36.334923, 34.278469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902241, 35.867733, 34.764137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814264, 35.713577, 34.405674>,  <27.761478, 35.621082, 34.190598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814264, 35.713577, 34.405674>,  <27.902241, 35.867733, 34.764137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814264, 35.713577, 34.405674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483471, -0.840956, 0.242998,
		-0.847279, -0.379822, 0.371286,
		-0.219939, -0.385394, -0.896158,
		27.748283, 35.597958, 34.136826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588531, 35.216702, 34.773514>,  <27.902241, 35.867733, 34.764137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588531, 35.216702, 34.773514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822052, 35.229053, 34.448990>,  <27.962164, 35.236465, 34.254276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822052, 35.229053, 34.448990>,  <27.588531, 35.216702, 34.773514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822052, 35.229053, 34.448990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506370, -0.794956, 0.334116,
		-0.634638, -0.605880, -0.479732,
		0.583801, 0.030879, -0.811310,
		27.997192, 35.238316, 34.205597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696579, 34.486645, 34.578415>,  <27.588531, 35.216702, 34.773514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696579, 34.486645, 34.578415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982203, 34.735119, 34.449261>,  <28.153576, 34.884205, 34.371769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982203, 34.735119, 34.449261>,  <27.696579, 34.486645, 34.578415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982203, 34.735119, 34.449261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698831, -0.660069, 0.275580,
		-0.041939, -0.422420, -0.905430,
		0.714057, 0.621184, -0.322883,
		28.196419, 34.921474, 34.352394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142120, 34.148651, 34.079636>,  <27.696579, 34.486645, 34.578415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142120, 34.148651, 34.079636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364630, 34.432442, 34.252705>,  <28.498135, 34.602715, 34.356544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364630, 34.432442, 34.252705>,  <28.142120, 34.148651, 34.079636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364630, 34.432442, 34.252705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739355, -0.660237, 0.132064,
		0.379362, 0.246434, -0.891827,
		0.556272, 0.709477, 0.432671,
		28.531511, 34.645287, 34.382507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770716, 34.237419, 33.697803>,  <28.142120, 34.148651, 34.079636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770716, 34.237419, 33.697803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819382, 34.360405, 34.075302>,  <28.848581, 34.434196, 34.301804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819382, 34.360405, 34.075302>,  <28.770716, 34.237419, 33.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819382, 34.360405, 34.075302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644179, -0.747827, 0.160585,
		0.755136, 0.588407, -0.289044,
		0.121666, 0.307460, 0.943751,
		28.855881, 34.452644, 34.358429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505138, 34.262871, 33.897083>,  <28.770716, 34.237419, 33.697803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505138, 34.262871, 33.897083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288145, 34.162853, 34.217880>,  <29.157949, 34.102840, 34.410358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288145, 34.162853, 34.217880>,  <29.505138, 34.262871, 33.897083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288145, 34.162853, 34.217880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550578, -0.826878, 0.114617,
		0.634487, 0.503735, 0.586240,
		-0.542485, -0.250048, 0.801989,
		29.125401, 34.087837, 34.458477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973682, 34.055199, 34.372898>,  <29.505138, 34.262871, 33.897083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973682, 34.055199, 34.372898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648415, 33.871307, 34.515671>,  <29.453253, 33.760971, 34.601334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648415, 33.871307, 34.515671>,  <29.973682, 34.055199, 34.372898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648415, 33.871307, 34.515671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555130, -0.796890, 0.238319,
		0.174878, 0.391940, 0.903217,
		-0.813171, -0.459727, 0.356936,
		29.404463, 33.733391, 34.622753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981575, 33.760796, 35.124069>,  <29.973682, 34.055199, 34.372898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981575, 33.760796, 35.124069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756187, 33.558994, 34.862389>,  <29.620955, 33.437912, 34.705379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756187, 33.558994, 34.862389>,  <29.981575, 33.760796, 35.124069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756187, 33.558994, 34.862389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633985, -0.771783, 0.049128,
		-0.529686, -0.387071, 0.754725,
		-0.563468, -0.504506, -0.654200,
		29.587147, 33.407642, 34.666130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715212, 33.046673, 35.484634>,  <29.981575, 33.760796, 35.124069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715212, 33.046673, 35.484634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732567, 33.016373, 35.086163>,  <29.742981, 32.998192, 34.847080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732567, 33.016373, 35.086163>,  <29.715212, 33.046673, 35.484634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732567, 33.016373, 35.086163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532599, -0.841862, 0.087212,
		-0.845255, -0.534350, 0.003815,
		0.043389, -0.075748, -0.996183,
		29.745584, 32.993649, 34.787308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416840, 33.675381, 35.827915>,  <29.715212, 33.046673, 35.484634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416840, 33.675381, 35.827915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550119, 33.899380, 36.131332>,  <29.630087, 34.033779, 36.313381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550119, 33.899380, 36.131332>,  <29.416840, 33.675381, 35.827915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550119, 33.899380, 36.131332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335361, 0.822292, -0.459748,
		-0.881198, -0.101196, 0.461789,
		0.333201, 0.559995, 0.758540,
		29.650080, 34.067379, 36.358894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941662, 34.333797, 35.643719>,  <29.416840, 33.675381, 35.827915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941662, 34.333797, 35.643719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102081, 34.384895, 35.280876>,  <29.198332, 34.415554, 35.063171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102081, 34.384895, 35.280876>,  <28.941662, 34.333797, 35.643719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102081, 34.384895, 35.280876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685610, 0.698584, -0.204742,
		0.607536, 0.704033, 0.367747,
		0.401048, 0.127743, -0.907107,
		29.222395, 34.423218, 35.008743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145309, 35.073395, 35.484371>,  <28.941662, 34.333797, 35.643719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145309, 35.073395, 35.484371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068598, 34.878910, 35.143356>,  <29.022572, 34.762218, 34.938747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068598, 34.878910, 35.143356>,  <29.145309, 35.073395, 35.484371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068598, 34.878910, 35.143356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615243, 0.736345, -0.281552,
		0.764655, 0.470521, -0.440355,
		-0.191778, -0.486215, -0.852535,
		29.011065, 34.733044, 34.887596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280073, 35.602772, 34.856606>,  <29.145309, 35.073395, 35.484371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280073, 35.602772, 34.856606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041613, 35.310078, 34.724449>,  <28.898537, 35.134460, 34.645153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041613, 35.310078, 34.724449>,  <29.280073, 35.602772, 34.856606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041613, 35.310078, 34.724449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513769, 0.663915, -0.543377,
		0.616964, -0.154189, -0.771739,
		-0.596152, -0.731739, -0.330394,
		28.862766, 35.090557, 34.625332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279318, 35.662025, 34.152885>,  <29.280073, 35.602772, 34.856606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279318, 35.662025, 34.152885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940271, 35.470100, 34.243511>,  <28.736843, 35.354946, 34.297886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940271, 35.470100, 34.243511>,  <29.279318, 35.662025, 34.152885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940271, 35.470100, 34.243511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508017, 0.610559, -0.607565,
		0.153184, -0.630081, -0.761271,
		-0.847616, -0.479808, 0.226564,
		28.685987, 35.326157, 34.311481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761868, 35.558861, 33.502743>,  <29.279318, 35.662025, 34.152885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761868, 35.558861, 33.502743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540112, 35.545822, 33.835388>,  <28.407057, 35.537998, 34.034977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540112, 35.545822, 33.835388>,  <28.761868, 35.558861, 33.502743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540112, 35.545822, 33.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661342, 0.623874, -0.416423,
		-0.505249, -0.780845, -0.367430,
		-0.554392, -0.032600, 0.831617,
		28.373795, 35.536041, 34.084873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347198, 35.417976, 33.035690>,  <28.761868, 35.558861, 33.502743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347198, 35.417976, 33.035690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676258, 35.536331, 33.229885>,  <29.873693, 35.607346, 33.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676258, 35.536331, 33.229885>,  <29.347198, 35.417976, 33.035690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676258, 35.536331, 33.229885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398021, 0.310045, -0.863395,
		-0.405994, 0.903505, 0.137288,
		0.822647, 0.295890, 0.485490,
		29.923052, 35.625099, 33.375530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504864, 35.998650, 32.734306>,  <29.347198, 35.417976, 33.035690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504864, 35.998650, 32.734306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841732, 35.894161, 32.922993>,  <30.043854, 35.831467, 33.036205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841732, 35.894161, 32.922993>,  <29.504864, 35.998650, 32.734306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841732, 35.894161, 32.922993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537216, 0.331273, -0.775666,
		0.046355, 0.906654, 0.419320,
		0.842170, -0.261222, 0.471713,
		30.094383, 35.815796, 33.064507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916348, 36.527592, 32.472240>,  <29.504864, 35.998650, 32.734306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916348, 36.527592, 32.472240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164513, 36.246967, 32.612469>,  <30.313412, 36.078594, 32.696606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164513, 36.246967, 32.612469>,  <29.916348, 36.527592, 32.472240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164513, 36.246967, 32.612469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563657, 0.088061, -0.821301,
		0.545322, 0.707147, 0.450074,
		0.620415, -0.701561, 0.350567,
		30.350637, 36.036499, 32.717640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470734, 36.691181, 32.185429>,  <29.916348, 36.527592, 32.472240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470734, 36.691181, 32.185429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561544, 36.316780, 32.293022>,  <30.616030, 36.092140, 32.357578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561544, 36.316780, 32.293022>,  <30.470734, 36.691181, 32.185429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561544, 36.316780, 32.293022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599404, -0.083392, -0.796091,
		0.767577, 0.341964, 0.542113,
		0.227026, -0.936006, 0.268984,
		30.629652, 36.035980, 32.373718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197464, 36.561699, 32.421280>,  <30.470734, 36.691181, 32.185429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197464, 36.561699, 32.421280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074526, 36.206387, 32.284752>,  <31.000763, 35.993198, 32.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074526, 36.206387, 32.284752>,  <31.197464, 36.561699, 32.421280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074526, 36.206387, 32.284752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782320, -0.031651, -0.622072,
		0.541770, -0.458214, 0.704645,
		-0.307346, -0.888278, -0.341322,
		30.982323, 35.939903, 32.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784937, 36.115551, 32.494705>,  <31.197464, 36.561699, 32.421280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784937, 36.115551, 32.494705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565939, 35.921139, 32.222225>,  <31.434540, 35.804493, 32.058739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565939, 35.921139, 32.222225>,  <31.784937, 36.115551, 32.494705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565939, 35.921139, 32.222225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809848, -0.102769, -0.577569,
		0.210710, -0.867879, 0.449875,
		-0.547493, -0.486030, -0.681195,
		31.401691, 35.775330, 32.017868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187878, 35.490776, 32.247513>,  <31.784937, 36.115551, 32.494705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187878, 35.490776, 32.247513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910589, 35.589302, 31.976580>,  <31.744217, 35.648418, 31.814020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910589, 35.589302, 31.976580>,  <32.187878, 35.490776, 32.247513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910589, 35.589302, 31.976580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684803, -0.067910, -0.725557,
		-0.224711, -0.966809, -0.121598,
		-0.693217, 0.246311, -0.677334,
		31.702623, 35.663197, 31.773380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525417, 35.153465, 31.689558>,  <32.187878, 35.490776, 32.247513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525417, 35.153465, 31.689558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241394, 35.393803, 31.542694>,  <32.070980, 35.538006, 31.454576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241394, 35.393803, 31.542694>,  <32.525417, 35.153465, 31.689558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241394, 35.393803, 31.542694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562474, 0.170308, -0.809085,
		-0.423601, -0.781016, -0.458886,
		-0.710060, 0.600841, -0.367158,
		32.028378, 35.574055, 31.432547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517262, 34.999138, 31.041042>,  <32.525417, 35.153465, 31.689558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517262, 34.999138, 31.041042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340755, 35.357895, 31.029215>,  <32.234852, 35.573147, 31.022118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340755, 35.357895, 31.029215>,  <32.517262, 34.999138, 31.041042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340755, 35.357895, 31.029215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652365, 0.297985, -0.696868,
		-0.616203, -0.326793, -0.716589,
		-0.441264, 0.896890, -0.029569,
		32.208378, 35.626961, 31.020344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391212, 35.156082, 30.347717>,  <32.517262, 34.999138, 31.041042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391212, 35.156082, 30.347717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398975, 35.503754, 30.545366>,  <32.403633, 35.712357, 30.663956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398975, 35.503754, 30.545366>,  <32.391212, 35.156082, 30.347717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398975, 35.503754, 30.545366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575488, 0.394426, -0.716409,
		-0.817580, 0.298267, -0.492544,
		0.019409, 0.869175, 0.494124,
		32.404797, 35.764507, 30.693604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202991, 35.518520, 29.837959>,  <32.391212, 35.156082, 30.347717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202991, 35.518520, 29.837959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370533, 35.756897, 30.112017>,  <32.471058, 35.899921, 30.276451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370533, 35.756897, 30.112017>,  <32.202991, 35.518520, 29.837959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370533, 35.756897, 30.112017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615414, 0.368511, -0.696753,
		-0.667705, 0.713483, -0.212398,
		0.418850, 0.595938, 0.685144,
		32.496189, 35.935677, 30.317560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139938, 36.165714, 29.577520>,  <32.202991, 35.518520, 29.837959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139938, 36.165714, 29.577520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431366, 36.169567, 29.851484>,  <32.606220, 36.171879, 30.015862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431366, 36.169567, 29.851484>,  <32.139938, 36.165714, 29.577520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431366, 36.169567, 29.851484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639082, 0.350287, -0.684743,
		-0.246511, 0.936593, 0.249051,
		0.728565, 0.009632, 0.684909,
		32.649937, 36.172459, 30.056957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418255, 36.799988, 29.592768>,  <32.139938, 36.165714, 29.577520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418255, 36.799988, 29.592768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719715, 36.601879, 29.765608>,  <32.900593, 36.483013, 29.869312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719715, 36.601879, 29.765608>,  <32.418255, 36.799988, 29.592768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719715, 36.601879, 29.765608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657259, 0.563558, -0.500413,
		0.004326, 0.661140, 0.750250,
		0.753652, -0.495274, 0.432102,
		32.945812, 36.453297, 29.895239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929810, 37.299316, 29.798616>,  <32.418255, 36.799988, 29.592768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929810, 37.299316, 29.798616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142075, 36.960957, 29.777250>,  <33.269436, 36.757942, 29.764431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142075, 36.960957, 29.777250>,  <32.929810, 37.299316, 29.798616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142075, 36.960957, 29.777250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742865, 0.494525, -0.451217,
		0.408098, 0.199766, 0.890814,
		0.530667, -0.845895, -0.053415,
		33.301273, 36.707188, 29.761225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489250, 37.430782, 30.211603>,  <32.929810, 37.299316, 29.798616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489250, 37.430782, 30.211603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558613, 37.144833, 29.940638>,  <33.600231, 36.973263, 29.778059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558613, 37.144833, 29.940638>,  <33.489250, 37.430782, 30.211603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558613, 37.144833, 29.940638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820819, 0.485005, -0.301705,
		0.544229, -0.503714, 0.670885,
		0.173410, -0.714872, -0.677412,
		33.610634, 36.930370, 29.737413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179531, 37.397690, 30.199413>,  <33.489250, 37.430782, 30.211603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179531, 37.397690, 30.199413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051323, 37.237724, 29.855940>,  <33.974400, 37.141743, 29.649857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051323, 37.237724, 29.855940>,  <34.179531, 37.397690, 30.199413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051323, 37.237724, 29.855940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664614, 0.550980, -0.504687,
		0.674950, -0.732453, 0.089192,
		-0.320516, -0.399916, -0.858683,
		33.955170, 37.117748, 29.598335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827446, 37.353790, 29.817739>,  <34.179531, 37.397690, 30.199413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827446, 37.353790, 29.817739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503914, 37.324368, 29.584370>,  <34.309795, 37.306713, 29.444347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503914, 37.324368, 29.584370>,  <34.827446, 37.353790, 29.817739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503914, 37.324368, 29.584370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484419, 0.479111, -0.731977,
		0.333368, -0.874667, -0.351886,
		-0.808829, -0.073558, -0.583426,
		34.261265, 37.302299, 29.409342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180855, 37.122761, 29.304569>,  <34.827446, 37.353790, 29.817739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180855, 37.122761, 29.304569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845665, 37.300407, 29.177723>,  <34.644550, 37.406998, 29.101616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845665, 37.300407, 29.177723>,  <35.180855, 37.122761, 29.304569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845665, 37.300407, 29.177723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543947, 0.633025, -0.550818,
		-0.043888, -0.634063, -0.772034,
		-0.837971, 0.444120, -0.317115,
		34.594273, 37.433643, 29.082588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347939, 37.357895, 28.662766>,  <35.180855, 37.122761, 29.304569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347939, 37.357895, 28.662766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991776, 37.538963, 28.681824>,  <34.778080, 37.647602, 28.693258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991776, 37.538963, 28.681824>,  <35.347939, 37.357895, 28.662766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991776, 37.538963, 28.681824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308798, 0.677661, -0.667397,
		-0.334397, -0.579541, -0.743176,
		-0.890405, 0.452667, 0.047647,
		34.724655, 37.674763, 28.696117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033142, 37.462490, 27.931242>,  <35.347939, 37.357895, 28.662766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033142, 37.462490, 27.931242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896793, 37.731861, 28.193632>,  <34.814983, 37.893482, 28.351067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896793, 37.731861, 28.193632>,  <35.033142, 37.462490, 27.931242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896793, 37.731861, 28.193632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226888, 0.736066, -0.637753,
		-0.912321, -0.068559, -0.403696,
		-0.340871, 0.673429, 0.655973,
		34.794533, 37.933891, 28.390425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651787, 37.862244, 27.553957>,  <35.033142, 37.462490, 27.931242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651787, 37.862244, 27.553957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748451, 38.076210, 27.877800>,  <34.806450, 38.204590, 28.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748451, 38.076210, 27.877800>,  <34.651787, 37.862244, 27.553957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748451, 38.076210, 27.877800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213853, 0.784466, -0.582134,
		-0.946502, 0.313818, 0.075184,
		0.241664, 0.534913, 0.809609,
		34.820950, 38.236683, 28.120684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356426, 38.366608, 27.367636>,  <34.651787, 37.862244, 27.553957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356426, 38.366608, 27.367636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588238, 38.513573, 27.658607>,  <34.727325, 38.601753, 27.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588238, 38.513573, 27.658607>,  <34.356426, 38.366608, 27.367636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588238, 38.513573, 27.658607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090633, 0.858011, -0.505572,
		-0.809895, 0.358924, 0.463944,
		0.579531, 0.367412, 0.727429,
		34.762096, 38.623795, 27.876837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008331, 38.921593, 27.705101>,  <34.356426, 38.366608, 27.367636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008331, 38.921593, 27.705101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403015, 38.976173, 27.740393>,  <34.639824, 39.008923, 27.761568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403015, 38.976173, 27.740393>,  <34.008331, 38.921593, 27.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403015, 38.976173, 27.740393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071326, 0.851570, -0.519366,
		-0.146004, 0.506170, 0.849985,
		0.986709, 0.136455, 0.088229,
		34.699028, 39.017109, 27.766861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039345, 39.649380, 27.890697>,  <34.008331, 38.921593, 27.705101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039345, 39.649380, 27.890697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379459, 39.506611, 27.735973>,  <34.583527, 39.420952, 27.643139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379459, 39.506611, 27.735973>,  <34.039345, 39.649380, 27.890697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379459, 39.506611, 27.735973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027712, 0.764272, -0.644298,
		0.525592, 0.537118, 0.659740,
		0.850285, -0.356921, -0.386811,
		34.634544, 39.399536, 27.619930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278923, 40.205975, 27.582445>,  <34.039345, 39.649380, 27.890697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278923, 40.205975, 27.582445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550411, 39.952293, 27.434322>,  <34.713303, 39.800087, 27.345449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550411, 39.952293, 27.434322>,  <34.278923, 40.205975, 27.582445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550411, 39.952293, 27.434322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176234, 0.630152, -0.756208,
		0.712937, 0.447993, 0.539465,
		0.678721, -0.634201, -0.370307,
		34.754028, 39.762032, 27.323231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898575, 40.596767, 27.376328>,  <34.278923, 40.205975, 27.582445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898575, 40.596767, 27.376328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952671, 40.254566, 27.176395>,  <34.985130, 40.049248, 27.056437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952671, 40.254566, 27.176395>,  <34.898575, 40.596767, 27.376328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952671, 40.254566, 27.176395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288772, 0.516596, -0.806064,
		0.947798, -0.035325, 0.316908,
		0.135239, -0.855500, -0.499830,
		34.993244, 39.997917, 27.026447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497654, 40.777958, 27.002470>,  <34.898575, 40.596767, 27.376328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497654, 40.777958, 27.002470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313465, 40.469002, 26.827478>,  <35.202953, 40.283630, 26.722483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313465, 40.469002, 26.827478>,  <35.497654, 40.777958, 27.002470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313465, 40.469002, 26.827478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416999, 0.246855, -0.874743,
		0.783633, -0.585221, 0.208415,
		-0.460470, -0.772386, -0.437480,
		35.175323, 40.237286, 26.696234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965805, 40.482849, 26.747244>,  <35.497654, 40.777958, 27.002470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965805, 40.482849, 26.747244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629665, 40.400364, 26.546732>,  <35.427982, 40.350872, 26.426424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629665, 40.400364, 26.546732>,  <35.965805, 40.482849, 26.747244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629665, 40.400364, 26.546732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438397, 0.285293, -0.852300,
		0.318773, -0.935992, -0.149340,
		-0.840352, -0.206220, -0.501280,
		35.377560, 40.338497, 26.396349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217613, 40.296314, 25.988970>,  <35.965805, 40.482849, 26.747244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217613, 40.296314, 25.988970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827843, 40.384228, 25.970222>,  <35.593983, 40.436977, 25.958973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827843, 40.384228, 25.970222>,  <36.217613, 40.296314, 25.988970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827843, 40.384228, 25.970222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150905, 0.485394, -0.861174,
		-0.166522, -0.846219, -0.506146,
		-0.974422, 0.219784, -0.046870,
		35.535515, 40.450165, 25.956161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933964, 40.189064, 25.303637>,  <36.217613, 40.296314, 25.988970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933964, 40.189064, 25.303637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672760, 40.453365, 25.451679>,  <35.516037, 40.611946, 25.540504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672760, 40.453365, 25.451679>,  <35.933964, 40.189064, 25.303637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672760, 40.453365, 25.451679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259799, 0.654472, -0.710050,
		-0.711396, -0.367515, -0.599040,
		-0.653008, 0.660757, 0.370109,
		35.476856, 40.651592, 25.562712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551105, 40.468719, 24.721981>,  <35.933964, 40.189064, 25.303637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551105, 40.468719, 24.721981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525688, 40.744225, 25.010860>,  <35.510437, 40.909527, 25.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525688, 40.744225, 25.010860>,  <35.551105, 40.468719, 24.721981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525688, 40.744225, 25.010860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136606, 0.722855, -0.677363,
		-0.988586, 0.055616, -0.140020,
		-0.063542, 0.688759, 0.722201,
		35.506626, 40.950851, 25.227520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082809, 40.982578, 24.412495>,  <35.551105, 40.468719, 24.721981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082809, 40.982578, 24.412495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323483, 41.116123, 24.702740>,  <35.467888, 41.196251, 24.876886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323483, 41.116123, 24.702740>,  <35.082809, 40.982578, 24.412495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323483, 41.116123, 24.702740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187184, 0.824214, -0.534447,
		-0.776493, 0.457390, 0.433420,
		0.601682, 0.333865, 0.725612,
		35.503986, 41.216282, 24.920424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152981, 41.721401, 24.211773>,  <35.082809, 40.982578, 24.412495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152981, 41.721401, 24.211773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398602, 41.697716, 24.526588>,  <35.545975, 41.683506, 24.715477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398602, 41.697716, 24.526588>,  <35.152981, 41.721401, 24.211773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398602, 41.697716, 24.526588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398982, 0.883676, -0.244808,
		-0.680992, 0.464340, 0.566250,
		0.614055, -0.059211, 0.787039,
		35.582817, 41.679951, 24.762699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217815, 42.443333, 24.495773>,  <35.152981, 41.721401, 24.211773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217815, 42.443333, 24.495773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550720, 42.250015, 24.604412>,  <35.750462, 42.134026, 24.669596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550720, 42.250015, 24.604412>,  <35.217815, 42.443333, 24.495773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550720, 42.250015, 24.604412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550020, 0.781159, -0.295411,
		-0.069392, 0.395245, 0.915951,
		0.832263, -0.483292, 0.271599,
		35.800400, 42.105026, 24.685892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579048, 42.882977, 24.900675>,  <35.217815, 42.443333, 24.495773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579048, 42.882977, 24.900675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838425, 42.616611, 24.753113>,  <35.994049, 42.456791, 24.664576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838425, 42.616611, 24.753113>,  <35.579048, 42.882977, 24.900675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838425, 42.616611, 24.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617763, 0.743468, -0.256171,
		0.444856, -0.061784, 0.893468,
		0.648438, -0.665912, -0.368904,
		36.032955, 42.416840, 24.642441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175125, 43.068050, 25.192129>,  <35.579048, 42.882977, 24.900675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175125, 43.068050, 25.192129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256332, 42.851768, 24.865589>,  <36.305058, 42.722000, 24.669666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256332, 42.851768, 24.865589>,  <36.175125, 43.068050, 25.192129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256332, 42.851768, 24.865589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638086, 0.705438, -0.308551,
		0.742717, -0.458258, 0.488233,
		0.203022, -0.540701, -0.816348,
		36.317238, 42.689560, 24.620684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824379, 43.126415, 25.162271>,  <36.175125, 43.068050, 25.192129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824379, 43.126415, 25.162271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751549, 42.975731, 24.798967>,  <36.707851, 42.885319, 24.580984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751549, 42.975731, 24.798967>,  <36.824379, 43.126415, 25.162271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751549, 42.975731, 24.798967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562842, 0.717475, -0.410413,
		0.806261, -0.585934, 0.081393,
		-0.182077, -0.376712, -0.908260,
		36.696926, 42.862717, 24.526489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483849, 43.160198, 24.853853>,  <36.824379, 43.126415, 25.162271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483849, 43.160198, 24.853853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215225, 43.139931, 24.558168>,  <37.054050, 43.127769, 24.380756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215225, 43.139931, 24.558168>,  <37.483849, 43.160198, 24.853853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215225, 43.139931, 24.558168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371143, 0.840472, -0.394790,
		0.641293, -0.539480, -0.545623,
		-0.671562, -0.050673, -0.739213,
		37.013756, 43.124729, 24.336405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833431, 43.208511, 24.278715>,  <37.483849, 43.160198, 24.853853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833431, 43.208511, 24.278715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467403, 43.332058, 24.174980>,  <37.247787, 43.406185, 24.112740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467403, 43.332058, 24.174980>,  <37.833431, 43.208511, 24.278715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467403, 43.332058, 24.174980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395377, 0.813868, -0.425789,
		0.079554, -0.492161, -0.866862,
		-0.915067, 0.308864, -0.259336,
		37.192883, 43.424717, 24.097179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958099, 43.593616, 23.837395>,  <37.833431, 43.208511, 24.278715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958099, 43.593616, 23.837395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578186, 43.708336, 23.887445>,  <37.350239, 43.777168, 23.917475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578186, 43.708336, 23.887445>,  <37.958099, 43.593616, 23.837395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578186, 43.708336, 23.887445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259875, 0.945729, -0.195094,
		-0.174287, -0.152780, -0.972770,
		-0.949784, 0.286802, 0.125125,
		37.293251, 43.794376, 23.924982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769440, 44.072708, 23.375797>,  <37.958099, 43.593616, 23.837395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769440, 44.072708, 23.375797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514355, 44.151192, 23.673744>,  <37.361305, 44.198284, 23.852512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514355, 44.151192, 23.673744>,  <37.769440, 44.072708, 23.375797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514355, 44.151192, 23.673744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236005, 0.970276, -0.053537,
		-0.733230, 0.141651, -0.665063,
		-0.637711, 0.196213, 0.744866,
		37.323040, 44.210056, 23.897203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447296, 44.623360, 23.101742>,  <37.769440, 44.072708, 23.375797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447296, 44.623360, 23.101742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389881, 44.601288, 23.496984>,  <37.355431, 44.588047, 23.734129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389881, 44.601288, 23.496984>,  <37.447296, 44.623360, 23.101742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389881, 44.601288, 23.496984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323767, 0.940883, 0.099572,
		-0.935186, 0.334208, -0.117187,
		-0.143537, -0.055177, 0.988106,
		37.346821, 44.584736, 23.793417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936733, 45.181915, 23.248262>,  <37.447296, 44.623360, 23.101742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936733, 45.181915, 23.248262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155899, 45.103107, 23.573463>,  <37.287399, 45.055824, 23.768583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155899, 45.103107, 23.573463>,  <36.936733, 45.181915, 23.248262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155899, 45.103107, 23.573463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128731, 0.980152, 0.150765,
		-0.826568, 0.022052, 0.562404,
		0.547917, -0.197016, 0.813001,
		37.320274, 45.044003, 23.817364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629181, 45.525311, 23.878710>,  <36.936733, 45.181915, 23.248262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629181, 45.525311, 23.878710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028614, 45.522091, 23.857645>,  <37.268272, 45.520161, 23.845007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028614, 45.522091, 23.857645>,  <36.629181, 45.525311, 23.878710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028614, 45.522091, 23.857645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013109, 0.995254, 0.096426,
		0.051634, -0.096980, 0.993946,
		0.998580, -0.008050, -0.052661,
		37.328190, 45.519676, 23.841846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992855, 45.794647, 24.433283>,  <36.629181, 45.525311, 23.878710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992855, 45.794647, 24.433283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182720, 45.906895, 24.099588>,  <37.296638, 45.974243, 23.899372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182720, 45.906895, 24.099588>,  <36.992855, 45.794647, 24.433283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182720, 45.906895, 24.099588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005863, 0.948801, 0.315820,
		0.880148, -0.145017, 0.452006,
		0.474663, 0.280618, -0.834235,
		37.325119, 45.991081, 23.849318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668446, 46.119938, 24.271572>,  <36.992855, 45.794647, 24.433283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668446, 46.119938, 24.271572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671886, 46.352654, 24.596891>,  <37.673950, 46.492283, 24.792082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671886, 46.352654, 24.596891>,  <37.668446, 46.119938, 24.271572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671886, 46.352654, 24.596891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970377, 0.191521, -0.147268,
		-0.241442, 0.790471, -0.562905,
		0.008603, 0.581786, 0.813296,
		37.674469, 46.527191, 24.840879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944378, 46.871716, 24.142023>,  <37.668446, 46.119938, 24.271572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944378, 46.871716, 24.142023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001942, 46.763741, 24.522848>,  <38.036480, 46.698956, 24.751343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001942, 46.763741, 24.522848>,  <37.944378, 46.871716, 24.142023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001942, 46.763741, 24.522848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980367, 0.169937, -0.100005,
		-0.134795, 0.947763, 0.289093,
		0.143909, -0.269937, 0.952063,
		38.045113, 46.682758, 24.808468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163948, 47.384377, 24.723284>,  <37.944378, 46.871716, 24.142023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163948, 47.384377, 24.723284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291771, 47.013954, 24.803593>,  <38.368465, 46.791702, 24.851778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291771, 47.013954, 24.803593>,  <38.163948, 47.384377, 24.723284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291771, 47.013954, 24.803593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946948, 0.304428, -0.103023,
		0.034284, 0.223042, 0.974206,
		0.319554, -0.926054, 0.200772,
		38.387638, 46.736137, 24.863825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779652, 47.485149, 25.252172>,  <38.163948, 47.384377, 24.723284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779652, 47.485149, 25.252172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795967, 47.144203, 25.043629>,  <38.805756, 46.939636, 24.918503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795967, 47.144203, 25.043629>,  <38.779652, 47.485149, 25.252172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795967, 47.144203, 25.043629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974816, 0.148444, -0.166427,
		0.219249, -0.501441, 0.836951,
		0.040786, -0.852362, -0.521359,
		38.808205, 46.888496, 24.887220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340889, 46.994053, 25.564432>,  <38.779652, 47.485149, 25.252172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340889, 46.994053, 25.564432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295059, 46.948174, 25.169724>,  <39.267559, 46.920647, 24.932899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295059, 46.948174, 25.169724>,  <39.340889, 46.994053, 25.564432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295059, 46.948174, 25.169724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969879, 0.202018, -0.136098,
		0.214956, -0.972642, 0.088100,
		-0.114576, -0.114701, -0.986770,
		39.260685, 46.913765, 24.873692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652607, 46.343773, 25.279171>,  <39.340889, 46.994053, 25.564432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652607, 46.343773, 25.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628857, 46.665550, 25.042747>,  <39.614605, 46.858616, 24.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628857, 46.665550, 25.042747>,  <39.652607, 46.343773, 25.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628857, 46.665550, 25.042747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997069, 0.076413, 0.003832,
		0.048247, -0.589098, -0.806620,
		-0.059379, 0.804440, -0.591058,
		39.611042, 46.906883, 24.865431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094673, 46.120613, 25.748981>,  <39.652607, 46.343773, 25.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094673, 46.120613, 25.748981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822216, 46.354885, 25.573246>,  <38.658741, 46.495449, 25.467806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822216, 46.354885, 25.573246>,  <39.094673, 46.120613, 25.748981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822216, 46.354885, 25.573246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666684, -0.248142, 0.702821,
		0.302613, 0.771622, 0.559487,
		-0.681144, 0.585684, -0.439337,
		38.617874, 46.530590, 25.441444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874718, 46.496456, 26.253466>,  <39.094673, 46.120613, 25.748981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874718, 46.496456, 26.253466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598106, 46.493629, 25.964539>,  <38.432140, 46.491932, 25.791182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598106, 46.493629, 25.964539>,  <38.874718, 46.496456, 26.253466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598106, 46.493629, 25.964539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706370, -0.202571, 0.678238,
		-0.151114, 0.979242, 0.135091,
		-0.691524, -0.007067, -0.722319,
		38.390648, 46.491508, 25.747843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260414, 46.875099, 26.579536>,  <38.874718, 46.496456, 26.253466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260414, 46.875099, 26.579536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210327, 46.585537, 26.308161>,  <38.180275, 46.411800, 26.145334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210327, 46.585537, 26.308161>,  <38.260414, 46.875099, 26.579536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210327, 46.585537, 26.308161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570993, -0.506639, 0.645975,
		-0.811350, 0.468271, -0.349905,
		-0.125216, -0.723905, -0.678441,
		38.172764, 46.368366, 26.104628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582123, 46.639774, 26.685202>,  <38.260414, 46.875099, 26.579536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582123, 46.639774, 26.685202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727539, 46.346394, 26.455460>,  <37.814789, 46.170364, 26.317616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727539, 46.346394, 26.455460>,  <37.582123, 46.639774, 26.685202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727539, 46.346394, 26.455460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542415, -0.667906, 0.509596,
		-0.757380, 0.126280, -0.640647,
		0.363540, -0.733454, -0.574355,
		37.836601, 46.126358, 26.283154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991589, 46.184784, 26.470598>,  <37.582123, 46.639774, 26.685202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991589, 46.184784, 26.470598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317265, 45.960812, 26.409197>,  <37.512672, 45.826427, 26.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317265, 45.960812, 26.409197>,  <36.991589, 46.184784, 26.470598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317265, 45.960812, 26.409197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498160, -0.809530, 0.310641,
		-0.298205, -0.176452, -0.938050,
		0.814193, -0.559934, -0.153505,
		37.561523, 45.792831, 26.363146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743629, 45.593773, 26.037998>,  <36.991589, 46.184784, 26.470598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743629, 45.593773, 26.037998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063843, 45.484184, 26.251198>,  <37.255970, 45.418430, 26.379118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063843, 45.484184, 26.251198>,  <36.743629, 45.593773, 26.037998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063843, 45.484184, 26.251198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543077, -0.707723, 0.451880,
		0.253414, -0.651204, -0.715343,
		0.800530, -0.273974, 0.533001,
		37.304001, 45.401993, 26.411098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853268, 44.917027, 25.942663>,  <36.743629, 45.593773, 26.037998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853268, 44.917027, 25.942663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046066, 44.981323, 26.287184>,  <37.161747, 45.019901, 26.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046066, 44.981323, 26.287184>,  <36.853268, 44.917027, 25.942663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046066, 44.981323, 26.287184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447438, -0.800026, 0.399697,
		0.753309, -0.578033, -0.313692,
		0.482000, 0.160737, 0.861301,
		37.190666, 45.029545, 26.545574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102623, 44.263359, 26.239922>,  <36.853268, 44.917027, 25.942663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102623, 44.263359, 26.239922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127960, 44.530567, 26.536499>,  <37.143162, 44.690891, 26.714445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127960, 44.530567, 26.536499>,  <37.102623, 44.263359, 26.239922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127960, 44.530567, 26.536499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408463, -0.660504, 0.629993,
		0.910574, -0.342755, 0.231026,
		0.063340, 0.668022, 0.741441,
		37.146961, 44.730972, 26.758932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374485, 43.875793, 26.734699>,  <37.102623, 44.263359, 26.239922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374485, 43.875793, 26.734699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239758, 44.191292, 26.940390>,  <37.158920, 44.380592, 27.063803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239758, 44.191292, 26.940390>,  <37.374485, 43.875793, 26.734699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239758, 44.191292, 26.940390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373237, -0.613240, 0.696154,
		0.864435, 0.042549, 0.500941,
		-0.336818, 0.788750, 0.514225,
		37.138714, 44.427917, 27.094658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742641, 43.834759, 27.387178>,  <37.374485, 43.875793, 26.734699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742641, 43.834759, 27.387178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409164, 44.051525, 27.429672>,  <37.209080, 44.181583, 27.455168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409164, 44.051525, 27.429672>,  <37.742641, 43.834759, 27.387178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409164, 44.051525, 27.429672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190616, -0.462947, 0.865648,
		0.518287, 0.701434, 0.489253,
		-0.833693, 0.541914, 0.106235,
		37.159058, 44.214100, 27.461542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744907, 44.058071, 28.020733>,  <37.742641, 43.834759, 27.387178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744907, 44.058071, 28.020733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360626, 44.090103, 27.914415>,  <37.130058, 44.109322, 27.850626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360626, 44.090103, 27.914415>,  <37.744907, 44.058071, 28.020733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360626, 44.090103, 27.914415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265782, -0.541658, 0.797475,
		-0.080108, 0.836776, 0.541653,
		-0.960699, 0.080078, -0.265791,
		37.072418, 44.114128, 27.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393848, 44.211014, 28.657957>,  <37.744907, 44.058071, 28.020733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393848, 44.211014, 28.657957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109737, 44.076378, 28.410662>,  <36.939270, 43.995598, 28.262285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109737, 44.076378, 28.410662>,  <37.393848, 44.211014, 28.657957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109737, 44.076378, 28.410662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371624, -0.566608, 0.735426,
		-0.597834, 0.752106, 0.277363,
		-0.710275, -0.336588, -0.618238,
		36.896656, 43.975403, 28.225191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770451, 44.243416, 29.176943>,  <37.393848, 44.211014, 28.657957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770451, 44.243416, 29.176943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653824, 44.023575, 28.863785>,  <36.583847, 43.891670, 28.675890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653824, 44.023575, 28.863785>,  <36.770451, 44.243416, 29.176943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653824, 44.023575, 28.863785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376753, -0.686316, 0.622115,
		-0.879230, 0.476347, -0.006956,
		-0.291569, -0.549603, -0.782895,
		36.566353, 43.858692, 28.628916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002113, 44.160622, 29.243917>,  <36.770451, 44.243416, 29.176943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002113, 44.160622, 29.243917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145508, 43.857262, 29.026176>,  <36.231544, 43.675247, 28.895533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145508, 43.857262, 29.026176>,  <36.002113, 44.160622, 29.243917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145508, 43.857262, 29.026176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661144, -0.617926, 0.425506,
		-0.659073, 0.207358, -0.722929,
		0.358485, -0.758400, -0.544352,
		36.253052, 43.629742, 28.862871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456852, 43.779018, 28.827274>,  <36.002113, 44.160622, 29.243917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456852, 43.779018, 28.827274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752411, 43.510876, 28.854561>,  <35.929749, 43.349991, 28.870934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752411, 43.510876, 28.854561>,  <35.456852, 43.779018, 28.827274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752411, 43.510876, 28.854561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668312, -0.716191, 0.201073,
		-0.085934, -0.194162, -0.977198,
		0.738901, -0.670352, 0.068216,
		35.974083, 43.309769, 28.875025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170593, 43.256672, 28.622038>,  <35.456852, 43.779018, 28.827274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170593, 43.256672, 28.622038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485058, 43.073929, 28.788519>,  <35.673737, 42.964283, 28.888407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485058, 43.073929, 28.788519>,  <35.170593, 43.256672, 28.622038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485058, 43.073929, 28.788519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567063, -0.801017, 0.191865,
		0.245729, -0.386850, -0.888799,
		0.786166, -0.456858, 0.416201,
		35.720909, 42.936871, 28.913380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239368, 42.574265, 28.305601>,  <35.170593, 43.256672, 28.622038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239368, 42.574265, 28.305601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409679, 42.567455, 28.667469>,  <35.511868, 42.563370, 28.884590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409679, 42.567455, 28.667469>,  <35.239368, 42.574265, 28.305601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409679, 42.567455, 28.667469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656272, -0.694119, 0.295813,
		0.622912, -0.719659, -0.306710,
		0.425778, -0.017019, 0.904667,
		35.537415, 42.562351, 28.938869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098270, 41.844810, 28.508766>,  <35.239368, 42.574265, 28.305601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098270, 41.844810, 28.508766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216721, 42.052246, 28.829609>,  <35.287788, 42.176708, 29.022116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216721, 42.052246, 28.829609>,  <35.098270, 41.844810, 28.508766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216721, 42.052246, 28.829609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607048, -0.546170, 0.577227,
		0.737430, -0.657849, 0.153074,
		0.296124, 0.518588, 0.802108,
		35.305557, 42.207821, 29.070242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393814, 41.341591, 29.109156>,  <35.098270, 41.844810, 28.508766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393814, 41.341591, 29.109156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255543, 41.680141, 29.271221>,  <35.172581, 41.883270, 29.368460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255543, 41.680141, 29.271221>,  <35.393814, 41.341591, 29.109156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255543, 41.680141, 29.271221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524298, -0.532305, 0.664653,
		0.778216, 0.017329, 0.627758,
		-0.345677, 0.846375, 0.405163,
		35.151840, 41.934055, 29.392771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397476, 41.190838, 29.871008>,  <35.393814, 41.341591, 29.109156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397476, 41.190838, 29.871008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176666, 41.521889, 29.830429>,  <35.044178, 41.720520, 29.806082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176666, 41.521889, 29.830429>,  <35.397476, 41.190838, 29.871008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176666, 41.521889, 29.830429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520814, -0.247228, 0.817087,
		0.651165, 0.503891, 0.567519,
		-0.552029, 0.827630, -0.101447,
		35.011059, 41.770180, 29.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316540, 41.369240, 30.524673>,  <35.397476, 41.190838, 29.871008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316540, 41.369240, 30.524673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017498, 41.530224, 30.313349>,  <34.838074, 41.626812, 30.186554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017498, 41.530224, 30.313349>,  <35.316540, 41.369240, 30.524673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017498, 41.530224, 30.313349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659773, -0.358955, 0.660190,
		0.076057, 0.842128, 0.533887,
		-0.747606, 0.402457, -0.528313,
		34.793217, 41.650963, 30.154856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960537, 41.668846, 31.020119>,  <35.316540, 41.369240, 30.524673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960537, 41.668846, 31.020119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688896, 41.631699, 30.728863>,  <34.525909, 41.609409, 30.554108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688896, 41.631699, 30.728863>,  <34.960537, 41.668846, 31.020119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688896, 41.631699, 30.728863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685163, -0.275722, 0.674187,
		-0.263376, 0.956740, 0.123614,
		-0.679106, -0.092869, -0.728142,
		34.485165, 41.603836, 30.510420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400928, 41.976166, 31.266281>,  <34.960537, 41.668846, 31.020119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400928, 41.976166, 31.266281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278351, 41.713764, 30.990383>,  <34.204803, 41.556324, 30.824844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278351, 41.713764, 30.990383>,  <34.400928, 41.976166, 31.266281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278351, 41.713764, 30.990383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680029, -0.356160, 0.640867,
		-0.666071, 0.665439, -0.336957,
		-0.306448, -0.656003, -0.689746,
		34.186417, 41.516964, 30.783459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677917, 41.948032, 31.332981>,  <34.400928, 41.976166, 31.266281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677917, 41.948032, 31.332981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735512, 41.603069, 31.138859>,  <33.770069, 41.396091, 31.022385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735512, 41.603069, 31.138859>,  <33.677917, 41.948032, 31.332981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735512, 41.603069, 31.138859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594348, -0.467476, 0.654383,
		-0.791214, 0.194218, -0.579880,
		0.143987, -0.862407, -0.485306,
		33.778709, 41.344349, 30.993267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971466, 41.517067, 31.266073>,  <33.677917, 41.948032, 31.332981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971466, 41.517067, 31.266073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235462, 41.234257, 31.164471>,  <33.393860, 41.064571, 31.103510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235462, 41.234257, 31.164471>,  <32.971466, 41.517067, 31.266073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235462, 41.234257, 31.164471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523339, -0.675250, 0.519763,
		-0.539004, -0.210109, -0.815677,
		0.659993, -0.707030, -0.254004,
		33.433460, 41.022148, 31.088270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586185, 40.913918, 31.180082>,  <32.971466, 41.517067, 31.266073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586185, 40.913918, 31.180082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960186, 40.778053, 31.220900>,  <33.184586, 40.696537, 31.245390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960186, 40.778053, 31.220900>,  <32.586185, 40.913918, 31.180082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960186, 40.778053, 31.220900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335358, -0.753127, 0.565981,
		-0.115390, -0.563411, -0.818079,
		0.934997, -0.339658, 0.102041,
		33.240685, 40.676155, 31.251513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575500, 40.144085, 30.985245>,  <32.586185, 40.913918, 31.180082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575500, 40.144085, 30.985245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898060, 40.230930, 31.205273>,  <33.091595, 40.283035, 31.337290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898060, 40.230930, 31.205273>,  <32.575500, 40.144085, 30.985245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898060, 40.230930, 31.205273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189804, -0.785933, 0.588459,
		0.560080, -0.578940, -0.592569,
		0.806402, 0.217112, 0.550071,
		33.139980, 40.296062, 31.370295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830093, 39.487423, 31.134401>,  <32.575500, 40.144085, 30.985245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830093, 39.487423, 31.134401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981602, 39.743198, 31.402027>,  <33.072506, 39.896664, 31.562603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981602, 39.743198, 31.402027>,  <32.830093, 39.487423, 31.134401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981602, 39.743198, 31.402027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203336, -0.647769, 0.734201,
		0.902878, -0.414136, -0.115332,
		0.378768, 0.639443, 0.669065,
		33.095234, 39.935032, 31.602747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315907, 39.103027, 31.514109>,  <32.830093, 39.487423, 31.134401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315907, 39.103027, 31.514109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216797, 39.419949, 31.737129>,  <33.157333, 39.610104, 31.870941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216797, 39.419949, 31.737129>,  <33.315907, 39.103027, 31.514109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216797, 39.419949, 31.737129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265321, -0.608985, 0.747490,
		0.931780, 0.037276, 0.361104,
		-0.247771, 0.792305, 0.557550,
		33.142467, 39.657639, 31.904394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577251, 38.945736, 32.089622>,  <33.315907, 39.103027, 31.514109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577251, 38.945736, 32.089622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301643, 39.225304, 32.166317>,  <33.136280, 39.393044, 32.212334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301643, 39.225304, 32.166317>,  <33.577251, 38.945736, 32.089622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301643, 39.225304, 32.166317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373342, -0.569045, 0.732669,
		0.621187, 0.433237, 0.653018,
		-0.689016, 0.698923, 0.191738,
		33.094940, 39.434982, 32.223839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577778, 38.992092, 32.769981>,  <33.577251, 38.945736, 32.089622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577778, 38.992092, 32.769981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221359, 39.130764, 32.652782>,  <33.007507, 39.213966, 32.582462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221359, 39.130764, 32.652782>,  <33.577778, 38.992092, 32.769981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221359, 39.130764, 32.652782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430258, -0.439451, 0.788518,
		0.144603, 0.828672, 0.540732,
		-0.891049, 0.346677, -0.292997,
		32.954044, 39.234768, 32.564884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359982, 39.177212, 33.327927>,  <33.577778, 38.992092, 32.769981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359982, 39.177212, 33.327927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037811, 39.126537, 33.096329>,  <32.844509, 39.096130, 32.957371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037811, 39.126537, 33.096329>,  <33.359982, 39.177212, 33.327927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037811, 39.126537, 33.096329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482622, -0.426855, 0.764768,
		-0.344036, 0.895402, 0.282658,
		-0.805429, -0.126691, -0.578994,
		32.796185, 39.088531, 32.922630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747425, 39.372929, 33.761654>,  <33.359982, 39.177212, 33.327927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747425, 39.372929, 33.761654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615162, 39.151718, 33.455757>,  <32.535805, 39.018993, 33.272221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615162, 39.151718, 33.455757>,  <32.747425, 39.372929, 33.761654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615162, 39.151718, 33.455757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548645, -0.546681, 0.632557,
		-0.767888, 0.628733, -0.122647,
		-0.330661, -0.553022, -0.764742,
		32.515965, 38.985813, 33.226334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059387, 39.399422, 33.781570>,  <32.747425, 39.372929, 33.761654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059387, 39.399422, 33.781570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150898, 39.063412, 33.584789>,  <32.205803, 38.861805, 33.466721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150898, 39.063412, 33.584789>,  <32.059387, 39.399422, 33.781570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150898, 39.063412, 33.584789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580198, -0.523447, 0.623998,
		-0.781686, 0.142675, -0.607133,
		0.228773, -0.840028, -0.491951,
		32.219528, 38.811405, 33.437202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445681, 39.008778, 33.704544>,  <32.059387, 39.399422, 33.781570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445681, 39.008778, 33.704544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730164, 38.732128, 33.654202>,  <31.900854, 38.566139, 33.623997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730164, 38.732128, 33.654202>,  <31.445681, 39.008778, 33.704544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730164, 38.732128, 33.654202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554636, -0.662062, 0.504036,
		-0.431925, -0.288673, -0.854464,
		0.711210, -0.691623, -0.125853,
		31.943527, 38.524643, 33.616447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079781, 38.388229, 33.573036>,  <31.445681, 39.008778, 33.704544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079781, 38.388229, 33.573036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436743, 38.255112, 33.694931>,  <31.650921, 38.175243, 33.768066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436743, 38.255112, 33.694931>,  <31.079781, 38.388229, 33.573036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436743, 38.255112, 33.694931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451200, -0.666426, 0.593545,
		0.005555, -0.667178, -0.744878,
		0.892406, -0.332792, 0.304732,
		31.704464, 38.155273, 33.786350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017637, 37.732670, 33.533577>,  <31.079781, 38.388229, 33.573036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017637, 37.732670, 33.533577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328875, 37.779747, 33.780388>,  <31.515617, 37.807995, 33.928474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328875, 37.779747, 33.780388>,  <31.017637, 37.732670, 33.533577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328875, 37.779747, 33.780388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433986, -0.609421, 0.663523,
		0.454121, -0.784062, -0.423108,
		0.778094, 0.117697, 0.617023,
		31.562304, 37.815056, 33.965496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441496, 37.059319, 33.526882>,  <31.017637, 37.732670, 33.533577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441496, 37.059319, 33.526882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525507, 37.277493, 33.851448>,  <31.575912, 37.408398, 34.046188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525507, 37.277493, 33.851448>,  <31.441496, 37.059319, 33.526882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525507, 37.277493, 33.851448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298863, -0.754379, 0.584459,
		0.930898, -0.365252, 0.004573,
		0.210025, 0.545439, 0.811410,
		31.588514, 37.441124, 34.094872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753115, 36.627567, 33.935181>,  <31.441496, 37.059319, 33.526882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753115, 36.627567, 33.935181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646975, 36.901085, 34.207066>,  <31.583290, 37.065197, 34.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646975, 36.901085, 34.207066>,  <31.753115, 36.627567, 33.935181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646975, 36.901085, 34.207066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166258, -0.726880, 0.666336,
		0.949709, 0.063804, 0.306564,
		-0.265351, 0.683794, 0.679717,
		31.567369, 37.106224, 34.410980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842571, 36.264912, 34.541924>,  <31.753115, 36.627567, 33.935181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842571, 36.264912, 34.541924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616940, 36.576729, 34.650829>,  <31.481560, 36.763821, 34.716171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616940, 36.576729, 34.650829>,  <31.842571, 36.264912, 34.541924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616940, 36.576729, 34.650829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539535, -0.597569, 0.593139,
		0.625073, 0.187683, 0.757667,
		-0.564080, 0.779543, 0.272262,
		31.447716, 36.810593, 34.732510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898567, 36.070900, 35.223637>,  <31.842571, 36.264912, 34.541924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898567, 36.070900, 35.223637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595255, 36.321144, 35.150284>,  <31.413267, 36.471291, 35.106274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595255, 36.321144, 35.150284>,  <31.898567, 36.070900, 35.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595255, 36.321144, 35.150284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596958, -0.553248, 0.580997,
		0.262020, 0.550029, 0.792977,
		-0.758278, 0.625608, -0.183382,
		31.367771, 36.508827, 35.095268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480576, 36.322823, 34.972183>,  <31.898567, 36.070900, 35.223637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480576, 36.322823, 34.972183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712669, 36.168236, 35.258949>,  <32.851925, 36.075481, 35.431011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712669, 36.168236, 35.258949>,  <32.480576, 36.322823, 34.972183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712669, 36.168236, 35.258949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582532, 0.812109, -0.033682,
		-0.569200, 0.437172, 0.696342,
		0.580231, -0.386469, 0.716920,
		32.886738, 36.052296, 35.474026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563671, 36.772408, 35.515026>,  <32.480576, 36.322823, 34.972183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563671, 36.772408, 35.515026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879272, 36.527504, 35.494556>,  <33.068634, 36.380562, 35.482273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879272, 36.527504, 35.494556>,  <32.563671, 36.772408, 35.515026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879272, 36.527504, 35.494556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592101, 0.779967, -0.202649,
		0.163989, 0.129590, 0.977913,
		0.789002, -0.612256, -0.051175,
		33.115974, 36.343826, 35.479202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033978, 37.015766, 35.955292>,  <32.563671, 36.772408, 35.515026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033978, 37.015766, 35.955292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247929, 36.766190, 35.727394>,  <33.376297, 36.616444, 35.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247929, 36.766190, 35.727394>,  <33.033978, 37.015766, 35.955292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247929, 36.766190, 35.727394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697361, 0.706726, -0.119276,
		0.477072, -0.333517, 0.813123,
		0.534874, -0.623943, -0.569741,
		33.408390, 36.579006, 35.556473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719383, 36.986526, 36.270004>,  <33.033978, 37.015766, 35.955292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719383, 36.986526, 36.270004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766018, 36.885841, 35.885704>,  <33.793999, 36.825432, 35.655125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766018, 36.885841, 35.885704>,  <33.719383, 36.986526, 36.270004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766018, 36.885841, 35.885704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683880, 0.721834, -0.106132,
		0.720220, -0.644667, 0.256296,
		0.116583, -0.251714, -0.960754,
		33.800991, 36.810326, 35.597477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468552, 37.059925, 36.127094>,  <33.719383, 36.986526, 36.270004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468552, 37.059925, 36.127094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318134, 37.045837, 35.756721>,  <34.227882, 37.037384, 35.534496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318134, 37.045837, 35.756721>,  <34.468552, 37.059925, 36.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318134, 37.045837, 35.756721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841703, 0.404869, -0.357236,
		0.387464, -0.913696, -0.122602,
		-0.376043, -0.035221, -0.925933,
		34.205322, 37.035271, 35.478943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017670, 36.966904, 35.644279>,  <34.468552, 37.059925, 36.127094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017670, 36.966904, 35.644279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738312, 37.118298, 35.401299>,  <34.570698, 37.209133, 35.255508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738312, 37.118298, 35.401299>,  <35.017670, 36.966904, 35.644279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738312, 37.118298, 35.401299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696617, 0.554231, -0.455579,
		0.164237, -0.741333, -0.650731,
		-0.698392, 0.378488, -0.607451,
		34.528793, 37.231842, 35.219063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422173, 36.961872, 35.040058>,  <35.017670, 36.966904, 35.644279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422173, 36.961872, 35.040058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099384, 37.156422, 34.906044>,  <34.905712, 37.273151, 34.825638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099384, 37.156422, 34.906044>,  <35.422173, 36.961872, 35.040058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099384, 37.156422, 34.906044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582306, 0.560513, -0.588851,
		-0.098613, -0.670273, -0.735533,
		-0.806967, 0.486373, -0.335031,
		34.857296, 37.302334, 34.805534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538551, 37.025539, 34.352306>,  <35.422173, 36.961872, 35.040058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538551, 37.025539, 34.352306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284218, 37.308228, 34.476410>,  <35.131618, 37.477840, 34.550873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284218, 37.308228, 34.476410>,  <35.538551, 37.025539, 34.352306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284218, 37.308228, 34.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559976, 0.699040, -0.444714,
		-0.531173, -0.109025, -0.840219,
		-0.635832, 0.706723, 0.310260,
		35.093468, 37.520245, 34.569489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477413, 37.461250, 33.764561>,  <35.538551, 37.025539, 34.352306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477413, 37.461250, 33.764561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332256, 37.675682, 34.069435>,  <35.245163, 37.804340, 34.252361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332256, 37.675682, 34.069435>,  <35.477413, 37.461250, 33.764561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332256, 37.675682, 34.069435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362509, 0.834731, -0.414502,
		-0.858429, 0.125883, -0.497246,
		-0.362888, 0.536076, 0.762191,
		35.223389, 37.836506, 34.298092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311359, 38.088036, 33.381226>,  <35.477413, 37.461250, 33.764561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311359, 38.088036, 33.381226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341167, 38.182228, 33.768833>,  <35.359051, 38.238743, 34.001396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341167, 38.182228, 33.768833>,  <35.311359, 38.088036, 33.381226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341167, 38.182228, 33.768833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191762, 0.950201, -0.245653,
		-0.978608, 0.204127, 0.025651,
		0.074518, 0.235479, 0.969018,
		35.363522, 38.252872, 34.059540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915100, 38.646927, 33.516586>,  <35.311359, 38.088036, 33.381226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915100, 38.646927, 33.516586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172459, 38.648872, 33.822792>,  <35.326874, 38.650040, 34.006516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172459, 38.648872, 33.822792>,  <34.915100, 38.646927, 33.516586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172459, 38.648872, 33.822792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222406, 0.955661, -0.192996,
		-0.732511, 0.294428, 0.613791,
		0.643400, 0.004861, 0.765515,
		35.365479, 38.650330, 34.052448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874748, 39.283974, 33.815998>,  <34.915100, 38.646927, 33.516586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874748, 39.283974, 33.815998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233601, 39.159958, 33.941875>,  <35.448914, 39.085548, 34.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233601, 39.159958, 33.941875>,  <34.874748, 39.283974, 33.815998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233601, 39.159958, 33.941875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376399, 0.909367, -0.177129,
		-0.231256, 0.277358, 0.932520,
		0.897131, -0.310038, 0.314694,
		35.502739, 39.066948, 34.036285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167473, 39.842728, 34.254307>,  <34.874748, 39.283974, 33.815998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167473, 39.842728, 34.254307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477062, 39.609371, 34.155823>,  <35.662815, 39.469357, 34.096733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477062, 39.609371, 34.155823>,  <35.167473, 39.842728, 34.254307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477062, 39.609371, 34.155823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512985, 0.805630, -0.296320,
		0.371227, 0.103040, 0.922807,
		0.773974, -0.583389, -0.246214,
		35.709255, 39.434353, 34.081959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846859, 40.251316, 34.462662>,  <35.167473, 39.842728, 34.254307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846859, 40.251316, 34.462662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947052, 39.981453, 34.184933>,  <36.007168, 39.819534, 34.018295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947052, 39.981453, 34.184933>,  <35.846859, 40.251316, 34.462662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947052, 39.981453, 34.184933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502997, 0.703484, -0.502100,
		0.827195, -0.223476, 0.515564,
		0.250484, -0.674661, -0.694327,
		36.022198, 39.779053, 33.976635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590729, 40.461964, 34.223904>,  <35.846859, 40.251316, 34.462662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590729, 40.461964, 34.223904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473511, 40.203815, 33.941734>,  <36.403179, 40.048927, 33.772430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473511, 40.203815, 33.941734>,  <36.590729, 40.461964, 34.223904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473511, 40.203815, 33.941734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460455, 0.551356, -0.695693,
		0.837918, -0.528685, 0.135591,
		-0.293043, -0.645367, -0.705426,
		36.385597, 40.010204, 33.730106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246429, 40.363171, 33.693283>,  <36.590729, 40.461964, 34.223904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246429, 40.363171, 33.693283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918945, 40.239864, 33.499504>,  <36.722454, 40.165882, 33.383236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918945, 40.239864, 33.499504>,  <37.246429, 40.363171, 33.693283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918945, 40.239864, 33.499504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395588, 0.308732, -0.864983,
		0.416211, -0.899809, -0.130813,
		-0.818705, -0.308267, -0.484451,
		36.673332, 40.147385, 33.354168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520359, 39.991058, 33.094631>,  <37.246429, 40.363171, 33.693283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520359, 39.991058, 33.094631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149437, 40.128540, 33.035351>,  <36.926884, 40.211029, 32.999783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149437, 40.128540, 33.035351>,  <37.520359, 39.991058, 33.094631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149437, 40.128540, 33.035351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306460, 0.469868, -0.827833,
		-0.214895, -0.813075, -0.541044,
		-0.927309, 0.343706, -0.148202,
		36.871243, 40.231651, 32.990891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301456, 39.749241, 32.438137>,  <37.520359, 39.991058, 33.094631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301456, 39.749241, 32.438137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058033, 40.057041, 32.515625>,  <36.911980, 40.241722, 32.562119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058033, 40.057041, 32.515625>,  <37.301456, 39.749241, 32.438137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058033, 40.057041, 32.515625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244148, 0.413861, -0.876990,
		-0.755016, -0.486403, -0.439730,
		-0.608558, 0.769501, 0.193717,
		36.875465, 40.287891, 32.573742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904415, 39.872395, 31.857363>,  <37.301456, 39.749241, 32.438137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904415, 39.872395, 31.857363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883709, 40.216053, 32.061005>,  <36.871284, 40.422249, 32.183189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883709, 40.216053, 32.061005>,  <36.904415, 39.872395, 31.857363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883709, 40.216053, 32.061005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263343, 0.503489, -0.822891,
		-0.963312, 0.091468, -0.252316,
		-0.051770, 0.859146, 0.509104,
		36.868179, 40.473797, 32.213737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485058, 40.306736, 31.437918>,  <36.904415, 39.872395, 31.857363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485058, 40.306736, 31.437918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715794, 40.529358, 31.677086>,  <36.854233, 40.662930, 31.820587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715794, 40.529358, 31.677086>,  <36.485058, 40.306736, 31.437918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715794, 40.529358, 31.677086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323951, 0.516085, -0.792913,
		-0.749877, 0.651077, 0.117400,
		0.576836, 0.556555, 0.597918,
		36.888844, 40.696323, 31.856461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279854, 40.935715, 31.322836>,  <36.485058, 40.306736, 31.437918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279854, 40.935715, 31.322836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652477, 40.946354, 31.467884>,  <36.876053, 40.952740, 31.554913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652477, 40.946354, 31.467884>,  <36.279854, 40.935715, 31.322836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652477, 40.946354, 31.467884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288723, 0.552064, -0.782218,
		-0.220997, 0.833377, 0.506599,
		0.931557, 0.026601, 0.362620,
		36.931946, 40.954334, 31.576670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369072, 41.539925, 31.137438>,  <36.279854, 40.935715, 31.322836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369072, 41.539925, 31.137438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728432, 41.377472, 31.204300>,  <36.944046, 41.279999, 31.244417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728432, 41.377472, 31.204300>,  <36.369072, 41.539925, 31.137438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728432, 41.377472, 31.204300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404081, 0.615264, -0.676881,
		0.172060, 0.675651, 0.716862,
		0.898395, -0.406134, 0.167155,
		36.997952, 41.255630, 31.254446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822765, 42.078571, 30.999451>,  <36.369072, 41.539925, 31.137438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822765, 42.078571, 30.999451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056801, 41.754459, 30.986095>,  <37.197224, 41.559994, 30.978083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056801, 41.754459, 30.986095>,  <36.822765, 42.078571, 30.999451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056801, 41.754459, 30.986095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542483, 0.421658, -0.726578,
		0.602810, 0.407003, 0.686272,
		0.585092, -0.810280, -0.033388,
		37.232327, 41.511375, 30.976080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616402, 42.286407, 31.162388>,  <36.822765, 42.078571, 30.999451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616402, 42.286407, 31.162388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575493, 41.950264, 30.949469>,  <37.550949, 41.748577, 30.821716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575493, 41.950264, 30.949469>,  <37.616402, 42.286407, 31.162388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575493, 41.950264, 30.949469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607374, 0.371028, -0.702448,
		0.787805, -0.395143, 0.472467,
		-0.102269, -0.840357, -0.532298,
		37.544811, 41.698158, 30.789780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336071, 42.183575, 30.955523>,  <37.616402, 42.286407, 31.162388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336071, 42.183575, 30.955523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100227, 41.972912, 30.710573>,  <37.958721, 41.846516, 30.563604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100227, 41.972912, 30.710573>,  <38.336071, 42.183575, 30.955523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100227, 41.972912, 30.710573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578127, 0.254273, -0.775316,
		0.564034, -0.811159, 0.154554,
		-0.589606, -0.526656, -0.612371,
		37.923344, 41.814915, 30.526861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806736, 41.783207, 30.506147>,  <38.336071, 42.183575, 30.955523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806736, 41.783207, 30.506147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453613, 41.770870, 30.318657>,  <38.241741, 41.763466, 30.206163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453613, 41.770870, 30.318657>,  <38.806736, 41.783207, 30.506147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453613, 41.770870, 30.318657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468048, 0.026854, -0.883295,
		0.039853, -0.999163, -0.009259,
		-0.882804, -0.030868, -0.468726,
		38.188770, 41.761616, 30.178040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077084, 41.362217, 30.064117>,  <38.806736, 41.783207, 30.506147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077084, 41.362217, 30.064117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750710, 41.540108, 29.916351>,  <38.554886, 41.646843, 29.827692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750710, 41.540108, 29.916351>,  <39.077084, 41.362217, 30.064117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750710, 41.540108, 29.916351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429126, 0.037683, -0.902458,
		-0.387428, -0.894872, -0.221592,
		-0.815935, 0.444729, -0.369414,
		38.505928, 41.673527, 29.805527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868877, 41.000557, 29.381657>,  <39.077084, 41.362217, 30.064117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868877, 41.000557, 29.381657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702820, 41.364456, 29.383394>,  <38.603184, 41.582794, 29.384438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702820, 41.364456, 29.383394>,  <38.868877, 41.000557, 29.381657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702820, 41.364456, 29.383394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375586, 0.175738, -0.909974,
		-0.828607, -0.376139, -0.414644,
		-0.415145, 0.909745, 0.004345,
		38.578278, 41.637379, 29.384697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412582, 41.009434, 28.868725>,  <38.868877, 41.000557, 29.381657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412582, 41.009434, 28.868725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518154, 41.389336, 28.936033>,  <38.581497, 41.617275, 28.976418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518154, 41.389336, 28.936033>,  <38.412582, 41.009434, 28.868725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518154, 41.389336, 28.936033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202481, 0.116012, -0.972390,
		-0.943049, 0.290715, -0.161687,
		0.263931, 0.949750, 0.168269,
		38.597332, 41.674259, 28.986513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167542, 41.347599, 28.353676>,  <38.412582, 41.009434, 28.868725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167542, 41.347599, 28.353676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435493, 41.607780, 28.496874>,  <38.596264, 41.763889, 28.582792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435493, 41.607780, 28.496874>,  <38.167542, 41.347599, 28.353676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435493, 41.607780, 28.496874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289230, 0.215463, -0.932696,
		-0.683814, 0.728341, -0.043797,
		0.669884, 0.650458, 0.357995,
		38.636459, 41.802917, 28.604273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001968, 42.074497, 28.127480>,  <38.167542, 41.347599, 28.353676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001968, 42.074497, 28.127480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398178, 42.057728, 28.179790>,  <38.635902, 42.047668, 28.211178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398178, 42.057728, 28.179790>,  <38.001968, 42.074497, 28.127480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398178, 42.057728, 28.179790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131757, 0.558654, -0.818869,
		-0.038734, 0.828341, 0.558883,
		0.990525, -0.041919, 0.130779,
		38.695335, 42.045151, 28.219025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138901, 42.829170, 27.976864>,  <38.001968, 42.074497, 28.127480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138901, 42.829170, 27.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478611, 42.622478, 27.933548>,  <38.682438, 42.498463, 27.907558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478611, 42.622478, 27.933548>,  <38.138901, 42.829170, 27.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478611, 42.622478, 27.933548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243493, 0.565353, -0.788091,
		0.468453, 0.642935, 0.605959,
		0.849272, -0.516731, -0.108291,
		38.733391, 42.467461, 27.901060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547707, 43.330154, 27.827314>,  <38.138901, 42.829170, 27.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547707, 43.330154, 27.827314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765392, 43.010162, 27.726238>,  <38.896004, 42.818165, 27.665592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765392, 43.010162, 27.726238>,  <38.547707, 43.330154, 27.827314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765392, 43.010162, 27.726238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403923, 0.513844, -0.756842,
		0.735305, 0.309820, 0.602775,
		0.544218, -0.799985, -0.252688,
		38.928658, 42.770168, 27.650433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202988, 43.527042, 27.795362>,  <38.547707, 43.330154, 27.827314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202988, 43.527042, 27.795362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187778, 43.197487, 27.569170>,  <39.178654, 42.999756, 27.433455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187778, 43.197487, 27.569170>,  <39.202988, 43.527042, 27.795362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187778, 43.197487, 27.569170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221818, 0.544812, -0.808688,
		0.974346, -0.156184, 0.162035,
		-0.038026, -0.823885, -0.565481,
		39.176373, 42.950321, 27.399527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816875, 43.601406, 27.407492>,  <39.202988, 43.527042, 27.795362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816875, 43.601406, 27.407492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569847, 43.355919, 27.210735>,  <39.421631, 43.208626, 27.092682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569847, 43.355919, 27.210735>,  <39.816875, 43.601406, 27.407492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569847, 43.355919, 27.210735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395971, 0.297756, -0.868648,
		0.679569, -0.731225, 0.059130,
		-0.617571, -0.613719, -0.491890,
		39.384575, 43.171803, 27.063168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169628, 43.224323, 26.954414>,  <39.816875, 43.601406, 27.407492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169628, 43.224323, 26.954414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819122, 43.180351, 26.766764>,  <39.608818, 43.153969, 26.654173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819122, 43.180351, 26.766764>,  <40.169628, 43.224323, 26.954414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819122, 43.180351, 26.766764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422917, 0.291049, -0.858156,
		0.230875, -0.950371, -0.208545,
		-0.876263, -0.109930, -0.469124,
		39.556244, 43.147373, 26.626026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257198, 42.801479, 26.303921>,  <40.169628, 43.224323, 26.954414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257198, 42.801479, 26.303921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914162, 43.002102, 26.258358>,  <39.708340, 43.122475, 26.231020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914162, 43.002102, 26.258358>,  <40.257198, 42.801479, 26.303921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914162, 43.002102, 26.258358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272812, 0.255846, -0.927424,
		-0.436012, -0.826429, -0.356242,
		-0.857593, 0.501556, -0.113908,
		39.656883, 43.152569, 26.224186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990593, 42.567940, 25.658152>,  <40.257198, 42.801479, 26.303921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990593, 42.567940, 25.658152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827431, 42.923035, 25.743507>,  <39.729534, 43.136093, 25.794722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827431, 42.923035, 25.743507>,  <39.990593, 42.567940, 25.658152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827431, 42.923035, 25.743507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219896, 0.322359, -0.920723,
		-0.886150, -0.328641, -0.326701,
		-0.407902, 0.887738, 0.213392,
		39.705059, 43.189358, 25.807526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463745, 41.948662, 25.616110>,  <39.990593, 42.567940, 25.658152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463745, 41.948662, 25.616110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680035, 41.756817, 25.339678>,  <40.809807, 41.641708, 25.173819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680035, 41.756817, 25.339678>,  <40.463745, 41.948662, 25.616110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680035, 41.756817, 25.339678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274749, -0.675790, 0.683975,
		-0.795069, -0.559712, -0.233639,
		0.540720, -0.479616, -0.691079,
		40.842251, 41.612930, 25.132355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255043, 41.289757, 25.549431>,  <40.463745, 41.948662, 25.616110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255043, 41.289757, 25.549431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641930, 41.291367, 25.447863>,  <40.874062, 41.292332, 25.386923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641930, 41.291367, 25.447863>,  <40.255043, 41.289757, 25.549431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641930, 41.291367, 25.447863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183010, -0.704264, 0.685944,
		-0.176064, -0.709927, -0.681913,
		0.967217, 0.004027, -0.253919,
		40.932095, 41.292576, 25.371687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528675, 40.636353, 25.329483>,  <40.255043, 41.289757, 25.549431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528675, 40.636353, 25.329483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852135, 40.830944, 25.461802>,  <41.046211, 40.947697, 25.541193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852135, 40.830944, 25.461802>,  <40.528675, 40.636353, 25.329483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852135, 40.830944, 25.461802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152184, -0.716147, 0.681156,
		0.568264, -0.500475, -0.653146,
		0.808650, 0.486475, 0.330797,
		41.094730, 40.976887, 25.561041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932564, 40.102554, 25.631966>,  <40.528675, 40.636353, 25.329483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932564, 40.102554, 25.631966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066124, 40.452942, 25.771214>,  <41.146259, 40.663174, 25.854763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066124, 40.452942, 25.771214>,  <40.932564, 40.102554, 25.631966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066124, 40.452942, 25.771214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082215, -0.394973, 0.915006,
		0.939017, -0.276897, -0.203898,
		0.333897, 0.875970, 0.348122,
		41.166294, 40.715733, 25.875650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554672, 40.094124, 25.976273>,  <40.932564, 40.102554, 25.631966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554672, 40.094124, 25.976273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432270, 40.439358, 26.136992>,  <41.358829, 40.646500, 26.233423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432270, 40.439358, 26.136992>,  <41.554672, 40.094124, 25.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432270, 40.439358, 26.136992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132963, -0.379163, 0.915727,
		0.942698, 0.333645, 0.001268,
		-0.306009, 0.863085, 0.401799,
		41.340469, 40.698284, 26.257532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930950, 40.170284, 26.672270>,  <41.554672, 40.094124, 25.976273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930950, 40.170284, 26.672270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626667, 40.429310, 26.690075>,  <41.444096, 40.584724, 26.700758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626667, 40.429310, 26.690075>,  <41.930950, 40.170284, 26.672270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626667, 40.429310, 26.690075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158302, -0.251592, 0.954799,
		0.629490, 0.719281, 0.293899,
		-0.760712, 0.647561, 0.044511,
		41.398453, 40.623577, 26.703428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991749, 40.324669, 27.330103>,  <41.930950, 40.170284, 26.672270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991749, 40.324669, 27.330103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615650, 40.431103, 27.245115>,  <41.389992, 40.494965, 27.194122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615650, 40.431103, 27.245115>,  <41.991749, 40.324669, 27.330103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615650, 40.431103, 27.245115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281675, -0.257207, 0.924394,
		0.191321, 0.929001, 0.316787,
		-0.940242, 0.266087, -0.212468,
		41.333576, 40.510929, 27.181376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780312, 40.654533, 27.888868>,  <41.991749, 40.324669, 27.330103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780312, 40.654533, 27.888868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450344, 40.520157, 27.707035>,  <41.252361, 40.439529, 27.597935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450344, 40.520157, 27.707035>,  <41.780312, 40.654533, 27.888868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450344, 40.520157, 27.707035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414222, -0.187926, 0.890564,
		-0.384608, 0.922944, 0.015868,
		-0.824922, -0.335946, -0.454582,
		41.202866, 40.419373, 27.570660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166100, 40.956036, 28.307556>,  <41.780312, 40.654533, 27.888868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166100, 40.956036, 28.307556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050255, 40.631546, 28.104364>,  <40.980747, 40.436852, 27.982449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050255, 40.631546, 28.104364>,  <41.166100, 40.956036, 28.307556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050255, 40.631546, 28.104364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500870, -0.323809, 0.802669,
		-0.815630, 0.486896, -0.312537,
		-0.289614, -0.811221, -0.507980,
		40.963371, 40.388180, 27.951971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518311, 40.954384, 28.419149>,  <41.166100, 40.956036, 28.307556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518311, 40.954384, 28.419149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585743, 40.569519, 28.333527>,  <40.626202, 40.338600, 28.282152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585743, 40.569519, 28.333527>,  <40.518311, 40.954384, 28.419149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585743, 40.569519, 28.333527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572560, -0.272358, 0.773302,
		-0.802344, -0.007800, -0.596811,
		0.168578, -0.962164, -0.214059,
		40.636318, 40.280869, 28.269308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906406, 40.702114, 28.426773>,  <40.518311, 40.954384, 28.419149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906406, 40.702114, 28.426773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122269, 40.367416, 28.463953>,  <40.251785, 40.166599, 28.486261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122269, 40.367416, 28.463953>,  <39.906406, 40.702114, 28.426773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122269, 40.367416, 28.463953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608731, -0.311547, 0.729648,
		-0.581568, -0.450338, -0.677477,
		0.539653, -0.836740, 0.092949,
		40.284164, 40.116394, 28.491838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323933, 40.188648, 28.532499>,  <39.906406, 40.702114, 28.426773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323933, 40.188648, 28.532499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684036, 40.047333, 28.634264>,  <39.900097, 39.962543, 28.695322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684036, 40.047333, 28.634264>,  <39.323933, 40.188648, 28.532499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684036, 40.047333, 28.634264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345399, -0.223858, 0.911366,
		-0.265026, -0.908335, -0.323556,
		0.900256, -0.353292, 0.254409,
		39.954113, 39.941349, 28.710588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220215, 39.528011, 28.886093>,  <39.323933, 40.188648, 28.532499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220215, 39.528011, 28.886093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586861, 39.632881, 29.006809>,  <39.806850, 39.695805, 29.079239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586861, 39.632881, 29.006809>,  <39.220215, 39.528011, 28.886093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586861, 39.632881, 29.006809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211172, -0.323450, 0.922381,
		0.339441, -0.909199, -0.241115,
		0.916617, 0.262177, 0.301790,
		39.861847, 39.711533, 29.097345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422157, 39.026154, 29.208916>,  <39.220215, 39.528011, 28.886093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422157, 39.026154, 29.208916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641552, 39.324486, 29.360125>,  <39.773190, 39.503487, 29.450850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641552, 39.324486, 29.360125>,  <39.422157, 39.026154, 29.208916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641552, 39.324486, 29.360125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180429, -0.335876, 0.924463,
		0.816461, -0.575261, -0.049653,
		0.548485, 0.745830, 0.378024,
		39.806099, 39.548233, 29.473532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806252, 38.667282, 29.730236>,  <39.422157, 39.026154, 29.208916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806252, 38.667282, 29.730236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796783, 39.061363, 29.798132>,  <39.791103, 39.297813, 29.838869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796783, 39.061363, 29.798132>,  <39.806252, 38.667282, 29.730236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796783, 39.061363, 29.798132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288779, -0.169286, 0.942310,
		0.957103, -0.026717, 0.288513,
		-0.023666, 0.985205, 0.169739,
		39.789684, 39.356926, 29.849054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274803, 38.732006, 30.377157>,  <39.806252, 38.667282, 29.730236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274803, 38.732006, 30.377157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028656, 39.044769, 30.337273>,  <39.880966, 39.232426, 30.313341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028656, 39.044769, 30.337273>,  <40.274803, 38.732006, 30.377157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028656, 39.044769, 30.337273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396914, -0.198085, 0.896226,
		0.681012, 0.591090, 0.432245,
		-0.615371, 0.781905, -0.099713,
		39.844044, 39.279343, 30.307358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319344, 39.091282, 31.022316>,  <40.274803, 38.732006, 30.377157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319344, 39.091282, 31.022316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970249, 39.190895, 30.854353>,  <39.760792, 39.250664, 30.753576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970249, 39.190895, 30.854353>,  <40.319344, 39.091282, 31.022316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970249, 39.190895, 30.854353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463123, -0.150203, 0.873474,
		0.154452, 0.956777, 0.246419,
		-0.872733, 0.249032, -0.419906,
		39.708431, 39.265606, 30.728382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059990, 39.451893, 31.536526>,  <40.319344, 39.091282, 31.022316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059990, 39.451893, 31.536526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743671, 39.399715, 31.297321>,  <39.553879, 39.368408, 31.153797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743671, 39.399715, 31.297321>,  <40.059990, 39.451893, 31.536526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743671, 39.399715, 31.297321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592593, -0.081372, 0.801381,
		-0.153199, 0.988110, -0.012952,
		-0.790799, -0.130446, -0.598013,
		39.506432, 39.360580, 31.117918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591541, 39.940727, 31.752699>,  <40.059990, 39.451893, 31.536526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591541, 39.940727, 31.752699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406780, 39.629509, 31.582388>,  <39.295925, 39.442776, 31.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406780, 39.629509, 31.582388>,  <39.591541, 39.940727, 31.752699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406780, 39.629509, 31.582388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527967, -0.144534, 0.836875,
		-0.712669, 0.611351, -0.344023,
		-0.461902, -0.778048, -0.425778,
		39.268211, 39.396095, 31.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927868, 39.898808, 32.081444>,  <39.591541, 39.940727, 31.752699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927868, 39.898808, 32.081444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944660, 39.534107, 31.918007>,  <38.954735, 39.315289, 31.819944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944660, 39.534107, 31.918007>,  <38.927868, 39.898808, 32.081444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944660, 39.534107, 31.918007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606064, -0.348362, 0.715073,
		-0.794307, 0.217615, -0.567203,
		0.041981, -0.911750, -0.408596,
		38.957256, 39.260582, 31.795427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181343, 39.674564, 31.910645>,  <38.927868, 39.898808, 32.081444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181343, 39.674564, 31.910645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406731, 39.344131, 31.914314>,  <38.541962, 39.145870, 31.916515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406731, 39.344131, 31.914314>,  <38.181343, 39.674564, 31.910645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406731, 39.344131, 31.914314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719105, -0.484973, 0.497684,
		-0.406681, -0.287027, -0.867310,
		0.563471, -0.826085, 0.009173,
		38.575771, 39.096306, 31.917067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691944, 39.156395, 31.879805>,  <38.181343, 39.674564, 31.910645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691944, 39.156395, 31.879805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016582, 38.947746, 31.985050>,  <38.211365, 38.822559, 32.048199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016582, 38.947746, 31.985050>,  <37.691944, 39.156395, 31.879805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016582, 38.947746, 31.985050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563066, -0.578290, 0.590371,
		-0.155793, -0.627291, -0.763043,
		0.811594, -0.521619, 0.263113,
		38.260059, 38.791260, 32.063984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448158, 38.578480, 32.053833>,  <37.691944, 39.156395, 31.879805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448158, 38.578480, 32.053833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814075, 38.528717, 32.207550>,  <38.033627, 38.498859, 32.299782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814075, 38.528717, 32.207550>,  <37.448158, 38.578480, 32.053833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814075, 38.528717, 32.207550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391181, -0.509957, 0.766108,
		0.100666, -0.851157, -0.515168,
		0.914792, -0.124403, 0.384292,
		38.088512, 38.491394, 32.322838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422871, 37.916313, 32.261566>,  <37.448158, 38.578480, 32.053833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422871, 37.916313, 32.261566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718201, 38.076473, 32.478661>,  <37.895397, 38.172569, 32.608917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718201, 38.076473, 32.478661>,  <37.422871, 37.916313, 32.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718201, 38.076473, 32.478661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326252, -0.492264, 0.806991,
		0.590286, -0.772889, -0.232819,
		0.738323, 0.400398, 0.542734,
		37.939697, 38.196594, 32.641479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721836, 37.402245, 32.661652>,  <37.422871, 37.916313, 32.261566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721836, 37.402245, 32.661652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823009, 37.721474, 32.880409>,  <37.883713, 37.913013, 33.011665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823009, 37.721474, 32.880409>,  <37.721836, 37.402245, 32.661652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823009, 37.721474, 32.880409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191355, -0.512845, 0.836883,
		0.948371, -0.316328, 0.023000,
		0.252934, 0.798077, 0.546898,
		37.898891, 37.960896, 33.044479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408386, 37.221348, 33.136971>,  <37.721836, 37.402245, 32.661652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408386, 37.221348, 33.136971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223160, 37.533546, 33.304966>,  <38.112022, 37.720867, 33.405762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223160, 37.533546, 33.304966>,  <38.408386, 37.221348, 33.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223160, 37.533546, 33.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116771, -0.416001, 0.901836,
		0.878598, 0.466653, 0.101496,
		-0.463067, 0.780499, 0.419989,
		38.084240, 37.767696, 33.430962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827549, 37.409496, 33.761398>,  <38.408386, 37.221348, 33.136971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827549, 37.409496, 33.761398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450356, 37.529003, 33.820080>,  <38.224041, 37.600708, 33.855289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450356, 37.529003, 33.820080>,  <38.827549, 37.409496, 33.761398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450356, 37.529003, 33.820080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023574, -0.379709, 0.924806,
		0.332010, 0.875533, 0.351015,
		-0.942981, 0.298770, 0.146707,
		38.167461, 37.618633, 33.864094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772606, 37.621250, 34.413429>,  <38.827549, 37.409496, 33.761398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772606, 37.621250, 34.413429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385223, 37.566628, 34.330059>,  <38.152794, 37.533855, 34.280037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385223, 37.566628, 34.330059>,  <38.772606, 37.621250, 34.413429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385223, 37.566628, 34.330059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125194, -0.456556, 0.880842,
		-0.215444, 0.879152, 0.425059,
		-0.968458, -0.136557, -0.208427,
		38.094685, 37.525661, 34.267532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447090, 37.770832, 34.994293>,  <38.772606, 37.621250, 34.413429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447090, 37.770832, 34.994293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171131, 37.556320, 34.799789>,  <38.005558, 37.427612, 34.683086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171131, 37.556320, 34.799789>,  <38.447090, 37.770832, 34.994293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171131, 37.556320, 34.799789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203275, -0.501175, 0.841132,
		-0.694784, 0.679137, 0.236746,
		-0.689894, -0.536280, -0.486260,
		37.964161, 37.395435, 34.653912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900948, 37.736370, 35.460598>,  <38.447090, 37.770832, 34.994293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900948, 37.736370, 35.460598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839748, 37.431286, 35.209244>,  <37.803028, 37.248234, 35.058434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839748, 37.431286, 35.209244>,  <37.900948, 37.736370, 35.460598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839748, 37.431286, 35.209244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335504, -0.558012, 0.758986,
		-0.929532, 0.326946, -0.170520,
		-0.152996, -0.762711, -0.628382,
		37.793850, 37.202473, 35.020729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250053, 37.474030, 35.747681>,  <37.900948, 37.736370, 35.460598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250053, 37.474030, 35.747681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370262, 37.168362, 35.519386>,  <37.442387, 36.984962, 35.382412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370262, 37.168362, 35.519386>,  <37.250053, 37.474030, 35.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370262, 37.168362, 35.519386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352385, -0.645015, 0.678071,
		-0.886290, -0.002660, -0.463123,
		0.300525, -0.764165, -0.570733,
		37.460419, 36.939114, 35.348167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699486, 36.976238, 35.761940>,  <37.250053, 37.474030, 35.747681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699486, 36.976238, 35.761940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025536, 36.772392, 35.651768>,  <37.221165, 36.650085, 35.585663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025536, 36.772392, 35.651768>,  <36.699486, 36.976238, 35.761940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025536, 36.772392, 35.651768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247888, -0.736600, 0.629263,
		-0.523562, -0.444653, -0.726750,
		0.815128, -0.509611, -0.275432,
		37.270073, 36.619511, 35.569138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536480, 36.226307, 35.598545>,  <36.699486, 36.976238, 35.761940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536480, 36.226307, 35.598545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932533, 36.203079, 35.649555>,  <37.170166, 36.189140, 35.680161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932533, 36.203079, 35.649555>,  <36.536480, 36.226307, 35.598545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932533, 36.203079, 35.649555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115407, -0.854127, 0.507099,
		0.079473, -0.516813, -0.852402,
		0.990134, -0.058073, 0.127524,
		37.229572, 36.185658, 35.687813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754910, 35.504921, 35.474392>,  <36.536480, 36.226307, 35.598545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754910, 35.504921, 35.474392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062004, 35.624237, 35.701233>,  <37.246262, 35.695827, 35.837337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062004, 35.624237, 35.701233>,  <36.754910, 35.504921, 35.474392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062004, 35.624237, 35.701233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132032, -0.939690, 0.315517,
		0.627016, -0.167358, -0.760817,
		0.767736, 0.298286, 0.567104,
		37.292324, 35.713722, 35.871365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313713, 35.038017, 35.368706>,  <36.754910, 35.504921, 35.474392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313713, 35.038017, 35.368706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396931, 35.210190, 35.720036>,  <37.446861, 35.313492, 35.930832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396931, 35.210190, 35.720036>,  <37.313713, 35.038017, 35.368706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396931, 35.210190, 35.720036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156380, -0.901056, 0.404529,
		0.965538, 0.053192, -0.254769,
		0.208044, 0.430429, 0.878321,
		37.459343, 35.339317, 35.983532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885883, 34.750759, 35.495346>,  <37.313713, 35.038017, 35.368706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885883, 34.750759, 35.495346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802940, 34.888802, 35.861496>,  <37.753174, 34.971626, 36.081184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802940, 34.888802, 35.861496>,  <37.885883, 34.750759, 35.495346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802940, 34.888802, 35.861496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118041, -0.920045, 0.373609,
		0.971118, 0.185521, 0.150037,
		-0.207353, 0.345108, 0.915372,
		37.740734, 34.992332, 36.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351089, 34.523804, 35.936222>,  <37.885883, 34.750759, 35.495346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351089, 34.523804, 35.936222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074413, 34.599987, 36.214874>,  <37.908409, 34.645699, 36.382065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074413, 34.599987, 36.214874>,  <38.351089, 34.523804, 35.936222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074413, 34.599987, 36.214874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057613, -0.946971, 0.316112,
		0.719896, 0.258786, 0.644034,
		-0.691687, 0.190463, 0.696630,
		37.866909, 34.657127, 36.423862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651775, 34.280216, 36.571095>,  <38.351089, 34.523804, 35.936222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651775, 34.280216, 36.571095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259636, 34.290218, 36.649376>,  <38.024353, 34.296219, 36.696342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259636, 34.290218, 36.649376>,  <38.651775, 34.280216, 36.571095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259636, 34.290218, 36.649376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079661, -0.857315, 0.508592,
		0.180494, 0.514185, 0.838472,
		-0.980345, 0.025004, 0.195700,
		37.965534, 34.297718, 36.708084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506447, 34.176136, 37.328526>,  <38.651775, 34.280216, 36.571095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506447, 34.176136, 37.328526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173325, 34.055992, 37.142532>,  <37.973450, 33.983906, 37.030937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173325, 34.055992, 37.142532>,  <38.506447, 34.176136, 37.328526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173325, 34.055992, 37.142532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024164, -0.858915, 0.511548,
		-0.553033, 0.414786, 0.722570,
		-0.832809, -0.300363, -0.464985,
		37.923481, 33.965881, 37.003036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046436, 34.671078, 37.539532>,  <38.506447, 34.176136, 37.328526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046436, 34.671078, 37.539532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197685, 34.514244, 37.874981>,  <39.288433, 34.420143, 38.076252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197685, 34.514244, 37.874981>,  <39.046436, 34.671078, 37.539532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197685, 34.514244, 37.874981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731447, -0.681809, 0.011029,
		0.567460, -0.617582, -0.544594,
		0.378120, -0.392083, 0.838627,
		39.311123, 34.396618, 38.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187679, 33.914310, 37.399612>,  <39.046436, 34.671078, 37.539532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187679, 33.914310, 37.399612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 34.041374, 37.770924>,  <39.063931, 34.117615, 37.993710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 34.041374, 37.770924>,  <39.187679, 33.914310, 37.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110336, 34.041374, 37.770924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818996, -0.573229, 0.025566,
		0.540238, -0.755314, 0.371005,
		-0.193360, 0.317663, 0.928279,
		39.052330, 34.136673, 38.049408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912739, 33.285366, 37.863167>,  <39.187679, 33.914310, 37.399612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912739, 33.285366, 37.863167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762905, 33.618984, 38.025181>,  <38.673004, 33.819157, 38.122387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762905, 33.618984, 38.025181>,  <38.912739, 33.285366, 37.863167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762905, 33.618984, 38.025181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867694, -0.469298, 0.163910,
		0.326789, -0.290044, 0.899491,
		-0.374588, 0.834046, 0.405031,
		38.650528, 33.869198, 38.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632725, 32.949333, 38.270454>,  <38.912739, 33.285366, 37.863167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632725, 32.949333, 38.270454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475090, 33.312698, 38.326267>,  <38.380508, 33.530720, 38.359756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475090, 33.312698, 38.326267>,  <38.632725, 32.949333, 38.270454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475090, 33.312698, 38.326267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872594, -0.417493, 0.253534,
		0.288569, -0.021842, 0.957210,
		-0.394091, 0.908417, 0.139535,
		38.356861, 33.585224, 38.368126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292252, 32.923820, 38.939793>,  <38.632725, 32.949333, 38.270454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292252, 32.923820, 38.939793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155643, 33.240097, 38.736553>,  <38.073677, 33.429863, 38.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155643, 33.240097, 38.736553>,  <38.292252, 32.923820, 38.939793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155643, 33.240097, 38.736553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935343, -0.232911, 0.266245,
		0.092176, 0.566177, 0.819113,
		-0.341522, 0.790693, -0.508101,
		38.053188, 33.477306, 38.584122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866833, 33.126022, 39.361206>,  <38.292252, 32.923820, 38.939793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866833, 33.126022, 39.361206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766434, 33.313961, 39.022682>,  <37.706192, 33.426723, 38.819569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766434, 33.313961, 39.022682>,  <37.866833, 33.126022, 39.361206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766434, 33.313961, 39.022682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967629, -0.145562, 0.206170,
		-0.026322, 0.870663, 0.491176,
		-0.251001, 0.469849, -0.846310,
		37.691132, 33.454914, 38.768791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508965, 33.721165, 39.411755>,  <37.866833, 33.126022, 39.361206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508965, 33.721165, 39.411755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405910, 33.522072, 39.080482>,  <37.344078, 33.402615, 38.881718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405910, 33.522072, 39.080482>,  <37.508965, 33.721165, 39.411755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405910, 33.522072, 39.080482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953417, -0.008240, 0.301543,
		-0.156913, 0.867291, -0.472424,
		-0.257633, -0.497733, -0.828183,
		37.328621, 33.372753, 38.832027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834724, 33.857437, 39.414192>,  <37.508965, 33.721165, 39.411755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834724, 33.857437, 39.414192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825291, 33.612808, 39.097855>,  <36.819630, 33.466030, 38.908054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825291, 33.612808, 39.097855>,  <36.834724, 33.857437, 39.414192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825291, 33.612808, 39.097855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970872, -0.174658, 0.164014,
		-0.238433, 0.771672, -0.589637,
		-0.023580, -0.611569, -0.790839,
		36.818218, 33.429337, 38.860603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193459, 34.018276, 39.200684>,  <36.834724, 33.857437, 39.414192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193459, 34.018276, 39.200684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284634, 33.703102, 38.971878>,  <36.339336, 33.513996, 38.834595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284634, 33.703102, 38.971878>,  <36.193459, 34.018276, 39.200684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284634, 33.703102, 38.971878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972120, -0.217363, -0.087955,
		-0.055033, 0.576119, -0.815511,
		0.227934, -0.787935, -0.572019,
		36.353012, 33.466721, 38.800274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637451, 34.006294, 38.727749>,  <36.193459, 34.018276, 39.200684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637451, 34.006294, 38.727749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793068, 33.639130, 38.758938>,  <35.886440, 33.418831, 38.777649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793068, 33.639130, 38.758938>,  <35.637451, 34.006294, 38.727749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793068, 33.639130, 38.758938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910456, -0.396020, -0.119323,
		0.140406, -0.024567, -0.989789,
		0.389044, -0.917913, 0.077971,
		35.909782, 33.363754, 38.782330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363716, 33.688782, 38.160713>,  <35.637451, 34.006294, 38.727749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363716, 33.688782, 38.160713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450684, 33.408237, 38.432247>,  <35.502865, 33.239910, 38.595169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450684, 33.408237, 38.432247>,  <35.363716, 33.688782, 38.160713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450684, 33.408237, 38.432247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910897, -0.395680, -0.117065,
		0.350708, -0.592900, -0.724895,
		0.217418, -0.701361, 0.678839,
		35.515907, 33.197830, 38.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012035, 33.160789, 37.859570>,  <35.363716, 33.688782, 38.160713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012035, 33.160789, 37.859570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094734, 33.026539, 38.227180>,  <35.144352, 32.945988, 38.447746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094734, 33.026539, 38.227180>,  <35.012035, 33.160789, 37.859570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094734, 33.026539, 38.227180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789559, -0.611957, -0.045868,
		0.577800, -0.716143, -0.391518,
		0.206744, -0.335629, 0.919026,
		35.156757, 32.925850, 38.502888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939857, 32.328747, 37.865604>,  <35.012035, 33.160789, 37.859570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939857, 32.328747, 37.865604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929474, 32.415501, 38.255947>,  <34.923244, 32.467552, 38.490150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929474, 32.415501, 38.255947>,  <34.939857, 32.328747, 37.865604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929474, 32.415501, 38.255947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777258, -0.618259, 0.116730,
		0.628646, -0.755459, 0.184622,
		-0.025960, 0.216881, 0.975853,
		34.921684, 32.480564, 38.548702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811558, 31.693142, 38.288410>,  <34.939857, 32.328747, 37.865604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811558, 31.693142, 38.288410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707333, 32.002491, 38.519581>,  <34.644798, 32.188099, 38.658283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707333, 32.002491, 38.519581>,  <34.811558, 31.693142, 38.288410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707333, 32.002491, 38.519581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833113, -0.482609, 0.270205,
		0.487883, -0.411076, 0.770057,
		-0.260562, 0.773373, 0.577929,
		34.629166, 32.234501, 38.692959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657265, 31.405493, 38.869049>,  <34.811558, 31.693142, 38.288410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657265, 31.405493, 38.869049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456741, 31.750463, 38.841011>,  <34.336426, 31.957445, 38.824188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456741, 31.750463, 38.841011>,  <34.657265, 31.405493, 38.869049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456741, 31.750463, 38.841011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848688, -0.474303, 0.234020,
		0.168578, 0.176806, 0.969702,
		-0.501309, 0.862425, -0.070096,
		34.306347, 32.009190, 38.819981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064182, 31.336081, 39.335026>,  <34.657265, 31.405493, 38.869049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064182, 31.336081, 39.335026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005051, 31.638081, 39.079487>,  <33.969570, 31.819281, 38.926163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005051, 31.638081, 39.079487>,  <34.064182, 31.336081, 39.335026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005051, 31.638081, 39.079487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967331, -0.244889, -0.065572,
		-0.205953, 0.608282, 0.766536,
		-0.147830, 0.754998, -0.638846,
		33.960701, 31.864580, 38.887833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402451, 31.780071, 39.607937>,  <34.064182, 31.336081, 39.335026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402451, 31.780071, 39.607937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449699, 31.837408, 39.214897>,  <33.478046, 31.871811, 38.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449699, 31.837408, 39.214897>,  <33.402451, 31.780071, 39.607937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449699, 31.837408, 39.214897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984465, 0.146361, -0.096993,
		0.129911, 0.978791, 0.158403,
		0.118120, 0.143341, -0.982599,
		33.485134, 31.880411, 38.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972160, 32.267666, 39.369534>,  <33.402451, 31.780071, 39.607937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972160, 32.267666, 39.369534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021862, 32.077179, 39.021332>,  <33.051682, 31.962887, 38.812412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021862, 32.077179, 39.021332>,  <32.972160, 32.267666, 39.369534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021862, 32.077179, 39.021332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989382, -0.126125, -0.072227,
		-0.075396, 0.870235, -0.486832,
		0.124256, -0.476218, -0.870504,
		33.059139, 31.934313, 38.760181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364861, 32.315495, 39.164158>,  <32.972160, 32.267666, 39.369534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364861, 32.315495, 39.164158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528400, 32.048386, 38.915348>,  <32.626526, 31.888119, 38.766064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528400, 32.048386, 38.915348>,  <32.364861, 32.315495, 39.164158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528400, 32.048386, 38.915348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910280, -0.249835, -0.330111,
		0.065037, 0.701183, -0.710009,
		0.408853, -0.667776, -0.622024,
		32.651058, 31.848053, 38.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021950, 32.468922, 38.638336>,  <32.364861, 32.315495, 39.164158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021950, 32.468922, 38.638336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139317, 32.087471, 38.611511>,  <32.209736, 31.858601, 38.595417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139317, 32.087471, 38.611511>,  <32.021950, 32.468922, 38.638336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139317, 32.087471, 38.611511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944055, -0.277998, -0.177422,
		0.150552, 0.115367, -0.981848,
		0.293420, -0.953629, -0.067059,
		32.227345, 31.801382, 38.591393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607630, 32.165474, 38.190182>,  <32.021950, 32.468922, 38.638336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607630, 32.165474, 38.190182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734562, 31.857550, 38.411697>,  <31.810720, 31.672794, 38.544609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734562, 31.857550, 38.411697>,  <31.607630, 32.165474, 38.190182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734562, 31.857550, 38.411697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930037, -0.366738, 0.023129,
		0.185292, -0.522388, -0.832333,
		0.317331, -0.769815, 0.553793,
		31.829762, 31.626606, 38.577835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302101, 31.441648, 38.000687>,  <31.607630, 32.165474, 38.190182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302101, 31.441648, 38.000687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406437, 31.487524, 38.384106>,  <31.469038, 31.515049, 38.614159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406437, 31.487524, 38.384106>,  <31.302101, 31.441648, 38.000687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406437, 31.487524, 38.384106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897741, -0.336308, 0.284530,
		0.354999, -0.934743, 0.015238,
		0.260838, 0.114687, 0.958546,
		31.484688, 31.521931, 38.671669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522392, 31.497311, 38.139473>,  <31.302101, 31.441648, 38.000687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522392, 31.497311, 38.139473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528357, 31.192074, 38.397923>,  <30.531935, 31.008932, 38.552990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528357, 31.192074, 38.397923>,  <30.522392, 31.497311, 38.139473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528357, 31.192074, 38.397923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987487, -0.090224, -0.129343,
		0.156996, 0.639964, 0.752196,
		0.014909, -0.763090, 0.646120,
		30.532829, 30.963146, 38.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999010, 31.642902, 38.769279>,  <30.522392, 31.497311, 38.139473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999010, 31.642902, 38.769279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983835, 31.246061, 38.721455>,  <30.974731, 31.007957, 38.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983835, 31.246061, 38.721455>,  <30.999010, 31.642902, 38.769279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983835, 31.246061, 38.721455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994091, -0.025290, -0.105562,
		0.101705, -0.122858, 0.987199,
		-0.037935, -0.992102, -0.119560,
		30.972454, 30.948431, 38.685585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353392, 31.137276, 39.206055>,  <30.999010, 31.642902, 38.769279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353392, 31.137276, 39.206055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330212, 30.954126, 38.851204>,  <31.316303, 30.844236, 38.638294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330212, 30.954126, 38.851204>,  <31.353392, 31.137276, 39.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330212, 30.954126, 38.851204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997267, 0.014257, -0.072501,
		0.045844, -0.888902, 0.455798,
		-0.057949, -0.457876, -0.887126,
		31.312826, 30.816763, 38.585068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568558, 30.427198, 39.189327>,  <31.353392, 31.137276, 39.206055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568558, 30.427198, 39.189327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628918, 30.662891, 38.871826>,  <31.665134, 30.804306, 38.681328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628918, 30.662891, 38.871826>,  <31.568558, 30.427198, 39.189327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628918, 30.662891, 38.871826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977367, 0.031500, 0.209192,
		0.148265, -0.807351, -0.571141,
		0.150900, 0.589230, -0.793749,
		31.674189, 30.839661, 38.633701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272617, 30.753864, 39.115303>,  <31.568558, 30.427198, 39.189327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272617, 30.753864, 39.115303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148350, 30.948294, 38.788570>,  <32.073788, 31.064951, 38.592529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148350, 30.948294, 38.788570>,  <32.272617, 30.753864, 39.115303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148350, 30.948294, 38.788570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925658, 0.349964, -0.143811,
		0.215959, -0.800787, -0.558661,
		-0.310673, 0.486072, -0.816833,
		32.055149, 31.094114, 38.543522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636024, 30.506071, 38.567455>,  <32.272617, 30.753864, 39.115303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636024, 30.506071, 38.567455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523773, 30.888758, 38.536621>,  <32.456425, 31.118370, 38.518120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523773, 30.888758, 38.536621>,  <32.636024, 30.506071, 38.567455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523773, 30.888758, 38.536621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957369, 0.273273, -0.093630,
		-0.068511, -0.100079, -0.992618,
		-0.280626, 0.956716, -0.077090,
		32.439587, 31.175772, 38.513493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961624, 30.884804, 37.959354>,  <32.636024, 30.506071, 38.567455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961624, 30.884804, 37.959354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854546, 31.188520, 38.196609>,  <32.790298, 31.370750, 38.338963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854546, 31.188520, 38.196609>,  <32.961624, 30.884804, 37.959354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854546, 31.188520, 38.196609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847438, 0.478472, -0.230031,
		-0.458461, 0.441070, -0.771538,
		-0.267699, 0.759291, 0.593140,
		32.774235, 31.416307, 38.374550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141747, 31.466175, 37.540436>,  <32.961624, 30.884804, 37.959354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141747, 31.466175, 37.540436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144253, 31.566633, 37.927608>,  <33.145756, 31.626909, 38.159912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144253, 31.566633, 37.927608>,  <33.141747, 31.466175, 37.540436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144253, 31.566633, 37.927608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905461, 0.409366, -0.112076,
		-0.424384, 0.877123, -0.224841,
		0.006262, 0.251148, 0.967928,
		33.146130, 31.641977, 38.217987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615135, 31.916466, 37.599251>,  <33.141747, 31.466175, 37.540436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615135, 31.916466, 37.599251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568245, 31.866121, 37.993290>,  <33.540112, 31.835915, 38.229713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568245, 31.866121, 37.993290>,  <33.615135, 31.916466, 37.599251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568245, 31.866121, 37.993290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882647, 0.441445, 0.161432,
		-0.455185, 0.888417, 0.059344,
		-0.117221, -0.125861, 0.985098,
		33.533077, 31.828363, 38.288818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731285, 32.623802, 37.852833>,  <33.615135, 31.916466, 37.599251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731285, 32.623802, 37.852833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813374, 32.367287, 38.148571>,  <33.862625, 32.213379, 38.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813374, 32.367287, 38.148571>,  <33.731285, 32.623802, 37.852833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813374, 32.367287, 38.148571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888089, 0.439493, 0.134698,
		-0.411318, 0.628964, 0.659713,
		0.205218, -0.641288, 0.739348,
		33.874939, 32.174900, 38.370377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526619, 32.989235, 38.404099>,  <33.731285, 32.623802, 37.852833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526619, 32.989235, 38.404099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626820, 32.685829, 38.644733>,  <33.686939, 32.503784, 38.789116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626820, 32.685829, 38.644733>,  <33.526619, 32.989235, 38.404099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626820, 32.685829, 38.644733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955294, 0.294469, -0.026500,
		-0.157048, 0.581331, 0.798367,
		0.250499, -0.758513, 0.601588,
		33.701969, 32.458275, 38.825211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886021, 33.256996, 38.968552>,  <33.526619, 32.989235, 38.404099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886021, 33.256996, 38.968552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979557, 32.869457, 38.935932>,  <34.035679, 32.636932, 38.916363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979557, 32.869457, 38.935932>,  <33.886021, 33.256996, 38.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979557, 32.869457, 38.935932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965829, 0.221825, 0.134043,
		-0.111778, -0.110104, 0.987615,
		0.233837, -0.968850, -0.081546,
		34.049709, 32.578804, 38.911469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279903, 33.087505, 39.577309>,  <33.886021, 33.256996, 38.968552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279903, 33.087505, 39.577309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391346, 32.828571, 39.293526>,  <34.458210, 32.673210, 39.123257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391346, 32.828571, 39.293526>,  <34.279903, 33.087505, 39.577309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391346, 32.828571, 39.293526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948485, 0.301483, 0.097385,
		0.150850, -0.700046, 0.697983,
		0.278604, -0.647336, -0.709462,
		34.474926, 32.634369, 39.080688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880314, 33.013680, 39.819931>,  <34.279903, 33.087505, 39.577309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880314, 33.013680, 39.819931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888149, 32.887310, 39.440498>,  <34.892849, 32.811489, 39.212837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888149, 32.887310, 39.440498>,  <34.880314, 33.013680, 39.819931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888149, 32.887310, 39.440498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937870, 0.334552, -0.092052,
		0.346432, -0.887846, 0.302845,
		0.019589, -0.315919, -0.948584,
		34.894028, 32.792534, 39.155922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433193, 32.625313, 39.780167>,  <34.880314, 33.013680, 39.819931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433193, 32.625313, 39.780167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351295, 32.702076, 39.396240>,  <35.302158, 32.748135, 39.165882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351295, 32.702076, 39.396240>,  <35.433193, 32.625313, 39.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351295, 32.702076, 39.396240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956486, 0.247486, -0.154551,
		0.207883, -0.949695, -0.234230,
		-0.204745, 0.191909, -0.959818,
		35.289871, 32.759647, 39.108295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002773, 32.330868, 39.432476>,  <35.433193, 32.625313, 39.780167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002773, 32.330868, 39.432476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865582, 32.575512, 39.147297>,  <35.783264, 32.722298, 38.976189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865582, 32.575512, 39.147297>,  <36.002773, 32.330868, 39.432476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865582, 32.575512, 39.147297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925328, 0.089370, -0.368485,
		-0.161652, -0.786097, -0.596590,
		-0.342983, 0.611608, -0.712951,
		35.762688, 32.758995, 38.933411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265560, 32.195999, 38.875137>,  <36.002773, 32.330868, 39.432476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265560, 32.195999, 38.875137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185101, 32.581642, 38.805820>,  <36.136826, 32.813030, 38.764229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185101, 32.581642, 38.805820>,  <36.265560, 32.195999, 38.875137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185101, 32.581642, 38.805820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929954, 0.132369, -0.343022,
		-0.307773, -0.230153, -0.923204,
		-0.201151, 0.964110, -0.173292,
		36.124756, 32.870876, 38.753834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646168, 32.307262, 38.325233>,  <36.265560, 32.195999, 38.875137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646168, 32.307262, 38.325233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555939, 32.669994, 38.467659>,  <36.501801, 32.887634, 38.553116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555939, 32.669994, 38.467659>,  <36.646168, 32.307262, 38.325233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555939, 32.669994, 38.467659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914846, 0.322819, -0.242580,
		-0.334922, 0.271023, -0.902426,
		-0.225576, 0.906826, 0.356064,
		36.488266, 32.942043, 38.574478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890728, 32.639835, 37.843822>,  <36.646168, 32.307262, 38.325233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890728, 32.639835, 37.843822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867065, 32.875484, 38.166172>,  <36.852867, 33.016872, 38.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867065, 32.875484, 38.166172>,  <36.890728, 32.639835, 37.843822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867065, 32.875484, 38.166172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904743, 0.372778, -0.206098,
		-0.421829, 0.716920, -0.555055,
		-0.059156, 0.589120, 0.805877,
		36.849319, 33.052219, 38.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123829, 33.230419, 37.571590>,  <36.890728, 32.639835, 37.843822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123829, 33.230419, 37.571590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152798, 33.288460, 37.966297>,  <37.170181, 33.323284, 38.203121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152798, 33.288460, 37.966297>,  <37.123829, 33.230419, 37.571590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152798, 33.288460, 37.966297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915639, 0.382574, -0.123462,
		-0.395424, 0.912460, -0.105153,
		0.072426, 0.145102, 0.986762,
		37.174526, 33.331989, 38.262325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364113, 34.072186, 37.651371>,  <37.123829, 33.230419, 37.571590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364113, 34.072186, 37.651371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439507, 33.866703, 37.986172>,  <37.484741, 33.743412, 38.187054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439507, 33.866703, 37.986172>,  <37.364113, 34.072186, 37.651371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439507, 33.866703, 37.986172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856944, 0.502339, 0.115334,
		-0.479709, 0.695530, 0.534900,
		0.188483, -0.513706, 0.837007,
		37.496052, 33.712589, 38.237274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749672, 34.587372, 38.039703>,  <37.364113, 34.072186, 37.651371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749672, 34.587372, 38.039703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812996, 34.232864, 38.213810>,  <37.850990, 34.020161, 38.318275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812996, 34.232864, 38.213810>,  <37.749672, 34.587372, 38.039703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812996, 34.232864, 38.213810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883668, 0.323849, 0.338012,
		-0.440532, 0.331125, 0.834438,
		0.158308, -0.886272, 0.435271,
		37.860489, 33.966984, 38.344391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699162, 34.651344, 38.819271>,  <37.749672, 34.587372, 38.039703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699162, 34.651344, 38.819271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939926, 34.385883, 38.641609>,  <38.084385, 34.226608, 38.535011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939926, 34.385883, 38.641609>,  <37.699162, 34.651344, 38.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939926, 34.385883, 38.641609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796370, 0.540030, 0.272326,
		0.059128, -0.517627, 0.853561,
		0.601912, -0.663649, -0.444154,
		38.120499, 34.186790, 38.508362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312851, 34.853165, 38.910221>,  <37.699162, 34.651344, 38.819271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312851, 34.853165, 38.910221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434406, 34.528828, 38.710148>,  <38.507339, 34.334225, 38.590103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434406, 34.528828, 38.710148>,  <38.312851, 34.853165, 38.910221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434406, 34.528828, 38.710148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945667, 0.320434, 0.055091,
		0.115606, -0.489750, 0.864164,
		0.303889, -0.810843, -0.500185,
		38.525574, 34.285576, 38.560093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820213, 34.467453, 39.332211>,  <38.312851, 34.853165, 38.910221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820213, 34.467453, 39.332211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892059, 34.394630, 38.945515>,  <38.935169, 34.350937, 38.713497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892059, 34.394630, 38.945515>,  <38.820213, 34.467453, 39.332211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892059, 34.394630, 38.945515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925992, 0.363028, 0.103678,
		0.332078, -0.913819, 0.233792,
		0.179617, -0.182061, -0.966743,
		38.945946, 34.340012, 38.655491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942440, 35.232647, 39.085121>,  <38.820213, 34.467453, 39.332211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942440, 35.232647, 39.085121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950275, 35.607491, 38.945728>,  <38.954979, 35.832397, 38.862091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950275, 35.607491, 38.945728>,  <38.942440, 35.232647, 39.085121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950275, 35.607491, 38.945728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632199, 0.258415, 0.730442,
		0.774558, -0.234622, -0.587377,
		0.019591, 0.937109, -0.348486,
		38.956154, 35.888622, 38.841183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783707, 35.243938, 39.098358>,  <38.942440, 35.232647, 39.085121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783707, 35.243938, 39.098358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921169, 34.969910, 39.355286>,  <40.003647, 34.805492, 39.509441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921169, 34.969910, 39.355286>,  <39.783707, 35.243938, 39.098358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921169, 34.969910, 39.355286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831256, 0.096324, 0.547481,
		-0.436935, -0.722077, -0.536369,
		0.343658, -0.685073, 0.642318,
		40.024265, 34.764389, 39.547981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499123, 35.036434, 38.972679>,  <39.783707, 35.243938, 39.098358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499123, 35.036434, 38.972679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600914, 35.384506, 39.141453>,  <40.661987, 35.593349, 39.242718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600914, 35.384506, 39.141453>,  <40.499123, 35.036434, 38.972679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600914, 35.384506, 39.141453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495102, 0.257559, -0.829782,
		-0.830732, 0.420062, -0.365284,
		0.254478, 0.870179, 0.421936,
		40.677258, 35.645561, 39.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630795, 35.582848, 38.443356>,  <40.499123, 35.036434, 38.972679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630795, 35.582848, 38.443356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833626, 35.704689, 38.765865>,  <40.955326, 35.777794, 38.959373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833626, 35.704689, 38.765865>,  <40.630795, 35.582848, 38.443356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833626, 35.704689, 38.765865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707879, 0.386495, -0.591210,
		-0.491705, 0.870540, -0.019636,
		0.507083, 0.304601, 0.806279,
		40.985752, 35.796070, 39.007748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714348, 36.337940, 38.439953>,  <40.630795, 35.582848, 38.443356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714348, 36.337940, 38.439953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011333, 36.161655, 38.641754>,  <41.189526, 36.055885, 38.762833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011333, 36.161655, 38.641754>,  <40.714348, 36.337940, 38.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011333, 36.161655, 38.641754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669859, 0.495332, -0.553114,
		-0.006130, 0.748611, 0.662981,
		0.742463, -0.440714, 0.504500,
		41.234074, 36.029442, 38.793106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362080, 36.855705, 38.564938>,  <40.714348, 36.337940, 38.439953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362080, 36.855705, 38.564938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501812, 36.481010, 38.556091>,  <41.585651, 36.256191, 38.550781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501812, 36.481010, 38.556091>,  <41.362080, 36.855705, 38.564938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501812, 36.481010, 38.556091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588843, 0.237831, -0.772464,
		0.728858, 0.256818, 0.634674,
		0.349328, -0.936739, -0.022119,
		41.606609, 36.199989, 38.549454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097969, 37.000313, 38.591763>,  <41.362080, 36.855705, 38.564938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097969, 37.000313, 38.591763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018860, 36.649029, 38.417576>,  <41.971394, 36.438259, 38.313065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018860, 36.649029, 38.417576>,  <42.097969, 37.000313, 38.591763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018860, 36.649029, 38.417576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618867, 0.232652, -0.750251,
		0.760190, -0.417879, 0.497482,
		-0.197774, -0.878208, -0.435472,
		41.959526, 36.385567, 38.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770489, 36.793755, 38.531078>,  <42.097969, 37.000313, 38.591763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770489, 36.793755, 38.531078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489471, 36.647266, 38.287010>,  <42.320862, 36.559372, 38.140568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489471, 36.647266, 38.287010>,  <42.770489, 36.793755, 38.531078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489471, 36.647266, 38.287010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516137, 0.328075, -0.791182,
		0.489931, -0.870774, -0.041467,
		-0.702545, -0.366222, -0.610173,
		42.278709, 36.537399, 38.103958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940018, 36.148251, 38.010883>,  <42.770489, 36.793755, 38.531078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940018, 36.148251, 38.010883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698532, 36.392361, 37.805710>,  <42.553642, 36.538826, 37.682606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698532, 36.392361, 37.805710>,  <42.940018, 36.148251, 38.010883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698532, 36.392361, 37.805710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660661, 0.022902, -0.750335,
		-0.446163, -0.791859, -0.417011,
		-0.603710, 0.610275, -0.512932,
		42.517418, 36.575443, 37.651829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803585, 35.836552, 37.296780>,  <42.940018, 36.148251, 38.010883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803585, 35.836552, 37.296780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849113, 36.233421, 37.317299>,  <42.876431, 36.471542, 37.329609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849113, 36.233421, 37.317299>,  <42.803585, 35.836552, 37.296780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849113, 36.233421, 37.317299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669255, -0.038408, -0.742040,
		-0.734264, 0.118790, -0.668390,
		0.113818, 0.992176, 0.051300,
		42.883259, 36.531075, 37.332687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892170, 36.154770, 36.601501>,  <42.803585, 35.836552, 37.296780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892170, 36.154770, 36.601501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077740, 36.384502, 36.871288>,  <43.189083, 36.522343, 37.033161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077740, 36.384502, 36.871288>,  <42.892170, 36.154770, 36.601501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077740, 36.384502, 36.871288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807171, 0.039669, -0.588984,
		-0.365030, 0.817658, -0.445184,
		0.463927, 0.574336, 0.674470,
		43.216919, 36.556805, 37.073627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117836, 36.720276, 36.234127>,  <42.892170, 36.154770, 36.601501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117836, 36.720276, 36.234127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362873, 36.736515, 36.549870>,  <43.509895, 36.746258, 36.739315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362873, 36.736515, 36.549870>,  <43.117836, 36.720276, 36.234127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362873, 36.736515, 36.549870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790098, -0.003824, -0.612969,
		-0.021867, 0.999168, -0.034419,
		0.612590, 0.040599, 0.789357,
		43.546650, 36.748695, 36.786678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714142, 36.389488, 36.141891>,  <43.117836, 36.720276, 36.234127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714142, 36.389488, 36.141891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964386, 36.234001, 35.871334>,  <44.114532, 36.140709, 35.709000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964386, 36.234001, 35.871334>,  <43.714142, 36.389488, 36.141891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964386, 36.234001, 35.871334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185208, -0.768234, 0.612793,
		-0.757825, -0.508649, -0.408630,
		0.625620, -0.388708, -0.676392,
		44.152069, 36.117386, 35.668415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558010, 35.651142, 36.056305>,  <43.714142, 36.389488, 36.141891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558010, 35.651142, 36.056305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937042, 35.683037, 35.932545>,  <44.164463, 35.702175, 35.858288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937042, 35.683037, 35.932545>,  <43.558010, 35.651142, 36.056305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937042, 35.683037, 35.932545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253737, -0.776288, 0.577056,
		-0.194168, -0.625315, -0.755831,
		0.947584, 0.079737, -0.309396,
		44.221317, 35.706959, 35.839725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879547, 34.950760, 36.110703>,  <43.558010, 35.651142, 36.056305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879547, 34.950760, 36.110703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193100, 35.199112, 36.108177>,  <44.381233, 35.348122, 36.106663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193100, 35.199112, 36.108177>,  <43.879547, 34.950760, 36.110703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193100, 35.199112, 36.108177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469249, -0.585725, 0.660857,
		0.406613, -0.520996, -0.750485,
		0.783882, 0.620878, -0.006314,
		44.428265, 35.385376, 36.106281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589783, 34.652374, 35.845970>,  <43.879547, 34.950760, 36.110703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589783, 34.652374, 35.845970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632561, 34.942894, 36.117573>,  <44.658226, 35.117207, 36.280533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632561, 34.942894, 36.117573>,  <44.589783, 34.652374, 35.845970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632561, 34.942894, 36.117573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497420, -0.630400, 0.595961,
		0.860892, 0.274016, -0.428695,
		0.106946, 0.726300, 0.679008,
		44.664646, 35.160786, 36.321274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277008, 34.665791, 36.129875>,  <44.589783, 34.652374, 35.845970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277008, 34.665791, 36.129875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048283, 34.847134, 36.403370>,  <44.911049, 34.955940, 36.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048283, 34.847134, 36.403370>,  <45.277008, 34.665791, 36.129875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048283, 34.847134, 36.403370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460767, -0.512089, 0.724886,
		0.678765, 0.729544, 0.083929,
		-0.571815, 0.453355, 0.683737,
		44.876740, 34.983139, 36.608490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948013, 34.661385, 35.768009>,  <45.277008, 34.665791, 36.129875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948013, 34.661385, 35.768009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311104, 34.494217, 35.782829>,  <46.528957, 34.393917, 35.791721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311104, 34.494217, 35.782829>,  <45.948013, 34.661385, 35.768009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311104, 34.494217, 35.782829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260642, 0.492510, -0.830361,
		0.328776, 0.763399, 0.555993,
		0.907729, -0.417917, 0.037049,
		46.583424, 34.368843, 35.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470230, 35.200859, 35.608040>,  <45.948013, 34.661385, 35.768009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470230, 35.200859, 35.608040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633224, 34.839138, 35.557144>,  <46.731022, 34.622105, 35.526608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633224, 34.839138, 35.557144>,  <46.470230, 35.200859, 35.608040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633224, 34.839138, 35.557144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524157, 0.345701, -0.778300,
		0.747806, 0.250453, 0.614865,
		0.407487, -0.904303, -0.127241,
		46.755470, 34.567848, 35.518970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203583, 35.334644, 35.594872>,  <46.470230, 35.200859, 35.608040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203583, 35.334644, 35.594872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162315, 34.971275, 35.432823>,  <47.137554, 34.753254, 35.335594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162315, 34.971275, 35.432823>,  <47.203583, 35.334644, 35.594872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162315, 34.971275, 35.432823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588425, 0.272639, -0.761200,
		0.801943, -0.316920, 0.506409,
		-0.103173, -0.908422, -0.405124,
		47.131363, 34.698750, 35.311287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.883053, 35.028404, 35.442257>,  <47.203583, 35.334644, 35.594872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.883053, 35.028404, 35.442257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.615559, 34.879562, 35.184780>,  <47.455063, 34.790257, 35.030296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.615559, 34.879562, 35.184780>,  <47.883053, 35.028404, 35.442257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.615559, 34.879562, 35.184780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597937, 0.245391, -0.763056,
		0.441890, -0.895167, 0.058392,
		-0.668734, -0.372102, -0.643689,
		47.414940, 34.767933, 34.991673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.906654, 36.847752, 25.748194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515896, 36.932835, 25.739902>,  <36.281441, 36.983883, 25.734928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515896, 36.932835, 25.739902>,  <36.906654, 36.847752, 25.748194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515896, 36.932835, 25.739902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124489, -0.487522, 0.864190,
		0.173713, 0.846805, 0.502738,
		-0.976896, 0.212706, -0.020730,
		36.222828, 36.996647, 25.733685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741367, 37.213512, 26.402983>,  <36.906654, 36.847752, 25.748194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741367, 37.213512, 26.402983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404175, 37.050030, 26.263077>,  <36.201859, 36.951939, 26.179132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404175, 37.050030, 26.263077>,  <36.741367, 37.213512, 26.402983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404175, 37.050030, 26.263077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111630, -0.503131, 0.856970,
		-0.526231, 0.761455, 0.378506,
		-0.842983, -0.408711, -0.349765,
		36.151279, 36.927418, 26.158148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196766, 37.361832, 26.991060>,  <36.741367, 37.213512, 26.402983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196766, 37.361832, 26.991060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042400, 37.063004, 26.774559>,  <35.949780, 36.883709, 26.644657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042400, 37.063004, 26.774559>,  <36.196766, 37.361832, 26.991060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042400, 37.063004, 26.774559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229376, -0.490577, 0.840667,
		-0.893563, 0.448579, 0.017962,
		-0.385917, -0.747069, -0.541255,
		35.926624, 36.838882, 26.612183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488705, 37.334606, 27.220316>,  <36.196766, 37.361832, 26.991060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488705, 37.334606, 27.220316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613514, 36.987736, 27.065060>,  <35.688400, 36.779613, 26.971907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613514, 36.987736, 27.065060>,  <35.488705, 37.334606, 27.220316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613514, 36.987736, 27.065060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411920, -0.491618, 0.767225,
		-0.856134, -0.079506, -0.510600,
		0.312019, -0.867174, -0.388141,
		35.707119, 36.727585, 26.948618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877800, 36.925838, 27.304142>,  <35.488705, 37.334606, 27.220316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877800, 36.925838, 27.304142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166557, 36.667168, 27.205601>,  <35.339809, 36.511967, 27.146475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166557, 36.667168, 27.205601>,  <34.877800, 36.925838, 27.304142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166557, 36.667168, 27.205601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344547, -0.644612, 0.682468,
		-0.600135, -0.407787, -0.688148,
		0.721890, -0.646673, -0.246353,
		35.383125, 36.473167, 27.131695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561871, 36.343277, 27.194118>,  <34.877800, 36.925838, 27.304142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561871, 36.343277, 27.194118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933353, 36.234375, 27.294828>,  <35.156242, 36.169033, 27.355255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933353, 36.234375, 27.294828>,  <34.561871, 36.343277, 27.194118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933353, 36.234375, 27.294828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367505, -0.585071, 0.722933,
		-0.049512, -0.763919, -0.643410,
		0.928703, -0.272250, 0.251777,
		35.211964, 36.152699, 27.370361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527107, 35.682404, 27.385958>,  <34.561871, 36.343277, 27.194118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527107, 35.682404, 27.385958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886616, 35.762203, 27.542118>,  <35.102322, 35.810081, 27.635815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886616, 35.762203, 27.542118>,  <34.527107, 35.682404, 27.385958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886616, 35.762203, 27.542118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236391, -0.529426, 0.814756,
		0.369232, -0.824565, -0.428672,
		0.898770, 0.199500, 0.390401,
		35.156246, 35.822052, 27.659239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931393, 35.044193, 27.450525>,  <34.527107, 35.682404, 27.385958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931393, 35.044193, 27.450525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100521, 35.300289, 27.707062>,  <35.201996, 35.453945, 27.860985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100521, 35.300289, 27.707062>,  <34.931393, 35.044193, 27.450525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100521, 35.300289, 27.707062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156616, -0.645441, 0.747581,
		0.892578, -0.416536, -0.172633,
		0.422819, 0.640238, 0.641342,
		35.227367, 35.492359, 27.899464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337616, 34.579788, 27.860674>,  <34.931393, 35.044193, 27.450525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337616, 34.579788, 27.860674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301792, 34.914890, 28.076134>,  <35.280296, 35.115952, 28.205410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301792, 34.914890, 28.076134>,  <35.337616, 34.579788, 27.860674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301792, 34.914890, 28.076134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088677, -0.531967, 0.842109,
		0.992026, 0.123187, -0.026645,
		-0.089562, 0.837757, 0.538649,
		35.274925, 35.166218, 28.237728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890583, 34.569778, 28.393129>,  <35.337616, 34.579788, 27.860674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890583, 34.569778, 28.393129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584026, 34.796009, 28.514967>,  <35.400093, 34.931747, 28.588070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584026, 34.796009, 28.514967>,  <35.890583, 34.569778, 28.393129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584026, 34.796009, 28.514967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093801, -0.370559, 0.924060,
		0.635494, 0.736760, 0.230941,
		-0.766387, 0.565572, 0.304596,
		35.354111, 34.965679, 28.606346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118210, 34.840137, 29.028671>,  <35.890583, 34.569778, 28.393129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118210, 34.840137, 29.028671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728668, 34.924652, 29.062046>,  <35.494942, 34.975361, 29.082071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728668, 34.924652, 29.062046>,  <36.118210, 34.840137, 29.028671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728668, 34.924652, 29.062046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049974, -0.557574, 0.828622,
		0.221599, 0.802789, 0.553556,
		-0.973856, 0.211285, 0.083439,
		35.436512, 34.988037, 29.087078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966370, 35.010399, 29.731035>,  <36.118210, 34.840137, 29.028671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966370, 35.010399, 29.731035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610954, 34.906979, 29.579432>,  <35.397705, 34.844925, 29.488470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610954, 34.906979, 29.579432>,  <35.966370, 35.010399, 29.731035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610954, 34.906979, 29.579432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210852, -0.503561, 0.837835,
		-0.407481, 0.824364, 0.392917,
		-0.888539, -0.258555, -0.379010,
		35.344391, 34.829411, 29.465729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551544, 35.123085, 30.295380>,  <35.966370, 35.010399, 29.731035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551544, 35.123085, 30.295380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355171, 34.863499, 30.062889>,  <35.237347, 34.707745, 29.923395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355171, 34.863499, 30.062889>,  <35.551544, 35.123085, 30.295380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355171, 34.863499, 30.062889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122073, -0.609333, 0.783461,
		-0.862602, 0.455579, 0.219921,
		-0.490933, -0.648969, -0.581226,
		35.207890, 34.668808, 29.888521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882500, 35.090771, 30.650028>,  <35.551544, 35.123085, 30.295380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882500, 35.090771, 30.650028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.902050, 34.768642, 30.413700>,  <34.913780, 34.575363, 30.271904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.902050, 34.768642, 30.413700>,  <34.882500, 35.090771, 30.650028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902050, 34.768642, 30.413700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268860, -0.580300, 0.768743,
		-0.961938, 0.121275, -0.244881,
		0.048875, -0.805322, -0.590819,
		34.916714, 34.527046, 30.236454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314388, 34.779419, 30.741686>,  <34.882500, 35.090771, 30.650028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314388, 34.779419, 30.741686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544704, 34.492695, 30.584385>,  <34.682892, 34.320660, 30.490004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544704, 34.492695, 30.584385>,  <34.314388, 34.779419, 30.741686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544704, 34.492695, 30.584385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141577, -0.561132, 0.815529,
		-0.805249, -0.413894, -0.424576,
		0.575786, -0.716815, -0.393253,
		34.717442, 34.277649, 30.466410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896206, 34.233845, 30.789043>,  <34.314388, 34.779419, 30.741686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896206, 34.233845, 30.789043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249954, 34.052162, 30.745989>,  <34.462204, 33.943153, 30.720156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249954, 34.052162, 30.745989>,  <33.896206, 34.233845, 30.789043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249954, 34.052162, 30.745989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127775, -0.457344, 0.880062,
		-0.448942, -0.764556, -0.462500,
		0.884378, -0.454193, -0.107630,
		34.515266, 33.915901, 30.713697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807556, 33.483147, 30.931812>,  <33.896206, 34.233845, 30.789043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807556, 33.483147, 30.931812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193542, 33.562759, 31.000208>,  <34.425133, 33.610527, 31.041245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.193542, 33.562759, 31.000208>,  <33.807556, 33.483147, 30.931812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193542, 33.562759, 31.000208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048989, -0.503545, 0.862579,
		0.257778, -0.840732, -0.476152,
		0.964961, 0.199028, 0.170989,
		34.483032, 33.622467, 31.051504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938858, 32.867943, 31.299992>,  <33.807556, 33.483147, 30.931812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938858, 32.867943, 31.299992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.237400, 33.129730, 31.348351>,  <34.416527, 33.286804, 31.377365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.237400, 33.129730, 31.348351>,  <33.938858, 32.867943, 31.299992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237400, 33.129730, 31.348351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113584, -0.304240, 0.945799,
		0.655781, -0.692173, -0.301409,
		0.746357, 0.654473, 0.120896,
		34.461308, 33.326073, 31.384619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384968, 32.499973, 31.646914>,  <33.938858, 32.867943, 31.299992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384968, 32.499973, 31.646914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454964, 32.881214, 31.745689>,  <34.496960, 33.109959, 31.804955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454964, 32.881214, 31.745689>,  <34.384968, 32.499973, 31.646914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454964, 32.881214, 31.745689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073846, -0.262808, 0.962018,
		0.981798, -0.150105, -0.116370,
		0.174987, 0.953101, 0.246939,
		34.507462, 33.167145, 31.819771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969303, 32.572659, 32.098114>,  <34.384968, 32.499973, 31.646914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969303, 32.572659, 32.098114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794060, 32.923084, 32.178677>,  <34.688911, 33.133339, 32.227013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794060, 32.923084, 32.178677>,  <34.969303, 32.572659, 32.098114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794060, 32.923084, 32.178677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069046, -0.190595, 0.979238,
		0.896265, 0.442922, 0.023013,
		-0.438112, 0.876067, 0.201406,
		34.662628, 33.185905, 32.239098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338970, 32.884315, 32.658417>,  <34.969303, 32.572659, 32.098114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338970, 32.884315, 32.658417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982628, 33.065521, 32.644848>,  <34.768822, 33.174244, 32.636707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982628, 33.065521, 32.644848>,  <35.338970, 32.884315, 32.658417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982628, 33.065521, 32.644848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120832, -0.164312, 0.978980,
		0.437920, 0.876229, 0.201117,
		-0.890857, 0.453016, -0.033921,
		34.715370, 33.201427, 32.634670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746815, 32.814430, 33.357059>,  <35.338970, 32.884315, 32.658417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746815, 32.814430, 33.357059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951008, 32.967297, 33.665176>,  <36.073524, 33.059017, 33.850048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951008, 32.967297, 33.665176>,  <35.746815, 32.814430, 33.357059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951008, 32.967297, 33.665176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116122, 0.856963, -0.502125,
		-0.852010, 0.345775, 0.393088,
		0.510485, 0.382170, 0.770293,
		36.104153, 33.081947, 33.896263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427536, 33.475239, 33.491207>,  <35.746815, 32.814430, 33.357059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427536, 33.475239, 33.491207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785854, 33.530495, 33.660183>,  <36.000847, 33.563648, 33.761570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785854, 33.530495, 33.660183>,  <35.427536, 33.475239, 33.491207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785854, 33.530495, 33.660183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190534, 0.739346, -0.645806,
		-0.401545, 0.659003, 0.635985,
		0.895801, 0.138143, 0.422443,
		36.054596, 33.571938, 33.786915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476612, 34.165203, 33.723476>,  <35.427536, 33.475239, 33.491207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476612, 34.165203, 33.723476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853222, 34.040333, 33.672764>,  <36.079189, 33.965408, 33.642338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853222, 34.040333, 33.672764>,  <35.476612, 34.165203, 33.723476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853222, 34.040333, 33.672764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196195, 0.813842, -0.546964,
		0.273928, 0.490108, 0.827501,
		0.941526, -0.312180, -0.126777,
		36.135681, 33.946678, 33.634731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891510, 34.743771, 34.011478>,  <35.476612, 34.165203, 33.723476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891510, 34.743771, 34.011478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155075, 34.539837, 33.790245>,  <36.313213, 34.417477, 33.657505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155075, 34.539837, 33.790245>,  <35.891510, 34.743771, 34.011478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155075, 34.539837, 33.790245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131628, 0.802075, -0.582538,
		0.740615, 0.311038, 0.595604,
		0.658910, -0.509834, -0.553088,
		36.352749, 34.386887, 33.624317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321510, 35.272949, 33.867970>,  <35.891510, 34.743771, 34.011478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321510, 35.272949, 33.867970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396965, 34.970821, 33.616920>,  <36.442238, 34.789543, 33.466293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396965, 34.970821, 33.616920>,  <36.321510, 35.272949, 33.867970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396965, 34.970821, 33.616920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311775, 0.652089, -0.691069,
		0.931243, -0.065318, 0.358496,
		0.188632, -0.755323, -0.627618,
		36.453556, 34.744225, 33.428635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014992, 35.266930, 33.691471>,  <36.321510, 35.272949, 33.867970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014992, 35.266930, 33.691471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804081, 35.082462, 33.406010>,  <36.677532, 34.971783, 33.234734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804081, 35.082462, 33.406010>,  <37.014992, 35.266930, 33.691471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804081, 35.082462, 33.406010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314261, 0.674491, -0.668058,
		0.789441, -0.576526, -0.210717,
		-0.527279, -0.461172, -0.713650,
		36.645897, 34.944111, 33.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475983, 35.095688, 33.162476>,  <37.014992, 35.266930, 33.691471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475983, 35.095688, 33.162476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128590, 35.098106, 32.964203>,  <36.920155, 35.099560, 32.845238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128590, 35.098106, 32.964203>,  <37.475983, 35.095688, 33.162476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128590, 35.098106, 32.964203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405538, 0.583741, -0.703410,
		0.285097, -0.811917, -0.509421,
		-0.868481, 0.006050, -0.495686,
		36.868046, 35.099922, 32.815498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627926, 34.975288, 32.350372>,  <37.475983, 35.095688, 33.162476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627926, 34.975288, 32.350372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251232, 35.109619, 32.342892>,  <37.025215, 35.190220, 32.338406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251232, 35.109619, 32.342892>,  <37.627926, 34.975288, 32.350372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251232, 35.109619, 32.342892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178029, 0.450521, -0.874835,
		-0.285373, -0.827193, -0.484060,
		-0.941737, 0.335831, -0.018698,
		36.968712, 35.210369, 32.337280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288872, 34.841572, 31.693312>,  <37.627926, 34.975288, 32.350372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288872, 34.841572, 31.693312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070438, 35.144764, 31.836006>,  <36.939377, 35.326679, 31.921623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070438, 35.144764, 31.836006>,  <37.288872, 34.841572, 31.693312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070438, 35.144764, 31.836006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072859, 0.467194, -0.881148,
		-0.834556, -0.455189, -0.310353,
		-0.546084, 0.757980, 0.356735,
		36.906612, 35.372158, 31.943027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851387, 34.944221, 31.203543>,  <37.288872, 34.841572, 31.693312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851387, 34.944221, 31.203543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829582, 35.280876, 31.418455>,  <36.816502, 35.482868, 31.547403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829582, 35.280876, 31.418455>,  <36.851387, 34.944221, 31.203543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829582, 35.280876, 31.418455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128492, 0.539522, -0.832110,
		-0.990211, 0.023679, -0.137552,
		-0.054509, 0.841639, 0.537283,
		36.813229, 35.533367, 31.579639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366241, 35.381031, 30.908035>,  <36.851387, 34.944221, 31.203543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366241, 35.381031, 30.908035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596901, 35.645164, 31.100468>,  <36.735298, 35.803642, 31.215927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596901, 35.645164, 31.100468>,  <36.366241, 35.381031, 30.908035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596901, 35.645164, 31.100468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075034, 0.543550, -0.836016,
		-0.813537, 0.518187, 0.263892,
		0.576652, 0.660329, 0.481080,
		36.769897, 35.843262, 31.244791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110775, 36.064262, 30.799690>,  <36.366241, 35.381031, 30.908035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110775, 36.064262, 30.799690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475853, 36.154961, 30.935673>,  <36.694901, 36.209381, 31.017262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475853, 36.154961, 30.935673>,  <36.110775, 36.064262, 30.799690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475853, 36.154961, 30.935673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161694, 0.563632, -0.810045,
		-0.375283, 0.794295, 0.477763,
		0.912698, 0.226745, 0.339955,
		36.749660, 36.222984, 31.037659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226414, 36.696404, 30.561941>,  <36.110775, 36.064262, 30.799690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226414, 36.696404, 30.561941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602585, 36.578594, 30.629877>,  <36.828289, 36.507908, 30.670639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602585, 36.578594, 30.629877>,  <36.226414, 36.696404, 30.561941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602585, 36.578594, 30.629877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298822, 0.477777, -0.826096,
		0.162163, 0.827637, 0.537327,
		0.940430, -0.294527, 0.169838,
		36.884712, 36.490234, 30.680828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640373, 37.228951, 30.433599>,  <36.226414, 36.696404, 30.561941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640373, 37.228951, 30.433599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926067, 36.951038, 30.399790>,  <37.097485, 36.784290, 30.379505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926067, 36.951038, 30.399790>,  <36.640373, 37.228951, 30.433599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926067, 36.951038, 30.399790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253923, 0.369761, -0.893756,
		0.652218, 0.616892, 0.440518,
		0.714237, -0.694781, -0.084522,
		37.140339, 36.742603, 30.374434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166519, 37.655800, 30.406620>,  <36.640373, 37.228951, 30.433599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166519, 37.655800, 30.406620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260731, 37.295067, 30.261724>,  <37.317257, 37.078625, 30.174788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260731, 37.295067, 30.261724>,  <37.166519, 37.655800, 30.406620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260731, 37.295067, 30.261724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250462, 0.416459, -0.873974,
		0.939040, 0.115116, 0.323962,
		0.235526, -0.901837, -0.362239,
		37.331387, 37.024517, 30.153053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846470, 37.697010, 30.099817>,  <37.166519, 37.655800, 30.406620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846470, 37.697010, 30.099817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684551, 37.383949, 29.910673>,  <37.587402, 37.196114, 29.797186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684551, 37.383949, 29.910673>,  <37.846470, 37.697010, 30.099817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684551, 37.383949, 29.910673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331911, 0.356092, -0.873518,
		0.852042, -0.510543, 0.115627,
		-0.404795, -0.782652, -0.472861,
		37.563114, 37.149155, 29.768814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320023, 37.629211, 29.666649>,  <37.846470, 37.697010, 30.099817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320023, 37.629211, 29.666649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018776, 37.408604, 29.523188>,  <37.838028, 37.276237, 29.437111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018776, 37.408604, 29.523188>,  <38.320023, 37.629211, 29.666649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018776, 37.408604, 29.523188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344784, 0.133412, -0.929153,
		0.560297, -0.823422, 0.089681,
		-0.753121, -0.551523, -0.358654,
		37.792839, 37.243149, 29.415592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577877, 37.163383, 29.192566>,  <38.320023, 37.629211, 29.666649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577877, 37.163383, 29.192566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188992, 37.199211, 29.106060>,  <37.955658, 37.220707, 29.054157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188992, 37.199211, 29.106060>,  <38.577877, 37.163383, 29.192566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188992, 37.199211, 29.106060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229523, 0.183357, -0.955876,
		-0.045967, -0.978957, -0.198822,
		-0.972217, 0.089573, -0.216265,
		37.897327, 37.226082, 29.041182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474495, 36.879242, 28.537518>,  <38.577877, 37.163383, 29.192566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474495, 36.879242, 28.537518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135902, 37.087257, 28.583168>,  <37.932747, 37.212067, 28.610558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135902, 37.087257, 28.583168>,  <38.474495, 36.879242, 28.537518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135902, 37.087257, 28.583168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045315, 0.283951, -0.957768,
		-0.530480, -0.805565, -0.263925,
		-0.846485, 0.520037, 0.114126,
		37.881958, 37.243267, 28.617405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.907684, 36.606060, 27.980101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816711, 36.977932, 28.096008>,  <37.762127, 37.201057, 28.165552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816711, 36.977932, 28.096008>,  <37.907684, 36.606060, 27.980101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816711, 36.977932, 28.096008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032926, 0.304739, -0.951867,
		-0.973238, -0.206940, -0.099917,
		-0.227428, 0.929683, 0.289770,
		37.748482, 37.256836, 28.182940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446674, 36.779831, 27.496475>,  <37.907684, 36.606060, 27.980101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446674, 36.779831, 27.496475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580975, 37.108330, 27.681005>,  <37.661556, 37.305428, 27.791723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580975, 37.108330, 27.681005>,  <37.446674, 36.779831, 27.496475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580975, 37.108330, 27.681005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017641, 0.495154, -0.868626,
		-0.941786, 0.283504, 0.180736,
		0.335751, 0.821248, 0.461328,
		37.681702, 37.354706, 27.819405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934723, 37.368992, 27.353262>,  <37.446674, 36.779831, 27.496475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934723, 37.368992, 27.353262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283306, 37.530647, 27.464418>,  <37.492458, 37.627640, 27.531113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283306, 37.530647, 27.464418>,  <36.934723, 37.368992, 27.353262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283306, 37.530647, 27.464418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103143, 0.402910, -0.909409,
		-0.479497, 0.821177, 0.309436,
		0.871461, 0.404143, 0.277893,
		37.544743, 37.651890, 27.547787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924587, 38.011612, 26.992897>,  <36.934723, 37.368992, 27.353262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924587, 38.011612, 26.992897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309242, 37.971165, 27.094904>,  <37.540035, 37.946896, 27.156107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309242, 37.971165, 27.094904>,  <36.924587, 38.011612, 26.992897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309242, 37.971165, 27.094904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272993, 0.444423, -0.853208,
		-0.027063, 0.890092, 0.454976,
		0.961635, -0.101115, 0.255016,
		37.597733, 37.940830, 27.171410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370403, 38.714767, 26.941921>,  <36.924587, 38.011612, 26.992897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370403, 38.714767, 26.941921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635654, 38.419594, 26.891787>,  <37.794807, 38.242489, 26.861706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635654, 38.419594, 26.891787>,  <37.370403, 38.714767, 26.941921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635654, 38.419594, 26.891787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408811, 0.497339, -0.765197,
		0.627002, 0.456186, 0.631477,
		0.663131, -0.737935, -0.125338,
		37.834595, 38.198212, 26.854185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796993, 39.061985, 26.507273>,  <37.370403, 38.714767, 26.941921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796993, 39.061985, 26.507273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922474, 38.682976, 26.482630>,  <37.997761, 38.455570, 26.467844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922474, 38.682976, 26.482630>,  <37.796993, 39.061985, 26.507273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922474, 38.682976, 26.482630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401077, 0.191039, -0.895902,
		0.860656, 0.256336, 0.439958,
		0.313702, -0.947521, -0.061608,
		38.016582, 38.398720, 26.464148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545631, 39.071587, 26.376493>,  <37.796993, 39.061985, 26.507273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545631, 39.071587, 26.376493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419601, 38.712151, 26.254343>,  <38.343983, 38.496487, 26.181053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419601, 38.712151, 26.254343>,  <38.545631, 39.071587, 26.376493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419601, 38.712151, 26.254343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528616, 0.101069, -0.842822,
		0.788219, -0.426982, 0.443167,
		-0.315079, -0.898594, -0.305374,
		38.325077, 38.442574, 26.162731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208447, 38.726662, 26.122461>,  <38.545631, 39.071587, 26.376493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208447, 38.726662, 26.122461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913921, 38.515804, 25.952772>,  <38.737206, 38.389290, 25.850960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913921, 38.515804, 25.952772>,  <39.208447, 38.726662, 26.122461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913921, 38.515804, 25.952772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490853, 0.015406, -0.871106,
		0.465735, -0.849636, 0.247407,
		-0.736311, -0.527145, -0.424222,
		38.693027, 38.357662, 25.825506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543892, 38.233360, 25.770969>,  <39.208447, 38.726662, 26.122461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543892, 38.233360, 25.770969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183327, 38.266510, 25.600985>,  <38.966988, 38.286400, 25.498993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183327, 38.266510, 25.600985>,  <39.543892, 38.233360, 25.770969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183327, 38.266510, 25.600985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422636, -0.044732, -0.905195,
		-0.094028, -0.995555, 0.005296,
		-0.901409, 0.082875, -0.424964,
		38.912903, 38.291370, 25.473495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537128, 37.798801, 25.299026>,  <39.543892, 38.233360, 25.770969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537128, 37.798801, 25.299026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263554, 38.057377, 25.163761>,  <39.099407, 38.212521, 25.082602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263554, 38.057377, 25.163761>,  <39.537128, 37.798801, 25.299026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263554, 38.057377, 25.163761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529701, 0.121287, -0.839468,
		-0.501646, -0.753268, -0.425369,
		-0.683936, 0.646434, -0.338164,
		39.058372, 38.251308, 25.062311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451668, 37.566643, 24.645342>,  <39.537128, 37.798801, 25.299026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451668, 37.566643, 24.645342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.301968, 37.937466, 24.654350>,  <39.212147, 38.159958, 24.659756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.301968, 37.937466, 24.654350>,  <39.451668, 37.566643, 24.645342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301968, 37.937466, 24.654350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510528, 0.226254, -0.829560,
		-0.774144, -0.298964, -0.557963,
		-0.374250, 0.927054, 0.022523,
		39.189693, 38.215584, 24.661108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380985, 37.648254, 23.987984>,  <39.451668, 37.566643, 24.645342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380985, 37.648254, 23.987984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.383888, 38.015774, 24.145845>,  <39.385632, 38.236286, 24.240562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.383888, 38.015774, 24.145845>,  <39.380985, 37.648254, 23.987984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383888, 38.015774, 24.145845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630348, 0.302174, -0.715089,
		-0.776279, 0.253964, -0.576969,
		0.007262, 0.918800, 0.394657,
		39.386066, 38.291412, 24.264242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345665, 38.024624, 23.457754>,  <39.380985, 37.648254, 23.987984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345665, 38.024624, 23.457754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478298, 38.283623, 23.732214>,  <39.557877, 38.439022, 23.896891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478298, 38.283623, 23.732214>,  <39.345665, 38.024624, 23.457754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478298, 38.283623, 23.732214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506403, 0.491488, -0.708517,
		-0.795995, 0.582401, -0.164924,
		0.331583, 0.647494, 0.686152,
		39.577774, 38.477871, 23.938059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195282, 38.550953, 23.085615>,  <39.345665, 38.024624, 23.457754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195282, 38.550953, 23.085615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471008, 38.615402, 23.368143>,  <39.636444, 38.654072, 23.537659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471008, 38.615402, 23.368143>,  <39.195282, 38.550953, 23.085615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471008, 38.615402, 23.368143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578192, 0.465084, -0.670366,
		-0.436511, 0.870480, 0.227426,
		0.689313, 0.161127, 0.706319,
		39.677803, 38.663742, 23.580038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437901, 39.338894, 23.039539>,  <39.195282, 38.550953, 23.085615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437901, 39.338894, 23.039539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718208, 39.142609, 23.246660>,  <39.886395, 39.024837, 23.370934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718208, 39.142609, 23.246660>,  <39.437901, 39.338894, 23.039539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718208, 39.142609, 23.246660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689643, 0.651698, -0.315727,
		-0.182519, 0.578351, 0.795108,
		0.700771, -0.490715, 0.517802,
		39.928440, 38.995396, 23.402000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741394, 39.771198, 23.400349>,  <39.437901, 39.338894, 23.039539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741394, 39.771198, 23.400349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011940, 39.476624, 23.405783>,  <40.174267, 39.299877, 23.409042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011940, 39.476624, 23.405783>,  <39.741394, 39.771198, 23.400349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011940, 39.476624, 23.405783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714950, 0.651969, -0.252553,
		0.177132, 0.180531, 0.967488,
		0.676366, -0.736441, 0.013586,
		40.214851, 39.255692, 23.409859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237190, 39.957050, 23.920727>,  <39.741394, 39.771198, 23.400349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237190, 39.957050, 23.920727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399368, 39.691601, 23.669262>,  <40.496674, 39.532330, 23.518383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399368, 39.691601, 23.669262>,  <40.237190, 39.957050, 23.920727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399368, 39.691601, 23.669262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742186, 0.640458, -0.197419,
		0.533642, -0.386540, 0.752205,
		0.405445, -0.663627, -0.628660,
		40.521004, 39.492512, 23.480663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896790, 40.021698, 24.044870>,  <40.237190, 39.957050, 23.920727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896790, 40.021698, 24.044870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887756, 39.844563, 23.686342>,  <40.882336, 39.738281, 23.471226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887756, 39.844563, 23.686342>,  <40.896790, 40.021698, 24.044870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887756, 39.844563, 23.686342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549083, 0.743730, -0.381280,
		0.835463, -0.500763, 0.226358,
		-0.022582, -0.442834, -0.896319,
		40.880981, 39.711712, 23.417446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541790, 40.017139, 23.719231>,  <40.896790, 40.021698, 24.044870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541790, 40.017139, 23.719231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318901, 39.971436, 23.390244>,  <41.185169, 39.944012, 23.192852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318901, 39.971436, 23.390244>,  <41.541790, 40.017139, 23.719231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318901, 39.971436, 23.390244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569015, 0.668828, -0.478426,
		0.604755, -0.734584, -0.307666,
		-0.557220, -0.114264, -0.822466,
		41.151733, 39.937157, 23.143503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021675, 39.976688, 23.127941>,  <41.541790, 40.017139, 23.719231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021675, 39.976688, 23.127941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.659958, 40.094036, 23.003881>,  <41.442928, 40.164444, 22.929445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.659958, 40.094036, 23.003881>,  <42.021675, 39.976688, 23.127941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659958, 40.094036, 23.003881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417286, 0.760857, -0.496960,
		0.090185, -0.578817, -0.810455,
		-0.904289, 0.293373, -0.310150,
		41.388672, 40.182049, 22.910837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159618, 40.128227, 22.315262>,  <42.021675, 39.976688, 23.127941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159618, 40.128227, 22.315262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.818150, 40.300449, 22.432470>,  <41.613266, 40.403782, 22.502796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.818150, 40.300449, 22.432470>,  <42.159618, 40.128227, 22.315262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818150, 40.300449, 22.432470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256547, 0.837280, -0.482852,
		-0.453234, -0.337026, -0.825223,
		-0.853676, 0.430553, 0.293021,
		41.562046, 40.429615, 22.520376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911015, 40.405285, 21.675337>,  <42.159618, 40.128227, 22.315262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911015, 40.405285, 21.675337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.700493, 40.585747, 21.963631>,  <41.574181, 40.694023, 22.136606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.700493, 40.585747, 21.963631>,  <41.911015, 40.405285, 21.675337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700493, 40.585747, 21.963631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051947, 0.828985, -0.556853,
		-0.848706, -0.330516, -0.412865,
		-0.526308, 0.451157, 0.720734,
		41.542599, 40.721092, 22.179852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159451, 40.636486, 21.496315>,  <41.911015, 40.405285, 21.675337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159451, 40.636486, 21.496315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.358654, 40.856476, 21.764498>,  <41.478176, 40.988468, 21.925407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.358654, 40.856476, 21.764498>,  <41.159451, 40.636486, 21.496315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358654, 40.856476, 21.764498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012355, 0.777577, -0.628666,
		-0.867083, 0.304798, 0.394036,
		0.498010, 0.549974, 0.670458,
		41.508057, 41.021469, 21.965635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716850, 41.141720, 21.024748>,  <41.159451, 40.636486, 21.496315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716850, 41.141720, 21.024748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559052, 41.501678, 21.099113>,  <40.464375, 41.717655, 21.143734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559052, 41.501678, 21.099113>,  <40.716850, 41.141720, 21.024748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559052, 41.501678, 21.099113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705621, -0.426268, 0.566034,
		0.588620, 0.092110, 0.803145,
		-0.394492, 0.899895, 0.185915,
		40.440704, 41.771648, 21.154888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611092, 41.277409, 21.799303>,  <40.716850, 41.141720, 21.024748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611092, 41.277409, 21.799303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359886, 41.500351, 21.582064>,  <40.209164, 41.634117, 21.451719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359886, 41.500351, 21.582064>,  <40.611092, 41.277409, 21.799303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359886, 41.500351, 21.582064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778130, -0.459246, 0.428493,
		-0.010594, 0.691701, 0.722106,
		-0.628013, 0.557354, -0.543099,
		40.171482, 41.667557, 21.419134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081924, 41.403957, 22.257826>,  <40.611092, 41.277409, 21.799303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081924, 41.403957, 22.257826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922005, 41.496132, 21.902960>,  <39.826054, 41.551437, 21.690041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922005, 41.496132, 21.902960>,  <40.081924, 41.403957, 22.257826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922005, 41.496132, 21.902960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892572, -0.318056, 0.319617,
		-0.208515, 0.919640, 0.332842,
		-0.399795, 0.230441, -0.887165,
		39.802067, 41.565266, 21.636810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578548, 41.841850, 22.482391>,  <40.081924, 41.403957, 22.257826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578548, 41.841850, 22.482391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.461151, 41.709179, 22.123760>,  <39.390713, 41.629578, 21.908581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.461151, 41.709179, 22.123760>,  <39.578548, 41.841850, 22.482391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461151, 41.709179, 22.123760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942061, -0.059004, 0.330212,
		-0.162424, 0.941546, -0.295143,
		-0.293495, -0.331677, -0.896578,
		39.373104, 41.609676, 21.854788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905148, 42.337345, 22.247873>,  <39.578548, 41.841850, 22.482391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905148, 42.337345, 22.247873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889885, 41.996967, 22.038324>,  <38.880730, 41.792740, 21.912594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889885, 41.996967, 22.038324>,  <38.905148, 42.337345, 22.247873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889885, 41.996967, 22.038324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846541, -0.251035, 0.469416,
		-0.530955, 0.461391, -0.710778,
		-0.038154, -0.850941, -0.523874,
		38.878437, 41.741684, 21.881163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223469, 42.183582, 22.137608>,  <38.905148, 42.337345, 22.247873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223469, 42.183582, 22.137608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387207, 41.823009, 22.081245>,  <38.485451, 41.606667, 22.047428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387207, 41.823009, 22.081245>,  <38.223469, 42.183582, 22.137608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387207, 41.823009, 22.081245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741285, -0.418627, 0.524640,
		-0.531917, -0.110304, -0.839581,
		0.409342, -0.901434, -0.140908,
		38.510010, 41.552578, 22.038973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731373, 41.810589, 21.816441>,  <38.223469, 42.183582, 22.137608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731373, 41.810589, 21.816441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978088, 41.534466, 21.967730>,  <38.126118, 41.368793, 22.058502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.978088, 41.534466, 21.967730>,  <37.731373, 41.810589, 21.816441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978088, 41.534466, 21.967730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764938, -0.412380, 0.494786,
		-0.185581, -0.594495, -0.782391,
		0.616790, -0.690303, 0.378222,
		38.163124, 41.327374, 22.081196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358849, 41.189095, 21.697826>,  <37.731373, 41.810589, 21.816441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358849, 41.189095, 21.697826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626160, 41.123146, 21.987989>,  <37.786549, 41.083576, 22.162088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626160, 41.123146, 21.987989>,  <37.358849, 41.189095, 21.697826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626160, 41.123146, 21.987989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661855, -0.576964, 0.478602,
		0.339629, -0.799957, -0.494694,
		0.668281, -0.164869, 0.725409,
		37.826645, 41.073685, 22.205612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398575, 40.432140, 21.794966>,  <37.358849, 41.189095, 21.697826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398575, 40.432140, 21.794966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501789, 40.599857, 22.143129>,  <37.563717, 40.700485, 22.352028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501789, 40.599857, 22.143129>,  <37.398575, 40.432140, 21.794966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501789, 40.599857, 22.143129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631691, -0.608454, 0.480365,
		0.731017, -0.673781, 0.107859,
		0.258034, 0.419289, 0.870411,
		37.579201, 40.725643, 22.404253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399498, 39.865940, 22.320425>,  <37.398575, 40.432140, 21.794966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399498, 39.865940, 22.320425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384327, 40.186344, 22.559404>,  <37.375225, 40.378586, 22.702791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384327, 40.186344, 22.559404>,  <37.399498, 39.865940, 22.320425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384327, 40.186344, 22.559404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424710, -0.554111, 0.715948,
		0.904535, -0.226588, 0.361213,
		-0.037927, 0.801011, 0.597447,
		37.372948, 40.426647, 22.738638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680000, 39.637417, 22.910246>,  <37.399498, 39.865940, 22.320425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680000, 39.637417, 22.910246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452492, 39.952255, 23.005726>,  <37.315987, 40.141159, 23.063013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452492, 39.952255, 23.005726>,  <37.680000, 39.637417, 22.910246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452492, 39.952255, 23.005726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401928, -0.519182, 0.754257,
		0.717601, 0.333061, 0.611652,
		-0.568773, 0.787096, 0.238699,
		37.281860, 40.188385, 23.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800426, 39.795063, 23.635796>,  <37.680000, 39.637417, 22.910246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800426, 39.795063, 23.635796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437431, 39.925629, 23.530027>,  <37.219635, 40.003967, 23.466566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437431, 39.925629, 23.530027>,  <37.800426, 39.795063, 23.635796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437431, 39.925629, 23.530027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418875, -0.655465, 0.628419,
		0.031809, 0.681041, 0.731554,
		-0.907487, 0.326419, -0.264421,
		37.165184, 40.023556, 23.450701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480755, 39.853394, 24.209845>,  <37.800426, 39.795063, 23.635796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480755, 39.853394, 24.209845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162254, 39.846233, 23.967964>,  <36.971153, 39.841938, 23.822836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162254, 39.846233, 23.967964>,  <37.480755, 39.853394, 24.209845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162254, 39.846233, 23.967964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407027, -0.723643, 0.557378,
		-0.447562, 0.689942, 0.568917,
		-0.796252, -0.017897, -0.604701,
		36.923378, 39.840866, 23.786554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860645, 39.953934, 24.646500>,  <37.480755, 39.853394, 24.209845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860645, 39.953934, 24.646500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742428, 39.775196, 24.308746>,  <36.671497, 39.667953, 24.106094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742428, 39.775196, 24.308746>,  <36.860645, 39.953934, 24.646500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742428, 39.775196, 24.308746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481886, -0.693455, 0.535635,
		-0.824887, 0.565202, -0.010378,
		-0.295545, -0.446840, -0.844386,
		36.653763, 39.641144, 24.055431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157391, 39.699749, 24.767284>,  <36.860645, 39.953934, 24.646500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157391, 39.699749, 24.767284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301857, 39.493210, 24.456688>,  <36.388538, 39.369286, 24.270330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301857, 39.493210, 24.456688>,  <36.157391, 39.699749, 24.767284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301857, 39.493210, 24.456688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409214, -0.835998, 0.365584,
		-0.837917, 0.185717, -0.513229,
		0.361163, -0.516350, -0.776495,
		36.410210, 39.338306, 24.223740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634323, 39.309517, 24.473608>,  <36.157391, 39.699749, 24.767284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634323, 39.309517, 24.473608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932140, 39.077423, 24.341555>,  <36.110828, 38.938168, 24.262323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932140, 39.077423, 24.341555>,  <35.634323, 39.309517, 24.473608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932140, 39.077423, 24.341555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383935, -0.776728, 0.499287,
		-0.546128, -0.244989, -0.801077,
		0.744539, -0.580236, -0.330133,
		36.155502, 38.903351, 24.242514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341190, 38.732056, 24.236589>,  <35.634323, 39.309517, 24.473608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341190, 38.732056, 24.236589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722946, 38.640205, 24.312912>,  <35.952000, 38.585094, 24.358706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722946, 38.640205, 24.312912>,  <35.341190, 38.732056, 24.236589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722946, 38.640205, 24.312912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297315, -0.789256, 0.537288,
		0.027220, -0.569513, -0.821532,
		0.954391, -0.229629, 0.190808,
		36.009262, 38.571316, 24.370155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346619, 38.052025, 24.106936>,  <35.341190, 38.732056, 24.236589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346619, 38.052025, 24.106936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681431, 38.107628, 24.318617>,  <35.882320, 38.140987, 24.445625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681431, 38.107628, 24.318617>,  <35.346619, 38.052025, 24.106936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681431, 38.107628, 24.318617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216874, -0.803683, 0.554129,
		0.502336, -0.578594, -0.642563,
		0.837033, 0.139004, 0.529201,
		35.932541, 38.149330, 24.477377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714508, 37.344269, 24.113655>,  <35.346619, 38.052025, 24.106936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714508, 37.344269, 24.113655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862888, 37.564781, 24.412582>,  <35.951916, 37.697086, 24.591940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862888, 37.564781, 24.412582>,  <35.714508, 37.344269, 24.113655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862888, 37.564781, 24.412582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086180, -0.780828, 0.618774,
		0.924646, -0.293938, -0.242138,
		0.370949, 0.551279, 0.747320,
		35.974174, 37.730164, 24.636778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178577, 36.912601, 24.399340>,  <35.714508, 37.344269, 24.113655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178577, 36.912601, 24.399340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106785, 37.184711, 24.683596>,  <36.063709, 37.347977, 24.854149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106785, 37.184711, 24.683596>,  <36.178577, 36.912601, 24.399340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106785, 37.184711, 24.683596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062000, -0.713114, 0.698301,
		0.981805, 0.169393, 0.085815,
		-0.179483, 0.680275, 0.710642,
		36.052940, 37.388794, 24.896788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660496, 36.765945, 24.950191>,  <36.178577, 36.912601, 24.399340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660496, 36.765945, 24.950191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364914, 36.969547, 25.126766>,  <36.187565, 37.091709, 25.232712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364914, 36.969547, 25.126766>,  <36.660496, 36.765945, 24.950191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364914, 36.969547, 25.126766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006640, -0.649655, 0.760201,
		0.673724, 0.564683, 0.476684,
		-0.738953, 0.509001, 0.441437,
		36.143227, 37.122246, 25.259197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.092003, 36.042049, 30.954302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.725220, 36.175228, 30.866360>,  <37.505150, 36.255135, 30.813595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.725220, 36.175228, 30.866360>,  <38.092003, 36.042049, 30.954302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725220, 36.175228, 30.866360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293969, -0.191207, 0.936495,
		0.269764, 0.923356, 0.273205,
		-0.916957, 0.332946, -0.219857,
		37.450134, 36.275112, 30.800402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910110, 36.361252, 31.552313>,  <38.092003, 36.042049, 30.954302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910110, 36.361252, 31.552313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560966, 36.319939, 31.361549>,  <37.351479, 36.295151, 31.247091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.560966, 36.319939, 31.361549>,  <37.910110, 36.361252, 31.552313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560966, 36.319939, 31.361549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419879, -0.338991, 0.841895,
		-0.248620, 0.935103, 0.252528,
		-0.872863, -0.103281, -0.476910,
		37.299107, 36.288956, 31.218477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450439, 36.666061, 31.949087>,  <37.910110, 36.361252, 31.552313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450439, 36.666061, 31.949087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251957, 36.403107, 31.722237>,  <37.132870, 36.245335, 31.586126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251957, 36.403107, 31.722237>,  <37.450439, 36.666061, 31.949087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251957, 36.403107, 31.722237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388342, -0.416174, 0.822186,
		-0.776513, 0.628210, -0.048782,
		-0.496204, -0.657382, -0.567125,
		37.103096, 36.205891, 31.552099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754299, 36.602253, 32.315483>,  <37.450439, 36.666061, 31.949087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754299, 36.602253, 32.315483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768814, 36.279621, 32.079475>,  <36.777523, 36.086044, 31.937872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768814, 36.279621, 32.079475>,  <36.754299, 36.602253, 32.315483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768814, 36.279621, 32.079475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564210, -0.503844, 0.654070,
		-0.824833, 0.309157, -0.473362,
		0.036291, -0.806575, -0.590017,
		36.779701, 36.037647, 31.902470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090710, 36.274197, 32.407669>,  <36.754299, 36.602253, 32.315483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090710, 36.274197, 32.407669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354702, 36.003704, 32.276741>,  <36.513096, 35.841408, 32.198185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354702, 36.003704, 32.276741>,  <36.090710, 36.274197, 32.407669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354702, 36.003704, 32.276741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395934, -0.683337, 0.613422,
		-0.638486, -0.275248, -0.718731,
		0.659979, -0.676231, -0.327321,
		36.552696, 35.800835, 32.178543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775154, 35.694118, 32.311295>,  <36.090710, 36.274197, 32.407669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775154, 35.694118, 32.311295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147194, 35.547230, 32.314598>,  <36.370419, 35.459095, 32.316582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147194, 35.547230, 32.314598>,  <35.775154, 35.694118, 32.311295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147194, 35.547230, 32.314598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290470, -0.721552, 0.628482,
		-0.224834, -0.586948, -0.777780,
		0.930095, -0.367226, 0.008262,
		36.426224, 35.437061, 32.317078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738945, 35.003960, 32.232822>,  <35.775154, 35.694118, 32.311295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738945, 35.003960, 32.232822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.102615, 35.027573, 32.397705>,  <36.320816, 35.041740, 32.496635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.102615, 35.027573, 32.397705>,  <35.738945, 35.003960, 32.232822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102615, 35.027573, 32.397705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190851, -0.820740, 0.538480,
		0.370101, -0.568244, -0.734932,
		0.909176, 0.059030, 0.412207,
		36.375366, 35.045280, 32.521366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974564, 34.295284, 32.294579>,  <35.738945, 35.003960, 32.232822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974564, 34.295284, 32.294579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.192348, 34.501644, 32.559124>,  <36.323017, 34.625462, 32.717854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.192348, 34.501644, 32.559124>,  <35.974564, 34.295284, 32.294579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192348, 34.501644, 32.559124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066520, -0.812554, 0.579077,
		0.836146, -0.271290, -0.476720,
		0.544459, 0.515904, 0.661368,
		36.355686, 34.656414, 32.757534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530975, 33.875446, 32.398140>,  <35.974564, 34.295284, 32.294579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530975, 33.875446, 32.398140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495811, 34.121380, 32.711636>,  <36.474712, 34.268940, 32.899734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495811, 34.121380, 32.711636>,  <36.530975, 33.875446, 32.398140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495811, 34.121380, 32.711636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132304, -0.772608, 0.620945,
		0.987304, 0.158276, -0.013429,
		-0.087905, 0.614838, 0.783739,
		36.469440, 34.305832, 32.946758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128677, 33.720970, 32.857410>,  <36.530975, 33.875446, 32.398140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128677, 33.720970, 32.857410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866325, 33.908730, 33.093884>,  <36.708916, 34.021385, 33.235767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866325, 33.908730, 33.093884>,  <37.128677, 33.720970, 32.857410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866325, 33.908730, 33.093884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183953, -0.660163, 0.728249,
		0.732111, 0.586391, 0.346639,
		-0.655877, 0.469394, 0.591181,
		36.669563, 34.049549, 33.271236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382595, 33.632458, 33.502136>,  <37.128677, 33.720970, 32.857410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382595, 33.632458, 33.502136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.998978, 33.733318, 33.553772>,  <36.768806, 33.793835, 33.584751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.998978, 33.733318, 33.553772>,  <37.382595, 33.632458, 33.502136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998978, 33.733318, 33.553772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045080, -0.585747, 0.809239,
		0.279660, 0.770274, 0.573122,
		-0.959040, 0.252148, 0.129087,
		36.711266, 33.808964, 33.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253136, 33.699413, 34.254074>,  <37.382595, 33.632458, 33.502136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253136, 33.699413, 34.254074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.884315, 33.657200, 34.105114>,  <36.663025, 33.631870, 34.015736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.884315, 33.657200, 34.105114>,  <37.253136, 33.699413, 34.254074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884315, 33.657200, 34.105114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191340, -0.712068, 0.675536,
		-0.336467, 0.694134, 0.636371,
		-0.922052, -0.105533, -0.372403,
		36.607700, 33.625542, 33.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763962, 33.627304, 34.843475>,  <37.253136, 33.699413, 34.254074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763962, 33.627304, 34.843475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576809, 33.448360, 34.538593>,  <36.464520, 33.340992, 34.355663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576809, 33.448360, 34.538593>,  <36.763962, 33.627304, 34.843475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576809, 33.448360, 34.538593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249043, -0.760740, 0.599376,
		-0.847978, 0.470257, 0.244522,
		-0.467879, -0.447362, -0.762205,
		36.436447, 33.314152, 34.309933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034668, 33.408714, 35.073551>,  <36.763962, 33.627304, 34.843475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034668, 33.408714, 35.073551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177689, 33.184200, 34.774990>,  <36.263500, 33.049492, 34.595852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177689, 33.184200, 34.774990>,  <36.034668, 33.408714, 35.073551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177689, 33.184200, 34.774990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298269, -0.826013, 0.478266,
		-0.884981, 0.051623, -0.462757,
		0.357553, -0.561282, -0.746403,
		36.284954, 33.015816, 34.551071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467434, 33.634117, 35.649075>,  <36.034668, 33.408714, 35.073551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467434, 33.634117, 35.649075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.078846, 33.619900, 35.742867>,  <35.845692, 33.611370, 35.799141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.078846, 33.619900, 35.742867>,  <36.467434, 33.634117, 35.649075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078846, 33.619900, 35.742867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226948, 0.147651, 0.962649,
		-0.068837, 0.988401, -0.135372,
		-0.971471, -0.035543, 0.234480,
		35.787403, 33.609238, 35.813210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629856, 33.787804, 36.375587>,  <36.467434, 33.634117, 35.649075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629856, 33.787804, 36.375587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.972733, 33.810158, 36.580368>,  <37.178459, 33.823570, 36.703236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.972733, 33.810158, 36.580368>,  <36.629856, 33.787804, 36.375587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972733, 33.810158, 36.580368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096786, 0.958897, -0.266736,
		-0.505817, 0.278194, 0.816552,
		0.857194, 0.055889, 0.511952,
		37.229889, 33.826923, 36.733955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612732, 34.351902, 36.771812>,  <36.629856, 33.787804, 36.375587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612732, 34.351902, 36.771812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.012375, 34.349255, 36.788517>,  <37.252159, 34.347664, 36.798542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.012375, 34.349255, 36.788517>,  <36.612732, 34.351902, 36.771812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012375, 34.349255, 36.788517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010891, 0.994640, -0.102825,
		-0.040861, 0.103188, 0.993822,
		0.999106, -0.006622, 0.041766,
		37.312107, 34.347267, 36.801048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942642, 34.910015, 37.276455>,  <36.612732, 34.351902, 36.771812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942642, 34.910015, 37.276455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.212044, 34.814583, 36.996605>,  <37.373684, 34.757324, 36.828693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.212044, 34.814583, 36.996605>,  <36.942642, 34.910015, 37.276455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212044, 34.814583, 36.996605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076122, 0.963835, -0.255396,
		0.735257, 0.118752, 0.667304,
		0.673500, -0.238578, -0.699627,
		37.414093, 34.743008, 36.786716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469208, 35.343601, 37.351887>,  <36.942642, 34.910015, 37.276455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469208, 35.343601, 37.351887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542992, 35.237568, 36.973320>,  <37.587261, 35.173946, 36.746181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542992, 35.237568, 36.973320>,  <37.469208, 35.343601, 37.351887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542992, 35.237568, 36.973320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005877, 0.963220, -0.268649,
		0.982822, 0.043993, 0.179234,
		0.184460, -0.265088, -0.946416,
		37.598331, 35.158043, 36.689396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000671, 35.800156, 37.126019>,  <37.469208, 35.343601, 37.351887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000671, 35.800156, 37.126019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853405, 35.674652, 36.775932>,  <37.765045, 35.599350, 36.565880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853405, 35.674652, 36.775932>,  <38.000671, 35.800156, 37.126019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853405, 35.674652, 36.775932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106995, 0.920788, -0.375103,
		0.923584, -0.231743, -0.305429,
		-0.368163, -0.313760, -0.875221,
		37.742954, 35.580524, 36.513367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240532, 36.233383, 36.602360>,  <38.000671, 35.800156, 37.126019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240532, 36.233383, 36.602360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.946758, 36.075848, 36.381271>,  <37.770496, 35.981327, 36.248619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.946758, 36.075848, 36.381271>,  <38.240532, 36.233383, 36.602360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946758, 36.075848, 36.381271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000375, 0.814170, -0.580627,
		0.678684, -0.426638, -0.597803,
		-0.734430, -0.393838, -0.552724,
		37.726429, 35.957695, 36.215454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445042, 36.415756, 35.901455>,  <38.240532, 36.233383, 36.602360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445042, 36.415756, 35.901455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070473, 36.288422, 35.842430>,  <37.845730, 36.212021, 35.807014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070473, 36.288422, 35.842430>,  <38.445042, 36.415756, 35.901455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070473, 36.288422, 35.842430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078292, 0.599524, -0.796518,
		0.342028, -0.734324, -0.586331,
		-0.936422, -0.318336, -0.147563,
		37.789547, 36.192921, 35.798161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419426, 36.021080, 35.293301>,  <38.445042, 36.415756, 35.901455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419426, 36.021080, 35.293301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068668, 36.189793, 35.385529>,  <37.858215, 36.291019, 35.440865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068668, 36.189793, 35.385529>,  <38.419426, 36.021080, 35.293301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068668, 36.189793, 35.385529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022900, 0.515765, -0.856424,
		-0.480146, -0.745710, -0.461928,
		-0.876890, 0.421786, 0.230566,
		37.805603, 36.316330, 35.454697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987968, 35.968674, 34.692856>,  <38.419426, 36.021080, 35.293301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987968, 35.968674, 34.692856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829102, 36.273701, 34.897110>,  <37.733780, 36.456715, 35.019665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829102, 36.273701, 34.897110>,  <37.987968, 35.968674, 34.692856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829102, 36.273701, 34.897110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056252, 0.575588, -0.815803,
		-0.916020, -0.295286, -0.271501,
		-0.397168, 0.762564, 0.510640,
		37.709949, 36.502468, 35.050301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442787, 36.198788, 34.305424>,  <37.987968, 35.968674, 34.692856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442787, 36.198788, 34.305424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.554581, 36.507347, 34.534100>,  <37.621655, 36.692482, 34.671307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.554581, 36.507347, 34.534100>,  <37.442787, 36.198788, 34.305424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554581, 36.507347, 34.534100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068128, 0.577983, -0.813200,
		-0.957731, 0.266222, 0.108981,
		0.279481, 0.771402, 0.571689,
		37.638424, 36.738770, 34.705605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069450, 36.702637, 34.056252>,  <37.442787, 36.198788, 34.305424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069450, 36.702637, 34.056252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351345, 36.921604, 34.236774>,  <37.520481, 37.052986, 34.345089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351345, 36.921604, 34.236774>,  <37.069450, 36.702637, 34.056252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351345, 36.921604, 34.236774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010597, 0.644173, -0.764806,
		-0.709392, 0.534203, 0.459772,
		0.704735, 0.547419, 0.451311,
		37.562767, 37.085831, 34.372169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857807, 37.363178, 33.929413>,  <37.069450, 36.702637, 34.056252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857807, 37.363178, 33.929413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.242393, 37.408737, 34.029507>,  <37.473145, 37.436073, 34.089561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.242393, 37.408737, 34.029507>,  <36.857807, 37.363178, 33.929413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242393, 37.408737, 34.029507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096273, 0.713047, -0.694475,
		-0.257529, 0.691803, 0.674602,
		0.961463, 0.113902, 0.250232,
		37.530830, 37.442909, 34.104576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992386, 38.050121, 34.116211>,  <36.857807, 37.363178, 33.929413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992386, 38.050121, 34.116211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351810, 37.914898, 34.004272>,  <37.567463, 37.833763, 33.937111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351810, 37.914898, 34.004272>,  <36.992386, 38.050121, 34.116211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351810, 37.914898, 34.004272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031903, 0.686304, -0.726615,
		0.437696, 0.643977, 0.627468,
		0.898557, -0.338055, -0.279847,
		37.621376, 37.813480, 33.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594189, 38.529415, 34.482330>,  <36.992386, 38.050121, 34.116211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594189, 38.529415, 34.482330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.263264, 38.705589, 34.342861>,  <36.064709, 38.811295, 34.259182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.263264, 38.705589, 34.342861>,  <36.594189, 38.529415, 34.482330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263264, 38.705589, 34.342861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559448, -0.589954, 0.582213,
		0.050729, 0.676734, 0.734478,
		-0.827311, 0.440437, -0.348670,
		36.015072, 38.837719, 34.238258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244144, 38.534847, 35.038212>,  <36.594189, 38.529415, 34.482330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244144, 38.534847, 35.038212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982948, 38.578747, 34.738461>,  <35.826233, 38.605087, 34.558609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982948, 38.578747, 34.738461>,  <36.244144, 38.534847, 35.038212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982948, 38.578747, 34.738461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531896, -0.770829, 0.350586,
		-0.539163, 0.627517, 0.561717,
		-0.652986, 0.109752, -0.749376,
		35.787052, 38.611671, 34.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572773, 38.613564, 35.278534>,  <36.244144, 38.534847, 35.038212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572773, 38.613564, 35.278534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.498665, 38.486477, 34.906570>,  <35.454201, 38.410225, 34.683392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.498665, 38.486477, 34.906570>,  <35.572773, 38.613564, 35.278534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498665, 38.486477, 34.906570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749865, -0.565886, 0.342745,
		-0.635118, 0.760808, -0.133400,
		-0.185274, -0.317716, -0.929909,
		35.443081, 38.391163, 34.627598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914013, 38.668015, 35.232807>,  <35.572773, 38.613564, 35.278534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914013, 38.668015, 35.232807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.015362, 38.404285, 34.949654>,  <35.076172, 38.246048, 34.779762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.015362, 38.404285, 34.949654>,  <34.914013, 38.668015, 35.232807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015362, 38.404285, 34.949654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662394, -0.651544, 0.369761,
		-0.705009, 0.375212, -0.601812,
		0.253369, -0.659322, -0.707883,
		35.091373, 38.206490, 34.737289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311077, 38.467144, 34.993279>,  <34.914013, 38.668015, 35.232807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311077, 38.467144, 34.993279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554073, 38.183128, 34.850842>,  <34.699871, 38.012718, 34.765381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554073, 38.183128, 34.850842>,  <34.311077, 38.467144, 34.993279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554073, 38.183128, 34.850842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738445, -0.669998, 0.076171,
		-0.292663, 0.216679, -0.931342,
		0.607493, -0.710038, -0.356089,
		34.736320, 37.970116, 34.744015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880371, 38.091732, 34.666248>,  <34.311077, 38.467144, 34.993279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880371, 38.091732, 34.666248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.188747, 37.838329, 34.692551>,  <34.373772, 37.686287, 34.708332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.188747, 37.838329, 34.692551>,  <33.880371, 38.091732, 34.666248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188747, 37.838329, 34.692551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613734, -0.711327, 0.342555,
		-0.170234, -0.304448, -0.937194,
		0.770941, -0.633503, 0.065758,
		34.420029, 37.648277, 34.712276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664383, 37.530197, 34.310688>,  <33.880371, 38.091732, 34.666248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664383, 37.530197, 34.310688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.939610, 37.432835, 34.584129>,  <34.104748, 37.374416, 34.748192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.939610, 37.432835, 34.584129>,  <33.664383, 37.530197, 34.310688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939610, 37.432835, 34.584129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552065, -0.786987, 0.275454,
		0.470937, -0.566924, -0.675881,
		0.688071, -0.243409, 0.683601,
		34.146030, 37.359814, 34.789211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820499, 36.912407, 34.264774>,  <33.664383, 37.530197, 34.310688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820499, 36.912407, 34.264774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.929497, 36.957314, 34.647007>,  <33.994896, 36.984257, 34.876347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.929497, 36.957314, 34.647007>,  <33.820499, 36.912407, 34.264774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929497, 36.957314, 34.647007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498993, -0.832676, 0.240118,
		0.822651, -0.542261, -0.170876,
		0.272491, 0.112268, 0.955586,
		34.011246, 36.990993, 34.933681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013805, 36.300976, 34.431133>,  <33.820499, 36.912407, 34.264774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013805, 36.300976, 34.431133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928608, 36.467316, 34.784790>,  <33.877491, 36.567120, 34.996983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.928608, 36.467316, 34.784790>,  <34.013805, 36.300976, 34.431133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928608, 36.467316, 34.784790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527499, -0.810633, 0.254202,
		0.822422, -0.412238, 0.392023,
		-0.212995, 0.415853, 0.884138,
		33.864708, 36.592072, 35.050030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035995, 35.697453, 34.874413>,  <34.013805, 36.300976, 34.431133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035995, 35.697453, 34.874413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.866524, 35.989353, 35.089062>,  <33.764839, 36.164494, 35.217850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.866524, 35.989353, 35.089062>,  <34.035995, 35.697453, 34.874413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866524, 35.989353, 35.089062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552284, -0.677678, 0.485526,
		0.717969, -0.090660, 0.690146,
		-0.423679, 0.729749, 0.536622,
		33.739422, 36.208279, 35.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027473, 35.408142, 35.539394>,  <34.035995, 35.697453, 34.874413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027473, 35.408142, 35.539394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746735, 35.692699, 35.524841>,  <33.578289, 35.863434, 35.516109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746735, 35.692699, 35.524841>,  <34.027473, 35.408142, 35.539394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746735, 35.692699, 35.524841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654681, -0.624085, 0.426509,
		0.280708, 0.323168, 0.903751,
		-0.701852, 0.711393, -0.036386,
		33.536179, 35.906116, 35.513924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768143, 35.332699, 36.166656>,  <34.027473, 35.408142, 35.539394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768143, 35.332699, 36.166656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.494240, 35.536263, 35.957993>,  <33.329899, 35.658401, 35.832794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.494240, 35.536263, 35.957993>,  <33.768143, 35.332699, 36.166656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494240, 35.536263, 35.957993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727874, -0.442006, 0.524242,
		0.036217, 0.738676, 0.673087,
		-0.684753, 0.508910, -0.521655,
		33.288815, 35.688934, 35.801495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.014122, 41.050140, 32.306995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688751, 41.043877, 32.074413>,  <37.493530, 41.040119, 31.934864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688751, 41.043877, 32.074413>,  <38.014122, 41.050140, 32.306995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688751, 41.043877, 32.074413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560776, -0.244380, 0.791081,
		-0.154484, 0.969553, 0.190004,
		-0.813428, -0.015660, -0.581455,
		37.444721, 41.039177, 31.899977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550541, 41.525684, 32.627045>,  <38.014122, 41.050140, 32.306995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550541, 41.525684, 32.627045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342960, 41.269886, 32.400162>,  <37.218410, 41.116405, 32.264030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342960, 41.269886, 32.400162>,  <37.550541, 41.525684, 32.627045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342960, 41.269886, 32.400162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531388, -0.278409, 0.800072,
		-0.669562, 0.716610, -0.195340,
		-0.518955, -0.639499, -0.567210,
		37.187275, 41.078037, 32.230000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814598, 41.591404, 32.849171>,  <37.550541, 41.525684, 32.627045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814598, 41.591404, 32.849171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828407, 41.245525, 32.648727>,  <36.836693, 41.037998, 32.528461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828407, 41.245525, 32.648727>,  <36.814598, 41.591404, 32.849171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828407, 41.245525, 32.648727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484786, -0.452958, 0.748206,
		-0.873952, 0.217104, -0.434827,
		0.034519, -0.864694, -0.501112,
		36.838764, 40.986118, 32.498394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025375, 41.252548, 32.816456>,  <36.814598, 41.591404, 32.849171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025375, 41.252548, 32.816456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293003, 40.963085, 32.748734>,  <36.453579, 40.789406, 32.708099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293003, 40.963085, 32.748734>,  <36.025375, 41.252548, 32.816456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293003, 40.963085, 32.748734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461107, -0.582858, 0.669072,
		-0.582858, -0.369590, -0.723657,
		-0.669072, 0.723657, 0.169303,
		36.493725, 40.745987, 32.697941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578587, 40.619987, 32.667923>,  <36.025375, 41.252548, 32.816456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578587, 40.619987, 32.667923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951756, 40.513882, 32.765327>,  <36.175655, 40.450218, 32.823769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951756, 40.513882, 32.765327>,  <35.578587, 40.619987, 32.667923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951756, 40.513882, 32.765327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360023, -0.674552, 0.644487,
		-0.006700, -0.688923, -0.724804,
		0.932919, -0.265264, 0.243509,
		36.231632, 40.434303, 32.838379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627548, 39.910103, 32.617779>,  <35.578587, 40.619987, 32.667923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627548, 39.910103, 32.617779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927372, 39.987595, 32.870960>,  <36.107265, 40.034088, 33.022869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927372, 39.987595, 32.870960>,  <35.627548, 39.910103, 32.617779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927372, 39.987595, 32.870960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263350, -0.790007, 0.553657,
		0.607299, -0.581686, -0.541136,
		0.749556, 0.193727, 0.632958,
		36.152237, 40.045712, 33.060848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967232, 39.263527, 32.786625>,  <35.627548, 39.910103, 32.617779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967232, 39.263527, 32.786625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113411, 39.481853, 33.088230>,  <36.201118, 39.612850, 33.269192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113411, 39.481853, 33.088230>,  <35.967232, 39.263527, 32.786625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113411, 39.481853, 33.088230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237541, -0.728534, 0.642504,
		0.900013, -0.413909, -0.136585,
		0.365445, 0.545818, 0.754011,
		36.223045, 39.645599, 33.314434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364040, 38.839603, 33.065975>,  <35.967232, 39.263527, 32.786625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364040, 38.839603, 33.065975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268612, 39.120689, 33.334087>,  <36.211353, 39.289341, 33.494953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268612, 39.120689, 33.334087>,  <36.364040, 38.839603, 33.065975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268612, 39.120689, 33.334087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205762, -0.711117, 0.672290,
		0.949075, 0.022474, 0.314247,
		-0.238576, 0.702714, 0.670279,
		36.197041, 39.331505, 33.535172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700634, 38.621532, 33.705677>,  <36.364040, 38.839603, 33.065975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700634, 38.621532, 33.705677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415058, 38.878601, 33.816864>,  <36.243713, 39.032841, 33.883575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415058, 38.878601, 33.816864>,  <36.700634, 38.621532, 33.705677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415058, 38.878601, 33.816864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323202, -0.654622, 0.683382,
		0.621155, 0.398052, 0.675072,
		-0.713938, 0.642671, 0.277970,
		36.200878, 39.071404, 33.900253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438717, 38.734097, 33.919250>,  <36.700634, 38.621532, 33.705677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438717, 38.734097, 33.919250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653370, 38.433613, 33.765518>,  <37.782162, 38.253323, 33.673279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653370, 38.433613, 33.765518>,  <37.438717, 38.734097, 33.919250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653370, 38.433613, 33.765518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387716, 0.624050, -0.678408,
		0.749468, 0.215045, 0.626142,
		0.536632, -0.751210, -0.384329,
		37.814358, 38.208248, 33.650219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167576, 39.061119, 33.638634>,  <37.438717, 38.734097, 33.919250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167576, 39.061119, 33.638634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084236, 38.708481, 33.469219>,  <38.034233, 38.496899, 33.367573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084236, 38.708481, 33.469219>,  <38.167576, 39.061119, 33.638634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084236, 38.708481, 33.469219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447080, 0.299298, -0.842935,
		0.869890, -0.364982, 0.331784,
		-0.208354, -0.881595, -0.423533,
		38.021729, 38.444004, 33.342159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829063, 38.867294, 33.354023>,  <38.167576, 39.061119, 33.638634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829063, 38.867294, 33.354023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562675, 38.646786, 33.152992>,  <38.402843, 38.514481, 33.032375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562675, 38.646786, 33.152992>,  <38.829063, 38.867294, 33.354023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562675, 38.646786, 33.152992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474117, 0.207346, -0.855699,
		0.575927, -0.808153, 0.123279,
		-0.665974, -0.551269, -0.502575,
		38.362885, 38.481403, 33.002220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185253, 38.363258, 32.958614>,  <38.829063, 38.867294, 33.354023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185253, 38.363258, 32.958614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839417, 38.401497, 32.761292>,  <38.631916, 38.424438, 32.642899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839417, 38.401497, 32.761292>,  <39.185253, 38.363258, 32.958614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839417, 38.401497, 32.761292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501723, 0.110263, -0.857972,
		-0.027622, -0.989295, -0.143293,
		-0.864587, 0.095593, -0.493306,
		38.580040, 38.430176, 32.613300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367367, 38.151283, 32.366535>,  <39.185253, 38.363258, 32.958614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367367, 38.151283, 32.366535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014679, 38.323170, 32.288658>,  <38.803066, 38.426304, 32.241932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014679, 38.323170, 32.288658>,  <39.367367, 38.151283, 32.366535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014679, 38.323170, 32.288658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350693, 0.320970, -0.879769,
		-0.315561, -0.843991, -0.433706,
		-0.881723, 0.429718, -0.194696,
		38.750160, 38.452084, 32.230247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327164, 38.055210, 31.701637>,  <39.367367, 38.151283, 32.366535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327164, 38.055210, 31.701637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093872, 38.372459, 31.771828>,  <38.953896, 38.562809, 31.813942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093872, 38.372459, 31.771828>,  <39.327164, 38.055210, 31.701637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093872, 38.372459, 31.771828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289947, 0.405056, -0.867099,
		-0.758798, -0.454838, -0.466205,
		-0.583229, 0.793128, 0.175477,
		38.918903, 38.610397, 31.824471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890102, 38.136711, 31.180840>,  <39.327164, 38.055210, 31.701637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890102, 38.136711, 31.180840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907959, 38.497238, 31.353178>,  <38.918671, 38.713554, 31.456581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907959, 38.497238, 31.353178>,  <38.890102, 38.136711, 31.180840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907959, 38.497238, 31.353178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249268, 0.407586, -0.878487,
		-0.967405, 0.146610, -0.206476,
		0.044638, 0.901321, 0.430846,
		38.921349, 38.767635, 31.482431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458252, 38.570045, 30.812840>,  <38.890102, 38.136711, 31.180840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458252, 38.570045, 30.812840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716454, 38.812546, 30.998653>,  <38.871372, 38.958046, 31.110142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716454, 38.812546, 30.998653>,  <38.458252, 38.570045, 30.812840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716454, 38.812546, 30.998653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280894, 0.377150, -0.882528,
		-0.710229, 0.700158, 0.073160,
		0.645502, 0.606247, 0.464533,
		38.910103, 38.994419, 31.138014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597084, 39.056297, 30.265955>,  <38.458252, 38.570045, 30.812840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597084, 39.056297, 30.265955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861244, 39.187962, 30.535925>,  <39.019741, 39.266960, 30.697906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861244, 39.187962, 30.535925>,  <38.597084, 39.056297, 30.265955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861244, 39.187962, 30.535925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467682, 0.522895, -0.712639,
		-0.587490, 0.786277, 0.191376,
		0.660401, 0.329165, 0.674923,
		39.059364, 39.286713, 30.738401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682674, 39.789257, 30.145113>,  <38.597084, 39.056297, 30.265955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682674, 39.789257, 30.145113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001434, 39.622280, 30.319784>,  <39.192692, 39.522095, 30.424587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001434, 39.622280, 30.319784>,  <38.682674, 39.789257, 30.145113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001434, 39.622280, 30.319784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578268, 0.317962, -0.751336,
		0.174796, 0.851257, 0.494780,
		0.796902, -0.417446, 0.436676,
		39.240505, 39.497047, 30.450787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119194, 40.301456, 30.389006>,  <38.682674, 39.789257, 30.145113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119194, 40.301456, 30.389006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355385, 39.981865, 30.343470>,  <39.497101, 39.790108, 30.316149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355385, 39.981865, 30.343470>,  <39.119194, 40.301456, 30.389006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355385, 39.981865, 30.343470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499825, 0.472788, -0.725704,
		0.633648, 0.371614, 0.678523,
		0.590480, -0.798983, -0.113839,
		39.532528, 39.742168, 30.309319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818569, 40.610004, 30.157127>,  <39.119194, 40.301456, 30.389006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818569, 40.610004, 30.157127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830467, 40.219398, 30.071777>,  <39.837605, 39.985035, 30.020567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830467, 40.219398, 30.071777>,  <39.818569, 40.610004, 30.157127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830467, 40.219398, 30.071777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489122, 0.200385, -0.848885,
		0.871708, -0.079115, 0.483597,
		0.029746, -0.976518, -0.213374,
		39.839390, 39.926445, 30.007765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549576, 40.557167, 29.838945>,  <39.818569, 40.610004, 30.157127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549576, 40.557167, 29.838945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329826, 40.239899, 29.733814>,  <40.197979, 40.049538, 29.670736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329826, 40.239899, 29.733814>,  <40.549576, 40.557167, 29.838945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329826, 40.239899, 29.733814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350238, 0.066996, -0.934262,
		0.758636, -0.605306, 0.240992,
		-0.549369, -0.793169, -0.262826,
		40.165016, 40.001949, 29.654966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986595, 40.118847, 29.542366>,  <40.549576, 40.557167, 29.838945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986595, 40.118847, 29.542366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637985, 40.000168, 29.386208>,  <40.428818, 39.928959, 29.292513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637985, 40.000168, 29.386208>,  <40.986595, 40.118847, 29.542366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637985, 40.000168, 29.386208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386216, 0.075183, -0.919339,
		0.302121, -0.952006, 0.049067,
		-0.871528, -0.296702, -0.390394,
		40.376526, 39.911156, 29.269089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.282108, 40.111038, 25.787516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631763, 40.168472, 25.973101>,  <34.841557, 40.202930, 26.084452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.631763, 40.168472, 25.973101>,  <34.282108, 40.111038, 25.787516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631763, 40.168472, 25.973101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160036, -0.816791, 0.554294,
		0.458545, -0.558782, -0.691013,
		0.874142, 0.143582, 0.463961,
		34.894005, 40.211548, 26.112289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438717, 39.450104, 26.010483>,  <34.282108, 40.111038, 25.787516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438717, 39.450104, 26.010483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688896, 39.659729, 26.241714>,  <34.839005, 39.785503, 26.380453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688896, 39.659729, 26.241714>,  <34.438717, 39.450104, 26.010483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688896, 39.659729, 26.241714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124153, -0.664596, 0.736816,
		0.770325, -0.532611, -0.350607,
		0.625448, 0.524059, 0.578080,
		34.876530, 39.816948, 26.415138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943092, 38.903915, 26.326925>,  <34.438717, 39.450104, 26.010483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943092, 38.903915, 26.326925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966984, 39.249088, 26.527639>,  <34.981319, 39.456192, 26.648067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966984, 39.249088, 26.527639>,  <34.943092, 38.903915, 26.326925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966984, 39.249088, 26.527639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235572, -0.500668, 0.832969,
		0.970020, 0.068455, -0.233185,
		0.059728, 0.862928, 0.501784,
		34.984901, 39.507965, 26.678175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492580, 38.876774, 26.771215>,  <34.943092, 38.903915, 26.326925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492580, 38.876774, 26.771215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.270229, 39.158821, 26.947311>,  <35.136818, 39.328049, 27.052969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.270229, 39.158821, 26.947311>,  <35.492580, 38.876774, 26.771215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270229, 39.158821, 26.947311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115439, -0.458989, 0.880910,
		0.823211, 0.540497, 0.173742,
		-0.555876, 0.705118, 0.440239,
		35.103466, 39.370358, 27.079384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876976, 39.031815, 27.378168>,  <35.492580, 38.876774, 26.771215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876976, 39.031815, 27.378168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491966, 39.130852, 27.422443>,  <35.260960, 39.190273, 27.449009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491966, 39.130852, 27.422443>,  <35.876976, 39.031815, 27.378168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491966, 39.130852, 27.422443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009723, -0.439369, 0.898254,
		0.271033, 0.863512, 0.425309,
		-0.962521, 0.247592, 0.110688,
		35.203209, 39.205128, 27.455650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884178, 39.334881, 28.080437>,  <35.876976, 39.031815, 27.378168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884178, 39.334881, 28.080437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527424, 39.192799, 27.968464>,  <35.313370, 39.107552, 27.901279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527424, 39.192799, 27.968464>,  <35.884178, 39.334881, 28.080437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527424, 39.192799, 27.968464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039318, -0.677533, 0.734441,
		-0.450540, 0.644034, 0.618251,
		-0.891890, -0.355203, -0.279933,
		35.259857, 39.086239, 27.884483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568665, 39.173813, 28.730286>,  <35.884178, 39.334881, 28.080437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568665, 39.173813, 28.730286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296654, 39.015045, 28.483702>,  <35.133450, 38.919785, 28.335751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296654, 39.015045, 28.483702>,  <35.568665, 39.173813, 28.730286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296654, 39.015045, 28.483702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306233, -0.610181, 0.730685,
		-0.666175, 0.685663, 0.293387,
		-0.680023, -0.396920, -0.616460,
		35.092648, 38.895969, 28.298763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077309, 38.984482, 29.131191>,  <35.568665, 39.173813, 28.730286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077309, 38.984482, 29.131191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956680, 38.783836, 28.806862>,  <34.884304, 38.663448, 28.612265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956680, 38.783836, 28.806862>,  <35.077309, 38.984482, 29.131191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956680, 38.783836, 28.806862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429121, -0.688004, 0.585240,
		-0.851416, 0.524433, -0.007773,
		-0.301571, -0.501618, -0.810823,
		34.866207, 38.633350, 28.563616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418613, 38.791515, 29.290524>,  <35.077309, 38.984482, 29.131191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418613, 38.791515, 29.290524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.530479, 38.536575, 29.003309>,  <34.597599, 38.383610, 28.830980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.530479, 38.536575, 29.003309>,  <34.418613, 38.791515, 29.290524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530479, 38.536575, 29.003309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221635, -0.770534, 0.597625,
		-0.934167, -0.007992, -0.356748,
		0.279662, -0.637349, -0.718036,
		34.614380, 38.345371, 28.787899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794037, 38.368725, 29.193714>,  <34.418613, 38.791515, 29.290524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794037, 38.368725, 29.193714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.064404, 38.154377, 28.991335>,  <34.226624, 38.025768, 28.869907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.064404, 38.154377, 28.991335>,  <33.794037, 38.368725, 29.193714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064404, 38.154377, 28.991335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442147, -0.844095, 0.303329,
		-0.589613, 0.018679, -0.807470,
		0.675916, -0.535867, -0.505949,
		34.267178, 37.993618, 28.839550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479084, 37.929546, 28.625992>,  <33.794037, 38.368725, 29.193714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479084, 37.929546, 28.625992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818027, 37.780220, 28.777048>,  <34.021393, 37.690624, 28.867682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818027, 37.780220, 28.777048>,  <33.479084, 37.929546, 28.625992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818027, 37.780220, 28.777048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415071, -0.909207, 0.032546,
		0.331205, -0.184327, -0.925379,
		0.847360, -0.373319, 0.377642,
		34.072235, 37.668224, 28.890341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431076, 37.321499, 28.395847>,  <33.479084, 37.929546, 28.625992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431076, 37.321499, 28.395847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.673859, 37.323143, 28.713736>,  <33.819530, 37.324131, 28.904469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.673859, 37.323143, 28.713736>,  <33.431076, 37.321499, 28.395847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673859, 37.323143, 28.713736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419000, -0.848062, 0.324392,
		0.675307, -0.529881, -0.513016,
		0.606959, 0.004110, 0.794722,
		33.855946, 37.324375, 28.952152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505096, 36.615841, 28.484184>,  <33.431076, 37.321499, 28.395847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505096, 36.615841, 28.484184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643723, 36.771057, 28.825785>,  <33.726898, 36.864185, 29.030745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643723, 36.771057, 28.825785>,  <33.505096, 36.615841, 28.484184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643723, 36.771057, 28.825785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497577, -0.695730, 0.518052,
		0.795178, -0.604470, -0.048037,
		0.346568, 0.388041, 0.853999,
		33.747692, 36.887470, 29.081984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896843, 36.121326, 28.804146>,  <33.505096, 36.615841, 28.484184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896843, 36.121326, 28.804146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.795105, 36.366116, 29.103691>,  <33.734062, 36.512989, 29.283419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.795105, 36.366116, 29.103691>,  <33.896843, 36.121326, 28.804146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795105, 36.366116, 29.103691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345901, -0.780672, 0.520484,
		0.903138, -0.126647, 0.410245,
		-0.254349, 0.611974, 0.748862,
		33.718800, 36.549709, 29.328350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584595, 35.871513, 29.110344>,  <33.896843, 36.121326, 28.804146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584595, 35.871513, 29.110344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.819637, 35.591251, 28.948460>,  <34.960663, 35.423092, 28.851328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.819637, 35.591251, 28.948460>,  <34.584595, 35.871513, 29.110344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819637, 35.591251, 28.948460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215277, 0.617522, -0.756520,
		0.779980, 0.357414, 0.513698,
		0.587611, -0.700658, -0.404712,
		34.995922, 35.381054, 28.827045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190922, 36.187878, 29.016401>,  <34.584595, 35.871513, 29.110344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190922, 36.187878, 29.016401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.230774, 35.877125, 28.767715>,  <35.254684, 35.690674, 28.618504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.230774, 35.877125, 28.767715>,  <35.190922, 36.187878, 29.016401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230774, 35.877125, 28.767715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168651, 0.628969, -0.758917,
		0.980628, -0.029242, 0.193686,
		0.099630, -0.776880, -0.621716,
		35.260662, 35.644062, 28.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871399, 36.313446, 28.740904>,  <35.190922, 36.187878, 29.016401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871399, 36.313446, 28.740904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686409, 36.060062, 28.492760>,  <35.575413, 35.908031, 28.343872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686409, 36.060062, 28.492760>,  <35.871399, 36.313446, 28.740904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686409, 36.060062, 28.492760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255457, 0.574814, -0.777387,
		0.849033, -0.518000, -0.104018,
		-0.462477, -0.633455, -0.620362,
		35.547665, 35.870026, 28.306650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256317, 36.170982, 28.275993>,  <35.871399, 36.313446, 28.740904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256317, 36.170982, 28.275993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934170, 36.055332, 28.069000>,  <35.740883, 35.985943, 27.944803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934170, 36.055332, 28.069000>,  <36.256317, 36.170982, 28.275993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934170, 36.055332, 28.069000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398756, 0.381698, -0.833847,
		0.438608, -0.877903, -0.192117,
		-0.805367, -0.289124, -0.517485,
		35.692558, 35.968594, 27.913755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433193, 35.736462, 27.660198>,  <36.256317, 36.170982, 28.275993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433193, 35.736462, 27.660198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072235, 35.881042, 27.566355>,  <35.855659, 35.967793, 27.510050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072235, 35.881042, 27.566355>,  <36.433193, 35.736462, 27.660198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072235, 35.881042, 27.566355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390104, 0.453958, -0.801088,
		-0.183056, -0.814415, -0.550653,
		-0.902391, 0.361455, -0.234607,
		35.801517, 35.989479, 27.495974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323994, 35.606716, 26.909048>,  <36.433193, 35.736462, 27.660198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323994, 35.606716, 26.909048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035835, 35.868443, 27.001053>,  <35.862942, 36.025478, 27.056255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035835, 35.868443, 27.001053>,  <36.323994, 35.606716, 26.909048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035835, 35.868443, 27.001053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193430, 0.508021, -0.839345,
		-0.666044, -0.560170, -0.492539,
		-0.720396, 0.654312, 0.230011,
		35.819717, 36.064735, 27.070057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931286, 35.565060, 26.314114>,  <36.323994, 35.606716, 26.909048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931286, 35.565060, 26.314114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873520, 35.915577, 26.497961>,  <35.838860, 36.125889, 26.608271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873520, 35.915577, 26.497961>,  <35.931286, 35.565060, 26.314114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873520, 35.915577, 26.497961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084377, 0.451892, -0.888073,
		-0.985913, -0.167033, 0.008679,
		-0.144416, 0.876295, 0.459620,
		35.830196, 36.178467, 26.635847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323681, 35.849640, 26.023466>,  <35.931286, 35.565060, 26.314114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323681, 35.849640, 26.023466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.536995, 36.144413, 26.189615>,  <35.664986, 36.321278, 26.289305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.536995, 36.144413, 26.189615>,  <35.323681, 35.849640, 26.023466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536995, 36.144413, 26.189615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015230, 0.482579, -0.875720,
		-0.845797, 0.473336, 0.246130,
		0.533287, 0.736933, 0.415373,
		35.696980, 36.365494, 26.314228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015171, 36.422726, 25.828943>,  <35.323681, 35.849640, 26.023466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015171, 36.422726, 25.828943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.381237, 36.560020, 25.913479>,  <35.600876, 36.642399, 25.964201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.381237, 36.560020, 25.913479>,  <35.015171, 36.422726, 25.828943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381237, 36.560020, 25.913479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039497, 0.598142, -0.800416,
		-0.401146, 0.724163, 0.560955,
		0.915163, 0.343239, 0.211340,
		35.655785, 36.662991, 25.976881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953239, 37.170681, 25.758625>,  <35.015171, 36.422726, 25.828943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953239, 37.170681, 25.758625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348167, 37.108650, 25.745031>,  <35.585125, 37.071430, 25.736876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348167, 37.108650, 25.745031>,  <34.953239, 37.170681, 25.758625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348167, 37.108650, 25.745031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072197, 0.629243, -0.773848,
		0.141392, 0.761580, 0.632459,
		0.987318, -0.155077, -0.033986,
		35.644363, 37.062126, 25.734835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238152, 37.901947, 25.730894>,  <34.953239, 37.170681, 25.758625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238152, 37.901947, 25.730894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546524, 37.672791, 25.619568>,  <35.731548, 37.535297, 25.552773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546524, 37.672791, 25.619568>,  <35.238152, 37.901947, 25.730894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546524, 37.672791, 25.619568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291339, 0.705772, -0.645762,
		0.566378, 0.416755, 0.711008,
		0.770933, -0.572889, -0.278316,
		35.777805, 37.500923, 25.536074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858658, 38.326820, 25.791042>,  <35.238152, 37.901947, 25.730894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858658, 38.326820, 25.791042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917629, 38.028214, 25.531511>,  <35.953014, 37.849049, 25.375792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917629, 38.028214, 25.531511>,  <35.858658, 38.326820, 25.791042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917629, 38.028214, 25.531511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438636, 0.637307, -0.633591,
		0.886489, -0.191189, 0.421408,
		0.147431, -0.746516, -0.648828,
		35.961857, 37.804260, 25.336863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518147, 38.415852, 25.594625>,  <35.858658, 38.326820, 25.791042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518147, 38.415852, 25.594625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.332157, 38.207436, 25.308319>,  <36.220566, 38.082386, 25.136536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.332157, 38.207436, 25.308319>,  <36.518147, 38.415852, 25.594625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332157, 38.207436, 25.308319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294826, 0.671203, -0.680121,
		0.834794, -0.527262, -0.158473,
		-0.464970, -0.521039, -0.715766,
		36.192665, 38.051125, 25.093590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054718, 38.166065, 25.087427>,  <36.518147, 38.415852, 25.594625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054718, 38.166065, 25.087427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694859, 38.181156, 24.913439>,  <36.478943, 38.190212, 24.809046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694859, 38.181156, 24.913439>,  <37.054718, 38.166065, 25.087427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694859, 38.181156, 24.913439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374417, 0.579119, -0.724177,
		0.224579, -0.814369, -0.535132,
		-0.899653, 0.037728, -0.434972,
		36.424961, 38.192474, 24.782948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678833, 37.754295, 25.337034>,  <37.054718, 38.166065, 25.087427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678833, 37.754295, 25.337034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983765, 37.962368, 25.491053>,  <38.166725, 38.087212, 25.583464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983765, 37.962368, 25.491053>,  <37.678833, 37.754295, 25.337034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983765, 37.962368, 25.491053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268203, -0.287533, 0.919452,
		0.588997, -0.804197, -0.079680,
		0.762332, 0.520184, 0.385044,
		38.212463, 38.118423, 25.606565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024017, 37.290031, 25.700563>,  <37.678833, 37.754295, 25.337034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024017, 37.290031, 25.700563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122337, 37.645355, 25.855738>,  <38.181328, 37.858551, 25.948841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122337, 37.645355, 25.855738>,  <38.024017, 37.290031, 25.700563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122337, 37.645355, 25.855738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229165, -0.335613, 0.913700,
		0.941843, -0.313485, 0.121076,
		0.245797, 0.888308, 0.387934,
		38.196075, 37.911846, 25.972118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364780, 37.118954, 26.337132>,  <38.024017, 37.290031, 25.700563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364780, 37.118954, 26.337132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246544, 37.499763, 26.368830>,  <38.175602, 37.728249, 26.387850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246544, 37.499763, 26.368830>,  <38.364780, 37.118954, 26.337132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246544, 37.499763, 26.368830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194954, -0.141324, 0.970577,
		0.935209, 0.271448, 0.227375,
		-0.295595, 0.952021, 0.079248,
		38.157864, 37.785370, 26.392605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771664, 37.270847, 26.892822>,  <38.364780, 37.118954, 26.337132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771664, 37.270847, 26.892822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508766, 37.570862, 26.863220>,  <38.351028, 37.750870, 26.845459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508766, 37.570862, 26.863220>,  <38.771664, 37.270847, 26.892822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508766, 37.570862, 26.863220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113554, -0.001473, 0.993531,
		0.745073, 0.661398, 0.086137,
		-0.657246, 0.750034, -0.074007,
		38.311592, 37.795872, 26.841019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848907, 37.701847, 27.500950>,  <38.771664, 37.270847, 26.892822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848907, 37.701847, 27.500950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477428, 37.801506, 27.391077>,  <38.254543, 37.861301, 27.325153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477428, 37.801506, 27.391077>,  <38.848907, 37.701847, 27.500950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477428, 37.801506, 27.391077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328430, -0.208601, 0.921205,
		0.172215, 0.945734, 0.275554,
		-0.928696, 0.249145, -0.274683,
		38.198818, 37.876251, 27.308672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590309, 38.184494, 27.993013>,  <38.848907, 37.701847, 27.500950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590309, 38.184494, 27.993013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259663, 38.026516, 27.832651>,  <38.061275, 37.931728, 27.736435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259663, 38.026516, 27.832651>,  <38.590309, 38.184494, 27.993013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259663, 38.026516, 27.832651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375203, -0.144182, 0.915661,
		-0.419443, 0.907318, -0.029003,
		-0.826614, -0.394950, -0.400905,
		38.011677, 37.908031, 27.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805710, 38.555237, 28.063488>,  <38.590309, 38.184494, 27.993013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805710, 38.555237, 28.063488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818130, 38.156143, 28.039595>,  <37.825584, 37.916687, 28.025259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818130, 38.156143, 28.039595>,  <37.805710, 38.555237, 28.063488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818130, 38.156143, 28.039595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300273, -0.066313, 0.951545,
		-0.953348, -0.011611, -0.301651,
		0.031052, -0.997731, -0.059733,
		37.827446, 37.856823, 28.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474270, 38.439854, 28.664804>,  <37.805710, 38.555237, 28.063488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474270, 38.439854, 28.664804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537582, 38.077839, 28.506895>,  <37.575569, 37.860630, 28.412149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537582, 38.077839, 28.506895>,  <37.474270, 38.439854, 28.664804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537582, 38.077839, 28.506895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381433, -0.424824, 0.820996,
		-0.910745, 0.020631, -0.412454,
		0.158283, -0.905041, -0.394775,
		37.585068, 37.806328, 28.388462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936100, 38.085903, 28.868551>,  <37.474270, 38.439854, 28.664804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936100, 38.085903, 28.868551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215782, 37.814774, 28.777630>,  <37.383591, 37.652096, 28.723078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215782, 37.814774, 28.777630>,  <36.936100, 38.085903, 28.868551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215782, 37.814774, 28.777630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239385, -0.521566, 0.818941,
		-0.673649, -0.518197, -0.526943,
		0.699208, -0.677821, -0.227304,
		37.425545, 37.611427, 28.709438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615753, 37.388374, 28.821274>,  <36.936100, 38.085903, 28.868551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615753, 37.388374, 28.821274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004391, 37.317757, 28.884315>,  <37.237572, 37.275387, 28.922140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004391, 37.317757, 28.884315>,  <36.615753, 37.388374, 28.821274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004391, 37.317757, 28.884315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236036, -0.674506, 0.699520,
		-0.017194, -0.716849, -0.697016,
		0.971592, -0.176549, 0.157605,
		37.295868, 37.264793, 28.931597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804562, 36.666595, 28.780872>,  <36.615753, 37.388374, 28.821274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804562, 36.666595, 28.780872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105190, 36.828384, 28.989311>,  <37.285568, 36.925457, 29.114374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105190, 36.828384, 28.989311>,  <36.804562, 36.666595, 28.780872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105190, 36.828384, 28.989311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241378, -0.566545, 0.787885,
		0.613906, -0.717932, -0.328167,
		0.751570, 0.404475, 0.521098,
		37.330662, 36.949726, 29.145641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066891, 36.086819, 29.206415>,  <36.804562, 36.666595, 28.780872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066891, 36.086819, 29.206415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228954, 36.413181, 29.371410>,  <37.326191, 36.608997, 29.470407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.228954, 36.413181, 29.371410>,  <37.066891, 36.086819, 29.206415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228954, 36.413181, 29.371410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153369, -0.384127, 0.910453,
		0.901290, -0.432141, -0.030498,
		0.405159, 0.815905, 0.412487,
		37.350502, 36.657951, 29.495157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610741, 35.861210, 29.635481>,  <37.066891, 36.086819, 29.206415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610741, 35.861210, 29.635481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526550, 36.221279, 29.788004>,  <37.476036, 36.437321, 29.879517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526550, 36.221279, 29.788004>,  <37.610741, 35.861210, 29.635481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526550, 36.221279, 29.788004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094571, -0.406962, 0.908536,
		0.973014, 0.155164, 0.170786,
		-0.210475, 0.900170, 0.381305,
		37.463409, 36.491329, 29.902395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010593, 35.812454, 30.263809>,  <37.610741, 35.861210, 29.635481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010593, 35.812454, 30.263809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739704, 36.104694, 30.298666>,  <37.577171, 36.280037, 30.319580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739704, 36.104694, 30.298666>,  <38.010593, 35.812454, 30.263809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739704, 36.104694, 30.298666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033469, -0.148899, 0.988286,
		0.735017, 0.666373, 0.125290,
		-0.677222, 0.730600, 0.087141,
		37.536537, 36.323875, 30.324808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.210732, 39.670002, 28.981867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822174, 39.732479, 28.910315>,  <40.589039, 39.769966, 28.867384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822174, 39.732479, 28.910315>,  <41.210732, 39.670002, 28.981867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822174, 39.732479, 28.910315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184928, 0.024971, -0.982435,
		-0.148980, -0.987411, -0.053141,
		-0.971394, 0.156190, -0.178880,
		40.530754, 39.779335, 28.856651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096584, 39.144318, 28.515141>,  <41.210732, 39.670002, 28.981867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096584, 39.144318, 28.515141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834797, 39.446228, 28.497309>,  <40.677723, 39.627373, 28.486609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834797, 39.446228, 28.497309>,  <41.096584, 39.144318, 28.515141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834797, 39.446228, 28.497309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346234, 0.246762, -0.905114,
		-0.672154, -0.607805, -0.422826,
		-0.654470, 0.754772, -0.044581,
		40.638454, 39.672661, 28.483934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884937, 39.112789, 27.794701>,  <41.096584, 39.144318, 28.515141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884937, 39.112789, 27.794701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.817017, 39.469563, 27.962332>,  <40.776264, 39.683628, 28.062910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.817017, 39.469563, 27.962332>,  <40.884937, 39.112789, 27.794701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817017, 39.469563, 27.962332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216175, 0.448606, -0.867192,
		-0.961477, -0.056652, -0.268986,
		-0.169797, 0.891932, 0.419077,
		40.766079, 39.737141, 28.088055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445587, 39.472809, 27.251041>,  <40.884937, 39.112789, 27.794701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445587, 39.472809, 27.251041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.609486, 39.757404, 27.479389>,  <40.707825, 39.928162, 27.616398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.609486, 39.757404, 27.479389>,  <40.445587, 39.472809, 27.251041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609486, 39.757404, 27.479389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161314, 0.559438, -0.813023,
		-0.897824, 0.425220, 0.114452,
		0.409743, 0.711489, 0.570872,
		40.732407, 39.970852, 27.650650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114620, 40.046932, 26.914936>,  <40.445587, 39.472809, 27.251041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114620, 40.046932, 26.914936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422306, 40.179165, 27.133669>,  <40.606918, 40.258503, 27.264910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422306, 40.179165, 27.133669>,  <40.114620, 40.046932, 26.914936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422306, 40.179165, 27.133669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306336, 0.560243, -0.769602,
		-0.560776, 0.759502, 0.329677,
		0.769213, 0.330582, 0.546833,
		40.653069, 40.278339, 27.297718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138397, 40.743111, 26.850262>,  <40.114620, 40.046932, 26.914936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138397, 40.743111, 26.850262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511772, 40.666401, 26.971537>,  <40.735798, 40.620373, 27.044302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511772, 40.666401, 26.971537>,  <40.138397, 40.743111, 26.850262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511772, 40.666401, 26.971537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357252, 0.574043, -0.736780,
		-0.032744, 0.796050, 0.604344,
		0.933434, -0.191778, 0.303187,
		40.791801, 40.608868, 27.062492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398735, 41.420685, 26.724094>,  <40.138397, 40.743111, 26.850262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398735, 41.420685, 26.724094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.712276, 41.172424, 26.731703>,  <40.900402, 41.023468, 26.736267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.712276, 41.172424, 26.731703>,  <40.398735, 41.420685, 26.724094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712276, 41.172424, 26.731703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371455, 0.444142, -0.815328,
		0.497591, 0.646161, 0.578687,
		0.783853, -0.620655, 0.019019,
		40.947433, 40.986229, 26.737408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976738, 41.843563, 26.666925>,  <40.398735, 41.420685, 26.724094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976738, 41.843563, 26.666925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.110424, 41.489994, 26.536091>,  <41.190636, 41.277855, 26.457590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.110424, 41.489994, 26.536091>,  <40.976738, 41.843563, 26.666925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110424, 41.489994, 26.536091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275706, 0.423552, -0.862896,
		0.901269, 0.198214, 0.385260,
		0.334215, -0.883920, -0.327085,
		41.210690, 41.224819, 26.437965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469582, 41.947891, 26.136927>,  <40.976738, 41.843563, 26.666925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469582, 41.947891, 26.136927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.411018, 41.555817, 26.083570>,  <41.375881, 41.320572, 26.051556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.411018, 41.555817, 26.083570>,  <41.469582, 41.947891, 26.136927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411018, 41.555817, 26.083570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133662, 0.114006, -0.984447,
		0.980152, -0.161965, 0.114322,
		-0.146412, -0.980189, -0.133392,
		41.367096, 41.261761, 26.043552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086884, 41.747742, 25.770945>,  <41.469582, 41.947891, 26.136927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086884, 41.747742, 25.770945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.785404, 41.492767, 25.706938>,  <41.604515, 41.339783, 25.668533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.785404, 41.492767, 25.706938>,  <42.086884, 41.747742, 25.770945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785404, 41.492767, 25.706938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004769, 0.248772, -0.968550,
		0.657198, -0.729236, -0.190540,
		-0.753702, -0.637438, -0.160015,
		41.559292, 41.301537, 25.658934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187092, 41.420647, 25.081074>,  <42.086884, 41.747742, 25.770945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187092, 41.420647, 25.081074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.798904, 41.382736, 25.169800>,  <41.565990, 41.359989, 25.223036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.798904, 41.382736, 25.169800>,  <42.187092, 41.420647, 25.081074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798904, 41.382736, 25.169800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239799, 0.279674, -0.929666,
		0.026072, -0.955406, -0.294143,
		-0.970472, -0.094773, 0.221814,
		41.507763, 41.354305, 25.236343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919502, 41.260422, 24.440807>,  <42.187092, 41.420647, 25.081074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919502, 41.260422, 24.440807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.596958, 41.359428, 24.655663>,  <41.403431, 41.418831, 24.784576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.596958, 41.359428, 24.655663>,  <41.919502, 41.260422, 24.440807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596958, 41.359428, 24.655663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240640, 0.692327, -0.680277,
		-0.540255, -0.677806, -0.498703,
		-0.806360, 0.247515, 0.537140,
		41.355049, 41.433681, 24.816805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541363, 41.556293, 24.025635>,  <41.919502, 41.260422, 24.440807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541363, 41.556293, 24.025635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285633, 41.625973, 24.325212>,  <41.132195, 41.667782, 24.504959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285633, 41.625973, 24.325212>,  <41.541363, 41.556293, 24.025635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285633, 41.625973, 24.325212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445856, 0.709572, -0.545637,
		-0.626480, -0.682761, -0.375979,
		-0.639323, 0.174198, 0.748946,
		41.093838, 41.678230, 24.549896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785782, 41.609104, 23.793064>,  <41.541363, 41.556293, 24.025635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785782, 41.609104, 23.793064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.827450, 41.850113, 24.109573>,  <40.852451, 41.994720, 24.299479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.827450, 41.850113, 24.109573>,  <40.785782, 41.609104, 23.793064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827450, 41.850113, 24.109573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303082, 0.776991, -0.551749,
		-0.947254, -0.182346, 0.263552,
		0.104168, 0.602524, 0.791273,
		40.858700, 42.030869, 24.346956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957542, 41.334373, 23.230320>,  <40.785782, 41.609104, 23.793064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957542, 41.334373, 23.230320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.153175, 41.176151, 22.919363>,  <41.270554, 41.081219, 22.732788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.153175, 41.176151, 22.919363>,  <40.957542, 41.334373, 23.230320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153175, 41.176151, 22.919363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411036, -0.890613, 0.194569,
		-0.769318, 0.224376, -0.598168,
		0.489079, -0.395554, -0.777392,
		41.299900, 41.057484, 22.686146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385189, 41.036545, 22.799202>,  <40.957542, 41.334373, 23.230320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385189, 41.036545, 22.799202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729187, 40.849953, 22.716442>,  <40.935585, 40.737999, 22.666786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729187, 40.849953, 22.716442>,  <40.385189, 41.036545, 22.799202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729187, 40.849953, 22.716442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414615, -0.875091, 0.249621,
		-0.297499, -0.128889, -0.945982,
		0.859993, -0.466481, -0.206899,
		40.987186, 40.710007, 22.654373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290264, 40.543446, 22.332314>,  <40.385189, 41.036545, 22.799202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290264, 40.543446, 22.332314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.633595, 40.431446, 22.504301>,  <40.839592, 40.364246, 22.607494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.633595, 40.431446, 22.504301>,  <40.290264, 40.543446, 22.332314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633595, 40.431446, 22.504301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382009, -0.908164, 0.171196,
		0.342549, -0.311195, -0.886464,
		0.858330, -0.279994, 0.429969,
		40.891094, 40.347446, 22.633291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334835, 39.828129, 22.162167>,  <40.290264, 40.543446, 22.332314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334835, 39.828129, 22.162167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.601139, 39.838196, 22.460464>,  <40.760921, 39.844238, 22.639442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.601139, 39.838196, 22.460464>,  <40.334835, 39.828129, 22.162167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601139, 39.838196, 22.460464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331877, -0.885144, 0.326157,
		0.668300, -0.464637, -0.580938,
		0.665758, 0.025171, 0.745743,
		40.800865, 39.845749, 22.684187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639397, 39.165649, 22.254017>,  <40.334835, 39.828129, 22.162167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639397, 39.165649, 22.254017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.716911, 39.333729, 22.608616>,  <40.763420, 39.434578, 22.821375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.716911, 39.333729, 22.608616>,  <40.639397, 39.165649, 22.254017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716911, 39.333729, 22.608616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352445, -0.813482, 0.462632,
		0.915549, -0.402092, -0.009541,
		0.193782, 0.420200, 0.886499,
		40.775047, 39.459789, 22.874565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897285, 38.586578, 22.650242>,  <40.639397, 39.165649, 22.254017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897285, 38.586578, 22.650242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.814411, 38.886780, 22.901262>,  <40.764687, 39.066902, 23.051874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.814411, 38.886780, 22.901262>,  <40.897285, 38.586578, 22.650242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814411, 38.886780, 22.901262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354137, -0.655500, 0.667013,
		0.911955, -0.084046, 0.401589,
		-0.207182, 0.750504, 0.627551,
		40.752258, 39.111931, 23.089527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187355, 38.428154, 23.330462>,  <40.897285, 38.586578, 22.650242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187355, 38.428154, 23.330462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.874599, 38.675484, 23.362255>,  <40.686943, 38.823883, 23.381332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.874599, 38.675484, 23.362255>,  <41.187355, 38.428154, 23.330462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874599, 38.675484, 23.362255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433559, -0.630956, 0.643366,
		0.447960, 0.468583, 0.761421,
		-0.781894, 0.618324, 0.079485,
		40.640030, 38.860981, 23.386101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932411, 38.341568, 23.975191>,  <41.187355, 38.428154, 23.330462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932411, 38.341568, 23.975191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.620541, 38.538982, 23.821032>,  <40.433418, 38.657433, 23.728535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.620541, 38.538982, 23.821032>,  <40.932411, 38.341568, 23.975191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620541, 38.538982, 23.821032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560611, -0.275953, 0.780746,
		0.278974, 0.824786, 0.491835,
		-0.779672, 0.493536, -0.385401,
		40.386639, 38.687042, 23.705412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664406, 38.876038, 24.469107>,  <40.932411, 38.341568, 23.975191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664406, 38.876038, 24.469107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.373756, 38.805134, 24.203598>,  <40.199368, 38.762592, 24.044292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.373756, 38.805134, 24.203598>,  <40.664406, 38.876038, 24.469107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373756, 38.805134, 24.203598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677747, 0.026620, 0.734813,
		-0.112584, 0.983804, -0.139481,
		-0.726625, -0.177261, -0.663773,
		40.155769, 38.751957, 24.004465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224915, 39.295757, 24.659363>,  <40.664406, 38.876038, 24.469107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224915, 39.295757, 24.659363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.028427, 39.013760, 24.454739>,  <39.910534, 38.844563, 24.331964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.028427, 39.013760, 24.454739>,  <40.224915, 39.295757, 24.659363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028427, 39.013760, 24.454739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762904, 0.064811, 0.643255,
		-0.420333, 0.706249, -0.569677,
		-0.491220, -0.704990, -0.511558,
		39.881062, 38.802261, 24.301271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520683, 39.551449, 24.738899>,  <40.224915, 39.295757, 24.659363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520683, 39.551449, 24.738899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487194, 39.173878, 24.611160>,  <39.467102, 38.947334, 24.534517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487194, 39.173878, 24.611160>,  <39.520683, 39.551449, 24.738899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487194, 39.173878, 24.611160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802632, -0.126049, 0.583004,
		-0.590570, 0.305130, -0.747076,
		-0.083724, -0.943932, -0.319348,
		39.462078, 38.890697, 24.515356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784122, 39.460045, 24.639463>,  <39.520683, 39.551449, 24.738899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784122, 39.460045, 24.639463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909828, 39.080860, 24.659908>,  <38.985252, 38.853352, 24.672174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909828, 39.080860, 24.659908>,  <38.784122, 39.460045, 24.639463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909828, 39.080860, 24.659908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707036, -0.197789, 0.678954,
		-0.633511, -0.249510, -0.732399,
		0.314266, -0.947958, 0.051111,
		39.004108, 38.796474, 24.675241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060570, 39.120792, 24.822521>,  <38.784122, 39.460045, 24.639463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060570, 39.120792, 24.822521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361633, 38.866905, 24.892534>,  <38.542271, 38.714573, 24.934542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361633, 38.866905, 24.892534>,  <38.060570, 39.120792, 24.822521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361633, 38.866905, 24.892534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585617, -0.523856, 0.618569,
		-0.300923, -0.568076, -0.765986,
		0.752660, -0.634716, 0.175035,
		38.587433, 38.676491, 24.945045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822609, 38.330311, 24.815340>,  <38.060570, 39.120792, 24.822521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822609, 38.330311, 24.815340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152840, 38.339569, 25.040867>,  <38.350979, 38.345123, 25.176182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152840, 38.339569, 25.040867>,  <37.822609, 38.330311, 24.815340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152840, 38.339569, 25.040867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482228, -0.489958, 0.726221,
		0.293052, -0.871439, -0.393338,
		0.825576, 0.023142, 0.563816,
		38.400513, 38.346512, 25.210012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221867, 38.089741, 24.372879>,  <37.822609, 38.330311, 24.815340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221867, 38.089741, 24.372879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.852074, 38.242226, 24.372099>,  <36.630196, 38.333717, 24.371632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.852074, 38.242226, 24.372099>,  <37.221867, 38.089741, 24.372879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852074, 38.242226, 24.372099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263810, 0.636068, -0.725135,
		-0.275190, -0.670892, -0.688603,
		-0.924486, 0.381210, -0.001949,
		36.574726, 38.356590, 24.371513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131802, 38.364040, 23.714930>,  <37.221867, 38.089741, 24.372879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131802, 38.364040, 23.714930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817398, 38.550430, 23.877436>,  <36.628754, 38.662266, 23.974939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817398, 38.550430, 23.877436>,  <37.131802, 38.364040, 23.714930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817398, 38.550430, 23.877436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120280, 0.759870, -0.638850,
		-0.606400, -0.453277, -0.653314,
		-0.786010, 0.465979, 0.406265,
		36.581596, 38.690224, 23.999315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727512, 38.653465, 23.186392>,  <37.131802, 38.364040, 23.714930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727512, 38.653465, 23.186392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.620800, 38.868889, 23.506086>,  <36.556774, 38.998142, 23.697903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.620800, 38.868889, 23.506086>,  <36.727512, 38.653465, 23.186392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620800, 38.868889, 23.506086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121404, 0.841466, -0.526494,
		-0.956082, -0.043425, -0.289866,
		-0.266776, 0.538562, 0.799238,
		36.540768, 39.030457, 23.745857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328327, 39.152702, 22.908535>,  <36.727512, 38.653465, 23.186392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328327, 39.152702, 22.908535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446033, 39.281540, 23.268459>,  <36.516659, 39.358841, 23.484415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446033, 39.281540, 23.268459>,  <36.328327, 39.152702, 22.908535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446033, 39.281540, 23.268459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159975, 0.911615, -0.378636,
		-0.942240, 0.255367, 0.216730,
		0.294266, 0.322095, 0.899813,
		36.534313, 39.378170, 23.538403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923664, 39.777210, 22.977730>,  <36.328327, 39.152702, 22.908535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923664, 39.777210, 22.977730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235786, 39.803982, 23.226452>,  <36.423061, 39.820045, 23.375685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235786, 39.803982, 23.226452>,  <35.923664, 39.777210, 22.977730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235786, 39.803982, 23.226452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314439, 0.817463, -0.482580,
		-0.540600, 0.572080, 0.616827,
		0.780308, 0.066929, 0.621804,
		36.469879, 39.824059, 23.412992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986439, 40.508595, 23.127655>,  <35.923664, 39.777210, 22.977730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986439, 40.508595, 23.127655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.345860, 40.362404, 23.224838>,  <36.561512, 40.274689, 23.283148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.345860, 40.362404, 23.224838>,  <35.986439, 40.508595, 23.127655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345860, 40.362404, 23.224838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438724, 0.762101, -0.476155,
		-0.011136, 0.534443, 0.845131,
		0.898553, -0.365477, 0.242959,
		36.615425, 40.252762, 23.297726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459435, 41.042187, 23.517094>,  <35.986439, 40.508595, 23.127655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459435, 41.042187, 23.517094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699234, 40.773724, 23.342672>,  <36.843113, 40.612644, 23.238020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699234, 40.773724, 23.342672>,  <36.459435, 41.042187, 23.517094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699234, 40.773724, 23.342672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503385, 0.739745, -0.446520,
		0.622254, 0.048187, 0.781331,
		0.599502, -0.671159, -0.436053,
		36.879086, 40.572376, 23.211857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662411, 41.419495, 24.138203>,  <36.459435, 41.042187, 23.517094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662411, 41.419495, 24.138203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.509026, 41.751873, 24.299444>,  <36.416996, 41.951298, 24.396189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.509026, 41.751873, 24.299444>,  <36.662411, 41.419495, 24.138203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509026, 41.751873, 24.299444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465205, -0.550838, 0.692937,
		0.797835, 0.078190, 0.597784,
		-0.383462, 0.830941, 0.403104,
		36.393986, 42.001156, 24.420376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911972, 41.519398, 24.872345>,  <36.662411, 41.419495, 24.138203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911972, 41.519398, 24.872345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560902, 41.705429, 24.826067>,  <36.350258, 41.817047, 24.798300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560902, 41.705429, 24.826067>,  <36.911972, 41.519398, 24.872345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560902, 41.705429, 24.826067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378660, -0.524964, 0.762253,
		0.293775, 0.712819, 0.636856,
		-0.877675, 0.465083, -0.115695,
		36.297600, 41.844955, 24.791359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598618, 41.459534, 25.585972>,  <36.911972, 41.519398, 24.872345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598618, 41.459534, 25.585972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300838, 41.545292, 25.333040>,  <36.122173, 41.596748, 25.181282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300838, 41.545292, 25.333040>,  <36.598618, 41.459534, 25.585972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300838, 41.545292, 25.333040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618196, -0.579136, 0.531446,
		-0.252263, 0.786534, 0.563673,
		-0.744444, 0.214397, -0.632327,
		36.077507, 41.609612, 25.143343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012272, 41.776493, 25.990719>,  <36.598618, 41.459534, 25.585972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012272, 41.776493, 25.990719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861244, 41.625702, 25.652411>,  <35.770626, 41.535225, 25.449425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861244, 41.625702, 25.652411>,  <36.012272, 41.776493, 25.990719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861244, 41.625702, 25.652411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562090, -0.632540, 0.532867,
		-0.735864, 0.676594, 0.026931,
		-0.377569, -0.376980, -0.845770,
		35.747974, 41.512608, 25.398680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259510, 41.817928, 26.149668>,  <36.012272, 41.776493, 25.990719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259510, 41.817928, 26.149668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.319885, 41.539928, 25.868471>,  <35.356110, 41.373127, 25.699753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.319885, 41.539928, 25.868471>,  <35.259510, 41.817928, 26.149668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319885, 41.539928, 25.868471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370865, -0.699005, 0.611434,
		-0.916340, 0.168428, -0.363254,
		0.150934, -0.694999, -0.702990,
		35.365166, 41.331429, 25.657574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662830, 41.447990, 26.230675>,  <35.259510, 41.817928, 26.149668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662830, 41.447990, 26.230675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.924072, 41.218506, 26.032965>,  <35.080818, 41.080814, 25.914339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.924072, 41.218506, 26.032965>,  <34.662830, 41.447990, 26.230675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924072, 41.218506, 26.032965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309029, -0.797808, 0.517691,
		-0.691339, -0.185364, -0.698348,
		0.653109, -0.573710, -0.494273,
		35.120003, 41.046394, 25.884682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274841, 40.833279, 25.969446>,  <34.662830, 41.447990, 26.230675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274841, 40.833279, 25.969446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665352, 40.756168, 26.008883>,  <34.899658, 40.709900, 26.032543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665352, 40.756168, 26.008883>,  <34.274841, 40.833279, 25.969446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665352, 40.756168, 26.008883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214686, -0.802613, 0.556527,
		-0.028157, -0.564490, -0.824959,
		0.976277, -0.192777, 0.098589,
		34.958237, 40.698334, 26.038460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.012955, 44.289543, 26.125132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.190830, 43.957294, 25.991077>,  <39.297558, 43.757946, 25.910645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.190830, 43.957294, 25.991077>,  <39.012955, 44.289543, 26.125132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190830, 43.957294, 25.991077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396652, -0.518105, 0.757782,
		-0.803066, -0.204048, -0.559866,
		0.444693, -0.830621, -0.335136,
		39.324238, 43.708107, 25.890537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510269, 43.763290, 26.041861>,  <39.012955, 44.289543, 26.125132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510269, 43.763290, 26.041861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.856377, 43.571728, 26.101130>,  <39.064041, 43.456791, 26.136692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.856377, 43.571728, 26.101130>,  <38.510269, 43.763290, 26.041861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856377, 43.571728, 26.101130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400830, -0.483418, 0.778230,
		-0.301069, -0.732772, -0.610247,
		0.865270, -0.478907, 0.148175,
		39.115959, 43.428055, 26.145582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334560, 43.033016, 26.195602>,  <38.510269, 43.763290, 26.041861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334560, 43.033016, 26.195602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713848, 43.068146, 26.317690>,  <38.941422, 43.089222, 26.390944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713848, 43.068146, 26.317690>,  <38.334560, 43.033016, 26.195602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713848, 43.068146, 26.317690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192998, -0.603903, 0.773339,
		0.252238, -0.792205, -0.555686,
		0.948224, 0.087819, 0.305221,
		38.998314, 43.094490, 26.409256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560192, 42.315830, 26.534828>,  <38.334560, 43.033016, 26.195602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560192, 42.315830, 26.534828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.837276, 42.560524, 26.687637>,  <39.003525, 42.707340, 26.779324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.837276, 42.560524, 26.687637>,  <38.560192, 42.315830, 26.534828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837276, 42.560524, 26.687637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097869, -0.604522, 0.790554,
		0.714549, -0.510233, -0.478626,
		0.692706, 0.611732, 0.382024,
		39.045090, 42.744045, 26.802244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124847, 41.937740, 26.684095>,  <38.560192, 42.315830, 26.534828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124847, 41.937740, 26.684095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.131657, 42.263496, 26.916122>,  <39.135742, 42.458950, 27.055338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.131657, 42.263496, 26.916122>,  <39.124847, 41.937740, 26.684095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131657, 42.263496, 26.916122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130238, -0.577013, 0.806284,
		0.991337, 0.061818, -0.115889,
		0.017027, 0.814392, 0.580065,
		39.136765, 42.507812, 27.090141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668259, 41.733925, 27.229506>,  <39.124847, 41.937740, 26.684095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668259, 41.733925, 27.229506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.426998, 42.025261, 27.359568>,  <39.282242, 42.200062, 27.437605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.426998, 42.025261, 27.359568>,  <39.668259, 41.733925, 27.229506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426998, 42.025261, 27.359568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108432, -0.328995, 0.938086,
		0.790220, 0.601067, 0.119459,
		-0.603154, 0.728341, 0.325153,
		39.246052, 42.243763, 27.457113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899277, 41.836498, 27.879993>,  <39.668259, 41.733925, 27.229506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899277, 41.836498, 27.879993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545856, 42.023697, 27.887108>,  <39.333805, 42.136017, 27.891376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545856, 42.023697, 27.887108>,  <39.899277, 41.836498, 27.879993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545856, 42.023697, 27.887108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135747, -0.292263, 0.946654,
		0.448227, 0.834005, 0.321759,
		-0.883553, 0.467994, 0.017787,
		39.280792, 42.164097, 27.892445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963135, 42.052391, 28.590538>,  <39.899277, 41.836498, 27.879993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963135, 42.052391, 28.590538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.582722, 42.083542, 28.470888>,  <39.354473, 42.102234, 28.399097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.582722, 42.083542, 28.470888>,  <39.963135, 42.052391, 28.590538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582722, 42.083542, 28.470888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308236, -0.311250, 0.898952,
		-0.023092, 0.947131, 0.320014,
		-0.951030, 0.077882, -0.299127,
		39.297413, 42.106907, 28.381149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586983, 42.609364, 29.134359>,  <39.963135, 42.052391, 28.590538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586983, 42.609364, 29.134359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305035, 42.373646, 28.976427>,  <39.135868, 42.232216, 28.881668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305035, 42.373646, 28.976427>,  <39.586983, 42.609364, 29.134359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305035, 42.373646, 28.976427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411355, -0.113877, 0.904333,
		-0.577885, 0.799849, -0.162143,
		-0.704866, -0.589299, -0.394830,
		39.093575, 42.196857, 28.857979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888012, 42.928223, 29.195276>,  <39.586983, 42.609364, 29.134359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888012, 42.928223, 29.195276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.796249, 42.545311, 29.124853>,  <38.741192, 42.315563, 29.082600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.796249, 42.545311, 29.124853>,  <38.888012, 42.928223, 29.195276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796249, 42.545311, 29.124853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462453, -0.051961, 0.885119,
		-0.856452, 0.284470, -0.430775,
		-0.229407, -0.957276, -0.176056,
		38.727428, 42.258129, 29.072037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139511, 42.894436, 29.329388>,  <38.888012, 42.928223, 29.195276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139511, 42.894436, 29.329388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.264133, 42.514347, 29.330688>,  <38.338909, 42.286293, 29.331469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.264133, 42.514347, 29.330688>,  <38.139511, 42.894436, 29.329388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264133, 42.514347, 29.330688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732746, -0.238071, 0.637500,
		-0.604991, -0.201003, -0.770444,
		0.311560, -0.950221, 0.003253,
		38.357601, 42.229282, 29.331665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462612, 42.361530, 29.298977>,  <38.139511, 42.894436, 29.329388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462612, 42.361530, 29.298977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.782059, 42.177647, 29.454348>,  <37.973728, 42.067318, 29.547569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.782059, 42.177647, 29.454348>,  <37.462612, 42.361530, 29.298977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782059, 42.177647, 29.454348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574259, -0.388937, 0.720386,
		-0.180095, -0.798371, -0.574604,
		0.798620, -0.459709, 0.388426,
		38.021645, 42.039734, 29.570875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922508, 42.461632, 28.760635>,  <37.462612, 42.361530, 29.298977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922508, 42.461632, 28.760635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616249, 42.712322, 28.818600>,  <36.432495, 42.862736, 28.853378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616249, 42.712322, 28.818600>,  <36.922508, 42.461632, 28.760635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616249, 42.712322, 28.818600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508293, 0.727516, -0.460825,
		-0.394234, -0.279174, -0.875581,
		-0.765649, 0.626724, 0.144909,
		36.386555, 42.900341, 28.862072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757862, 42.697624, 28.126858>,  <36.922508, 42.461632, 28.760635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757862, 42.697624, 28.126858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596340, 42.984463, 28.354090>,  <36.499428, 43.156567, 28.490429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596340, 42.984463, 28.354090>,  <36.757862, 42.697624, 28.126858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596340, 42.984463, 28.354090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373881, 0.696091, -0.612920,
		-0.834956, -0.035109, -0.549196,
		-0.403809, 0.717094, 0.568079,
		36.475197, 43.199593, 28.524513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211876, 42.940151, 27.722549>,  <36.757862, 42.697624, 28.126858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211876, 42.940151, 27.722549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.345467, 43.226185, 27.968187>,  <36.425621, 43.397804, 28.115570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.345467, 43.226185, 27.968187>,  <36.211876, 42.940151, 27.722549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345467, 43.226185, 27.968187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223888, 0.572675, -0.788618,
		-0.915607, 0.400866, 0.031159,
		0.333974, 0.715087, 0.614094,
		36.445660, 43.440712, 28.152416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919376, 43.574471, 27.533279>,  <36.211876, 42.940151, 27.722549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919376, 43.574471, 27.533279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.243820, 43.693222, 27.734858>,  <36.438488, 43.764473, 27.855804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.243820, 43.693222, 27.734858>,  <35.919376, 43.574471, 27.533279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243820, 43.693222, 27.734858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168301, 0.706699, -0.687205,
		-0.560155, 0.642215, 0.523247,
		0.811111, 0.296878, 0.503947,
		36.487152, 43.782284, 27.886042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838959, 44.284477, 27.502304>,  <35.919376, 43.574471, 27.533279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838959, 44.284477, 27.502304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.224060, 44.222866, 27.591190>,  <36.455120, 44.185898, 27.644522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.224060, 44.222866, 27.591190>,  <35.838959, 44.284477, 27.502304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224060, 44.222866, 27.591190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261655, 0.737839, -0.622198,
		-0.068125, 0.657168, 0.750660,
		0.962754, -0.154026, 0.222216,
		36.512886, 44.176659, 27.657856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080727, 44.903572, 27.693747>,  <35.838959, 44.284477, 27.502304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080727, 44.903572, 27.693747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407440, 44.689220, 27.608231>,  <36.603466, 44.560612, 27.556921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407440, 44.689220, 27.608231>,  <36.080727, 44.903572, 27.693747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407440, 44.689220, 27.608231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349528, 0.754410, -0.555604,
		0.459021, 0.379080, 0.803491,
		0.816780, -0.535877, -0.213791,
		36.652473, 44.528458, 27.544094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514797, 45.407806, 27.683882>,  <36.080727, 44.903572, 27.693747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514797, 45.407806, 27.683882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720322, 45.118023, 27.500078>,  <36.843636, 44.944153, 27.389795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720322, 45.118023, 27.500078>,  <36.514797, 45.407806, 27.683882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720322, 45.118023, 27.500078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570616, 0.688559, -0.447531,
		0.640619, -0.032256, 0.767181,
		0.513814, -0.724462, -0.459510,
		36.874466, 44.900684, 27.362225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305595, 45.535542, 27.733742>,  <36.514797, 45.407806, 27.683882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305595, 45.535542, 27.733742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233650, 45.288467, 27.427509>,  <37.190483, 45.140224, 27.243771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233650, 45.288467, 27.427509>,  <37.305595, 45.535542, 27.733742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233650, 45.288467, 27.427509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749917, 0.417570, -0.513088,
		0.636611, -0.666408, 0.388107,
		-0.179864, -0.617686, -0.765580,
		37.179691, 45.103161, 27.197836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949486, 45.275494, 27.458168>,  <37.305595, 45.535542, 27.733742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949486, 45.275494, 27.458168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698906, 45.237434, 27.148714>,  <37.548557, 45.214600, 26.963041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698906, 45.237434, 27.148714>,  <37.949486, 45.275494, 27.458168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698906, 45.237434, 27.148714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745110, 0.218305, -0.630202,
		0.228857, -0.971230, -0.065853,
		-0.626447, -0.095158, -0.773634,
		37.510971, 45.208889, 26.916624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472141, 45.136745, 26.968819>,  <37.949486, 45.275494, 27.458168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472141, 45.136745, 26.968819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.119804, 45.199345, 26.790100>,  <37.908401, 45.236904, 26.682869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.119804, 45.199345, 26.790100>,  <38.472141, 45.136745, 26.968819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119804, 45.199345, 26.790100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469600, 0.408377, -0.782754,
		0.059960, -0.899297, -0.433208,
		-0.880841, 0.156500, -0.446797,
		37.855553, 45.246296, 26.656061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586998, 45.014347, 26.251654>,  <38.472141, 45.136745, 26.968819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586998, 45.014347, 26.251654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.265293, 45.251099, 26.273010>,  <38.072269, 45.393150, 26.285824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.265293, 45.251099, 26.273010>,  <38.586998, 45.014347, 26.251654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265293, 45.251099, 26.273010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380659, 0.582071, -0.718534,
		-0.456361, -0.557563, -0.693439,
		-0.804259, 0.591875, 0.053393,
		38.024014, 45.428661, 26.289028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425079, 45.181507, 25.513977>,  <38.586998, 45.014347, 26.251654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425079, 45.181507, 25.513977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254761, 45.463528, 25.740816>,  <38.152569, 45.632740, 25.876919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254761, 45.463528, 25.740816>,  <38.425079, 45.181507, 25.513977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254761, 45.463528, 25.740816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127312, 0.667201, -0.733918,
		-0.895818, -0.240301, -0.373853,
		-0.425795, 0.705052, 0.567097,
		38.127022, 45.675045, 25.910946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949661, 45.512447, 25.115931>,  <38.425079, 45.181507, 25.513977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949661, 45.512447, 25.115931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.024742, 45.772774, 25.410196>,  <38.069790, 45.928970, 25.586756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.024742, 45.772774, 25.410196>,  <37.949661, 45.512447, 25.115931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024742, 45.772774, 25.410196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098386, 0.757666, -0.645183,
		-0.977286, 0.048723, 0.206247,
		0.187702, 0.650820, 0.735663,
		38.081051, 45.968021, 25.630896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981064, 44.791691, 24.885866>,  <37.949661, 45.512447, 25.115931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981064, 44.791691, 24.885866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743362, 44.864914, 24.572599>,  <37.600742, 44.908848, 24.384640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743362, 44.864914, 24.572599>,  <37.981064, 44.791691, 24.885866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743362, 44.864914, 24.572599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543861, -0.808834, 0.223615,
		-0.592515, 0.558817, 0.580214,
		-0.594256, 0.183061, -0.783165,
		37.565086, 44.919830, 24.337650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267574, 44.480286, 25.142487>,  <37.981064, 44.791691, 24.885866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267574, 44.480286, 25.142487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247005, 44.517414, 24.744745>,  <37.234665, 44.539692, 24.506100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247005, 44.517414, 24.744745>,  <37.267574, 44.480286, 25.142487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247005, 44.517414, 24.744745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575278, -0.816636, -0.046481,
		-0.816340, 0.569641, 0.095385,
		-0.051418, 0.092817, -0.994355,
		37.231579, 44.545261, 24.446440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552002, 44.258869, 24.948219>,  <37.267574, 44.480286, 25.142487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552002, 44.258869, 24.948219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.765106, 44.241901, 24.610140>,  <36.892971, 44.231720, 24.407291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.765106, 44.241901, 24.610140>,  <36.552002, 44.258869, 24.948219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765106, 44.241901, 24.610140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570796, -0.755368, -0.321886,
		-0.624783, 0.653927, -0.426646,
		0.532765, -0.042419, -0.845200,
		36.924934, 44.229176, 24.356581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047523, 44.191986, 24.306566>,  <36.552002, 44.258869, 24.948219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047523, 44.191986, 24.306566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.412079, 44.069813, 24.196228>,  <36.630810, 43.996510, 24.130024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.412079, 44.069813, 24.196228>,  <36.047523, 44.191986, 24.306566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412079, 44.069813, 24.196228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395864, -0.833901, -0.384579,
		-0.112566, 0.459697, -0.880913,
		0.911384, -0.305432, -0.275847,
		36.685493, 43.978184, 24.113474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052517, 43.791496, 23.652384>,  <36.047523, 44.191986, 24.306566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052517, 43.791496, 23.652384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403889, 43.676369, 23.804972>,  <36.614712, 43.607292, 23.896524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403889, 43.676369, 23.804972>,  <36.052517, 43.791496, 23.652384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403889, 43.676369, 23.804972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303745, -0.952559, -0.019262,
		0.368915, -0.098949, -0.924181,
		0.878431, -0.287821, 0.381469,
		36.667419, 43.590023, 23.919413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287163, 43.242317, 23.228071>,  <36.052517, 43.791496, 23.652384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287163, 43.242317, 23.228071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.484348, 43.191029, 23.572292>,  <36.602657, 43.160255, 23.778824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.484348, 43.191029, 23.572292>,  <36.287163, 43.242317, 23.228071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484348, 43.191029, 23.572292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374262, -0.924146, 0.076699,
		0.785441, -0.359881, -0.503555,
		0.492961, -0.128219, 0.860552,
		36.632236, 43.152561, 23.830458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553448, 42.560436, 23.251963>,  <36.287163, 43.242317, 23.228071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553448, 42.560436, 23.251963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.572140, 42.634190, 23.644659>,  <36.583355, 42.678440, 23.880278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.572140, 42.634190, 23.644659>,  <36.553448, 42.560436, 23.251963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572140, 42.634190, 23.644659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256657, -0.947605, 0.190187,
		0.965372, -0.260859, 0.003040,
		0.046731, 0.184382, 0.981743,
		36.586159, 42.689503, 23.939182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692669, 41.957905, 23.570471>,  <36.553448, 42.560436, 23.251963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692669, 41.957905, 23.570471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583878, 42.172989, 23.889692>,  <36.518604, 42.302040, 24.081226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583878, 42.172989, 23.889692>,  <36.692669, 41.957905, 23.570471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583878, 42.172989, 23.889692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377715, -0.822414, 0.425402,
		0.885077, -0.185740, 0.426778,
		-0.271974, 0.537715, 0.798056,
		36.502285, 42.334305, 24.129108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360664, 41.431465, 23.525452>,  <36.692669, 41.957905, 23.570471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360664, 41.431465, 23.525452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364922, 41.111561, 23.285360>,  <37.367477, 40.919621, 23.141306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.364922, 41.111561, 23.285360>,  <37.360664, 41.431465, 23.525452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364922, 41.111561, 23.285360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815161, 0.354594, -0.458013,
		0.579137, -0.484405, 0.655708,
		0.010646, -0.799759, -0.600227,
		37.368114, 40.871632, 23.105293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015450, 41.242882, 23.496176>,  <37.360664, 41.431465, 23.525452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015450, 41.242882, 23.496176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.865417, 41.080559, 23.162796>,  <37.775398, 40.983166, 22.962769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.865417, 41.080559, 23.162796>,  <38.015450, 41.242882, 23.496176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865417, 41.080559, 23.162796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818678, 0.276731, -0.503175,
		0.434833, -0.871057, 0.228429,
		-0.375081, -0.405808, -0.833447,
		37.752892, 40.958817, 22.912762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610271, 40.985573, 23.195801>,  <38.015450, 41.242882, 23.496176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610271, 40.985573, 23.195801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.368584, 40.980766, 22.877111>,  <38.223572, 40.977882, 22.685898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.368584, 40.980766, 22.877111>,  <38.610271, 40.985573, 23.195801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368584, 40.980766, 22.877111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796815, -0.009700, -0.604145,
		-0.000466, -0.999881, 0.015439,
		-0.604223, -0.012021, -0.796725,
		38.187317, 40.977161, 22.638094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990932, 40.525986, 22.638929>,  <38.610271, 40.985573, 23.195801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990932, 40.525986, 22.638929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731434, 40.756073, 22.439631>,  <38.575733, 40.894123, 22.320051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731434, 40.756073, 22.439631>,  <38.990932, 40.525986, 22.638929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731434, 40.756073, 22.439631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723774, 0.264109, -0.637493,
		-0.235103, -0.774193, -0.587666,
		-0.648751, 0.575214, -0.498248,
		38.536808, 40.928638, 22.290155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941235, 40.366730, 21.895525>,  <38.990932, 40.525986, 22.638929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941235, 40.366730, 21.895525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801174, 40.738529, 21.941868>,  <38.717136, 40.961609, 21.969673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801174, 40.738529, 21.941868>,  <38.941235, 40.366730, 21.895525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801174, 40.738529, 21.941868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644376, 0.328799, -0.690413,
		-0.679834, -0.167091, -0.714077,
		-0.350150, 0.929501, 0.115859,
		38.696129, 41.017380, 21.976625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965691, 40.658798, 21.174068>,  <38.941235, 40.366730, 21.895525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965691, 40.658798, 21.174068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936504, 41.000671, 21.379665>,  <38.918991, 41.205795, 21.503023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936504, 41.000671, 21.379665>,  <38.965691, 40.658798, 21.174068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936504, 41.000671, 21.379665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786440, 0.366248, -0.497367,
		-0.613341, 0.367936, -0.698882,
		-0.072965, 0.854684, 0.513995,
		38.914616, 41.257076, 21.533863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923008, 41.244804, 20.713243>,  <38.965691, 40.658798, 21.174068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923008, 41.244804, 20.713243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072826, 41.352974, 21.068003>,  <39.162716, 41.417877, 21.280857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072826, 41.352974, 21.068003>,  <38.923008, 41.244804, 20.713243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072826, 41.352974, 21.068003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757092, 0.463010, -0.460905,
		-0.535282, 0.844093, -0.031317,
		0.374547, 0.270424, 0.886897,
		39.185192, 41.434101, 21.334072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061668, 41.915085, 20.561852>,  <38.923008, 41.244804, 20.713243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061668, 41.915085, 20.561852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296234, 41.831467, 20.874880>,  <39.436974, 41.781296, 21.062696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296234, 41.831467, 20.874880>,  <39.061668, 41.915085, 20.561852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296234, 41.831467, 20.874880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767747, 0.451446, -0.454710,
		-0.258233, 0.867465, 0.425229,
		0.586413, -0.209047, 0.782572,
		39.472157, 41.768753, 21.109652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455929, 42.461941, 20.559227>,  <39.061668, 41.915085, 20.561852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455929, 42.461941, 20.559227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.656071, 42.216976, 20.804045>,  <39.776154, 42.069996, 20.950935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.656071, 42.216976, 20.804045>,  <39.455929, 42.461941, 20.559227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656071, 42.216976, 20.804045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865821, 0.354904, -0.352700,
		-0.001219, 0.706394, 0.707817,
		0.500353, -0.612413, 0.612043,
		39.806175, 42.033253, 20.987658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.528740, 33.094803, 32.737038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872581, 33.230629, 32.889763>,  <34.078884, 33.312126, 32.981396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872581, 33.230629, 32.889763>,  <33.528740, 33.094803, 32.737038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872581, 33.230629, 32.889763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265117, 0.342380, -0.901382,
		-0.436804, 0.876054, 0.204286,
		0.859602, 0.339567, 0.381809,
		34.130463, 33.332500, 33.004307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702446, 33.894886, 32.615730>,  <33.528740, 33.094803, 32.737038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702446, 33.894886, 32.615730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041023, 33.684910, 32.651451>,  <34.244167, 33.558922, 32.672882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041023, 33.684910, 32.651451>,  <33.702446, 33.894886, 32.615730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041023, 33.684910, 32.651451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322490, 0.371925, -0.870443,
		0.423721, 0.765576, 0.484101,
		0.846440, -0.524943, 0.089298,
		34.294956, 33.527428, 32.678242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108627, 34.384521, 32.287617>,  <33.702446, 33.894886, 32.615730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108627, 34.384521, 32.287617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289074, 34.027576, 32.282257>,  <34.397343, 33.813408, 32.279041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289074, 34.027576, 32.282257>,  <34.108627, 34.384521, 32.287617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289074, 34.027576, 32.282257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367656, 0.199497, -0.908311,
		0.813216, 0.404831, 0.418080,
		0.451119, -0.892363, -0.013396,
		34.424408, 33.759869, 32.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773705, 34.374847, 31.988430>,  <34.108627, 34.384521, 32.287617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773705, 34.374847, 31.988430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710983, 33.983406, 31.935133>,  <34.673351, 33.748543, 31.903154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710983, 33.983406, 31.935133>,  <34.773705, 34.374847, 31.988430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710983, 33.983406, 31.935133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354901, 0.070071, -0.932274,
		0.921661, -0.193472, 0.336319,
		-0.156803, -0.978600, -0.133245,
		34.663944, 33.689827, 31.895159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351460, 34.102184, 31.724258>,  <34.773705, 34.374847, 31.988430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351460, 34.102184, 31.724258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042038, 33.875839, 31.610123>,  <34.856384, 33.740032, 31.541641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042038, 33.875839, 31.610123>,  <35.351460, 34.102184, 31.724258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042038, 33.875839, 31.610123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316543, 0.045059, -0.947507,
		0.549012, -0.823270, 0.144263,
		-0.773554, -0.565858, -0.285338,
		34.809971, 33.706081, 31.524521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729813, 33.791801, 31.247807>,  <35.351460, 34.102184, 31.724258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729813, 33.791801, 31.247807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334789, 33.759377, 31.193905>,  <35.097775, 33.739922, 31.161564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334789, 33.759377, 31.193905>,  <35.729813, 33.791801, 31.247807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334789, 33.759377, 31.193905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111625, 0.242236, -0.963775,
		0.110769, -0.966825, -0.230173,
		-0.987558, -0.081063, -0.134754,
		35.038521, 33.735058, 31.153479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681374, 33.472012, 30.659977>,  <35.729813, 33.791801, 31.247807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681374, 33.472012, 30.659977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310650, 33.622044, 30.667356>,  <35.088215, 33.712063, 30.671785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310650, 33.622044, 30.667356>,  <35.681374, 33.472012, 30.659977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310650, 33.622044, 30.667356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126935, 0.359129, -0.924615,
		-0.353434, -0.854598, -0.380455,
		-0.926807, 0.375084, 0.018450,
		35.032608, 33.734570, 30.672892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475613, 33.352818, 30.012470>,  <35.681374, 33.472012, 30.659977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475613, 33.352818, 30.012470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225483, 33.639774, 30.135315>,  <35.075405, 33.811947, 30.209023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225483, 33.639774, 30.135315>,  <35.475613, 33.352818, 30.012470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225483, 33.639774, 30.135315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034761, 0.367552, -0.929353,
		-0.779588, -0.591826, -0.204903,
		-0.625328, 0.717389, 0.307112,
		35.037884, 33.854992, 30.227449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081768, 33.484039, 29.443386>,  <35.475613, 33.352818, 30.012470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081768, 33.484039, 29.443386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041180, 33.796246, 29.690125>,  <35.016827, 33.983570, 29.838167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041180, 33.796246, 29.690125>,  <35.081768, 33.484039, 29.443386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041180, 33.796246, 29.690125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134244, 0.603632, -0.785880,
		-0.985740, -0.162549, 0.043530,
		-0.101468, 0.780517, 0.616845,
		35.010738, 34.030399, 29.875177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571774, 33.867840, 29.085501>,  <35.081768, 33.484039, 29.443386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571774, 33.867840, 29.085501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752476, 34.109905, 29.347704>,  <34.860897, 34.255142, 29.505026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752476, 34.109905, 29.347704>,  <34.571774, 33.867840, 29.085501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752476, 34.109905, 29.347704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087261, 0.701265, -0.707541,
		-0.887862, 0.376839, 0.263997,
		0.451760, 0.605162, 0.655509,
		34.888004, 34.291454, 29.544357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214424, 34.446976, 29.036182>,  <34.571774, 33.867840, 29.085501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214424, 34.446976, 29.036182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577114, 34.560486, 29.160971>,  <34.794727, 34.628590, 29.235844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577114, 34.560486, 29.160971>,  <34.214424, 34.446976, 29.036182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577114, 34.560486, 29.160971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009729, 0.725475, -0.688180,
		-0.421611, 0.627025, 0.655045,
		0.906725, 0.283771, 0.311969,
		34.849133, 34.645618, 29.254560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167110, 35.116150, 29.142942>,  <34.214424, 34.446976, 29.036182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167110, 35.116150, 29.142942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556564, 35.046967, 29.083454>,  <34.790237, 35.005455, 29.047760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556564, 35.046967, 29.083454>,  <34.167110, 35.116150, 29.142942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556564, 35.046967, 29.083454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045412, 0.785896, -0.616688,
		0.223544, 0.593676, 0.773031,
		0.973635, -0.172962, -0.148722,
		34.848656, 34.995079, 29.038837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803604, 35.553314, 29.639103>,  <34.167110, 35.116150, 29.142942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803604, 35.553314, 29.639103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666943, 35.926620, 29.683453>,  <33.584946, 36.150604, 29.710062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666943, 35.926620, 29.683453>,  <33.803604, 35.553314, 29.639103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666943, 35.926620, 29.683453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749606, -0.341758, 0.566826,
		0.566891, 0.110543, 0.816342,
		-0.341650, 0.933264, 0.110875,
		33.564449, 36.206600, 29.716715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719299, 35.566353, 30.405155>,  <33.803604, 35.553314, 29.639103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719299, 35.566353, 30.405155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511215, 35.872242, 30.253061>,  <33.386364, 36.055775, 30.161804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511215, 35.872242, 30.253061>,  <33.719299, 35.566353, 30.405155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511215, 35.872242, 30.253061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685951, -0.108903, 0.719452,
		0.508773, 0.635090, 0.581215,
		-0.520213, 0.764723, -0.380234,
		33.355152, 36.101658, 30.138990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618050, 36.067108, 30.875950>,  <33.719299, 35.566353, 30.405155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618050, 36.067108, 30.875950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313438, 36.082619, 30.617165>,  <33.130669, 36.091923, 30.461893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313438, 36.082619, 30.617165>,  <33.618050, 36.067108, 30.875950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313438, 36.082619, 30.617165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647222, -0.098206, 0.755949,
		-0.034224, 0.994410, 0.099883,
		-0.761533, 0.038775, -0.646966,
		33.084980, 36.094250, 30.423075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167191, 36.684147, 31.144648>,  <33.618050, 36.067108, 30.875950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167191, 36.684147, 31.144648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932514, 36.457340, 30.913376>,  <32.791710, 36.321255, 30.774612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932514, 36.457340, 30.913376>,  <33.167191, 36.684147, 31.144648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932514, 36.457340, 30.913376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750924, 0.113634, 0.650538,
		-0.303165, 0.815831, -0.492454,
		-0.586688, -0.567017, -0.578177,
		32.756508, 36.287235, 30.739923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495594, 36.869316, 31.373236>,  <33.167191, 36.684147, 31.144648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495594, 36.869316, 31.373236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457699, 36.533592, 31.159101>,  <32.434963, 36.332157, 31.030621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457699, 36.533592, 31.159101>,  <32.495594, 36.869316, 31.373236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457699, 36.533592, 31.159101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869529, -0.192068, 0.455004,
		-0.484710, 0.508596, -0.711609,
		-0.094736, -0.839310, -0.535336,
		32.429279, 36.281799, 30.998501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815151, 36.845348, 31.035564>,  <32.495594, 36.869316, 31.373236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815151, 36.845348, 31.035564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916498, 36.458401, 31.034657>,  <31.977306, 36.226234, 31.034111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916498, 36.458401, 31.034657>,  <31.815151, 36.845348, 31.035564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916498, 36.458401, 31.034657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862307, -0.226913, 0.452700,
		-0.438443, -0.112742, -0.891660,
		0.253368, -0.967367, -0.002270,
		31.992508, 36.168190, 31.033976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187105, 36.493069, 30.870466>,  <31.815151, 36.845348, 31.035564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187105, 36.493069, 30.870466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429075, 36.219986, 31.034405>,  <31.574257, 36.056137, 31.132767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429075, 36.219986, 31.034405>,  <31.187105, 36.493069, 30.870466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429075, 36.219986, 31.034405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763166, -0.350187, 0.543090,
		-0.227252, -0.641307, -0.732859,
		0.604925, -0.682711, 0.409843,
		31.610554, 36.015171, 31.157358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847446, 35.798538, 30.811731>,  <31.187105, 36.493069, 30.870466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847446, 35.798538, 30.811731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.111752, 35.754822, 31.108770>,  <31.270334, 35.728592, 31.286993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.111752, 35.754822, 31.108770>,  <30.847446, 35.798538, 30.811731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111752, 35.754822, 31.108770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736471, -0.285424, 0.613306,
		0.144928, -0.952150, -0.269085,
		0.660763, -0.109288, 0.742596,
		31.309980, 35.722034, 31.331549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586496, 35.193752, 31.193758>,  <30.847446, 35.798538, 30.811731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586496, 35.193752, 31.193758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826767, 35.393490, 31.443508>,  <30.970930, 35.513332, 31.593359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826767, 35.393490, 31.443508>,  <30.586496, 35.193752, 31.193758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826767, 35.393490, 31.443508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668400, -0.114850, 0.734882,
		0.438665, -0.858760, 0.264771,
		0.600678, 0.499340, 0.624376,
		31.006971, 35.543293, 31.630821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624878, 34.768764, 31.802876>,  <30.586496, 35.193752, 31.193758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624878, 34.768764, 31.802876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750353, 35.132309, 31.912836>,  <30.825638, 35.350437, 31.978813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750353, 35.132309, 31.912836>,  <30.624878, 34.768764, 31.802876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750353, 35.132309, 31.912836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460095, -0.107768, 0.881305,
		0.830611, -0.402933, 0.384357,
		0.313685, 0.908862, 0.274901,
		30.844458, 35.404968, 31.995306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998995, 34.804035, 32.513634>,  <30.624878, 34.768764, 31.802876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998995, 34.804035, 32.513634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.893299, 35.188637, 32.483452>,  <30.829882, 35.419395, 32.465343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.893299, 35.188637, 32.483452>,  <30.998995, 34.804035, 32.513634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893299, 35.188637, 32.483452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151104, 0.035994, 0.987862,
		0.952547, 0.272431, 0.135776,
		-0.264237, 0.961502, -0.075452,
		30.814028, 35.477089, 32.460815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283869, 35.131329, 33.050594>,  <30.998995, 34.804035, 32.513634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283869, 35.131329, 33.050594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983873, 35.382610, 32.967766>,  <30.803877, 35.533379, 32.918068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983873, 35.382610, 32.967766>,  <31.283869, 35.131329, 33.050594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983873, 35.382610, 32.967766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217753, 0.061119, 0.974088,
		0.624581, 0.775646, 0.090954,
		-0.749988, 0.628202, -0.207073,
		30.758877, 35.571072, 32.905643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284870, 35.519753, 33.616215>,  <31.283869, 35.131329, 33.050594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284870, 35.519753, 33.616215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.929499, 35.611839, 33.457375>,  <30.716276, 35.667091, 33.362072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.929499, 35.611839, 33.457375>,  <31.284870, 35.519753, 33.616215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929499, 35.611839, 33.457375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381757, 0.109743, 0.917725,
		0.254858, 0.966931, -0.009611,
		-0.888431, 0.230220, -0.397101,
		30.662970, 35.680904, 33.338245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879339, 36.254356, 33.757500>,  <31.284870, 35.519753, 33.616215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879339, 36.254356, 33.757500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593872, 35.988232, 33.669834>,  <30.422592, 35.828556, 33.617237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593872, 35.988232, 33.669834>,  <30.879339, 36.254356, 33.757500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593872, 35.988232, 33.669834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512398, 0.282501, 0.810951,
		-0.477626, 0.691048, -0.542519,
		-0.713668, -0.665317, -0.219162,
		30.379772, 35.788635, 33.604084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231253, 36.560303, 33.816719>,  <30.879339, 36.254356, 33.757500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231253, 36.560303, 33.816719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.202223, 36.168350, 33.891083>,  <30.184805, 35.933178, 33.935703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.202223, 36.168350, 33.891083>,  <30.231253, 36.560303, 33.816719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202223, 36.168350, 33.891083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590285, 0.192452, 0.783917,
		-0.803925, -0.052847, -0.592378,
		-0.072577, -0.979882, 0.185912,
		30.180450, 35.874386, 33.946857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258959, 36.588230, 34.450546>,  <30.231253, 36.560303, 33.816719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258959, 36.588230, 34.450546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490610, 36.511543, 34.767494>,  <30.629601, 36.465530, 34.957664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490610, 36.511543, 34.767494>,  <30.258959, 36.588230, 34.450546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490610, 36.511543, 34.767494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431411, 0.896781, -0.098326,
		-0.691734, 0.398781, 0.602061,
		0.579128, -0.191721, 0.792373,
		30.664349, 36.454025, 35.005207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295040, 37.194580, 34.801727>,  <30.258959, 36.588230, 34.450546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295040, 37.194580, 34.801727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631666, 37.008659, 34.911800>,  <30.833641, 36.897106, 34.977844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631666, 37.008659, 34.911800>,  <30.295040, 37.194580, 34.801727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631666, 37.008659, 34.911800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515903, 0.842590, -0.154550,
		-0.160033, 0.272033, 0.948888,
		0.841566, -0.464801, 0.275185,
		30.884136, 36.869221, 34.994354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645206, 37.707378, 35.179871>,  <30.295040, 37.194580, 34.801727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645206, 37.707378, 35.179871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924662, 37.437813, 35.083755>,  <31.092335, 37.276073, 35.026085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924662, 37.437813, 35.083755>,  <30.645206, 37.707378, 35.179871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924662, 37.437813, 35.083755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587228, 0.731970, -0.345518,
		0.408737, 0.100287, 0.907126,
		0.698639, -0.673916, -0.240292,
		31.134253, 37.235638, 35.011669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376856, 37.890972, 35.382107>,  <30.645206, 37.707378, 35.179871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376856, 37.890972, 35.382107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416388, 37.647797, 35.066982>,  <31.440107, 37.501892, 34.877907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416388, 37.647797, 35.066982>,  <31.376856, 37.890972, 35.382107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416388, 37.647797, 35.066982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591547, 0.672508, -0.444752,
		0.800190, -0.422072, 0.426088,
		0.098830, -0.607938, -0.787810,
		31.446037, 37.465416, 34.830639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071735, 38.101055, 35.132927>,  <31.376856, 37.890972, 35.382107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071735, 38.101055, 35.132927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914507, 37.887299, 34.833614>,  <31.820171, 37.759045, 34.654026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914507, 37.887299, 34.833614>,  <32.071735, 38.101055, 35.132927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914507, 37.887299, 34.833614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610180, 0.457196, -0.647034,
		0.687880, -0.710913, 0.146366,
		-0.393067, -0.534391, -0.748281,
		31.796587, 37.726982, 34.609131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651646, 37.886555, 34.676052>,  <32.071735, 38.101055, 35.132927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651646, 37.886555, 34.676052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.317558, 37.851620, 34.458878>,  <32.117104, 37.830658, 34.328571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.317558, 37.851620, 34.458878>,  <32.651646, 37.886555, 34.676052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317558, 37.851620, 34.458878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471298, 0.395033, -0.788560,
		0.283344, -0.914507, -0.288780,
		-0.835221, -0.087332, -0.542936,
		32.066994, 37.825420, 34.295998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907303, 37.674908, 34.021549>,  <32.651646, 37.886555, 34.676052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907303, 37.674908, 34.021549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.545589, 37.838337, 33.972000>,  <32.328564, 37.936394, 33.942268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.545589, 37.838337, 33.972000>,  <32.907303, 37.674908, 34.021549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545589, 37.838337, 33.972000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320738, 0.458617, -0.828733,
		-0.281784, -0.789139, -0.545763,
		-0.904282, 0.408571, -0.123876,
		32.274303, 37.960907, 33.934837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814442, 37.638660, 33.361195>,  <32.907303, 37.674908, 34.021549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814442, 37.638660, 33.361195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518215, 37.898720, 33.429165>,  <32.340481, 38.054756, 33.469948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518215, 37.898720, 33.429165>,  <32.814442, 37.638660, 33.361195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518215, 37.898720, 33.429165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279417, 0.527891, -0.802033,
		-0.611142, -0.546476, -0.572599,
		-0.740562, 0.650149, 0.169922,
		32.296047, 38.093765, 33.480141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467297, 37.733383, 32.710693>,  <32.814442, 37.638660, 33.361195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467297, 37.733383, 32.710693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390697, 38.051521, 32.940739>,  <32.344738, 38.242405, 33.078766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390697, 38.051521, 32.940739>,  <32.467297, 37.733383, 32.710693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390697, 38.051521, 32.940739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300715, 0.605323, -0.736990,
		-0.934290, 0.031812, -0.355091,
		-0.191500, 0.795344, 0.575113,
		32.333248, 38.290123, 33.113274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134998, 38.193264, 32.259171>,  <32.467297, 37.733383, 32.710693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134998, 38.193264, 32.259171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267014, 38.435749, 32.548607>,  <32.346222, 38.581242, 32.722267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267014, 38.435749, 32.548607>,  <32.134998, 38.193264, 32.259171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267014, 38.435749, 32.548607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282555, 0.667951, -0.688480,
		-0.900689, 0.431675, 0.049157,
		0.330034, 0.606216, 0.723588,
		32.366024, 38.617615, 32.765682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783491, 38.890697, 32.186432>,  <32.134998, 38.193264, 32.259171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783491, 38.890697, 32.186432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107090, 38.951824, 32.413471>,  <32.301250, 38.988503, 32.549694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107090, 38.951824, 32.413471>,  <31.783491, 38.890697, 32.186432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107090, 38.951824, 32.413471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250684, 0.783702, -0.568303,
		-0.531676, 0.602044, 0.595704,
		0.808998, 0.152820, 0.567599,
		32.349789, 38.997669, 32.583752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807774, 39.704124, 32.310238>,  <31.783491, 38.890697, 32.186432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807774, 39.704124, 32.310238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172550, 39.561340, 32.391171>,  <32.391415, 39.475670, 32.439732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172550, 39.561340, 32.391171>,  <31.807774, 39.704124, 32.310238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172550, 39.561340, 32.391171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409205, 0.827497, -0.384449,
		-0.030195, 0.433390, 0.900700,
		0.911943, -0.356963, 0.202331,
		32.446133, 39.454250, 32.451870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155468, 40.348869, 32.317135>,  <31.807774, 39.704124, 32.310238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155468, 40.348869, 32.317135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439911, 40.067791, 32.307758>,  <32.610577, 39.899143, 32.302132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439911, 40.067791, 32.307758>,  <32.155468, 40.348869, 32.317135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439911, 40.067791, 32.307758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538984, 0.566243, -0.623590,
		0.451465, 0.430805, 0.781400,
		0.711108, -0.702692, -0.023442,
		32.653244, 39.856983, 32.300724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727219, 40.604259, 32.625671>,  <32.155468, 40.348869, 32.317135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727219, 40.604259, 32.625671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895443, 40.307545, 32.416721>,  <32.996376, 40.129517, 32.291351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895443, 40.307545, 32.416721>,  <32.727219, 40.604259, 32.625671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895443, 40.307545, 32.416721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629684, 0.653167, -0.420560,
		0.653167, -0.152062, 0.741789,
		0.420560, -0.741789, -0.522378,
		33.021610, 40.085007, 32.260010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360191, 40.910770, 32.460163>,  <32.727219, 40.604259, 32.625671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360191, 40.910770, 32.460163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315956, 40.592545, 32.221886>,  <33.289417, 40.401608, 32.078918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315956, 40.592545, 32.221886>,  <33.360191, 40.910770, 32.460163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315956, 40.592545, 32.221886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445621, 0.496052, -0.745221,
		0.888365, -0.347862, 0.299665,
		-0.110585, -0.795565, -0.595690,
		33.282780, 40.353874, 32.043179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061649, 40.678539, 32.211456>,  <33.360191, 40.910770, 32.460163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061649, 40.678539, 32.211456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780533, 40.540333, 31.962711>,  <33.611862, 40.457409, 31.813465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780533, 40.540333, 31.962711>,  <34.061649, 40.678539, 32.211456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780533, 40.540333, 31.962711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434868, 0.483148, -0.759906,
		0.563011, -0.804479, -0.189296,
		-0.702786, -0.345517, -0.621860,
		33.569698, 40.436676, 31.776154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476601, 40.420979, 31.550833>,  <34.061649, 40.678539, 32.211456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476601, 40.420979, 31.550833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095028, 40.478920, 31.445730>,  <33.866085, 40.513683, 31.382669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095028, 40.478920, 31.445730>,  <34.476601, 40.420979, 31.550833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095028, 40.478920, 31.445730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299520, 0.408394, -0.862266,
		-0.017594, -0.901239, -0.432964,
		-0.953928, 0.144852, -0.262754,
		33.808849, 40.522377, 31.366903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454258, 40.220387, 30.880602>,  <34.476601, 40.420979, 31.550833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454258, 40.220387, 30.880602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138950, 40.453018, 30.960991>,  <33.949764, 40.592598, 31.009224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138950, 40.453018, 30.960991>,  <34.454258, 40.220387, 30.880602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138950, 40.453018, 30.960991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140675, 0.488289, -0.861269,
		-0.599030, -0.650643, -0.466719,
		-0.788272, 0.581582, 0.200970,
		33.902470, 40.627491, 31.021282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983009, 40.247627, 30.260092>,  <34.454258, 40.220387, 30.880602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983009, 40.247627, 30.260092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918724, 40.585770, 30.463873>,  <33.880154, 40.788654, 30.586142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918724, 40.585770, 30.463873>,  <33.983009, 40.247627, 30.260092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918724, 40.585770, 30.463873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192945, 0.533112, -0.823750,
		-0.967959, -0.034087, -0.248784,
		-0.160709, 0.845358, 0.509454,
		33.870510, 40.839378, 30.616709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636688, 40.758076, 29.869978>,  <33.983009, 40.247627, 30.260092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636688, 40.758076, 29.869978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.834496, 40.975170, 30.141533>,  <33.953178, 41.105427, 30.304466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.834496, 40.975170, 30.141533>,  <33.636688, 40.758076, 29.869978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834496, 40.975170, 30.141533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515114, 0.446119, -0.731871,
		-0.700077, 0.711629, -0.058957,
		0.494519, 0.542736, 0.678888,
		33.982853, 41.137989, 30.345200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641426, 41.400654, 29.492413>,  <33.636688, 40.758076, 29.869978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641426, 41.400654, 29.492413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888985, 41.481358, 29.796059>,  <34.037521, 41.529781, 29.978247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888985, 41.481358, 29.796059>,  <33.641426, 41.400654, 29.492413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888985, 41.481358, 29.796059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577548, 0.538121, -0.613892,
		-0.532356, 0.818363, 0.216516,
		0.618898, 0.201761, 0.759116,
		34.074654, 41.541885, 30.023794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846668, 42.198570, 29.425875>,  <33.641426, 41.400654, 29.492413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846668, 42.198570, 29.425875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147564, 42.037201, 29.634254>,  <34.328102, 41.940380, 29.759283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147564, 42.037201, 29.634254>,  <33.846668, 42.198570, 29.425875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147564, 42.037201, 29.634254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635427, 0.653295, -0.411628,
		-0.174274, 0.640668, 0.747779,
		0.752237, -0.403423, 0.520950,
		34.373234, 41.916172, 29.790539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178234, 42.745571, 29.696648>,  <33.846668, 42.198570, 29.425875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178234, 42.745571, 29.696648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448044, 42.451290, 29.721170>,  <34.609932, 42.274723, 29.735884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448044, 42.451290, 29.721170>,  <34.178234, 42.745571, 29.696648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448044, 42.451290, 29.721170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700448, 0.611543, -0.367950,
		0.233209, 0.291135, 0.927822,
		0.674527, -0.735700, 0.061308,
		34.650402, 42.230579, 29.739563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853035, 43.045830, 30.012840>,  <34.178234, 42.745571, 29.696648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853035, 43.045830, 30.012840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960297, 42.702389, 29.838070>,  <35.024654, 42.496326, 29.733208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960297, 42.702389, 29.838070>,  <34.853035, 43.045830, 30.012840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960297, 42.702389, 29.838070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878343, 0.404197, -0.255223,
		0.395738, -0.315333, 0.862529,
		0.268151, -0.858598, -0.436926,
		35.040741, 42.444809, 29.706991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586800, 42.808224, 30.266930>,  <34.853035, 43.045830, 30.012840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586800, 42.808224, 30.266930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484093, 42.656197, 29.911488>,  <35.422466, 42.564980, 29.698223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484093, 42.656197, 29.911488>,  <35.586800, 42.808224, 30.266930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484093, 42.656197, 29.911488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745837, 0.506811, -0.432285,
		0.614652, -0.773752, 0.153335,
		-0.256769, -0.380067, -0.888605,
		35.407063, 42.542175, 29.644907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265446, 42.808155, 29.995281>,  <35.586800, 42.808224, 30.266930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265446, 42.808155, 29.995281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064983, 42.693779, 29.668581>,  <35.944706, 42.625153, 29.472561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064983, 42.693779, 29.668581>,  <36.265446, 42.808155, 29.995281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064983, 42.693779, 29.668581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774065, 0.273824, -0.570827,
		0.386870, -0.918290, 0.084110,
		-0.501154, -0.285943, -0.816751,
		35.914639, 42.607998, 29.423555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710262, 42.321983, 29.534050>,  <36.265446, 42.808155, 29.995281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710262, 42.321983, 29.534050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416889, 42.521976, 29.349838>,  <36.240864, 42.641972, 29.239311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416889, 42.521976, 29.349838>,  <36.710262, 42.321983, 29.534050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416889, 42.521976, 29.349838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679702, 0.530577, -0.506451,
		-0.008872, -0.684472, -0.728985,
		-0.733434, 0.499986, -0.460530,
		36.196857, 42.671974, 29.211679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120804, 41.684948, 29.456158>,  <36.710262, 42.321983, 29.534050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120804, 41.684948, 29.456158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448357, 41.731838, 29.680902>,  <37.644890, 41.759972, 29.815748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448357, 41.731838, 29.680902>,  <37.120804, 41.684948, 29.456158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448357, 41.731838, 29.680902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474126, -0.413541, 0.777296,
		0.323469, -0.902908, -0.283063,
		0.818885, 0.117223, 0.561860,
		37.694023, 41.767006, 29.849461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102364, 41.050148, 29.777578>,  <37.120804, 41.684948, 29.456158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102364, 41.050148, 29.777578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363754, 41.277489, 29.977556>,  <37.520588, 41.413891, 30.097544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363754, 41.277489, 29.977556>,  <37.102364, 41.050148, 29.777578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363754, 41.277489, 29.977556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297718, -0.414259, 0.860089,
		0.695936, -0.710894, -0.101503,
		0.653480, 0.568348, 0.499944,
		37.559799, 41.447994, 30.127539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644073, 40.653702, 30.054785>,  <37.102364, 41.050148, 29.777578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644073, 40.653702, 30.054785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584148, 40.974190, 30.286512>,  <37.548195, 41.166481, 30.425549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584148, 40.974190, 30.286512>,  <37.644073, 40.653702, 30.054785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584148, 40.974190, 30.286512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220199, -0.598253, 0.770458,
		0.963883, -0.012144, 0.266050,
		-0.149809, 0.801215, 0.579320,
		37.539207, 41.214554, 30.460308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908585, 40.419586, 30.799330>,  <37.644073, 40.653702, 30.054785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908585, 40.419586, 30.799330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687866, 40.749962, 30.845533>,  <37.555435, 40.948189, 30.873255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687866, 40.749962, 30.845533>,  <37.908585, 40.419586, 30.799330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687866, 40.749962, 30.845533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233365, -0.285886, 0.929414,
		0.800664, 0.485891, 0.350497,
		-0.551796, 0.825941, 0.115509,
		37.522327, 40.997746, 30.880186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159660, 40.596924, 31.428843>,  <37.908585, 40.419586, 30.799330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159660, 40.596924, 31.428843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819206, 40.801041, 31.379585>,  <37.614933, 40.923512, 31.350031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819206, 40.801041, 31.379585>,  <38.159660, 40.596924, 31.428843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819206, 40.801041, 31.379585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242267, -0.173739, 0.954527,
		0.465693, 0.842269, 0.271503,
		-0.851139, 0.510292, -0.123145,
		37.563866, 40.954128, 31.342642>
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
