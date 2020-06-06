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
	<24.000153, 34.918461, 35.013283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362757, 35.007908, 35.156521>,  <24.580320, 35.061577, 35.242462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362757, 35.007908, 35.156521>,  <24.000153, 34.918461, 35.013283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362757, 35.007908, 35.156521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396444, -0.159276, -0.904137,
		-0.145147, 0.961575, -0.233038,
		0.906512, 0.223619, 0.358092,
		24.634710, 35.074993, 35.263947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.330652, 35.378029, 34.539009>,  <24.000153, 34.918461, 35.013283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.330652, 35.378029, 34.539009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569611, 35.143295, 34.757641>,  <24.712986, 35.002457, 34.888821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569611, 35.143295, 34.757641>,  <24.330652, 35.378029, 34.539009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569611, 35.143295, 34.757641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411035, -0.361168, -0.837023,
		0.688598, 0.724696, 0.025448,
		0.597397, -0.586833, 0.546575,
		24.748829, 34.967247, 34.921612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133490, 35.514126, 34.558815>,  <24.330652, 35.378029, 34.539009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133490, 35.514126, 34.558815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020971, 35.130432, 34.569687>,  <24.953461, 34.900215, 34.576210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020971, 35.130432, 34.569687>,  <25.133490, 35.514126, 34.558815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020971, 35.130432, 34.569687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465346, -0.161124, -0.870340,
		0.839241, -0.232175, 0.491700,
		-0.281296, -0.959236, 0.027180,
		24.936583, 34.842663, 34.577839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735588, 34.963833, 34.436352>,  <25.133490, 35.514126, 34.558815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735588, 34.963833, 34.436352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380163, 34.853653, 34.289608>,  <25.166908, 34.787544, 34.201561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380163, 34.853653, 34.289608>,  <25.735588, 34.963833, 34.436352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380163, 34.853653, 34.289608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421939, -0.176789, -0.889221,
		0.180075, -0.944921, 0.273309,
		-0.888561, -0.275446, -0.366864,
		25.113594, 34.771019, 34.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731134, 34.198452, 34.277260>,  <25.735588, 34.963833, 34.436352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731134, 34.198452, 34.277260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462223, 34.364243, 34.031902>,  <25.300877, 34.463718, 33.884689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462223, 34.364243, 34.031902>,  <25.731134, 34.198452, 34.277260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462223, 34.364243, 34.031902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603072, -0.173926, -0.778495,
		-0.429355, -0.893284, -0.133034,
		-0.672279, 0.414479, -0.613391,
		25.260540, 34.488586, 33.847885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626041, 33.707455, 33.706425>,  <25.731134, 34.198452, 34.277260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626041, 33.707455, 33.706425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519499, 34.069065, 33.572681>,  <25.455574, 34.286030, 33.492435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519499, 34.069065, 33.572681>,  <25.626041, 33.707455, 33.706425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519499, 34.069065, 33.572681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457064, -0.186952, -0.869564,
		-0.848615, -0.384438, -0.363400,
		-0.266355, 0.904022, -0.334363,
		25.439592, 34.340271, 33.472374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276020, 33.635521, 32.955524>,  <25.626041, 33.707455, 33.706425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276020, 33.635521, 32.955524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454855, 33.987980, 33.017086>,  <25.562155, 34.199455, 33.054024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454855, 33.987980, 33.017086>,  <25.276020, 33.635521, 32.955524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454855, 33.987980, 33.017086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495332, -0.100615, -0.862858,
		-0.744823, 0.462006, -0.481445,
		0.447086, 0.881151, 0.153906,
		25.588982, 34.252327, 33.063259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270596, 34.062958, 32.337379>,  <25.276020, 33.635521, 32.955524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270596, 34.062958, 32.337379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587967, 34.184036, 32.548603>,  <25.778389, 34.256683, 32.675339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587967, 34.184036, 32.548603>,  <25.270596, 34.062958, 32.337379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587967, 34.184036, 32.548603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503054, 0.162290, -0.848881,
		-0.342648, 0.939170, -0.023506,
		0.793428, 0.302692, 0.528062,
		25.825994, 34.274845, 32.707020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522310, 34.635696, 32.014290>,  <25.270596, 34.062958, 32.337379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522310, 34.635696, 32.014290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827374, 34.522160, 32.246769>,  <26.010412, 34.454037, 32.386257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827374, 34.522160, 32.246769>,  <25.522310, 34.635696, 32.014290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827374, 34.522160, 32.246769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638474, 0.186637, -0.746671,
		0.103465, 0.940532, 0.323566,
		0.762657, -0.283843, 0.581194,
		26.056171, 34.437008, 32.421127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073313, 34.962887, 31.792364>,  <25.522310, 34.635696, 32.014290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073313, 34.962887, 31.792364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258724, 34.657833, 31.972818>,  <26.369972, 34.474800, 32.081089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258724, 34.657833, 31.972818>,  <26.073313, 34.962887, 31.792364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258724, 34.657833, 31.972818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585046, -0.118964, -0.802227,
		0.665478, 0.635791, 0.391035,
		0.463530, -0.762639, 0.451135,
		26.397783, 34.429043, 32.108158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747755, 34.996437, 31.625177>,  <26.073313, 34.962887, 31.792364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747755, 34.996437, 31.625177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690561, 34.615845, 31.734159>,  <26.656244, 34.387489, 31.799549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690561, 34.615845, 31.734159>,  <26.747755, 34.996437, 31.625177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690561, 34.615845, 31.734159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482182, -0.307373, -0.820379,
		0.864324, 0.014071, 0.502739,
		-0.142985, -0.951485, 0.272455,
		26.647665, 34.330399, 31.815895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325796, 34.667206, 31.428423>,  <26.747755, 34.996437, 31.625177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325796, 34.667206, 31.428423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067074, 34.363529, 31.457485>,  <26.911840, 34.181324, 31.474922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067074, 34.363529, 31.457485>,  <27.325796, 34.667206, 31.428423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067074, 34.363529, 31.457485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428458, -0.440532, -0.788895,
		0.630927, -0.479130, 0.610218,
		-0.646803, -0.759188, 0.072656,
		26.873034, 34.135773, 31.479282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821854, 34.014027, 31.402554>,  <27.325796, 34.667206, 31.428423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821854, 34.014027, 31.402554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454964, 33.890717, 31.301624>,  <27.234831, 33.816730, 31.241068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454964, 33.890717, 31.301624>,  <27.821854, 34.014027, 31.402554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454964, 33.890717, 31.301624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378284, -0.475393, -0.794294,
		0.124911, -0.823994, 0.552658,
		-0.917224, -0.308278, -0.252322,
		27.179796, 33.798233, 31.225927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849264, 33.190578, 31.408333>,  <27.821854, 34.014027, 31.402554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849264, 33.190578, 31.408333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523500, 33.294273, 31.200666>,  <27.328041, 33.356491, 31.076067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523500, 33.294273, 31.200666>,  <27.849264, 33.190578, 31.408333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523500, 33.294273, 31.200666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232585, -0.673831, -0.701325,
		-0.531636, -0.691917, 0.488481,
		-0.814412, 0.259236, -0.519162,
		27.279177, 33.372044, 31.044918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412991, 32.482635, 31.227875>,  <27.849264, 33.190578, 31.408333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412991, 32.482635, 31.227875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298082, 32.776779, 30.982363>,  <27.229137, 32.953266, 30.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298082, 32.776779, 30.982363>,  <27.412991, 32.482635, 31.227875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298082, 32.776779, 30.982363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148251, -0.598933, -0.786957,
		-0.946307, -0.317062, 0.063038,
		-0.287270, 0.735357, -0.613780,
		27.211901, 32.997387, 30.798229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963486, 32.122738, 30.757652>,  <27.412991, 32.482635, 31.227875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963486, 32.122738, 30.757652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081465, 32.455723, 30.570032>,  <27.152252, 32.655514, 30.457460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081465, 32.455723, 30.570032>,  <26.963486, 32.122738, 30.757652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081465, 32.455723, 30.570032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078858, -0.510423, -0.856301,
		-0.952254, 0.215576, -0.216195,
		0.294949, 0.832464, -0.469052,
		27.169949, 32.705463, 30.429317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634357, 31.985037, 30.112839>,  <26.963486, 32.122738, 30.757652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634357, 31.985037, 30.112839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900190, 32.275414, 30.042021>,  <27.059690, 32.449638, 29.999531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900190, 32.275414, 30.042021>,  <26.634357, 31.985037, 30.112839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900190, 32.275414, 30.042021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279575, -0.461305, -0.842043,
		-0.692943, 0.510108, -0.509528,
		0.664580, 0.725939, -0.177045,
		27.099564, 32.493195, 29.988907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738926, 32.100105, 29.456608>,  <26.634357, 31.985037, 30.112839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738926, 32.100105, 29.456608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079988, 32.293686, 29.535368>,  <27.284626, 32.409832, 29.582624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079988, 32.293686, 29.535368>,  <26.738926, 32.100105, 29.456608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079988, 32.293686, 29.535368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396009, -0.352789, -0.847772,
		-0.340812, 0.800834, -0.492456,
		0.852657, 0.483948, 0.196902,
		27.335785, 32.438869, 29.594439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884228, 32.557690, 28.892897>,  <26.738926, 32.100105, 29.456608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884228, 32.557690, 28.892897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218592, 32.468521, 29.093519>,  <27.419210, 32.415020, 29.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218592, 32.468521, 29.093519>,  <26.884228, 32.557690, 28.892897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218592, 32.468521, 29.093519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484904, -0.128174, -0.865124,
		0.257145, 0.966372, 0.000955,
		0.835909, -0.222926, 0.501557,
		27.469364, 32.401642, 29.243986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386045, 32.912106, 28.559633>,  <26.884228, 32.557690, 28.892897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386045, 32.912106, 28.559633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581671, 32.613258, 28.739695>,  <27.699045, 32.433949, 28.847731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581671, 32.613258, 28.739695>,  <27.386045, 32.912106, 28.559633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581671, 32.613258, 28.739695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451608, -0.224637, -0.863475,
		0.746237, 0.625584, 0.227543,
		0.489061, -0.747117, 0.450151,
		27.728390, 32.389122, 28.874741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992926, 33.115421, 28.347080>,  <27.386045, 32.912106, 28.559633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992926, 33.115421, 28.347080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049368, 32.747585, 28.493750>,  <28.083233, 32.526886, 28.581751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049368, 32.747585, 28.493750>,  <27.992926, 33.115421, 28.347080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049368, 32.747585, 28.493750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631842, -0.201483, -0.748452,
		0.762144, 0.337293, 0.552603,
		0.141108, -0.919586, 0.366675,
		28.091700, 32.471710, 28.603752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632845, 33.117371, 28.317638>,  <27.992926, 33.115421, 28.347080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632845, 33.117371, 28.317638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495268, 32.742020, 28.331238>,  <28.412722, 32.516808, 28.339397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495268, 32.742020, 28.331238>,  <28.632845, 33.117371, 28.317638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495268, 32.742020, 28.331238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682698, -0.274758, -0.677076,
		0.644693, -0.209663, 0.735128,
		-0.343940, -0.938376, 0.033998,
		28.392086, 32.460506, 28.341436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178726, 32.792828, 28.314516>,  <28.632845, 33.117371, 28.317638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178726, 32.792828, 28.314516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916098, 32.516518, 28.193354>,  <28.758520, 32.350731, 28.120657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916098, 32.516518, 28.193354>,  <29.178726, 32.792828, 28.314516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916098, 32.516518, 28.193354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640599, -0.298686, -0.707403,
		0.398180, -0.658500, 0.638616,
		-0.656571, -0.690771, -0.302904,
		28.719126, 32.309288, 28.102482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612629, 32.085342, 28.193270>,  <29.178726, 32.792828, 28.314516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612629, 32.085342, 28.193270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250929, 32.033211, 28.030621>,  <29.033909, 32.001930, 27.933031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250929, 32.033211, 28.030621>,  <29.612629, 32.085342, 28.193270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250929, 32.033211, 28.030621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413697, -0.503233, -0.758691,
		-0.105747, -0.854267, 0.508966,
		-0.904252, -0.130328, -0.406623,
		28.979652, 31.994112, 27.908634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561146, 31.339678, 28.050707>,  <29.612629, 32.085342, 28.193270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561146, 31.339678, 28.050707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350264, 31.576656, 27.807047>,  <29.223734, 31.718843, 27.660851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350264, 31.576656, 27.807047>,  <29.561146, 31.339678, 28.050707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350264, 31.576656, 27.807047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500745, -0.362563, -0.786004,
		-0.686521, -0.719413, -0.105520,
		-0.527204, 0.592447, -0.609149,
		29.192102, 31.754391, 27.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398918, 30.890396, 27.447680>,  <29.561146, 31.339678, 28.050707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398918, 30.890396, 27.447680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355993, 31.275768, 27.349466>,  <29.330238, 31.506992, 27.290539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355993, 31.275768, 27.349466>,  <29.398918, 30.890396, 27.447680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355993, 31.275768, 27.349466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273329, -0.208855, -0.938973,
		-0.955916, -0.167874, -0.240921,
		-0.107312, 0.963430, -0.245533,
		29.323799, 31.564796, 27.275806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976870, 31.009594, 26.777662>,  <29.398918, 30.890396, 27.447680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976870, 31.009594, 26.777662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244497, 31.304131, 26.817961>,  <29.405073, 31.480852, 26.842140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244497, 31.304131, 26.817961>,  <28.976870, 31.009594, 26.777662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244497, 31.304131, 26.817961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360089, -0.202596, -0.910654,
		-0.650140, 0.645569, -0.400698,
		0.669070, 0.736339, 0.100746,
		29.445219, 31.525032, 26.848185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589125, 30.947144, 26.078972>,  <28.976870, 31.009594, 26.777662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589125, 30.947144, 26.078972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201662, 30.938543, 26.177958>,  <27.969185, 30.933384, 26.237349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201662, 30.938543, 26.177958>,  <28.589125, 30.947144, 26.078972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201662, 30.938543, 26.177958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080410, -0.915462, -0.394288,
		0.235022, -0.401829, 0.885041,
		-0.968658, -0.021501, 0.247465,
		27.911064, 30.932093, 26.252197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323748, 30.345730, 26.464972>,  <28.589125, 30.947144, 26.078972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323748, 30.345730, 26.464972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053671, 30.414160, 26.177959>,  <27.891624, 30.455217, 26.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053671, 30.414160, 26.177959>,  <28.323748, 30.345730, 26.464972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053671, 30.414160, 26.177959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280889, -0.839819, -0.464548,
		-0.682069, -0.515205, 0.518985,
		-0.675191, 0.171077, -0.717530,
		27.851114, 30.465483, 25.962700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780952, 29.807400, 26.393635>,  <28.323748, 30.345730, 26.464972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780952, 29.807400, 26.393635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898643, 29.987375, 26.056356>,  <27.969259, 30.095360, 25.853989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898643, 29.987375, 26.056356>,  <27.780952, 29.807400, 26.393635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898643, 29.987375, 26.056356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336708, -0.874487, -0.349143,
		-0.894459, -0.181184, -0.408798,
		0.294230, 0.449939, -0.843198,
		27.986912, 30.122356, 25.803396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528650, 29.433182, 25.622103>,  <27.780952, 29.807400, 26.393635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528650, 29.433182, 25.622103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878450, 29.624783, 25.591637>,  <28.088331, 29.739744, 25.573357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878450, 29.624783, 25.591637>,  <27.528650, 29.433182, 25.622103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878450, 29.624783, 25.591637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404522, -0.806954, -0.430334,
		-0.267594, 0.345517, -0.899450,
		0.874503, 0.479003, -0.076167,
		28.140800, 29.768484, 25.568787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386267, 28.588396, 25.636499>,  <27.528650, 29.433182, 25.622103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386267, 28.588396, 25.636499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314886, 28.278315, 25.878893>,  <27.272058, 28.092266, 26.024328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314886, 28.278315, 25.878893>,  <27.386267, 28.588396, 25.636499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314886, 28.278315, 25.878893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143548, 0.588769, 0.795453,
		-0.973421, 0.228938, 0.006212,
		-0.178452, -0.775202, 0.605984,
		27.261351, 28.045753, 26.060688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901342, 28.756620, 26.145779>,  <27.386267, 28.588396, 25.636499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901342, 28.756620, 26.145779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129341, 28.483746, 26.328962>,  <27.266140, 28.320021, 26.438873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129341, 28.483746, 26.328962>,  <26.901342, 28.756620, 26.145779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129341, 28.483746, 26.328962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102185, 0.494185, 0.863331,
		-0.815268, -0.538892, 0.211974,
		0.569996, -0.682185, 0.457960,
		27.300341, 28.279091, 26.466351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590834, 28.440792, 26.756966>,  <26.901342, 28.756620, 26.145779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590834, 28.440792, 26.756966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986053, 28.416677, 26.813704>,  <27.223186, 28.402208, 26.847746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986053, 28.416677, 26.813704>,  <26.590834, 28.440792, 26.756966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986053, 28.416677, 26.813704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091093, 0.513969, 0.852958,
		-0.124326, -0.855688, 0.502337,
		0.988051, -0.060285, 0.141847,
		27.282469, 28.398592, 26.856258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691839, 28.031260, 27.348904>,  <26.590834, 28.440792, 26.756966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691839, 28.031260, 27.348904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982752, 28.293415, 27.267391>,  <27.157299, 28.450708, 27.218483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982752, 28.293415, 27.267391>,  <26.691839, 28.031260, 27.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982752, 28.293415, 27.267391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025047, 0.322056, 0.946389,
		0.685883, -0.683186, 0.250641,
		0.727280, 0.655391, -0.203781,
		27.200935, 28.490032, 27.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178280, 27.973482, 27.881451>,  <26.691839, 28.031260, 27.348904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178280, 27.973482, 27.881451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195486, 28.341232, 27.725042>,  <27.205809, 28.561882, 27.631197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195486, 28.341232, 27.725042>,  <27.178280, 27.973482, 27.881451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195486, 28.341232, 27.725042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156348, 0.380368, 0.911524,
		0.986765, -0.100343, -0.127381,
		0.043013, 0.919376, -0.391023,
		27.208389, 28.617044, 27.607735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840609, 28.305267, 28.149052>,  <27.178280, 27.973482, 27.881451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840609, 28.305267, 28.149052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551811, 28.564726, 28.052732>,  <27.378532, 28.720400, 27.994942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551811, 28.564726, 28.052732>,  <27.840609, 28.305267, 28.149052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551811, 28.564726, 28.052732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102848, 0.444770, 0.889720,
		0.684212, 0.617608, -0.387833,
		-0.721995, 0.648645, -0.240797,
		27.335213, 28.759319, 27.980494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135078, 29.021557, 28.177080>,  <27.840609, 28.305267, 28.149052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135078, 29.021557, 28.177080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737873, 29.027222, 28.223940>,  <27.499550, 29.030621, 28.252056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737873, 29.027222, 28.223940>,  <28.135078, 29.021557, 28.177080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737873, 29.027222, 28.223940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113453, 0.387602, 0.914819,
		-0.032454, 0.921718, -0.386500,
		-0.993013, 0.014160, 0.117151,
		27.439970, 29.031469, 28.259085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161024, 29.474817, 28.610451>,  <28.135078, 29.021557, 28.177080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161024, 29.474817, 28.610451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781864, 29.347435, 28.607065>,  <27.554369, 29.271006, 28.605034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781864, 29.347435, 28.607065>,  <28.161024, 29.474817, 28.610451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781864, 29.347435, 28.607065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115263, 0.318075, 0.941033,
		-0.296986, 0.892980, -0.338210,
		-0.947900, -0.318457, -0.008464,
		27.497494, 29.251898, 28.604527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817741, 30.058079, 28.742178>,  <28.161024, 29.474817, 28.610451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817741, 30.058079, 28.742178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570501, 29.763725, 28.852760>,  <27.422157, 29.587112, 28.919109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570501, 29.763725, 28.852760>,  <27.817741, 30.058079, 28.742178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570501, 29.763725, 28.852760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109489, 0.428842, 0.896720,
		-0.778439, 0.523992, -0.345637,
		-0.618098, -0.735885, 0.276456,
		27.385073, 29.542959, 28.935698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431976, 30.402910, 29.033314>,  <27.817741, 30.058079, 28.742178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431976, 30.402910, 29.033314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317106, 30.054424, 29.192572>,  <27.248184, 29.845333, 29.288126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317106, 30.054424, 29.192572>,  <27.431976, 30.402910, 29.033314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317106, 30.054424, 29.192572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001422, 0.416040, 0.909345,
		-0.957878, 0.260574, -0.120715,
		-0.287174, -0.871213, 0.398145,
		27.230953, 29.793060, 29.312016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848537, 30.544670, 29.393618>,  <27.431976, 30.402910, 29.033314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848537, 30.544670, 29.393618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003649, 30.211052, 29.550589>,  <27.096716, 30.010881, 29.644772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003649, 30.211052, 29.550589>,  <26.848537, 30.544670, 29.393618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003649, 30.211052, 29.550589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028309, 0.436315, 0.899348,
		-0.921319, -0.337637, 0.192803,
		0.387776, -0.834045, 0.392427,
		27.119982, 29.960838, 29.668316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433104, 30.398256, 30.068266>,  <26.848537, 30.544670, 29.393618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433104, 30.398256, 30.068266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770687, 30.189787, 30.119034>,  <26.973238, 30.064705, 30.149494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770687, 30.189787, 30.119034>,  <26.433104, 30.398256, 30.068266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770687, 30.189787, 30.119034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072428, 0.345167, 0.935743,
		-0.531496, -0.780535, 0.329054,
		0.843959, -0.521176, 0.126922,
		27.023874, 30.033434, 30.157110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311537, 29.988529, 30.655716>,  <26.433104, 30.398256, 30.068266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311537, 29.988529, 30.655716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707378, 30.027649, 30.613535>,  <26.944883, 30.051121, 30.588226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707378, 30.027649, 30.613535>,  <26.311537, 29.988529, 30.655716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707378, 30.027649, 30.613535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074774, 0.276455, 0.958114,
		0.122854, -0.956038, 0.266268,
		0.989604, 0.097799, -0.105450,
		27.004259, 30.056990, 30.581900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589266, 29.592358, 31.233845>,  <26.311537, 29.988529, 30.655716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589266, 29.592358, 31.233845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859266, 29.859335, 31.108057>,  <27.021267, 30.019522, 31.032583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859266, 29.859335, 31.108057>,  <26.589266, 29.592358, 31.233845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859266, 29.859335, 31.108057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086504, 0.351687, 0.932112,
		0.732729, -0.656379, 0.179652,
		0.675000, 0.667445, -0.314471,
		27.061766, 30.059568, 31.013716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003815, 29.520773, 31.696829>,  <26.589266, 29.592358, 31.233845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003815, 29.520773, 31.696829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102949, 29.874634, 31.538857>,  <27.162430, 30.086950, 31.444073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102949, 29.874634, 31.538857>,  <27.003815, 29.520773, 31.696829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102949, 29.874634, 31.538857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107458, 0.380030, 0.918711,
		0.962824, -0.270127, -0.000878,
		0.247835, 0.884651, -0.394929,
		27.177299, 30.140030, 31.420378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642666, 29.627708, 31.981855>,  <27.003815, 29.520773, 31.696829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642666, 29.627708, 31.981855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501978, 29.972534, 31.835903>,  <27.417564, 30.179430, 31.748331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501978, 29.972534, 31.835903>,  <27.642666, 29.627708, 31.981855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501978, 29.972534, 31.835903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432643, 0.495357, 0.753287,
		0.830128, 0.107085, -0.547194,
		-0.351722, 0.862064, -0.364880,
		27.396461, 30.231153, 31.726439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207502, 30.144773, 32.118923>,  <27.642666, 29.627708, 31.981855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207502, 30.144773, 32.118923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881357, 30.374018, 32.086113>,  <27.685671, 30.511564, 32.066429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881357, 30.374018, 32.086113>,  <28.207502, 30.144773, 32.118923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881357, 30.374018, 32.086113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415585, 0.678018, 0.606285,
		0.403082, 0.460254, -0.791006,
		-0.815361, 0.573113, -0.082022,
		27.636749, 30.545952, 32.061508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490026, 30.731625, 32.344795>,  <28.207502, 30.144773, 32.118923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490026, 30.731625, 32.344795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098555, 30.811340, 32.364685>,  <27.863672, 30.859169, 32.376617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098555, 30.811340, 32.364685>,  <28.490026, 30.731625, 32.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098555, 30.811340, 32.364685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189421, 0.782108, 0.593655,
		0.079419, 0.590416, -0.803182,
		-0.978679, 0.199287, 0.049723,
		27.804951, 30.871126, 32.379601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400249, 31.463121, 32.246380>,  <28.490026, 30.731625, 32.344795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400249, 31.463121, 32.246380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074535, 31.331604, 32.437725>,  <27.879107, 31.252693, 32.552532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074535, 31.331604, 32.437725>,  <28.400249, 31.463121, 32.246380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074535, 31.331604, 32.437725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083535, 0.749153, 0.657108,
		-0.574425, 0.575033, -0.582558,
		-0.814284, -0.328796, 0.478368,
		27.830250, 31.232965, 32.581234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776615, 31.939821, 32.183193>,  <28.400249, 31.463121, 32.246380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776615, 31.939821, 32.183193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748440, 31.719570, 32.515903>,  <27.731535, 31.587420, 32.715530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748440, 31.719570, 32.515903>,  <27.776615, 31.939821, 32.183193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748440, 31.719570, 32.515903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140375, 0.831018, 0.538241,
		-0.987590, -0.078848, -0.135830,
		-0.070438, -0.550628, 0.831773,
		27.727308, 31.554382, 32.765434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433922, 32.411148, 32.536255>,  <27.776615, 31.939821, 32.183193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433922, 32.411148, 32.536255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503893, 32.116596, 32.797680>,  <27.545876, 31.939865, 32.954536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503893, 32.116596, 32.797680>,  <27.433922, 32.411148, 32.536255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503893, 32.116596, 32.797680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010580, 0.662355, 0.749116,
		-0.984525, -0.137955, 0.108072,
		0.174926, -0.736380, 0.653564,
		27.556372, 31.895683, 32.993748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916986, 32.363914, 32.991787>,  <27.433922, 32.411148, 32.536255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916986, 32.363914, 32.991787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229115, 32.217621, 33.194702>,  <27.416391, 32.129845, 33.316452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229115, 32.217621, 33.194702>,  <26.916986, 32.363914, 32.991787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229115, 32.217621, 33.194702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153283, 0.674574, 0.722117,
		-0.606306, -0.641241, 0.470323,
		0.780319, -0.365731, 0.507289,
		27.463211, 32.107903, 33.346889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701897, 32.337429, 33.644814>,  <26.916986, 32.363914, 32.991787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701897, 32.337429, 33.644814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100445, 32.318657, 33.673225>,  <27.339573, 32.307392, 33.690273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100445, 32.318657, 33.673225>,  <26.701897, 32.337429, 33.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100445, 32.318657, 33.673225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030234, 0.584846, 0.810581,
		-0.079584, -0.809786, 0.581303,
		0.996370, -0.046935, 0.071027,
		27.399355, 32.304577, 33.694534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760710, 32.155891, 34.304546>,  <26.701897, 32.337429, 33.644814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760710, 32.155891, 34.304546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099245, 32.325512, 34.175613>,  <27.302366, 32.427284, 34.098255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099245, 32.325512, 34.175613>,  <26.760710, 32.155891, 34.304546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099245, 32.325512, 34.175613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036178, 0.557985, 0.829062,
		0.531417, -0.713327, 0.456902,
		0.846337, 0.424048, -0.322329,
		27.353146, 32.452728, 34.078915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090754, 32.287937, 34.835407>,  <26.760710, 32.155891, 34.304546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090754, 32.287937, 34.835407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320671, 32.514126, 34.598816>,  <27.458622, 32.649841, 34.456860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320671, 32.514126, 34.598816>,  <27.090754, 32.287937, 34.835407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320671, 32.514126, 34.598816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270811, 0.550637, 0.789595,
		0.772188, -0.614034, 0.163365,
		0.574793, 0.565474, -0.591482,
		27.493109, 32.683769, 34.421371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683695, 32.332504, 35.179562>,  <27.090754, 32.287937, 34.835407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683695, 32.332504, 35.179562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678770, 32.653343, 34.940735>,  <27.675816, 32.845848, 34.797440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678770, 32.653343, 34.940735>,  <27.683695, 32.332504, 35.179562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678770, 32.653343, 34.940735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230697, 0.583278, 0.778824,
		0.972948, -0.128150, -0.192224,
		-0.012314, 0.802101, -0.597062,
		27.675076, 32.893974, 34.761616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225796, 32.696461, 35.398769>,  <27.683695, 32.332504, 35.179562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225796, 32.696461, 35.398769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018734, 32.962681, 35.183704>,  <27.894497, 33.122414, 35.054665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018734, 32.962681, 35.183704>,  <28.225796, 32.696461, 35.398769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018734, 32.962681, 35.183704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283369, 0.726305, 0.626245,
		0.807302, 0.171823, -0.564571,
		-0.517654, 0.665551, -0.537658,
		27.863438, 33.162346, 35.022408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418577, 32.911190, 36.154816>,  <28.225796, 32.696461, 35.398769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418577, 32.911190, 36.154816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617859, 32.652958, 35.923290>,  <28.737429, 32.498020, 35.784374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617859, 32.652958, 35.923290>,  <28.418577, 32.911190, 36.154816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617859, 32.652958, 35.923290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557780, -0.272460, 0.783994,
		-0.663831, -0.713440, 0.224349,
		0.498206, -0.645577, -0.578810,
		28.767321, 32.459286, 35.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712257, 32.623264, 36.678665>,  <28.418577, 32.911190, 36.154816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712257, 32.623264, 36.678665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779167, 32.286179, 36.883354>,  <28.819313, 32.083927, 37.006168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779167, 32.286179, 36.883354>,  <28.712257, 32.623264, 36.678665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779167, 32.286179, 36.883354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301086, 0.450574, 0.840434,
		-0.938811, -0.294654, -0.178359,
		0.167273, -0.842711, 0.511720,
		28.829350, 32.033367, 37.036869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190182, 32.554367, 37.037792>,  <28.712257, 32.623264, 36.678665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190182, 32.554367, 37.037792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502762, 32.373203, 37.209469>,  <28.690310, 32.264507, 37.312477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502762, 32.373203, 37.209469>,  <28.190182, 32.554367, 37.037792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502762, 32.373203, 37.209469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200873, 0.468626, 0.860255,
		-0.590748, -0.758462, 0.275232,
		0.781452, -0.452907, 0.429194,
		28.737198, 32.237331, 37.338226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027014, 32.121758, 37.620144>,  <28.190182, 32.554367, 37.037792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027014, 32.121758, 37.620144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378948, 32.309212, 37.651806>,  <28.590109, 32.421684, 37.670803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378948, 32.309212, 37.651806>,  <28.027014, 32.121758, 37.620144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378948, 32.309212, 37.651806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340716, 0.505819, 0.792503,
		0.331357, -0.724243, 0.604710,
		0.879838, 0.468636, 0.079155,
		28.642900, 32.449802, 37.675552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090206, 32.215752, 38.312958>,  <28.027014, 32.121758, 37.620144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090206, 32.215752, 38.312958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338350, 32.497555, 38.175076>,  <28.487236, 32.666637, 38.092346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338350, 32.497555, 38.175076>,  <28.090206, 32.215752, 38.312958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338350, 32.497555, 38.175076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247561, 0.592914, 0.766268,
		0.744224, -0.390025, 0.542228,
		0.620358, 0.704510, -0.344706,
		28.524458, 32.708908, 38.071663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419096, 32.548317, 38.843590>,  <28.090206, 32.215752, 38.312958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419096, 32.548317, 38.843590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415302, 32.786526, 38.522278>,  <28.413027, 32.929451, 38.329491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415302, 32.786526, 38.522278>,  <28.419096, 32.548317, 38.843590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415302, 32.786526, 38.522278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385968, 0.738884, 0.552339,
		0.922464, 0.315278, 0.222846,
		-0.009483, 0.595524, -0.803281,
		28.412457, 32.965183, 38.281292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603325, 33.144680, 39.011303>,  <28.419096, 32.548317, 38.843590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603325, 33.144680, 39.011303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360085, 33.236885, 38.707439>,  <28.214140, 33.292206, 38.525124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360085, 33.236885, 38.707439>,  <28.603325, 33.144680, 39.011303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360085, 33.236885, 38.707439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515413, 0.613166, 0.598646,
		0.603790, 0.755574, -0.254059,
		-0.608101, 0.230511, -0.759656,
		28.177654, 33.306038, 38.479542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124197, 33.089310, 39.590454>,  <28.603325, 33.144680, 39.011303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124197, 33.089310, 39.590454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993273, 32.812584, 39.847908>,  <28.914719, 32.646549, 40.002380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993273, 32.812584, 39.847908>,  <29.124197, 33.089310, 39.590454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993273, 32.812584, 39.847908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228558, -0.718892, -0.656472,
		0.916858, -0.067761, 0.393420,
		-0.327309, -0.691811, 0.643635,
		28.895081, 32.605042, 40.040997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679199, 33.499451, 39.750374>,  <29.124197, 33.089310, 39.590454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679199, 33.499451, 39.750374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930586, 33.698246, 39.511028>,  <30.081417, 33.817524, 39.367420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930586, 33.698246, 39.511028>,  <29.679199, 33.499451, 39.750374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930586, 33.698246, 39.511028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457812, 0.385566, 0.801092,
		0.628841, -0.777394, 0.014787,
		0.628465, 0.496989, -0.598360,
		30.119125, 33.847343, 39.331520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225094, 33.373684, 39.994865>,  <29.679199, 33.499451, 39.750374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225094, 33.373684, 39.994865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307068, 33.707542, 39.790371>,  <30.356253, 33.907860, 39.667675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307068, 33.707542, 39.790371>,  <30.225094, 33.373684, 39.994865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307068, 33.707542, 39.790371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377046, 0.414691, 0.828171,
		0.903238, -0.362480, -0.229717,
		0.204934, 0.834650, -0.511236,
		30.368547, 33.957939, 39.637001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922583, 33.574184, 40.227715>,  <30.225094, 33.373684, 39.994865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922583, 33.574184, 40.227715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784031, 33.913624, 40.067760>,  <30.700901, 34.117287, 39.971786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784031, 33.913624, 40.067760>,  <30.922583, 33.574184, 40.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784031, 33.913624, 40.067760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357100, 0.513454, 0.780285,
		0.867469, 0.127474, -0.480883,
		-0.346378, 0.848596, -0.399884,
		30.680119, 34.168201, 39.947796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415888, 34.058399, 40.313515>,  <30.922583, 33.574184, 40.227715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415888, 34.058399, 40.313515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111689, 34.298626, 40.214752>,  <30.929169, 34.442764, 40.155495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111689, 34.298626, 40.214752>,  <31.415888, 34.058399, 40.313515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111689, 34.298626, 40.214752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365008, 0.709856, 0.602390,
		0.537042, 0.367994, -0.759056,
		-0.760496, 0.600570, -0.246902,
		30.883539, 34.478798, 40.140682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738916, 34.830872, 40.245708>,  <31.415888, 34.058399, 40.313515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738916, 34.830872, 40.245708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344038, 34.864994, 40.299625>,  <31.107111, 34.885468, 40.331978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344038, 34.864994, 40.299625>,  <31.738916, 34.830872, 40.245708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344038, 34.864994, 40.299625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157518, 0.654707, 0.739287,
		-0.025188, 0.751054, -0.659761,
		-0.987195, 0.085303, 0.134795,
		31.047880, 34.890583, 40.340065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615370, 35.606796, 40.229691>,  <31.738916, 34.830872, 40.245708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615370, 35.606796, 40.229691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304840, 35.428974, 40.408440>,  <31.118523, 35.322281, 40.515690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304840, 35.428974, 40.408440>,  <31.615370, 35.606796, 40.229691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304840, 35.428974, 40.408440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114348, 0.597854, 0.793407,
		-0.619874, 0.667040, -0.413295,
		-0.776325, -0.444554, 0.446869,
		31.071943, 35.295609, 40.542500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230440, 36.096630, 40.624218>,  <31.615370, 35.606796, 40.229691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230440, 36.096630, 40.624218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143412, 35.742893, 40.789429>,  <31.091194, 35.530651, 40.888557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143412, 35.742893, 40.789429>,  <31.230440, 36.096630, 40.624218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143412, 35.742893, 40.789429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214602, 0.369468, 0.904124,
		-0.952160, 0.285349, 0.109397,
		-0.217572, -0.884347, 0.413029,
		31.078140, 35.477589, 40.913338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895134, 36.284149, 41.133087>,  <31.230440, 36.096630, 40.624218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895134, 36.284149, 41.133087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978462, 35.910583, 41.249302>,  <31.028460, 35.686443, 41.319031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978462, 35.910583, 41.249302>,  <30.895134, 36.284149, 41.133087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978462, 35.910583, 41.249302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192812, 0.330434, 0.923925,
		-0.958867, -0.136455, 0.248906,
		0.208321, -0.933913, 0.290532,
		31.040958, 35.630409, 41.336460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523943, 36.135418, 41.829674>,  <30.895134, 36.284149, 41.133087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523943, 36.135418, 41.829674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835381, 35.886200, 41.799717>,  <31.022243, 35.736671, 41.781742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835381, 35.886200, 41.799717>,  <30.523943, 36.135418, 41.829674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835381, 35.886200, 41.799717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279941, 0.238039, 0.930038,
		-0.561626, -0.745088, 0.359751,
		0.778594, -0.623042, -0.074891,
		31.068958, 35.699287, 41.777248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471237, 35.746826, 42.426350>,  <30.523943, 36.135418, 41.829674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471237, 35.746826, 42.426350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843512, 35.699223, 42.287983>,  <31.066877, 35.670658, 42.204964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843512, 35.699223, 42.287983>,  <30.471237, 35.746826, 42.426350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843512, 35.699223, 42.287983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359075, 0.116539, 0.926004,
		-0.069895, -0.986029, 0.151196,
		0.930687, -0.119014, -0.345913,
		31.122719, 35.663517, 42.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732630, 35.222557, 42.843678>,  <30.471237, 35.746826, 42.426350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732630, 35.222557, 42.843678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053165, 35.402435, 42.685879>,  <31.245487, 35.510365, 42.591198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053165, 35.402435, 42.685879>,  <30.732630, 35.222557, 42.843678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053165, 35.402435, 42.685879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425534, 0.034982, 0.904266,
		0.420447, -0.892496, -0.163329,
		0.801340, 0.449697, -0.394495,
		31.293568, 35.537346, 42.567532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308226, 34.978210, 43.217606>,  <30.732630, 35.222557, 42.843678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308226, 34.978210, 43.217606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457735, 35.311928, 43.055496>,  <31.547441, 35.512157, 42.958229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457735, 35.311928, 43.055496>,  <31.308226, 34.978210, 43.217606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457735, 35.311928, 43.055496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476344, 0.202257, 0.855680,
		0.795857, -0.512883, -0.321811,
		0.373775, 0.834292, -0.405277,
		31.569868, 35.562214, 42.933914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036457, 34.994946, 43.315781>,  <31.308226, 34.978210, 43.217606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036457, 34.994946, 43.315781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926971, 35.372181, 43.240234>,  <31.861280, 35.598522, 43.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926971, 35.372181, 43.240234>,  <32.036457, 34.994946, 43.315781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926971, 35.372181, 43.240234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522047, 0.310593, 0.794354,
		0.807803, 0.118833, -0.577350,
		-0.273716, 0.943086, -0.188861,
		31.844856, 35.655106, 43.183575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628639, 35.382172, 43.315445>,  <32.036457, 34.994946, 43.315781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628639, 35.382172, 43.315445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328106, 35.639477, 43.374393>,  <32.147785, 35.793858, 43.409763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328106, 35.639477, 43.374393>,  <32.628639, 35.382172, 43.315445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328106, 35.639477, 43.374393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428008, 0.305011, 0.850751,
		0.502305, 0.702271, -0.504485,
		-0.751331, 0.643261, 0.147369,
		32.102707, 35.832455, 43.418606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935551, 35.975960, 43.590813>,  <32.628639, 35.382172, 43.315445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935551, 35.975960, 43.590813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560604, 35.983418, 43.729950>,  <32.335636, 35.987892, 43.813431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560604, 35.983418, 43.729950>,  <32.935551, 35.975960, 43.590813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560604, 35.983418, 43.729950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343229, 0.219894, 0.913149,
		-0.059467, 0.975346, -0.212519,
		-0.937367, 0.018640, 0.347843,
		32.279392, 35.989010, 43.834305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955303, 36.394035, 44.219425>,  <32.935551, 35.975960, 43.590813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955303, 36.394035, 44.219425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577778, 36.269257, 44.263073>,  <32.351261, 36.194389, 44.289261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577778, 36.269257, 44.263073>,  <32.955303, 36.394035, 44.219425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577778, 36.269257, 44.263073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049404, 0.193306, 0.979894,
		-0.326766, 0.930228, -0.167033,
		-0.943813, -0.311944, 0.109122,
		32.294632, 36.175674, 44.295811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620438, 36.971397, 44.668358>,  <32.955303, 36.394035, 44.219425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620438, 36.971397, 44.668358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390274, 36.644722, 44.685886>,  <32.252174, 36.448715, 44.696404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390274, 36.644722, 44.685886>,  <32.620438, 36.971397, 44.668358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390274, 36.644722, 44.685886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026130, 0.071907, 0.997069,
		-0.817446, 0.572580, -0.062716,
		-0.575412, -0.816689, 0.043819,
		32.217651, 36.399715, 44.699032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016788, 37.063400, 45.236549>,  <32.620438, 36.971397, 44.668358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016788, 37.063400, 45.236549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061447, 36.668858, 45.188164>,  <32.088242, 36.432133, 45.159134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061447, 36.668858, 45.188164>,  <32.016788, 37.063400, 45.236549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061447, 36.668858, 45.188164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058113, -0.115037, 0.991660,
		-0.992048, -0.117741, 0.044477,
		0.111643, -0.986359, -0.120965,
		32.094940, 36.372952, 45.151875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570744, 36.763012, 45.777287>,  <32.016788, 37.063400, 45.236549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570744, 36.763012, 45.777287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856153, 36.501858, 45.675602>,  <32.027401, 36.345165, 45.614590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856153, 36.501858, 45.675602>,  <31.570744, 36.763012, 45.777287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856153, 36.501858, 45.675602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290296, -0.054732, 0.955370,
		-0.637659, -0.755478, 0.150477,
		0.713526, -0.652883, -0.254213,
		32.070210, 36.305992, 45.599339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507046, 36.184994, 46.317738>,  <31.570744, 36.763012, 45.777287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507046, 36.184994, 46.317738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859234, 36.179585, 46.128174>,  <32.070545, 36.176338, 46.014435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859234, 36.179585, 46.128174>,  <31.507046, 36.184994, 46.317738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859234, 36.179585, 46.128174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468808, -0.124102, 0.874539,
		-0.070641, -0.992177, -0.102927,
		0.880471, -0.013525, -0.473907,
		32.123375, 36.175526, 45.986000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906693, 35.604530, 46.624046>,  <31.507046, 36.184994, 46.317738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906693, 35.604530, 46.624046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179920, 35.856037, 46.475418>,  <32.343857, 36.006943, 46.386242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179920, 35.856037, 46.475418>,  <31.906693, 35.604530, 46.624046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179920, 35.856037, 46.475418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507315, -0.042486, 0.860713,
		0.525403, -0.776431, -0.348005,
		0.683070, 0.628769, -0.371572,
		32.384842, 36.044666, 46.363945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420757, 35.416664, 47.080246>,  <31.906693, 35.604530, 46.624046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420757, 35.416664, 47.080246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555649, 35.745129, 46.896084>,  <32.636585, 35.942207, 46.785587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555649, 35.745129, 46.896084>,  <32.420757, 35.416664, 47.080246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555649, 35.745129, 46.896084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535771, 0.234727, 0.811081,
		0.774097, -0.520191, -0.360797,
		0.337228, 0.821160, -0.460405,
		32.656818, 35.991478, 46.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110401, 35.402409, 47.182594>,  <32.420757, 35.416664, 47.080246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110401, 35.402409, 47.182594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015648, 35.783005, 47.104061>,  <32.958794, 36.011364, 47.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015648, 35.783005, 47.104061>,  <33.110401, 35.402409, 47.182594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015648, 35.783005, 47.104061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427758, 0.283591, 0.858253,
		0.872300, 0.119327, -0.474188,
		-0.236888, 0.951492, -0.196334,
		32.944580, 36.068451, 47.045162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615417, 35.793861, 47.487972>,  <33.110401, 35.402409, 47.182594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615417, 35.793861, 47.487972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315331, 36.055763, 47.451164>,  <33.135277, 36.212906, 47.429081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315331, 36.055763, 47.451164>,  <33.615417, 35.793861, 47.487972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315331, 36.055763, 47.451164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244273, 0.403797, 0.881634,
		0.614411, 0.638941, -0.462875,
		-0.750220, 0.654754, -0.092021,
		33.090263, 36.252190, 47.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899456, 36.332474, 47.613373>,  <33.615417, 35.793861, 47.487972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899456, 36.332474, 47.613373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514553, 36.422531, 47.674515>,  <33.283611, 36.476566, 47.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514553, 36.422531, 47.674515>,  <33.899456, 36.332474, 47.613373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514553, 36.422531, 47.674515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224918, 0.341803, 0.912460,
		0.153191, 0.912403, -0.379543,
		-0.962260, 0.225147, 0.152855,
		33.225876, 36.490074, 47.720371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919964, 36.985947, 47.862354>,  <33.899456, 36.332474, 47.613373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919964, 36.985947, 47.862354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568790, 36.834953, 47.980156>,  <33.358086, 36.744358, 48.050835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568790, 36.834953, 47.980156>,  <33.919964, 36.985947, 47.862354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568790, 36.834953, 47.980156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131947, 0.400526, 0.906735,
		-0.460234, 0.834915, -0.301829,
		-0.877937, -0.377485, 0.294501,
		33.305408, 36.721706, 48.068504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526978, 37.463718, 48.118412>,  <33.919964, 36.985947, 47.862354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526978, 37.463718, 48.118412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403267, 37.135311, 48.310364>,  <33.329041, 36.938267, 48.425533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403267, 37.135311, 48.310364>,  <33.526978, 37.463718, 48.118412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403267, 37.135311, 48.310364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210686, 0.432921, 0.876465,
		-0.927341, 0.372169, 0.039087,
		-0.309272, -0.821018, 0.479876,
		33.310486, 36.889008, 48.454327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046638, 37.664944, 48.629276>,  <33.526978, 37.463718, 48.118412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046638, 37.664944, 48.629276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134537, 37.292862, 48.746880>,  <33.187275, 37.069614, 48.817440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134537, 37.292862, 48.746880>,  <33.046638, 37.664944, 48.629276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134537, 37.292862, 48.746880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253044, 0.345406, 0.903694,
		-0.942169, -0.124183, 0.311282,
		0.219742, -0.930201, 0.294007,
		33.200459, 37.013802, 48.835083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751945, 37.581627, 49.201534>,  <33.046638, 37.664944, 48.629276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751945, 37.581627, 49.201534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996208, 37.265240, 49.216908>,  <33.142765, 37.075409, 49.226131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996208, 37.265240, 49.216908>,  <32.751945, 37.581627, 49.201534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996208, 37.265240, 49.216908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068183, 0.100874, 0.992560,
		-0.788957, -0.603490, 0.115529,
		0.610654, -0.790964, 0.038438,
		33.179405, 37.027950, 49.228439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645714, 37.427925, 49.821209>,  <32.751945, 37.581627, 49.201534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645714, 37.427925, 49.821209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984112, 37.242504, 49.715824>,  <33.187153, 37.131252, 49.652596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984112, 37.242504, 49.715824>,  <32.645714, 37.427925, 49.821209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984112, 37.242504, 49.715824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300927, 0.007215, 0.953620,
		-0.440148, -0.886042, 0.145598,
		0.845998, -0.463548, -0.263458,
		33.237911, 37.103439, 49.636787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761665, 36.934395, 50.429165>,  <32.645714, 37.427925, 49.821209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761665, 36.934395, 50.429165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113583, 36.997318, 50.249741>,  <33.324734, 37.035072, 50.142086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113583, 36.997318, 50.249741>,  <32.761665, 36.934395, 50.429165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113583, 36.997318, 50.249741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426946, 0.153362, 0.891177,
		0.208985, -0.975568, 0.067764,
		0.879797, 0.157311, -0.448565,
		33.377522, 37.044510, 50.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183109, 36.542515, 50.752533>,  <32.761665, 36.934395, 50.429165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183109, 36.542515, 50.752533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430695, 36.808140, 50.584766>,  <33.579247, 36.967514, 50.484104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430695, 36.808140, 50.584766>,  <33.183109, 36.542515, 50.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430695, 36.808140, 50.584766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380598, 0.213533, 0.899749,
		0.687048, -0.716538, -0.120572,
		0.618959, 0.664061, -0.419420,
		33.616383, 37.007359, 50.458939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814232, 36.329319, 50.923889>,  <33.183109, 36.542515, 50.752533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814232, 36.329319, 50.923889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868519, 36.720257, 50.858925>,  <33.901093, 36.954819, 50.819946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868519, 36.720257, 50.858925>,  <33.814232, 36.329319, 50.923889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868519, 36.720257, 50.858925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536264, 0.065373, 0.841515,
		0.833068, -0.201305, -0.515242,
		0.135718, 0.977345, -0.162413,
		33.909233, 37.013462, 50.810200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576878, 36.603287, 51.018780>,  <33.814232, 36.329319, 50.923889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576878, 36.603287, 51.018780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321136, 36.889412, 51.131603>,  <34.167690, 37.061089, 51.199299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321136, 36.889412, 51.131603>,  <34.576878, 36.603287, 51.018780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321136, 36.889412, 51.131603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495226, 0.102461, 0.862701,
		0.588201, 0.691253, -0.419750,
		-0.639352, 0.715312, 0.282059,
		34.129330, 37.104004, 51.216221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054482, 36.928066, 51.446766>,  <34.576878, 36.603287, 51.018780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054482, 36.928066, 51.446766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701534, 37.102680, 51.517044>,  <34.489765, 37.207447, 51.559212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701534, 37.102680, 51.517044>,  <35.054482, 36.928066, 51.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701534, 37.102680, 51.517044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343798, 0.343111, 0.874115,
		0.321297, 0.831694, -0.452829,
		-0.882367, 0.436532, 0.175694,
		34.436825, 37.233639, 51.569752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242176, 37.587189, 51.753578>,  <35.054482, 36.928066, 51.446766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242176, 37.587189, 51.753578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884090, 37.465919, 51.884224>,  <34.669239, 37.393158, 51.962612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884090, 37.465919, 51.884224>,  <35.242176, 37.587189, 51.753578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884090, 37.465919, 51.884224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220652, 0.335204, 0.915943,
		-0.387172, 0.892033, -0.233183,
		-0.895215, -0.303175, 0.326611,
		34.615524, 37.374966, 51.982208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140671, 38.111282, 52.176159>,  <35.242176, 37.587189, 51.753578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140671, 38.111282, 52.176159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870415, 37.832001, 52.270836>,  <34.708260, 37.664433, 52.327644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870415, 37.832001, 52.270836>,  <35.140671, 38.111282, 52.176159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870415, 37.832001, 52.270836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048507, 0.278262, 0.959280,
		-0.735634, 0.659609, -0.154137,
		-0.675640, -0.698202, 0.236695,
		34.667725, 37.622540, 52.341843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658031, 38.434772, 52.640278>,  <35.140671, 38.111282, 52.176159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658031, 38.434772, 52.640278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646423, 38.038258, 52.691673>,  <34.639458, 37.800350, 52.722511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646423, 38.038258, 52.691673>,  <34.658031, 38.434772, 52.640278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646423, 38.038258, 52.691673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035601, 0.127437, 0.991207,
		-0.998945, 0.033336, 0.031593,
		-0.029017, -0.991286, 0.128490,
		34.637718, 37.740871, 52.730221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104160, 38.277203, 53.103493>,  <34.658031, 38.434772, 52.640278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104160, 38.277203, 53.103493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359161, 37.971539, 53.142788>,  <34.512161, 37.788139, 53.166367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359161, 37.971539, 53.142788>,  <34.104160, 38.277203, 53.103493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359161, 37.971539, 53.142788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169842, -0.015016, 0.985357,
		-0.751493, -0.644854, -0.139359,
		0.637504, -0.764158, 0.098239,
		34.550411, 37.742290, 53.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768707, 37.703907, 53.445751>,  <34.104160, 38.277203, 53.103493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768707, 37.703907, 53.445751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163742, 37.718571, 53.506836>,  <34.400764, 37.727371, 53.543488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163742, 37.718571, 53.506836>,  <33.768707, 37.703907, 53.445751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163742, 37.718571, 53.506836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154898, 0.067099, 0.985649,
		0.025885, -0.997073, 0.071944,
		0.987591, 0.036657, 0.152708,
		34.460018, 37.729568, 53.552647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031624, 37.284927, 53.963814>,  <33.768707, 37.703907, 53.445751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031624, 37.284927, 53.963814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280033, 37.598091, 53.948956>,  <34.429077, 37.785992, 53.940041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280033, 37.598091, 53.948956>,  <34.031624, 37.284927, 53.963814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280033, 37.598091, 53.948956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388498, 0.348633, 0.852951,
		0.680738, -0.515268, 0.520668,
		0.621020, 0.782914, -0.037147,
		34.466339, 37.832966, 53.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504707, 36.951111, 54.407177>,  <34.031624, 37.284927, 53.963814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504707, 36.951111, 54.407177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459255, 37.339218, 54.321690>,  <34.431984, 37.572083, 54.270397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459255, 37.339218, 54.321690>,  <34.504707, 36.951111, 54.407177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459255, 37.339218, 54.321690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265676, 0.236951, 0.934489,
		0.957342, 0.049408, -0.284701,
		-0.113631, 0.970264, -0.213716,
		34.425167, 37.630299, 54.257576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144615, 37.408360, 54.392963>,  <34.504707, 36.951111, 54.407177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144615, 37.408360, 54.392963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818401, 37.603008, 54.518246>,  <34.622673, 37.719795, 54.593414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818401, 37.603008, 54.518246>,  <35.144615, 37.408360, 54.392963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818401, 37.603008, 54.518246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369594, 0.021503, 0.928944,
		0.445307, 0.873350, -0.197388,
		-0.815538, 0.486619, 0.313210,
		34.573742, 37.748993, 54.612209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629257, 37.110413, 54.958485>,  <35.144615, 37.408360, 54.392963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629257, 37.110413, 54.958485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440529, 36.908764, 55.247829>,  <35.327293, 36.787773, 55.421436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440529, 36.908764, 55.247829>,  <35.629257, 37.110413, 54.958485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440529, 36.908764, 55.247829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311377, -0.672283, -0.671625,
		0.824883, -0.542122, 0.160223,
		-0.471818, -0.504123, 0.723359,
		35.298985, 36.757526, 55.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818268, 36.330082, 54.900249>,  <35.629257, 37.110413, 54.958485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818268, 36.330082, 54.900249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448811, 36.372540, 55.047554>,  <35.227135, 36.398014, 55.135937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448811, 36.372540, 55.047554>,  <35.818268, 36.330082, 54.900249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448811, 36.372540, 55.047554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334107, -0.693765, -0.638015,
		0.187762, -0.712337, 0.676256,
		-0.923644, 0.106146, 0.368259,
		35.171719, 36.404385, 55.158031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786194, 35.747425, 54.374161>,  <35.818268, 36.330082, 54.900249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786194, 35.747425, 54.374161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088177, 35.492470, 54.435844>,  <36.269367, 35.339497, 54.472855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088177, 35.492470, 54.435844>,  <35.786194, 35.747425, 54.374161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088177, 35.492470, 54.435844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145808, -0.066109, -0.987102,
		0.639357, 0.767705, 0.043026,
		0.754959, -0.637384, 0.154205,
		36.314663, 35.301254, 54.482105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426651, 35.979202, 54.014359>,  <35.786194, 35.747425, 54.374161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426651, 35.979202, 54.014359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397739, 35.584038, 54.069202>,  <36.380394, 35.346939, 54.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397739, 35.584038, 54.069202>,  <36.426651, 35.979202, 54.014359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397739, 35.584038, 54.069202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169020, -0.147617, -0.974495,
		0.982959, -0.047259, 0.177646,
		-0.072277, -0.987915, 0.137114,
		36.376057, 35.287663, 54.110336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068092, 35.783108, 53.839252>,  <36.426651, 35.979202, 54.014359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068092, 35.783108, 53.839252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782288, 35.521858, 53.738937>,  <36.610806, 35.365108, 53.678749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782288, 35.521858, 53.738937>,  <37.068092, 35.783108, 53.839252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782288, 35.521858, 53.738937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327327, 0.004726, -0.944899,
		0.618326, -0.757232, 0.210410,
		-0.714513, -0.653129, -0.250785,
		36.567932, 35.325920, 53.663700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368092, 35.130272, 53.371265>,  <37.068092, 35.783108, 53.839252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368092, 35.130272, 53.371265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974335, 35.162209, 53.308529>,  <36.738083, 35.181370, 53.270885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974335, 35.162209, 53.308529>,  <37.368092, 35.130272, 53.371265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974335, 35.162209, 53.308529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143779, -0.149126, -0.978309,
		-0.101502, -0.985589, 0.135319,
		-0.984391, 0.079844, -0.156844,
		36.679016, 35.186161, 53.261475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064018, 34.572617, 52.800926>,  <37.368092, 35.130272, 53.371265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064018, 34.572617, 52.800926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795109, 34.868671, 52.807343>,  <36.633762, 35.046303, 52.811192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795109, 34.868671, 52.807343>,  <37.064018, 34.572617, 52.800926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795109, 34.868671, 52.807343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058254, -0.031293, -0.997811,
		-0.738012, -0.671732, 0.064153,
		-0.672269, 0.740134, 0.016037,
		36.593430, 35.090710, 52.812153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533939, 34.395782, 52.317738>,  <37.064018, 34.572617, 52.800926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533939, 34.395782, 52.317738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481236, 34.789024, 52.368568>,  <36.449615, 35.024967, 52.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481236, 34.789024, 52.368568>,  <36.533939, 34.395782, 52.317738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481236, 34.789024, 52.368568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253496, 0.090519, -0.963092,
		-0.958321, -0.159109, 0.237286,
		-0.131758, 0.983103, 0.127080,
		36.441708, 35.083954, 52.406693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866165, 34.660172, 51.909576>,  <36.533939, 34.395782, 52.317738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866165, 34.660172, 51.909576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098274, 34.983521, 51.949203>,  <36.237541, 35.177532, 51.972980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098274, 34.983521, 51.949203>,  <35.866165, 34.660172, 51.909576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098274, 34.983521, 51.949203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220245, 0.272871, -0.936501,
		-0.784078, 0.521604, 0.336380,
		0.580271, 0.808375, 0.099071,
		36.272354, 35.226032, 51.978924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566959, 35.057270, 51.448109>,  <35.866165, 34.660172, 51.909576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566959, 35.057270, 51.448109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903614, 35.264576, 51.508835>,  <36.105606, 35.388958, 51.545269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903614, 35.264576, 51.508835>,  <35.566959, 35.057270, 51.448109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903614, 35.264576, 51.508835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081703, 0.400078, -0.912832,
		-0.533823, 0.755872, 0.379065,
		0.841640, 0.518261, 0.151814,
		36.156105, 35.420055, 51.554379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408531, 35.783417, 51.234604>,  <35.566959, 35.057270, 51.448109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408531, 35.783417, 51.234604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798267, 35.699997, 51.200722>,  <36.032108, 35.649944, 51.180393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798267, 35.699997, 51.200722>,  <35.408531, 35.783417, 51.234604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798267, 35.699997, 51.200722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012185, 0.326905, -0.944979,
		0.224763, 0.921760, 0.315975,
		0.974337, -0.208546, -0.084707,
		36.090569, 35.637432, 51.175308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643986, 36.219395, 50.668640>,  <35.408531, 35.783417, 51.234604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643986, 36.219395, 50.668640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941822, 35.955612, 50.710030>,  <36.120522, 35.797344, 50.734863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941822, 35.955612, 50.710030>,  <35.643986, 36.219395, 50.668640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941822, 35.955612, 50.710030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291539, 0.181823, -0.939119,
		0.600495, 0.729423, 0.327640,
		0.744588, -0.659456, 0.103471,
		36.165199, 35.757774, 50.741070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324806, 36.562996, 50.452728>,  <35.643986, 36.219395, 50.668640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324806, 36.562996, 50.452728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375328, 36.168140, 50.413509>,  <36.405640, 35.931229, 50.389977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375328, 36.168140, 50.413509>,  <36.324806, 36.562996, 50.452728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375328, 36.168140, 50.413509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466684, 0.146345, -0.872233,
		0.875360, 0.064406, 0.479163,
		0.126300, -0.987135, -0.098047,
		36.413219, 35.872002, 50.384094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009930, 36.480846, 50.263805>,  <36.324806, 36.562996, 50.452728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009930, 36.480846, 50.263805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802448, 36.159519, 50.146763>,  <36.677959, 35.966721, 50.076538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802448, 36.159519, 50.146763>,  <37.009930, 36.480846, 50.263805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802448, 36.159519, 50.146763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231889, 0.197227, -0.952538,
		0.822905, -0.561938, 0.083979,
		-0.518705, -0.803322, -0.292607,
		36.646835, 35.918522, 50.058979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281433, 36.345539, 49.690128>,  <37.009930, 36.480846, 50.263805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281433, 36.345539, 49.690128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975033, 36.094688, 49.633629>,  <36.791191, 35.944176, 49.599728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975033, 36.094688, 49.633629>,  <37.281433, 36.345539, 49.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975033, 36.094688, 49.633629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010635, 0.207332, -0.978213,
		0.642752, -0.750814, -0.152147,
		-0.766000, -0.627130, -0.141247,
		36.745232, 35.906548, 49.591255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507450, 35.920082, 49.109039>,  <37.281433, 36.345539, 49.690128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507450, 35.920082, 49.109039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112305, 35.859032, 49.120537>,  <36.875217, 35.822403, 49.127434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112305, 35.859032, 49.120537>,  <37.507450, 35.920082, 49.109039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112305, 35.859032, 49.120537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018020, -0.071165, -0.997302,
		0.154261, -0.985718, 0.067552,
		-0.987866, -0.152627, 0.028741,
		36.815945, 35.813244, 49.129158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403461, 35.273083, 48.716156>,  <37.507450, 35.920082, 49.109039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403461, 35.273083, 48.716156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069996, 35.493813, 48.724964>,  <36.869915, 35.626251, 48.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069996, 35.493813, 48.724964>,  <37.403461, 35.273083, 48.716156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069996, 35.493813, 48.724964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074149, -0.072333, -0.994620,
		-0.547267, -0.830815, 0.101219,
		-0.833666, 0.551828, 0.022018,
		36.819897, 35.659363, 48.731571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898472, 34.859962, 48.397617>,  <37.403461, 35.273083, 48.716156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898472, 34.859962, 48.397617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772121, 35.239368, 48.406864>,  <36.696312, 35.467014, 48.412411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772121, 35.239368, 48.406864>,  <36.898472, 34.859962, 48.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772121, 35.239368, 48.406864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202506, -0.043601, -0.978310,
		-0.926938, -0.313705, 0.205854,
		-0.315876, 0.948519, 0.023112,
		36.677357, 35.523926, 48.413799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442142, 34.819172, 47.956406>,  <36.898472, 34.859962, 48.397617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442142, 34.819172, 47.956406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488991, 35.215580, 47.982182>,  <36.517097, 35.453426, 47.997646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488991, 35.215580, 47.982182>,  <36.442142, 34.819172, 47.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488991, 35.215580, 47.982182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158742, 0.082736, -0.983847,
		-0.980349, 0.104997, 0.167008,
		0.117119, 0.991025, 0.064443,
		36.524128, 35.512886, 48.001514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866211, 35.099720, 47.635441>,  <36.442142, 34.819172, 47.956406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866211, 35.099720, 47.635441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155727, 35.375389, 47.621735>,  <36.329437, 35.540791, 47.613510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155727, 35.375389, 47.621735>,  <35.866211, 35.099720, 47.635441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155727, 35.375389, 47.621735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214764, 0.177799, -0.960346,
		-0.655749, 0.702447, 0.276698,
		0.723788, 0.689171, -0.034269,
		36.372864, 35.582142, 47.611454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597847, 35.672840, 47.437004>,  <35.866211, 35.099720, 47.635441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597847, 35.672840, 47.437004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986504, 35.696411, 47.345409>,  <36.219700, 35.710552, 47.290451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986504, 35.696411, 47.345409>,  <35.597847, 35.672840, 47.437004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986504, 35.696411, 47.345409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231966, 0.049869, -0.971445,
		-0.045823, 0.997016, 0.062123,
		0.971644, 0.058925, -0.228988,
		36.277996, 35.714088, 47.276714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618534, 36.240292, 47.033344>,  <35.597847, 35.672840, 47.437004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618534, 36.240292, 47.033344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935459, 36.009235, 46.954781>,  <36.125614, 35.870602, 46.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935459, 36.009235, 46.954781>,  <35.618534, 36.240292, 47.033344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935459, 36.009235, 46.954781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233590, 0.010198, -0.972282,
		0.563631, 0.816228, -0.126851,
		0.792310, -0.577639, -0.196411,
		36.173153, 35.835945, 46.895859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749207, 36.506527, 46.330330>,  <35.618534, 36.240292, 47.033344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749207, 36.506527, 46.330330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925156, 36.149780, 46.372429>,  <36.030727, 35.935730, 46.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925156, 36.149780, 46.372429>,  <35.749207, 36.506527, 46.330330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925156, 36.149780, 46.372429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125878, -0.177265, -0.976080,
		0.889192, 0.416107, -0.190241,
		0.439877, -0.891870, 0.105244,
		36.057117, 35.882217, 46.404003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939064, 36.362232, 45.658745>,  <35.749207, 36.506527, 46.330330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939064, 36.362232, 45.658745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013309, 36.001957, 45.815876>,  <36.057858, 35.785793, 45.910156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013309, 36.001957, 45.815876>,  <35.939064, 36.362232, 45.658745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013309, 36.001957, 45.815876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298634, -0.432576, -0.850704,
		0.936144, 0.040588, -0.349266,
		0.185612, -0.900684, 0.392832,
		36.068993, 35.731750, 45.933727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343601, 36.011101, 45.194523>,  <35.939064, 36.362232, 45.658745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343601, 36.011101, 45.194523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157093, 35.721794, 45.398277>,  <36.045189, 35.548210, 45.520531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157093, 35.721794, 45.398277>,  <36.343601, 36.011101, 45.194523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157093, 35.721794, 45.398277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275760, -0.428290, -0.860537,
		0.840566, -0.541709, 0.000249,
		-0.466268, -0.723269, 0.509388,
		36.017212, 35.504814, 45.551094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575287, 35.397747, 44.904068>,  <36.343601, 36.011101, 45.194523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575287, 35.397747, 44.904068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212566, 35.335133, 45.060631>,  <35.994934, 35.297562, 45.154568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212566, 35.335133, 45.060631>,  <36.575287, 35.397747, 44.904068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212566, 35.335133, 45.060631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284326, -0.458391, -0.842043,
		0.311232, -0.874856, 0.371162,
		-0.906804, -0.156540, 0.391410,
		35.940525, 35.288170, 45.178055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404343, 34.777618, 44.603916>,  <36.575287, 35.397747, 44.904068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404343, 34.777618, 44.603916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069927, 34.933338, 44.758575>,  <35.869278, 35.026768, 44.851372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069927, 34.933338, 44.758575>,  <36.404343, 34.777618, 44.603916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069927, 34.933338, 44.758575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509852, -0.290843, -0.809606,
		-0.202718, -0.873992, 0.441636,
		-0.836036, 0.389291, 0.386647,
		35.819118, 35.050125, 44.874569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865715, 34.189098, 44.707909>,  <36.404343, 34.777618, 44.603916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865715, 34.189098, 44.707909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682129, 34.544411, 44.700958>,  <35.571976, 34.757599, 44.696789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682129, 34.544411, 44.700958>,  <35.865715, 34.189098, 44.707909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682129, 34.544411, 44.700958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674035, -0.360870, -0.644554,
		-0.578817, -0.284117, 0.764361,
		-0.458964, 0.888285, -0.017373,
		35.544441, 34.810898, 44.695747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042370, 34.004845, 44.688175>,  <35.865715, 34.189098, 44.707909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042370, 34.004845, 44.688175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118065, 34.371414, 44.547119>,  <35.163483, 34.591358, 44.462486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118065, 34.371414, 44.547119>,  <35.042370, 34.004845, 44.688175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118065, 34.371414, 44.547119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570415, -0.189723, -0.799145,
		-0.799260, 0.352377, 0.486840,
		0.189236, 0.916425, -0.352639,
		35.174835, 34.646343, 44.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413403, 34.152279, 44.401344>,  <35.042370, 34.004845, 44.688175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413403, 34.152279, 44.401344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665535, 34.411415, 44.230236>,  <34.816814, 34.566898, 44.127571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665535, 34.411415, 44.230236>,  <34.413403, 34.152279, 44.401344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665535, 34.411415, 44.230236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446498, -0.148235, -0.882421,
		-0.635081, 0.747211, 0.195824,
		0.630327, 0.647844, -0.427769,
		34.854633, 34.605770, 44.101906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017372, 34.639374, 43.988716>,  <34.413403, 34.152279, 44.401344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017372, 34.639374, 43.988716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382301, 34.687183, 43.832058>,  <34.601257, 34.715870, 43.738064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382301, 34.687183, 43.832058>,  <34.017372, 34.639374, 43.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382301, 34.687183, 43.832058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400439, 0.060550, -0.914321,
		-0.085567, 0.990984, 0.103102,
		0.912320, 0.119522, -0.391647,
		34.655998, 34.723042, 43.714565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842705, 35.032001, 43.544708>,  <34.017372, 34.639374, 43.988716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842705, 35.032001, 43.544708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198170, 34.885113, 43.434856>,  <34.411449, 34.796978, 43.368946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198170, 34.885113, 43.434856>,  <33.842705, 35.032001, 43.544708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198170, 34.885113, 43.434856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263452, 0.081334, -0.961238,
		0.375323, 0.926571, -0.024466,
		0.888665, -0.367221, -0.274633,
		34.464767, 34.774948, 43.352467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911274, 35.333061, 42.896389>,  <33.842705, 35.032001, 43.544708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911274, 35.333061, 42.896389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192200, 35.049000, 42.916130>,  <34.360756, 34.878563, 42.927975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192200, 35.049000, 42.916130>,  <33.911274, 35.333061, 42.896389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192200, 35.049000, 42.916130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008778, -0.077965, -0.996917,
		0.711813, 0.699716, -0.060989,
		0.702314, -0.710154, 0.049355,
		34.402893, 34.835953, 42.930935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347591, 35.507881, 42.330200>,  <33.911274, 35.333061, 42.896389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347591, 35.507881, 42.330200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416927, 35.128048, 42.434700>,  <34.458530, 34.900150, 42.497398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416927, 35.128048, 42.434700>,  <34.347591, 35.507881, 42.330200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416927, 35.128048, 42.434700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032497, -0.270635, -0.962133,
		0.984325, 0.158289, -0.077771,
		0.173343, -0.949579, 0.261249,
		34.468929, 34.843174, 42.513073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879398, 35.238972, 41.892441>,  <34.347591, 35.507881, 42.330200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879398, 35.238972, 41.892441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674049, 34.913368, 42.001141>,  <34.550842, 34.718006, 42.066360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674049, 34.913368, 42.001141>,  <34.879398, 35.238972, 41.892441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674049, 34.913368, 42.001141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099117, -0.258303, -0.960966,
		0.852425, -0.520265, 0.051923,
		-0.513369, -0.814005, 0.271751,
		34.520039, 34.669167, 42.082664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277946, 34.670532, 41.620312>,  <34.879398, 35.238972, 41.892441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277946, 34.670532, 41.620312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916908, 34.517963, 41.700146>,  <34.700283, 34.426422, 41.748047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916908, 34.517963, 41.700146>,  <35.277946, 34.670532, 41.620312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916908, 34.517963, 41.700146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037668, -0.531817, -0.846021,
		0.428835, -0.756098, 0.494384,
		-0.902597, -0.381426, 0.199581,
		34.646130, 34.403534, 41.760021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319904, 33.898376, 41.461136>,  <35.277946, 34.670532, 41.620312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319904, 33.898376, 41.461136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926376, 33.968945, 41.473648>,  <34.690258, 34.011284, 41.481155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926376, 33.968945, 41.473648>,  <35.319904, 33.898376, 41.461136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926376, 33.968945, 41.473648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135672, -0.619527, -0.773162,
		-0.117022, -0.764894, 0.633437,
		-0.983819, 0.176417, 0.031277,
		34.631229, 34.021870, 41.483032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968655, 33.267551, 41.292149>,  <35.319904, 33.898376, 41.461136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968655, 33.267551, 41.292149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673450, 33.528484, 41.223095>,  <34.496326, 33.685043, 41.181664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673450, 33.528484, 41.223095>,  <34.968655, 33.267551, 41.292149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673450, 33.528484, 41.223095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260329, -0.511269, -0.819044,
		-0.622551, -0.559522, 0.547144,
		-0.738010, 0.652333, -0.172631,
		34.452045, 33.724186, 41.171307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427959, 32.867466, 41.205372>,  <34.968655, 33.267551, 41.292149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427959, 32.867466, 41.205372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273247, 33.196007, 41.037666>,  <34.180420, 33.393131, 40.937042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273247, 33.196007, 41.037666>,  <34.427959, 32.867466, 41.205372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273247, 33.196007, 41.037666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228727, -0.525887, -0.819224,
		-0.893356, -0.220963, 0.391268,
		-0.386780, 0.821352, -0.419264,
		34.157211, 33.442413, 40.911888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743835, 32.687141, 40.966305>,  <34.427959, 32.867466, 41.205372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743835, 32.687141, 40.966305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859921, 33.005524, 40.753799>,  <33.929569, 33.196552, 40.626297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859921, 33.005524, 40.753799>,  <33.743835, 32.687141, 40.966305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859921, 33.005524, 40.753799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278239, -0.460989, -0.842658,
		-0.915621, 0.392366, 0.087681,
		0.290210, 0.795951, -0.531262,
		33.946983, 33.244308, 40.594421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163570, 32.856873, 40.603939>,  <33.743835, 32.687141, 40.966305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163570, 32.856873, 40.603939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480404, 33.013206, 40.416382>,  <33.670502, 33.107006, 40.303848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480404, 33.013206, 40.416382>,  <33.163570, 32.856873, 40.603939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480404, 33.013206, 40.416382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340941, -0.353901, -0.870927,
		-0.506327, 0.849708, -0.147068,
		0.792081, 0.390832, -0.468890,
		33.718029, 33.130455, 40.275715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849045, 33.127907, 39.979042>,  <33.163570, 32.856873, 40.603939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849045, 33.127907, 39.979042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241535, 33.129379, 39.901909>,  <33.477028, 33.130264, 39.855629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241535, 33.129379, 39.901909>,  <32.849045, 33.127907, 39.979042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241535, 33.129379, 39.901909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187837, -0.208621, -0.959789,
		-0.043763, 0.977989, -0.204013,
		0.981225, 0.003682, -0.192832,
		33.535904, 33.130486, 39.844059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826141, 33.376022, 39.315437>,  <32.849045, 33.127907, 39.979042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826141, 33.376022, 39.315437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202625, 33.254253, 39.374035>,  <33.428516, 33.181190, 39.409195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202625, 33.254253, 39.374035>,  <32.826141, 33.376022, 39.315437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202625, 33.254253, 39.374035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054859, -0.290149, -0.955408,
		0.333351, 0.907271, -0.256390,
		0.941205, -0.304421, 0.146494,
		33.484985, 33.162926, 39.417984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253746, 33.788700, 38.900749>,  <32.826141, 33.376022, 39.315437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253746, 33.788700, 38.900749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427208, 33.431801, 38.951088>,  <33.531284, 33.217663, 38.981293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427208, 33.431801, 38.951088>,  <33.253746, 33.788700, 38.900749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427208, 33.431801, 38.951088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107344, -0.087516, -0.990363,
		0.894663, 0.442983, 0.057826,
		0.433653, -0.892248, 0.125849,
		33.557304, 33.164127, 38.988842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853653, 33.830341, 38.527267>,  <33.253746, 33.788700, 38.900749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853653, 33.830341, 38.527267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782116, 33.438679, 38.565769>,  <33.739193, 33.203682, 38.588871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782116, 33.438679, 38.565769>,  <33.853653, 33.830341, 38.527267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782116, 33.438679, 38.565769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048021, -0.106399, -0.993163,
		0.982705, -0.172999, 0.066049,
		-0.178844, -0.979158, 0.096251,
		33.728462, 33.144932, 38.594646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501217, 33.386612, 38.308002>,  <33.853653, 33.830341, 38.527267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501217, 33.386612, 38.308002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155991, 33.190899, 38.257866>,  <33.948853, 33.073471, 38.227783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155991, 33.190899, 38.257866>,  <34.501217, 33.386612, 38.308002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155991, 33.190899, 38.257866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131624, 0.021714, -0.991062,
		0.487635, -0.871853, 0.045661,
		-0.863068, -0.489287, -0.125345,
		33.897072, 33.044113, 38.220261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144703, 33.496395, 38.704758>,  <34.501217, 33.386612, 38.308002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144703, 33.496395, 38.704758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489853, 33.460049, 38.505886>,  <35.696945, 33.438240, 38.386562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489853, 33.460049, 38.505886>,  <35.144703, 33.496395, 38.704758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489853, 33.460049, 38.505886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486513, 0.415805, 0.768382,
		0.136911, -0.904903, 0.402995,
		0.862879, -0.090863, -0.497176,
		35.748718, 33.432789, 38.356735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639347, 33.055931, 39.063812>,  <35.144703, 33.496395, 38.704758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639347, 33.055931, 39.063812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828621, 33.328968, 38.841042>,  <35.942184, 33.492790, 38.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828621, 33.328968, 38.841042>,  <35.639347, 33.055931, 39.063812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828621, 33.328968, 38.841042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486457, 0.324610, 0.811164,
		0.734478, -0.654749, -0.178452,
		0.473182, 0.682592, -0.556926,
		35.970577, 33.533745, 38.673965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405720, 32.893139, 39.063217>,  <35.639347, 33.055931, 39.063812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405720, 32.893139, 39.063217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342323, 33.280434, 38.985874>,  <36.304283, 33.512810, 38.939468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342323, 33.280434, 38.985874>,  <36.405720, 32.893139, 39.063217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342323, 33.280434, 38.985874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553008, 0.249289, 0.795008,
		0.817962, 0.019074, -0.574956,
		-0.158494, 0.968241, -0.193361,
		36.294777, 33.570908, 38.927864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007153, 33.222450, 39.194138>,  <36.405720, 32.893139, 39.063217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007153, 33.222450, 39.194138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766865, 33.541218, 39.168655>,  <36.622692, 33.732479, 39.153366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766865, 33.541218, 39.168655>,  <37.007153, 33.222450, 39.194138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766865, 33.541218, 39.168655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552438, 0.471384, 0.687465,
		0.577880, 0.377784, -0.723418,
		-0.600721, 0.796917, -0.063701,
		36.586647, 33.780293, 39.149544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499123, 33.789780, 39.184540>,  <37.007153, 33.222450, 39.194138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499123, 33.789780, 39.184540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142189, 33.908024, 39.320984>,  <36.928028, 33.978970, 39.402851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142189, 33.908024, 39.320984>,  <37.499123, 33.789780, 39.184540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142189, 33.908024, 39.320984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441186, 0.411506, 0.797507,
		0.095378, 0.862137, -0.497618,
		-0.892333, 0.295607, 0.341114,
		36.874489, 33.996704, 39.423317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685249, 34.373680, 39.511497>,  <37.499123, 33.789780, 39.184540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685249, 34.373680, 39.511497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320171, 34.296669, 39.655670>,  <37.101124, 34.250462, 39.742176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320171, 34.296669, 39.655670>,  <37.685249, 34.373680, 39.511497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320171, 34.296669, 39.655670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205893, 0.545240, 0.812602,
		-0.352969, 0.815873, -0.458000,
		-0.912700, -0.192524, 0.360435,
		37.046360, 34.238911, 39.763802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438107, 35.073204, 39.681370>,  <37.685249, 34.373680, 39.511497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438107, 35.073204, 39.681370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242908, 34.794235, 39.891304>,  <37.125790, 34.626854, 40.017265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242908, 34.794235, 39.891304>,  <37.438107, 35.073204, 39.681370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242908, 34.794235, 39.891304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241119, 0.470185, 0.848992,
		-0.838881, 0.540854, -0.061286,
		-0.487996, -0.697426, 0.524839,
		37.096508, 34.585007, 40.048756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036491, 35.431400, 40.254944>,  <37.438107, 35.073204, 39.681370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036491, 35.431400, 40.254944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078434, 35.049904, 40.367645>,  <37.103600, 34.821007, 40.435265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078434, 35.049904, 40.367645>,  <37.036491, 35.431400, 40.254944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078434, 35.049904, 40.367645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217547, 0.298451, 0.929301,
		-0.970401, -0.036151, 0.238778,
		0.104858, -0.953740, 0.281753,
		37.109890, 34.763783, 40.452171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702099, 35.392368, 40.875137>,  <37.036491, 35.431400, 40.254944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702099, 35.392368, 40.875137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970757, 35.096146, 40.866524>,  <37.131950, 34.918411, 40.861355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970757, 35.096146, 40.866524>,  <36.702099, 35.392368, 40.875137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970757, 35.096146, 40.866524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266730, 0.214595, 0.939576,
		-0.691190, -0.636807, 0.341662,
		0.671648, -0.740557, -0.021529,
		37.172253, 34.873978, 40.860065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769531, 35.240978, 41.558582>,  <36.702099, 35.392368, 40.875137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769531, 35.240978, 41.558582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094208, 35.045391, 41.430786>,  <37.289013, 34.928040, 41.354107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094208, 35.045391, 41.430786>,  <36.769531, 35.240978, 41.558582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094208, 35.045391, 41.430786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418553, 0.105389, 0.902057,
		-0.407403, -0.865914, 0.290201,
		0.811687, -0.488964, -0.319495,
		37.337715, 34.898701, 41.334938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017269, 34.867653, 42.175198>,  <36.769531, 35.240978, 41.558582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017269, 34.867653, 42.175198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328552, 34.844929, 41.925026>,  <37.515324, 34.831295, 41.774921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328552, 34.844929, 41.925026>,  <37.017269, 34.867653, 42.175198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328552, 34.844929, 41.925026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627340, 0.024413, 0.778363,
		-0.028950, -0.998086, 0.054637,
		0.778208, -0.056809, -0.625433,
		37.562016, 34.827885, 41.737396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504303, 34.408947, 42.492729>,  <37.017269, 34.867653, 42.175198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504303, 34.408947, 42.492729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725292, 34.589840, 42.212654>,  <37.857887, 34.698376, 42.044609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725292, 34.589840, 42.212654>,  <37.504303, 34.408947, 42.492729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725292, 34.589840, 42.212654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794162, -0.030475, 0.606942,
		0.253142, -0.891378, -0.375985,
		0.552473, 0.452235, -0.700184,
		37.891033, 34.725510, 42.002598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131294, 33.984436, 42.446369>,  <37.504303, 34.408947, 42.492729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131294, 33.984436, 42.446369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190636, 34.359161, 42.319641>,  <38.226242, 34.583996, 42.243603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190636, 34.359161, 42.319641>,  <38.131294, 33.984436, 42.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190636, 34.359161, 42.319641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699004, 0.127290, 0.703698,
		0.699560, -0.325861, -0.635949,
		0.148357, 0.936810, -0.316825,
		38.235142, 34.640205, 42.224594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839294, 34.062019, 42.438297>,  <38.131294, 33.984436, 42.446369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839294, 34.062019, 42.438297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687374, 34.431206, 42.463234>,  <38.596222, 34.652718, 42.478195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687374, 34.431206, 42.463234>,  <38.839294, 34.062019, 42.438297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687374, 34.431206, 42.463234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614542, 0.201364, 0.762752,
		0.691439, 0.328007, -0.643679,
		-0.379802, 0.922965, 0.062343,
		38.573433, 34.708096, 42.481937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401432, 34.575195, 42.615631>,  <38.839294, 34.062019, 42.438297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401432, 34.575195, 42.615631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072205, 34.782223, 42.709171>,  <38.874668, 34.906437, 42.765297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072205, 34.782223, 42.709171>,  <39.401432, 34.575195, 42.615631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072205, 34.782223, 42.709171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437799, 0.315888, 0.841753,
		0.361790, 0.795200, -0.486586,
		-0.823068, 0.517564, 0.233852,
		38.825283, 34.937492, 42.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720348, 35.221375, 42.837128>,  <39.401432, 34.575195, 42.615631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720348, 35.221375, 42.837128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353271, 35.187660, 42.992424>,  <39.133026, 35.167431, 43.085602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353271, 35.187660, 42.992424>,  <39.720348, 35.221375, 42.837128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353271, 35.187660, 42.992424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314458, 0.443118, 0.839501,
		-0.242794, 0.892492, -0.380143,
		-0.917697, -0.084287, 0.388238,
		39.077961, 35.162373, 43.108894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663296, 35.856331, 43.181061>,  <39.720348, 35.221375, 42.837128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663296, 35.856331, 43.181061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365517, 35.632004, 43.325985>,  <39.186848, 35.497406, 43.412941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365517, 35.632004, 43.325985>,  <39.663296, 35.856331, 43.181061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365517, 35.632004, 43.325985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089417, 0.454018, 0.886494,
		-0.661663, 0.692348, -0.287847,
		-0.744451, -0.560822, 0.362315,
		39.142181, 35.463757, 43.434681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187206, 36.344147, 43.567486>,  <39.663296, 35.856331, 43.181061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187206, 36.344147, 43.567486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106628, 35.976501, 43.702923>,  <39.058281, 35.755913, 43.784187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106628, 35.976501, 43.702923>,  <39.187206, 36.344147, 43.567486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106628, 35.976501, 43.702923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145510, 0.369928, 0.917595,
		-0.968632, 0.135572, -0.208259,
		-0.201441, -0.919116, 0.338597,
		39.046196, 35.700768, 43.804501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713135, 36.368927, 44.096924>,  <39.187206, 36.344147, 43.567486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713135, 36.368927, 44.096924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881973, 36.018345, 44.189575>,  <38.983276, 35.807995, 44.245167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881973, 36.018345, 44.189575>,  <38.713135, 36.368927, 44.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881973, 36.018345, 44.189575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205394, 0.156402, 0.966101,
		-0.882975, -0.455366, -0.114002,
		0.422100, -0.876459, 0.231628,
		39.008602, 35.755405, 44.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207333, 36.034222, 44.485813>,  <38.713135, 36.368927, 44.096924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207333, 36.034222, 44.485813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548973, 35.850609, 44.583637>,  <38.753956, 35.740440, 44.642330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548973, 35.850609, 44.583637>,  <38.207333, 36.034222, 44.485813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548973, 35.850609, 44.583637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230901, 0.086687, 0.969108,
		-0.466049, -0.884182, -0.031951,
		0.854098, -0.459029, 0.244559,
		38.805202, 35.712902, 44.657005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054474, 35.711689, 45.091572>,  <38.207333, 36.034222, 44.485813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054474, 35.711689, 45.091572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448917, 35.665367, 45.139194>,  <38.685585, 35.637573, 45.167767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448917, 35.665367, 45.139194>,  <38.054474, 35.711689, 45.091572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448917, 35.665367, 45.139194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083857, 0.271590, 0.958753,
		-0.143364, -0.955420, 0.258107,
		0.986111, -0.115807, 0.119055,
		38.744751, 35.630627, 45.174911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073231, 35.338615, 45.703339>,  <38.054474, 35.711689, 45.091572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073231, 35.338615, 45.703339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431236, 35.509987, 45.653698>,  <38.646038, 35.612812, 45.623913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431236, 35.509987, 45.653698>,  <38.073231, 35.338615, 45.703339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431236, 35.509987, 45.653698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030206, 0.335814, 0.941444,
		0.445021, -0.838853, 0.313498,
		0.895010, 0.428432, -0.124106,
		38.699741, 35.638515, 45.616467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580845, 34.968716, 46.107933>,  <38.073231, 35.338615, 45.703339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580845, 34.968716, 46.107933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699001, 35.346416, 46.049789>,  <38.769894, 35.573036, 46.014904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699001, 35.346416, 46.049789>,  <38.580845, 34.968716, 46.107933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699001, 35.346416, 46.049789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250088, 0.223265, 0.942130,
		0.922064, -0.241942, 0.302096,
		0.295388, 0.944255, -0.145358,
		38.787617, 35.629692, 46.006184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805759, 35.133003, 46.748535>,  <38.580845, 34.968716, 46.107933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805759, 35.133003, 46.748535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797401, 35.493233, 46.574852>,  <38.792385, 35.709370, 46.470642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797401, 35.493233, 46.574852>,  <38.805759, 35.133003, 46.748535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797401, 35.493233, 46.574852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229968, 0.418325, 0.878703,
		0.972974, 0.118213, 0.198362,
		-0.020894, 0.900572, -0.434205,
		38.791134, 35.763405, 46.444592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967396, 35.487740, 47.239429>,  <38.805759, 35.133003, 46.748535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967396, 35.487740, 47.239429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806381, 35.768147, 47.003960>,  <38.709774, 35.936390, 46.862679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806381, 35.768147, 47.003960>,  <38.967396, 35.487740, 47.239429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806381, 35.768147, 47.003960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249824, 0.534536, 0.807378,
		0.880655, 0.472063, -0.040038,
		-0.402535, 0.701020, -0.588674,
		38.685619, 35.978451, 46.827358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343868, 36.198120, 47.244865>,  <38.967396, 35.487740, 47.239429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343868, 36.198120, 47.244865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954529, 36.219868, 47.155743>,  <38.720924, 36.232918, 47.102268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954529, 36.219868, 47.155743>,  <39.343868, 36.198120, 47.244865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954529, 36.219868, 47.155743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129737, 0.670591, 0.730395,
		0.189125, 0.739832, -0.645662,
		-0.973345, 0.054370, -0.222809,
		38.662525, 36.236179, 47.088902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152950, 36.869331, 47.147743>,  <39.343868, 36.198120, 47.244865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152950, 36.869331, 47.147743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813503, 36.681400, 47.244999>,  <38.609837, 36.568642, 47.303352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813503, 36.681400, 47.244999>,  <39.152950, 36.869331, 47.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813503, 36.681400, 47.244999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161997, 0.668324, 0.726017,
		-0.503600, 0.576719, -0.643259,
		-0.848613, -0.469828, 0.243141,
		38.558918, 36.540451, 47.317940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618710, 37.376682, 47.299156>,  <39.152950, 36.869331, 47.147743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618710, 37.376682, 47.299156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520542, 37.048393, 47.505531>,  <38.461639, 36.851421, 47.629356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520542, 37.048393, 47.505531>,  <38.618710, 37.376682, 47.299156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520542, 37.048393, 47.505531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227820, 0.566135, 0.792205,
		-0.942267, 0.076883, -0.325917,
		-0.245421, -0.820719, 0.515935,
		38.446915, 36.802177, 47.660313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072212, 37.590157, 47.874565>,  <38.618710, 37.376682, 47.299156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072212, 37.590157, 47.874565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179787, 37.227242, 48.003872>,  <38.244331, 37.009491, 48.081455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179787, 37.227242, 48.003872>,  <38.072212, 37.590157, 47.874565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179787, 37.227242, 48.003872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095089, 0.308985, 0.946301,
		-0.958453, -0.285233, -0.003176,
		0.268935, -0.907287, 0.323270,
		38.260468, 36.955055, 48.100853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505497, 37.411610, 48.352821>,  <38.072212, 37.590157, 47.874565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505497, 37.411610, 48.352821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841518, 37.206394, 48.423359>,  <38.043133, 37.083267, 48.465683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841518, 37.206394, 48.423359>,  <37.505497, 37.411610, 48.352821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841518, 37.206394, 48.423359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029328, 0.281640, 0.959072,
		-0.541704, -0.810847, 0.221548,
		0.840057, -0.513036, 0.176346,
		38.093536, 37.052483, 48.476261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360443, 37.039909, 49.008965>,  <37.505497, 37.411610, 48.352821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360443, 37.039909, 49.008965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747143, 37.094044, 48.922180>,  <37.979164, 37.126526, 48.870110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747143, 37.094044, 48.922180>,  <37.360443, 37.039909, 49.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747143, 37.094044, 48.922180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172488, 0.281244, 0.944007,
		0.188775, -0.950046, 0.248550,
		0.966753, 0.135333, -0.216964,
		38.037170, 37.134644, 48.857090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681152, 36.969505, 49.677219>,  <37.360443, 37.039909, 49.008965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681152, 36.969505, 49.677219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966949, 37.120163, 49.441376>,  <38.138428, 37.210560, 49.299870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966949, 37.120163, 49.441376>,  <37.681152, 36.969505, 49.677219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966949, 37.120163, 49.441376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355202, 0.530769, 0.769491,
		0.602778, -0.759222, 0.245440,
		0.714486, 0.376651, -0.589613,
		38.181297, 37.233158, 49.264492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198097, 37.115463, 50.126236>,  <37.681152, 36.969505, 49.677219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198097, 37.115463, 50.126236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307022, 37.354134, 49.824287>,  <38.372375, 37.497337, 49.643120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307022, 37.354134, 49.824287>,  <38.198097, 37.115463, 50.126236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307022, 37.354134, 49.824287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320908, 0.683282, 0.655854,
		0.907120, -0.420839, -0.005414,
		0.272309, 0.596675, -0.754869,
		38.388714, 37.533134, 49.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853626, 37.291187, 50.218384>,  <38.198097, 37.115463, 50.126236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853626, 37.291187, 50.218384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749031, 37.594635, 49.979683>,  <38.686275, 37.776703, 49.836464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749031, 37.594635, 49.979683>,  <38.853626, 37.291187, 50.218384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749031, 37.594635, 49.979683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409355, 0.647072, 0.643216,
		0.874101, -0.076090, -0.479748,
		-0.261489, 0.758623, -0.596754,
		38.670586, 37.822224, 49.800655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480515, 37.669697, 50.308132>,  <38.853626, 37.291187, 50.218384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480515, 37.669697, 50.308132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182041, 37.894909, 50.166031>,  <39.002956, 38.030037, 50.080769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182041, 37.894909, 50.166031>,  <39.480515, 37.669697, 50.308132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182041, 37.894909, 50.166031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303430, 0.762600, 0.571289,
		0.592572, 0.318490, -0.739880,
		-0.746183, 0.563032, -0.355256,
		38.958187, 38.063820, 50.059456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784317, 38.239868, 49.997559>,  <39.480515, 37.669697, 50.308132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784317, 38.239868, 49.997559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413677, 38.311996, 50.129559>,  <39.191292, 38.355274, 50.208759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413677, 38.311996, 50.129559>,  <39.784317, 38.239868, 49.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413677, 38.311996, 50.129559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337595, 0.785451, 0.518745,
		-0.165659, 0.592075, -0.788673,
		-0.926599, 0.180317, 0.329999,
		39.135696, 38.366093, 50.228558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728134, 38.947067, 50.008286>,  <39.784317, 38.239868, 49.997559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728134, 38.947067, 50.008286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397839, 38.857994, 50.215580>,  <39.199661, 38.804550, 50.339954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397839, 38.857994, 50.215580>,  <39.728134, 38.947067, 50.008286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397839, 38.857994, 50.215580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204207, 0.738424, 0.642674,
		-0.525786, 0.636509, -0.564274,
		-0.825741, -0.222680, 0.518233,
		39.150116, 38.791191, 50.371048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413567, 39.623604, 50.169052>,  <39.728134, 38.947067, 50.008286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413567, 39.623604, 50.169052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267567, 39.359997, 50.432106>,  <39.179966, 39.201832, 50.589939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267567, 39.359997, 50.432106>,  <39.413567, 39.623604, 50.169052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267567, 39.359997, 50.432106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198672, 0.634960, 0.746562,
		-0.909564, 0.403145, -0.100830,
		-0.364996, -0.659014, 0.657631,
		39.158070, 39.162292, 50.629395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749916, 40.100006, 50.259178>,  <39.413567, 39.623604, 50.169052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749916, 40.100006, 50.259178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828442, 40.486149, 50.190422>,  <38.875557, 40.717834, 50.149170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828442, 40.486149, 50.190422>,  <38.749916, 40.100006, 50.259178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828442, 40.486149, 50.190422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031603, -0.181440, -0.982894,
		-0.980031, 0.187525, -0.066127,
		0.196315, 0.965357, -0.171890,
		38.887337, 40.775757, 50.138855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288582, 40.341522, 49.741249>,  <38.749916, 40.100006, 50.259178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288582, 40.341522, 49.741249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617058, 40.569786, 49.741211>,  <38.814144, 40.706745, 49.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617058, 40.569786, 49.741211>,  <38.288582, 40.341522, 49.741249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617058, 40.569786, 49.741211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125437, -0.180674, -0.975511,
		-0.556705, 0.801063, -0.219949,
		0.821185, 0.570661, -0.000099,
		38.863415, 40.740986, 49.741180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129215, 40.924786, 49.288425>,  <38.288582, 40.341522, 49.741249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129215, 40.924786, 49.288425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525555, 40.928619, 49.342266>,  <38.763359, 40.930920, 49.374573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525555, 40.928619, 49.342266>,  <38.129215, 40.924786, 49.288425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525555, 40.928619, 49.342266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134685, -0.008371, -0.990853,
		-0.008371, 0.999919, -0.009585,
		0.990853, 0.009585, 0.134604,
		38.822811, 40.931496, 49.382648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283993, 41.436382, 48.831192>,  <38.129215, 40.924786, 49.288425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283993, 41.436382, 48.831192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600044, 41.201500, 48.901493>,  <38.789673, 41.060570, 48.943676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600044, 41.201500, 48.901493>,  <38.283993, 41.436382, 48.831192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600044, 41.201500, 48.901493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159280, -0.080189, -0.983971,
		0.591888, 0.805456, 0.030170,
		0.790126, -0.587206, 0.175756,
		38.837082, 41.025337, 48.954220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706829, 41.632050, 48.307919>,  <38.283993, 41.436382, 48.831192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706829, 41.632050, 48.307919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899567, 41.298615, 48.415966>,  <39.015209, 41.098553, 48.480797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899567, 41.298615, 48.415966>,  <38.706829, 41.632050, 48.307919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899567, 41.298615, 48.415966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369675, -0.086111, -0.925163,
		0.794461, 0.545640, 0.266663,
		0.481843, -0.833584, 0.270121,
		39.044121, 41.048538, 48.497002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382366, 41.647530, 47.836601>,  <38.706829, 41.632050, 48.307919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382366, 41.647530, 47.836601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347679, 41.281387, 47.993881>,  <39.326866, 41.061703, 48.088249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347679, 41.281387, 47.993881>,  <39.382366, 41.647530, 47.836601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347679, 41.281387, 47.993881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231095, -0.402404, -0.885814,
		0.969059, 0.014053, 0.246429,
		-0.086716, -0.915354, 0.393201,
		39.321663, 41.006783, 48.111843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994240, 41.328453, 47.730858>,  <39.382366, 41.647530, 47.836601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994240, 41.328453, 47.730858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728413, 41.034321, 47.783966>,  <39.568916, 40.857841, 47.815830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728413, 41.034321, 47.783966>,  <39.994240, 41.328453, 47.730858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728413, 41.034321, 47.783966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369115, -0.477553, -0.797306,
		0.649692, -0.480859, 0.588791,
		-0.664571, -0.735335, 0.132770,
		39.529041, 40.813721, 47.823795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297287, 40.607399, 47.736420>,  <39.994240, 41.328453, 47.730858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297287, 40.607399, 47.736420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909691, 40.568092, 47.645725>,  <39.677135, 40.544506, 47.591309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909691, 40.568092, 47.645725>,  <40.297287, 40.607399, 47.736420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909691, 40.568092, 47.645725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246175, -0.463779, -0.851062,
		-0.021522, -0.880484, 0.473587,
		-0.968986, -0.098269, -0.226735,
		39.618996, 40.538612, 47.577705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268284, 39.936146, 47.489742>,  <40.297287, 40.607399, 47.736420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268284, 39.936146, 47.489742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926186, 40.089447, 47.350212>,  <39.720928, 40.181427, 47.266495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926186, 40.089447, 47.350212>,  <40.268284, 39.936146, 47.489742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926186, 40.089447, 47.350212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092577, -0.549290, -0.830488,
		-0.509886, -0.742564, 0.434298,
		-0.855246, 0.383248, -0.348820,
		39.669613, 40.204422, 47.245567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919628, 39.305626, 47.244324>,  <40.268284, 39.936146, 47.489742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919628, 39.305626, 47.244324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773003, 39.631229, 47.064087>,  <39.685028, 39.826591, 46.955944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773003, 39.631229, 47.064087>,  <39.919628, 39.305626, 47.244324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773003, 39.631229, 47.064087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239267, -0.550484, -0.799824,
		-0.899102, -0.185372, 0.396550,
		-0.366560, 0.814005, -0.450588,
		39.663036, 39.875431, 46.928909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296207, 38.961510, 46.831280>,  <39.919628, 39.305626, 47.244324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296207, 38.961510, 46.831280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344597, 39.342163, 46.718319>,  <39.373631, 39.570557, 46.650543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344597, 39.342163, 46.718319>,  <39.296207, 38.961510, 46.831280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344597, 39.342163, 46.718319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067448, -0.275956, -0.958801,
		-0.990362, 0.135033, 0.030804,
		0.120969, 0.951638, -0.282404,
		39.380886, 39.627655, 46.633598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736763, 39.043980, 46.454334>,  <39.296207, 38.961510, 46.831280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736763, 39.043980, 46.454334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008644, 39.307945, 46.326260>,  <39.171772, 39.466324, 46.249416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008644, 39.307945, 46.326260>,  <38.736763, 39.043980, 46.454334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008644, 39.307945, 46.326260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027977, -0.412881, -0.910355,
		-0.732957, 0.627725, -0.262173,
		0.679699, 0.659917, -0.320186,
		39.212555, 39.505920, 46.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476189, 39.314667, 45.834419>,  <38.736763, 39.043980, 46.454334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476189, 39.314667, 45.834419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868599, 39.391407, 45.823223>,  <39.104046, 39.437450, 45.816505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868599, 39.391407, 45.823223>,  <38.476189, 39.314667, 45.834419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868599, 39.391407, 45.823223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026008, -0.273286, -0.961581,
		-0.192132, 0.942606, -0.273090,
		0.981024, 0.191853, -0.027992,
		39.162907, 39.448963, 45.814827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596027, 39.783180, 45.207523>,  <38.476189, 39.314667, 45.834419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596027, 39.783180, 45.207523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939068, 39.601067, 45.303215>,  <39.144894, 39.491798, 45.360630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939068, 39.601067, 45.303215>,  <38.596027, 39.783180, 45.207523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939068, 39.601067, 45.303215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067582, -0.361353, -0.929977,
		0.509851, 0.813719, -0.279129,
		0.857604, -0.455286, 0.239229,
		39.196350, 39.464481, 45.374985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993488, 39.848450, 44.590557>,  <38.596027, 39.783180, 45.207523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993488, 39.848450, 44.590557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206329, 39.578884, 44.795578>,  <39.334034, 39.417145, 44.918591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206329, 39.578884, 44.795578>,  <38.993488, 39.848450, 44.590557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206329, 39.578884, 44.795578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212619, -0.479614, -0.851331,
		0.819550, 0.561971, -0.111916,
		0.532100, -0.673913, 0.512554,
		39.365959, 39.376709, 44.949345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625404, 39.855160, 44.255806>,  <38.993488, 39.848450, 44.590557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625404, 39.855160, 44.255806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567631, 39.513893, 44.456299>,  <39.532967, 39.309132, 44.576595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567631, 39.513893, 44.456299>,  <39.625404, 39.855160, 44.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567631, 39.513893, 44.456299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205527, -0.521367, -0.828212,
		0.967934, -0.016606, 0.250654,
		-0.144436, -0.853171, 0.501237,
		39.524300, 39.257942, 44.606670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152393, 39.502003, 44.037582>,  <39.625404, 39.855160, 44.255806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152393, 39.502003, 44.037582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901096, 39.224918, 44.179260>,  <39.750317, 39.058666, 44.264267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901096, 39.224918, 44.179260>,  <40.152393, 39.502003, 44.037582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901096, 39.224918, 44.179260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143894, -0.550858, -0.822101,
		0.764592, -0.465515, 0.445752,
		-0.628246, -0.692713, 0.354197,
		39.712624, 39.017105, 44.285519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449947, 38.901863, 43.763039>,  <40.152393, 39.502003, 44.037582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449947, 38.901863, 43.763039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075768, 38.789722, 43.849152>,  <39.851261, 38.722439, 43.900818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075768, 38.789722, 43.849152>,  <40.449947, 38.901863, 43.763039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075768, 38.789722, 43.849152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000404, -0.608207, -0.793778,
		0.353471, -0.742623, 0.568831,
		-0.935445, -0.280348, 0.215284,
		39.795135, 38.705620, 43.913738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398972, 38.129425, 43.875305>,  <40.449947, 38.901863, 43.763039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398972, 38.129425, 43.875305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042889, 38.260628, 43.748848>,  <39.829239, 38.339352, 43.672974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042889, 38.260628, 43.748848>,  <40.398972, 38.129425, 43.875305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042889, 38.260628, 43.748848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037312, -0.639129, -0.768194,
		-0.454028, -0.695647, 0.556718,
		-0.890206, 0.328009, -0.316138,
		39.775826, 38.359032, 43.654007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075375, 37.508663, 43.655693>,  <40.398972, 38.129425, 43.875305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075375, 37.508663, 43.655693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820820, 37.777416, 43.504124>,  <39.668087, 37.938667, 43.413181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820820, 37.777416, 43.504124>,  <40.075375, 37.508663, 43.655693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820820, 37.777416, 43.504124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205361, -0.621082, -0.756362,
		-0.743531, -0.403522, 0.533227,
		-0.636386, 0.671883, -0.378927,
		39.629906, 37.978981, 43.390446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507206, 37.220684, 43.443069>,  <40.075375, 37.508663, 43.655693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507206, 37.220684, 43.443069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475494, 37.568810, 43.248642>,  <39.456467, 37.777687, 43.131985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475494, 37.568810, 43.248642>,  <39.507206, 37.220684, 43.443069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475494, 37.568810, 43.248642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269526, -0.488158, -0.830095,
		-0.959724, 0.065195, 0.273276,
		-0.079283, 0.870317, -0.486069,
		39.451710, 37.829903, 43.102821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838722, 37.197762, 43.022861>,  <39.507206, 37.220684, 43.443069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838722, 37.197762, 43.022861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058998, 37.476471, 42.839012>,  <39.191162, 37.643696, 42.728703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058998, 37.476471, 42.839012>,  <38.838722, 37.197762, 43.022861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058998, 37.476471, 42.839012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249396, -0.388141, -0.887214,
		-0.796582, 0.603207, -0.039973,
		0.550689, 0.696769, -0.459624,
		39.224205, 37.685501, 42.701126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426548, 37.372349, 42.472622>,  <38.838722, 37.197762, 43.022861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426548, 37.372349, 42.472622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797348, 37.473770, 42.362076>,  <39.019829, 37.534622, 42.295750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797348, 37.473770, 42.362076>,  <38.426548, 37.372349, 42.472622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797348, 37.473770, 42.362076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167981, -0.378134, -0.910383,
		-0.335330, 0.890352, -0.307940,
		0.927004, 0.253551, -0.276362,
		39.075451, 37.549835, 42.279167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361130, 37.854637, 41.876801>,  <38.426548, 37.372349, 42.472622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361130, 37.854637, 41.876801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738220, 37.722542, 41.857990>,  <38.964474, 37.643284, 41.846703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738220, 37.722542, 41.857990>,  <38.361130, 37.854637, 41.876801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738220, 37.722542, 41.857990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155642, -0.310797, -0.937647,
		0.295028, 0.891263, -0.344395,
		0.942727, -0.330234, -0.047024,
		39.021038, 37.623470, 41.843884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623985, 38.149483, 41.246288>,  <38.361130, 37.854637, 41.876801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623985, 38.149483, 41.246288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834511, 37.829334, 41.361115>,  <38.960827, 37.637245, 41.430008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834511, 37.829334, 41.361115>,  <38.623985, 38.149483, 41.246288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834511, 37.829334, 41.361115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000779, -0.337151, -0.941450,
		0.850291, 0.495721, -0.176824,
		0.526313, -0.800368, 0.287063,
		38.992405, 37.589222, 41.447235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041679, 38.047375, 40.675854>,  <38.623985, 38.149483, 41.246288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041679, 38.047375, 40.675854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056400, 37.700531, 40.874554>,  <39.065235, 37.492424, 40.993774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056400, 37.700531, 40.874554>,  <39.041679, 38.047375, 40.675854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056400, 37.700531, 40.874554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279122, -0.468386, -0.838275,
		0.959550, 0.169509, 0.224790,
		0.036806, -0.867111, 0.496753,
		39.067444, 37.440399, 41.023579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623260, 37.667103, 40.365726>,  <39.041679, 38.047375, 40.675854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623260, 37.667103, 40.365726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382641, 37.397064, 40.536552>,  <39.238270, 37.235043, 40.639050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382641, 37.397064, 40.536552>,  <39.623260, 37.667103, 40.365726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382641, 37.397064, 40.536552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111594, -0.600385, -0.791887,
		0.791000, -0.428703, 0.436499,
		-0.601552, -0.675094, 0.427064,
		39.202175, 37.194534, 40.664673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978531, 37.111317, 40.305016>,  <39.623260, 37.667103, 40.365726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978531, 37.111317, 40.305016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595535, 37.010387, 40.360943>,  <39.365738, 36.949829, 40.394497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595535, 37.010387, 40.360943>,  <39.978531, 37.111317, 40.305016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595535, 37.010387, 40.360943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045657, -0.611120, -0.790220,
		0.284835, -0.750243, 0.596661,
		-0.957488, -0.252324, 0.139814,
		39.308289, 36.934689, 40.402885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911896, 36.498405, 39.977859>,  <39.978531, 37.111317, 40.305016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911896, 36.498405, 39.977859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522778, 36.573013, 40.032806>,  <39.289307, 36.617779, 40.065777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522778, 36.573013, 40.032806>,  <39.911896, 36.498405, 39.977859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522778, 36.573013, 40.032806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214038, -0.496949, -0.840969,
		-0.088592, -0.847497, 0.523355,
		-0.972800, 0.186521, 0.137371,
		39.230938, 36.628971, 40.074017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540226, 35.814293, 39.931126>,  <39.911896, 36.498405, 39.977859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540226, 35.814293, 39.931126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256641, 36.088799, 39.866112>,  <39.086491, 36.253502, 39.827103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256641, 36.088799, 39.866112>,  <39.540226, 35.814293, 39.931126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256641, 36.088799, 39.866112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412462, -0.590412, -0.693750,
		-0.572050, -0.424809, 0.701638,
		-0.708966, 0.686259, -0.162528,
		39.043953, 36.294678, 39.817352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915939, 35.401398, 39.781582>,  <39.540226, 35.814293, 39.931126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915939, 35.401398, 39.781582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831646, 35.773308, 39.660847>,  <38.781071, 35.996452, 39.588406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831646, 35.773308, 39.660847>,  <38.915939, 35.401398, 39.781582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831646, 35.773308, 39.660847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347719, -0.359876, -0.865783,
		-0.913609, -0.077498, 0.399140,
		-0.210738, 0.929776, -0.301839,
		38.768425, 36.052242, 39.570293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290421, 35.264748, 39.486935>,  <38.915939, 35.401398, 39.781582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290421, 35.264748, 39.486935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445595, 35.600845, 39.335415>,  <38.538700, 35.802505, 39.244503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445595, 35.600845, 39.335415>,  <38.290421, 35.264748, 39.486935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445595, 35.600845, 39.335415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391835, -0.221649, -0.892937,
		-0.834248, 0.494833, 0.243251,
		0.387938, 0.840245, -0.378804,
		38.561977, 35.852921, 39.221775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719543, 35.540825, 39.182247>,  <38.290421, 35.264748, 39.486935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719543, 35.540825, 39.182247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039322, 35.713203, 39.014832>,  <38.231190, 35.816631, 38.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039322, 35.713203, 39.014832>,  <37.719543, 35.540825, 39.182247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039322, 35.713203, 39.014832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321560, -0.281514, -0.904074,
		-0.507433, 0.857341, -0.086479,
		0.799444, 0.430948, -0.418536,
		38.279156, 35.842487, 38.889271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461575, 35.846962, 38.551392>,  <37.719543, 35.540825, 39.182247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461575, 35.846962, 38.551392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856110, 35.823662, 38.489754>,  <38.092831, 35.809681, 38.452770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856110, 35.823662, 38.489754>,  <37.461575, 35.846962, 38.551392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856110, 35.823662, 38.489754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154149, 0.003540, -0.988041,
		0.058101, 0.998296, -0.005488,
		0.986338, -0.058252, -0.154092,
		38.152012, 35.806187, 38.443527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573498, 36.291889, 38.026005>,  <37.461575, 35.846962, 38.551392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573498, 36.291889, 38.026005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876617, 36.031261, 38.039845>,  <38.058491, 35.874886, 38.048149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876617, 36.031261, 38.039845>,  <37.573498, 36.291889, 38.026005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876617, 36.031261, 38.039845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138935, -0.212941, -0.967137,
		0.637520, 0.728092, -0.251893,
		0.757803, -0.651566, 0.034597,
		38.103958, 35.835793, 38.050224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030357, 36.369289, 37.384949>,  <37.573498, 36.291889, 38.026005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030357, 36.369289, 37.384949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156357, 36.015369, 37.522301>,  <38.231956, 35.803017, 37.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156357, 36.015369, 37.522301>,  <38.030357, 36.369289, 37.384949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156357, 36.015369, 37.522301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069781, -0.339223, -0.938114,
		0.946525, 0.319462, -0.045112,
		0.314995, -0.884800, 0.343375,
		38.250854, 35.749928, 37.625313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719784, 36.214897, 37.061462>,  <38.030357, 36.369289, 37.384949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719784, 36.214897, 37.061462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558002, 35.876766, 37.201084>,  <38.460934, 35.673889, 37.284855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558002, 35.876766, 37.201084>,  <38.719784, 36.214897, 37.061462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558002, 35.876766, 37.201084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023329, -0.391072, -0.920064,
		0.914261, -0.363981, 0.177892,
		-0.404454, -0.845329, 0.349051,
		38.436665, 35.623169, 37.305798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958683, 35.808884, 36.535667>,  <38.719784, 36.214897, 37.061462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958683, 35.808884, 36.535667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701458, 35.582859, 36.742424>,  <38.547123, 35.447243, 36.866478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701458, 35.582859, 36.742424>,  <38.958683, 35.808884, 36.535667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701458, 35.582859, 36.742424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253907, -0.479464, -0.840027,
		0.722501, -0.671429, 0.164850,
		-0.643058, -0.565063, 0.516894,
		38.508541, 35.413342, 36.897491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150906, 35.143745, 36.376770>,  <38.958683, 35.808884, 36.535667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150906, 35.143745, 36.376770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761719, 35.123180, 36.466835>,  <38.528206, 35.110840, 36.520874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761719, 35.123180, 36.466835>,  <39.150906, 35.143745, 36.376770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761719, 35.123180, 36.466835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208045, -0.228281, -0.951107,
		0.100302, -0.972237, 0.211413,
		-0.972963, -0.051415, 0.225166,
		38.469830, 35.107758, 36.534386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948936, 34.546261, 35.949604>,  <39.150906, 35.143745, 36.376770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948936, 34.546261, 35.949604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610676, 34.731609, 36.055557>,  <38.407719, 34.842819, 36.119129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610676, 34.731609, 36.055557>,  <38.948936, 34.546261, 35.949604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610676, 34.731609, 36.055557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396946, -0.214231, -0.892490,
		-0.356808, -0.859879, 0.365097,
		-0.845649, 0.463371, 0.264886,
		38.356979, 34.870621, 36.135025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247265, 34.983582, 35.381107>,  <38.948936, 34.546261, 35.949604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247265, 34.983582, 35.381107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186314, 34.786446, 35.038437>,  <39.149742, 34.668163, 34.832836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186314, 34.786446, 35.038437>,  <39.247265, 34.983582, 35.381107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186314, 34.786446, 35.038437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980318, 0.034728, -0.194345,
		0.125531, -0.869428, 0.477845,
		-0.152375, -0.492837, -0.856676,
		39.140602, 34.638596, 34.781433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639145, 34.465679, 35.354248>,  <39.247265, 34.983582, 35.381107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639145, 34.465679, 35.354248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552063, 34.485077, 34.964325>,  <39.499813, 34.496716, 34.730370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552063, 34.485077, 34.964325>,  <39.639145, 34.465679, 35.354248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552063, 34.485077, 34.964325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974281, -0.048720, -0.220008,
		-0.058163, -0.997634, -0.036644,
		-0.217703, 0.048498, -0.974809,
		39.486752, 34.499626, 34.671883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002174, 33.898243, 34.954842>,  <39.639145, 34.465679, 35.354248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002174, 33.898243, 34.954842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913673, 34.213776, 34.725479>,  <39.860573, 34.403095, 34.587864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913673, 34.213776, 34.725479>,  <40.002174, 33.898243, 34.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913673, 34.213776, 34.725479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962191, 0.080791, -0.260118,
		-0.158864, -0.609272, -0.776884,
		-0.221248, 0.788834, -0.573402,
		39.847298, 34.450424, 34.553459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114872, 33.744339, 34.366913>,  <40.002174, 33.898243, 34.954842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114872, 33.744339, 34.366913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152214, 34.141968, 34.344589>,  <40.174618, 34.380543, 34.331196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152214, 34.141968, 34.344589>,  <40.114872, 33.744339, 34.366913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152214, 34.141968, 34.344589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919690, -0.107569, -0.377623,
		-0.381386, -0.016074, -0.924276,
		0.093354, 0.994068, -0.055808,
		40.180222, 34.440189, 34.327847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322784, 34.116013, 33.659229>,  <40.114872, 33.744339, 34.366913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322784, 34.116013, 33.659229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483212, 34.279804, 33.987003>,  <40.579468, 34.378078, 34.183666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483212, 34.279804, 33.987003>,  <40.322784, 34.116013, 33.659229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483212, 34.279804, 33.987003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915922, -0.164413, -0.366136,
		-0.015201, 0.897381, -0.440994,
		0.401069, 0.409482, 0.819432,
		40.603531, 34.402649, 34.232834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900448, 34.651413, 33.540634>,  <40.322784, 34.116013, 33.659229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900448, 34.651413, 33.540634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020206, 34.427727, 33.849861>,  <41.092060, 34.293514, 34.035397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020206, 34.427727, 33.849861>,  <40.900448, 34.651413, 33.540634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020206, 34.427727, 33.849861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835339, -0.237890, -0.495597,
		0.461053, 0.794156, 0.395913,
		0.299397, -0.559218, 0.773069,
		41.110027, 34.259960, 34.081783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626369, 34.692253, 33.600071>,  <40.900448, 34.651413, 33.540634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626369, 34.692253, 33.600071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592464, 34.347965, 33.800858>,  <41.572121, 34.141392, 33.921329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592464, 34.347965, 33.800858>,  <41.626369, 34.692253, 33.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592464, 34.347965, 33.800858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826705, -0.341974, -0.446780,
		0.556213, 0.377110, 0.740550,
		-0.084763, -0.860722, 0.501970,
		41.567036, 34.089748, 33.951447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092564, 34.988819, 34.111027>,  <41.626369, 34.692253, 33.600071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092564, 34.988819, 34.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470417, 35.116638, 34.081230>,  <42.697128, 35.193329, 34.063354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470417, 35.116638, 34.081230>,  <42.092564, 34.988819, 34.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470417, 35.116638, 34.081230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156810, 0.240247, -0.957962,
		-0.288220, 0.916608, 0.277055,
		0.944637, 0.319549, -0.074490,
		42.753807, 35.212502, 34.058884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058510, 35.610500, 33.800659>,  <42.092564, 34.988819, 34.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058510, 35.610500, 33.800659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435127, 35.488388, 33.743671>,  <42.661098, 35.415119, 33.709480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435127, 35.488388, 33.743671>,  <42.058510, 35.610500, 33.800659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435127, 35.488388, 33.743671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044380, 0.306809, -0.950736,
		0.333954, 0.901482, 0.275326,
		0.941544, -0.305283, -0.142467,
		42.717590, 35.396805, 33.700932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461296, 36.229256, 33.583393>,  <42.058510, 35.610500, 33.800659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461296, 36.229256, 33.583393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658295, 35.915771, 33.432003>,  <42.776493, 35.727680, 33.341167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658295, 35.915771, 33.432003>,  <42.461296, 36.229256, 33.583393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658295, 35.915771, 33.432003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203709, 0.526602, -0.825344,
		0.846137, 0.329381, 0.418998,
		0.492498, -0.783708, -0.378480,
		42.806046, 35.680660, 33.318459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152550, 36.473095, 33.151871>,  <42.461296, 36.229256, 33.583393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152550, 36.473095, 33.151871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006317, 36.116512, 33.044796>,  <42.918579, 35.902561, 32.980553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006317, 36.116512, 33.044796>,  <43.152550, 36.473095, 33.151871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006317, 36.116512, 33.044796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035729, 0.273943, -0.961082,
		0.930095, -0.360914, -0.068297,
		-0.365578, -0.891457, -0.267688,
		42.896645, 35.849075, 32.964489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563019, 36.406086, 32.549137>,  <43.152550, 36.473095, 33.151871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563019, 36.406086, 32.549137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263676, 36.140850, 32.542473>,  <43.084072, 35.981709, 32.538475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263676, 36.140850, 32.542473>,  <43.563019, 36.406086, 32.549137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263676, 36.140850, 32.542473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135593, 0.177526, -0.974730,
		0.649290, -0.727186, -0.222763,
		-0.748356, -0.663088, -0.016665,
		43.039169, 35.941925, 32.537472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700237, 36.144199, 31.883694>,  <43.563019, 36.406086, 32.549137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700237, 36.144199, 31.883694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343468, 35.975052, 31.947765>,  <43.129406, 35.873566, 31.986208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343468, 35.975052, 31.947765>,  <43.700237, 36.144199, 31.883694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343468, 35.975052, 31.947765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253937, 0.175300, -0.951202,
		0.374152, -0.889075, -0.263735,
		-0.891923, -0.422867, 0.160180,
		43.075890, 35.848190, 31.995819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638184, 35.577152, 31.434849>,  <43.700237, 36.144199, 31.883694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638184, 35.577152, 31.434849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253471, 35.653492, 31.513397>,  <43.022644, 35.699295, 31.560526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253471, 35.653492, 31.513397>,  <43.638184, 35.577152, 31.434849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253471, 35.653492, 31.513397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196403, 0.018932, -0.980340,
		-0.190817, -0.981436, 0.019275,
		-0.961777, 0.190851, 0.196370,
		42.964939, 35.710747, 31.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297363, 35.099884, 31.014473>,  <43.638184, 35.577152, 31.434849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297363, 35.099884, 31.014473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011219, 35.360058, 31.116611>,  <42.839535, 35.516163, 31.177895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011219, 35.360058, 31.116611>,  <43.297363, 35.099884, 31.014473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011219, 35.360058, 31.116611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364694, -0.035825, -0.930438,
		-0.596037, -0.758721, 0.262835,
		-0.715359, 0.650430, 0.255348,
		42.796612, 35.555187, 31.193216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688988, 34.699654, 30.828129>,  <43.297363, 35.099884, 31.014473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688988, 34.699654, 30.828129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619450, 35.091808, 30.865250>,  <42.577728, 35.327103, 30.887522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619450, 35.091808, 30.865250>,  <42.688988, 34.699654, 30.828129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619450, 35.091808, 30.865250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422746, 0.010815, -0.906184,
		-0.889418, -0.196764, 0.412576,
		-0.173842, 0.980392, 0.092800,
		42.567295, 35.385925, 30.893089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031384, 34.889019, 30.493036>,  <42.688988, 34.699654, 30.828129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031384, 34.889019, 30.493036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224598, 35.239212, 30.498787>,  <42.340527, 35.449329, 30.502237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224598, 35.239212, 30.498787>,  <42.031384, 34.889019, 30.493036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224598, 35.239212, 30.498787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275077, 0.167316, -0.946751,
		-0.831271, 0.453357, 0.321645,
		0.483032, 0.875484, 0.014377,
		42.369507, 35.501858, 30.503099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626247, 35.485092, 30.113272>,  <42.031384, 34.889019, 30.493036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626247, 35.485092, 30.113272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002487, 35.620655, 30.105083>,  <42.228230, 35.701992, 30.100170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002487, 35.620655, 30.105083>,  <41.626247, 35.485092, 30.113272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002487, 35.620655, 30.105083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129130, 0.301321, -0.944739,
		-0.314014, 0.891260, 0.327185,
		0.940596, 0.338911, -0.020469,
		42.284664, 35.722328, 30.098942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709106, 36.130894, 29.604435>,  <41.626247, 35.485092, 30.113272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709106, 36.130894, 29.604435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057232, 35.936649, 29.637264>,  <42.266109, 35.820103, 29.656961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057232, 35.936649, 29.637264>,  <41.709106, 36.130894, 29.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057232, 35.936649, 29.637264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120841, 0.049006, -0.991461,
		0.477439, 0.872802, 0.101332,
		0.870315, -0.485608, 0.082073,
		42.318325, 35.790966, 29.661886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070625, 36.418285, 29.052521>,  <41.709106, 36.130894, 29.604435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070625, 36.418285, 29.052521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291592, 36.098732, 29.147707>,  <42.424171, 35.907001, 29.204819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291592, 36.098732, 29.147707>,  <42.070625, 36.418285, 29.052521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291592, 36.098732, 29.147707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191716, -0.156062, -0.968963,
		0.811225, 0.580889, 0.066948,
		0.552412, -0.798882, 0.237966,
		42.457314, 35.859066, 29.219097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626289, 36.525368, 28.619154>,  <42.070625, 36.418285, 29.052521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626289, 36.525368, 28.619154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678200, 36.140919, 28.716640>,  <42.709347, 35.910248, 28.775133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678200, 36.140919, 28.716640>,  <42.626289, 36.525368, 28.619154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678200, 36.140919, 28.716640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457877, -0.159928, -0.874512,
		0.879492, 0.225085, 0.419322,
		0.129778, -0.961124, 0.243717,
		42.717133, 35.852581, 28.789755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316174, 36.408127, 28.418772>,  <42.626289, 36.525368, 28.619154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316174, 36.408127, 28.418772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134556, 36.051853, 28.427887>,  <43.025585, 35.838089, 28.433355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134556, 36.051853, 28.427887>,  <43.316174, 36.408127, 28.418772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134556, 36.051853, 28.427887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358993, -0.206290, -0.910258,
		0.815455, -0.405117, 0.413416,
		-0.454044, -0.890688, 0.022786,
		42.998341, 35.784645, 28.434723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787647, 35.998920, 28.257322>,  <43.316174, 36.408127, 28.418772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787647, 35.998920, 28.257322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470329, 35.768208, 28.179346>,  <43.279938, 35.629780, 28.132561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470329, 35.768208, 28.179346>,  <43.787647, 35.998920, 28.257322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470329, 35.768208, 28.179346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362998, -0.191023, -0.911999,
		0.488788, -0.794249, 0.360909,
		-0.793296, -0.576784, -0.194941,
		43.232342, 35.595173, 28.120863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040615, 35.305885, 28.083763>,  <43.787647, 35.998920, 28.257322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040615, 35.305885, 28.083763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692745, 35.388615, 27.904476>,  <43.484024, 35.438251, 27.796904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692745, 35.388615, 27.904476>,  <44.040615, 35.305885, 28.083763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692745, 35.388615, 27.904476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374035, -0.316442, -0.871758,
		-0.322123, -0.925793, 0.197847,
		-0.869675, 0.206811, -0.448212,
		43.431843, 35.450661, 27.770012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870796, 34.738506, 27.761066>,  <44.040615, 35.305885, 28.083763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870796, 34.738506, 27.761066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639843, 34.983471, 27.545071>,  <43.501270, 35.130447, 27.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639843, 34.983471, 27.545071>,  <43.870796, 34.738506, 27.761066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639843, 34.983471, 27.545071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371608, -0.391788, -0.841671,
		-0.727008, -0.686628, -0.001366,
		-0.577379, 0.612409, -0.539989,
		43.466629, 35.167194, 27.383074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480469, 34.238148, 27.174311>,  <43.870796, 34.738506, 27.761066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480469, 34.238148, 27.174311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484734, 34.626404, 27.078196>,  <43.487293, 34.859360, 27.020527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484734, 34.626404, 27.078196>,  <43.480469, 34.238148, 27.174311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484734, 34.626404, 27.078196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193382, -0.237767, -0.951877,
		-0.981066, -0.036321, -0.190239,
		0.010660, 0.970643, -0.240289,
		43.487930, 34.917595, 27.006109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297546, 34.240845, 26.497252>,  <43.480469, 34.238148, 27.174311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297546, 34.240845, 26.497252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444298, 34.612022, 26.523573>,  <43.532349, 34.834728, 26.539366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444298, 34.612022, 26.523573>,  <43.297546, 34.240845, 26.497252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444298, 34.612022, 26.523573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301844, -0.051830, -0.951947,
		-0.879939, 0.369109, -0.299108,
		0.366875, 0.927940, 0.065806,
		43.554359, 34.890404, 26.543314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963982, 34.639465, 26.035660>,  <43.297546, 34.240845, 26.497252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963982, 34.639465, 26.035660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327122, 34.799664, 26.085327>,  <43.545006, 34.895782, 26.115128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327122, 34.799664, 26.085327>,  <42.963982, 34.639465, 26.035660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327122, 34.799664, 26.085327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200696, -0.155035, -0.967308,
		-0.368150, 0.903089, -0.221125,
		0.907848, 0.400493, 0.124170,
		43.599476, 34.919811, 26.122578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541111, 34.175339, 25.521873>,  <42.963982, 34.639465, 26.035660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541111, 34.175339, 25.521873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497040, 34.296631, 25.900484>,  <42.470596, 34.369404, 26.127651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497040, 34.296631, 25.900484>,  <42.541111, 34.175339, 25.521873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497040, 34.296631, 25.900484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755260, -0.593521, 0.278055,
		0.646098, 0.745511, -0.163620,
		-0.110181, 0.303227, 0.946527,
		42.463985, 34.387600, 26.184443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004097, 34.167492, 25.020393>,  <42.541111, 34.175339, 25.521873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004097, 34.167492, 25.020393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118320, 34.511387, 24.851011>,  <43.186855, 34.717724, 24.749382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118320, 34.511387, 24.851011>,  <43.004097, 34.167492, 25.020393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118320, 34.511387, 24.851011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910481, -0.381289, -0.160137,
		-0.299133, -0.339817, -0.891652,
		0.285560, 0.859734, -0.423454,
		43.203987, 34.769306, 24.723976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182446, 34.265499, 24.296410>,  <43.004097, 34.167492, 25.020393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182446, 34.265499, 24.296410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425953, 34.496506, 24.513990>,  <43.572056, 34.635109, 24.644539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425953, 34.496506, 24.513990>,  <43.182446, 34.265499, 24.296410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425953, 34.496506, 24.513990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789583, -0.374309, -0.486262,
		-0.077217, 0.725514, -0.683862,
		0.608765, 0.577514, 0.543951,
		43.608582, 34.669762, 24.677176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756939, 34.057537, 24.130779>,  <43.182446, 34.265499, 24.296410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756939, 34.057537, 24.130779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920208, 34.313465, 24.391251>,  <44.018169, 34.467022, 24.547533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920208, 34.313465, 24.391251>,  <43.756939, 34.057537, 24.130779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920208, 34.313465, 24.391251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904022, -0.382550, -0.190785,
		0.127040, 0.666551, -0.734555,
		0.408172, 0.639817, 0.651176,
		44.042660, 34.505409, 24.586603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312363, 34.688416, 23.884895>,  <43.756939, 34.057537, 24.130779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312363, 34.688416, 23.884895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425541, 34.590065, 24.255730>,  <44.493446, 34.531055, 24.478230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425541, 34.590065, 24.255730>,  <44.312363, 34.688416, 23.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425541, 34.590065, 24.255730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957109, 0.009570, -0.289571,
		0.062326, 0.969255, 0.238034,
		0.282946, -0.245872, 0.927086,
		44.510426, 34.516304, 24.533855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708004, 35.205009, 24.204771>,  <44.312363, 34.688416, 23.884895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708004, 35.205009, 24.204771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796375, 34.835987, 24.331310>,  <44.849396, 34.614574, 24.407234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796375, 34.835987, 24.331310>,  <44.708004, 35.205009, 24.204771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796375, 34.835987, 24.331310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962921, 0.154835, -0.220926,
		0.154835, 0.353428, 0.922559,
		0.220926, -0.922559, 0.316349,
		44.862652, 34.559219, 24.426214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074677, 35.012638, 24.824610>,  <44.708004, 35.205009, 24.204771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074677, 35.012638, 24.824610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171238, 34.745041, 24.543419>,  <45.229176, 34.584484, 24.374704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171238, 34.745041, 24.543419>,  <45.074677, 35.012638, 24.824610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171238, 34.745041, 24.543419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849116, 0.496322, -0.180740,
		0.469817, -0.553279, 0.687862,
		0.241402, -0.668989, -0.702978,
		45.243660, 34.544346, 24.332525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664925, 34.677410, 24.998919>,  <45.074677, 35.012638, 24.824610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664925, 34.677410, 24.998919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614246, 34.684456, 24.602205>,  <45.583839, 34.688683, 24.364178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614246, 34.684456, 24.602205>,  <45.664925, 34.677410, 24.998919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614246, 34.684456, 24.602205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869211, 0.483710, -0.102451,
		0.477932, -0.875051, -0.076596,
		-0.126700, 0.017613, -0.991785,
		45.576237, 34.689739, 24.304670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.123184, 34.244576, 24.668165>,  <45.664925, 34.677410, 24.998919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.123184, 34.244576, 24.668165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009209, 34.573086, 24.470451>,  <45.940823, 34.770191, 24.351822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009209, 34.573086, 24.470451>,  <46.123184, 34.244576, 24.668165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009209, 34.573086, 24.470451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942949, 0.332804, 0.009394,
		0.172216, -0.463411, -0.869248,
		-0.284936, 0.821275, -0.494287,
		45.923729, 34.819469, 24.322165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008099, 34.097363, 25.428934>,  <46.123184, 34.244576, 24.668165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008099, 34.097363, 25.428934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817535, 34.410824, 25.588400>,  <45.703197, 34.598900, 25.684080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817535, 34.410824, 25.588400>,  <46.008099, 34.097363, 25.428934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817535, 34.410824, 25.588400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168223, -0.363807, 0.916158,
		0.862983, 0.503526, 0.041492,
		-0.476404, 0.783649, 0.398664,
		45.674614, 34.645920, 25.707998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417580, 34.601940, 25.874075>,  <46.008099, 34.097363, 25.428934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417580, 34.601940, 25.874075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036438, 34.620331, 25.994041>,  <45.807751, 34.631367, 26.066021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036438, 34.620331, 25.994041>,  <46.417580, 34.601940, 25.874075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036438, 34.620331, 25.994041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298047, -0.043388, 0.953564,
		0.056856, 0.998000, 0.027639,
		-0.952856, 0.045978, 0.299918,
		45.750580, 34.634125, 26.084017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416374, 35.094067, 26.445087>,  <46.417580, 34.601940, 25.874075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416374, 35.094067, 26.445087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088902, 34.867439, 26.482521>,  <45.892418, 34.731461, 26.504980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088902, 34.867439, 26.482521>,  <46.416374, 35.094067, 26.445087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088902, 34.867439, 26.482521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128754, -0.022288, 0.991426,
		-0.559626, 0.823712, 0.091195,
		-0.818682, -0.566570, 0.093583,
		45.843296, 34.697468, 26.510595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078983, 35.363499, 27.036329>,  <46.416374, 35.094067, 26.445087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078983, 35.363499, 27.036329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914562, 34.999405, 27.016296>,  <45.815910, 34.780949, 27.004276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914562, 34.999405, 27.016296>,  <46.078983, 35.363499, 27.036329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914562, 34.999405, 27.016296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004332, -0.052988, 0.998586,
		-0.911602, 0.410688, 0.017838,
		-0.411052, -0.910235, -0.050083,
		45.791248, 34.726334, 27.001272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556564, 35.388561, 27.698935>,  <46.078983, 35.363499, 27.036329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556564, 35.388561, 27.698935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649876, 35.016171, 27.586603>,  <45.705864, 34.792736, 27.519203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649876, 35.016171, 27.586603>,  <45.556564, 35.388561, 27.698935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649876, 35.016171, 27.586603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035681, -0.280408, 0.959217,
		-0.971755, -0.233786, -0.032195,
		0.233279, -0.930976, -0.280829,
		45.719860, 34.736877, 27.502354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113594, 34.911373, 28.023170>,  <45.556564, 35.388561, 27.698935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113594, 34.911373, 28.023170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435001, 34.687531, 27.941975>,  <45.627846, 34.553226, 27.893257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435001, 34.687531, 27.941975>,  <45.113594, 34.911373, 28.023170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435001, 34.687531, 27.941975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056252, -0.268090, 0.961750,
		-0.592620, -0.784199, -0.183936,
		0.803515, -0.559606, -0.202989,
		45.676056, 34.519650, 27.881079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972172, 34.312553, 28.281006>,  <45.113594, 34.911373, 28.023170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972172, 34.312553, 28.281006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371330, 34.318848, 28.255842>,  <45.610825, 34.322624, 28.240744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371330, 34.318848, 28.255842>,  <44.972172, 34.312553, 28.281006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371330, 34.318848, 28.255842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064827, -0.267740, 0.961308,
		-0.001714, -0.963363, -0.268197,
		0.997895, 0.015739, -0.062911,
		45.670700, 34.323570, 28.236969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154240, 33.775894, 28.604668>,  <44.972172, 34.312553, 28.281006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154240, 33.775894, 28.604668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487129, 33.997669, 28.604059>,  <45.686863, 34.130733, 28.603695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487129, 33.997669, 28.604059>,  <45.154240, 33.775894, 28.604668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487129, 33.997669, 28.604059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223798, -0.333416, 0.915832,
		0.507264, -0.762518, -0.401559,
		0.832225, 0.554437, -0.001520,
		45.736797, 34.164001, 28.603603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575863, 33.354164, 28.915945>,  <45.154240, 33.775894, 28.604668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575863, 33.354164, 28.915945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786877, 33.692787, 28.944366>,  <45.913483, 33.895962, 28.961420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786877, 33.692787, 28.944366>,  <45.575863, 33.354164, 28.915945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786877, 33.692787, 28.944366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205919, -0.208564, 0.956085,
		0.824202, -0.489734, -0.284346,
		0.527532, 0.846559, 0.071054,
		45.945137, 33.946754, 28.965683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208370, 33.077175, 29.368420>,  <45.575863, 33.354164, 28.915945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208370, 33.077175, 29.368420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188644, 33.475777, 29.395370>,  <46.176811, 33.714939, 29.411541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188644, 33.475777, 29.395370>,  <46.208370, 33.077175, 29.368420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188644, 33.475777, 29.395370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025515, -0.066179, 0.997481,
		0.998457, 0.050907, -0.022162,
		-0.049312, 0.996508, 0.067375,
		46.173851, 33.774731, 29.415583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550739, 33.165119, 30.039881>,  <46.208370, 33.077175, 29.368420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550739, 33.165119, 30.039881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427441, 33.538166, 29.964817>,  <46.353462, 33.761993, 29.919779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427441, 33.538166, 29.964817>,  <46.550739, 33.165119, 30.039881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427441, 33.538166, 29.964817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176144, 0.137903, 0.974657,
		0.934858, 0.333486, 0.121767,
		-0.308243, 0.932614, -0.187661,
		46.334969, 33.817951, 29.908518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909790, 33.707371, 30.392715>,  <46.550739, 33.165119, 30.039881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909790, 33.707371, 30.392715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532318, 33.821217, 30.325232>,  <46.305836, 33.889523, 30.284740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532318, 33.821217, 30.325232>,  <46.909790, 33.707371, 30.392715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532318, 33.821217, 30.325232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154892, 0.070552, 0.985409,
		0.292366, 0.956042, -0.022494,
		-0.943679, 0.284616, -0.168711,
		46.249214, 33.906601, 30.274618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872368, 34.286129, 30.800880>,  <46.909790, 33.707371, 30.392715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872368, 34.286129, 30.800880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499149, 34.174915, 30.709557>,  <46.275219, 34.108189, 30.654762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499149, 34.174915, 30.709557>,  <46.872368, 34.286129, 30.800880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499149, 34.174915, 30.709557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260720, 0.085281, 0.961640,
		-0.247898, 0.956778, -0.152061,
		-0.933044, -0.278034, -0.228310,
		46.219234, 34.091503, 30.641064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575123, 34.596523, 31.313694>,  <46.872368, 34.286129, 30.800880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575123, 34.596523, 31.313694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.266968, 34.375797, 31.185942>,  <46.082077, 34.243362, 31.109289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.266968, 34.375797, 31.185942>,  <46.575123, 34.596523, 31.313694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266968, 34.375797, 31.185942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492482, 0.196876, 0.847763,
		-0.404933, 0.810392, -0.423431,
		-0.770384, -0.551819, -0.319382,
		46.035854, 34.210251, 31.090128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825554, 34.864544, 31.492861>,  <46.575123, 34.596523, 31.313694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825554, 34.864544, 31.492861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814503, 34.466671, 31.453192>,  <45.807873, 34.227947, 31.429390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814503, 34.466671, 31.453192>,  <45.825554, 34.864544, 31.492861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814503, 34.466671, 31.453192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518933, -0.070523, 0.851901,
		-0.854369, 0.074997, -0.514227,
		-0.027625, -0.994687, -0.099171,
		45.806217, 34.168266, 31.423441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242363, 34.768932, 31.792223>,  <45.825554, 34.864544, 31.492861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242363, 34.768932, 31.792223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392437, 34.398369, 31.779539>,  <45.482483, 34.176033, 31.771929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392437, 34.398369, 31.779539>,  <45.242363, 34.768932, 31.792223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392437, 34.398369, 31.779539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363347, -0.178450, 0.914404,
		-0.852768, -0.331553, -0.403560,
		0.375188, -0.926406, -0.031708,
		45.504993, 34.120445, 31.770027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645588, 34.297802, 31.890621>,  <45.242363, 34.768932, 31.792223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645588, 34.297802, 31.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000069, 34.138332, 31.985035>,  <45.212757, 34.042652, 32.041683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000069, 34.138332, 31.985035>,  <44.645588, 34.297802, 31.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000069, 34.138332, 31.985035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338815, -0.210192, 0.917073,
		-0.316002, -0.892680, -0.321349,
		0.886198, -0.398675, 0.236033,
		45.265926, 34.018730, 32.055843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477646, 33.798130, 32.405659>,  <44.645588, 34.297802, 31.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477646, 33.798130, 32.405659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873543, 33.830181, 32.452965>,  <45.111080, 33.849411, 32.481350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873543, 33.830181, 32.452965>,  <44.477646, 33.798130, 32.405659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873543, 33.830181, 32.452965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102330, -0.180029, 0.978324,
		0.099685, -0.980392, -0.169982,
		0.989743, 0.080130, 0.118270,
		45.170467, 33.854221, 32.488445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678291, 33.302883, 32.888588>,  <44.477646, 33.798130, 32.405659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678291, 33.302883, 32.888588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962948, 33.582634, 32.915222>,  <45.133743, 33.750484, 32.931202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962948, 33.582634, 32.915222>,  <44.678291, 33.302883, 32.888588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962948, 33.582634, 32.915222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137845, 0.046066, 0.989382,
		0.688888, -0.713263, 0.129189,
		0.711641, 0.699381, 0.066585,
		45.176441, 33.792450, 32.935196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901760, 33.234699, 33.463917>,  <44.678291, 33.302883, 32.888588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901760, 33.234699, 33.463917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083832, 33.588879, 33.426395>,  <45.193073, 33.801384, 33.403881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083832, 33.588879, 33.426395>,  <44.901760, 33.234699, 33.463917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083832, 33.588879, 33.426395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061321, 0.073926, 0.995377,
		0.888286, -0.458826, -0.020647,
		0.455178, 0.885446, -0.093803,
		45.220387, 33.854511, 33.398254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475601, 33.315731, 33.963085>,  <44.901760, 33.234699, 33.463917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475601, 33.315731, 33.963085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403362, 33.700470, 33.880886>,  <45.360020, 33.931313, 33.831566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403362, 33.700470, 33.880886>,  <45.475601, 33.315731, 33.963085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403362, 33.700470, 33.880886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203201, 0.240918, 0.949035,
		0.962337, 0.129640, -0.238959,
		-0.180602, 0.961848, -0.205502,
		45.349182, 33.989025, 33.819237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937351, 33.642151, 34.325562>,  <45.475601, 33.315731, 33.963085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937351, 33.642151, 34.325562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686909, 33.948162, 34.265259>,  <45.536644, 34.131767, 34.229076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686909, 33.948162, 34.265259>,  <45.937351, 33.642151, 34.325562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686909, 33.948162, 34.265259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290526, 0.408300, 0.865382,
		0.723595, 0.498019, -0.477898,
		-0.626102, 0.765028, -0.150757,
		45.499077, 34.177670, 34.220032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319382, 34.275169, 34.260384>,  <45.937351, 33.642151, 34.325562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319382, 34.275169, 34.260384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952427, 34.312225, 34.415211>,  <45.732254, 34.334457, 34.508106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952427, 34.312225, 34.415211>,  <46.319382, 34.275169, 34.260384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952427, 34.312225, 34.415211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398001, 0.211904, 0.892576,
		0.000663, 0.972890, -0.231267,
		-0.917385, 0.092636, 0.387071,
		45.677212, 34.340015, 34.531334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674282, 34.882545, 34.390320>,  <46.319382, 34.275169, 34.260384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674282, 34.882545, 34.390320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.709095, 34.569527, 34.636909>,  <46.729980, 34.381714, 34.784863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.709095, 34.569527, 34.636909>,  <46.674282, 34.882545, 34.390320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709095, 34.569527, 34.636909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648913, 0.514063, 0.560938,
		-0.755869, 0.351223, 0.552544,
		0.087028, -0.782548, 0.616478,
		46.735203, 34.334763, 34.821854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854801, 35.142654, 35.109154>,  <46.674282, 34.882545, 34.390320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854801, 35.142654, 35.109154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712627, 35.509624, 35.180702>,  <46.627323, 35.729805, 35.223633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712627, 35.509624, 35.180702>,  <46.854801, 35.142654, 35.109154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712627, 35.509624, 35.180702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441379, -0.003948, 0.897312,
		0.823924, 0.397886, -0.403530,
		-0.355435, 0.917426, 0.178871,
		46.605995, 35.784851, 35.234364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492912, 34.726555, 35.073162>,  <46.854801, 35.142654, 35.109154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492912, 34.726555, 35.073162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654633, 35.072975, 34.955524>,  <47.751663, 35.280827, 34.884941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654633, 35.072975, 34.955524>,  <47.492912, 34.726555, 35.073162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654633, 35.072975, 34.955524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825717, -0.207326, 0.524603,
		0.393361, -0.454935, -0.798938,
		0.404300, 0.866055, -0.294093,
		47.775921, 35.332790, 34.867298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.992317, 39.758030, 44.737915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690796, 39.588478, 44.938755>,  <33.509884, 39.486748, 45.059258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690796, 39.588478, 44.938755>,  <33.992317, 39.758030, 44.737915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690796, 39.588478, 44.938755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413058, -0.288601, -0.863766,
		0.511038, -0.858509, 0.042463,
		-0.753806, -0.423878, 0.502100,
		33.464653, 39.461315, 45.089386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029785, 39.081268, 44.515846>,  <33.992317, 39.758030, 44.737915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029785, 39.081268, 44.515846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659966, 39.120140, 44.663235>,  <33.438076, 39.143463, 44.751667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659966, 39.120140, 44.663235>,  <34.029785, 39.081268, 44.515846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659966, 39.120140, 44.663235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360115, -0.539023, -0.761427,
		0.124619, -0.836666, 0.533348,
		-0.924547, 0.097178, 0.368468,
		33.382603, 39.149292, 44.773777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783863, 38.476994, 44.441208>,  <34.029785, 39.081268, 44.515846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783863, 38.476994, 44.441208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.448624, 38.687115, 44.500065>,  <33.247478, 38.813187, 44.535378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.448624, 38.687115, 44.500065>,  <33.783863, 38.476994, 44.441208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448624, 38.687115, 44.500065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493331, -0.614706, -0.615436,
		-0.232840, -0.588385, 0.774331,
		-0.838099, 0.525299, 0.147140,
		33.197193, 38.844704, 44.544209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277611, 38.001522, 44.696770>,  <33.783863, 38.476994, 44.441208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277611, 38.001522, 44.696770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.100597, 38.324974, 44.541706>,  <32.994389, 38.519047, 44.448669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.100597, 38.324974, 44.541706>,  <33.277611, 38.001522, 44.696770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100597, 38.324974, 44.541706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425672, -0.569903, -0.702861,
		-0.789285, -0.146021, 0.596412,
		-0.442529, 0.808633, -0.387659,
		32.967838, 38.567566, 44.425407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665558, 37.742451, 44.498695>,  <33.277611, 38.001522, 44.696770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665558, 37.742451, 44.498695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.698452, 38.076065, 44.280476>,  <32.718189, 38.276234, 44.149544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.698452, 38.076065, 44.280476>,  <32.665558, 37.742451, 44.498695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698452, 38.076065, 44.280476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296468, -0.502153, -0.812372,
		-0.951496, 0.228543, 0.205970,
		0.082234, 0.834032, -0.545552,
		32.723122, 38.326275, 44.116810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019657, 37.806011, 44.065079>,  <32.665558, 37.742451, 44.498695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019657, 37.806011, 44.065079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.300560, 38.041588, 43.905087>,  <32.469101, 38.182934, 43.809093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.300560, 38.041588, 43.905087>,  <32.019657, 37.806011, 44.065079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300560, 38.041588, 43.905087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214187, -0.361017, -0.907629,
		-0.678936, 0.723062, -0.127385,
		0.702261, 0.588938, -0.399978,
		32.511238, 38.218269, 43.785091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718330, 38.083439, 43.373276>,  <32.019657, 37.806011, 44.065079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718330, 38.083439, 43.373276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.115803, 38.126591, 43.360905>,  <32.354286, 38.152481, 43.353481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.115803, 38.126591, 43.360905>,  <31.718330, 38.083439, 43.373276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115803, 38.126591, 43.360905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007640, -0.339948, -0.940413,
		-0.111966, 0.934236, -0.338625,
		0.993683, 0.107881, -0.030925,
		32.413906, 38.158955, 43.351627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859919, 38.318295, 42.655838>,  <31.718330, 38.083439, 43.373276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859919, 38.318295, 42.655838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.211983, 38.173923, 42.779160>,  <32.423222, 38.087303, 42.853153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.211983, 38.173923, 42.779160>,  <31.859919, 38.318295, 42.655838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211983, 38.173923, 42.779160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127274, -0.446279, -0.885797,
		0.457294, 0.818883, -0.346861,
		0.880161, -0.360923, 0.308303,
		32.476032, 38.065647, 42.871651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450047, 38.544601, 42.199635>,  <31.859919, 38.318295, 42.655838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450047, 38.544601, 42.199635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587059, 38.215385, 42.380867>,  <32.669266, 38.017857, 42.489605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587059, 38.215385, 42.380867>,  <32.450047, 38.544601, 42.199635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587059, 38.215385, 42.380867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259730, -0.380504, -0.887557,
		0.902892, 0.421693, 0.083433,
		0.342530, -0.823038, 0.453080,
		32.689819, 37.968475, 42.516792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172298, 38.485359, 41.989841>,  <32.450047, 38.544601, 42.199635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172298, 38.485359, 41.989841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071007, 38.119373, 42.115513>,  <33.010231, 37.899780, 42.190918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071007, 38.119373, 42.115513>,  <33.172298, 38.485359, 41.989841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071007, 38.119373, 42.115513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365493, -0.391183, -0.844624,
		0.895705, -0.099056, 0.433475,
		-0.253233, -0.914967, 0.314180,
		32.995037, 37.844883, 42.209766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822998, 38.079708, 42.046257>,  <33.172298, 38.485359, 41.989841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822998, 38.079708, 42.046257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501846, 37.854290, 41.968491>,  <33.309155, 37.719040, 41.921833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501846, 37.854290, 41.968491>,  <33.822998, 38.079708, 42.046257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501846, 37.854290, 41.968491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465608, -0.389144, -0.794843,
		0.372274, -0.728687, 0.574828,
		-0.802883, -0.563544, -0.194414,
		33.260983, 37.685226, 41.910168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164391, 37.579254, 41.779121>,  <33.822998, 38.079708, 42.046257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164391, 37.579254, 41.779121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783611, 37.492531, 41.692593>,  <33.555145, 37.440498, 41.640675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783611, 37.492531, 41.692593>,  <34.164391, 37.579254, 41.779121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783611, 37.492531, 41.692593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297495, -0.486724, -0.821338,
		0.072782, -0.846224, 0.527834,
		-0.951945, -0.216807, -0.216323,
		33.498028, 37.427490, 41.627697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160240, 36.923271, 41.667423>,  <34.164391, 37.579254, 41.779121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160240, 36.923271, 41.667423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844135, 37.067909, 41.469543>,  <33.654472, 37.154694, 41.350815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844135, 37.067909, 41.469543>,  <34.160240, 36.923271, 41.667423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844135, 37.067909, 41.469543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308501, -0.462763, -0.831070,
		-0.529440, -0.809382, 0.254153,
		-0.790265, 0.361596, -0.494700,
		33.607056, 37.176388, 41.321133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929790, 36.348148, 41.179558>,  <34.160240, 36.923271, 41.667423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929790, 36.348148, 41.179558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.756676, 36.678535, 41.035076>,  <33.652805, 36.876766, 40.948387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.756676, 36.678535, 41.035076>,  <33.929790, 36.348148, 41.179558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756676, 36.678535, 41.035076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212247, -0.296052, -0.931292,
		-0.876153, -0.479719, -0.047181,
		-0.432791, 0.825968, -0.361205,
		33.626839, 36.926327, 40.926716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425388, 36.138271, 40.667591>,  <33.929790, 36.348148, 41.179558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425388, 36.138271, 40.667591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.511353, 36.516678, 40.570541>,  <33.562931, 36.743721, 40.512314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.511353, 36.516678, 40.570541>,  <33.425388, 36.138271, 40.667591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511353, 36.516678, 40.570541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043075, -0.239004, -0.970063,
		-0.975684, 0.218924, -0.010614,
		0.214907, 0.946018, -0.242622,
		33.575825, 36.800484, 40.497753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923050, 36.320709, 40.179390>,  <33.425388, 36.138271, 40.667591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923050, 36.320709, 40.179390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219303, 36.583557, 40.123318>,  <33.397057, 36.741268, 40.089672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219303, 36.583557, 40.123318>,  <32.923050, 36.320709, 40.179390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219303, 36.583557, 40.123318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005957, -0.202206, -0.979325,
		-0.671882, 0.726157, -0.145847,
		0.740635, 0.657121, -0.140184,
		33.441494, 36.780693, 40.081261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760056, 36.705563, 39.631931>,  <32.923050, 36.320709, 40.179390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760056, 36.705563, 39.631931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.156517, 36.757851, 39.641075>,  <33.394394, 36.789223, 39.646561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.156517, 36.757851, 39.641075>,  <32.760056, 36.705563, 39.631931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156517, 36.757851, 39.641075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053616, -0.236907, -0.970052,
		-0.121389, 0.962698, -0.241820,
		0.991156, 0.130719, 0.022859,
		33.453865, 36.797066, 39.647934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944099, 37.166805, 39.126148>,  <32.760056, 36.705563, 39.631931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944099, 37.166805, 39.126148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265446, 36.939793, 39.198280>,  <33.458252, 36.803585, 39.241562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265446, 36.939793, 39.198280>,  <32.944099, 37.166805, 39.126148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265446, 36.939793, 39.198280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036295, -0.255602, -0.966101,
		0.594385, 0.782673, -0.184742,
		0.803361, -0.567530, 0.180333,
		33.506454, 36.769535, 39.252380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319687, 37.286060, 38.586388>,  <32.944099, 37.166805, 39.126148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319687, 37.286060, 38.586388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483204, 36.942604, 38.710083>,  <33.581314, 36.736530, 38.784298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483204, 36.942604, 38.710083>,  <33.319687, 37.286060, 38.586388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483204, 36.942604, 38.710083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243470, -0.223955, -0.943698,
		0.879552, 0.461066, 0.117501,
		0.408793, -0.858639, 0.309236,
		33.605843, 36.685013, 38.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889347, 37.100433, 38.176582>,  <33.319687, 37.286060, 38.586388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889347, 37.100433, 38.176582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842796, 36.742310, 38.348572>,  <33.814865, 36.527435, 38.451767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842796, 36.742310, 38.348572>,  <33.889347, 37.100433, 38.176582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842796, 36.742310, 38.348572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411647, -0.437462, -0.799483,
		0.903882, 0.083953, 0.419463,
		-0.116380, -0.895309, 0.429973,
		33.807880, 36.473717, 38.477562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561329, 36.763401, 38.153713>,  <33.889347, 37.100433, 38.176582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561329, 36.763401, 38.153713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274147, 36.485935, 38.176941>,  <34.101837, 36.319458, 38.190876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274147, 36.485935, 38.176941>,  <34.561329, 36.763401, 38.153713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274147, 36.485935, 38.176941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350830, -0.432640, -0.830506,
		0.601213, -0.575895, 0.553974,
		-0.717956, -0.693662, 0.058068,
		34.058762, 36.277836, 38.194363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913563, 36.174622, 37.864578>,  <34.561329, 36.763401, 38.153713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913563, 36.174622, 37.864578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.526928, 36.074596, 37.842037>,  <34.294949, 36.014580, 37.828514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.526928, 36.074596, 37.842037>,  <34.913563, 36.174622, 37.864578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526928, 36.074596, 37.842037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177387, -0.493823, -0.851277,
		0.185049, -0.832830, 0.521682,
		-0.966587, -0.250067, -0.056352,
		34.236950, 35.999577, 37.825130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605770, 36.240719, 37.418949>,  <34.913563, 36.174622, 37.864578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605770, 36.240719, 37.418949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962658, 36.366497, 37.289291>,  <36.176792, 36.441963, 37.211498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962658, 36.366497, 37.289291>,  <35.605770, 36.240719, 37.418949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962658, 36.366497, 37.289291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010191, 0.703567, 0.710556,
		0.451487, -0.637275, 0.624532,
		0.892220, 0.314442, -0.324145,
		36.230324, 36.460831, 37.192047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086857, 36.219757, 38.000309>,  <35.605770, 36.240719, 37.418949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086857, 36.219757, 38.000309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202606, 36.508854, 37.749264>,  <36.272057, 36.682312, 37.598637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202606, 36.508854, 37.749264>,  <36.086857, 36.219757, 38.000309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202606, 36.508854, 37.749264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172413, 0.684299, 0.708526,
		0.941562, -0.096817, 0.322626,
		0.289370, 0.722745, -0.627618,
		36.289417, 36.725677, 37.560978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327858, 36.719753, 38.492184>,  <36.086857, 36.219757, 38.000309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327858, 36.719753, 38.492184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276501, 36.896172, 38.136883>,  <36.245686, 37.002022, 37.923702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276501, 36.896172, 38.136883>,  <36.327858, 36.719753, 38.492184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276501, 36.896172, 38.136883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225496, 0.859221, 0.459229,
		0.965746, 0.259261, -0.010867,
		-0.128398, 0.441048, -0.888252,
		36.237980, 37.028484, 37.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764797, 37.253967, 38.423782>,  <36.327858, 36.719753, 38.492184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764797, 37.253967, 38.423782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.485085, 37.361279, 38.158745>,  <36.317257, 37.425667, 37.999722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.485085, 37.361279, 38.158745>,  <36.764797, 37.253967, 38.423782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485085, 37.361279, 38.158745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244229, 0.781463, 0.574166,
		0.671829, 0.563329, -0.480942,
		-0.699283, 0.268282, -0.662592,
		36.275299, 37.441765, 37.959969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952190, 37.837723, 38.057491>,  <36.764797, 37.253967, 38.423782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952190, 37.837723, 38.057491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555248, 37.799847, 38.089161>,  <36.317085, 37.777122, 38.108162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555248, 37.799847, 38.089161>,  <36.952190, 37.837723, 38.057491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555248, 37.799847, 38.089161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010326, 0.702910, 0.711203,
		-0.122995, 0.704948, -0.698513,
		-0.992353, -0.094688, 0.079176,
		36.257542, 37.771439, 38.112915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756424, 38.511898, 38.284985>,  <36.952190, 37.837723, 38.057491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756424, 38.511898, 38.284985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425102, 38.288132, 38.297340>,  <36.226307, 38.153870, 38.304752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425102, 38.288132, 38.297340>,  <36.756424, 38.511898, 38.284985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425102, 38.288132, 38.297340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317565, 0.514191, 0.796719,
		-0.461582, 0.650121, -0.603561,
		-0.828309, -0.559420, 0.030886,
		36.176609, 38.120304, 38.306606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168427, 39.003372, 38.391457>,  <36.756424, 38.511898, 38.284985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168427, 39.003372, 38.391457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056641, 38.642441, 38.522736>,  <35.989571, 38.425884, 38.601501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056641, 38.642441, 38.522736>,  <36.168427, 39.003372, 38.391457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056641, 38.642441, 38.522736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579130, 0.431046, 0.691959,
		-0.765838, 0.003311, -0.643025,
		-0.279464, -0.902324, 0.328194,
		35.972801, 38.371742, 38.621193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500092, 39.097836, 38.519836>,  <36.168427, 39.003372, 38.391457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500092, 39.097836, 38.519836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623470, 38.778736, 38.727089>,  <35.697498, 38.587276, 38.851440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623470, 38.778736, 38.727089>,  <35.500092, 39.097836, 38.519836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623470, 38.778736, 38.727089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334377, 0.418998, 0.844176,
		-0.890534, -0.433635, -0.137509,
		0.308448, -0.797748, 0.518130,
		35.716003, 38.539413, 38.882526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026878, 39.035191, 39.098274>,  <35.500092, 39.097836, 38.519836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026878, 39.035191, 39.098274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339771, 38.821712, 39.226826>,  <35.527508, 38.693626, 39.303959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339771, 38.821712, 39.226826>,  <35.026878, 39.035191, 39.098274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339771, 38.821712, 39.226826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167074, 0.317260, 0.933505,
		-0.600171, -0.783909, 0.159003,
		0.782228, -0.533698, 0.321381,
		35.574440, 38.661602, 39.323238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865459, 38.671436, 39.808380>,  <35.026878, 39.035191, 39.098274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865459, 38.671436, 39.808380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265419, 38.665890, 39.809578>,  <35.505394, 38.662560, 39.810295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265419, 38.665890, 39.809578>,  <34.865459, 38.671436, 39.808380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265419, 38.665890, 39.809578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001047, 0.138278, 0.990393,
		-0.014152, -0.990297, 0.138249,
		0.999899, -0.013872, 0.002994,
		35.565388, 38.661728, 39.810474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059052, 38.211590, 40.340302>,  <34.865459, 38.671436, 39.808380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059052, 38.211590, 40.340302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396801, 38.417381, 40.280514>,  <35.599453, 38.540855, 40.244640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396801, 38.417381, 40.280514>,  <35.059052, 38.211590, 40.340302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396801, 38.417381, 40.280514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047520, 0.205974, 0.977403,
		0.533638, -0.832399, 0.149472,
		0.844377, 0.514476, -0.149471,
		35.650116, 38.571724, 40.235672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468246, 38.027843, 40.834579>,  <35.059052, 38.211590, 40.340302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468246, 38.027843, 40.834579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623268, 38.374878, 40.709934>,  <35.716282, 38.583099, 40.635147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623268, 38.374878, 40.709934>,  <35.468246, 38.027843, 40.834579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623268, 38.374878, 40.709934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242723, 0.230070, 0.942419,
		0.889319, -0.440874, -0.121417,
		0.387553, 0.867582, -0.311616,
		35.739532, 38.635151, 40.616451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045464, 38.066849, 41.236275>,  <35.468246, 38.027843, 40.834579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045464, 38.066849, 41.236275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943668, 38.434254, 41.115238>,  <35.882591, 38.654697, 41.042614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943668, 38.434254, 41.115238>,  <36.045464, 38.066849, 41.236275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943668, 38.434254, 41.115238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064176, 0.296166, 0.952978,
		0.964943, 0.261945, -0.016425,
		-0.254492, 0.918515, -0.302594,
		35.867321, 38.709808, 41.024460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524387, 38.452793, 41.576202>,  <36.045464, 38.066849, 41.236275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524387, 38.452793, 41.576202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221233, 38.698204, 41.487473>,  <36.039341, 38.845451, 41.434235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221233, 38.698204, 41.487473>,  <36.524387, 38.452793, 41.576202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221233, 38.698204, 41.487473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080301, 0.425151, 0.901553,
		0.647433, 0.665457, -0.371481,
		-0.757880, 0.613525, -0.221820,
		35.993870, 38.882263, 41.420925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755611, 39.188824, 41.621159>,  <36.524387, 38.452793, 41.576202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755611, 39.188824, 41.621159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357395, 39.185226, 41.658714>,  <36.118465, 39.183067, 41.681248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357395, 39.185226, 41.658714>,  <36.755611, 39.188824, 41.621159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357395, 39.185226, 41.658714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087487, 0.283879, 0.954860,
		-0.035242, 0.958818, -0.281827,
		-0.995542, -0.008995, 0.093889,
		36.058731, 39.182529, 41.686882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662292, 39.710995, 41.988979>,  <36.755611, 39.188824, 41.621159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662292, 39.710995, 41.988979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318527, 39.509075, 42.021431>,  <36.112267, 39.387924, 42.040901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318527, 39.509075, 42.021431>,  <36.662292, 39.710995, 41.988979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318527, 39.509075, 42.021431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027360, 0.203850, 0.978620,
		-0.510547, 0.838820, -0.189003,
		-0.859414, -0.504803, 0.081125,
		36.060703, 39.357635, 42.045769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207527, 40.212349, 42.288044>,  <36.662292, 39.710995, 41.988979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207527, 40.212349, 42.288044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065983, 39.846992, 42.368546>,  <35.981056, 39.627777, 42.416847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065983, 39.846992, 42.368546>,  <36.207527, 40.212349, 42.288044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065983, 39.846992, 42.368546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019541, 0.222353, 0.974771,
		-0.935096, 0.340996, -0.096530,
		-0.353857, -0.913390, 0.201257,
		35.959827, 39.572975, 42.428925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989162, 40.351154, 42.928036>,  <36.207527, 40.212349, 42.288044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989162, 40.351154, 42.928036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929733, 39.957253, 42.891869>,  <35.894077, 39.720909, 42.870167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929733, 39.957253, 42.891869>,  <35.989162, 40.351154, 42.928036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929733, 39.957253, 42.891869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053791, -0.083253, 0.995075,
		-0.987437, 0.152706, -0.040602,
		-0.148574, -0.984759, -0.090421,
		35.885162, 39.661823, 42.864742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.359871, 40.135975, 43.168190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556858, 39.792171, 43.222919>,  <35.675049, 39.585888, 43.255756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556858, 39.792171, 43.222919>,  <35.359871, 40.135975, 43.168190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556858, 39.792171, 43.222919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035056, 0.176673, 0.983645,
		-0.869624, -0.479617, 0.117137,
		0.492468, -0.859508, 0.136825,
		35.704597, 39.534321, 43.263966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038136, 39.656288, 43.648754>,  <35.359871, 40.135975, 43.168190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038136, 39.656288, 43.648754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.428391, 39.568645, 43.653358>,  <35.662544, 39.516060, 43.656120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.428391, 39.568645, 43.653358>,  <35.038136, 39.656288, 43.648754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428391, 39.568645, 43.653358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039375, 0.226478, 0.973220,
		-0.215843, -0.949053, 0.229586,
		0.975634, -0.219102, 0.011515,
		35.721081, 39.502914, 43.656815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014656, 39.311394, 44.249599>,  <35.038136, 39.656288, 43.648754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014656, 39.311394, 44.249599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395931, 39.397846, 44.165005>,  <35.624695, 39.449718, 44.114250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395931, 39.397846, 44.165005>,  <35.014656, 39.311394, 44.249599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395931, 39.397846, 44.165005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118273, 0.377191, 0.918553,
		0.278292, -0.900565, 0.333971,
		0.953187, 0.216126, -0.211482,
		35.681889, 39.462685, 44.101559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464325, 38.941902, 44.816845>,  <35.014656, 39.311394, 44.249599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464325, 38.941902, 44.816845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676758, 39.233898, 44.644768>,  <35.804218, 39.409096, 44.541523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676758, 39.233898, 44.644768>,  <35.464325, 38.941902, 44.816845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676758, 39.233898, 44.644768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322606, 0.295269, 0.899301,
		0.783500, -0.616390, -0.078685,
		0.531087, 0.729986, -0.430194,
		35.836082, 39.452892, 44.515709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054516, 38.920525, 45.158062>,  <35.464325, 38.941902, 44.816845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054516, 38.920525, 45.158062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043179, 39.292469, 45.011337>,  <36.036377, 39.515636, 44.923302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043179, 39.292469, 45.011337>,  <36.054516, 38.920525, 45.158062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043179, 39.292469, 45.011337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321062, 0.355986, 0.877607,
		0.946634, -0.092892, -0.308635,
		-0.028347, 0.929863, -0.366812,
		36.034676, 39.571426, 44.901295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657581, 39.275784, 45.414055>,  <36.054516, 38.920525, 45.158062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657581, 39.275784, 45.414055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404976, 39.568344, 45.311108>,  <36.253414, 39.743881, 45.249340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404976, 39.568344, 45.311108>,  <36.657581, 39.275784, 45.414055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404976, 39.568344, 45.311108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278669, 0.523854, 0.804935,
		0.723559, 0.436604, -0.534640,
		-0.631511, 0.731405, -0.257371,
		36.215523, 39.787766, 45.233894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935017, 39.858433, 45.650585>,  <36.657581, 39.275784, 45.414055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935017, 39.858433, 45.650585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563904, 39.994804, 45.589947>,  <36.341236, 40.076630, 45.553562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563904, 39.994804, 45.589947>,  <36.935017, 39.858433, 45.650585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563904, 39.994804, 45.589947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100596, 0.619813, 0.778275,
		0.359301, 0.706821, -0.609350,
		-0.927784, 0.340933, -0.151596,
		36.285568, 40.097084, 45.544468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944424, 40.627110, 45.550957>,  <36.935017, 39.858433, 45.650585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944424, 40.627110, 45.550957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578053, 40.515720, 45.666565>,  <36.358231, 40.448887, 45.735928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.578053, 40.515720, 45.666565>,  <36.944424, 40.627110, 45.550957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578053, 40.515720, 45.666565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021323, 0.752875, 0.657818,
		-0.400776, 0.596351, -0.695517,
		-0.915928, -0.278469, 0.289019,
		36.303276, 40.432178, 45.753269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504295, 41.209915, 45.673920>,  <36.944424, 40.627110, 45.550957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504295, 41.209915, 45.673920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331127, 40.922054, 45.891056>,  <36.227226, 40.749336, 46.021339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331127, 40.922054, 45.891056>,  <36.504295, 41.209915, 45.673920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331127, 40.922054, 45.891056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176809, 0.658293, 0.731703,
		-0.883922, 0.220789, -0.412230,
		-0.432920, -0.719654, 0.542843,
		36.201252, 40.706158, 46.053909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813931, 41.450935, 45.981274>,  <36.504295, 41.209915, 45.673920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813931, 41.450935, 45.981274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915367, 41.148628, 46.222771>,  <35.976231, 40.967243, 46.367668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915367, 41.148628, 46.222771>,  <35.813931, 41.450935, 45.981274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915367, 41.148628, 46.222771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132957, 0.590989, 0.795647,
		-0.958129, -0.282044, 0.049388,
		0.253596, -0.755766, 0.603744,
		35.991447, 40.921898, 46.403893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408260, 41.618706, 46.624207>,  <35.813931, 41.450935, 45.981274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408260, 41.618706, 46.624207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667114, 41.342228, 46.752869>,  <35.822426, 41.176342, 46.830067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667114, 41.342228, 46.752869>,  <35.408260, 41.618706, 46.624207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667114, 41.342228, 46.752869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089470, 0.350145, 0.932413,
		-0.757107, -0.632176, 0.164750,
		0.647136, -0.691196, 0.321658,
		35.861256, 41.134869, 46.849365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026726, 41.162685, 47.154827>,  <35.408260, 41.618706, 46.624207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026726, 41.162685, 47.154827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420601, 41.123955, 47.212807>,  <35.656925, 41.100716, 47.247593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420601, 41.123955, 47.212807>,  <35.026726, 41.162685, 47.154827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420601, 41.123955, 47.212807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122322, 0.208562, 0.970329,
		-0.124188, -0.973204, 0.193525,
		0.984690, -0.096831, 0.144945,
		35.716007, 41.094906, 47.256290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220047, 40.614025, 47.774334>,  <35.026726, 41.162685, 47.154827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220047, 40.614025, 47.774334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535572, 40.855476, 47.728020>,  <35.724888, 41.000347, 47.700230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535572, 40.855476, 47.728020>,  <35.220047, 40.614025, 47.774334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535572, 40.855476, 47.728020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070948, 0.097704, 0.992683,
		0.610529, -0.791253, 0.034244,
		0.788810, 0.603632, -0.115789,
		35.772217, 41.036568, 47.693283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691662, 40.426254, 48.270935>,  <35.220047, 40.614025, 47.774334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691662, 40.426254, 48.270935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830502, 40.790741, 48.182198>,  <35.913803, 41.009434, 48.128956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830502, 40.790741, 48.182198>,  <35.691662, 40.426254, 48.270935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830502, 40.790741, 48.182198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246599, 0.139548, 0.959018,
		0.904828, -0.387577, -0.176268,
		0.347096, 0.911213, -0.221843,
		35.934631, 41.064106, 48.115646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276424, 40.401787, 48.453278>,  <35.691662, 40.426254, 48.270935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276424, 40.401787, 48.453278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220390, 40.797832, 48.455856>,  <36.186771, 41.035461, 48.457405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220390, 40.797832, 48.455856>,  <36.276424, 40.401787, 48.453278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220390, 40.797832, 48.455856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333562, 0.041060, 0.941834,
		0.932262, 0.134089, -0.336017,
		-0.140086, 0.990118, 0.006448,
		36.178364, 41.094868, 48.457790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048138, 40.781620, 48.595970>,  <36.276424, 40.401787, 48.453278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048138, 40.781620, 48.595970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734608, 41.015446, 48.679787>,  <36.546490, 41.155739, 48.730076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734608, 41.015446, 48.679787>,  <37.048138, 40.781620, 48.595970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734608, 41.015446, 48.679787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324740, 0.098236, 0.940688,
		0.529305, 0.805381, -0.266830,
		-0.783824, 0.584561, 0.209543,
		36.499462, 41.190815, 48.742649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407623, 41.211399, 49.123840>,  <37.048138, 40.781620, 48.595970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407623, 41.211399, 49.123840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011894, 41.263386, 49.150196>,  <36.774456, 41.294579, 49.166008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011894, 41.263386, 49.150196>,  <37.407623, 41.211399, 49.123840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011894, 41.263386, 49.150196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094962, 0.232102, 0.968045,
		0.110524, 0.963969, -0.241967,
		-0.989326, 0.129969, 0.065887,
		36.715096, 41.302376, 49.169964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245644, 41.868015, 49.421795>,  <37.407623, 41.211399, 49.123840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245644, 41.868015, 49.421795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922100, 41.640785, 49.482506>,  <36.727974, 41.504448, 49.518932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922100, 41.640785, 49.482506>,  <37.245644, 41.868015, 49.421795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922100, 41.640785, 49.482506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052763, 0.186967, 0.980948,
		-0.585634, 0.801455, -0.121256,
		-0.808856, -0.568079, 0.151782,
		36.679443, 41.470360, 49.528042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775608, 42.297962, 49.889748>,  <37.245644, 41.868015, 49.421795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775608, 42.297962, 49.889748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673351, 41.913067, 49.927170>,  <36.611996, 41.682129, 49.949623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673351, 41.913067, 49.927170>,  <36.775608, 42.297962, 49.889748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673351, 41.913067, 49.927170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074852, 0.116182, 0.990404,
		-0.963870, 0.246185, -0.101726,
		-0.255641, -0.962234, 0.093557,
		36.596661, 41.624397, 49.955238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104477, 42.308701, 50.097404>,  <36.775608, 42.297962, 49.889748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104477, 42.308701, 50.097404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281799, 41.966820, 50.205448>,  <36.388191, 41.761692, 50.270275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281799, 41.966820, 50.205448>,  <36.104477, 42.308701, 50.097404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281799, 41.966820, 50.205448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140426, 0.231399, 0.962671,
		-0.885305, -0.464684, -0.017444,
		0.443301, -0.854707, 0.270113,
		36.414791, 41.710407, 50.286484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750614, 42.078304, 50.724548>,  <36.104477, 42.308701, 50.097404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750614, 42.078304, 50.724548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100105, 41.883759, 50.727261>,  <36.309799, 41.767033, 50.728886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100105, 41.883759, 50.727261>,  <35.750614, 42.078304, 50.724548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100105, 41.883759, 50.727261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105050, 0.202288, 0.973675,
		-0.474933, -0.850017, 0.227838,
		0.873729, -0.486365, 0.006779,
		36.362225, 41.737850, 50.729294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849777, 41.786686, 51.458210>,  <35.750614, 42.078304, 50.724548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849777, 41.786686, 51.458210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222656, 41.786888, 51.313427>,  <36.446384, 41.787010, 51.226559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222656, 41.786888, 51.313427>,  <35.849777, 41.786686, 51.458210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222656, 41.786888, 51.313427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360485, -0.091352, 0.928281,
		-0.032595, -0.995819, -0.085340,
		0.932195, 0.000507, -0.361955,
		36.502316, 41.787041, 51.204842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030693, 42.378002, 52.096607>,  <35.849777, 41.786686, 51.458210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030693, 42.378002, 52.096607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930756, 42.083755, 52.348461>,  <35.870792, 41.907207, 52.499573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930756, 42.083755, 52.348461>,  <36.030693, 42.378002, 52.096607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930756, 42.083755, 52.348461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028526, -0.644384, -0.764170,
		0.967866, -0.208882, 0.140010,
		-0.249842, -0.735620, 0.629636,
		35.855804, 41.863068, 52.537354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434956, 41.744144, 51.905289>,  <36.030693, 42.378002, 52.096607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434956, 41.744144, 51.905289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.113655, 41.633144, 52.116112>,  <35.920876, 41.566544, 52.242603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.113655, 41.633144, 52.116112>,  <36.434956, 41.744144, 51.905289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113655, 41.633144, 52.116112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125151, -0.786473, -0.604812,
		0.582348, -0.551776, 0.597004,
		-0.803248, -0.277496, 0.527056,
		35.872681, 41.549896, 52.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536625, 41.022720, 51.947609>,  <36.434956, 41.744144, 51.905289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536625, 41.022720, 51.947609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160427, 41.068306, 52.075657>,  <35.934708, 41.095657, 52.152485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160427, 41.068306, 52.075657>,  <36.536625, 41.022720, 51.947609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160427, 41.068306, 52.075657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252790, -0.864203, -0.435030,
		0.227072, -0.490068, 0.841589,
		-0.940498, 0.113962, 0.320120,
		35.878277, 41.102493, 52.171692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267002, 40.419361, 52.031918>,  <36.536625, 41.022720, 51.947609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267002, 40.419361, 52.031918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929329, 40.630447, 51.994247>,  <35.726723, 40.757099, 51.971645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929329, 40.630447, 51.994247>,  <36.267002, 40.419361, 52.031918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929329, 40.630447, 51.994247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408069, -0.746562, -0.525477,
		-0.347606, -0.405172, 0.845580,
		-0.844186, 0.527714, -0.094171,
		35.676071, 40.788761, 51.965996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705788, 39.913914, 52.221806>,  <36.267002, 40.419361, 52.031918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705788, 39.913914, 52.221806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524025, 40.211613, 52.026009>,  <35.414967, 40.390232, 51.908531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524025, 40.211613, 52.026009>,  <35.705788, 39.913914, 52.221806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524025, 40.211613, 52.026009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611831, -0.660148, -0.435739,
		-0.647431, 0.101475, 0.755338,
		-0.454418, 0.744250, -0.489486,
		35.387703, 40.434887, 51.879158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095058, 39.697598, 52.254940>,  <35.705788, 39.913914, 52.221806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095058, 39.697598, 52.254940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076939, 39.957310, 51.951260>,  <35.066067, 40.113136, 51.769051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076939, 39.957310, 51.951260>,  <35.095058, 39.697598, 52.254940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076939, 39.957310, 51.951260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577208, -0.637293, -0.510576,
		-0.815339, 0.415088, 0.403638,
		-0.045302, 0.649276, -0.759203,
		35.063347, 40.152092, 51.723499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439964, 39.502281, 51.987690>,  <35.095058, 39.697598, 52.254940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439964, 39.502281, 51.987690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652771, 39.713829, 51.723186>,  <34.780457, 39.840755, 51.564484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652771, 39.713829, 51.723186>,  <34.439964, 39.502281, 51.987690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652771, 39.713829, 51.723186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446168, -0.488639, -0.749777,
		-0.719647, 0.693925, -0.024001,
		0.532017, 0.528867, -0.661255,
		34.812378, 39.872490, 51.524811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914810, 39.838699, 51.489742>,  <34.439964, 39.502281, 51.987690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914810, 39.838699, 51.489742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273468, 39.769783, 51.326599>,  <34.488663, 39.728436, 51.228714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.273468, 39.769783, 51.326599>,  <33.914810, 39.838699, 51.489742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273468, 39.769783, 51.326599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402029, -0.702733, -0.586975,
		-0.185490, 0.690278, -0.699364,
		0.896641, -0.172287, -0.407862,
		34.542461, 39.718098, 51.204239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671864, 39.694988, 50.848938>,  <33.914810, 39.838699, 51.489742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671864, 39.694988, 50.848938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056328, 39.585060, 50.859112>,  <34.287006, 39.519104, 50.865215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056328, 39.585060, 50.859112>,  <33.671864, 39.694988, 50.848938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056328, 39.585060, 50.859112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216718, -0.808568, -0.547038,
		0.170900, 0.520279, -0.836721,
		0.961159, -0.274822, 0.025431,
		34.344677, 39.502613, 50.866741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941608, 39.589115, 50.071342>,  <33.671864, 39.694988, 50.848938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941608, 39.589115, 50.071342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108528, 39.383411, 50.371048>,  <34.208679, 39.259991, 50.550873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108528, 39.383411, 50.371048>,  <33.941608, 39.589115, 50.071342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108528, 39.383411, 50.371048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161514, -0.853328, -0.495726,
		0.894300, 0.085851, -0.439154,
		0.417301, -0.514258, 0.749265,
		34.233719, 39.229134, 50.595829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116936, 40.255226, 49.606407>,  <33.941608, 39.589115, 50.071342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116936, 40.255226, 49.606407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363056, 39.943176, 49.651676>,  <34.510727, 39.755947, 49.678837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363056, 39.943176, 49.651676>,  <34.116936, 40.255226, 49.606407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363056, 39.943176, 49.651676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093563, -0.070274, -0.993130,
		0.782720, 0.621663, 0.029751,
		0.615302, -0.780126, 0.113170,
		34.547646, 39.709137, 49.685627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697136, 40.443737, 49.322182>,  <34.116936, 40.255226, 49.606407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697136, 40.443737, 49.322182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593273, 40.057598, 49.332691>,  <34.530956, 39.825916, 49.338997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593273, 40.057598, 49.332691>,  <34.697136, 40.443737, 49.322182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593273, 40.057598, 49.332691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122188, 0.005856, -0.992490,
		0.957941, -0.260914, -0.119474,
		-0.259654, -0.965344, 0.026271,
		34.515377, 39.767994, 49.340572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158344, 40.103863, 48.918629>,  <34.697136, 40.443737, 49.322182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158344, 40.103863, 48.918629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829136, 39.876850, 48.927948>,  <34.631611, 39.740643, 48.933540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.829136, 39.876850, 48.927948>,  <35.158344, 40.103863, 48.918629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829136, 39.876850, 48.927948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009263, -0.054428, -0.998475,
		0.567932, -0.821552, 0.050052,
		-0.823023, -0.567529, 0.023301,
		34.582230, 39.706593, 48.934937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242172, 39.505116, 48.465824>,  <35.158344, 40.103863, 48.918629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242172, 39.505116, 48.465824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847286, 39.538597, 48.520077>,  <34.610355, 39.558685, 48.552628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847286, 39.538597, 48.520077>,  <35.242172, 39.505116, 48.465824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847286, 39.538597, 48.520077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149839, -0.197314, -0.968822,
		-0.054334, -0.976760, 0.207334,
		-0.987216, 0.083707, 0.135636,
		34.551121, 39.563709, 48.560768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960918, 39.028652, 48.052532>,  <35.242172, 39.505116, 48.465824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960918, 39.028652, 48.052532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639130, 39.250332, 48.138031>,  <34.446056, 39.383339, 48.189331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639130, 39.250332, 48.138031>,  <34.960918, 39.028652, 48.052532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639130, 39.250332, 48.138031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319269, -0.099992, -0.942374,
		-0.500889, -0.826357, 0.257379,
		-0.804473, 0.554198, 0.213745,
		34.397789, 39.416592, 48.202156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297405, 38.639393, 47.776314>,  <34.960918, 39.028652, 48.052532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297405, 38.639393, 47.776314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183456, 39.018677, 47.832531>,  <34.115089, 39.246246, 47.866261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183456, 39.018677, 47.832531>,  <34.297405, 38.639393, 47.776314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183456, 39.018677, 47.832531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473465, -0.011699, -0.880735,
		-0.833474, -0.317439, 0.452276,
		-0.284870, 0.948206, 0.140546,
		34.097996, 39.303139, 47.874695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638409, 38.618595, 47.655212>,  <34.297405, 38.639393, 47.776314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638409, 38.618595, 47.655212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769024, 38.993259, 47.604542>,  <33.847393, 39.218056, 47.574139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769024, 38.993259, 47.604542>,  <33.638409, 38.618595, 47.655212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769024, 38.993259, 47.604542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494491, 0.055070, -0.867437,
		-0.805514, 0.345892, 0.481150,
		0.326536, 0.936657, -0.126681,
		33.866985, 39.274258, 47.566536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075642, 38.996033, 47.366337>,  <33.638409, 38.618595, 47.655212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075642, 38.996033, 47.366337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381287, 39.231865, 47.261631>,  <33.564674, 39.373363, 47.198807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381287, 39.231865, 47.261631>,  <33.075642, 38.996033, 47.366337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381287, 39.231865, 47.261631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460847, 0.214977, -0.861049,
		-0.451387, 0.778573, 0.435975,
		0.764114, 0.589584, -0.261765,
		33.610519, 39.408741, 47.183102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817978, 39.508114, 47.002380>,  <33.075642, 38.996033, 47.366337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817978, 39.508114, 47.002380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193634, 39.541981, 46.869202>,  <33.419025, 39.562302, 46.789295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193634, 39.541981, 46.869202>,  <32.817978, 39.508114, 47.002380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193634, 39.541981, 46.869202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342867, 0.170109, -0.923853,
		-0.021581, 0.981781, 0.188784,
		0.939136, 0.084666, -0.332950,
		33.475376, 39.567379, 46.769318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969952, 40.244812, 46.613506>,  <32.817978, 39.508114, 47.002380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969952, 40.244812, 46.613506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256580, 39.993984, 46.491322>,  <33.428558, 39.843487, 46.418011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256580, 39.993984, 46.491322>,  <32.969952, 40.244812, 46.613506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256580, 39.993984, 46.491322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276822, 0.146306, -0.949718,
		0.640231, 0.765100, -0.068748,
		0.716570, -0.627070, -0.305466,
		33.471550, 39.805862, 46.399681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115047, 40.433117, 45.887249>,  <32.969952, 40.244812, 46.613506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115047, 40.433117, 45.887249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291668, 40.076897, 45.930992>,  <33.397640, 39.863167, 45.957237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291668, 40.076897, 45.930992>,  <33.115047, 40.433117, 45.887249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291668, 40.076897, 45.930992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149552, -0.193223, -0.969690,
		0.884685, 0.411814, -0.218501,
		0.441551, -0.890547, 0.109354,
		33.424133, 39.809734, 45.963799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554440, 40.399414, 45.283699>,  <33.115047, 40.433117, 45.887249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554440, 40.399414, 45.283699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461769, 40.034115, 45.417747>,  <33.406166, 39.814934, 45.498177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461769, 40.034115, 45.417747>,  <33.554440, 40.399414, 45.283699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461769, 40.034115, 45.417747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352436, -0.242290, -0.903928,
		0.906706, -0.327525, -0.265729,
		-0.231676, -0.913249, 0.335117,
		33.392265, 39.760139, 45.518284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.688892, 35.520054, 26.436453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340141, 35.351173, 26.337196>,  <44.130890, 35.249844, 26.277641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340141, 35.351173, 26.337196>,  <44.688892, 35.520054, 26.436453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340141, 35.351173, 26.337196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414421, 0.366103, 0.833201,
		-0.260935, 0.829284, -0.494166,
		-0.871876, -0.422204, -0.248143,
		44.078579, 35.224510, 26.262753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132584, 36.054127, 26.583912>,  <44.688892, 35.520054, 26.436453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132584, 36.054127, 26.583912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935314, 35.706928, 26.560707>,  <43.816952, 35.498608, 26.546783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935314, 35.706928, 26.560707>,  <44.132584, 36.054127, 26.583912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935314, 35.706928, 26.560707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527696, 0.245474, 0.813191,
		-0.691606, 0.431656, -0.579098,
		-0.493172, -0.867995, -0.058012,
		43.787361, 35.446529, 26.543304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354301, 36.225216, 26.678314>,  <44.132584, 36.054127, 26.583912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354301, 36.225216, 26.678314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390144, 35.831757, 26.740793>,  <43.411648, 35.595680, 26.778280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390144, 35.831757, 26.740793>,  <43.354301, 36.225216, 26.678314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390144, 35.831757, 26.740793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587745, 0.074388, 0.805619,
		-0.804069, -0.163992, -0.571471,
		0.089604, -0.983653, 0.156199,
		43.417027, 35.536659, 26.787653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682945, 35.978497, 26.804338>,  <43.354301, 36.225216, 26.678314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682945, 35.978497, 26.804338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941189, 35.729599, 26.981424>,  <43.096134, 35.580261, 27.087677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941189, 35.729599, 26.981424>,  <42.682945, 35.978497, 26.804338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941189, 35.729599, 26.981424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528039, 0.055064, 0.847433,
		-0.551688, -0.780885, -0.293018,
		0.645613, -0.622243, 0.442716,
		43.134872, 35.542927, 27.114239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202805, 35.656132, 27.300449>,  <42.682945, 35.978497, 26.804338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202805, 35.656132, 27.300449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564449, 35.543850, 27.429312>,  <42.781437, 35.476482, 27.506630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564449, 35.543850, 27.429312>,  <42.202805, 35.656132, 27.300449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564449, 35.543850, 27.429312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362246, -0.103658, 0.926301,
		-0.226623, -0.954180, -0.195402,
		0.904113, -0.280705, 0.322156,
		42.835682, 35.459641, 27.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126446, 34.993492, 27.763132>,  <42.202805, 35.656132, 27.300449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126446, 34.993492, 27.763132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453968, 35.199890, 27.863773>,  <42.650482, 35.323727, 27.924158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453968, 35.199890, 27.863773>,  <42.126446, 34.993492, 27.763132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453968, 35.199890, 27.863773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252741, -0.069499, 0.965035,
		0.515435, -0.853770, 0.073505,
		0.818810, 0.515991, 0.251605,
		42.699612, 35.354687, 27.939255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223862, 34.717636, 28.386765>,  <42.126446, 34.993492, 27.763132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223862, 34.717636, 28.386765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497910, 35.008362, 28.406128>,  <42.662338, 35.182796, 28.417746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497910, 35.008362, 28.406128>,  <42.223862, 34.717636, 28.386765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497910, 35.008362, 28.406128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001020, -0.067414, 0.997725,
		0.728427, -0.683514, -0.046928,
		0.685123, 0.726817, 0.048409,
		42.703445, 35.226406, 28.420650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727604, 34.613937, 29.063770>,  <42.223862, 34.717636, 28.386765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727604, 34.613937, 29.063770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734516, 35.004692, 28.978542>,  <42.738663, 35.239143, 28.927404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734516, 35.004692, 28.978542>,  <42.727604, 34.613937, 29.063770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734516, 35.004692, 28.978542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001449, 0.213079, 0.977034,
		0.999850, -0.017196, 0.002268,
		0.017285, 0.976884, -0.213072,
		42.739700, 35.297756, 28.914621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389778, 34.890541, 29.357403>,  <42.727604, 34.613937, 29.063770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389778, 34.890541, 29.357403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115395, 35.180222, 29.329124>,  <42.950764, 35.354031, 29.312159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115395, 35.180222, 29.329124>,  <43.389778, 34.890541, 29.357403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115395, 35.180222, 29.329124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085425, 0.176633, 0.980563,
		0.722611, 0.666584, -0.183028,
		-0.685957, 0.724200, -0.070694,
		42.909607, 35.397480, 29.307917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523605, 35.493462, 29.867916>,  <43.389778, 34.890541, 29.357403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523605, 35.493462, 29.867916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155621, 35.615585, 29.769562>,  <42.934830, 35.688862, 29.710548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.155621, 35.615585, 29.769562>,  <43.523605, 35.493462, 29.867916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155621, 35.615585, 29.769562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110471, 0.399911, 0.909872,
		0.376130, 0.864208, -0.334173,
		-0.919958, 0.305314, -0.245888,
		42.879635, 35.707180, 29.695795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454601, 36.287178, 30.050552>,  <43.523605, 35.493462, 29.867916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454601, 36.287178, 30.050552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105045, 36.093735, 30.070295>,  <42.895309, 35.977669, 30.082142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105045, 36.093735, 30.070295>,  <43.454601, 36.287178, 30.050552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105045, 36.093735, 30.070295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005684, 0.111693, 0.993726,
		-0.486084, 0.868131, -0.100356,
		-0.873894, -0.483605, 0.049358,
		42.842876, 35.948654, 30.085102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076130, 36.608212, 30.568247>,  <43.454601, 36.287178, 30.050552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076130, 36.608212, 30.568247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887939, 36.257935, 30.524773>,  <42.775024, 36.047768, 30.498688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887939, 36.257935, 30.524773>,  <43.076130, 36.608212, 30.568247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887939, 36.257935, 30.524773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161209, -0.035797, 0.986271,
		-0.867561, 0.481539, -0.124328,
		-0.470478, -0.875693, -0.108685,
		42.746796, 35.995228, 30.492167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399658, 36.679855, 30.834888>,  <43.076130, 36.608212, 30.568247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399658, 36.679855, 30.834888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.447906, 36.285233, 30.878990>,  <42.476856, 36.048458, 30.905451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.447906, 36.285233, 30.878990>,  <42.399658, 36.679855, 30.834888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447906, 36.285233, 30.878990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089364, 0.099821, 0.990984,
		-0.988668, -0.129387, -0.076122,
		0.120622, -0.986557, 0.110252,
		42.484093, 35.989265, 30.912066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959644, 36.514706, 31.481627>,  <42.399658, 36.679855, 30.834888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959644, 36.514706, 31.481627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.210747, 36.214970, 31.397333>,  <42.361408, 36.035126, 31.346758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.210747, 36.214970, 31.397333>,  <41.959644, 36.514706, 31.481627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210747, 36.214970, 31.397333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203408, -0.103400, 0.973619,
		-0.751364, -0.654060, 0.087512,
		0.627756, -0.749343, -0.210732,
		42.399075, 35.990166, 31.334114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727184, 35.934696, 31.882133>,  <41.959644, 36.514706, 31.481627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727184, 35.934696, 31.882133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113346, 35.878651, 31.794168>,  <42.345043, 35.845024, 31.741388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113346, 35.878651, 31.794168>,  <41.727184, 35.934696, 31.882133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113346, 35.878651, 31.794168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175270, -0.275759, 0.945112,
		-0.193065, -0.950960, -0.241661,
		0.965405, -0.140112, -0.219914,
		42.402969, 35.836617, 31.728195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908817, 35.360424, 32.344002>,  <41.727184, 35.934696, 31.882133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908817, 35.360424, 32.344002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265442, 35.504360, 32.233997>,  <42.479416, 35.590721, 32.167995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265442, 35.504360, 32.233997>,  <41.908817, 35.360424, 32.344002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265442, 35.504360, 32.233997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346630, -0.151351, 0.925711,
		0.291481, -0.920658, -0.259669,
		0.891564, 0.359837, -0.275011,
		42.532909, 35.612312, 32.151493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315571, 34.861465, 32.444092>,  <41.908817, 35.360424, 32.344002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315571, 34.861465, 32.444092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539288, 35.190510, 32.485069>,  <42.673519, 35.387939, 32.509655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539288, 35.190510, 32.485069>,  <42.315571, 34.861465, 32.444092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539288, 35.190510, 32.485069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374455, -0.360955, 0.854105,
		0.739577, -0.439335, -0.509912,
		0.559293, 0.822616, 0.102443,
		42.707077, 35.437294, 32.515800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917637, 34.629585, 32.581589>,  <42.315571, 34.861465, 32.444092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917637, 34.629585, 32.581589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915165, 35.000050, 32.732418>,  <42.913681, 35.222328, 32.822914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915165, 35.000050, 32.732418>,  <42.917637, 34.629585, 32.581589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915165, 35.000050, 32.732418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278112, -0.360609, 0.890289,
		0.960529, 0.110367, -0.255350,
		-0.006177, 0.926165, 0.377069,
		42.913311, 35.277901, 32.845539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563808, 34.671917, 32.930824>,  <42.917637, 34.629585, 32.581589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563808, 34.671917, 32.930824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329945, 34.969906, 33.059315>,  <43.189625, 35.148701, 33.136410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329945, 34.969906, 33.059315>,  <43.563808, 34.671917, 32.930824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329945, 34.969906, 33.059315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399732, -0.080017, 0.913133,
		0.705963, 0.662278, -0.251007,
		-0.584663, 0.744973, 0.321223,
		43.154545, 35.193398, 33.155682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833313, 34.830639, 33.525501>,  <43.563808, 34.671917, 32.930824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833313, 34.830639, 33.525501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493877, 35.038567, 33.564854>,  <43.290215, 35.163322, 33.588463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493877, 35.038567, 33.564854>,  <43.833313, 34.830639, 33.525501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493877, 35.038567, 33.564854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102554, -0.020800, 0.994510,
		0.519011, 0.854024, -0.035659,
		-0.848593, 0.519818, 0.098379,
		43.239300, 35.194511, 33.594368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978470, 35.462894, 33.925617>,  <43.833313, 34.830639, 33.525501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978470, 35.462894, 33.925617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595119, 35.362885, 33.980759>,  <43.365108, 35.302879, 34.013844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595119, 35.362885, 33.980759>,  <43.978470, 35.462894, 33.925617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595119, 35.362885, 33.980759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157777, -0.061382, 0.985565,
		-0.237958, 0.966291, 0.098276,
		-0.958375, -0.250028, 0.137852,
		43.307606, 35.287876, 34.022114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611263, 35.070049, 34.020660>,  <43.978470, 35.462894, 33.925617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611263, 35.070049, 34.020660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.901314, 34.797733, 34.062080>,  <45.075344, 34.634346, 34.086933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.901314, 34.797733, 34.062080>,  <44.611263, 35.070049, 34.020660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901314, 34.797733, 34.062080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049225, -0.098740, -0.993895,
		0.686854, 0.725797, -0.038088,
		0.725126, -0.680786, 0.103547,
		45.118851, 34.593498, 34.093143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244511, 35.279575, 33.676006>,  <44.611263, 35.070049, 34.020660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244511, 35.279575, 33.676006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240837, 34.880856, 33.707760>,  <45.238632, 34.641624, 33.726814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240837, 34.880856, 33.707760>,  <45.244511, 35.279575, 33.676006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240837, 34.880856, 33.707760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166143, -0.079807, -0.982867,
		0.986059, 0.004166, 0.166344,
		-0.009181, -0.996802, 0.079386,
		45.238083, 34.581814, 33.731575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664940, 35.042908, 33.119041>,  <45.244511, 35.279575, 33.676006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664940, 35.042908, 33.119041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542831, 34.677158, 33.225418>,  <45.469566, 34.457706, 33.289246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542831, 34.677158, 33.225418>,  <45.664940, 35.042908, 33.119041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542831, 34.677158, 33.225418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324134, -0.362371, -0.873856,
		0.895404, -0.180560, 0.407001,
		-0.305269, -0.914377, 0.265943,
		45.451252, 34.402843, 33.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232403, 34.579502, 33.010025>,  <45.664940, 35.042908, 33.119041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232403, 34.579502, 33.010025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.910378, 34.342289, 33.004543>,  <45.717163, 34.199963, 33.001255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.910378, 34.342289, 33.004543>,  <46.232403, 34.579502, 33.010025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910378, 34.342289, 33.004543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316863, -0.410385, -0.855092,
		0.501471, -0.692745, 0.518296,
		-0.805062, -0.593033, -0.013709,
		45.668858, 34.164379, 33.000431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459461, 34.011326, 32.676708>,  <46.232403, 34.579502, 33.010025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459461, 34.011326, 32.676708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.066822, 33.976414, 32.608768>,  <45.831238, 33.955467, 32.568005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.066822, 33.976414, 32.608768>,  <46.459461, 34.011326, 32.676708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066822, 33.976414, 32.608768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190032, -0.358895, -0.913828,
		0.018803, -0.929288, 0.368877,
		-0.981598, -0.087281, -0.169846,
		45.772343, 33.950230, 32.557816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359268, 33.407749, 32.353794>,  <46.459461, 34.011326, 32.676708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359268, 33.407749, 32.353794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.015797, 33.591190, 32.262264>,  <45.809715, 33.701256, 32.207344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.015797, 33.591190, 32.262264>,  <46.359268, 33.407749, 32.353794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015797, 33.591190, 32.262264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013133, -0.426643, -0.904325,
		-0.512354, -0.779525, 0.360325,
		-0.858674, 0.458602, -0.228830,
		45.758194, 33.728771, 32.193615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068584, 32.948570, 31.759365>,  <46.359268, 33.407749, 32.353794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068584, 32.948570, 31.759365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.882019, 33.302345, 31.765455>,  <45.770081, 33.514610, 31.769110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.882019, 33.302345, 31.765455>,  <46.068584, 32.948570, 31.759365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882019, 33.302345, 31.765455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067050, -0.018187, -0.997584,
		-0.882020, -0.466312, 0.067784,
		-0.466418, 0.884433, 0.015225,
		45.742092, 33.567677, 31.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618843, 32.917496, 31.132914>,  <46.068584, 32.948570, 31.759365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618843, 32.917496, 31.132914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.670364, 33.306236, 31.211819>,  <45.701279, 33.539482, 31.259163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.670364, 33.306236, 31.211819>,  <45.618843, 32.917496, 31.132914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670364, 33.306236, 31.211819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099021, 0.185323, -0.977676,
		-0.986714, 0.145463, -0.072363,
		0.128805, 0.971852, 0.197264,
		45.709007, 33.597794, 31.270998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145329, 33.268982, 30.693480>,  <45.618843, 32.917496, 31.132914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145329, 33.268982, 30.693480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433334, 33.520756, 30.810369>,  <45.606136, 33.671822, 30.880503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433334, 33.520756, 30.810369>,  <45.145329, 33.268982, 30.693480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433334, 33.520756, 30.810369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164072, 0.254756, -0.952985,
		-0.674288, 0.734106, 0.080155,
		0.720011, 0.629435, 0.292225,
		45.649338, 33.709587, 30.898037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027679, 33.751556, 30.326233>,  <45.145329, 33.268982, 30.693480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027679, 33.751556, 30.326233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395905, 33.863392, 30.435335>,  <45.616840, 33.930492, 30.500797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395905, 33.863392, 30.435335>,  <45.027679, 33.751556, 30.326233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395905, 33.863392, 30.435335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213015, 0.225971, -0.950559,
		-0.327397, 0.933150, 0.148465,
		0.920563, 0.279585, 0.272757,
		45.672073, 33.947266, 30.517162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101807, 34.420601, 30.100769>,  <45.027679, 33.751556, 30.326233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101807, 34.420601, 30.100769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.468288, 34.267353, 30.147747>,  <45.688175, 34.175404, 30.175934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.468288, 34.267353, 30.147747>,  <45.101807, 34.420601, 30.100769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468288, 34.267353, 30.147747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199184, 0.181103, -0.963082,
		0.347705, 0.905771, 0.242238,
		0.916203, -0.383118, 0.117444,
		45.743149, 34.152416, 30.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460995, 34.848370, 29.717966>,  <45.101807, 34.420601, 30.100769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460995, 34.848370, 29.717966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710728, 34.538403, 29.757387>,  <45.860569, 34.352425, 29.781040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710728, 34.538403, 29.757387>,  <45.460995, 34.848370, 29.717966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710728, 34.538403, 29.757387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231678, 0.063200, -0.970737,
		0.746010, 0.628898, 0.218989,
		0.624335, -0.774915, 0.098554,
		45.898029, 34.305927, 29.786953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936337, 35.037025, 29.271502>,  <45.460995, 34.848370, 29.717966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936337, 35.037025, 29.271502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.023113, 34.649006, 29.315226>,  <46.075180, 34.416195, 29.341461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.023113, 34.649006, 29.315226>,  <45.936337, 35.037025, 29.271502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023113, 34.649006, 29.315226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101813, -0.088884, -0.990825,
		0.970861, 0.226078, 0.079481,
		0.216939, -0.970046, 0.109312,
		46.088196, 34.357994, 29.348019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553177, 35.112164, 29.046722>,  <45.936337, 35.037025, 29.271502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553177, 35.112164, 29.046722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.385822, 34.749935, 29.018705>,  <46.285412, 34.532600, 29.001896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.385822, 34.749935, 29.018705>,  <46.553177, 35.112164, 29.046722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385822, 34.749935, 29.018705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039809, 0.058757, -0.997478,
		0.907398, -0.420115, 0.011467,
		-0.418382, -0.905567, -0.070041,
		46.260307, 34.478264, 28.997694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903282, 34.805645, 28.592436>,  <46.553177, 35.112164, 29.046722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903282, 34.805645, 28.592436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556057, 34.607063, 28.593248>,  <46.347721, 34.487915, 28.593737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556057, 34.607063, 28.593248>,  <46.903282, 34.805645, 28.592436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556057, 34.607063, 28.593248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047167, 0.078393, -0.995806,
		0.494215, -0.864514, -0.091467,
		-0.868059, -0.496457, 0.002034,
		46.295639, 34.458126, 28.593859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960434, 34.256344, 28.052645>,  <46.903282, 34.805645, 28.592436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960434, 34.256344, 28.052645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568371, 34.289696, 28.124578>,  <46.333134, 34.309708, 28.167738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568371, 34.289696, 28.124578>,  <46.960434, 34.256344, 28.052645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568371, 34.289696, 28.124578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178856, 0.019103, -0.983690,
		-0.085462, -0.996334, -0.003810,
		-0.980156, 0.083387, 0.179833,
		46.274323, 34.314709, 28.178528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699528, 33.759426, 27.581764>,  <46.960434, 34.256344, 28.052645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699528, 33.759426, 27.581764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396980, 34.007431, 27.665178>,  <46.215450, 34.156235, 27.715227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396980, 34.007431, 27.665178>,  <46.699528, 33.759426, 27.581764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396980, 34.007431, 27.665178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271120, -0.007010, -0.962520,
		-0.595316, -0.784558, 0.173401,
		-0.756368, 0.620016, 0.208536,
		46.170071, 34.193436, 27.727739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003532, 33.487484, 27.294079>,  <46.699528, 33.759426, 27.581764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003532, 33.487484, 27.294079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922138, 33.877178, 27.332966>,  <45.873302, 34.110996, 27.356298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922138, 33.877178, 27.332966>,  <46.003532, 33.487484, 27.294079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922138, 33.877178, 27.332966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339836, 0.022842, -0.940208,
		-0.918208, -0.224357, 0.326433,
		-0.203485, 0.974240, 0.097218,
		45.861092, 34.169449, 27.362131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352398, 33.520821, 26.924978>,  <46.003532, 33.487484, 27.294079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352398, 33.520821, 26.924978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480824, 33.897858, 26.961714>,  <45.557877, 34.124081, 26.983755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480824, 33.897858, 26.961714>,  <45.352398, 33.520821, 26.924978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480824, 33.897858, 26.961714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492835, 0.249096, -0.833706,
		-0.808724, 0.222407, 0.544518,
		0.321059, 0.942595, 0.091840,
		45.577141, 34.180637, 26.989265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758480, 33.911186, 26.621113>,  <45.352398, 33.520821, 26.924978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758480, 33.911186, 26.621113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072926, 34.156860, 26.593401>,  <45.261593, 34.304264, 26.576775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072926, 34.156860, 26.593401>,  <44.758480, 33.911186, 26.621113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072926, 34.156860, 26.593401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332414, 0.325630, -0.885136,
		-0.521076, 0.718850, 0.460146,
		0.786117, 0.614183, -0.069278,
		45.308762, 34.341114, 26.572618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503822, 34.682453, 26.427269>,  <44.758480, 33.911186, 26.621113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503822, 34.682453, 26.427269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883072, 34.632336, 26.310404>,  <45.110622, 34.602264, 26.240284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883072, 34.632336, 26.310404>,  <44.503822, 34.682453, 26.427269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883072, 34.632336, 26.310404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245264, 0.296393, -0.923037,
		0.202250, 0.946811, 0.250287,
		0.948125, -0.125298, -0.292164,
		45.167511, 34.594746, 26.222755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.198959, 39.795204, 40.294674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053967, 39.437241, 40.398781>,  <35.966969, 39.222462, 40.461246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053967, 39.437241, 40.398781>,  <36.198959, 39.795204, 40.294674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053967, 39.437241, 40.398781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151398, -0.332096, -0.931016,
		0.919610, -0.298076, 0.255868,
		-0.362487, -0.894910, 0.260271,
		35.945221, 39.168766, 40.476864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694485, 39.296860, 40.015759>,  <36.198959, 39.795204, 40.294674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694485, 39.296860, 40.015759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368832, 39.073513, 40.079533>,  <36.173439, 38.939507, 40.117798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368832, 39.073513, 40.079533>,  <36.694485, 39.296860, 40.015759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368832, 39.073513, 40.079533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218312, -0.548736, -0.806987,
		0.538077, -0.622189, 0.568641,
		-0.814133, -0.558363, 0.159431,
		36.124592, 38.906006, 40.127361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866650, 38.650829, 39.830093>,  <36.694485, 39.296860, 40.015759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866650, 38.650829, 39.830093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467747, 38.638557, 39.803173>,  <36.228405, 38.631195, 39.787022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467747, 38.638557, 39.803173>,  <36.866650, 38.650829, 39.830093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467747, 38.638557, 39.803173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072907, -0.560789, -0.824742,
		-0.012439, -0.827390, 0.561490,
		-0.997261, -0.030677, -0.067299,
		36.168568, 38.629353, 39.782982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613068, 37.964184, 39.636326>,  <36.866650, 38.650829, 39.830093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613068, 37.964184, 39.636326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276642, 38.164246, 39.553902>,  <36.074787, 38.284283, 39.504448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276642, 38.164246, 39.553902>,  <36.613068, 37.964184, 39.636326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276642, 38.164246, 39.553902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059980, -0.464808, -0.883378,
		-0.537603, -0.730616, 0.420932,
		-0.841062, 0.500154, -0.206060,
		36.024323, 38.314293, 39.492085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266964, 37.471607, 39.387886>,  <36.613068, 37.964184, 39.636326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266964, 37.471607, 39.387886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083443, 37.802952, 39.259315>,  <35.973331, 38.001759, 39.182175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083443, 37.802952, 39.259315>,  <36.266964, 37.471607, 39.387886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083443, 37.802952, 39.259315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145758, -0.427012, -0.892421,
		-0.876502, -0.362593, 0.316654,
		-0.458801, 0.828364, -0.321426,
		35.945801, 38.051460, 39.162888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493938, 37.283798, 39.102905>,  <36.266964, 37.471607, 39.387886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493938, 37.283798, 39.102905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651222, 37.610447, 38.933903>,  <35.745594, 37.806435, 38.832500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651222, 37.610447, 38.933903>,  <35.493938, 37.283798, 39.102905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651222, 37.610447, 38.933903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128613, -0.406154, -0.904709,
		-0.910409, 0.410081, -0.054675,
		0.393210, 0.816623, -0.422508,
		35.769184, 37.855434, 38.807152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239738, 37.264923, 38.321426>,  <35.493938, 37.283798, 39.102905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239738, 37.264923, 38.321426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503830, 37.565346, 38.320091>,  <35.662285, 37.745598, 38.319290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503830, 37.565346, 38.320091>,  <35.239738, 37.264923, 38.321426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503830, 37.565346, 38.320091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315163, -0.281076, -0.906459,
		-0.681740, 0.597420, -0.422280,
		0.660229, 0.751057, -0.003337,
		35.701900, 37.790665, 38.319092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042820, 37.666805, 37.759510>,  <35.239738, 37.264923, 38.321426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042820, 37.666805, 37.759510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426624, 37.697350, 37.867966>,  <35.656906, 37.715675, 37.933037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426624, 37.697350, 37.867966>,  <35.042820, 37.666805, 37.759510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426624, 37.697350, 37.867966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278713, -0.396845, -0.874548,
		0.040815, 0.914704, -0.402059,
		0.959507, 0.076365, 0.271136,
		35.714478, 37.720261, 37.949306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420868, 37.847454, 37.088722>,  <35.042820, 37.666805, 37.759510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420868, 37.847454, 37.088722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672932, 37.697369, 37.360638>,  <35.824169, 37.607319, 37.523788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672932, 37.697369, 37.360638>,  <35.420868, 37.847454, 37.088722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672932, 37.697369, 37.360638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435536, -0.553985, -0.709514,
		0.642811, 0.743180, -0.185681,
		0.630161, -0.375213, 0.679789,
		35.861980, 37.584805, 37.564575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072342, 37.734962, 36.721149>,  <35.420868, 37.847454, 37.088722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072342, 37.734962, 36.721149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134262, 37.515385, 37.049709>,  <36.171413, 37.383636, 37.246845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134262, 37.515385, 37.049709>,  <36.072342, 37.734962, 36.721149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134262, 37.515385, 37.049709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432434, -0.709895, -0.555922,
		0.888278, 0.441256, 0.127494,
		0.154796, -0.548947, 0.821399,
		36.180702, 37.350700, 37.296127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837666, 37.503384, 36.666225>,  <36.072342, 37.734962, 36.721149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837666, 37.503384, 36.666225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646164, 37.267483, 36.926376>,  <36.531261, 37.125942, 37.082466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646164, 37.267483, 36.926376>,  <36.837666, 37.503384, 36.666225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646164, 37.267483, 36.926376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493058, -0.793545, -0.356625,
		0.726421, 0.149937, 0.670694,
		-0.478755, -0.589751, 0.650375,
		36.502537, 37.090557, 37.121490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308853, 36.908859, 36.631474>,  <36.837666, 37.503384, 36.666225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308853, 36.908859, 36.631474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972134, 36.772480, 36.798866>,  <36.770103, 36.690655, 36.899303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972134, 36.772480, 36.798866>,  <37.308853, 36.908859, 36.631474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972134, 36.772480, 36.798866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210428, -0.921212, -0.327242,
		0.497085, -0.187412, 0.847221,
		-0.841800, -0.340946, 0.418484,
		36.719593, 36.670197, 36.924412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973022, 36.287788, 36.211235>,  <37.308853, 36.908859, 36.631474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973022, 36.287788, 36.211235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633297, 36.291607, 36.422356>,  <36.429462, 36.293900, 36.549026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633297, 36.291607, 36.422356>,  <36.973022, 36.287788, 36.211235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633297, 36.291607, 36.422356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441751, 0.560227, 0.700715,
		-0.289000, 0.828284, -0.480025,
		-0.849315, 0.009545, 0.527801,
		36.378502, 36.294472, 36.580696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609829, 35.933144, 36.168987>,  <36.973022, 36.287788, 36.211235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609829, 35.933144, 36.168987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723377, 35.572876, 36.037407>,  <37.791504, 35.356716, 35.958458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723377, 35.572876, 36.037407>,  <37.609829, 35.933144, 36.168987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723377, 35.572876, 36.037407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206859, -0.277463, 0.938203,
		-0.936285, -0.334371, 0.107550,
		0.283866, -0.900673, -0.328952,
		37.808537, 35.302673, 35.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158447, 35.448235, 36.492786>,  <37.609829, 35.933144, 36.168987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158447, 35.448235, 36.492786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505722, 35.277622, 36.391335>,  <37.714085, 35.175255, 36.330463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505722, 35.277622, 36.391335>,  <37.158447, 35.448235, 36.492786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505722, 35.277622, 36.391335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249967, -0.065629, 0.966028,
		-0.428686, -0.902089, 0.049640,
		0.868185, -0.426530, -0.253626,
		37.766178, 35.149662, 36.315247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219990, 34.935894, 36.895512>,  <37.158447, 35.448235, 36.492786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219990, 34.935894, 36.895512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598919, 35.000683, 36.784992>,  <37.826275, 35.039558, 36.718681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598919, 35.000683, 36.784992>,  <37.219990, 34.935894, 36.895512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598919, 35.000683, 36.784992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298520, -0.133995, 0.944951,
		0.116036, -0.977655, -0.175289,
		0.947323, 0.161976, -0.276301,
		37.883118, 35.049274, 36.702103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651665, 34.409367, 37.165638>,  <37.219990, 34.935894, 36.895512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651665, 34.409367, 37.165638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877468, 34.736935, 37.124249>,  <38.012951, 34.933475, 37.099415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877468, 34.736935, 37.124249>,  <37.651665, 34.409367, 37.165638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877468, 34.736935, 37.124249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322501, -0.103422, 0.940902,
		0.759821, -0.564514, -0.322484,
		0.564505, 0.818918, -0.103474,
		38.046818, 34.982609, 37.093204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170933, 34.407326, 37.720402>,  <37.651665, 34.409367, 37.165638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170933, 34.407326, 37.720402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241322, 34.778465, 37.588871>,  <38.283554, 35.001148, 37.509953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241322, 34.778465, 37.588871>,  <38.170933, 34.407326, 37.720402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241322, 34.778465, 37.588871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224411, 0.287434, 0.931140,
		0.958475, -0.237646, -0.157639,
		0.175971, 0.927850, -0.328829,
		38.294113, 35.056820, 37.490223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581314, 34.682236, 38.216225>,  <38.170933, 34.407326, 37.720402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581314, 34.682236, 38.216225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475430, 35.018078, 38.026493>,  <38.411900, 35.219582, 37.912655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475430, 35.018078, 38.026493>,  <38.581314, 34.682236, 38.216225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475430, 35.018078, 38.026493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333690, 0.541244, 0.771820,
		0.904752, 0.046034, -0.423444,
		-0.264716, 0.839605, -0.474330,
		38.396015, 35.269958, 37.884193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185890, 35.017712, 38.224625>,  <38.581314, 34.682236, 38.216225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185890, 35.017712, 38.224625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872177, 35.255901, 38.154980>,  <38.683949, 35.398815, 38.113194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872177, 35.255901, 38.154980>,  <39.185890, 35.017712, 38.224625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872177, 35.255901, 38.154980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241692, 0.551733, 0.798233,
		0.571390, 0.583957, -0.576634,
		-0.784282, 0.595470, -0.174117,
		38.636894, 35.434544, 38.102745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428841, 35.623268, 38.331760>,  <39.185890, 35.017712, 38.224625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428841, 35.623268, 38.331760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038746, 35.711643, 38.335735>,  <38.804688, 35.764668, 38.338120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038746, 35.711643, 38.335735>,  <39.428841, 35.623268, 38.331760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038746, 35.711643, 38.335735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147075, 0.614357, 0.775200,
		0.165166, 0.757465, -0.631638,
		-0.975238, 0.220935, 0.009934,
		38.746174, 35.777924, 38.338715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320759, 36.403034, 38.276596>,  <39.428841, 35.623268, 38.331760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320759, 36.403034, 38.276596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023148, 36.216583, 38.468075>,  <38.844582, 36.104713, 38.582962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023148, 36.216583, 38.468075>,  <39.320759, 36.403034, 38.276596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023148, 36.216583, 38.468075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153714, 0.577815, 0.801562,
		-0.650229, 0.669965, -0.358259,
		-0.744026, -0.466129, 0.478695,
		38.799938, 36.076744, 38.611683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109322, 36.876396, 38.688412>,  <39.320759, 36.403034, 38.276596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109322, 36.876396, 38.688412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921772, 36.565189, 38.855675>,  <38.809242, 36.378468, 38.956032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921772, 36.565189, 38.855675>,  <39.109322, 36.876396, 38.688412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921772, 36.565189, 38.855675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187164, 0.375157, 0.907870,
		-0.863209, 0.503938, -0.030284,
		-0.468871, -0.778013, 0.418158,
		38.781109, 36.331787, 38.981121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504951, 37.230202, 39.032822>,  <39.109322, 36.876396, 38.688412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504951, 37.230202, 39.032822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602036, 36.884262, 39.208611>,  <38.660286, 36.676701, 39.314083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602036, 36.884262, 39.208611>,  <38.504951, 37.230202, 39.032822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602036, 36.884262, 39.208611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010420, 0.455313, 0.890270,
		-0.970042, -0.211502, 0.119522,
		0.242714, -0.864845, 0.439469,
		38.674850, 36.624809, 39.340450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274097, 37.373432, 39.683929>,  <38.504951, 37.230202, 39.032822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274097, 37.373432, 39.683929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469112, 37.027458, 39.731583>,  <38.586121, 36.819874, 39.760174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469112, 37.027458, 39.731583>,  <38.274097, 37.373432, 39.683929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469112, 37.027458, 39.731583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137055, 0.210574, 0.967923,
		-0.862280, -0.455566, 0.221206,
		0.487533, -0.864938, 0.119136,
		38.615372, 36.767975, 39.767323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986362, 36.958176, 40.180138>,  <38.274097, 37.373432, 39.683929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986362, 36.958176, 40.180138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370621, 36.848835, 40.160412>,  <38.601177, 36.783230, 40.148575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370621, 36.848835, 40.160412>,  <37.986362, 36.958176, 40.180138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370621, 36.848835, 40.160412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129654, 0.284275, 0.949935,
		-0.245651, -0.918948, 0.308530,
		0.960648, -0.273355, -0.049313,
		38.658813, 36.766830, 40.145618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107285, 36.635723, 40.694515>,  <37.986362, 36.958176, 40.180138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107285, 36.635723, 40.694515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481766, 36.738071, 40.598137>,  <38.706455, 36.799480, 40.540310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481766, 36.738071, 40.598137>,  <38.107285, 36.635723, 40.694515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481766, 36.738071, 40.598137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176316, 0.251111, 0.951765,
		0.304034, -0.933527, 0.189976,
		0.936203, 0.255874, -0.240942,
		38.762627, 36.814835, 40.525856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494118, 36.246765, 41.153992>,  <38.107285, 36.635723, 40.694515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494118, 36.246765, 41.153992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718987, 36.551510, 41.025288>,  <38.853909, 36.734356, 40.948063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718987, 36.551510, 41.025288>,  <38.494118, 36.246765, 41.153992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718987, 36.551510, 41.025288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189686, 0.259908, 0.946819,
		0.804975, -0.593307, 0.001598,
		0.562170, 0.761862, -0.321762,
		38.887638, 36.780067, 40.928761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591873, 35.488472, 41.237087>,  <38.494118, 36.246765, 41.153992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591873, 35.488472, 41.237087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391018, 35.253635, 41.491077>,  <38.270504, 35.112736, 41.643471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391018, 35.253635, 41.491077>,  <38.591873, 35.488472, 41.237087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391018, 35.253635, 41.491077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632333, -0.251622, -0.732695,
		0.589929, -0.769424, -0.244888,
		-0.502133, -0.587089, 0.634971,
		38.240379, 35.077507, 41.681568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521503, 34.897064, 40.888908>,  <38.591873, 35.488472, 41.237087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521503, 34.897064, 40.888908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229080, 34.865463, 41.160000>,  <38.053627, 34.846500, 41.322655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229080, 34.865463, 41.160000>,  <38.521503, 34.897064, 40.888908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229080, 34.865463, 41.160000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622681, -0.328858, -0.710015,
		0.278971, -0.941069, 0.191219,
		-0.731057, -0.079005, 0.677727,
		38.009762, 34.841763, 41.363319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284107, 34.183773, 40.877846>,  <38.521503, 34.897064, 40.888908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284107, 34.183773, 40.877846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988213, 34.419292, 41.008141>,  <37.810677, 34.560604, 41.086319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988213, 34.419292, 41.008141>,  <38.284107, 34.183773, 40.877846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988213, 34.419292, 41.008141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580283, -0.313103, -0.751823,
		-0.340680, -0.745173, 0.573283,
		-0.739735, 0.588798, 0.325743,
		37.766293, 34.595932, 41.105862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826717, 33.749359, 40.969299>,  <38.284107, 34.183773, 40.877846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826717, 33.749359, 40.969299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629620, 34.091652, 40.906158>,  <37.511360, 34.297028, 40.868275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629620, 34.091652, 40.906158>,  <37.826717, 33.749359, 40.969299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629620, 34.091652, 40.906158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647405, -0.481729, -0.590597,
		-0.581434, -0.188824, 0.791378,
		-0.492748, 0.855736, -0.157848,
		37.481796, 34.348373, 40.858803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242088, 33.462475, 40.661350>,  <37.826717, 33.749359, 40.969299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242088, 33.462475, 40.661350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190487, 33.854698, 40.602196>,  <37.159527, 34.090031, 40.566704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190487, 33.854698, 40.602196>,  <37.242088, 33.462475, 40.661350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190487, 33.854698, 40.602196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643067, -0.196250, -0.740237,
		-0.754866, -0.000394, 0.655880,
		-0.129008, 0.980554, -0.147890,
		37.151783, 34.148865, 40.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445076, 33.628540, 40.695797>,  <37.242088, 33.462475, 40.661350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445076, 33.628540, 40.695797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627697, 33.928001, 40.503517>,  <36.737270, 34.107677, 40.388149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627697, 33.928001, 40.503517>,  <36.445076, 33.628540, 40.695797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627697, 33.928001, 40.503517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583639, -0.155774, -0.796932,
		-0.671509, 0.644397, 0.365826,
		0.456554, 0.748657, -0.480698,
		36.764664, 34.152599, 40.359306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906876, 34.090157, 40.375404>,  <36.445076, 33.628540, 40.695797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906876, 34.090157, 40.375404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253494, 34.132866, 40.180389>,  <36.461468, 34.158493, 40.063381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253494, 34.132866, 40.180389>,  <35.906876, 34.090157, 40.375404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253494, 34.132866, 40.180389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467910, -0.166059, -0.868035,
		-0.173644, 0.980318, -0.093937,
		0.866550, 0.106775, -0.487536,
		36.513458, 34.164898, 40.034130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720726, 34.466461, 39.793812>,  <35.906876, 34.090157, 40.375404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720726, 34.466461, 39.793812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077080, 34.324551, 39.680351>,  <36.290894, 34.239403, 39.612274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077080, 34.324551, 39.680351>,  <35.720726, 34.466461, 39.793812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077080, 34.324551, 39.680351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345145, -0.122745, -0.930489,
		0.295297, 0.926860, -0.231800,
		0.890884, -0.354775, -0.283655,
		36.344345, 34.218117, 39.595253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757507, 34.717144, 39.133335>,  <35.720726, 34.466461, 39.793812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757507, 34.717144, 39.133335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029068, 34.423466, 39.130409>,  <36.192005, 34.247261, 39.128654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029068, 34.423466, 39.130409>,  <35.757507, 34.717144, 39.133335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029068, 34.423466, 39.130409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237093, -0.209785, -0.948566,
		0.694895, 0.645718, -0.316495,
		0.678902, -0.734193, -0.007316,
		36.232738, 34.203209, 39.128216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139481, 34.827877, 38.487827>,  <35.757507, 34.717144, 39.133335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139481, 34.827877, 38.487827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202641, 34.450928, 38.605808>,  <36.240536, 34.224758, 38.676598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202641, 34.450928, 38.605808>,  <36.139481, 34.827877, 38.487827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202641, 34.450928, 38.605808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220789, -0.324831, -0.919640,
		0.962455, 0.080090, -0.259357,
		0.157902, -0.942375, 0.294952,
		36.250011, 34.168217, 38.694294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647778, 34.381199, 38.002270>,  <36.139481, 34.827877, 38.487827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647778, 34.381199, 38.002270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431271, 34.117054, 38.210484>,  <36.301365, 33.958569, 38.335411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431271, 34.117054, 38.210484>,  <36.647778, 34.381199, 38.002270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431271, 34.117054, 38.210484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112381, -0.556688, -0.823085,
		0.833306, -0.504008, 0.227106,
		-0.541268, -0.660359, 0.520533,
		36.268890, 33.918945, 38.366642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044861, 33.708706, 38.059444>,  <36.647778, 34.381199, 38.002270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044861, 33.708706, 38.059444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647270, 33.711296, 38.015671>,  <36.408718, 33.712849, 37.989407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647270, 33.711296, 38.015671>,  <37.044861, 33.708706, 38.059444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647270, 33.711296, 38.015671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085102, -0.583677, -0.807514,
		-0.069104, -0.811960, 0.579608,
		-0.993973, 0.006477, -0.109433,
		36.349079, 33.713238, 37.982841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.023205, 35.617645, 45.007309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628609, 35.645046, 45.066833>,  <39.391850, 35.661488, 45.102547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628609, 35.645046, 45.066833>,  <40.023205, 35.617645, 45.007309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628609, 35.645046, 45.066833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161315, -0.248074, -0.955216,
		-0.028517, -0.966316, 0.255773,
		-0.986491, 0.068500, 0.148807,
		39.332661, 35.665596, 45.111477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812145, 35.018585, 44.950447>,  <40.023205, 35.617645, 45.007309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812145, 35.018585, 44.950447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502449, 35.253765, 44.856750>,  <39.316631, 35.394875, 44.800533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502449, 35.253765, 44.856750>,  <39.812145, 35.018585, 44.950447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502449, 35.253765, 44.856750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028469, -0.402094, -0.915156,
		-0.632257, -0.701878, 0.328054,
		-0.774236, 0.587952, -0.234245,
		39.270180, 35.430149, 44.786476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477333, 34.605747, 44.529518>,  <39.812145, 35.018585, 44.950447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477333, 34.605747, 44.529518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285675, 34.950249, 44.461811>,  <39.170681, 35.156952, 44.421185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285675, 34.950249, 44.461811>,  <39.477333, 34.605747, 44.529518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285675, 34.950249, 44.461811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150279, -0.270497, -0.950919,
		-0.864773, -0.430194, 0.259037,
		-0.479149, 0.861257, -0.169270,
		39.141930, 35.208626, 44.411030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807026, 34.482021, 44.270565>,  <39.477333, 34.605747, 44.529518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807026, 34.482021, 44.270565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889153, 34.845753, 44.125809>,  <38.938427, 35.063992, 44.038956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889153, 34.845753, 44.125809>,  <38.807026, 34.482021, 44.270565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889153, 34.845753, 44.125809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293621, -0.295503, -0.909101,
		-0.933613, 0.292911, 0.206327,
		0.205316, 0.909330, -0.361891,
		38.950748, 35.118553, 44.017242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206860, 34.744995, 44.089119>,  <38.807026, 34.482021, 44.270565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206860, 34.744995, 44.089119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483337, 34.945347, 43.880745>,  <38.649223, 35.065559, 43.755722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483337, 34.945347, 43.880745>,  <38.206860, 34.744995, 44.089119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483337, 34.945347, 43.880745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452694, -0.261799, -0.852367,
		-0.563314, 0.824973, 0.045791,
		0.691192, 0.500880, -0.520935,
		38.690697, 35.095612, 43.724464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856224, 35.150249, 43.626930>,  <38.206860, 34.744995, 44.089119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856224, 35.150249, 43.626930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213326, 35.139526, 43.447033>,  <38.427586, 35.133091, 43.339096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213326, 35.139526, 43.447033>,  <37.856224, 35.150249, 43.626930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213326, 35.139526, 43.447033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450023, -0.100936, -0.887294,
		-0.021607, 0.994531, -0.102177,
		0.892756, -0.026810, -0.449743,
		38.481152, 35.131485, 43.312111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833733, 35.600151, 43.164291>,  <37.856224, 35.150249, 43.626930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833733, 35.600151, 43.164291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140060, 35.383667, 43.025375>,  <38.323856, 35.253777, 42.942024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140060, 35.383667, 43.025375>,  <37.833733, 35.600151, 43.164291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140060, 35.383667, 43.025375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474573, -0.111217, -0.873161,
		0.433941, 0.833498, -0.342017,
		0.765817, -0.541213, -0.347294,
		38.369804, 35.221302, 42.921188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035980, 35.940723, 42.560890>,  <37.833733, 35.600151, 43.164291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035980, 35.940723, 42.560890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204220, 35.579708, 42.523972>,  <38.305164, 35.363098, 42.501820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204220, 35.579708, 42.523972>,  <38.035980, 35.940723, 42.560890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204220, 35.579708, 42.523972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234968, -0.010106, -0.971951,
		0.876291, 0.430488, -0.216318,
		0.420600, -0.902539, -0.092295,
		38.330399, 35.308945, 42.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403496, 35.924007, 41.940292>,  <38.035980, 35.940723, 42.560890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403496, 35.924007, 41.940292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314785, 35.542908, 42.023312>,  <38.261559, 35.314247, 42.073124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314785, 35.542908, 42.023312>,  <38.403496, 35.924007, 41.940292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314785, 35.542908, 42.023312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307713, -0.133586, -0.942055,
		0.925271, -0.272794, -0.263548,
		-0.221781, -0.952753, 0.207546,
		38.248249, 35.257080, 42.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069515, 36.293518, 41.606529>,  <38.403496, 35.924007, 41.940292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069515, 36.293518, 41.606529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.080227, 36.648186, 41.421879>,  <39.086655, 36.860989, 41.311089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.080227, 36.648186, 41.421879>,  <39.069515, 36.293518, 41.606529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080227, 36.648186, 41.421879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310484, 0.431573, 0.846962,
		0.950201, -0.166008, -0.263740,
		0.026779, 0.886671, -0.461624,
		39.088261, 36.914188, 41.283390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746109, 36.584930, 41.815189>,  <39.069515, 36.293518, 41.606529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746109, 36.584930, 41.815189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517815, 36.892311, 41.699440>,  <39.380836, 37.076740, 41.629990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517815, 36.892311, 41.699440>,  <39.746109, 36.584930, 41.815189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517815, 36.892311, 41.699440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268144, 0.507513, 0.818858,
		0.776115, 0.389761, -0.495713,
		-0.570740, 0.768451, -0.289377,
		39.346592, 37.122845, 41.612625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233475, 37.115700, 41.838039>,  <39.746109, 36.584930, 41.815189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233475, 37.115700, 41.838039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873802, 37.290722, 41.836216>,  <39.657997, 37.395737, 41.835121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873802, 37.290722, 41.836216>,  <40.233475, 37.115700, 41.838039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873802, 37.290722, 41.836216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260846, 0.544342, 0.797278,
		0.351332, 0.715708, -0.603596,
		-0.899180, 0.437555, -0.004555,
		39.604050, 37.421989, 41.834850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288155, 37.862213, 41.970715>,  <40.233475, 37.115700, 41.838039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288155, 37.862213, 41.970715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907261, 37.777264, 42.058487>,  <39.678726, 37.726295, 42.111149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907261, 37.777264, 42.058487>,  <40.288155, 37.862213, 41.970715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907261, 37.777264, 42.058487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093781, 0.480471, 0.871982,
		-0.290612, 0.850909, -0.437605,
		-0.952234, -0.212370, 0.219430,
		39.621590, 37.713554, 42.124317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141758, 38.521118, 42.170883>,  <40.288155, 37.862213, 41.970715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141758, 38.521118, 42.170883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.858395, 38.277866, 42.314182>,  <39.688377, 38.131916, 42.400162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.858395, 38.277866, 42.314182>,  <40.141758, 38.521118, 42.170883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858395, 38.277866, 42.314182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062554, 0.559670, 0.826351,
		-0.703023, 0.562986, -0.434517,
		-0.708411, -0.608125, 0.358244,
		39.645870, 38.095428, 42.421654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642235, 38.904888, 42.492218>,  <40.141758, 38.521118, 42.170883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642235, 38.904888, 42.492218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.558693, 38.555283, 42.667706>,  <39.508568, 38.345520, 42.772999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.558693, 38.555283, 42.667706>,  <39.642235, 38.904888, 42.492218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558693, 38.555283, 42.667706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000511, 0.448707, 0.893679,
		-0.977946, 0.186426, -0.094162,
		-0.208856, -0.874018, 0.438716,
		39.496037, 38.293076, 42.799320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988106, 38.985279, 42.867168>,  <39.642235, 38.904888, 42.492218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988106, 38.985279, 42.867168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126389, 38.644527, 43.024536>,  <39.209358, 38.440075, 43.118958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126389, 38.644527, 43.024536>,  <38.988106, 38.985279, 42.867168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126389, 38.644527, 43.024536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106368, 0.380993, 0.918439,
		-0.932294, -0.359359, 0.041099,
		0.345707, -0.851883, 0.393422,
		39.230103, 38.388962, 43.142563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562855, 38.828209, 43.421970>,  <38.988106, 38.985279, 42.867168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562855, 38.828209, 43.421970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932083, 38.683350, 43.473808>,  <39.153618, 38.596436, 43.504910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932083, 38.683350, 43.473808>,  <38.562855, 38.828209, 43.421970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932083, 38.683350, 43.473808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046896, 0.440375, 0.896588,
		-0.381770, -0.821534, 0.423479,
		0.923067, -0.362149, 0.129595,
		39.209003, 38.574703, 43.512688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543224, 38.455933, 44.093357>,  <38.562855, 38.828209, 43.421970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543224, 38.455933, 44.093357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936241, 38.510487, 44.042744>,  <39.172050, 38.543221, 44.012375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936241, 38.510487, 44.042744>,  <38.543224, 38.455933, 44.093357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936241, 38.510487, 44.042744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060143, 0.410749, 0.909763,
		0.176055, -0.901490, 0.395375,
		0.982542, 0.136389, -0.126533,
		39.231003, 38.551403, 44.004784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809322, 38.183777, 44.715099>,  <38.543224, 38.455933, 44.093357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809322, 38.183777, 44.715099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085583, 38.433613, 44.569279>,  <39.251339, 38.583515, 44.481789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085583, 38.433613, 44.569279>,  <38.809322, 38.183777, 44.715099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085583, 38.433613, 44.569279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172108, 0.347646, 0.921695,
		0.702413, -0.699308, 0.132605,
		0.690648, 0.624588, -0.364548,
		39.292778, 38.620991, 44.459915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256268, 38.197651, 45.222588>,  <38.809322, 38.183777, 44.715099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256268, 38.197651, 45.222588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363251, 38.524292, 45.017990>,  <39.427441, 38.720276, 44.895229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363251, 38.524292, 45.017990>,  <39.256268, 38.197651, 45.222588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363251, 38.524292, 45.017990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231126, 0.460969, 0.856790,
		0.935441, -0.347371, -0.065450,
		0.267454, 0.816603, -0.511495,
		39.443485, 38.769272, 44.864540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937054, 38.382885, 45.562290>,  <39.256268, 38.197651, 45.222588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937054, 38.382885, 45.562290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.766659, 38.680492, 45.356384>,  <39.664421, 38.859055, 45.232841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.766659, 38.680492, 45.356384>,  <39.937054, 38.382885, 45.562290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766659, 38.680492, 45.356384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103581, 0.605333, 0.789204,
		0.898781, 0.282869, -0.334928,
		-0.425985, 0.744014, -0.514762,
		39.638863, 38.903698, 45.201954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369591, 38.984608, 45.646519>,  <39.937054, 38.382885, 45.562290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369591, 38.984608, 45.646519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015045, 39.135609, 45.539299>,  <39.802319, 39.226212, 45.474968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015045, 39.135609, 45.539299>,  <40.369591, 38.984608, 45.646519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015045, 39.135609, 45.539299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043387, 0.644128, 0.763686,
		0.460953, 0.665274, -0.587310,
		-0.886363, 0.377505, -0.268049,
		39.749138, 39.248859, 45.458885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464611, 39.682999, 45.691452>,  <40.369591, 38.984608, 45.646519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464611, 39.682999, 45.691452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068634, 39.636822, 45.724155>,  <39.831047, 39.609116, 45.743778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068634, 39.636822, 45.724155>,  <40.464611, 39.682999, 45.691452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068634, 39.636822, 45.724155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013596, 0.652916, 0.757308,
		-0.140810, 0.748581, -0.647919,
		-0.989943, -0.115446, 0.081760,
		39.771652, 39.602188, 45.748684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.970257, 36.719627, 47.903629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361290, 36.661404, 47.842770>,  <32.595909, 36.626469, 47.806255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361290, 36.661404, 47.842770>,  <31.970257, 36.719627, 47.903629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361290, 36.661404, 47.842770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175057, -0.160306, -0.971420,
		0.117005, 0.976276, -0.182192,
		0.977581, -0.145556, -0.152148,
		32.654564, 36.617737, 47.797127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170456, 37.129364, 47.402203>,  <31.970257, 36.719627, 47.903629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170456, 37.129364, 47.402203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454098, 36.847385, 47.396290>,  <32.624283, 36.678196, 47.392742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454098, 36.847385, 47.396290>,  <32.170456, 37.129364, 47.402203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454098, 36.847385, 47.396290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073091, -0.052633, -0.995935,
		0.701305, 0.707303, -0.088848,
		0.709104, -0.704949, -0.014786,
		32.666828, 36.635902, 47.391853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649673, 37.309441, 46.892506>,  <32.170456, 37.129364, 47.402203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649673, 37.309441, 46.892506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741451, 36.922600, 46.936432>,  <32.796520, 36.690495, 46.962788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741451, 36.922600, 46.936432>,  <32.649673, 37.309441, 46.892506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741451, 36.922600, 46.936432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273241, -0.172291, -0.946391,
		0.934180, 0.187141, -0.303785,
		0.229448, -0.967106, 0.109816,
		32.810287, 36.632469, 46.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122715, 37.109631, 46.312912>,  <32.649673, 37.309441, 46.892506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122715, 37.109631, 46.312912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.973442, 36.757988, 46.431515>,  <32.883881, 36.547005, 46.502678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.973442, 36.757988, 46.431515>,  <33.122715, 37.109631, 46.312912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973442, 36.757988, 46.431515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233993, -0.220079, -0.947002,
		0.897767, -0.422781, -0.123575,
		-0.373179, -0.879103, 0.296508,
		32.861488, 36.494259, 46.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367531, 36.592022, 45.834805>,  <33.122715, 37.109631, 46.312912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367531, 36.592022, 45.834805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.043636, 36.429180, 46.003845>,  <32.849300, 36.331474, 46.105270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.043636, 36.429180, 46.003845>,  <33.367531, 36.592022, 45.834805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043636, 36.429180, 46.003845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281266, -0.362786, -0.888412,
		0.514989, -0.838244, 0.179258,
		-0.809738, -0.407103, 0.422600,
		32.800716, 36.307049, 46.130627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267605, 36.053303, 45.386436>,  <33.367531, 36.592022, 45.834805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267605, 36.053303, 45.386436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932041, 36.057198, 45.604111>,  <32.730701, 36.059536, 45.734715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932041, 36.057198, 45.604111>,  <33.267605, 36.053303, 45.386436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932041, 36.057198, 45.604111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504152, -0.390652, -0.770209,
		0.205085, -0.920487, 0.332631,
		-0.838910, 0.009739, 0.544183,
		32.680367, 36.060120, 45.767365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864761, 35.313816, 45.384380>,  <33.267605, 36.053303, 45.386436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864761, 35.313816, 45.384380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615139, 35.622330, 45.434460>,  <32.465366, 35.807438, 45.464508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615139, 35.622330, 45.434460>,  <32.864761, 35.313816, 45.384380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615139, 35.622330, 45.434460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467325, -0.240001, -0.850886,
		-0.626227, -0.589510, 0.510214,
		-0.624058, 0.771284, 0.125198,
		32.427921, 35.853714, 45.472019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230988, 35.063450, 45.078438>,  <32.864761, 35.313816, 45.384380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230988, 35.063450, 45.078438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183769, 35.460567, 45.086758>,  <32.155437, 35.698837, 45.091751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183769, 35.460567, 45.086758>,  <32.230988, 35.063450, 45.078438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183769, 35.460567, 45.086758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445182, -0.034184, -0.894787,
		-0.887625, -0.114888, 0.446008,
		-0.118046, 0.992790, 0.020803,
		32.148354, 35.758404, 45.092999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668522, 35.169460, 44.599899>,  <32.230988, 35.063450, 45.078438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668522, 35.169460, 44.599899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820889, 35.537704, 44.634239>,  <31.912308, 35.758652, 44.654842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820889, 35.537704, 44.634239>,  <31.668522, 35.169460, 44.599899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820889, 35.537704, 44.634239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225481, 0.182540, -0.956994,
		-0.896694, 0.345177, 0.277114,
		0.380917, 0.920615, 0.085852,
		31.935163, 35.813889, 44.659996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122816, 35.612461, 44.397972>,  <31.668522, 35.169460, 44.599899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122816, 35.612461, 44.397972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.469540, 35.808445, 44.360916>,  <31.677574, 35.926033, 44.338680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.469540, 35.808445, 44.360916>,  <31.122816, 35.612461, 44.397972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469540, 35.808445, 44.360916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173631, 0.122413, -0.977173,
		-0.467432, 0.863109, 0.191180,
		0.866810, 0.489957, -0.092643,
		31.729582, 35.955433, 44.333122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013840, 36.129143, 44.023632>,  <31.122816, 35.612461, 44.397972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013840, 36.129143, 44.023632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407957, 36.095726, 43.964016>,  <31.644428, 36.075676, 43.928246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407957, 36.095726, 43.964016>,  <31.013840, 36.129143, 44.023632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407957, 36.095726, 43.964016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142181, 0.082836, -0.986368,
		0.094748, 0.993055, 0.069740,
		0.985296, -0.083541, -0.149042,
		31.703547, 36.070663, 43.919304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094376, 36.577209, 43.503834>,  <31.013840, 36.129143, 44.023632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094376, 36.577209, 43.503834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425570, 36.353275, 43.516644>,  <31.624287, 36.218914, 43.524330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425570, 36.353275, 43.516644>,  <31.094376, 36.577209, 43.503834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425570, 36.353275, 43.516644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000530, -0.056335, -0.998412,
		0.560749, 0.826688, -0.046348,
		0.827986, -0.559834, 0.032028,
		31.673965, 36.185326, 43.526253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578382, 36.896187, 43.043694>,  <31.094376, 36.577209, 43.503834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578382, 36.896187, 43.043694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680193, 36.511623, 43.085461>,  <31.741280, 36.280884, 43.110519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680193, 36.511623, 43.085461>,  <31.578382, 36.896187, 43.043694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680193, 36.511623, 43.085461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148535, -0.145553, -0.978137,
		0.955591, 0.233451, -0.179851,
		0.254524, -0.961413, 0.104414,
		31.756550, 36.223198, 43.116783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985682, 36.666252, 42.426243>,  <31.578382, 36.896187, 43.043694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985682, 36.666252, 42.426243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901331, 36.300152, 42.563553>,  <31.850719, 36.080490, 42.645939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901331, 36.300152, 42.563553>,  <31.985682, 36.666252, 42.426243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901331, 36.300152, 42.563553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262099, -0.285375, -0.921881,
		0.941719, -0.284377, -0.179708,
		-0.210878, -0.915254, 0.343278,
		31.838068, 36.025574, 42.666538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730679, 36.650127, 42.564407>,  <31.985682, 36.666252, 42.426243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730679, 36.650127, 42.564407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.821136, 37.027538, 42.467564>,  <32.875412, 37.253986, 42.409458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.821136, 37.027538, 42.467564>,  <32.730679, 36.650127, 42.564407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821136, 37.027538, 42.467564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273381, 0.300037, 0.913915,
		0.934945, -0.140485, 0.325793,
		0.226142, 0.943526, -0.242112,
		32.888981, 37.310596, 42.394932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129581, 36.922558, 43.102383>,  <32.730679, 36.650127, 42.564407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129581, 36.922558, 43.102383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005772, 37.257626, 42.922379>,  <32.931488, 37.458664, 42.814377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005772, 37.257626, 42.922379>,  <33.129581, 36.922558, 43.102383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005772, 37.257626, 42.922379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203257, 0.404034, 0.891876,
		0.928915, 0.367524, 0.045204,
		-0.309522, 0.837665, -0.450015,
		32.912914, 37.508926, 42.787373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558350, 37.528603, 43.417183>,  <33.129581, 36.922558, 43.102383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558350, 37.528603, 43.417183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229160, 37.688538, 43.255764>,  <33.031647, 37.784500, 43.158913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229160, 37.688538, 43.255764>,  <33.558350, 37.528603, 43.417183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229160, 37.688538, 43.255764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113432, 0.580396, 0.806396,
		0.556645, 0.709414, -0.432294,
		-0.822970, 0.399841, -0.403545,
		32.982269, 37.808491, 43.134701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670975, 38.292976, 43.442432>,  <33.558350, 37.528603, 43.417183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670975, 38.292976, 43.442432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278152, 38.232098, 43.397873>,  <33.042461, 38.195572, 43.371140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278152, 38.232098, 43.397873>,  <33.670975, 38.292976, 43.442432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278152, 38.232098, 43.397873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186533, 0.696387, 0.693001,
		-0.027899, 0.701342, -0.712279,
		-0.982052, -0.152198, -0.111395,
		32.983536, 38.186440, 43.364456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458843, 38.972591, 43.307049>,  <33.670975, 38.292976, 43.442432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458843, 38.972591, 43.307049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.143341, 38.757019, 43.425312>,  <32.954041, 38.627674, 43.496269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.143341, 38.757019, 43.425312>,  <33.458843, 38.972591, 43.307049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143341, 38.757019, 43.425312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079408, 0.566277, 0.820381,
		-0.609553, 0.623605, -0.489451,
		-0.788758, -0.538932, 0.295656,
		32.906715, 38.595341, 43.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952904, 39.473202, 43.569317>,  <33.458843, 38.972591, 43.307049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952904, 39.473202, 43.569317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865044, 39.113708, 43.721119>,  <32.812328, 38.898010, 43.812202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865044, 39.113708, 43.721119>,  <32.952904, 39.473202, 43.569317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865044, 39.113708, 43.721119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080410, 0.404365, 0.911056,
		-0.972259, 0.169599, -0.161086,
		-0.219652, -0.898735, 0.379510,
		32.799149, 38.844090, 43.834972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293480, 39.550743, 43.864677>,  <32.952904, 39.473202, 43.569317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293480, 39.550743, 43.864677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498837, 39.247749, 44.025993>,  <32.622051, 39.065952, 44.122784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498837, 39.247749, 44.025993>,  <32.293480, 39.550743, 43.864677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498837, 39.247749, 44.025993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055816, 0.498431, 0.865131,
		-0.856336, -0.421642, 0.298171,
		0.513393, -0.757485, 0.403290,
		32.652855, 39.020504, 44.146980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081646, 39.551060, 44.608253>,  <32.293480, 39.550743, 43.864677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081646, 39.551060, 44.608253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.413757, 39.328602, 44.593601>,  <32.613022, 39.195126, 44.584808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.413757, 39.328602, 44.593601>,  <32.081646, 39.551060, 44.608253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413757, 39.328602, 44.593601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301146, 0.392338, 0.869127,
		-0.468992, -0.732646, 0.493231,
		0.830276, -0.556148, -0.036630,
		32.662842, 39.161758, 44.582611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193371, 39.291126, 45.252453>,  <32.081646, 39.551060, 44.608253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193371, 39.291126, 45.252453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555435, 39.232170, 45.092972>,  <32.772675, 39.196796, 44.997284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555435, 39.232170, 45.092972>,  <32.193371, 39.291126, 45.252453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555435, 39.232170, 45.092972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425057, 0.305871, 0.851921,
		-0.003610, -0.940596, 0.339509,
		0.905160, -0.147386, -0.398703,
		32.826984, 39.187954, 44.973362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551479, 38.897564, 45.782539>,  <32.193371, 39.291126, 45.252453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551479, 38.897564, 45.782539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832455, 39.064293, 45.551769>,  <33.001041, 39.164330, 45.413307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832455, 39.064293, 45.551769>,  <32.551479, 38.897564, 45.782539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832455, 39.064293, 45.551769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579857, 0.134891, 0.803474,
		0.412725, -0.898925, -0.146943,
		0.702441, 0.416819, -0.576921,
		33.043186, 39.189339, 45.378693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267689, 38.536839, 45.988987>,  <32.551479, 38.897564, 45.782539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267689, 38.536839, 45.988987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317814, 38.898891, 45.826492>,  <33.347889, 39.116123, 45.728996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317814, 38.898891, 45.826492>,  <33.267689, 38.536839, 45.988987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317814, 38.898891, 45.826492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667499, 0.226016, 0.709480,
		0.733991, -0.360067, -0.575855,
		0.125308, 0.905135, -0.406238,
		33.355408, 39.170433, 45.704620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964397, 38.670612, 45.873291>,  <33.267689, 38.536839, 45.988987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964397, 38.670612, 45.873291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782860, 39.023937, 45.920261>,  <33.673939, 39.235931, 45.948444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782860, 39.023937, 45.920261>,  <33.964397, 38.670612, 45.873291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782860, 39.023937, 45.920261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630347, 0.225100, 0.742962,
		0.629832, 0.411210, -0.658952,
		-0.453844, 0.883310, 0.117430,
		33.646706, 39.288929, 45.955490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427235, 39.045418, 45.970982>,  <33.964397, 38.670612, 45.873291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427235, 39.045418, 45.970982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115871, 39.254215, 46.110470>,  <33.929054, 39.379494, 46.194164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115871, 39.254215, 46.110470>,  <34.427235, 39.045418, 45.970982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115871, 39.254215, 46.110470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562115, 0.332261, 0.757383,
		0.279484, 0.785572, -0.552055,
		-0.778406, 0.521995, 0.348720,
		33.882351, 39.410812, 46.215084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745277, 39.605400, 46.373882>,  <34.427235, 39.045418, 45.970982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745277, 39.605400, 46.373882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370392, 39.576107, 46.510277>,  <34.145462, 39.558529, 46.592113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370392, 39.576107, 46.510277>,  <34.745277, 39.605400, 46.373882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370392, 39.576107, 46.510277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341517, 0.005577, 0.939859,
		-0.070733, 0.997299, 0.019785,
		-0.937210, -0.073236, 0.340989,
		34.089230, 39.554138, 46.612572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028965, 40.089535, 46.003197>,  <34.745277, 39.605400, 46.373882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028965, 40.089535, 46.003197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407715, 40.202557, 45.941750>,  <35.634964, 40.270370, 45.904881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407715, 40.202557, 45.941750>,  <35.028965, 40.089535, 46.003197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407715, 40.202557, 45.941750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029343, -0.399769, -0.916146,
		-0.320271, 0.871980, -0.370239,
		0.946871, 0.282551, -0.153621,
		35.691776, 40.287323, 45.895664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023544, 40.449894, 45.372845>,  <35.028965, 40.089535, 46.003197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023544, 40.449894, 45.372845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394524, 40.318054, 45.443504>,  <35.617111, 40.238953, 45.485901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394524, 40.318054, 45.443504>,  <35.023544, 40.449894, 45.372845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394524, 40.318054, 45.443504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072859, -0.304069, -0.949860,
		0.366783, 0.893817, -0.257994,
		0.927449, -0.329595, 0.176650,
		35.672760, 40.219177, 45.496498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470890, 40.778580, 44.795956>,  <35.023544, 40.449894, 45.372845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470890, 40.778580, 44.795956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667049, 40.456261, 44.928745>,  <35.784744, 40.262871, 45.008419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667049, 40.456261, 44.928745>,  <35.470890, 40.778580, 44.795956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667049, 40.456261, 44.928745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175959, -0.281528, -0.943282,
		0.853549, 0.520999, 0.003725,
		0.490400, -0.805793, 0.331972,
		35.814171, 40.214523, 45.028336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148193, 40.758530, 44.393990>,  <35.470890, 40.778580, 44.795956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148193, 40.758530, 44.393990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.109283, 40.392185, 44.549801>,  <36.085938, 40.172379, 44.643288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.109283, 40.392185, 44.549801>,  <36.148193, 40.758530, 44.393990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109283, 40.392185, 44.549801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074238, -0.383620, -0.920502,
		0.992485, -0.118456, -0.030677,
		-0.097271, -0.915863, 0.389531,
		36.080101, 40.117428, 44.666660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644234, 40.430996, 44.044365>,  <36.148193, 40.758530, 44.393990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644234, 40.430996, 44.044365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402248, 40.148247, 44.190979>,  <36.257057, 39.978596, 44.278946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402248, 40.148247, 44.190979>,  <36.644234, 40.430996, 44.044365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402248, 40.148247, 44.190979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104939, -0.385529, -0.916709,
		0.789306, -0.593041, 0.159053,
		-0.604966, -0.706873, 0.366534,
		36.220760, 39.936184, 44.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926926, 39.816994, 43.946148>,  <36.644234, 40.430996, 44.044365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926926, 39.816994, 43.946148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552948, 39.681366, 43.987942>,  <36.328564, 39.599991, 44.013020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552948, 39.681366, 43.987942>,  <36.926926, 39.816994, 43.946148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552948, 39.681366, 43.987942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017869, -0.339110, -0.940577,
		0.354352, -0.877518, 0.323107,
		-0.934942, -0.339069, 0.104484,
		36.272465, 39.579647, 44.019287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963490, 39.138336, 43.636890>,  <36.926926, 39.816994, 43.946148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963490, 39.138336, 43.636890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583416, 39.262714, 43.645424>,  <36.355370, 39.337341, 43.650543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583416, 39.262714, 43.645424>,  <36.963490, 39.138336, 43.636890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583416, 39.262714, 43.645424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149200, -0.393688, -0.907055,
		-0.273647, -0.865056, 0.420471,
		-0.950187, 0.310947, 0.021335,
		36.298359, 39.355999, 43.651825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571037, 38.609127, 43.297020>,  <36.963490, 39.138336, 43.636890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571037, 38.609127, 43.297020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287437, 38.891155, 43.291294>,  <36.117279, 39.060371, 43.287857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287437, 38.891155, 43.291294>,  <36.571037, 38.609127, 43.297020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287437, 38.891155, 43.291294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290216, -0.310212, -0.905286,
		-0.642727, -0.637691, 0.424561,
		-0.708997, 0.705066, -0.014314,
		36.074738, 39.102676, 43.286999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856838, 38.406433, 43.085018>,  <36.571037, 38.609127, 43.297020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856838, 38.406433, 43.085018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.886810, 38.785549, 42.961029>,  <35.904793, 39.013020, 42.886635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.886810, 38.785549, 42.961029>,  <35.856838, 38.406433, 43.085018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886810, 38.785549, 42.961029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402077, -0.255739, -0.879165,
		-0.912534, 0.190508, 0.361922,
		0.074931, 0.947789, -0.309970,
		35.909290, 39.069885, 42.868038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319695, 38.447651, 42.664307>,  <35.856838, 38.406433, 43.085018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319695, 38.447651, 42.664307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550365, 38.763069, 42.578850>,  <35.688766, 38.952320, 42.527576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550365, 38.763069, 42.578850>,  <35.319695, 38.447651, 42.664307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550365, 38.763069, 42.578850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430090, 0.070685, -0.900015,
		-0.694601, 0.610901, 0.379907,
		0.576673, 0.788546, -0.213644,
		35.723366, 38.999634, 42.514755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899666, 38.891556, 42.267342>,  <35.319695, 38.447651, 42.664307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899666, 38.891556, 42.267342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256775, 39.050701, 42.182816>,  <35.471043, 39.146191, 42.132099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256775, 39.050701, 42.182816>,  <34.899666, 38.891556, 42.267342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256775, 39.050701, 42.182816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284054, 0.133077, -0.949528,
		-0.349663, 0.907741, 0.231823,
		0.892776, 0.397866, -0.211316,
		35.524609, 39.170059, 42.119419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765869, 39.295021, 41.685974>,  <34.899666, 38.891556, 42.267342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765869, 39.295021, 41.685974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163982, 39.257118, 41.677738>,  <35.402851, 39.234379, 41.672798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163982, 39.257118, 41.677738>,  <34.765869, 39.295021, 41.685974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163982, 39.257118, 41.677738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023603, -0.030834, -0.999246,
		0.094048, 0.995023, -0.032925,
		0.995288, -0.094754, -0.020586,
		35.462570, 39.228691, 41.671562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988400, 39.710445, 41.153225>,  <34.765869, 39.295021, 41.685974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988400, 39.710445, 41.153225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.300014, 39.467552, 41.215660>,  <35.486984, 39.321815, 41.253120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.300014, 39.467552, 41.215660>,  <34.988400, 39.710445, 41.153225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300014, 39.467552, 41.215660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039127, -0.201387, -0.978730,
		0.625755, 0.768575, -0.133128,
		0.779037, -0.607237, 0.156091,
		35.533726, 39.285381, 41.262486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489418, 39.902920, 40.749531>,  <34.988400, 39.710445, 41.153225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489418, 39.902920, 40.749531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613934, 39.531197, 40.829018>,  <35.688644, 39.308163, 40.876709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613934, 39.531197, 40.829018>,  <35.489418, 39.902920, 40.749531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613934, 39.531197, 40.829018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087197, -0.180298, -0.979740,
		0.946305, 0.322314, 0.024907,
		0.311293, -0.929304, 0.198722,
		35.707321, 39.252407, 40.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.378550, 32.483730, 26.849693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589508, 32.223125, 27.067825>,  <28.716084, 32.066761, 27.198706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589508, 32.223125, 27.067825>,  <28.378550, 32.483730, 26.849693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589508, 32.223125, 27.067825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578038, 0.195259, 0.792304,
		-0.622677, -0.733080, -0.273620,
		0.527395, -0.651512, 0.545331,
		28.747726, 32.027672, 27.231424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946863, 31.913296, 27.134638>,  <28.378550, 32.483730, 26.849693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946863, 31.913296, 27.134638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266169, 31.942413, 27.373795>,  <28.457752, 31.959883, 27.517288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266169, 31.942413, 27.373795>,  <27.946863, 31.913296, 27.134638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266169, 31.942413, 27.373795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593732, 0.262007, 0.760812,
		-0.101269, -0.962317, 0.252370,
		0.798265, 0.072793, 0.597891,
		28.505648, 31.964251, 27.553162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679411, 31.645664, 27.683739>,  <27.946863, 31.913296, 27.134638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679411, 31.645664, 27.683739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018473, 31.817400, 27.808413>,  <28.221910, 31.920441, 27.883217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018473, 31.817400, 27.808413>,  <27.679411, 31.645664, 27.683739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018473, 31.817400, 27.808413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441745, 0.245769, 0.862821,
		0.293839, -0.869061, 0.397985,
		0.847656, 0.429338, 0.311686,
		28.272770, 31.946201, 27.901918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017714, 31.218100, 28.245174>,  <27.679411, 31.645664, 27.683739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017714, 31.218100, 28.245174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125984, 31.600113, 28.293587>,  <28.190947, 31.829321, 28.322634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125984, 31.600113, 28.293587>,  <28.017714, 31.218100, 28.245174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125984, 31.600113, 28.293587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398019, -0.003451, 0.917370,
		0.876536, -0.296483, 0.379187,
		0.270676, 0.955032, 0.121031,
		28.207188, 31.886623, 28.329897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344448, 31.245848, 29.000326>,  <28.017714, 31.218100, 28.245174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344448, 31.245848, 29.000326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269367, 31.620970, 28.883507>,  <28.224319, 31.846043, 28.813416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269367, 31.620970, 28.883507>,  <28.344448, 31.245848, 29.000326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269367, 31.620970, 28.883507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506711, 0.162261, 0.846709,
		0.841435, 0.306911, 0.444739,
		-0.187701, 0.937804, -0.292047,
		28.213057, 31.902311, 28.795893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363739, 31.541000, 29.626560>,  <28.344448, 31.245848, 29.000326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363739, 31.541000, 29.626560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.196476, 31.815849, 29.388901>,  <28.096119, 31.980759, 29.246305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.196476, 31.815849, 29.388901>,  <28.363739, 31.541000, 29.626560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196476, 31.815849, 29.388901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451279, 0.410511, 0.792355,
		0.788348, 0.599455, 0.138425,
		-0.418156, 0.687120, -0.594147,
		28.071030, 32.021984, 29.210657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555622, 32.155403, 29.941599>,  <28.363739, 31.541000, 29.626560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555622, 32.155403, 29.941599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.235973, 32.233608, 29.714203>,  <28.044184, 32.280533, 29.577766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.235973, 32.233608, 29.714203>,  <28.555622, 32.155403, 29.941599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235973, 32.233608, 29.714203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469185, 0.388390, 0.793107,
		0.375860, 0.900515, -0.218638,
		-0.799121, 0.195515, -0.568488,
		27.996237, 32.292263, 29.543655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427023, 32.891239, 30.020180>,  <28.555622, 32.155403, 29.941599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427023, 32.891239, 30.020180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083805, 32.769688, 29.854568>,  <27.877874, 32.696758, 29.755201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083805, 32.769688, 29.854568>,  <28.427023, 32.891239, 30.020180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083805, 32.769688, 29.854568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502885, 0.660752, 0.557237,
		0.104237, 0.686342, -0.719770,
		-0.858045, -0.303878, -0.414026,
		27.826391, 32.678524, 29.730360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082788, 33.441093, 29.762571>,  <28.427023, 32.891239, 30.020180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082788, 33.441093, 29.762571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794519, 33.172153, 29.830200>,  <27.621559, 33.010792, 29.870777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794519, 33.172153, 29.830200>,  <28.082788, 33.441093, 29.762571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794519, 33.172153, 29.830200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408866, 0.609136, 0.679545,
		-0.559877, 0.420600, -0.713886,
		-0.720671, -0.672346, 0.169072,
		27.578318, 32.970451, 29.880922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573570, 33.866795, 29.923084>,  <28.082788, 33.441093, 29.762571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573570, 33.866795, 29.923084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435793, 33.519196, 30.065187>,  <27.353127, 33.310638, 30.150450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435793, 33.519196, 30.065187>,  <27.573570, 33.866795, 29.923084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435793, 33.519196, 30.065187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514588, 0.491264, 0.702751,
		-0.785212, 0.059247, -0.616386,
		-0.344444, -0.868994, 0.355258,
		27.332460, 33.258499, 30.171764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855278, 33.940823, 29.911135>,  <27.573570, 33.866795, 29.923084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855278, 33.940823, 29.911135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976385, 33.657639, 30.166361>,  <27.049049, 33.487728, 30.319496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976385, 33.657639, 30.166361>,  <26.855278, 33.940823, 29.911135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976385, 33.657639, 30.166361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494190, 0.455835, 0.740264,
		-0.814928, -0.539453, -0.211854,
		0.302767, -0.707958, 0.638065,
		27.067215, 33.445251, 30.357780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282995, 33.761433, 30.304501>,  <26.855278, 33.940823, 29.911135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282995, 33.761433, 30.304501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583904, 33.640667, 30.538742>,  <26.764450, 33.568207, 30.679287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583904, 33.640667, 30.538742>,  <26.282995, 33.761433, 30.304501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583904, 33.640667, 30.538742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446474, 0.420023, 0.790090,
		-0.484505, -0.855821, 0.181176,
		0.752274, -0.301912, 0.585605,
		26.809586, 33.550095, 30.714424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984550, 33.419407, 30.785271>,  <26.282995, 33.761433, 30.304501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984550, 33.419407, 30.785271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.331472, 33.547951, 30.937326>,  <26.539625, 33.625076, 31.028561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.331472, 33.547951, 30.937326>,  <25.984550, 33.419407, 30.785271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331472, 33.547951, 30.937326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456502, 0.209030, 0.864819,
		0.198449, -0.923601, 0.327991,
		0.867308, 0.321351, 0.380144,
		26.591663, 33.644360, 31.051369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035530, 33.176792, 31.504150>,  <25.984550, 33.419407, 30.785271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035530, 33.176792, 31.504150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.286474, 33.487553, 31.482853>,  <26.437040, 33.674011, 31.470074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.286474, 33.487553, 31.482853>,  <26.035530, 33.176792, 31.504150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286474, 33.487553, 31.482853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360260, 0.350173, 0.864634,
		0.690384, -0.523256, 0.499573,
		0.627362, 0.776906, -0.053246,
		26.474682, 33.720623, 31.466879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484690, 33.037167, 32.017838>,  <26.035530, 33.176792, 31.504150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484690, 33.037167, 32.017838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.478622, 33.427467, 31.930490>,  <26.474981, 33.661648, 31.878082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.478622, 33.427467, 31.930490>,  <26.484690, 33.037167, 32.017838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478622, 33.427467, 31.930490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104561, 0.215643, 0.970858,
		0.994403, 0.037559, 0.098755,
		-0.015169, 0.975750, -0.218364,
		26.474072, 33.720192, 31.864981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882301, 33.324108, 32.563114>,  <26.484690, 33.037167, 32.017838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882301, 33.324108, 32.563114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706533, 33.660603, 32.437103>,  <26.601072, 33.862499, 32.361496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706533, 33.660603, 32.437103>,  <26.882301, 33.324108, 32.563114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706533, 33.660603, 32.437103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087237, 0.309074, 0.947028,
		0.894036, 0.443624, -0.062427,
		-0.439419, 0.841232, -0.315024,
		26.574707, 33.912971, 32.342594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128649, 33.900066, 33.051910>,  <26.882301, 33.324108, 32.563114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128649, 33.900066, 33.051910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810513, 34.047428, 32.859364>,  <26.619631, 34.135845, 32.743835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810513, 34.047428, 32.859364>,  <27.128649, 33.900066, 33.051910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810513, 34.047428, 32.859364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306225, 0.441147, 0.843573,
		0.523128, 0.818334, -0.238048,
		-0.795338, 0.368400, -0.481371,
		26.571911, 34.157948, 32.714951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023035, 34.605396, 33.366879>,  <27.128649, 33.900066, 33.051910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023035, 34.605396, 33.366879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681400, 34.494392, 33.190910>,  <26.476419, 34.427792, 33.085331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681400, 34.494392, 33.190910>,  <27.023035, 34.605396, 33.366879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681400, 34.494392, 33.190910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513724, 0.317690, 0.796970,
		-0.081406, 0.906677, -0.413896,
		-0.854085, -0.277506, -0.439920,
		26.425175, 34.411140, 33.058933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756201, 34.657536, 34.054031>,  <27.023035, 34.605396, 33.366879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756201, 34.657536, 34.054031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.008318, 34.960358, 33.985214>,  <27.159588, 35.142052, 33.943924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.008318, 34.960358, 33.985214>,  <26.756201, 34.657536, 34.054031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008318, 34.960358, 33.985214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236886, 0.023502, 0.971253,
		0.739335, -0.652928, -0.164523,
		0.630292, 0.757055, -0.172046,
		27.197405, 35.187473, 33.933601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408827, 34.500660, 34.265759>,  <26.756201, 34.657536, 34.054031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408827, 34.500660, 34.265759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343861, 34.894516, 34.291374>,  <27.304882, 35.130829, 34.306744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343861, 34.894516, 34.291374>,  <27.408827, 34.500660, 34.265759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343861, 34.894516, 34.291374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328480, -0.007248, 0.944483,
		0.930442, 0.174433, -0.322259,
		-0.162414, 0.984642, 0.064042,
		27.295137, 35.189907, 34.310585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683508, 33.852646, 33.908852>,  <27.408827, 34.500660, 34.265759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683508, 33.852646, 33.908852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668039, 33.558197, 34.179150>,  <27.658758, 33.381527, 34.341328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668039, 33.558197, 34.179150>,  <27.683508, 33.852646, 33.908852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668039, 33.558197, 34.179150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017022, -0.676641, -0.736116,
		0.999107, -0.016965, 0.038697,
		-0.038672, -0.736118, 0.675748,
		27.656437, 33.337360, 34.381874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078281, 33.437325, 33.529179>,  <27.683508, 33.852646, 33.908852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078281, 33.437325, 33.529179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905928, 33.212170, 33.811314>,  <27.802515, 33.077076, 33.980595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905928, 33.212170, 33.811314>,  <28.078281, 33.437325, 33.529179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905928, 33.212170, 33.811314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000297, -0.781526, -0.623873,
		0.902408, -0.269026, 0.336579,
		-0.430883, -0.562888, 0.705334,
		27.776663, 33.043304, 34.022915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528084, 32.973118, 33.697361>,  <28.078281, 33.437325, 33.529179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528084, 32.973118, 33.697361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157791, 32.847164, 33.781143>,  <27.935616, 32.771591, 33.831413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157791, 32.847164, 33.781143>,  <28.528084, 32.973118, 33.697361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157791, 32.847164, 33.781143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135813, -0.793707, -0.592945,
		0.352956, -0.520460, 0.777524,
		-0.925731, -0.314881, 0.209458,
		27.880072, 32.752701, 33.843979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649015, 32.223904, 33.898396>,  <28.528084, 32.973118, 33.697361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649015, 32.223904, 33.898396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255241, 32.259144, 33.837559>,  <28.018978, 32.280289, 33.801056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255241, 32.259144, 33.837559>,  <28.649015, 32.223904, 33.898396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255241, 32.259144, 33.837559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014719, -0.820946, -0.570817,
		-0.175143, -0.564169, 0.806869,
		-0.984433, 0.088098, -0.152087,
		27.959911, 32.285572, 33.791931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417212, 31.526222, 33.999428>,  <28.649015, 32.223904, 33.898396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417212, 31.526222, 33.999428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132978, 31.714243, 33.790001>,  <27.962439, 31.827055, 33.664345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132978, 31.714243, 33.790001>,  <28.417212, 31.526222, 33.999428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132978, 31.714243, 33.790001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049268, -0.775525, -0.629392,
		-0.701883, -0.421442, 0.574236,
		-0.710586, 0.470050, -0.523564,
		27.919804, 31.855259, 33.632931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897552, 31.024580, 33.958282>,  <28.417212, 31.526222, 33.999428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897552, 31.024580, 33.958282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829830, 31.278683, 33.656876>,  <27.789196, 31.431145, 33.476032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829830, 31.278683, 33.656876>,  <27.897552, 31.024580, 33.958282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829830, 31.278683, 33.656876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001294, -0.764408, -0.644732,
		-0.985563, -0.110132, 0.128596,
		-0.169305, 0.635258, -0.753514,
		27.779039, 31.469259, 33.430820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318508, 30.730623, 33.676376>,  <27.897552, 31.024580, 33.958282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318508, 30.730623, 33.676376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451120, 30.988230, 33.400600>,  <27.530687, 31.142794, 33.235134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451120, 30.988230, 33.400600>,  <27.318508, 30.730623, 33.676376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451120, 30.988230, 33.400600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342225, -0.598909, -0.724010,
		-0.879187, 0.475976, 0.021843,
		0.331530, 0.644015, -0.689444,
		27.550579, 31.181435, 33.193768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804722, 30.666939, 33.190849>,  <27.318508, 30.730623, 33.676376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804722, 30.666939, 33.190849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106909, 30.848495, 33.001850>,  <27.288221, 30.957430, 32.888451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106909, 30.848495, 33.001850>,  <26.804722, 30.666939, 33.190849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106909, 30.848495, 33.001850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307057, -0.391782, -0.867308,
		-0.578780, 0.800305, -0.156607,
		0.755466, 0.453893, -0.472495,
		27.333549, 30.984663, 32.860100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502493, 31.045752, 32.605995>,  <26.804722, 30.666939, 33.190849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502493, 31.045752, 32.605995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.886599, 30.968437, 32.525463>,  <27.117062, 30.922049, 32.477142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.886599, 30.968437, 32.525463>,  <26.502493, 31.045752, 32.605995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886599, 30.968437, 32.525463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268092, -0.438260, -0.857936,
		0.077591, 0.877820, -0.472664,
		0.960264, -0.193286, -0.201332,
		27.174677, 30.910452, 32.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560263, 31.252834, 31.907076>,  <26.502493, 31.045752, 32.605995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560263, 31.252834, 31.907076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.895832, 31.036852, 31.934372>,  <27.097174, 30.907263, 31.950748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.895832, 31.036852, 31.934372>,  <26.560263, 31.252834, 31.907076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895832, 31.036852, 31.934372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171401, -0.381117, -0.908499,
		0.516556, 0.750465, -0.412277,
		0.838923, -0.539956, 0.068238,
		27.147509, 30.874865, 31.954844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954515, 31.394741, 31.337652>,  <26.560263, 31.252834, 31.907076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954515, 31.394741, 31.337652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076670, 31.031437, 31.452057>,  <27.149963, 30.813456, 31.520700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076670, 31.031437, 31.452057>,  <26.954515, 31.394741, 31.337652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076670, 31.031437, 31.452057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041169, -0.312675, -0.948968,
		0.951338, 0.278028, -0.132880,
		0.305388, -0.908259, 0.286013,
		27.168285, 30.758959, 31.537861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475767, 31.310583, 30.868366>,  <26.954515, 31.394741, 31.337652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475767, 31.310583, 30.868366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377422, 30.953928, 31.020437>,  <27.318417, 30.739935, 31.111681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377422, 30.953928, 31.020437>,  <27.475767, 31.310583, 30.868366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377422, 30.953928, 31.020437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174990, -0.426603, -0.887349,
		0.953379, -0.151637, 0.260912,
		-0.245860, -0.891637, 0.380179,
		27.303665, 30.686438, 31.134491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934912, 30.909962, 30.452698>,  <27.475767, 31.310583, 30.868366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934912, 30.909962, 30.452698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685650, 30.651836, 30.629446>,  <27.536093, 30.496962, 30.735495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685650, 30.651836, 30.629446>,  <27.934912, 30.909962, 30.452698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685650, 30.651836, 30.629446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059823, -0.602656, -0.795755,
		0.779808, -0.469444, 0.414152,
		-0.623154, -0.645312, 0.441872,
		27.498703, 30.458242, 30.762009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262314, 30.120302, 30.481974>,  <27.934912, 30.909962, 30.452698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262314, 30.120302, 30.481974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864370, 30.086134, 30.503733>,  <27.625605, 30.065634, 30.516788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864370, 30.086134, 30.503733>,  <28.262314, 30.120302, 30.481974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864370, 30.086134, 30.503733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001208, -0.527116, -0.849792,
		0.101264, -0.845489, 0.524303,
		-0.994859, -0.085420, 0.054399,
		27.565912, 30.060509, 30.520052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096146, 29.425716, 30.431473>,  <28.262314, 30.120302, 30.481974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096146, 29.425716, 30.431473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.787846, 29.645323, 30.302149>,  <27.602865, 29.777086, 30.224554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.787846, 29.645323, 30.302149>,  <28.096146, 29.425716, 30.431473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787846, 29.645323, 30.302149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003905, -0.511500, -0.859274,
		-0.637126, -0.661023, 0.396382,
		-0.770750, 0.549014, -0.323309,
		27.556622, 29.810026, 30.205156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718594, 28.965540, 30.215834>,  <28.096146, 29.425716, 30.431473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718594, 28.965540, 30.215834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539070, 29.275892, 30.038485>,  <27.431356, 29.462103, 29.932076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539070, 29.275892, 30.038485>,  <27.718594, 28.965540, 30.215834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539070, 29.275892, 30.038485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362881, -0.611639, -0.703005,
		-0.816632, -0.154624, 0.556061,
		-0.448810, 0.775880, -0.443374,
		27.404427, 29.508656, 29.905472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067514, 28.709194, 29.939838>,  <27.718594, 28.965540, 30.215834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067514, 28.709194, 29.939838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145731, 29.030230, 29.714409>,  <27.192661, 29.222851, 29.579151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145731, 29.030230, 29.714409>,  <27.067514, 28.709194, 29.939838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145731, 29.030230, 29.714409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349336, -0.479967, -0.804734,
		-0.916366, 0.354237, 0.186519,
		0.195543, 0.802589, -0.563573,
		27.204393, 29.271006, 29.545338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609940, 28.664991, 29.340290>,  <27.067514, 28.709194, 29.939838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609940, 28.664991, 29.340290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839832, 28.964355, 29.207888>,  <26.977768, 29.143974, 29.128447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839832, 28.964355, 29.207888>,  <26.609940, 28.664991, 29.340290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839832, 28.964355, 29.207888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268657, -0.209507, -0.940176,
		-0.772986, 0.629276, 0.080655,
		0.574732, 0.748411, -0.331005,
		27.012251, 29.188879, 29.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215139, 28.956642, 28.731676>,  <26.609940, 28.664991, 29.340290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215139, 28.956642, 28.731676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577711, 29.117094, 28.678795>,  <26.795254, 29.213366, 28.647066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577711, 29.117094, 28.678795>,  <26.215139, 28.956642, 28.731676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577711, 29.117094, 28.678795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017417, -0.277250, -0.960640,
		-0.421996, 0.873056, -0.244322,
		0.906430, 0.401131, -0.132204,
		26.849640, 29.237432, 28.639133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215025, 29.453251, 28.183243>,  <26.215139, 28.956642, 28.731676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215025, 29.453251, 28.183243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.588278, 29.319860, 28.236988>,  <26.812229, 29.239826, 28.269236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.588278, 29.319860, 28.236988>,  <26.215025, 29.453251, 28.183243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588278, 29.319860, 28.236988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048422, -0.253741, -0.966059,
		0.356253, 0.907969, -0.220627,
		0.933134, -0.333478, 0.134362,
		26.868217, 29.219816, 28.277296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471802, 29.681808, 27.624102>,  <26.215025, 29.453251, 28.183243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471802, 29.681808, 27.624102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720720, 29.400391, 27.761375>,  <26.870071, 29.231541, 27.843739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720720, 29.400391, 27.761375>,  <26.471802, 29.681808, 27.624102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720720, 29.400391, 27.761375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240934, -0.244981, -0.939114,
		0.744782, 0.667090, 0.017057,
		0.622294, -0.703545, 0.343182,
		26.907408, 29.189327, 27.864330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002529, 29.785141, 27.246414>,  <26.471802, 29.681808, 27.624102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002529, 29.785141, 27.246414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043358, 29.397757, 27.337332>,  <27.067856, 29.165325, 27.391882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043358, 29.397757, 27.337332>,  <27.002529, 29.785141, 27.246414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043358, 29.397757, 27.337332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208018, -0.202658, -0.956900,
		0.972784, 0.144956, 0.180772,
		0.102073, -0.968461, 0.227296,
		27.073980, 29.107218, 27.405521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.160000, 40.310329, 45.915642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.885166, 40.039310, 46.020599>,  <39.720268, 39.876698, 46.083572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.885166, 40.039310, 46.020599>,  <40.160000, 40.310329, 45.915642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885166, 40.039310, 46.020599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119480, 0.461579, 0.879016,
		-0.716689, 0.572605, -0.398096,
		-0.687082, -0.677546, 0.262394,
		39.679043, 39.836048, 46.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509838, 40.714790, 46.007858>,  <40.160000, 40.310329, 45.915642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509838, 40.714790, 46.007858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515682, 40.381466, 46.228905>,  <39.519188, 40.181473, 46.361534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515682, 40.381466, 46.228905>,  <39.509838, 40.714790, 46.007858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515682, 40.381466, 46.228905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205686, 0.538353, 0.817233,
		-0.978509, -0.125604, -0.163535,
		0.014608, -0.833307, 0.552618,
		39.520065, 40.131474, 46.394691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958920, 40.849575, 46.434788>,  <39.509838, 40.714790, 46.007858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958920, 40.849575, 46.434788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.175674, 40.546837, 46.580963>,  <39.305729, 40.365192, 46.668667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.175674, 40.546837, 46.580963>,  <38.958920, 40.849575, 46.434788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175674, 40.546837, 46.580963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149087, 0.341351, 0.928037,
		-0.827122, -0.557373, 0.072138,
		0.541888, -0.756845, 0.365436,
		39.338242, 40.319782, 46.690594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529785, 40.664474, 46.914963>,  <38.958920, 40.849575, 46.434788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529785, 40.664474, 46.914963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.889961, 40.521561, 47.014202>,  <39.106068, 40.435810, 47.073746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.889961, 40.521561, 47.014202>,  <38.529785, 40.664474, 46.914963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889961, 40.521561, 47.014202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181774, 0.209112, 0.960849,
		-0.395180, -0.910285, 0.123347,
		0.900439, -0.357287, 0.248102,
		39.160091, 40.414375, 47.088634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420372, 40.138439, 47.393085>,  <38.529785, 40.664474, 46.914963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420372, 40.138439, 47.393085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795746, 40.263779, 47.451263>,  <39.020969, 40.338982, 47.486172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795746, 40.263779, 47.451263>,  <38.420372, 40.138439, 47.393085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795746, 40.263779, 47.451263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156651, 0.010736, 0.987596,
		0.307905, -0.949576, 0.059162,
		0.938433, 0.313354, 0.145446,
		39.077274, 40.357784, 47.494896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605816, 39.812065, 47.987301>,  <38.420372, 40.138439, 47.393085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605816, 39.812065, 47.987301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882130, 40.098877, 47.950016>,  <39.047920, 40.270962, 47.927643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882130, 40.098877, 47.950016>,  <38.605816, 39.812065, 47.987301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882130, 40.098877, 47.950016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010769, 0.118700, 0.992872,
		0.722979, -0.686866, 0.074274,
		0.690786, 0.717026, -0.093214,
		39.089367, 40.313984, 47.922050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218361, 39.727329, 48.371212>,  <38.605816, 39.812065, 47.987301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218361, 39.727329, 48.371212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.225842, 40.123356, 48.315479>,  <39.230328, 40.360973, 48.282040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.225842, 40.123356, 48.315479>,  <39.218361, 39.727329, 48.371212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225842, 40.123356, 48.315479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031418, 0.138708, 0.989835,
		0.999331, -0.022886, -0.028512,
		0.018698, 0.990069, -0.139335,
		39.231449, 40.420376, 48.273678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694771, 40.003929, 48.823040>,  <39.218361, 39.727329, 48.371212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694771, 40.003929, 48.823040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480721, 40.330017, 48.734447>,  <39.352291, 40.525669, 48.681290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480721, 40.330017, 48.734447>,  <39.694771, 40.003929, 48.823040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480721, 40.330017, 48.734447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053196, 0.229144, 0.971938,
		0.843098, 0.531888, -0.079253,
		-0.535123, 0.815223, -0.221486,
		39.320183, 40.574585, 48.668003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011253, 40.430447, 49.237381>,  <39.694771, 40.003929, 48.823040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011253, 40.430447, 49.237381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666748, 40.610992, 49.143997>,  <39.460045, 40.719318, 49.087967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666748, 40.610992, 49.143997>,  <40.011253, 40.430447, 49.237381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666748, 40.610992, 49.143997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126252, 0.254952, 0.958676,
		0.492231, 0.855145, -0.162594,
		-0.861260, 0.451362, -0.233459,
		39.408371, 40.746403, 49.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120358, 41.047024, 49.454456>,  <40.011253, 40.430447, 49.237381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120358, 41.047024, 49.454456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.722584, 41.008827, 49.436653>,  <39.483921, 40.985909, 49.425972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.722584, 41.008827, 49.436653>,  <40.120358, 41.047024, 49.454456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722584, 41.008827, 49.436653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071390, 0.300057, 0.951246,
		-0.077479, 0.949130, -0.305204,
		-0.994435, -0.095490, -0.044510,
		39.424252, 40.980179, 49.423302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718964, 41.745029, 49.673195>,  <40.120358, 41.047024, 49.454456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718964, 41.745029, 49.673195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478481, 41.431614, 49.735958>,  <39.334190, 41.243565, 49.773617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478481, 41.431614, 49.735958>,  <39.718964, 41.745029, 49.673195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478481, 41.431614, 49.735958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109554, 0.275324, 0.955089,
		-0.791548, 0.557016, -0.251366,
		-0.601207, -0.783537, 0.156909,
		39.298119, 41.196552, 49.783031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220764, 42.021172, 50.036842>,  <39.718964, 41.745029, 49.673195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220764, 42.021172, 50.036842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151096, 41.627945, 50.059605>,  <39.109295, 41.392010, 50.073261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151096, 41.627945, 50.059605>,  <39.220764, 42.021172, 50.036842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151096, 41.627945, 50.059605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105872, 0.076154, 0.991460,
		-0.979007, 0.166661, -0.117344,
		-0.174173, -0.983069, 0.056910,
		39.098843, 41.333023, 50.076679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613163, 42.025085, 50.393421>,  <39.220764, 42.021172, 50.036842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613163, 42.025085, 50.393421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789532, 41.667904, 50.429710>,  <38.895351, 41.453594, 50.451485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789532, 41.667904, 50.429710>,  <38.613163, 42.025085, 50.393421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789532, 41.667904, 50.429710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175595, 0.184942, 0.966935,
		-0.880202, -0.410411, 0.238342,
		0.440920, -0.892950, 0.090720,
		38.921806, 41.400021, 50.456924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202721, 41.635811, 50.871822>,  <38.613163, 42.025085, 50.393421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202721, 41.635811, 50.871822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595787, 41.567818, 50.842209>,  <38.831627, 41.527020, 50.824440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595787, 41.567818, 50.842209>,  <38.202721, 41.635811, 50.871822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595787, 41.567818, 50.842209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158623, 0.564006, 0.810393,
		-0.095999, -0.808085, 0.581190,
		0.982661, -0.169987, -0.074037,
		38.890587, 41.516823, 50.820000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600777, 41.589760, 51.182552>,  <38.202721, 41.635811, 50.871822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600777, 41.589760, 51.182552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202000, 41.558784, 51.186554>,  <36.962730, 41.540199, 51.188957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202000, 41.558784, 51.186554>,  <37.600777, 41.589760, 51.182552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202000, 41.558784, 51.186554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005081, -0.192229, -0.981337,
		0.077913, -0.978290, 0.192036,
		-0.996948, -0.077435, 0.010007,
		36.902916, 41.535553, 51.189556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386292, 40.932007, 50.841175>,  <37.600777, 41.589760, 51.182552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386292, 40.932007, 50.841175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056320, 41.155468, 50.806778>,  <36.858337, 41.289543, 50.786140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056320, 41.155468, 50.806778>,  <37.386292, 40.932007, 50.841175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056320, 41.155468, 50.806778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023807, -0.117666, -0.992768,
		-0.564729, -0.821014, 0.083767,
		-0.824933, 0.558651, -0.085996,
		36.808842, 41.323063, 50.780979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831860, 40.522976, 50.541729>,  <37.386292, 40.932007, 50.841175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831860, 40.522976, 50.541729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710255, 40.900196, 50.487709>,  <36.637291, 41.126526, 50.455296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710255, 40.900196, 50.487709>,  <36.831860, 40.522976, 50.541729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710255, 40.900196, 50.487709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080820, -0.166782, -0.982676,
		-0.949234, -0.287832, 0.126921,
		-0.304013, 0.943047, -0.135052,
		36.619049, 41.183109, 50.447193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166847, 40.434135, 50.118542>,  <36.831860, 40.522976, 50.541729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166847, 40.434135, 50.118542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290539, 40.809311, 50.055744>,  <36.364754, 41.034416, 50.018066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290539, 40.809311, 50.055744>,  <36.166847, 40.434135, 50.118542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290539, 40.809311, 50.055744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133149, -0.120755, -0.983712,
		-0.941621, 0.325092, 0.087545,
		0.309226, 0.937941, -0.156991,
		36.383305, 41.090694, 50.008648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652618, 40.735386, 49.767433>,  <36.166847, 40.434135, 50.118542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652618, 40.735386, 49.767433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981064, 40.954201, 49.702297>,  <36.178131, 41.085491, 49.663216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981064, 40.954201, 49.702297>,  <35.652618, 40.735386, 49.767433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981064, 40.954201, 49.702297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168093, -0.040870, -0.984923,
		-0.545446, 0.836109, 0.058395,
		0.821117, 0.547038, -0.162836,
		36.227398, 41.118313, 49.653446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427349, 41.270275, 49.288746>,  <35.652618, 40.735386, 49.767433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427349, 41.270275, 49.288746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826084, 41.289345, 49.263329>,  <36.065327, 41.300789, 49.248077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826084, 41.289345, 49.263329>,  <35.427349, 41.270275, 49.288746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826084, 41.289345, 49.263329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078223, 0.449605, -0.889796,
		-0.013855, 0.891954, 0.451913,
		0.996840, 0.047678, -0.063542,
		36.125137, 41.303650, 49.244267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494335, 42.001442, 48.975933>,  <35.427349, 41.270275, 49.288746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494335, 42.001442, 48.975933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806194, 41.760521, 48.907364>,  <35.993309, 41.615967, 48.866222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806194, 41.760521, 48.907364>,  <35.494335, 42.001442, 48.975933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806194, 41.760521, 48.907364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131754, 0.109843, -0.985178,
		0.612207, 0.790673, 0.006283,
		0.779644, -0.602305, -0.171421,
		36.040089, 41.579830, 48.855938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040257, 42.381336, 48.447540>,  <35.494335, 42.001442, 48.975933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040257, 42.381336, 48.447540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079468, 41.983288, 48.452087>,  <36.102993, 41.744461, 48.454815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079468, 41.983288, 48.452087>,  <36.040257, 42.381336, 48.447540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079468, 41.983288, 48.452087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015491, -0.012946, -0.999796,
		0.995063, 0.097831, -0.016684,
		0.098027, -0.995119, 0.011367,
		36.108875, 41.684753, 48.455498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505104, 42.192337, 47.837505>,  <36.040257, 42.381336, 48.447540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505104, 42.192337, 47.837505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325600, 41.844372, 47.919353>,  <36.217896, 41.635593, 47.968464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325600, 41.844372, 47.919353>,  <36.505104, 42.192337, 47.837505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325600, 41.844372, 47.919353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087750, -0.270761, -0.958639,
		0.889332, -0.412245, 0.197842,
		-0.448762, -0.869909, 0.204622,
		36.190971, 41.583401, 47.980740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902233, 41.715252, 47.538918>,  <36.505104, 42.192337, 47.837505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902233, 41.715252, 47.538918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548996, 41.533092, 47.584080>,  <36.337051, 41.423798, 47.611176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548996, 41.533092, 47.584080>,  <36.902233, 41.715252, 47.538918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548996, 41.533092, 47.584080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107414, -0.430479, -0.896186,
		0.456730, -0.779292, 0.429072,
		-0.883097, -0.455403, 0.112906,
		36.284065, 41.396473, 47.617950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979446, 40.970051, 47.347206>,  <36.902233, 41.715252, 47.538918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979446, 40.970051, 47.347206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581059, 40.994949, 47.321354>,  <36.342026, 41.009888, 47.305843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581059, 40.994949, 47.321354>,  <36.979446, 40.970051, 47.347206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581059, 40.994949, 47.321354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012385, -0.618030, -0.786057,
		-0.088869, -0.783687, 0.614766,
		-0.995966, 0.062243, -0.064630,
		36.282269, 41.013622, 47.301964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704914, 40.264557, 47.316441>,  <36.979446, 40.970051, 47.347206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704914, 40.264557, 47.316441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447811, 40.528652, 47.161030>,  <36.293549, 40.687107, 47.067783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447811, 40.528652, 47.161030>,  <36.704914, 40.264557, 47.316441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447811, 40.528652, 47.161030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071338, -0.556548, -0.827747,
		-0.762740, -0.504325, 0.404826,
		-0.642758, 0.660235, -0.388524,
		36.254982, 40.726723, 47.044472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110317, 39.863743, 47.186066>,  <36.704914, 40.264557, 47.316441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110317, 39.863743, 47.186066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100204, 40.187477, 46.951347>,  <36.094135, 40.381718, 46.810516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100204, 40.187477, 46.951347>,  <36.110317, 39.863743, 47.186066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100204, 40.187477, 46.951347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326917, -0.561403, -0.760231,
		-0.944715, 0.172615, 0.278780,
		-0.025280, 0.809340, -0.586797,
		36.092621, 40.430279, 46.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499989, 39.873207, 46.793476>,  <36.110317, 39.863743, 47.186066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499989, 39.873207, 46.793476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706501, 40.116962, 46.552780>,  <35.830410, 40.263218, 46.408363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706501, 40.116962, 46.552780>,  <35.499989, 39.873207, 46.793476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706501, 40.116962, 46.552780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294422, -0.533508, -0.792896,
		-0.804218, 0.586526, -0.096024,
		0.516284, 0.609390, -0.601743,
		35.861385, 40.299778, 46.372257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749725, 39.946335, 47.045761>,  <35.499989, 39.873207, 46.793476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749725, 39.946335, 47.045761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370537, 39.818993, 47.046082>,  <34.143024, 39.742588, 47.046272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370537, 39.818993, 47.046082>,  <34.749725, 39.946335, 47.045761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370537, 39.818993, 47.046082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024929, 0.076731, 0.996740,
		-0.317377, 0.944862, -0.080675,
		-0.947972, -0.318354, 0.000798,
		34.086143, 39.723488, 47.046322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218044, 40.516438, 47.312809>,  <34.749725, 39.946335, 47.045761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218044, 40.516438, 47.312809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117859, 40.135040, 47.379875>,  <34.057747, 39.906200, 47.420116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117859, 40.135040, 47.379875>,  <34.218044, 40.516438, 47.312809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117859, 40.135040, 47.379875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126592, 0.139444, 0.982105,
		-0.959814, 0.267207, 0.085779,
		-0.250464, -0.953497, 0.167666,
		34.042721, 39.848991, 47.430176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778210, 40.577061, 47.908131>,  <34.218044, 40.516438, 47.312809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778210, 40.577061, 47.908131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872387, 40.188499, 47.895790>,  <33.928894, 39.955364, 47.888386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872387, 40.188499, 47.895790>,  <33.778210, 40.577061, 47.908131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872387, 40.188499, 47.895790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011269, -0.029015, 0.999515,
		-0.971823, -0.235674, 0.004115,
		0.235441, -0.971399, -0.030853,
		33.943020, 39.897079, 47.886536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334946, 40.132549, 48.313114>,  <33.778210, 40.577061, 47.908131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334946, 40.132549, 48.313114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665310, 39.908722, 48.285515>,  <33.863529, 39.774426, 48.268955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665310, 39.908722, 48.285515>,  <33.334946, 40.132549, 48.313114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665310, 39.908722, 48.285515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024169, -0.157400, 0.987239,
		-0.563287, -0.813701, -0.143522,
		0.825908, -0.559567, -0.068995,
		33.913082, 39.740852, 48.264816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279366, 39.539314, 48.787971>,  <33.334946, 40.132549, 48.313114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279366, 39.539314, 48.787971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669819, 39.573994, 48.708324>,  <33.904091, 39.594803, 48.660534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669819, 39.573994, 48.708324>,  <33.279366, 39.539314, 48.787971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669819, 39.573994, 48.708324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210475, -0.151650, 0.965765,
		0.053535, -0.984625, -0.166278,
		0.976132, 0.086699, -0.199120,
		33.962658, 39.600002, 48.648590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512482, 38.978745, 49.183887>,  <33.279366, 39.539314, 48.787971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512482, 38.978745, 49.183887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822254, 39.216766, 49.097954>,  <34.008118, 39.359581, 49.046394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822254, 39.216766, 49.097954>,  <33.512482, 38.978745, 49.183887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822254, 39.216766, 49.097954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348530, -0.117884, 0.929855,
		0.527993, -0.794989, -0.298690,
		0.774435, 0.595059, -0.214836,
		34.054585, 39.395283, 49.033504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111984, 38.572662, 49.409611>,  <33.512482, 38.978745, 49.183887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111984, 38.572662, 49.409611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227596, 38.954758, 49.384369>,  <34.296963, 39.184013, 49.369225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227596, 38.954758, 49.384369>,  <34.111984, 38.572662, 49.409611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227596, 38.954758, 49.384369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331121, -0.037900, 0.942827,
		0.898231, -0.293404, -0.327253,
		0.289032, 0.955237, -0.063109,
		34.314304, 39.241329, 49.365437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184654, 37.886486, 49.740417>,  <34.111984, 38.572662, 49.409611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184654, 37.886486, 49.740417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069134, 37.583527, 49.974659>,  <33.999821, 37.401749, 50.115204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069134, 37.583527, 49.974659>,  <34.184654, 37.886486, 49.740417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069134, 37.583527, 49.974659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162468, -0.564027, -0.809616,
		0.943503, -0.328961, 0.039839,
		-0.288802, -0.757403, 0.585607,
		33.982494, 37.356304, 50.150341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556404, 37.148861, 49.535923>,  <34.184654, 37.886486, 49.740417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556404, 37.148861, 49.535923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200562, 37.116039, 49.715645>,  <33.987057, 37.096348, 49.823479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200562, 37.116039, 49.715645>,  <34.556404, 37.148861, 49.535923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200562, 37.116039, 49.715645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308932, -0.616459, -0.724251,
		0.336405, -0.783100, 0.523054,
		-0.889602, -0.082054, 0.449305,
		33.933681, 37.091423, 49.850437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366997, 36.439919, 49.677319>,  <34.556404, 37.148861, 49.535923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366997, 36.439919, 49.677319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021027, 36.638657, 49.648869>,  <33.813446, 36.757900, 49.631798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021027, 36.638657, 49.648869>,  <34.366997, 36.439919, 49.677319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021027, 36.638657, 49.648869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285168, -0.603074, -0.744970,
		-0.413025, -0.624059, 0.663295,
		-0.864921, 0.496842, -0.071123,
		33.761551, 36.787708, 49.627533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053104, 36.067333, 49.240307>,  <34.366997, 36.439919, 49.677319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053104, 36.067333, 49.240307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776508, 36.355034, 49.267200>,  <33.610550, 36.527653, 49.283337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776508, 36.355034, 49.267200>,  <34.053104, 36.067333, 49.240307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776508, 36.355034, 49.267200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500517, -0.409919, -0.762528,
		-0.520888, -0.560932, 0.643452,
		-0.691490, 0.719251, 0.067234,
		33.569061, 36.570808, 49.287373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454643, 35.696400, 49.207550>,  <34.053104, 36.067333, 49.240307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454643, 35.696400, 49.207550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392933, 36.081436, 49.118454>,  <33.355907, 36.312458, 49.064995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392933, 36.081436, 49.118454>,  <33.454643, 35.696400, 49.207550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392933, 36.081436, 49.118454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425375, -0.268190, -0.864367,
		-0.891770, -0.038604, 0.450839,
		-0.154279, 0.962592, -0.222743,
		33.346649, 36.370213, 49.051632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855881, 35.746826, 48.852142>,  <33.454643, 35.696400, 49.207550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855881, 35.746826, 48.852142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.026527, 36.087585, 48.730644>,  <33.128918, 36.292042, 48.657745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.026527, 36.087585, 48.730644>,  <32.855881, 35.746826, 48.852142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026527, 36.087585, 48.730644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346289, -0.156390, -0.925001,
		-0.835512, 0.499806, 0.228285,
		0.426619, 0.851902, -0.303743,
		33.154514, 36.343155, 48.639523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320995, 36.052986, 48.574814>,  <32.855881, 35.746826, 48.852142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320995, 36.052986, 48.574814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632019, 36.242512, 48.409454>,  <32.818634, 36.356228, 48.310238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632019, 36.242512, 48.409454>,  <32.320995, 36.052986, 48.574814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632019, 36.242512, 48.409454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395934, -0.141817, -0.907262,
		-0.488499, 0.869131, 0.077327,
		0.777564, 0.473813, -0.413396,
		32.865288, 36.384655, 48.285435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.694069, 38.307800, 51.523743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.811478, 38.569378, 51.244831>,  <38.881924, 38.726326, 51.077484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.811478, 38.569378, 51.244831>,  <38.694069, 38.307800, 51.523743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811478, 38.569378, 51.244831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351087, -0.604689, -0.714905,
		-0.889146, 0.454648, 0.052101,
		0.293525, 0.653947, -0.697278,
		38.899536, 38.765560, 51.035648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159798, 38.411266, 51.061195>,  <38.694069, 38.307800, 51.523743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159798, 38.411266, 51.061195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.492989, 38.514565, 50.865459>,  <38.692905, 38.576546, 50.748020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.492989, 38.514565, 50.865459>,  <38.159798, 38.411266, 51.061195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492989, 38.514565, 50.865459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333637, -0.471086, -0.816556,
		-0.441395, 0.843436, -0.306244,
		0.832981, 0.258250, -0.489336,
		38.742882, 38.592041, 50.718658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972271, 38.815197, 50.433506>,  <38.159798, 38.411266, 51.061195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972271, 38.815197, 50.433506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.329521, 38.666626, 50.332027>,  <38.543873, 38.577484, 50.271141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.329521, 38.666626, 50.332027>,  <37.972271, 38.815197, 50.433506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329521, 38.666626, 50.332027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419613, -0.484878, -0.767345,
		0.162003, 0.791791, -0.588915,
		0.893129, -0.371429, -0.253694,
		38.597462, 38.555199, 50.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991039, 38.805782, 49.592171>,  <37.972271, 38.815197, 50.433506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991039, 38.805782, 49.592171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.289131, 38.572784, 49.721992>,  <38.467987, 38.432987, 49.799885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.289131, 38.572784, 49.721992>,  <37.991039, 38.805782, 49.592171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289131, 38.572784, 49.721992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155362, -0.625008, -0.765002,
		0.648454, 0.519681, -0.556273,
		0.745232, -0.582492, 0.324550,
		38.512699, 38.398037, 49.819359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402641, 38.774899, 48.997604>,  <37.991039, 38.805782, 49.592171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402641, 38.774899, 48.997604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.501675, 38.473442, 49.241158>,  <38.561092, 38.292568, 49.387287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.501675, 38.473442, 49.241158>,  <38.402641, 38.774899, 48.997604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501675, 38.473442, 49.241158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250635, -0.656870, -0.711129,
		0.935888, 0.023455, -0.351516,
		0.247579, -0.753639, 0.608878,
		38.575947, 38.247349, 49.423820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803905, 38.316422, 48.679451>,  <38.402641, 38.774899, 48.997604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803905, 38.316422, 48.679451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.686234, 38.057468, 48.960693>,  <38.615631, 37.902096, 49.129436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.686234, 38.057468, 48.960693>,  <38.803905, 38.316422, 48.679451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686234, 38.057468, 48.960693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090821, -0.713390, -0.694856,
		0.951426, -0.268267, 0.151067,
		-0.294176, -0.647385, 0.703103,
		38.597980, 37.863255, 49.171623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088593, 37.774849, 48.542191>,  <38.803905, 38.316422, 48.679451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088593, 37.774849, 48.542191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.822834, 37.596973, 48.782467>,  <38.663380, 37.490250, 48.926632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.822834, 37.596973, 48.782467>,  <39.088593, 37.774849, 48.542191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822834, 37.596973, 48.782467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060453, -0.769120, -0.636238,
		0.744934, -0.459027, 0.484116,
		-0.664394, -0.444689, 0.600693,
		38.623516, 37.463566, 48.962673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296345, 36.974667, 48.657684>,  <39.088593, 37.774849, 48.542191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296345, 36.974667, 48.657684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.903126, 37.001411, 48.725964>,  <38.667194, 37.017460, 48.766933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.903126, 37.001411, 48.725964>,  <39.296345, 36.974667, 48.657684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903126, 37.001411, 48.725964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156874, -0.788625, -0.594526,
		0.094869, -0.611229, 0.785748,
		-0.983052, 0.066862, 0.170702,
		38.608212, 37.021469, 48.777176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105873, 36.298809, 48.864071>,  <39.296345, 36.974667, 48.657684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105873, 36.298809, 48.864071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792171, 36.517292, 48.746361>,  <38.603951, 36.648384, 48.675735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792171, 36.517292, 48.746361>,  <39.105873, 36.298809, 48.864071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792171, 36.517292, 48.746361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056123, -0.534811, -0.843106,
		-0.617894, -0.644695, 0.450084,
		-0.784256, 0.546210, -0.294274,
		38.556896, 36.681156, 48.658077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606949, 35.840652, 48.616051>,  <39.105873, 36.298809, 48.864071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606949, 35.840652, 48.616051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.508484, 36.185959, 48.439789>,  <38.449406, 36.393143, 48.334030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.508484, 36.185959, 48.439789>,  <38.606949, 35.840652, 48.616051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508484, 36.185959, 48.439789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135958, -0.480904, -0.866168,
		-0.959645, -0.153311, 0.235750,
		-0.246166, 0.863265, -0.440653,
		38.434635, 36.444939, 48.307594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124565, 35.626190, 48.196274>,  <38.606949, 35.840652, 48.616051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124565, 35.626190, 48.196274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.202076, 35.987846, 48.043964>,  <38.248585, 36.204838, 47.952579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.202076, 35.987846, 48.043964>,  <38.124565, 35.626190, 48.196274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202076, 35.987846, 48.043964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082481, -0.371738, -0.924666,
		-0.977571, 0.210589, 0.002538,
		0.193781, 0.904137, -0.380770,
		38.260212, 36.259087, 47.929733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536621, 35.837635, 47.864002>,  <38.124565, 35.626190, 48.196274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536621, 35.837635, 47.864002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.863861, 36.005688, 47.706928>,  <38.060207, 36.106518, 47.612686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.863861, 36.005688, 47.706928>,  <37.536621, 35.837635, 47.864002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863861, 36.005688, 47.706928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079701, -0.593412, -0.800943,
		-0.569523, 0.686550, -0.451987,
		0.818102, 0.420132, -0.392681,
		38.109291, 36.131729, 47.589123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357693, 36.475960, 47.465607>,  <37.536621, 35.837635, 47.864002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357693, 36.475960, 47.465607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081703, 36.189487, 47.507599>,  <36.916111, 36.017605, 47.532795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081703, 36.189487, 47.507599>,  <37.357693, 36.475960, 47.465607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081703, 36.189487, 47.507599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023514, 0.122781, 0.992155,
		-0.723454, 0.687028, -0.067875,
		-0.689972, -0.716183, 0.104981,
		36.874710, 35.974632, 47.539093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696430, 36.791031, 47.772804>,  <37.357693, 36.475960, 47.465607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696430, 36.791031, 47.772804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700661, 36.397820, 47.846062>,  <36.703197, 36.161892, 47.890015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700661, 36.397820, 47.846062>,  <36.696430, 36.791031, 47.772804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700661, 36.397820, 47.846062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195489, 0.177583, 0.964494,
		-0.980649, -0.046003, -0.190294,
		0.010577, -0.983030, 0.183140,
		36.703835, 36.102909, 47.901005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224312, 36.735306, 48.387959>,  <36.696430, 36.791031, 47.772804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224312, 36.735306, 48.387959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.353756, 36.357288, 48.406551>,  <36.431423, 36.130478, 48.417706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.353756, 36.357288, 48.406551>,  <36.224312, 36.735306, 48.387959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353756, 36.357288, 48.406551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173661, -0.011032, 0.984744,
		-0.930117, -0.326747, -0.167688,
		0.323612, -0.945047, 0.046482,
		36.450840, 36.073772, 48.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723339, 36.365269, 48.723293>,  <36.224312, 36.735306, 48.387959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723339, 36.365269, 48.723293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050915, 36.136311, 48.739815>,  <36.247459, 35.998936, 48.749725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050915, 36.136311, 48.739815>,  <35.723339, 36.365269, 48.723293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050915, 36.136311, 48.739815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146132, -0.138397, 0.979536,
		-0.554968, -0.808212, -0.196984,
		0.818936, -0.572397, 0.041300,
		36.296597, 35.964592, 48.752205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549290, 35.776535, 49.119377>,  <35.723339, 36.365269, 48.723293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549290, 35.776535, 49.119377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.948586, 35.786503, 49.140934>,  <36.188164, 35.792484, 49.153870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.948586, 35.786503, 49.140934>,  <35.549290, 35.776535, 49.119377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948586, 35.786503, 49.140934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042861, -0.325724, 0.944493,
		0.041090, -0.945136, -0.324081,
		0.998236, 0.024919, 0.053893,
		36.248055, 35.793980, 49.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711063, 35.090336, 49.358437>,  <35.549290, 35.776535, 49.119377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711063, 35.090336, 49.358437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025578, 35.324898, 49.436295>,  <36.214287, 35.465633, 49.483009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025578, 35.324898, 49.436295>,  <35.711063, 35.090336, 49.358437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025578, 35.324898, 49.436295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090376, -0.420800, 0.902640,
		0.611216, -0.692143, -0.383866,
		0.786287, 0.586400, 0.194646,
		36.261463, 35.500816, 49.494690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128525, 34.732204, 49.770546>,  <35.711063, 35.090336, 49.358437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128525, 34.732204, 49.770546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.269802, 35.098579, 49.846767>,  <36.354568, 35.318405, 49.892502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.269802, 35.098579, 49.846767>,  <36.128525, 34.732204, 49.770546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269802, 35.098579, 49.846767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148980, -0.256146, 0.955089,
		0.923614, -0.308939, -0.226925,
		0.353190, 0.915940, 0.190554,
		36.375759, 35.373360, 49.903934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597233, 34.631920, 50.344234>,  <36.128525, 34.732204, 49.770546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597233, 34.631920, 50.344234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.530968, 35.025993, 50.361958>,  <36.491207, 35.262440, 50.372593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.530968, 35.025993, 50.361958>,  <36.597233, 34.631920, 50.344234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530968, 35.025993, 50.361958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102036, -0.027568, 0.994399,
		0.980890, 0.169256, -0.095957,
		-0.165662, 0.985187, 0.044311,
		36.481270, 35.321548, 50.375252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185440, 34.948109, 50.730831>,  <36.597233, 34.631920, 50.344234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185440, 34.948109, 50.730831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.865143, 35.186665, 50.753204>,  <36.672966, 35.329800, 50.766628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.865143, 35.186665, 50.753204>,  <37.185440, 34.948109, 50.730831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865143, 35.186665, 50.753204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135623, 0.089550, 0.986705,
		0.583451, 0.797685, -0.152591,
		-0.800745, 0.596389, 0.055937,
		36.624920, 35.365582, 50.769985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387032, 35.527592, 51.072948>,  <37.185440, 34.948109, 50.730831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387032, 35.527592, 51.072948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989594, 35.535061, 51.117531>,  <36.751129, 35.539543, 51.144279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989594, 35.535061, 51.117531>,  <37.387032, 35.527592, 51.072948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989594, 35.535061, 51.117531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113007, 0.154760, 0.981468,
		0.001081, 0.987776, -0.155879,
		-0.993594, 0.018677, 0.111458,
		36.691517, 35.540665, 51.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396946, 35.865486, 51.645523>,  <37.387032, 35.527592, 51.072948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396946, 35.865486, 51.645523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.011215, 35.763729, 51.616238>,  <36.779778, 35.702675, 51.598667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.011215, 35.763729, 51.616238>,  <37.396946, 35.865486, 51.645523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011215, 35.763729, 51.616238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080212, 0.017230, 0.996629,
		-0.252274, 0.966947, -0.037021,
		-0.964326, -0.254393, -0.073214,
		36.721916, 35.687412, 51.594273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984913, 36.284233, 52.090542>,  <37.396946, 35.865486, 51.645523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984913, 36.284233, 52.090542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746181, 35.963928, 52.070217>,  <36.602943, 35.771748, 52.058022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746181, 35.963928, 52.070217>,  <36.984913, 36.284233, 52.090542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746181, 35.963928, 52.070217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087943, -0.128226, 0.987838,
		-0.797534, 0.585102, 0.146950,
		-0.596829, -0.800758, -0.050809,
		36.567131, 35.723701, 52.054974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320915, 36.409203, 52.477745>,  <36.984913, 36.284233, 52.090542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320915, 36.409203, 52.477745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351761, 36.010651, 52.463394>,  <36.370266, 35.771519, 52.454784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351761, 36.010651, 52.463394>,  <36.320915, 36.409203, 52.477745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351761, 36.010651, 52.463394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041542, -0.039163, 0.998369,
		-0.996157, -0.075495, -0.044412,
		0.077111, -0.996377, -0.035876,
		36.374893, 35.711739, 52.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831776, 36.139042, 52.870823>,  <36.320915, 36.409203, 52.477745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831776, 36.139042, 52.870823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064182, 35.814289, 52.847927>,  <36.203625, 35.619438, 52.834190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.064182, 35.814289, 52.847927>,  <35.831776, 36.139042, 52.870823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064182, 35.814289, 52.847927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002337, -0.071988, 0.997403,
		-0.813890, -0.579372, -0.043723,
		0.581015, -0.811878, -0.057236,
		36.238487, 35.570724, 52.830757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278244, 36.666283, 53.032032>,  <35.831776, 36.139042, 52.870823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278244, 36.666283, 53.032032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026749, 36.971104, 53.093948>,  <34.875851, 37.153996, 53.131100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026749, 36.971104, 53.093948>,  <35.278244, 36.666283, 53.032032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026749, 36.971104, 53.093948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319362, -0.071550, -0.944928,
		-0.709010, -0.643548, 0.288358,
		-0.628739, 0.762054, 0.154795,
		34.838127, 37.199718, 53.140388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596668, 36.443298, 52.929768>,  <35.278244, 36.666283, 53.032032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596668, 36.443298, 52.929768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.593414, 36.839561, 52.875313>,  <34.591461, 37.077320, 52.842640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.593414, 36.839561, 52.875313>,  <34.596668, 36.443298, 52.929768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593414, 36.839561, 52.875313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369152, -0.129497, -0.920303,
		-0.929333, 0.042771, 0.366756,
		-0.008132, 0.990657, -0.136135,
		34.590973, 37.136757, 52.834473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982468, 36.539314, 52.559910>,  <34.596668, 36.443298, 52.929768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982468, 36.539314, 52.559910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.169346, 36.892006, 52.533722>,  <34.281475, 37.103619, 52.518009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.169346, 36.892006, 52.533722>,  <33.982468, 36.539314, 52.559910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169346, 36.892006, 52.533722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347513, 0.115035, -0.930592,
		-0.812994, 0.457525, 0.360155,
		0.467200, 0.881724, -0.065473,
		34.309505, 37.156525, 52.514080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403461, 37.027237, 52.298817>,  <33.982468, 36.539314, 52.559910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403461, 37.027237, 52.298817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774189, 37.147224, 52.208466>,  <33.996628, 37.219215, 52.154255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774189, 37.147224, 52.208466>,  <33.403461, 37.027237, 52.298817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774189, 37.147224, 52.208466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288112, 0.182309, -0.940082,
		-0.240817, 0.936366, 0.255393,
		0.926822, 0.299970, -0.225875,
		34.052235, 37.237217, 52.140701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210644, 37.642128, 51.890499>,  <33.403461, 37.027237, 52.298817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210644, 37.642128, 51.890499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.580940, 37.522625, 51.797760>,  <33.803116, 37.450924, 51.742115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.580940, 37.522625, 51.797760>,  <33.210644, 37.642128, 51.890499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580940, 37.522625, 51.797760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180805, 0.188805, -0.965226,
		0.332144, 0.935466, 0.120767,
		0.925737, -0.298759, -0.231848,
		33.858662, 37.432999, 51.728207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447979, 38.126854, 51.369328>,  <33.210644, 37.642128, 51.890499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447979, 38.126854, 51.369328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.634857, 37.774406, 51.340023>,  <33.746983, 37.562939, 51.322441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.634857, 37.774406, 51.340023>,  <33.447979, 38.126854, 51.369328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634857, 37.774406, 51.340023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076753, 0.042128, -0.996160,
		0.880817, 0.471024, -0.047946,
		0.467195, -0.881114, -0.073260,
		33.775017, 37.510071, 51.318047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874100, 38.141640, 50.747234>,  <33.447979, 38.126854, 51.369328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874100, 38.141640, 50.747234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963924, 38.405804, 50.460621>,  <34.017818, 38.564304, 50.288651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963924, 38.405804, 50.460621>,  <33.874100, 38.141640, 50.747234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963924, 38.405804, 50.460621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510609, 0.546540, 0.663757,
		0.829969, -0.514927, -0.214479,
		0.224565, 0.660412, -0.716537,
		34.031296, 38.603928, 50.245659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578156, 38.274998, 50.771683>,  <33.874100, 38.141640, 50.747234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578156, 38.274998, 50.771683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458843, 38.579983, 50.542011>,  <34.387257, 38.762974, 50.404209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458843, 38.579983, 50.542011>,  <34.578156, 38.274998, 50.771683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458843, 38.579983, 50.542011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552348, 0.628491, 0.547641,
		0.778420, -0.153793, -0.608613,
		-0.298284, 0.762461, -0.574177,
		34.369358, 38.808720, 50.369759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967789, 38.699406, 51.159321>,  <34.578156, 38.274998, 50.771683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967789, 38.699406, 51.159321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.814995, 38.894215, 50.845150>,  <34.723320, 39.011101, 50.656647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.814995, 38.894215, 50.845150>,  <34.967789, 38.699406, 51.159321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814995, 38.894215, 50.845150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364247, 0.860417, 0.356380,
		0.849362, -0.149959, -0.506060,
		-0.381980, 0.487026, -0.785428,
		34.700401, 39.040321, 50.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518806, 39.030537, 50.730179>,  <34.967789, 38.699406, 51.159321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518806, 39.030537, 50.730179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154030, 39.193947, 50.745495>,  <34.935162, 39.291992, 50.754684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154030, 39.193947, 50.745495>,  <35.518806, 39.030537, 50.730179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154030, 39.193947, 50.745495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378935, 0.802736, 0.460461,
		0.157368, 0.434426, -0.886854,
		-0.911945, 0.408521, 0.038294,
		34.880447, 39.316502, 50.756985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645569, 39.684628, 50.521145>,  <35.518806, 39.030537, 50.730179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645569, 39.684628, 50.521145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291519, 39.703712, 50.706306>,  <35.079090, 39.715164, 50.817402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291519, 39.703712, 50.706306>,  <35.645569, 39.684628, 50.521145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291519, 39.703712, 50.706306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283063, 0.844741, 0.454188,
		-0.369361, 0.533044, -0.761208,
		-0.885126, 0.047711, 0.462899,
		35.025982, 39.718025, 50.845177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433945, 40.446007, 50.492481>,  <35.645569, 39.684628, 50.521145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433945, 40.446007, 50.492481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238232, 40.295307, 50.807102>,  <35.120804, 40.204887, 50.995872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238232, 40.295307, 50.807102>,  <35.433945, 40.446007, 50.492481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238232, 40.295307, 50.807102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138787, 0.856748, 0.496709,
		-0.861010, 0.352195, -0.366906,
		-0.489284, -0.376750, 0.786549,
		35.091446, 40.182281, 51.043068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059921, 41.060234, 50.739300>,  <35.433945, 40.446007, 50.492481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059921, 41.060234, 50.739300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063126, 40.776237, 51.020966>,  <35.065048, 40.605839, 51.189964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063126, 40.776237, 51.020966>,  <35.059921, 41.060234, 50.739300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063126, 40.776237, 51.020966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116788, 0.700035, 0.704494,
		-0.993125, 0.076594, 0.088527,
		0.008012, -0.709989, 0.704167,
		35.065529, 40.563240, 51.232216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833942, 41.408554, 51.230904>,  <35.059921, 41.060234, 50.739300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833942, 41.408554, 51.230904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991703, 41.097950, 51.427467>,  <35.086361, 40.911587, 51.545406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991703, 41.097950, 51.427467>,  <34.833942, 41.408554, 51.230904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991703, 41.097950, 51.427467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256471, 0.606522, 0.752565,
		-0.882423, -0.170780, 0.438365,
		0.394401, -0.776509, 0.491408,
		35.110023, 40.864998, 51.574890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572102, 41.495392, 51.871262>,  <34.833942, 41.408554, 51.230904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572102, 41.495392, 51.871262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.898098, 41.268337, 51.917873>,  <35.093697, 41.132107, 51.945839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.898098, 41.268337, 51.917873>,  <34.572102, 41.495392, 51.871262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898098, 41.268337, 51.917873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335554, 0.626245, 0.703720,
		-0.472430, -0.534425, 0.700857,
		0.814993, -0.567633, 0.116529,
		35.142597, 41.098049, 51.952831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649540, 41.312180, 52.511082>,  <34.572102, 41.495392, 51.871262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649540, 41.312180, 52.511082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.030819, 41.242737, 52.412060>,  <35.259586, 41.201073, 52.352646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.030819, 41.242737, 52.412060>,  <34.649540, 41.312180, 52.511082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030819, 41.242737, 52.412060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300536, 0.633793, 0.712731,
		0.033166, -0.753770, 0.656301,
		0.953194, -0.173604, -0.247555,
		35.316776, 41.190655, 52.337791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.011574, 35.723366, 37.796085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408669, 35.750729, 37.835655>,  <33.646927, 35.767147, 37.859398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408669, 35.750729, 37.835655>,  <33.011574, 35.723366, 37.796085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408669, 35.750729, 37.835655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115398, 0.309987, 0.943712,
		0.033894, -0.948277, 0.315631,
		0.992741, 0.068409, 0.098923,
		33.706490, 35.771252, 37.865334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171013, 35.344143, 38.318905>,  <33.011574, 35.723366, 37.796085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171013, 35.344143, 38.318905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463200, 35.613426, 38.272934>,  <33.638512, 35.774998, 38.245354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463200, 35.613426, 38.272934>,  <33.171013, 35.344143, 38.318905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463200, 35.613426, 38.272934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136119, 0.308412, 0.941464,
		0.669248, -0.672062, 0.316921,
		0.730464, 0.673212, -0.114923,
		33.682339, 35.815392, 38.238457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632183, 35.272335, 38.878094>,  <33.171013, 35.344143, 38.318905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632183, 35.272335, 38.878094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672188, 35.652119, 38.759087>,  <33.696190, 35.879990, 38.687683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672188, 35.652119, 38.759087>,  <33.632183, 35.272335, 38.878094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672188, 35.652119, 38.759087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011353, 0.297909, 0.954526,
		0.994922, -0.098841, 0.019015,
		0.100011, 0.949463, -0.297519,
		33.702190, 35.936958, 38.669830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112225, 35.621277, 39.281185>,  <33.632183, 35.272335, 38.878094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112225, 35.621277, 39.281185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946205, 35.957764, 39.142570>,  <33.846596, 36.159657, 39.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946205, 35.957764, 39.142570>,  <34.112225, 35.621277, 39.281185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946205, 35.957764, 39.142570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066387, 0.407879, 0.910619,
		0.907375, 0.354944, -0.225135,
		-0.415046, 0.841219, -0.346535,
		33.821690, 36.210129, 39.038609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588623, 36.174480, 39.517750>,  <34.112225, 35.621277, 39.281185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588623, 36.174480, 39.517750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246109, 36.366875, 39.442463>,  <34.040600, 36.482311, 39.397289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246109, 36.366875, 39.442463>,  <34.588623, 36.174480, 39.517750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246109, 36.366875, 39.442463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036565, 0.419944, 0.906813,
		0.515203, 0.769610, -0.377180,
		-0.856287, 0.480985, -0.188216,
		33.989223, 36.511169, 39.385998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718224, 36.921761, 39.731892>,  <34.588623, 36.174480, 39.517750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718224, 36.921761, 39.731892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322052, 36.874111, 39.703995>,  <34.084351, 36.845524, 39.687256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322052, 36.874111, 39.703995>,  <34.718224, 36.921761, 39.731892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322052, 36.874111, 39.703995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124649, 0.554799, 0.822594,
		-0.059295, 0.823413, -0.564336,
		-0.990427, -0.119120, -0.069741,
		34.024925, 36.838375, 39.683071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397110, 37.618275, 39.856445>,  <34.718224, 36.921761, 39.731892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397110, 37.618275, 39.856445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117973, 37.346336, 39.946629>,  <33.950493, 37.183174, 40.000736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117973, 37.346336, 39.946629>,  <34.397110, 37.618275, 39.856445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117973, 37.346336, 39.946629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183845, 0.474241, 0.860986,
		-0.692254, 0.559384, -0.455931,
		-0.697843, -0.679842, 0.225455,
		33.908619, 37.142384, 40.014267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815151, 38.034988, 40.097244>,  <34.397110, 37.618275, 39.856445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815151, 38.034988, 40.097244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754566, 37.658920, 40.219318>,  <33.718216, 37.433281, 40.292561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754566, 37.658920, 40.219318>,  <33.815151, 38.034988, 40.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754566, 37.658920, 40.219318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422668, 0.340697, 0.839808,
		-0.893538, -0.001788, -0.448984,
		-0.151466, -0.940171, 0.305182,
		33.709126, 37.376869, 40.310871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118980, 38.003315, 40.463493>,  <33.815151, 38.034988, 40.097244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118980, 38.003315, 40.463493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284534, 37.670116, 40.610359>,  <33.383865, 37.470196, 40.698479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284534, 37.670116, 40.610359>,  <33.118980, 38.003315, 40.463493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284534, 37.670116, 40.610359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467733, 0.151428, 0.870801,
		-0.780977, -0.532147, -0.326948,
		0.413885, -0.833001, 0.367165,
		33.408699, 37.420216, 40.720509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576141, 37.587322, 40.684952>,  <33.118980, 38.003315, 40.463493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576141, 37.587322, 40.684952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900513, 37.486393, 40.896130>,  <33.095139, 37.425835, 41.022835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900513, 37.486393, 40.896130>,  <32.576141, 37.587322, 40.684952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900513, 37.486393, 40.896130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519930, 0.103199, 0.847952,
		-0.268440, -0.962124, -0.047503,
		0.810933, -0.252323, 0.527940,
		33.143791, 37.410698, 41.054512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320564, 37.165924, 41.134220>,  <32.576141, 37.587322, 40.684952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320564, 37.165924, 41.134220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669064, 37.250694, 41.311317>,  <32.878162, 37.301556, 41.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669064, 37.250694, 41.311317>,  <32.320564, 37.165924, 41.134220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669064, 37.250694, 41.311317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472106, 0.114909, 0.874021,
		0.134377, -0.970501, 0.200178,
		0.871240, 0.211953, 0.442738,
		32.930435, 37.314270, 41.444141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315170, 36.837826, 41.762325>,  <32.320564, 37.165924, 41.134220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315170, 36.837826, 41.762325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584335, 37.130672, 41.804668>,  <32.745834, 37.306381, 41.830074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584335, 37.130672, 41.804668>,  <32.315170, 36.837826, 41.762325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584335, 37.130672, 41.804668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358520, 0.197611, 0.912367,
		0.647038, -0.651890, 0.395452,
		0.672908, 0.732113, 0.105854,
		32.786209, 37.350307, 41.836426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363743, 36.045597, 42.017490>,  <32.315170, 36.837826, 41.762325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363743, 36.045597, 42.017490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032101, 35.898701, 42.186115>,  <31.833115, 35.810562, 42.287292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032101, 35.898701, 42.186115>,  <32.363743, 36.045597, 42.017490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032101, 35.898701, 42.186115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287971, -0.365800, -0.885022,
		0.479221, -0.855177, 0.197534,
		-0.829108, -0.367237, 0.421565,
		31.783369, 35.788528, 42.312584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323982, 35.337582, 41.834007>,  <32.363743, 36.045597, 42.017490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323982, 35.337582, 41.834007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947454, 35.417419, 41.942883>,  <31.721539, 35.465321, 42.008205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947454, 35.417419, 41.942883>,  <32.323982, 35.337582, 41.834007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947454, 35.417419, 41.942883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331854, -0.400097, -0.854281,
		-0.061608, -0.894475, 0.442854,
		-0.941317, 0.199593, 0.272186,
		31.665060, 35.477299, 42.024540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991365, 34.799129, 41.662312>,  <32.323982, 35.337582, 41.834007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991365, 34.799129, 41.662312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705654, 35.078201, 41.684376>,  <31.534227, 35.245644, 41.697613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705654, 35.078201, 41.684376>,  <31.991365, 34.799129, 41.662312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705654, 35.078201, 41.684376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398548, -0.340705, -0.851516,
		-0.575296, -0.630204, 0.521418,
		-0.714279, 0.697684, 0.055161,
		31.491371, 35.287506, 41.700924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414803, 34.378658, 41.607010>,  <31.991365, 34.799129, 41.662312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414803, 34.378658, 41.607010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291191, 34.752007, 41.534000>,  <31.217024, 34.976017, 41.490192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291191, 34.752007, 41.534000>,  <31.414803, 34.378658, 41.607010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291191, 34.752007, 41.534000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480423, -0.318835, -0.817030,
		-0.820790, -0.164794, 0.546943,
		-0.309027, 0.933374, -0.182526,
		31.198483, 35.032021, 41.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596552, 34.484581, 41.615479>,  <31.414803, 34.378658, 41.607010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596552, 34.484581, 41.615479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767757, 34.753471, 41.373848>,  <30.870480, 34.914806, 41.228870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767757, 34.753471, 41.373848>,  <30.596552, 34.484581, 41.615479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767757, 34.753471, 41.373848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530803, -0.353995, -0.770023,
		-0.731474, 0.650227, 0.205307,
		0.428012, 0.672230, -0.604081,
		30.896160, 34.955139, 41.192623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991051, 34.782879, 41.087292>,  <30.596552, 34.484581, 41.615479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991051, 34.782879, 41.087292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335606, 34.912937, 40.931194>,  <30.542339, 34.990974, 40.837536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335606, 34.912937, 40.931194>,  <29.991051, 34.782879, 41.087292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335606, 34.912937, 40.931194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378001, -0.102869, -0.920072,
		-0.339304, 0.940051, 0.034297,
		0.861387, 0.325149, -0.390244,
		30.594023, 35.010483, 40.814121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789835, 34.987110, 40.498062>,  <29.991051, 34.782879, 41.087292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789835, 34.987110, 40.498062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185297, 34.956627, 40.446293>,  <30.422575, 34.938339, 40.415234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185297, 34.956627, 40.446293>,  <29.789835, 34.987110, 40.498062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185297, 34.956627, 40.446293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149614, -0.424253, -0.893099,
		0.013152, 0.902331, -0.430842,
		0.988657, -0.076206, -0.129421,
		30.481894, 34.933765, 40.407467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926968, 35.307186, 39.919624>,  <29.789835, 34.987110, 40.498062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926968, 35.307186, 39.919624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215605, 35.036800, 39.979465>,  <30.388786, 34.874569, 40.015369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215605, 35.036800, 39.979465>,  <29.926968, 35.307186, 39.919624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215605, 35.036800, 39.979465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111895, -0.327117, -0.938336,
		0.683218, 0.660355, -0.311681,
		0.721591, -0.675963, 0.149602,
		30.432081, 34.834011, 40.024345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238945, 35.208927, 39.368923>,  <29.926968, 35.307186, 39.919624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238945, 35.208927, 39.368923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397123, 34.889149, 39.549816>,  <30.492031, 34.697281, 39.658352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397123, 34.889149, 39.549816>,  <30.238945, 35.208927, 39.368923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397123, 34.889149, 39.549816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004809, -0.490553, -0.871398,
		0.918476, 0.346767, -0.190143,
		0.395447, -0.799444, 0.452228,
		30.515757, 34.649315, 39.685486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741959, 34.897236, 38.841782>,  <30.238945, 35.208927, 39.368923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741959, 34.897236, 38.841782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644152, 34.597012, 39.087341>,  <30.585468, 34.416878, 39.234676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644152, 34.597012, 39.087341>,  <30.741959, 34.897236, 38.841782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644152, 34.597012, 39.087341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216567, -0.574851, -0.789079,
		0.945151, -0.325892, -0.021986,
		-0.244516, -0.750561, 0.613898,
		30.570797, 34.371845, 39.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094820, 34.241688, 38.543468>,  <30.741959, 34.897236, 38.841782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094820, 34.241688, 38.543468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809107, 34.133282, 38.801567>,  <30.637678, 34.068237, 38.956429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809107, 34.133282, 38.801567>,  <31.094820, 34.241688, 38.543468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809107, 34.133282, 38.801567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328027, -0.684784, -0.650745,
		0.618221, -0.676476, 0.400229,
		-0.714283, -0.271018, 0.645251,
		30.594822, 34.051975, 38.995144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024141, 33.464756, 38.585350>,  <31.094820, 34.241688, 38.543468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024141, 33.464756, 38.585350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664669, 33.600266, 38.696781>,  <30.448986, 33.681572, 38.763641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664669, 33.600266, 38.696781>,  <31.024141, 33.464756, 38.585350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664669, 33.600266, 38.696781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435006, -0.769622, -0.467388,
		0.056060, -0.541215, 0.839013,
		-0.898681, 0.338774, 0.278577,
		30.395065, 33.701897, 38.780354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828554, 32.707897, 38.233242>,  <31.024141, 33.464756, 38.585350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828554, 32.707897, 38.233242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147776, 32.595345, 38.020100>,  <31.339310, 32.527813, 37.892216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147776, 32.595345, 38.020100>,  <30.828554, 32.707897, 38.233242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147776, 32.595345, 38.020100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507598, -0.162629, 0.846106,
		-0.324734, -0.945715, 0.013040,
		0.798055, -0.281379, -0.532855,
		31.387192, 32.510929, 37.860245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082207, 32.057243, 38.466000>,  <30.828554, 32.707897, 38.233242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082207, 32.057243, 38.466000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382715, 32.293095, 38.347385>,  <31.563021, 32.434605, 38.276218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382715, 32.293095, 38.347385>,  <31.082207, 32.057243, 38.466000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382715, 32.293095, 38.347385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540364, -0.291542, 0.789310,
		0.378945, -0.753222, -0.537640,
		0.751270, 0.589627, -0.296536,
		31.608097, 32.469982, 38.258423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722107, 31.635109, 38.375771>,  <31.082207, 32.057243, 38.466000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722107, 31.635109, 38.375771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788229, 32.015709, 38.479553>,  <31.827902, 32.244068, 38.541824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788229, 32.015709, 38.479553>,  <31.722107, 31.635109, 38.375771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788229, 32.015709, 38.479553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704544, -0.298022, 0.644050,
		0.690139, 0.076335, -0.719640,
		0.165305, 0.951502, 0.259458,
		31.837820, 32.301159, 38.557392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391644, 31.906883, 38.444283>,  <31.722107, 31.635109, 38.375771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391644, 31.906883, 38.444283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228252, 32.164108, 38.703392>,  <32.130219, 32.318443, 38.858860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228252, 32.164108, 38.703392>,  <32.391644, 31.906883, 38.444283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228252, 32.164108, 38.703392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766195, -0.144129, 0.626236,
		0.496073, 0.752128, -0.433838,
		-0.408481, 0.643063, 0.647775,
		32.105709, 32.357029, 38.897724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058090, 32.111351, 38.190254>,  <32.391644, 31.906883, 38.444283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058090, 32.111351, 38.190254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337700, 32.396938, 38.206367>,  <33.505466, 32.568291, 38.216034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337700, 32.396938, 38.206367>,  <33.058090, 32.111351, 38.190254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337700, 32.396938, 38.206367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144878, -0.196559, 0.969729,
		0.700273, -0.672024, -0.240837,
		0.699020, 0.713967, 0.040284,
		33.547405, 32.611130, 38.218452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477394, 31.858894, 38.607410>,  <33.058090, 32.111351, 38.190254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477394, 31.858894, 38.607410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595814, 32.240768, 38.619637>,  <33.666866, 32.469891, 38.626972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595814, 32.240768, 38.619637>,  <33.477394, 31.858894, 38.607410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595814, 32.240768, 38.619637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093492, -0.060804, 0.993762,
		0.950586, -0.291347, -0.107256,
		0.296051, 0.954683, 0.030561,
		33.684628, 32.527172, 38.628803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077175, 31.935284, 39.112423>,  <33.477394, 31.858894, 38.607410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077175, 31.935284, 39.112423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932312, 32.304859, 39.063148>,  <33.845394, 32.526604, 39.033585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932312, 32.304859, 39.063148>,  <34.077175, 31.935284, 39.112423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932312, 32.304859, 39.063148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215361, 0.211526, 0.953350,
		0.906896, 0.318733, -0.275587,
		-0.362158, 0.923940, -0.123189,
		33.823666, 32.582043, 39.026192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534893, 32.419395, 39.556641>,  <34.077175, 31.935284, 39.112423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534893, 32.419395, 39.556641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199638, 32.629505, 39.497837>,  <33.998486, 32.755573, 39.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199638, 32.629505, 39.497837>,  <34.534893, 32.419395, 39.556641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199638, 32.629505, 39.497837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046065, 0.336717, 0.940478,
		0.543512, 0.781477, -0.306412,
		-0.838137, 0.525276, -0.147011,
		33.948196, 32.787086, 39.453735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787102, 33.110096, 39.526981>,  <34.534893, 32.419395, 39.556641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787102, 33.110096, 39.526981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399281, 33.114655, 39.624828>,  <34.166588, 33.117390, 39.683537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399281, 33.114655, 39.624828>,  <34.787102, 33.110096, 39.526981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399281, 33.114655, 39.624828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204761, 0.585629, 0.784291,
		-0.134320, 0.810499, -0.570131,
		-0.969552, 0.011395, 0.244620,
		34.108414, 33.118073, 39.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748684, 33.716335, 39.608826>,  <34.787102, 33.110096, 39.526981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748684, 33.716335, 39.608826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446960, 33.549999, 39.812038>,  <34.265926, 33.450195, 39.933968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446960, 33.549999, 39.812038>,  <34.748684, 33.716335, 39.608826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446960, 33.549999, 39.812038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030965, 0.750425, 0.660229,
		-0.655792, 0.513746, -0.553174,
		-0.754306, -0.415844, 0.508031,
		34.220669, 33.425247, 39.964447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414047, 34.190186, 39.892365>,  <34.748684, 33.716335, 39.608826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414047, 34.190186, 39.892365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245323, 33.912674, 40.125858>,  <34.144089, 33.746166, 40.265953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245323, 33.912674, 40.125858>,  <34.414047, 34.190186, 39.892365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245323, 33.912674, 40.125858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127845, 0.682889, 0.719248,
		-0.897625, 0.228759, -0.376746,
		-0.421811, -0.693781, 0.583733,
		34.118778, 33.704540, 40.300980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955078, 34.573292, 40.340412>,  <34.414047, 34.190186, 39.892365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955078, 34.573292, 40.340412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009102, 34.218430, 40.516922>,  <34.041515, 34.005512, 40.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009102, 34.218430, 40.516922>,  <33.955078, 34.573292, 40.340412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009102, 34.218430, 40.516922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001849, 0.445127, 0.895466,
		-0.990836, -0.121757, 0.058478,
		0.135059, -0.887151, 0.441272,
		34.049618, 33.952286, 40.649303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457726, 34.496719, 40.939762>,  <33.955078, 34.573292, 40.340412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457726, 34.496719, 40.939762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779453, 34.274162, 41.023190>,  <33.972488, 34.140629, 41.073246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779453, 34.274162, 41.023190>,  <33.457726, 34.496719, 40.939762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779453, 34.274162, 41.023190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023906, 0.381020, 0.924258,
		-0.593716, -0.738412, 0.319763,
		0.804320, -0.556391, 0.208565,
		34.020748, 34.107246, 41.085758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308804, 34.166882, 41.530853>,  <33.457726, 34.496719, 40.939762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308804, 34.166882, 41.530853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708031, 34.150082, 41.512577>,  <33.947567, 34.139999, 41.501614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708031, 34.150082, 41.512577>,  <33.308804, 34.166882, 41.530853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708031, 34.150082, 41.512577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053636, 0.213492, 0.975471,
		-0.031220, -0.976041, 0.215333,
		0.998072, -0.042004, -0.045686,
		34.007454, 34.137482, 41.498871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445431, 33.941200, 42.138935>,  <33.308804, 34.166882, 41.530853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445431, 33.941200, 42.138935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796146, 34.084095, 42.010170>,  <34.006577, 34.169830, 41.932911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796146, 34.084095, 42.010170>,  <33.445431, 33.941200, 42.138935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796146, 34.084095, 42.010170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225948, 0.284891, 0.931550,
		0.424495, -0.889505, 0.169071,
		0.876785, 0.357237, -0.321916,
		34.059181, 34.191265, 41.913593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851891, 33.699451, 42.628666>,  <33.445431, 33.941200, 42.138935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851891, 33.699451, 42.628666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054790, 33.985577, 42.436405>,  <34.176533, 34.157249, 42.321049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054790, 33.985577, 42.436405>,  <33.851891, 33.699451, 42.628666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054790, 33.985577, 42.436405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484184, 0.224841, 0.845584,
		0.712925, -0.661650, -0.232289,
		0.507252, 0.715308, -0.480655,
		34.206966, 34.200169, 42.292210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511101, 33.580799, 42.718136>,  <33.851891, 33.699451, 42.628666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511101, 33.580799, 42.718136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537804, 33.972160, 42.639877>,  <34.553825, 34.206978, 42.592922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537804, 33.972160, 42.639877>,  <34.511101, 33.580799, 42.718136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537804, 33.972160, 42.639877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405107, 0.152617, 0.901441,
		0.911828, -0.139439, -0.386168,
		0.066760, 0.978399, -0.195649,
		34.557831, 34.265678, 42.581184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129143, 33.749252, 43.066410>,  <34.511101, 33.580799, 42.718136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129143, 33.749252, 43.066410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957939, 34.103878, 42.996189>,  <34.855217, 34.316654, 42.954056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957939, 34.103878, 42.996189>,  <35.129143, 33.749252, 43.066410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957939, 34.103878, 42.996189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284010, 0.316344, 0.905132,
		0.857990, 0.337545, -0.387190,
		-0.428008, 0.886561, -0.175554,
		34.829536, 34.369846, 42.943523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630894, 34.274311, 43.078590>,  <35.129143, 33.749252, 43.066410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630894, 34.274311, 43.078590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276817, 34.448086, 43.145157>,  <35.064369, 34.552353, 43.185097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276817, 34.448086, 43.145157>,  <35.630894, 34.274311, 43.078590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276817, 34.448086, 43.145157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374491, 0.453169, 0.808947,
		0.276023, 0.778397, -0.563836,
		-0.885194, 0.434439, 0.166418,
		35.011261, 34.578419, 43.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750710, 34.910446, 43.044815>,  <35.630894, 34.274311, 43.078590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750710, 34.910446, 43.044815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429474, 34.833111, 43.270264>,  <35.236732, 34.786709, 43.405533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429474, 34.833111, 43.270264>,  <35.750710, 34.910446, 43.044815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429474, 34.833111, 43.270264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469178, 0.377910, 0.798158,
		-0.367309, 0.905431, -0.212788,
		-0.803092, -0.193335, 0.563618,
		35.188545, 34.775108, 43.439350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612923, 35.523270, 43.459362>,  <35.750710, 34.910446, 43.044815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612923, 35.523270, 43.459362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380146, 35.269985, 43.663475>,  <35.240479, 35.118015, 43.785942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380146, 35.269985, 43.663475>,  <35.612923, 35.523270, 43.459362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380146, 35.269985, 43.663475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376474, 0.346419, 0.859222,
		-0.720837, 0.692127, 0.036790,
		-0.581946, -0.633210, 0.510279,
		35.205563, 35.080021, 43.816559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168793, 35.838715, 43.938126>,  <35.612923, 35.523270, 43.459362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168793, 35.838715, 43.938126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190952, 35.475239, 44.103638>,  <35.204250, 35.257153, 44.202946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190952, 35.475239, 44.103638>,  <35.168793, 35.838715, 43.938126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190952, 35.475239, 44.103638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377673, 0.402697, 0.833785,
		-0.924280, 0.110080, 0.365498,
		0.055402, -0.908690, 0.413779,
		35.207573, 35.202633, 44.227772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962051, 35.938774, 44.603127>,  <35.168793, 35.838715, 43.938126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962051, 35.938774, 44.603127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142200, 35.581772, 44.612911>,  <35.250290, 35.367569, 44.618782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142200, 35.581772, 44.612911>,  <34.962051, 35.938774, 44.603127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142200, 35.581772, 44.612911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413207, 0.232637, 0.880421,
		-0.791470, -0.386412, 0.473562,
		0.450373, -0.892505, 0.024457,
		35.277313, 35.314022, 44.620247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751183, 35.602879, 45.221977>,  <34.962051, 35.938774, 44.603127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751183, 35.602879, 45.221977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102158, 35.450348, 45.105568>,  <35.312740, 35.358829, 45.035725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102158, 35.450348, 45.105568>,  <34.751183, 35.602879, 45.221977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102158, 35.450348, 45.105568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363160, 0.131693, 0.922373,
		-0.313404, -0.915010, 0.254037,
		0.877436, -0.381331, -0.291021,
		35.365387, 35.335949, 45.018261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841911, 34.912849, 45.674576>,  <34.751183, 35.602879, 45.221977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841911, 34.912849, 45.674576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165936, 35.091076, 45.522118>,  <35.360352, 35.198009, 45.430645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165936, 35.091076, 45.522118>,  <34.841911, 34.912849, 45.674576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165936, 35.091076, 45.522118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297545, 0.247743, 0.922004,
		0.505237, -0.860288, 0.068112,
		0.810063, 0.445564, -0.381144,
		35.408955, 35.224747, 45.407776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369629, 34.551613, 46.152027>,  <34.841911, 34.912849, 45.674576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369629, 34.551613, 46.152027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550613, 34.870255, 45.991676>,  <35.659206, 35.061440, 45.895466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550613, 34.870255, 45.991676>,  <35.369629, 34.551613, 46.152027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550613, 34.870255, 45.991676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475675, 0.164655, 0.864073,
		0.754327, -0.581651, -0.304422,
		0.452464, 0.796600, -0.400880,
		35.686352, 35.109234, 45.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991207, 34.582623, 46.472492>,  <35.369629, 34.551613, 46.152027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991207, 34.582623, 46.472492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040993, 34.942879, 46.305950>,  <36.070866, 35.159035, 46.206024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040993, 34.942879, 46.305950>,  <35.991207, 34.582623, 46.472492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040993, 34.942879, 46.305950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597213, 0.267097, 0.756305,
		0.792367, -0.342786, -0.504631,
		0.124465, 0.900643, -0.416355,
		36.078331, 35.213070, 46.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727169, 34.734924, 46.383896>,  <35.991207, 34.582623, 46.472492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727169, 34.734924, 46.383896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502716, 35.064640, 46.414040>,  <36.368046, 35.262470, 46.432125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502716, 35.064640, 46.414040>,  <36.727169, 34.734924, 46.383896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502716, 35.064640, 46.414040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552270, 0.305027, 0.775858,
		0.616544, 0.476978, -0.626390,
		-0.561134, 0.824288, 0.075359,
		36.334377, 35.311928, 46.436646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193821, 35.077553, 46.776886>,  <36.727169, 34.734924, 46.383896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193821, 35.077553, 46.776886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866970, 35.304840, 46.815735>,  <36.670860, 35.441212, 46.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866970, 35.304840, 46.815735>,  <37.193821, 35.077553, 46.776886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866970, 35.304840, 46.815735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361463, 0.373805, 0.854175,
		0.449052, 0.733075, -0.510836,
		-0.817127, 0.568217, 0.097121,
		36.621834, 35.475304, 46.844872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544422, 35.780106, 46.940105>,  <37.193821, 35.077553, 46.776886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544422, 35.780106, 46.940105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165977, 35.723835, 47.056782>,  <36.938911, 35.690075, 47.126789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165977, 35.723835, 47.056782>,  <37.544422, 35.780106, 46.940105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165977, 35.723835, 47.056782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191314, 0.483951, 0.853927,
		-0.261289, 0.863715, -0.430959,
		-0.946112, -0.140673, 0.291691,
		36.882145, 35.681633, 47.144291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571369, 36.469910, 46.618080>,  <37.544422, 35.780106, 46.940105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571369, 36.469910, 46.618080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938854, 36.465027, 46.775974>,  <38.159348, 36.462097, 46.870708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938854, 36.465027, 46.775974>,  <37.571369, 36.469910, 46.618080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938854, 36.465027, 46.775974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333673, -0.510655, -0.792397,
		0.211245, 0.859699, -0.465073,
		0.918715, -0.012207, 0.394732,
		38.214470, 36.461365, 46.894394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034870, 36.846733, 46.156628>,  <37.571369, 36.469910, 46.618080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034870, 36.846733, 46.156628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268456, 36.602367, 46.370457>,  <38.408607, 36.455746, 46.498756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268456, 36.602367, 46.370457>,  <38.034870, 36.846733, 46.156628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268456, 36.602367, 46.370457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354833, -0.400188, -0.844952,
		0.730125, 0.683104, -0.016921,
		0.583961, -0.610917, 0.534575,
		38.443645, 36.419094, 46.530830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723724, 36.993214, 46.013035>,  <38.034870, 36.846733, 46.156628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723724, 36.993214, 46.013035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766586, 36.612507, 46.128036>,  <38.792305, 36.384083, 46.197037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766586, 36.612507, 46.128036>,  <38.723724, 36.993214, 46.013035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766586, 36.612507, 46.128036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465749, -0.207426, -0.860263,
		0.878405, 0.226089, 0.421056,
		0.107158, -0.951766, 0.287505,
		38.798733, 36.326977, 46.214287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308651, 36.840023, 45.787243>,  <38.723724, 36.993214, 46.013035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308651, 36.840023, 45.787243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130909, 36.486870, 45.848000>,  <39.024265, 36.274979, 45.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130909, 36.486870, 45.848000>,  <39.308651, 36.840023, 45.787243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130909, 36.486870, 45.848000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484713, -0.379527, -0.788043,
		0.753395, -0.276546, 0.596588,
		-0.444351, -0.882883, 0.151888,
		38.997604, 36.222004, 45.893566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817833, 36.366039, 45.513874>,  <39.308651, 36.840023, 45.787243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817833, 36.366039, 45.513874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481663, 36.150410, 45.536133>,  <39.279961, 36.021034, 45.549488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481663, 36.150410, 45.536133>,  <39.817833, 36.366039, 45.513874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481663, 36.150410, 45.536133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229822, -0.447505, -0.864246,
		0.490789, -0.713543, 0.499983,
		-0.840421, -0.539070, 0.055643,
		39.229538, 35.988689, 45.552826>
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
