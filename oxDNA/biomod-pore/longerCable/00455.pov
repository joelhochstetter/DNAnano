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
	<24.041065, 35.053341, 35.217831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436817, 35.109711, 35.203594>,  <24.674269, 35.143532, 35.195053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436817, 35.109711, 35.203594>,  <24.041065, 35.053341, 35.217831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436817, 35.109711, 35.203594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119166, -0.646249, 0.753765,
		0.083229, -0.750001, -0.656180,
		0.989380, 0.140929, -0.035588,
		24.733631, 35.151989, 35.192917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386484, 34.382000, 35.219322>,  <24.041065, 35.053341, 35.217831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386484, 34.382000, 35.219322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660595, 34.611320, 35.398975>,  <24.825062, 34.748913, 35.506767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660595, 34.611320, 35.398975>,  <24.386484, 34.382000, 35.219322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660595, 34.611320, 35.398975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123698, -0.699368, 0.703977,
		0.717702, -0.426861, -0.550176,
		0.685275, 0.573301, 0.449136,
		24.866179, 34.783310, 35.533718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580856, 34.014389, 35.776424>,  <24.386484, 34.382000, 35.219322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580856, 34.014389, 35.776424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813118, 34.328201, 35.863472>,  <24.952475, 34.516487, 35.915703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813118, 34.328201, 35.863472>,  <24.580856, 34.014389, 35.776424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813118, 34.328201, 35.863472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319867, -0.465635, 0.825148,
		0.748683, -0.409515, -0.521317,
		0.580654, 0.784526, 0.217623,
		24.987314, 34.563560, 35.928761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140411, 33.747879, 35.940399>,  <24.580856, 34.014389, 35.776424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140411, 33.747879, 35.940399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161198, 34.114754, 36.098415>,  <25.173670, 34.334881, 36.193226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161198, 34.114754, 36.098415>,  <25.140411, 33.747879, 35.940399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161198, 34.114754, 36.098415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308408, -0.390981, 0.867190,
		0.949834, 0.076770, -0.303187,
		0.051966, 0.917191, 0.395043,
		25.176788, 34.389912, 36.216927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816559, 33.737576, 36.243977>,  <25.140411, 33.747879, 35.940399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816559, 33.737576, 36.243977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579033, 34.014751, 36.407543>,  <25.436518, 34.181057, 36.505684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579033, 34.014751, 36.407543>,  <25.816559, 33.737576, 36.243977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579033, 34.014751, 36.407543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251319, -0.323058, 0.912399,
		0.764344, 0.644567, 0.017688,
		-0.593816, 0.692941, 0.408919,
		25.400888, 34.222633, 36.530220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143623, 34.195999, 36.785152>,  <25.816559, 33.737576, 36.243977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143623, 34.195999, 36.785152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753990, 34.168850, 36.871460>,  <25.520210, 34.152561, 36.923244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753990, 34.168850, 36.871460>,  <26.143623, 34.195999, 36.785152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753990, 34.168850, 36.871460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224934, -0.391250, 0.892372,
		0.023849, 0.917778, 0.396377,
		-0.974082, -0.067877, 0.215770,
		25.461765, 34.148487, 36.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008423, 34.619892, 37.398655>,  <26.143623, 34.195999, 36.785152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008423, 34.619892, 37.398655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716181, 34.349270, 37.361801>,  <25.540834, 34.186897, 37.339687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716181, 34.349270, 37.361801>,  <26.008423, 34.619892, 37.398655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716181, 34.349270, 37.361801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323395, -0.461716, 0.825975,
		-0.601357, 0.573667, 0.556126,
		-0.730607, -0.676554, -0.092135,
		25.497000, 34.146305, 37.334160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757484, 34.561207, 38.077641>,  <26.008423, 34.619892, 37.398655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757484, 34.561207, 38.077641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689947, 34.226192, 37.869781>,  <25.649424, 34.025185, 37.745068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689947, 34.226192, 37.869781>,  <25.757484, 34.561207, 38.077641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689947, 34.226192, 37.869781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323136, -0.545114, 0.773585,
		-0.931168, -0.037300, 0.362677,
		-0.168846, -0.837532, -0.519646,
		25.639294, 33.974934, 37.713886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458237, 34.040993, 38.642265>,  <25.757484, 34.561207, 38.077641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458237, 34.040993, 38.642265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598043, 33.836670, 38.328091>,  <25.681929, 33.714077, 38.139587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598043, 33.836670, 38.328091>,  <25.458237, 34.040993, 38.642265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598043, 33.836670, 38.328091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545756, -0.570410, 0.613826,
		-0.761569, -0.643200, 0.079408,
		0.349518, -0.510809, -0.785437,
		25.702898, 33.683426, 38.092461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546452, 33.295246, 38.831722>,  <25.458237, 34.040993, 38.642265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546452, 33.295246, 38.831722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791340, 33.333969, 38.517826>,  <25.938272, 33.357204, 38.329491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791340, 33.333969, 38.517826>,  <25.546452, 33.295246, 38.831722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791340, 33.333969, 38.517826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621907, -0.671851, 0.402303,
		-0.488282, -0.734332, -0.471526,
		0.612220, 0.096808, -0.784739,
		25.975006, 33.363010, 38.282406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585588, 32.561497, 38.739269>,  <25.546452, 33.295246, 38.831722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585588, 32.561497, 38.739269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888054, 32.764675, 38.574245>,  <26.069532, 32.886581, 38.475231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888054, 32.764675, 38.574245>,  <25.585588, 32.561497, 38.739269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888054, 32.764675, 38.574245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626020, -0.377908, 0.682117,
		0.190567, -0.774065, -0.603745,
		0.756163, 0.507946, -0.412563,
		26.114902, 32.917057, 38.450478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303816, 32.107613, 38.536411>,  <25.585588, 32.561497, 38.739269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303816, 32.107613, 38.536411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378654, 32.491299, 38.621166>,  <26.423557, 32.721512, 38.672020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378654, 32.491299, 38.621166>,  <26.303816, 32.107613, 38.536411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378654, 32.491299, 38.621166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711600, -0.281037, 0.643928,
		0.677215, 0.030301, -0.735161,
		0.187096, 0.959219, 0.211884,
		26.434784, 32.779064, 38.684731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633360, 32.093876, 39.253159>,  <26.303816, 32.107613, 38.536411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633360, 32.093876, 39.253159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030092, 32.111317, 39.205208>,  <27.268131, 32.121780, 39.176437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030092, 32.111317, 39.205208>,  <26.633360, 32.093876, 39.253159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030092, 32.111317, 39.205208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112875, 0.737749, -0.665571,
		0.059420, 0.673665, 0.736644,
		0.991831, 0.043600, -0.119877,
		27.327642, 32.124397, 39.169243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958212, 32.687309, 39.643162>,  <26.633360, 32.093876, 39.253159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958212, 32.687309, 39.643162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083088, 32.539799, 39.292953>,  <27.158012, 32.451290, 39.082829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083088, 32.539799, 39.292953>,  <26.958212, 32.687309, 39.643162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083088, 32.539799, 39.292953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350937, 0.811634, -0.467004,
		0.882826, 0.453047, 0.123964,
		0.312188, -0.368779, -0.875523,
		27.176744, 32.429165, 39.030296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393604, 33.223049, 39.272991>,  <26.958212, 32.687309, 39.643162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393604, 33.223049, 39.272991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215511, 32.951950, 39.038925>,  <27.108656, 32.789291, 38.898483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215511, 32.951950, 39.038925>,  <27.393604, 33.223049, 39.272991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215511, 32.951950, 39.038925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369588, 0.734349, -0.569329,
		0.815581, -0.037213, -0.577445,
		-0.445233, -0.677751, -0.585168,
		27.081942, 32.748627, 38.863377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247578, 33.594124, 38.729340>,  <27.393604, 33.223049, 39.272991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247578, 33.594124, 38.729340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032030, 33.275154, 38.620720>,  <26.902702, 33.083775, 38.555550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032030, 33.275154, 38.620720>,  <27.247578, 33.594124, 38.729340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032030, 33.275154, 38.620720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587188, 0.586705, -0.557663,
		0.604013, -0.141054, -0.784393,
		-0.538868, -0.797421, -0.271552,
		26.870369, 33.035927, 38.539253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161781, 33.657475, 37.901726>,  <27.247578, 33.594124, 38.729340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161781, 33.657475, 37.901726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857288, 33.441772, 38.045795>,  <26.674593, 33.312351, 38.132236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857288, 33.441772, 38.045795>,  <27.161781, 33.657475, 37.901726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857288, 33.441772, 38.045795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625992, 0.466077, -0.625225,
		0.169288, -0.701408, -0.692364,
		-0.761233, -0.539258, 0.360175,
		26.628918, 33.279995, 38.153847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777203, 33.381783, 37.319244>,  <27.161781, 33.657475, 37.901726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777203, 33.381783, 37.319244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520605, 33.383003, 37.626091>,  <26.366646, 33.383736, 37.810200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520605, 33.383003, 37.626091>,  <26.777203, 33.381783, 37.319244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520605, 33.383003, 37.626091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718114, 0.349318, -0.601904,
		-0.269805, -0.936999, -0.221895,
		-0.641496, 0.003050, 0.767121,
		26.328156, 33.383919, 37.856228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259405, 33.005524, 37.073578>,  <26.777203, 33.381783, 37.319244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259405, 33.005524, 37.073578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088011, 33.199604, 37.378468>,  <25.985174, 33.316051, 37.561401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088011, 33.199604, 37.378468>,  <26.259405, 33.005524, 37.073578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088011, 33.199604, 37.378468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729385, 0.312159, -0.608732,
		-0.533291, -0.816785, 0.220143,
		-0.428484, 0.485200, 0.762222,
		25.959465, 33.345165, 37.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604420, 32.900558, 36.991936>,  <26.259405, 33.005524, 37.073578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604420, 32.900558, 36.991936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616158, 33.222519, 37.229008>,  <25.623199, 33.415695, 37.371250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616158, 33.222519, 37.229008>,  <25.604420, 32.900558, 36.991936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616158, 33.222519, 37.229008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762826, 0.401196, -0.507088,
		-0.645938, -0.437233, 0.625773,
		0.029342, 0.804903, 0.592680,
		25.624960, 33.463989, 37.406811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058134, 32.855247, 37.598797>,  <25.604420, 32.900558, 36.991936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058134, 32.855247, 37.598797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184065, 33.220406, 37.702724>,  <25.259623, 33.439499, 37.765079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184065, 33.220406, 37.702724>,  <25.058134, 32.855247, 37.598797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184065, 33.220406, 37.702724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177626, 0.325570, -0.928683,
		-0.932381, 0.246222, 0.264651,
		0.314825, 0.912895, 0.259820,
		25.278513, 33.494274, 37.780670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573137, 33.287033, 37.279369>,  <25.058134, 32.855247, 37.598797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573137, 33.287033, 37.279369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866295, 33.558220, 37.302082>,  <25.042191, 33.720932, 37.315708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866295, 33.558220, 37.302082>,  <24.573137, 33.287033, 37.279369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866295, 33.558220, 37.302082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384807, 0.481909, -0.787202,
		-0.561059, 0.555089, 0.614075,
		0.732896, 0.677968, 0.056778,
		25.086164, 33.761612, 37.319115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241009, 33.980774, 37.303513>,  <24.573137, 33.287033, 37.279369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241009, 33.980774, 37.303513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608395, 34.036045, 37.155281>,  <24.828827, 34.069206, 37.066341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608395, 34.036045, 37.155281>,  <24.241009, 33.980774, 37.303513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608395, 34.036045, 37.155281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362942, 0.666758, -0.650928,
		0.157145, 0.732354, 0.662544,
		0.918465, 0.138175, -0.370579,
		24.883934, 34.077499, 37.044106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.502697, 34.698566, 37.346622>,  <24.241009, 33.980774, 37.303513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.502697, 34.698566, 37.346622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854837, 34.544804, 37.235474>,  <25.066122, 34.452545, 37.168785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854837, 34.544804, 37.235474>,  <24.502697, 34.698566, 37.346622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854837, 34.544804, 37.235474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181402, 0.268439, -0.946062,
		0.438266, 0.883273, 0.166588,
		0.880350, -0.384407, -0.277875,
		25.118942, 34.429482, 37.152111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804163, 35.222126, 37.067497>,  <24.502697, 34.698566, 37.346622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804163, 35.222126, 37.067497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000172, 34.922531, 36.889103>,  <25.117777, 34.742775, 36.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000172, 34.922531, 36.889103>,  <24.804163, 35.222126, 37.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000172, 34.922531, 36.889103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084876, 0.468195, -0.879539,
		0.867569, 0.468845, 0.165854,
		0.490020, -0.748984, -0.445985,
		25.147177, 34.697834, 36.755306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372807, 35.512726, 36.763626>,  <24.804163, 35.222126, 37.067497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372807, 35.512726, 36.763626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323072, 35.160839, 36.580048>,  <25.293232, 34.949707, 36.469898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323072, 35.160839, 36.580048>,  <25.372807, 35.512726, 36.763626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323072, 35.160839, 36.580048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044111, 0.466982, -0.883166,
		0.991259, -0.089565, -0.096868,
		-0.124336, -0.879719, -0.458949,
		25.285772, 34.896923, 36.442364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707220, 35.607597, 36.162575>,  <25.372807, 35.512726, 36.763626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707220, 35.607597, 36.162575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472982, 35.290104, 36.096767>,  <25.332439, 35.099609, 36.057281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472982, 35.290104, 36.096767>,  <25.707220, 35.607597, 36.162575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472982, 35.290104, 36.096767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260043, 0.376184, -0.889305,
		0.767760, -0.477990, -0.426696,
		-0.585595, -0.793732, -0.164521,
		25.297304, 35.051983, 36.047413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917648, 35.237938, 35.629791>,  <25.707220, 35.607597, 36.162575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917648, 35.237938, 35.629791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519224, 35.208820, 35.650059>,  <25.280170, 35.191349, 35.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519224, 35.208820, 35.650059>,  <25.917648, 35.237938, 35.629791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519224, 35.208820, 35.650059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075811, 0.402219, -0.912399,
		0.046034, -0.912645, -0.406152,
		-0.996059, -0.072792, 0.050672,
		25.220406, 35.186981, 35.665260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454226, 35.673958, 36.150818>,  <25.917648, 35.237938, 35.629791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454226, 35.673958, 36.150818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177315, 35.763287, 36.425301>,  <26.011169, 35.816883, 36.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177315, 35.763287, 36.425301>,  <26.454226, 35.673958, 36.150818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177315, 35.763287, 36.425301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687774, -0.083675, 0.721086,
		0.218452, 0.971147, -0.095668,
		-0.692276, 0.223321, 0.686209,
		25.969631, 35.830284, 36.631165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325687, 36.242146, 36.622562>,  <26.454226, 35.673958, 36.150818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325687, 36.242146, 36.622562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634045, 36.484032, 36.702606>,  <26.819059, 36.629162, 36.750633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634045, 36.484032, 36.702606>,  <26.325687, 36.242146, 36.622562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634045, 36.484032, 36.702606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336120, 0.119340, 0.934228,
		0.541061, -0.787450, 0.295255,
		0.770894, 0.604715, 0.200107,
		26.865313, 36.665447, 36.762638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577337, 35.991085, 37.274677>,  <26.325687, 36.242146, 36.622562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577337, 35.991085, 37.274677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640308, 36.372746, 37.172848>,  <26.678091, 36.601742, 37.111748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640308, 36.372746, 37.172848>,  <26.577337, 35.991085, 37.274677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640308, 36.372746, 37.172848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394816, 0.297106, 0.869395,
		0.905172, -0.036357, 0.423487,
		0.157429, 0.954152, -0.254577,
		26.687536, 36.658993, 37.096474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004353, 36.311478, 37.810692>,  <26.577337, 35.991085, 37.274677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004353, 36.311478, 37.810692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733374, 36.522213, 37.605362>,  <26.570786, 36.648655, 37.482162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733374, 36.522213, 37.605362>,  <27.004353, 36.311478, 37.810692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733374, 36.522213, 37.605362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454558, 0.248817, 0.855259,
		0.578310, 0.812729, 0.070919,
		-0.677448, 0.526841, -0.513326,
		26.530140, 36.680264, 37.451363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083157, 37.068405, 38.050316>,  <27.004353, 36.311478, 37.810692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083157, 37.068405, 38.050316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720982, 37.059776, 37.880745>,  <26.503677, 37.054600, 37.779003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720982, 37.059776, 37.880745>,  <27.083157, 37.068405, 38.050316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720982, 37.059776, 37.880745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401032, 0.370813, 0.837658,
		0.139130, 0.928457, -0.344399,
		-0.905437, -0.021572, -0.423932,
		26.449350, 37.053307, 37.753567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895363, 37.705780, 38.050892>,  <27.083157, 37.068405, 38.050316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895363, 37.705780, 38.050892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561153, 37.490547, 38.006401>,  <26.360628, 37.361408, 37.979706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561153, 37.490547, 38.006401>,  <26.895363, 37.705780, 38.050892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561153, 37.490547, 38.006401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255227, 0.200797, 0.945801,
		-0.486582, 0.818627, -0.305103,
		-0.835522, -0.538080, -0.111231,
		26.310497, 37.329124, 37.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255457, 38.179375, 38.106880>,  <26.895363, 37.705780, 38.050892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255457, 38.179375, 38.106880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272905, 37.793060, 38.209137>,  <26.283375, 37.561272, 38.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272905, 37.793060, 38.209137>,  <26.255457, 38.179375, 38.106880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272905, 37.793060, 38.209137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143202, 0.259291, 0.955124,
		-0.988732, -0.005055, 0.149613,
		0.043622, -0.965786, 0.255645,
		26.285992, 37.503326, 38.285831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890377, 38.104073, 38.722168>,  <26.255457, 38.179375, 38.106880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890377, 38.104073, 38.722168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171968, 37.820572, 38.703915>,  <26.340923, 37.650471, 38.692963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171968, 37.820572, 38.703915>,  <25.890377, 38.104073, 38.722168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171968, 37.820572, 38.703915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344792, 0.284881, 0.894406,
		-0.620916, -0.645374, 0.444923,
		0.703976, -0.708756, -0.045632,
		26.383162, 37.607944, 38.690224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376278, 38.312088, 38.087646>,  <25.890377, 38.104073, 38.722168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376278, 38.312088, 38.087646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399166, 37.918861, 38.157291>,  <25.412899, 37.682926, 38.199078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399166, 37.918861, 38.157291>,  <25.376278, 38.312088, 38.087646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399166, 37.918861, 38.157291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064015, 0.177650, 0.982009,
		-0.996307, -0.045043, 0.073096,
		0.057218, -0.983062, 0.174110,
		25.416332, 37.623943, 38.209526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947802, 38.290638, 38.546371>,  <25.376278, 38.312088, 38.087646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947802, 38.290638, 38.546371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141459, 37.943535, 38.591282>,  <25.257652, 37.735275, 38.618229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141459, 37.943535, 38.591282>,  <24.947802, 38.290638, 38.546371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141459, 37.943535, 38.591282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003050, 0.129986, 0.991511,
		-0.874983, -0.479691, 0.065578,
		0.484143, -0.867755, 0.112273,
		25.286701, 37.683208, 38.624966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586021, 37.749966, 38.900669>,  <24.947802, 38.290638, 38.546371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586021, 37.749966, 38.900669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976185, 37.706554, 38.977402>,  <25.210283, 37.680508, 39.023441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976185, 37.706554, 38.977402>,  <24.586021, 37.749966, 38.900669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976185, 37.706554, 38.977402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173987, 0.155171, 0.972446,
		-0.135309, -0.981907, 0.132472,
		0.975408, -0.108533, 0.191835,
		25.268806, 37.673996, 39.034954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660118, 37.272526, 39.403759>,  <24.586021, 37.749966, 38.900669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660118, 37.272526, 39.403759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990183, 37.498093, 39.417049>,  <25.188223, 37.633434, 39.425026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990183, 37.498093, 39.417049>,  <24.660118, 37.272526, 39.403759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990183, 37.498093, 39.417049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192422, 0.225287, 0.955102,
		0.531111, -0.794509, 0.294409,
		0.825163, 0.563916, 0.033229,
		25.237732, 37.667267, 39.427017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728838, 37.883587, 39.847248>,  <24.660118, 37.272526, 39.403759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728838, 37.883587, 39.847248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007483, 37.690979, 40.059990>,  <25.174669, 37.575413, 40.187634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007483, 37.690979, 40.059990>,  <24.728838, 37.883587, 39.847248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007483, 37.690979, 40.059990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449679, -0.284594, -0.846638,
		0.559035, 0.828943, 0.018276,
		0.696613, -0.481518, 0.531856,
		25.216467, 37.546524, 40.219547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426470, 38.265629, 39.828236>,  <24.728838, 37.883587, 39.847248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426470, 38.265629, 39.828236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424940, 37.866699, 39.857441>,  <25.424023, 37.627342, 39.874962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424940, 37.866699, 39.857441>,  <25.426470, 38.265629, 39.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424940, 37.866699, 39.857441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489324, -0.065538, -0.869636,
		0.872094, 0.032399, 0.488265,
		-0.003824, -0.997324, 0.073009,
		25.423794, 37.567501, 39.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150150, 37.927380, 39.681255>,  <25.426470, 38.265629, 39.828236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150150, 37.927380, 39.681255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837921, 37.689243, 39.605068>,  <25.650583, 37.546364, 39.559357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837921, 37.689243, 39.605068>,  <26.150150, 37.927380, 39.681255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837921, 37.689243, 39.605068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361330, -0.181129, -0.914676,
		0.510044, -0.782793, 0.356498,
		-0.780574, -0.595339, -0.190463,
		25.603748, 37.510643, 39.547928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416296, 37.254227, 39.354675>,  <26.150150, 37.927380, 39.681255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416296, 37.254227, 39.354675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044371, 37.346561, 39.240025>,  <25.821215, 37.401962, 39.171234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044371, 37.346561, 39.240025>,  <26.416296, 37.254227, 39.354675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044371, 37.346561, 39.240025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176307, -0.404243, -0.897499,
		-0.323043, -0.885044, 0.335173,
		-0.929817, 0.230838, -0.286627,
		25.765427, 37.415813, 39.154037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119991, 36.711121, 38.966423>,  <26.416296, 37.254227, 39.354675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119991, 36.711121, 38.966423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900805, 37.024551, 38.849304>,  <25.769293, 37.212612, 38.779034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900805, 37.024551, 38.849304>,  <26.119991, 36.711121, 38.966423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900805, 37.024551, 38.849304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120670, -0.272324, -0.954609,
		-0.827751, -0.558426, 0.054670,
		-0.547966, 0.783582, -0.292801,
		25.736414, 37.259624, 38.761463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601221, 36.477364, 38.435501>,  <26.119991, 36.711121, 38.966423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601221, 36.477364, 38.435501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660181, 36.867569, 38.370205>,  <25.695557, 37.101692, 38.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660181, 36.867569, 38.370205>,  <25.601221, 36.477364, 38.435501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660181, 36.867569, 38.370205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031290, -0.169556, -0.985024,
		-0.988582, 0.140084, -0.055517,
		0.147399, 0.975514, -0.163236,
		25.704401, 37.160225, 38.321236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174314, 36.727829, 37.847004>,  <25.601221, 36.477364, 38.435501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174314, 36.727829, 37.847004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509537, 36.942776, 37.884735>,  <25.710670, 37.071743, 37.907372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509537, 36.942776, 37.884735>,  <25.174314, 36.727829, 37.847004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509537, 36.942776, 37.884735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233496, -0.197009, -0.952191,
		-0.493094, 0.820014, -0.290578,
		0.838056, 0.537369, 0.094326,
		25.760954, 37.103985, 37.913033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262089, 37.019295, 37.213844>,  <25.174314, 36.727829, 37.847004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262089, 37.019295, 37.213844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624645, 37.011810, 37.382656>,  <25.842178, 37.007320, 37.483944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624645, 37.011810, 37.382656>,  <25.262089, 37.019295, 37.213844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624645, 37.011810, 37.382656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419889, -0.069742, -0.904892,
		0.046366, 0.997389, -0.055356,
		0.906390, -0.018713, 0.422026,
		25.896563, 37.006195, 37.509266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696871, 37.399471, 36.721844>,  <25.262089, 37.019295, 37.213844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696871, 37.399471, 36.721844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933979, 37.166153, 36.943974>,  <26.076244, 37.026161, 37.077251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933979, 37.166153, 36.943974>,  <25.696871, 37.399471, 36.721844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933979, 37.166153, 36.943974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587486, -0.158481, -0.793564,
		0.550891, 0.796649, 0.248735,
		0.592772, -0.583296, 0.555326,
		26.111811, 36.991165, 37.110573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388702, 37.591434, 36.554276>,  <25.696871, 37.399471, 36.721844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388702, 37.591434, 36.554276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378824, 37.216629, 36.693645>,  <26.372898, 36.991745, 36.777267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378824, 37.216629, 36.693645>,  <26.388702, 37.591434, 36.554276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378824, 37.216629, 36.693645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519699, -0.309767, -0.796214,
		0.853993, 0.161415, 0.494613,
		-0.024694, -0.937011, 0.348426,
		26.371416, 36.935524, 36.798172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118490, 37.273197, 36.723873>,  <26.388702, 37.591434, 36.554276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118490, 37.273197, 36.723873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821518, 37.039982, 36.591896>,  <26.643333, 36.900055, 36.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821518, 37.039982, 36.591896>,  <27.118490, 37.273197, 36.723873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821518, 37.039982, 36.591896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469883, -0.102156, -0.876797,
		0.477498, -0.805999, 0.349802,
		-0.742432, -0.583035, -0.329946,
		26.598787, 36.865070, 36.492912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460159, 36.598541, 36.518444>,  <27.118490, 37.273197, 36.723873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460159, 36.598541, 36.518444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126593, 36.696926, 36.320824>,  <26.926453, 36.755959, 36.202251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126593, 36.696926, 36.320824>,  <27.460159, 36.598541, 36.518444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126593, 36.696926, 36.320824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470075, -0.152470, -0.869357,
		-0.289161, -0.957211, 0.011525,
		-0.833916, 0.245966, -0.494050,
		26.876417, 36.770714, 36.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520374, 36.335281, 35.917683>,  <27.460159, 36.598541, 36.518444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520374, 36.335281, 35.917683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225470, 36.574314, 35.791611>,  <27.048527, 36.717735, 35.715969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225470, 36.574314, 35.791611>,  <27.520374, 36.335281, 35.917683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225470, 36.574314, 35.791611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316185, -0.107075, -0.942636,
		-0.597052, -0.794624, -0.110005,
		-0.737263, 0.597584, -0.315177,
		27.004292, 36.753590, 35.697056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108089, 36.008522, 35.413132>,  <27.520374, 36.335281, 35.917683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108089, 36.008522, 35.413132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086157, 36.403427, 35.353397>,  <27.072998, 36.640369, 35.317554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086157, 36.403427, 35.353397>,  <27.108089, 36.008522, 35.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086157, 36.403427, 35.353397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192915, -0.136272, -0.971707,
		-0.979682, -0.082089, -0.182987,
		-0.054831, 0.987265, -0.149340,
		27.069708, 36.699608, 35.308594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843609, 36.089798, 34.780609>,  <27.108089, 36.008522, 35.413132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843609, 36.089798, 34.780609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047091, 36.427540, 34.847889>,  <27.169180, 36.630184, 34.888256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047091, 36.427540, 34.847889>,  <26.843609, 36.089798, 34.780609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047091, 36.427540, 34.847889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312517, 0.000942, -0.949912,
		-0.802218, 0.535789, -0.263394,
		0.508704, 0.844351, 0.168199,
		27.199701, 36.680843, 34.898350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821558, 36.538841, 34.127514>,  <26.843609, 36.089798, 34.780609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821558, 36.538841, 34.127514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167572, 36.554821, 34.327560>,  <27.375181, 36.564411, 34.447590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167572, 36.554821, 34.327560>,  <26.821558, 36.538841, 34.127514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167572, 36.554821, 34.327560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494824, -0.232526, -0.837306,
		0.082838, 0.971769, -0.220913,
		0.865036, 0.039952, 0.500116,
		27.427082, 36.566807, 34.477596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333763, 36.985195, 33.723324>,  <26.821558, 36.538841, 34.127514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333763, 36.985195, 33.723324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485111, 36.677940, 33.929935>,  <27.575920, 36.493587, 34.053902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485111, 36.677940, 33.929935>,  <27.333763, 36.985195, 33.723324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485111, 36.677940, 33.929935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301941, -0.425076, -0.853312,
		0.875025, 0.478828, 0.071097,
		0.378369, -0.768137, 0.516530,
		27.598621, 36.447498, 34.084896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108335, 36.965183, 33.693714>,  <27.333763, 36.985195, 33.723324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108335, 36.965183, 33.693714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937338, 36.604679, 33.721920>,  <27.834740, 36.388374, 33.738846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937338, 36.604679, 33.721920>,  <28.108335, 36.965183, 33.693714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937338, 36.604679, 33.721920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391245, -0.254770, -0.884319,
		0.814970, -0.350452, 0.461528,
		-0.427495, -0.901263, 0.070517,
		27.809090, 36.334301, 33.743076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612286, 36.366879, 33.562790>,  <28.108335, 36.965183, 33.693714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612286, 36.366879, 33.562790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232258, 36.320278, 33.447002>,  <28.004242, 36.292316, 33.377529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232258, 36.320278, 33.447002>,  <28.612286, 36.366879, 33.562790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232258, 36.320278, 33.447002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310104, -0.249432, -0.917398,
		0.034678, -0.961359, 0.273107,
		-0.950070, -0.116505, -0.289472,
		27.947237, 36.285328, 33.360161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396425, 35.722919, 33.254864>,  <28.612286, 36.366879, 33.562790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396425, 35.722919, 33.254864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211105, 36.025917, 33.070877>,  <28.099915, 36.207714, 32.960487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211105, 36.025917, 33.070877>,  <28.396425, 35.722919, 33.254864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211105, 36.025917, 33.070877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357984, -0.314826, -0.879052,
		-0.810681, -0.571922, -0.125311,
		-0.463297, 0.757489, -0.459962,
		28.072117, 36.253162, 32.932888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763418, 35.494389, 32.724312>,  <28.396425, 35.722919, 33.254864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763418, 35.494389, 32.724312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984007, 35.823177, 32.667393>,  <28.116360, 36.020451, 32.633244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984007, 35.823177, 32.667393>,  <27.763418, 35.494389, 32.724312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984007, 35.823177, 32.667393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379132, -0.398906, -0.834945,
		-0.743059, 0.406501, -0.531620,
		0.551472, 0.821968, -0.142293,
		28.149448, 36.069767, 32.624706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683079, 35.561218, 31.991755>,  <27.763418, 35.494389, 32.724312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683079, 35.561218, 31.991755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014616, 35.741753, 32.124004>,  <28.213539, 35.850075, 32.203354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014616, 35.741753, 32.124004>,  <27.683079, 35.561218, 31.991755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014616, 35.741753, 32.124004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540494, -0.493298, -0.681559,
		-0.144516, 0.743608, -0.652812,
		0.828843, 0.451337, 0.330626,
		28.263269, 35.877155, 32.223194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030544, 36.044270, 31.643539>,  <27.683079, 35.561218, 31.991755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030544, 36.044270, 31.643539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342459, 35.962994, 31.880402>,  <28.529608, 35.914227, 32.022518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342459, 35.962994, 31.880402>,  <28.030544, 36.044270, 31.643539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342459, 35.962994, 31.880402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499098, -0.369234, -0.783944,
		0.377936, 0.906851, -0.186510,
		0.779786, -0.203194, 0.592154,
		28.576395, 35.902035, 32.058048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659203, 36.348660, 31.371006>,  <28.030544, 36.044270, 31.643539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659203, 36.348660, 31.371006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709221, 36.009026, 31.576303>,  <28.739233, 35.805244, 31.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709221, 36.009026, 31.576303>,  <28.659203, 36.348660, 31.371006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709221, 36.009026, 31.576303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454077, -0.410971, -0.790517,
		0.882144, 0.331905, 0.334158,
		0.125048, -0.849083, 0.513246,
		28.746735, 35.754299, 31.730278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347151, 36.152660, 31.398664>,  <28.659203, 36.348660, 31.371006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347151, 36.152660, 31.398664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109663, 35.830799, 31.396181>,  <28.967171, 35.637684, 31.394691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109663, 35.830799, 31.396181>,  <29.347151, 36.152660, 31.398664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109663, 35.830799, 31.396181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560463, -0.407982, -0.720716,
		0.577391, -0.431382, 0.693203,
		-0.593718, -0.804649, -0.006209,
		28.931547, 35.589405, 31.394318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877422, 35.611122, 31.380871>,  <29.347151, 36.152660, 31.398664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877422, 35.611122, 31.380871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524544, 35.468655, 31.257662>,  <29.312817, 35.383175, 31.183737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524544, 35.468655, 31.257662>,  <29.877422, 35.611122, 31.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524544, 35.468655, 31.257662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467607, -0.585605, -0.662125,
		0.055448, -0.728157, 0.683164,
		-0.882195, -0.356166, -0.308021,
		29.259886, 35.361805, 31.165255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785540, 34.798920, 31.468212>,  <29.877422, 35.611122, 31.380871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785540, 34.798920, 31.468212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598780, 34.979053, 31.163790>,  <29.486723, 35.087132, 30.981136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598780, 34.979053, 31.163790>,  <29.785540, 34.798920, 31.468212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598780, 34.979053, 31.163790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540815, -0.535507, -0.648654,
		-0.699659, -0.714447, 0.006483,
		-0.466901, 0.450330, -0.761056,
		29.458710, 35.114151, 30.935472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237289, 34.252579, 31.033859>,  <29.785540, 34.798920, 31.468212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237289, 34.252579, 31.033859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362421, 34.569527, 30.824371>,  <29.437500, 34.759697, 30.698679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362421, 34.569527, 30.824371>,  <29.237289, 34.252579, 31.033859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362421, 34.569527, 30.824371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400798, -0.610025, -0.683543,
		-0.861103, 0.003926, -0.508415,
		0.312829, 0.792373, -0.523721,
		29.456270, 34.807240, 30.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019707, 34.111916, 30.396914>,  <29.237289, 34.252579, 31.033859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019707, 34.111916, 30.396914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331453, 34.359398, 30.357338>,  <29.518501, 34.507889, 30.333591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331453, 34.359398, 30.357338>,  <29.019707, 34.111916, 30.396914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331453, 34.359398, 30.357338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470160, -0.681854, -0.560378,
		-0.414174, 0.390222, -0.822306,
		0.779365, 0.618709, -0.098940,
		29.565262, 34.545010, 30.327656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137785, 34.225380, 29.640896>,  <29.019707, 34.111916, 30.396914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137785, 34.225380, 29.640896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475060, 34.324745, 29.831612>,  <29.677423, 34.384365, 29.946041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475060, 34.324745, 29.831612>,  <29.137785, 34.225380, 29.640896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475060, 34.324745, 29.831612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527148, -0.556208, -0.642454,
		0.105601, 0.793047, -0.599937,
		0.843186, 0.248412, 0.476790,
		29.728016, 34.399269, 29.974649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473980, 34.668903, 29.123184>,  <29.137785, 34.225380, 29.640896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473980, 34.668903, 29.123184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761711, 34.571407, 29.383387>,  <29.934351, 34.512909, 29.539507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761711, 34.571407, 29.383387>,  <29.473980, 34.668903, 29.123184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761711, 34.571407, 29.383387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464935, -0.526839, -0.711531,
		0.516141, 0.814267, -0.265647,
		0.719329, -0.243742, 0.650504,
		29.977510, 34.498283, 29.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154953, 34.866608, 28.840824>,  <29.473980, 34.668903, 29.123184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154953, 34.866608, 28.840824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212275, 34.570000, 29.103003>,  <30.246668, 34.392036, 29.260309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212275, 34.570000, 29.103003>,  <30.154953, 34.866608, 28.840824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212275, 34.570000, 29.103003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543604, -0.494455, -0.678239,
		0.827018, 0.453498, 0.332236,
		0.143304, -0.741521, 0.655447,
		30.255266, 34.347542, 29.299637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882483, 34.740002, 28.788321>,  <30.154953, 34.866608, 28.840824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882483, 34.740002, 28.788321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727444, 34.409332, 28.951477>,  <30.634420, 34.210930, 29.049370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727444, 34.409332, 28.951477>,  <30.882483, 34.740002, 28.788321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727444, 34.409332, 28.951477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562550, -0.562651, -0.605773,
		0.730278, -0.005337, 0.683129,
		-0.387596, -0.826677, 0.407889,
		30.611164, 34.161327, 29.073843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499331, 34.346828, 29.061615>,  <30.882483, 34.740002, 28.788321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499331, 34.346828, 29.061615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172768, 34.116604, 29.042789>,  <30.976830, 33.978470, 29.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172768, 34.116604, 29.042789>,  <31.499331, 34.346828, 29.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172768, 34.116604, 29.042789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458985, -0.597270, -0.657724,
		0.350451, -0.558570, 0.751787,
		-0.816405, -0.575559, -0.047061,
		30.927847, 33.943935, 29.028671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858122, 33.769489, 29.086494>,  <31.499331, 34.346828, 29.061615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858122, 33.769489, 29.086494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497450, 33.710819, 28.923788>,  <31.281046, 33.675617, 28.826164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497450, 33.710819, 28.923788>,  <31.858122, 33.769489, 29.086494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497450, 33.710819, 28.923788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420391, -0.517545, -0.745264,
		-0.101206, -0.842991, 0.528322,
		-0.901681, -0.146676, -0.406764,
		31.226946, 33.666817, 28.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836485, 33.154842, 28.879944>,  <31.858122, 33.769489, 29.086494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836485, 33.154842, 28.879944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534069, 33.311386, 28.670090>,  <31.352619, 33.405312, 28.544178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534069, 33.311386, 28.670090>,  <31.836485, 33.154842, 28.879944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534069, 33.311386, 28.670090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370527, -0.404836, -0.835953,
		-0.539549, -0.826405, 0.161063,
		-0.756040, 0.391359, -0.524634,
		31.307257, 33.428795, 28.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583710, 32.639587, 28.505779>,  <31.836485, 33.154842, 28.879944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583710, 32.639587, 28.505779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483925, 32.979881, 28.320732>,  <31.424053, 33.184059, 28.209703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483925, 32.979881, 28.320732>,  <31.583710, 32.639587, 28.505779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483925, 32.979881, 28.320732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264171, -0.399819, -0.877700,
		-0.931656, -0.341164, -0.125000,
		-0.249462, 0.850736, -0.462620,
		31.409086, 33.235104, 28.181946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326424, 32.427841, 27.899372>,  <31.583710, 32.639587, 28.505779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326424, 32.427841, 27.899372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370972, 32.819820, 27.833275>,  <31.397701, 33.055008, 27.793617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370972, 32.819820, 27.833275>,  <31.326424, 32.427841, 27.899372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370972, 32.819820, 27.833275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341879, -0.193908, -0.919521,
		-0.933121, 0.045914, -0.356618,
		0.111370, 0.979945, -0.165242,
		31.404383, 33.113804, 27.783703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034885, 32.472271, 27.231550>,  <31.326424, 32.427841, 27.899372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034885, 32.472271, 27.231550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243624, 32.807964, 27.292679>,  <31.368868, 33.009380, 27.329355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243624, 32.807964, 27.292679>,  <31.034885, 32.472271, 27.231550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243624, 32.807964, 27.292679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430777, -0.104638, -0.896372,
		-0.736278, 0.533601, -0.416130,
		0.521848, 0.839238, 0.152820,
		31.400179, 33.059734, 27.338526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917700, 32.901375, 26.628708>,  <31.034885, 32.472271, 27.231550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917700, 32.901375, 26.628708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267881, 33.027233, 26.775448>,  <31.477991, 33.102749, 26.863491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267881, 33.027233, 26.775448>,  <30.917700, 32.901375, 26.628708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267881, 33.027233, 26.775448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439279, -0.201529, -0.875454,
		-0.201529, 0.927569, -0.314647,
		0.875454, 0.314647, 0.366848,
		31.530518, 33.121628, 26.885502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193958, 33.360825, 26.194637>,  <30.917700, 32.901375, 26.628708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193958, 33.360825, 26.194637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523039, 33.269436, 26.402853>,  <31.720488, 33.214603, 26.527782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523039, 33.269436, 26.402853>,  <31.193958, 33.360825, 26.194637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523039, 33.269436, 26.402853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525463, -0.043764, -0.849690,
		0.216915, 0.972565, 0.084051,
		0.822701, -0.228476, 0.520540,
		31.769850, 33.200893, 26.559015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765322, 33.849602, 25.993240>,  <31.193958, 33.360825, 26.194637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765322, 33.849602, 25.993240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927256, 33.510773, 26.130978>,  <32.024418, 33.307476, 26.213621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927256, 33.510773, 26.130978>,  <31.765322, 33.849602, 25.993240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927256, 33.510773, 26.130978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606082, -0.033394, -0.794701,
		0.684670, 0.530425, 0.499877,
		0.404836, -0.847074, 0.344344,
		32.048706, 33.256649, 26.234282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510654, 33.939438, 26.141331>,  <31.765322, 33.849602, 25.993240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510654, 33.939438, 26.141331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481861, 33.541946, 26.107124>,  <32.464584, 33.303452, 26.086601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481861, 33.541946, 26.107124>,  <32.510654, 33.939438, 26.141331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481861, 33.541946, 26.107124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607049, 0.024380, -0.794290,
		0.791397, -0.109088, 0.601490,
		-0.071983, -0.993733, -0.085515,
		32.460266, 33.243828, 26.081470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193970, 33.603809, 25.935354>,  <32.510654, 33.939438, 26.141331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193970, 33.603809, 25.935354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931156, 33.314682, 25.849716>,  <32.773468, 33.141205, 25.798334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931156, 33.314682, 25.849716>,  <33.193970, 33.603809, 25.935354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931156, 33.314682, 25.849716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525565, -0.235604, -0.817479,
		0.540449, -0.649633, 0.534689,
		-0.657036, -0.722819, -0.214093,
		32.734047, 33.097836, 25.785488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600113, 33.085403, 25.793447>,  <33.193970, 33.603809, 25.935354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600113, 33.085403, 25.793447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261398, 32.997604, 25.599636>,  <33.058170, 32.944927, 25.483349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261398, 32.997604, 25.599636>,  <33.600113, 33.085403, 25.793447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261398, 32.997604, 25.599636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531191, -0.301079, -0.791952,
		0.027947, -0.927995, 0.371544,
		-0.846791, -0.219494, -0.484528,
		33.007362, 32.931755, 25.454277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673904, 32.397472, 25.482021>,  <33.600113, 33.085403, 25.793447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673904, 32.397472, 25.482021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365292, 32.572502, 25.297300>,  <33.180122, 32.677521, 25.186468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365292, 32.572502, 25.297300>,  <33.673904, 32.397472, 25.482021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365292, 32.572502, 25.297300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288270, -0.406641, -0.866916,
		-0.567128, -0.801981, 0.187598,
		-0.771535, 0.437573, -0.461805,
		33.133831, 32.703773, 25.158758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222515, 31.799166, 25.152634>,  <33.673904, 32.397472, 25.482021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222515, 31.799166, 25.152634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182350, 32.153301, 24.971045>,  <33.158253, 32.365784, 24.862091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182350, 32.153301, 24.971045>,  <33.222515, 31.799166, 25.152634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182350, 32.153301, 24.971045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359064, -0.393284, -0.846404,
		-0.927896, -0.247992, -0.278405,
		-0.100409, 0.885340, -0.453971,
		33.152225, 32.418903, 24.834852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139450, 31.553404, 24.526402>,  <33.222515, 31.799166, 25.152634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139450, 31.553404, 24.526402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205971, 31.943747, 24.469770>,  <33.245884, 32.177952, 24.435791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205971, 31.943747, 24.469770>,  <33.139450, 31.553404, 24.526402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205971, 31.943747, 24.469770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562490, -0.211809, -0.799213,
		-0.809906, 0.053276, -0.584135,
		0.166304, 0.975858, -0.141578,
		33.255863, 32.236504, 24.427298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803654, 31.684498, 23.942759>,  <33.139450, 31.553404, 24.526402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803654, 31.684498, 23.942759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072330, 31.980711, 23.951109>,  <33.233536, 32.158440, 23.956120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072330, 31.980711, 23.951109>,  <32.803654, 31.684498, 23.942759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072330, 31.980711, 23.951109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275103, -0.223169, -0.935155,
		-0.687854, 0.633882, -0.353624,
		0.671696, 0.740533, 0.020875,
		33.273838, 32.202869, 23.957371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671318, 31.980047, 23.316025>,  <32.803654, 31.684498, 23.942759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671318, 31.980047, 23.316025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022522, 32.140049, 23.421164>,  <33.233246, 32.236050, 23.484247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022522, 32.140049, 23.421164>,  <32.671318, 31.980047, 23.316025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022522, 32.140049, 23.421164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342436, -0.141292, -0.928856,
		-0.334407, 0.905557, -0.261032,
		0.878014, 0.400003, 0.262846,
		33.285927, 32.260052, 23.500017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855923, 32.502037, 22.817667>,  <32.671318, 31.980047, 23.316025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855923, 32.502037, 22.817667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179688, 32.362385, 23.006538>,  <33.373947, 32.278591, 23.119862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179688, 32.362385, 23.006538>,  <32.855923, 32.502037, 22.817667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179688, 32.362385, 23.006538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488539, -0.045818, -0.871339,
		0.325848, 0.935952, 0.133480,
		0.809416, -0.349133, 0.472178,
		33.422512, 32.257645, 23.148191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424580, 32.852257, 22.447380>,  <32.855923, 32.502037, 22.817667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424580, 32.852257, 22.447380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588173, 32.545338, 22.644964>,  <33.686329, 32.361187, 22.763514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588173, 32.545338, 22.644964>,  <33.424580, 32.852257, 22.447380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588173, 32.545338, 22.644964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561942, -0.214728, -0.798820,
		0.718995, 0.604279, 0.343354,
		0.408983, -0.767293, 0.493958,
		33.710869, 32.315151, 22.793152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087830, 33.028702, 22.456867>,  <33.424580, 32.852257, 22.447380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087830, 33.028702, 22.456867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072971, 32.634022, 22.520159>,  <34.064056, 32.397213, 22.558134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072971, 32.634022, 22.520159>,  <34.087830, 33.028702, 22.456867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072971, 32.634022, 22.520159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826707, -0.119295, -0.549840,
		0.561405, 0.110384, 0.820146,
		-0.037146, -0.986704, 0.158228,
		34.061829, 32.338009, 22.567627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808311, 32.785313, 22.424385>,  <34.087830, 33.028702, 22.456867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808311, 32.785313, 22.424385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585583, 32.458076, 22.366850>,  <34.451946, 32.261734, 22.332329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585583, 32.458076, 22.366850>,  <34.808311, 32.785313, 22.424385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585583, 32.458076, 22.366850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622903, -0.296699, -0.723852,
		0.549497, -0.492650, 0.674795,
		-0.556817, -0.818086, -0.143838,
		34.418537, 32.212650, 22.323698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260204, 32.230053, 22.466906>,  <34.808311, 32.785313, 22.424385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260204, 32.230053, 22.466906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957848, 32.068405, 22.260868>,  <34.776436, 31.971416, 22.137245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957848, 32.068405, 22.260868>,  <35.260204, 32.230053, 22.466906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957848, 32.068405, 22.260868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634985, -0.260911, -0.727131,
		0.159454, -0.876706, 0.453829,
		-0.755889, -0.404118, -0.515092,
		34.731079, 31.947170, 22.106340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544643, 31.666714, 22.128746>,  <35.260204, 32.230053, 22.466906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544643, 31.666714, 22.128746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204075, 31.756626, 21.939196>,  <34.999733, 31.810574, 21.825466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204075, 31.756626, 21.939196>,  <35.544643, 31.666714, 22.128746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204075, 31.756626, 21.939196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438099, -0.191951, -0.878193,
		-0.288364, -0.955315, 0.064954,
		-0.851420, 0.224783, -0.473875,
		34.948650, 31.824060, 21.797033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350941, 31.104141, 21.709356>,  <35.544643, 31.666714, 22.128746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350941, 31.104141, 21.709356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207832, 31.446466, 21.559914>,  <35.121967, 31.651861, 21.470247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207832, 31.446466, 21.559914>,  <35.350941, 31.104141, 21.709356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207832, 31.446466, 21.559914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634317, -0.070888, -0.769816,
		-0.685302, -0.512406, -0.517495,
		-0.357775, 0.855812, -0.373607,
		35.100498, 31.703211, 21.447832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324352, 30.969625, 21.062521>,  <35.350941, 31.104141, 21.709356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324352, 30.969625, 21.062521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250343, 31.358919, 21.007999>,  <35.205940, 31.592495, 20.975286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250343, 31.358919, 21.007999>,  <35.324352, 30.969625, 21.062521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250343, 31.358919, 21.007999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729952, 0.043236, -0.682130,
		-0.657981, -0.225703, -0.718415,
		-0.185020, 0.973236, -0.136304,
		35.194836, 31.650890, 20.967108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228397, 31.004444, 20.364687>,  <35.324352, 30.969625, 21.062521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228397, 31.004444, 20.364687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338287, 31.359837, 20.511726>,  <35.404221, 31.573072, 20.599951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338287, 31.359837, 20.511726>,  <35.228397, 31.004444, 20.364687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338287, 31.359837, 20.511726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638509, 0.117272, -0.760627,
		-0.718912, 0.443675, -0.535087,
		0.274721, 0.888482, 0.367599,
		35.420704, 31.626381, 20.622005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302406, 31.398907, 19.822449>,  <35.228397, 31.004444, 20.364687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302406, 31.398907, 19.822449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510822, 31.607450, 20.092768>,  <35.635872, 31.732576, 20.254959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510822, 31.607450, 20.092768>,  <35.302406, 31.398907, 19.822449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510822, 31.607450, 20.092768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737690, 0.123198, -0.663804,
		-0.429338, 0.844397, -0.320410,
		0.521041, 0.521359, 0.675797,
		35.667133, 31.763859, 20.295507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621197, 31.918581, 19.475822>,  <35.302406, 31.398907, 19.822449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621197, 31.918581, 19.475822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828171, 31.901463, 19.817684>,  <35.952354, 31.891191, 20.022800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828171, 31.901463, 19.817684>,  <35.621197, 31.918581, 19.475822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828171, 31.901463, 19.817684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853951, 0.090111, -0.512493,
		-0.055082, 0.995012, 0.083171,
		0.517431, -0.042794, 0.854654,
		35.983398, 31.888624, 20.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993382, 32.543884, 19.498814>,  <35.621197, 31.918581, 19.475822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993382, 32.543884, 19.498814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165501, 32.264198, 19.727179>,  <36.268772, 32.096386, 19.864197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165501, 32.264198, 19.727179>,  <35.993382, 32.543884, 19.498814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165501, 32.264198, 19.727179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882136, 0.191525, -0.430296,
		0.191525, 0.688777, 0.699216,
		0.430296, -0.699216, 0.570913,
		36.294590, 32.054432, 19.898453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660240, 32.748123, 19.533081>,  <35.993382, 32.543884, 19.498814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660240, 32.748123, 19.533081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675282, 32.362289, 19.637516>,  <36.684307, 32.130791, 19.700176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675282, 32.362289, 19.637516>,  <36.660240, 32.748123, 19.533081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675282, 32.362289, 19.637516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818187, -0.120282, -0.562229,
		0.573720, 0.234761, 0.784686,
		0.037606, -0.964583, 0.261086,
		36.686562, 32.072914, 19.715841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248375, 32.662437, 19.821861>,  <36.660240, 32.748123, 19.533081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248375, 32.662437, 19.821861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141853, 32.299160, 19.692699>,  <37.077938, 32.081196, 19.615202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141853, 32.299160, 19.692699>,  <37.248375, 32.662437, 19.821861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141853, 32.299160, 19.692699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872017, -0.084267, -0.482166,
		0.410689, -0.409984, 0.814400,
		-0.266307, -0.908192, -0.322906,
		37.061962, 32.026703, 19.595827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821014, 32.342880, 19.816982>,  <37.248375, 32.662437, 19.821861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821014, 32.342880, 19.816982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615051, 32.082699, 19.593634>,  <37.491474, 31.926588, 19.459625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615051, 32.082699, 19.593634>,  <37.821014, 32.342880, 19.816982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615051, 32.082699, 19.593634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809377, -0.154266, -0.566665,
		0.282455, -0.743711, 0.605898,
		-0.514905, -0.650458, -0.558370,
		37.460579, 31.887562, 19.426123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211678, 31.767879, 19.785322>,  <37.821014, 32.342880, 19.816982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211678, 31.767879, 19.785322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965874, 31.741255, 19.470884>,  <37.818390, 31.725281, 19.282223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965874, 31.741255, 19.470884>,  <38.211678, 31.767879, 19.785322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965874, 31.741255, 19.470884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770148, -0.266613, -0.579473,
		-0.171013, -0.961503, 0.215099,
		-0.614513, -0.066560, -0.786093,
		37.781521, 31.721287, 19.235056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294720, 31.065926, 19.447828>,  <38.211678, 31.767879, 19.785322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294720, 31.065926, 19.447828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123512, 31.286501, 19.161413>,  <38.020786, 31.418846, 18.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123512, 31.286501, 19.161413>,  <38.294720, 31.065926, 19.447828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123512, 31.286501, 19.161413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703478, -0.294104, -0.647010,
		-0.567377, -0.780652, -0.262043,
		-0.428021, 0.551439, -0.716039,
		37.995106, 31.451933, 18.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590923, 30.921148, 18.787743>,  <38.294720, 31.065926, 19.447828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590923, 30.921148, 18.787743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436031, 31.272970, 18.677149>,  <38.343098, 31.484062, 18.610792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436031, 31.272970, 18.677149>,  <38.590923, 30.921148, 18.787743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436031, 31.272970, 18.677149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601990, 0.014062, -0.798380,
		-0.698329, -0.475594, -0.534927,
		-0.387227, 0.879553, -0.276482,
		38.319862, 31.536837, 18.594204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447586, 30.832211, 18.116343>,  <38.590923, 30.921148, 18.787743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447586, 30.832211, 18.116343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435356, 31.230082, 18.155697>,  <38.428017, 31.468805, 18.179310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435356, 31.230082, 18.155697>,  <38.447586, 30.832211, 18.116343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435356, 31.230082, 18.155697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424092, 0.102042, -0.899852,
		-0.905102, 0.014210, -0.424956,
		-0.030576, 0.994679, 0.098384,
		38.426182, 31.528484, 18.185213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034180, 31.123466, 17.564075>,  <38.447586, 30.832211, 18.116343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034180, 31.123466, 17.564075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279095, 31.409283, 17.699448>,  <38.426044, 31.580772, 17.780670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279095, 31.409283, 17.699448>,  <38.034180, 31.123466, 17.564075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279095, 31.409283, 17.699448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442580, 0.044940, -0.895602,
		-0.655151, 0.698151, -0.288724,
		0.612291, 0.714539, 0.338430,
		38.462780, 31.623644, 17.800976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891514, 31.807873, 17.307669>,  <38.034180, 31.123466, 17.564075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891514, 31.807873, 17.307669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283958, 31.792608, 17.383526>,  <38.519424, 31.783449, 17.429039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283958, 31.792608, 17.383526>,  <37.891514, 31.807873, 17.307669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283958, 31.792608, 17.383526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190563, 0.359200, -0.913598,
		-0.033256, 0.932480, 0.359687,
		0.981112, -0.038160, 0.189641,
		38.578293, 31.781160, 17.440418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200523, 32.379868, 17.049248>,  <37.891514, 31.807873, 17.307669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200523, 32.379868, 17.049248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522522, 32.143417, 17.069424>,  <38.715721, 32.001545, 17.081530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522522, 32.143417, 17.069424>,  <38.200523, 32.379868, 17.049248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522522, 32.143417, 17.069424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279758, 0.303243, -0.910922,
		0.523177, 0.747402, 0.409483,
		0.804998, -0.591129, 0.050442,
		38.764023, 31.966078, 17.084557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797195, 32.756210, 16.788845>,  <38.200523, 32.379868, 17.049248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797195, 32.756210, 16.788845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888992, 32.370903, 16.733074>,  <38.944073, 32.139717, 16.699612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888992, 32.370903, 16.733074>,  <38.797195, 32.756210, 16.788845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888992, 32.370903, 16.733074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166255, 0.179941, -0.969526,
		0.959005, 0.199322, 0.201444,
		0.229496, -0.963271, -0.139426,
		38.957840, 32.081921, 16.691246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682369, 33.295742, 17.243956>,  <38.797195, 32.756210, 16.788845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682369, 33.295742, 17.243956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903259, 33.628124, 17.270960>,  <39.035793, 33.827553, 17.287163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903259, 33.628124, 17.270960>,  <38.682369, 33.295742, 17.243956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903259, 33.628124, 17.270960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370616, -0.172151, -0.912693,
		-0.746785, 0.529034, -0.403032,
		0.552228, 0.830956, 0.067509,
		39.068928, 33.877411, 17.291212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719589, 33.601215, 16.480837>,  <38.682369, 33.295742, 17.243956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719589, 33.601215, 16.480837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046692, 33.739761, 16.664711>,  <39.242954, 33.822887, 16.775036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046692, 33.739761, 16.664711>,  <38.719589, 33.601215, 16.480837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046692, 33.739761, 16.664711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555570, -0.266296, -0.787673,
		-0.150408, 0.899510, -0.410194,
		0.817752, 0.346364, 0.459688,
		39.292019, 33.843670, 16.802618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082878, 34.097221, 16.089441>,  <38.719589, 33.601215, 16.480837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082878, 34.097221, 16.089441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327480, 33.899940, 16.336931>,  <39.474239, 33.781574, 16.485426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327480, 33.899940, 16.336931>,  <39.082878, 34.097221, 16.089441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327480, 33.899940, 16.336931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523293, -0.334446, -0.783780,
		0.593489, 0.803057, 0.053572,
		0.611503, -0.493199, 0.618724,
		39.510933, 33.751980, 16.522549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729633, 34.338341, 16.151051>,  <39.082878, 34.097221, 16.089441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729633, 34.338341, 16.151051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770554, 33.943573, 16.200891>,  <39.795105, 33.706711, 16.230797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770554, 33.943573, 16.200891>,  <39.729633, 34.338341, 16.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770554, 33.943573, 16.200891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532621, -0.051450, -0.844789,
		0.840149, 0.152788, 0.520390,
		0.102300, -0.986919, 0.124603,
		39.801243, 33.647499, 16.238272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345036, 34.117809, 16.641851>,  <39.729633, 34.338341, 16.151051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345036, 34.117809, 16.641851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328613, 33.737530, 16.764803>,  <40.318760, 33.509361, 16.838573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328613, 33.737530, 16.764803>,  <40.345036, 34.117809, 16.641851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328613, 33.737530, 16.764803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998371, -0.026833, 0.050347,
		-0.039617, 0.308946, 0.950254,
		-0.041053, -0.950701, 0.307380,
		40.316296, 33.452320, 16.857018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389210, 34.290482, 17.353521>,  <40.345036, 34.117809, 16.641851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389210, 34.290482, 17.353521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048820, 34.176632, 17.176962>,  <39.844585, 34.108322, 17.071026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048820, 34.176632, 17.176962>,  <40.389210, 34.290482, 17.353521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048820, 34.176632, 17.176962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524460, 0.505330, 0.685262,
		0.028012, 0.814636, -0.579296,
		-0.850974, -0.284622, -0.441399,
		39.793530, 34.091244, 17.044542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984982, 34.839531, 17.398304>,  <40.389210, 34.290482, 17.353521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984982, 34.839531, 17.398304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697899, 34.563004, 17.364878>,  <39.525650, 34.397087, 17.344822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697899, 34.563004, 17.364878>,  <39.984982, 34.839531, 17.398304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697899, 34.563004, 17.364878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546530, 0.484855, 0.682803,
		-0.431515, 0.535722, -0.725807,
		-0.717704, -0.691316, -0.083566,
		39.482586, 34.355610, 17.339808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326767, 35.206318, 17.411861>,  <39.984982, 34.839531, 17.398304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326767, 35.206318, 17.411861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224979, 34.826416, 17.484753>,  <39.163906, 34.598473, 17.528486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224979, 34.826416, 17.484753>,  <39.326767, 35.206318, 17.411861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224979, 34.826416, 17.484753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564403, 0.298859, 0.769501,
		-0.785300, 0.092963, -0.612096,
		-0.254465, -0.949758, 0.182226,
		39.148640, 34.541489, 17.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652142, 35.171165, 17.457829>,  <39.326767, 35.206318, 17.411861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652142, 35.171165, 17.457829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772678, 34.845249, 17.655941>,  <38.845001, 34.649700, 17.774809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772678, 34.845249, 17.655941>,  <38.652142, 35.171165, 17.457829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772678, 34.845249, 17.655941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453424, 0.334492, 0.826148,
		-0.838809, -0.473524, -0.268652,
		0.301339, -0.814794, 0.495282,
		38.863079, 34.600811, 17.804525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086739, 34.908413, 17.771780>,  <38.652142, 35.171165, 17.457829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086739, 34.908413, 17.771780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391674, 34.750484, 17.976894>,  <38.574635, 34.655727, 18.099964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391674, 34.750484, 17.976894>,  <38.086739, 34.908413, 17.771780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391674, 34.750484, 17.976894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432801, 0.278072, 0.857531,
		-0.481164, -0.875666, 0.041107,
		0.762341, -0.394822, 0.512788,
		38.620377, 34.632038, 18.130732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824791, 34.465481, 18.271347>,  <38.086739, 34.908413, 17.771780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824791, 34.465481, 18.271347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191536, 34.535378, 18.414913>,  <38.411583, 34.577316, 18.501053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191536, 34.535378, 18.414913>,  <37.824791, 34.465481, 18.271347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191536, 34.535378, 18.414913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388275, 0.181513, 0.903491,
		0.092732, -0.967739, 0.234272,
		0.916866, 0.174744, 0.358917,
		38.466595, 34.587803, 18.522589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907352, 34.126022, 18.916998>,  <37.824791, 34.465481, 18.271347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907352, 34.126022, 18.916998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186543, 34.411938, 18.934507>,  <38.354057, 34.583485, 18.945013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186543, 34.411938, 18.934507>,  <37.907352, 34.126022, 18.916998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186543, 34.411938, 18.934507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289488, 0.225715, 0.930188,
		0.655006, -0.661916, 0.364464,
		0.697971, 0.714787, 0.043772,
		38.395935, 34.626373, 18.947639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165577, 34.004177, 19.580669>,  <37.907352, 34.126022, 18.916998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165577, 34.004177, 19.580669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243252, 34.382042, 19.474905>,  <38.289856, 34.608761, 19.411448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243252, 34.382042, 19.474905>,  <38.165577, 34.004177, 19.580669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243252, 34.382042, 19.474905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156852, 0.295972, 0.942230,
		0.968344, -0.141492, 0.205645,
		0.194183, 0.944659, -0.264410,
		38.301506, 34.665440, 19.395582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580086, 34.232304, 20.061731>,  <38.165577, 34.004177, 19.580669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580086, 34.232304, 20.061731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448505, 34.575935, 19.904877>,  <38.369556, 34.782116, 19.810764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448505, 34.575935, 19.904877>,  <38.580086, 34.232304, 20.061731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448505, 34.575935, 19.904877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252475, 0.320125, 0.913114,
		0.909973, 0.399370, 0.111592,
		-0.328947, 0.859083, -0.392136,
		38.349823, 34.833660, 19.787235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887455, 34.721031, 20.451199>,  <38.580086, 34.232304, 20.061731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887455, 34.721031, 20.451199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548058, 34.866188, 20.297121>,  <38.344421, 34.953281, 20.204674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548058, 34.866188, 20.297121>,  <38.887455, 34.721031, 20.451199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548058, 34.866188, 20.297121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245844, 0.374269, 0.894138,
		0.468644, 0.853364, -0.228348,
		-0.848489, 0.362895, -0.385194,
		38.293510, 34.975056, 20.181562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888329, 35.429653, 20.556005>,  <38.887455, 34.721031, 20.451199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888329, 35.429653, 20.556005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505596, 35.337677, 20.484901>,  <38.275955, 35.282490, 20.442238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505596, 35.337677, 20.484901>,  <38.888329, 35.429653, 20.556005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505596, 35.337677, 20.484901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288718, 0.681736, 0.672219,
		-0.033386, 0.694523, -0.718695,
		-0.956832, -0.229943, -0.177761,
		38.218548, 35.268696, 20.431574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547245, 36.016247, 20.659567>,  <38.888329, 35.429653, 20.556005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547245, 36.016247, 20.659567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228622, 35.774868, 20.674238>,  <38.037449, 35.630043, 20.683041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228622, 35.774868, 20.674238>,  <38.547245, 36.016247, 20.659567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228622, 35.774868, 20.674238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304690, 0.453120, 0.837763,
		-0.522164, 0.656152, -0.544801,
		-0.796561, -0.603445, 0.036681,
		37.989655, 35.593834, 20.685242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985016, 36.427464, 20.854975>,  <38.547245, 36.016247, 20.659567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985016, 36.427464, 20.854975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863487, 36.057610, 20.946836>,  <37.790569, 35.835697, 21.001953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863487, 36.057610, 20.946836>,  <37.985016, 36.427464, 20.854975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863487, 36.057610, 20.946836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333824, 0.329086, 0.883325,
		-0.892329, 0.191713, -0.408650,
		-0.303826, -0.924634, 0.229655,
		37.772339, 35.780220, 21.015734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409904, 36.567696, 21.198050>,  <37.985016, 36.427464, 20.854975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409904, 36.567696, 21.198050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464565, 36.182247, 21.289934>,  <37.497360, 35.950977, 21.345064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464565, 36.182247, 21.289934>,  <37.409904, 36.567696, 21.198050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464565, 36.182247, 21.289934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330465, 0.174260, 0.927592,
		-0.933874, -0.202667, -0.294629,
		0.136651, -0.963618, 0.229711,
		37.505562, 35.893162, 21.358847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784618, 36.383709, 21.390783>,  <37.409904, 36.567696, 21.198050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784618, 36.383709, 21.390783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046974, 36.121506, 21.540510>,  <37.204388, 35.964184, 21.630346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046974, 36.121506, 21.540510>,  <36.784618, 36.383709, 21.390783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046974, 36.121506, 21.540510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449893, 0.058720, 0.891150,
		-0.606136, -0.752902, -0.256394,
		0.655894, -0.655508, 0.374318,
		37.243744, 35.924854, 21.652805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376259, 35.787949, 21.586466>,  <36.784618, 36.383709, 21.390783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376259, 35.787949, 21.586466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726765, 35.825157, 21.775572>,  <36.937069, 35.847485, 21.889036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726765, 35.825157, 21.775572>,  <36.376259, 35.787949, 21.586466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726765, 35.825157, 21.775572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476688, 0.024407, 0.878734,
		0.070216, -0.995364, 0.065736,
		0.876264, 0.093037, 0.472764,
		36.989643, 35.853065, 21.917400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221783, 35.546196, 22.244781>,  <36.376259, 35.787949, 21.586466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221783, 35.546196, 22.244781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584221, 35.694504, 22.326298>,  <36.801682, 35.783489, 22.375208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584221, 35.694504, 22.326298>,  <36.221783, 35.546196, 22.244781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584221, 35.694504, 22.326298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261167, 0.111208, 0.958866,
		0.332855, -0.922043, 0.197597,
		0.906090, 0.370769, 0.203791,
		36.856049, 35.805733, 22.387436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422138, 35.188854, 22.866194>,  <36.221783, 35.546196, 22.244781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422138, 35.188854, 22.866194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626328, 35.532715, 22.858089>,  <36.748840, 35.739033, 22.853226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626328, 35.532715, 22.858089>,  <36.422138, 35.188854, 22.866194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626328, 35.532715, 22.858089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245625, 0.168357, 0.954633,
		0.824066, -0.482339, 0.297095,
		0.510474, 0.859654, -0.020263,
		36.779469, 35.790611, 22.852011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796318, 35.223671, 23.457153>,  <36.422138, 35.188854, 22.866194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796318, 35.223671, 23.457153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747200, 35.604763, 23.345993>,  <36.717731, 35.833420, 23.279297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747200, 35.604763, 23.345993>,  <36.796318, 35.223671, 23.457153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747200, 35.604763, 23.345993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146063, 0.259620, 0.954601,
		0.981625, 0.157807, 0.107280,
		-0.122791, 0.952730, -0.277899,
		36.710361, 35.890583, 23.262623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096939, 35.598415, 24.044300>,  <36.796318, 35.223671, 23.457153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096939, 35.598415, 24.044300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870438, 35.868145, 23.854712>,  <36.734535, 36.029984, 23.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870438, 35.868145, 23.854712>,  <37.096939, 35.598415, 24.044300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870438, 35.868145, 23.854712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239667, 0.415490, 0.877455,
		0.788615, 0.610459, -0.073661,
		-0.566256, 0.674320, -0.473969,
		36.700562, 36.070442, 23.712521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090603, 36.095909, 24.580418>,  <37.096939, 35.598415, 24.044300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090603, 36.095909, 24.580418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799004, 36.202545, 24.328232>,  <36.624043, 36.266529, 24.176920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799004, 36.202545, 24.328232>,  <37.090603, 36.095909, 24.580418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799004, 36.202545, 24.328232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504143, 0.413918, 0.757966,
		0.463029, 0.870402, -0.167346,
		-0.729002, 0.266594, -0.630463,
		36.580303, 36.282524, 24.139093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023029, 36.819485, 24.693823>,  <37.090603, 36.095909, 24.580418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023029, 36.819485, 24.693823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694054, 36.676189, 24.517071>,  <36.496670, 36.590210, 24.411020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694054, 36.676189, 24.517071>,  <37.023029, 36.819485, 24.693823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694054, 36.676189, 24.517071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550783, 0.307241, 0.776042,
		-0.142247, 0.881627, -0.450001,
		-0.822438, -0.358242, -0.441880,
		36.447323, 36.568718, 24.384506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519650, 37.289711, 24.936380>,  <37.023029, 36.819485, 24.693823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519650, 37.289711, 24.936380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286579, 36.993717, 24.801973>,  <36.146736, 36.816120, 24.721329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286579, 36.993717, 24.801973>,  <36.519650, 37.289711, 24.936380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286579, 36.993717, 24.801973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702268, 0.250356, 0.666439,
		-0.409032, 0.624293, -0.665546,
		-0.582677, -0.739986, -0.336018,
		36.111774, 36.771721, 24.701168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741787, 37.602196, 24.803799>,  <36.519650, 37.289711, 24.936380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741787, 37.602196, 24.803799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692142, 37.207802, 24.848398>,  <35.662357, 36.971165, 24.875158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692142, 37.207802, 24.848398>,  <35.741787, 37.602196, 24.803799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692142, 37.207802, 24.848398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734635, 0.166838, 0.657629,
		-0.667014, -0.000291, -0.745045,
		-0.124110, -0.985985, 0.111497,
		35.654911, 36.912006, 24.881847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127644, 37.476738, 24.723467>,  <35.741787, 37.602196, 24.803799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127644, 37.476738, 24.723467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215534, 37.142151, 24.924286>,  <35.268269, 36.941399, 25.044777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215534, 37.142151, 24.924286>,  <35.127644, 37.476738, 24.723467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215534, 37.142151, 24.924286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812606, 0.127831, 0.568622,
		-0.539809, -0.532906, -0.651627,
		0.219724, -0.836463, 0.502047,
		35.281452, 36.891212, 25.074900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483395, 37.130329, 24.734566>,  <35.127644, 37.476738, 24.723467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483395, 37.130329, 24.734566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685333, 36.934326, 25.018827>,  <34.806496, 36.816727, 25.189384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685333, 36.934326, 25.018827>,  <34.483395, 37.130329, 24.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685333, 36.934326, 25.018827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856828, -0.184533, 0.481450,
		-0.104771, -0.851967, -0.513006,
		0.504846, -0.490000, 0.710655,
		34.836788, 36.787327, 25.232023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171890, 36.470448, 24.865879>,  <34.483395, 37.130329, 24.734566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171890, 36.470448, 24.865879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373081, 36.508808, 25.209463>,  <34.493797, 36.531822, 25.415613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373081, 36.508808, 25.209463>,  <34.171890, 36.470448, 24.865879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373081, 36.508808, 25.209463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787756, -0.358024, 0.501257,
		0.355599, -0.928775, -0.104534,
		0.502980, 0.095899, 0.858961,
		34.523975, 36.537579, 25.467152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990078, 35.896347, 25.271059>,  <34.171890, 36.470448, 24.865879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990078, 35.896347, 25.271059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140350, 36.144028, 25.546871>,  <34.230515, 36.292637, 25.712358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140350, 36.144028, 25.546871>,  <33.990078, 35.896347, 25.271059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140350, 36.144028, 25.546871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649790, -0.354511, 0.672380,
		0.660787, -0.700648, 0.269170,
		0.375678, 0.619204, 0.689530,
		34.253056, 36.329788, 25.753731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002644, 35.489216, 25.926125>,  <33.990078, 35.896347, 25.271059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002644, 35.489216, 25.926125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008045, 35.875145, 26.031147>,  <34.011288, 36.106701, 26.094160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008045, 35.875145, 26.031147>,  <34.002644, 35.489216, 25.926125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008045, 35.875145, 26.031147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719223, -0.173042, 0.672886,
		0.694648, -0.197923, 0.691585,
		0.013506, 0.964823, 0.262554,
		34.012096, 36.164593, 26.109913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029549, 35.458904, 26.600307>,  <34.002644, 35.489216, 25.926125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029549, 35.458904, 26.600307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913651, 35.837452, 26.543125>,  <33.844112, 36.064579, 26.508816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913651, 35.837452, 26.543125>,  <34.029549, 35.458904, 26.600307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913651, 35.837452, 26.543125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710625, -0.112662, 0.694492,
		0.641138, 0.302815, 0.705156,
		-0.289747, 0.946367, -0.142956,
		33.826725, 36.121361, 26.500238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014290, 35.667419, 27.241261>,  <34.029549, 35.458904, 26.600307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014290, 35.667419, 27.241261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775284, 35.913410, 27.035433>,  <33.631882, 36.061005, 26.911936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775284, 35.913410, 27.035433>,  <34.014290, 35.667419, 27.241261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775284, 35.913410, 27.035433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647556, 0.008396, 0.761971,
		0.472914, 0.788502, 0.393214,
		-0.597514, 0.614975, -0.514570,
		33.596031, 36.097904, 26.881062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865082, 36.385536, 27.544195>,  <34.014290, 35.667419, 27.241261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865082, 36.385536, 27.544195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547005, 36.291763, 27.320517>,  <33.356159, 36.235500, 27.186310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547005, 36.291763, 27.320517>,  <33.865082, 36.385536, 27.544195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547005, 36.291763, 27.320517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605949, 0.273652, 0.746954,
		-0.022085, 0.932821, -0.359662,
		-0.795197, -0.234434, -0.559198,
		33.308445, 36.221432, 27.152758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379803, 36.929867, 27.462973>,  <33.865082, 36.385536, 27.544195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379803, 36.929867, 27.462973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143581, 36.620419, 27.371094>,  <33.001846, 36.434750, 27.315968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143581, 36.620419, 27.371094>,  <33.379803, 36.929867, 27.462973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143581, 36.620419, 27.371094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692354, 0.339477, 0.636712,
		-0.414595, 0.535045, -0.736097,
		-0.590557, -0.773616, -0.229696,
		32.966415, 36.388332, 27.302185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755352, 37.160252, 27.599991>,  <33.379803, 36.929867, 27.462973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755352, 37.160252, 27.599991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681950, 36.771358, 27.541908>,  <32.637909, 36.538021, 27.507059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681950, 36.771358, 27.541908>,  <32.755352, 37.160252, 27.599991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681950, 36.771358, 27.541908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713739, 0.030201, 0.699760,
		-0.675946, 0.232049, -0.699464,
		-0.183503, -0.972235, -0.145208,
		32.626900, 36.479687, 27.498346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096333, 37.066601, 27.491371>,  <32.755352, 37.160252, 27.599991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096333, 37.066601, 27.491371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203350, 36.700588, 27.612125>,  <32.267559, 36.480980, 27.684578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203350, 36.700588, 27.612125>,  <32.096333, 37.066601, 27.491371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203350, 36.700588, 27.612125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690177, 0.036638, 0.722712,
		-0.672366, -0.401712, -0.621733,
		0.267543, -0.915033, 0.301887,
		32.283611, 36.426079, 27.702692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412611, 36.715443, 27.598604>,  <32.096333, 37.066601, 27.491371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412611, 36.715443, 27.598604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702862, 36.523819, 27.796175>,  <31.877012, 36.408844, 27.914717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702862, 36.523819, 27.796175>,  <31.412611, 36.715443, 27.598604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702862, 36.523819, 27.796175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526168, 0.076257, 0.846954,
		-0.443408, -0.874463, -0.196732,
		0.725628, -0.479061, 0.493928,
		31.920549, 36.380100, 27.944353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039335, 36.418728, 28.116545>,  <31.412611, 36.715443, 27.598604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039335, 36.418728, 28.116545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394419, 36.352459, 28.288370>,  <31.607470, 36.312698, 28.391466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394419, 36.352459, 28.288370>,  <31.039335, 36.418728, 28.116545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394419, 36.352459, 28.288370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403210, 0.170643, 0.899057,
		-0.222251, -0.971305, 0.084681,
		0.887708, -0.165672, 0.429566,
		31.660730, 36.302757, 28.417240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925423, 35.859734, 28.596149>,  <31.039335, 36.418728, 28.116545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925423, 35.859734, 28.596149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263458, 36.043396, 28.705698>,  <31.466280, 36.153591, 28.771427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263458, 36.043396, 28.705698>,  <30.925423, 35.859734, 28.596149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263458, 36.043396, 28.705698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367421, 0.126666, 0.921389,
		0.388368, -0.879280, 0.275747,
		0.845087, 0.459153, 0.273873,
		31.516985, 36.181141, 28.787859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299925, 35.566715, 29.262680>,  <30.925423, 35.859734, 28.596149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299925, 35.566715, 29.262680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402931, 35.951756, 29.229029>,  <31.464735, 36.182781, 29.208838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402931, 35.951756, 29.229029>,  <31.299925, 35.566715, 29.262680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402931, 35.951756, 29.229029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327674, 0.168902, 0.929571,
		0.909019, -0.211811, 0.358915,
		0.257515, 0.962605, -0.084130,
		31.480186, 36.240536, 29.203791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712538, 35.766109, 29.876648>,  <31.299925, 35.566715, 29.262680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712538, 35.766109, 29.876648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557388, 36.102013, 29.724667>,  <31.464298, 36.303555, 29.633478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557388, 36.102013, 29.724667>,  <31.712538, 35.766109, 29.876648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557388, 36.102013, 29.724667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297405, 0.276153, 0.913942,
		0.872414, 0.467493, 0.142636,
		-0.387872, 0.839756, -0.379954,
		31.441027, 36.353939, 29.610680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077866, 36.309483, 30.189463>,  <31.712538, 35.766109, 29.876648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077866, 36.309483, 30.189463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753592, 36.504513, 30.059811>,  <31.559029, 36.621532, 29.982019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753592, 36.504513, 30.059811>,  <32.077866, 36.309483, 30.189463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753592, 36.504513, 30.059811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270073, 0.179773, 0.945908,
		0.519475, 0.854370, -0.014057,
		-0.810682, 0.487580, -0.324130,
		31.510387, 36.650787, 29.962572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447479, 36.804359, 29.866753>,  <32.077866, 36.309483, 30.189463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447479, 36.804359, 29.866753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791904, 36.665253, 30.015142>,  <32.998562, 36.581791, 30.104176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791904, 36.665253, 30.015142>,  <32.447479, 36.804359, 29.866753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791904, 36.665253, 30.015142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502639, 0.471756, -0.724431,
		0.076922, 0.810250, 0.581014,
		0.861067, -0.347765, 0.370975,
		33.050224, 36.560925, 30.126434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902340, 37.269730, 29.678291>,  <32.447479, 36.804359, 29.866753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902340, 37.269730, 29.678291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176704, 36.989700, 29.757713>,  <33.341324, 36.821682, 29.805367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176704, 36.989700, 29.757713>,  <32.902340, 37.269730, 29.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176704, 36.989700, 29.757713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620412, 0.420004, -0.662333,
		0.380289, 0.577486, 0.722420,
		0.685907, -0.700076, 0.198556,
		33.382477, 36.779678, 29.817280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527370, 37.645355, 29.728781>,  <32.902340, 37.269730, 29.678291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527370, 37.645355, 29.728781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636395, 37.266827, 29.659285>,  <33.701809, 37.039711, 29.617586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636395, 37.266827, 29.659285>,  <33.527370, 37.645355, 29.728781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636395, 37.266827, 29.659285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763932, 0.322635, -0.558852,
		0.584908, 0.019597, 0.810863,
		0.272564, -0.946321, -0.173741,
		33.718163, 36.982929, 29.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322979, 37.660107, 29.784460>,  <33.527370, 37.645355, 29.728781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322979, 37.660107, 29.784460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210960, 37.327572, 29.592438>,  <34.143749, 37.128052, 29.477224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210960, 37.327572, 29.592438>,  <34.322979, 37.660107, 29.784460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210960, 37.327572, 29.592438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804291, 0.069829, -0.590119,
		0.524110, -0.551365, 0.649081,
		-0.280046, -0.831336, -0.480056,
		34.126945, 37.078171, 29.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850857, 37.142357, 29.916338>,  <34.322979, 37.660107, 29.784460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850857, 37.142357, 29.916338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666115, 37.044529, 29.575310>,  <34.555271, 36.985832, 29.370693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666115, 37.044529, 29.575310>,  <34.850857, 37.142357, 29.916338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666115, 37.044529, 29.575310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870316, 0.060357, -0.488781,
		0.171000, -0.967751, 0.184977,
		-0.461854, -0.244570, -0.852571,
		34.527557, 36.971157, 29.319538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343502, 36.859013, 29.519953>,  <34.850857, 37.142357, 29.916338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343502, 36.859013, 29.519953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096291, 36.886909, 29.206730>,  <34.947964, 36.903648, 29.018797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096291, 36.886909, 29.206730>,  <35.343502, 36.859013, 29.519953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096291, 36.886909, 29.206730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784235, -0.014872, -0.620286,
		-0.054904, -0.997454, -0.045500,
		-0.618030, 0.069739, -0.783055,
		34.910881, 36.907829, 28.971813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446526, 36.355850, 29.069046>,  <35.343502, 36.859013, 29.519953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446526, 36.355850, 29.069046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275322, 36.620308, 28.822569>,  <35.172600, 36.778984, 28.674683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275322, 36.620308, 28.822569>,  <35.446526, 36.355850, 29.069046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275322, 36.620308, 28.822569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761405, -0.103528, -0.639957,
		-0.486897, -0.743082, -0.459086,
		-0.428012, 0.661144, -0.616194,
		35.146919, 36.818649, 28.637711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463203, 36.034428, 28.375412>,  <35.446526, 36.355850, 29.069046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463203, 36.034428, 28.375412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407417, 36.427292, 28.324953>,  <35.373947, 36.663010, 28.294678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407417, 36.427292, 28.324953>,  <35.463203, 36.034428, 28.375412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407417, 36.427292, 28.324953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776550, 0.029431, -0.629368,
		-0.614428, -0.185732, -0.766800,
		-0.139462, 0.982160, -0.126147,
		35.365578, 36.721939, 28.287109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698307, 36.152271, 27.731190>,  <35.463203, 36.034428, 28.375412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698307, 36.152271, 27.731190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680740, 36.508030, 27.913200>,  <35.670200, 36.721485, 28.022408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680740, 36.508030, 27.913200>,  <35.698307, 36.152271, 27.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680740, 36.508030, 27.913200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875620, 0.253561, -0.411091,
		-0.480999, 0.380377, -0.789907,
		-0.043920, 0.889393, 0.455029,
		35.667564, 36.774849, 28.049709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746788, 36.690159, 27.182432>,  <35.698307, 36.152271, 27.731190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746788, 36.690159, 27.182432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880535, 36.831528, 27.531898>,  <35.960781, 36.916348, 27.741579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880535, 36.831528, 27.531898>,  <35.746788, 36.690159, 27.182432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880535, 36.831528, 27.531898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858719, 0.267729, -0.436948,
		-0.388331, 0.896335, -0.213969,
		0.334366, 0.353419, 0.873667,
		35.980846, 36.937553, 27.793999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059795, 37.357677, 27.050598>,  <35.746788, 36.690159, 27.182432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059795, 37.357677, 27.050598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209652, 37.248043, 27.404890>,  <36.299568, 37.182262, 27.617466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209652, 37.248043, 27.404890>,  <36.059795, 37.357677, 27.050598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209652, 37.248043, 27.404890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927165, 0.113438, -0.357066,
		-0.002608, 0.954991, 0.296624,
		0.374643, -0.274088, 0.885730,
		36.322044, 37.165817, 27.670609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764706, 37.812508, 27.001989>,  <36.059795, 37.357677, 27.050598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764706, 37.812508, 27.001989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807182, 37.544453, 27.295832>,  <36.832668, 37.383621, 27.472137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807182, 37.544453, 27.295832>,  <36.764706, 37.812508, 27.001989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807182, 37.544453, 27.295832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944529, -0.162932, -0.285165,
		0.310789, 0.724136, 0.615661,
		0.106187, -0.670135, 0.734604,
		36.839039, 37.343410, 27.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305737, 37.969975, 27.474213>,  <36.764706, 37.812508, 27.001989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305737, 37.969975, 27.474213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282406, 37.572388, 27.511385>,  <37.268410, 37.333836, 27.533688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282406, 37.572388, 27.511385>,  <37.305737, 37.969975, 27.474213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282406, 37.572388, 27.511385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833618, -0.099708, -0.543267,
		0.549253, 0.045783, 0.834401,
		-0.058324, -0.993963, 0.092930,
		37.264908, 37.274200, 27.539265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003307, 37.878891, 27.569809>,  <37.305737, 37.969975, 27.474213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003307, 37.878891, 27.569809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867783, 37.505852, 27.520071>,  <37.786469, 37.282028, 27.490229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867783, 37.505852, 27.520071>,  <38.003307, 37.878891, 27.569809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867783, 37.505852, 27.520071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806336, -0.219727, -0.549128,
		0.484795, -0.286318, 0.826436,
		-0.338816, -0.932600, -0.124346,
		37.766136, 37.226070, 27.482767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494408, 37.408302, 27.719015>,  <38.003307, 37.878891, 27.569809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494408, 37.408302, 27.719015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261269, 37.188293, 27.479761>,  <38.121387, 37.056290, 27.336208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261269, 37.188293, 27.479761>,  <38.494408, 37.408302, 27.719015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261269, 37.188293, 27.479761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775864, -0.157916, -0.610818,
		0.241509, -0.820084, 0.518783,
		-0.582846, -0.550023, -0.598135,
		38.086414, 37.023285, 27.300320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871189, 36.783390, 27.501749>,  <38.494408, 37.408302, 27.719015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871189, 36.783390, 27.501749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587429, 36.792202, 27.219963>,  <38.417171, 36.797489, 27.050892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587429, 36.792202, 27.219963>,  <38.871189, 36.783390, 27.501749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587429, 36.792202, 27.219963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669384, -0.291823, -0.683201,
		-0.220630, -0.956218, 0.192272,
		-0.709399, 0.022030, -0.704463,
		38.374611, 36.798813, 27.008625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955269, 36.091511, 27.146669>,  <38.871189, 36.783390, 27.501749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955269, 36.091511, 27.146669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776138, 36.346851, 26.896240>,  <38.668659, 36.500057, 26.745983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776138, 36.346851, 26.896240>,  <38.955269, 36.091511, 27.146669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776138, 36.346851, 26.896240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506976, -0.395485, -0.765877,
		-0.736499, -0.660379, -0.146521,
		-0.447822, 0.638351, -0.626071,
		38.641792, 36.538357, 26.708420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676083, 35.679562, 26.606890>,  <38.955269, 36.091511, 27.146669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676083, 35.679562, 26.606890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718491, 36.044506, 26.448719>,  <38.743935, 36.263474, 26.353817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718491, 36.044506, 26.448719>,  <38.676083, 35.679562, 26.606890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718491, 36.044506, 26.448719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294989, -0.408622, -0.863719,
		-0.949601, -0.025076, -0.312458,
		0.106018, 0.912359, -0.395425,
		38.750298, 36.318214, 26.330091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353962, 35.560520, 25.905207>,  <38.676083, 35.679562, 26.606890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353962, 35.560520, 25.905207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591595, 35.881901, 25.889599>,  <38.734177, 36.074730, 25.880234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591595, 35.881901, 25.889599>,  <38.353962, 35.560520, 25.905207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591595, 35.881901, 25.889599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303634, -0.268901, -0.914056,
		-0.744895, 0.531180, -0.403707,
		0.594086, 0.803455, -0.039019,
		38.769821, 36.122936, 25.877893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189621, 35.876949, 25.252501>,  <38.353962, 35.560520, 25.905207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189621, 35.876949, 25.252501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543678, 36.023365, 25.367422>,  <38.756111, 36.111214, 25.436375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543678, 36.023365, 25.367422>,  <38.189621, 35.876949, 25.252501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543678, 36.023365, 25.367422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364198, -0.160651, -0.917361,
		-0.289635, 0.916628, -0.275510,
		0.885139, 0.366040, 0.287304,
		38.809219, 36.133179, 25.453613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320808, 36.274277, 24.777424>,  <38.189621, 35.876949, 25.252501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320808, 36.274277, 24.777424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675926, 36.191761, 24.941996>,  <38.888996, 36.142254, 25.040739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675926, 36.191761, 24.941996>,  <38.320808, 36.274277, 24.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675926, 36.191761, 24.941996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433145, 0.072248, -0.898424,
		0.155607, 0.975821, 0.153492,
		0.887791, -0.206285, 0.411429,
		38.942265, 36.129875, 25.065424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641808, 36.898438, 24.670021>,  <38.320808, 36.274277, 24.777424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641808, 36.898438, 24.670021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851456, 36.558979, 24.698586>,  <38.977245, 36.355305, 24.715725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851456, 36.558979, 24.698586>,  <38.641808, 36.898438, 24.670021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851456, 36.558979, 24.698586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253123, 0.075164, -0.964510,
		0.813162, 0.523591, 0.254207,
		0.524116, -0.848648, 0.071412,
		39.008690, 36.304386, 24.720009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064632, 36.872753, 24.097082>,  <38.641808, 36.898438, 24.670021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064632, 36.872753, 24.097082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120068, 36.489136, 24.195892>,  <39.153328, 36.258965, 24.255178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120068, 36.489136, 24.195892>,  <39.064632, 36.872753, 24.097082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120068, 36.489136, 24.195892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311672, -0.194523, -0.930065,
		0.940028, 0.205892, 0.271948,
		0.138593, -0.959046, 0.247028,
		39.161644, 36.201424, 24.270000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582024, 36.631138, 23.575283>,  <39.064632, 36.872753, 24.097082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582024, 36.631138, 23.575283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457905, 36.293938, 23.751038>,  <39.383434, 36.091618, 23.856491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457905, 36.293938, 23.751038>,  <39.582024, 36.631138, 23.575283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457905, 36.293938, 23.751038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004834, -0.463594, -0.886034,
		0.950628, -0.272808, 0.147926,
		-0.310295, -0.843004, 0.439387,
		39.364815, 36.041035, 23.882854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104214, 36.108627, 23.327885>,  <39.582024, 36.631138, 23.575283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104214, 36.108627, 23.327885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782249, 35.900196, 23.441446>,  <39.589073, 35.775139, 23.509584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782249, 35.900196, 23.441446>,  <40.104214, 36.108627, 23.327885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782249, 35.900196, 23.441446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077282, -0.566418, -0.820487,
		0.588345, -0.638476, 0.496184,
		-0.804908, -0.521076, 0.283906,
		39.540775, 35.743874, 23.526619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306316, 35.405758, 23.283230>,  <40.104214, 36.108627, 23.327885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306316, 35.405758, 23.283230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907497, 35.378044, 23.269949>,  <39.668205, 35.361416, 23.261980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907497, 35.378044, 23.269949>,  <40.306316, 35.405758, 23.283230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907497, 35.378044, 23.269949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074593, -0.769542, -0.634225,
		0.018390, -0.634827, 0.772436,
		-0.997044, -0.069282, -0.033201,
		39.608383, 35.357258, 23.259989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108452, 34.768879, 23.556650>,  <40.306316, 35.405758, 23.283230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108452, 34.768879, 23.556650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829746, 34.883274, 23.293520>,  <39.662525, 34.951912, 23.135641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829746, 34.883274, 23.293520>,  <40.108452, 34.768879, 23.556650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829746, 34.883274, 23.293520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172756, -0.823184, -0.540854,
		-0.696187, -0.490491, 0.524158,
		-0.696763, 0.285984, -0.657826,
		39.620716, 34.969070, 23.096172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625858, 34.147800, 23.483843>,  <40.108452, 34.768879, 23.556650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625858, 34.147800, 23.483843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605934, 34.383530, 23.161299>,  <39.593979, 34.524967, 22.967773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605934, 34.383530, 23.161299>,  <39.625858, 34.147800, 23.483843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605934, 34.383530, 23.161299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013455, -0.807683, -0.589463,
		-0.998668, -0.018510, 0.048158,
		-0.049808, 0.589326, -0.806359,
		39.590992, 34.560326, 22.919392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223774, 33.713673, 22.965776>,  <39.625858, 34.147800, 23.483843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223774, 33.713673, 22.965776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367561, 34.025230, 22.760212>,  <39.453835, 34.212166, 22.636873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367561, 34.025230, 22.760212>,  <39.223774, 33.713673, 22.965776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367561, 34.025230, 22.760212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194103, -0.601085, -0.775256,
		-0.912748, 0.178925, -0.367255,
		0.359464, 0.778899, -0.513909,
		39.475399, 34.258900, 22.606039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857327, 33.836987, 22.214373>,  <39.223774, 33.713673, 22.965776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857327, 33.836987, 22.214373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227116, 33.985424, 22.179415>,  <39.448990, 34.074486, 22.158440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227116, 33.985424, 22.179415>,  <38.857327, 33.836987, 22.214373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227116, 33.985424, 22.179415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150489, -0.565819, -0.810680,
		-0.350285, 0.736301, -0.578931,
		0.924475, 0.371091, -0.087393,
		39.504459, 34.096752, 22.153196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996349, 33.869389, 21.500593>,  <38.857327, 33.836987, 22.214373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996349, 33.869389, 21.500593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372810, 33.906208, 21.630674>,  <39.598686, 33.928299, 21.708723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372810, 33.906208, 21.630674>,  <38.996349, 33.869389, 21.500593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372810, 33.906208, 21.630674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331528, -0.438500, -0.835349,
		0.065709, 0.894005, -0.443212,
		0.941154, 0.092047, 0.325201,
		39.655155, 33.933823, 21.728235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364506, 33.990170, 20.898783>,  <38.996349, 33.869389, 21.500593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364506, 33.990170, 20.898783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641834, 33.854961, 21.153357>,  <39.808231, 33.773838, 21.306101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641834, 33.854961, 21.153357>,  <39.364506, 33.990170, 20.898783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641834, 33.854961, 21.153357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446585, -0.491598, -0.747592,
		0.565570, 0.802544, -0.189882,
		0.693320, -0.338017, 0.636436,
		39.849831, 33.753555, 21.344288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001339, 34.045715, 20.485863>,  <39.364506, 33.990170, 20.898783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001339, 34.045715, 20.485863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059097, 33.788994, 20.787125>,  <40.093754, 33.634960, 20.967882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059097, 33.788994, 20.787125>,  <40.001339, 34.045715, 20.485863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059097, 33.788994, 20.787125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439590, -0.640296, -0.629906,
		0.886516, 0.422035, 0.189673,
		0.144396, -0.641800, 0.753155,
		40.102417, 33.596455, 21.013071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657383, 33.821060, 20.488691>,  <40.001339, 34.045715, 20.485863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657383, 33.821060, 20.488691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471256, 33.517662, 20.671190>,  <40.359581, 33.335625, 20.780689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471256, 33.517662, 20.671190>,  <40.657383, 33.821060, 20.488691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471256, 33.517662, 20.671190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479129, -0.649245, -0.590692,
		0.744253, -0.056260, 0.665524,
		-0.465321, -0.758496, 0.456247,
		40.331661, 33.290112, 20.808064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165478, 33.333679, 20.810686>,  <40.657383, 33.821060, 20.488691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165478, 33.333679, 20.810686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821335, 33.161259, 20.701883>,  <40.614849, 33.057808, 20.636600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821335, 33.161259, 20.701883>,  <41.165478, 33.333679, 20.810686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821335, 33.161259, 20.701883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501865, -0.623209, -0.599785,
		0.089020, -0.652539, 0.752508,
		-0.860353, -0.431050, -0.272009,
		40.563229, 33.031944, 20.620281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552322, 32.815674, 20.448694>,  <41.165478, 33.333679, 20.810686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552322, 32.815674, 20.448694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167610, 32.706863, 20.436224>,  <40.936783, 32.641575, 20.428741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167610, 32.706863, 20.436224>,  <41.552322, 32.815674, 20.448694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167610, 32.706863, 20.436224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238091, -0.774652, -0.585856,
		0.135222, -0.570889, 0.809815,
		-0.961783, -0.272030, -0.031174,
		40.879074, 32.625256, 20.426872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585571, 32.092472, 20.469473>,  <41.552322, 32.815674, 20.448694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585571, 32.092472, 20.469473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221760, 32.179760, 20.327976>,  <41.003471, 32.232132, 20.243078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221760, 32.179760, 20.327976>,  <41.585571, 32.092472, 20.469473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221760, 32.179760, 20.327976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027579, -0.817522, -0.575236,
		-0.414720, -0.532951, 0.737544,
		-0.909531, 0.218221, -0.353741,
		40.948902, 32.245228, 20.221853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049824, 31.553375, 20.514343>,  <41.585571, 32.092472, 20.469473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049824, 31.553375, 20.514343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941906, 31.782835, 20.204987>,  <40.877155, 31.920511, 20.019373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941906, 31.782835, 20.204987>,  <41.049824, 31.553375, 20.514343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941906, 31.782835, 20.204987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023289, -0.799052, -0.600811,
		-0.962635, -0.180110, 0.202223,
		-0.269799, 0.573652, -0.773390,
		40.860966, 31.954931, 19.972969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578407, 31.102215, 20.141132>,  <41.049824, 31.553375, 20.514343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578407, 31.102215, 20.141132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747444, 30.798958, 20.339783>,  <40.848866, 30.617004, 20.458973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747444, 30.798958, 20.339783>,  <40.578407, 31.102215, 20.141132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747444, 30.798958, 20.339783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309071, 0.394561, 0.865331,
		-0.851992, -0.519175, -0.067581,
		0.422593, -0.758142, 0.496624,
		40.874222, 30.571516, 20.488770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108002, 30.944357, 20.700516>,  <40.578407, 31.102215, 20.141132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108002, 30.944357, 20.700516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460987, 30.791290, 20.809929>,  <40.672779, 30.699450, 20.875576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460987, 30.791290, 20.809929>,  <40.108002, 30.944357, 20.700516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460987, 30.791290, 20.809929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210962, 0.197773, 0.957278,
		-0.420417, -0.902469, 0.093799,
		0.882465, -0.382668, 0.273534,
		40.725727, 30.676491, 20.891989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902267, 30.589302, 21.286400>,  <40.108002, 30.944357, 20.700516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902267, 30.589302, 21.286400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291798, 30.679558, 21.297344>,  <40.525517, 30.733711, 21.303911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291798, 30.679558, 21.297344>,  <39.902267, 30.589302, 21.286400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291798, 30.679558, 21.297344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061010, 0.143541, 0.987762,
		0.218955, -0.963577, 0.153551,
		0.973826, 0.225643, 0.027359,
		40.583946, 30.747250, 21.305552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031483, 30.352945, 21.846003>,  <39.902267, 30.589302, 21.286400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031483, 30.352945, 21.846003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341663, 30.595919, 21.777077>,  <40.527771, 30.741703, 21.735722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341663, 30.595919, 21.777077>,  <40.031483, 30.352945, 21.846003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341663, 30.595919, 21.777077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052128, 0.210382, 0.976229,
		0.629247, -0.766004, 0.131477,
		0.775455, 0.607435, -0.172312,
		40.574299, 30.778149, 21.725384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606281, 30.132946, 22.308043>,  <40.031483, 30.352945, 21.846003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606281, 30.132946, 22.308043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665707, 30.520123, 22.227028>,  <40.701363, 30.752428, 22.178419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665707, 30.520123, 22.227028>,  <40.606281, 30.132946, 22.308043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665707, 30.520123, 22.227028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135928, 0.182879, 0.973693,
		0.979516, -0.172188, -0.104400,
		0.148566, 0.967939, -0.202538,
		40.710278, 30.810505, 22.166265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973564, 30.278042, 22.816036>,  <40.606281, 30.132946, 22.308043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973564, 30.278042, 22.816036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833790, 30.628681, 22.683691>,  <40.749928, 30.839066, 22.604284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833790, 30.628681, 22.683691>,  <40.973564, 30.278042, 22.816036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833790, 30.628681, 22.683691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003764, 0.351809, 0.936064,
		0.936954, 0.328336, -0.119633,
		-0.349432, 0.876599, -0.330865,
		40.728962, 30.891661, 22.584431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408199, 30.790327, 23.085377>,  <40.973564, 30.278042, 22.816036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408199, 30.790327, 23.085377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068192, 30.975700, 22.985220>,  <40.864185, 31.086924, 22.925125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068192, 30.975700, 22.985220>,  <41.408199, 30.790327, 23.085377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068192, 30.975700, 22.985220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162807, 0.220936, 0.961603,
		0.500959, 0.858148, -0.112350,
		-0.850020, 0.463432, -0.250392,
		40.813187, 31.114731, 22.910103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446640, 31.513781, 23.285076>,  <41.408199, 30.790327, 23.085377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446640, 31.513781, 23.285076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059032, 31.416683, 23.266809>,  <40.826469, 31.358425, 23.255850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059032, 31.416683, 23.266809>,  <41.446640, 31.513781, 23.285076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059032, 31.416683, 23.266809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154211, 0.450129, 0.879547,
		-0.192950, 0.859336, -0.473615,
		-0.969015, -0.242745, -0.045666,
		40.768330, 31.343861, 23.253109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170689, 32.066978, 23.669762>,  <41.446640, 31.513781, 23.285076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170689, 32.066978, 23.669762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868469, 31.807034, 23.636713>,  <40.687138, 31.651066, 23.616884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868469, 31.807034, 23.636713>,  <41.170689, 32.066978, 23.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868469, 31.807034, 23.636713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396639, 0.353430, 0.847210,
		-0.521372, 0.672876, -0.524794,
		-0.755545, -0.649866, -0.082620,
		40.641808, 31.612074, 23.611927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482162, 32.488300, 23.728123>,  <41.170689, 32.066978, 23.669762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482162, 32.488300, 23.728123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402599, 32.101196, 23.789938>,  <40.354862, 31.868935, 23.827028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402599, 32.101196, 23.789938>,  <40.482162, 32.488300, 23.728123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402599, 32.101196, 23.789938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504889, 0.236347, 0.830197,
		-0.839953, 0.087111, -0.535622,
		-0.198912, -0.967756, 0.154539,
		40.342926, 31.810869, 23.836300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652328, 32.299438, 23.795883>,  <40.482162, 32.488300, 23.728123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652328, 32.299438, 23.795883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826962, 31.995348, 23.988319>,  <39.931740, 31.812893, 24.103781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826962, 31.995348, 23.988319>,  <39.652328, 32.299438, 23.795883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826962, 31.995348, 23.988319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642210, 0.111149, 0.758428,
		-0.630052, -0.640075, -0.439702,
		0.436578, -0.760229, 0.481092,
		39.957935, 31.767279, 24.132647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084393, 31.784161, 23.905148>,  <39.652328, 32.299438, 23.795883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084393, 31.784161, 23.905148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384373, 31.707369, 24.158358>,  <39.564362, 31.661293, 24.310284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384373, 31.707369, 24.158358>,  <39.084393, 31.784161, 23.905148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384373, 31.707369, 24.158358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610326, 0.168237, 0.774080,
		-0.255107, -0.966871, 0.008998,
		0.749949, -0.191981, 0.633024,
		39.609356, 31.649775, 24.348265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794521, 31.217125, 24.398430>,  <39.084393, 31.784161, 23.905148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794521, 31.217125, 24.398430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108780, 31.395472, 24.569994>,  <39.297337, 31.502480, 24.672934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108780, 31.395472, 24.569994>,  <38.794521, 31.217125, 24.398430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108780, 31.395472, 24.569994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539056, 0.153112, 0.828236,
		0.303610, -0.881908, 0.360638,
		0.785646, 0.445865, 0.428911,
		39.344475, 31.529230, 24.698668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905243, 30.858637, 25.014761>,  <38.794521, 31.217125, 24.398430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905243, 30.858637, 25.014761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102840, 31.205578, 25.038990>,  <39.221397, 31.413742, 25.053528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102840, 31.205578, 25.038990>,  <38.905243, 30.858637, 25.014761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102840, 31.205578, 25.038990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538954, 0.250798, 0.804132,
		0.682274, -0.429884, 0.591356,
		0.493995, 0.867352, 0.060574,
		39.251038, 31.465784, 25.057163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983841, 30.973766, 25.766434>,  <38.905243, 30.858637, 25.014761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983841, 30.973766, 25.766434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069714, 31.339344, 25.628670>,  <39.121235, 31.558691, 25.546011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069714, 31.339344, 25.628670>,  <38.983841, 30.973766, 25.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069714, 31.339344, 25.628670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464808, 0.405741, 0.786974,
		0.858992, -0.008864, 0.511913,
		0.214680, 0.913945, -0.344408,
		39.134117, 31.613527, 25.525347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177006, 31.357597, 26.356564>,  <38.983841, 30.973766, 25.766434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177006, 31.357597, 26.356564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077614, 31.653053, 26.105911>,  <39.017979, 31.830328, 25.955519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077614, 31.653053, 26.105911>,  <39.177006, 31.357597, 26.356564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077614, 31.653053, 26.105911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437959, 0.491349, 0.752840,
		0.863974, 0.461503, 0.201405,
		-0.248477, 0.738641, -0.626632,
		39.003071, 31.874645, 25.917921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299198, 31.895502, 26.749617>,  <39.177006, 31.357597, 26.356564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299198, 31.895502, 26.749617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073864, 32.051514, 26.458267>,  <38.938663, 32.145119, 26.283457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073864, 32.051514, 26.458267>,  <39.299198, 31.895502, 26.749617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073864, 32.051514, 26.458267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430284, 0.614096, 0.661621,
		0.705342, 0.686124, -0.178120,
		-0.563337, 0.390027, -0.728375,
		38.904861, 32.168522, 26.239754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341167, 32.589886, 26.879276>,  <39.299198, 31.895502, 26.749617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341167, 32.589886, 26.879276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015392, 32.552979, 26.650131>,  <38.819927, 32.530834, 26.512644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015392, 32.552979, 26.650131>,  <39.341167, 32.589886, 26.879276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015392, 32.552979, 26.650131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524604, 0.538954, 0.659030,
		0.247940, 0.837267, -0.487349,
		-0.814442, -0.092265, -0.572862,
		38.771061, 32.525299, 26.478273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131947, 33.235489, 26.761978>,  <39.341167, 32.589886, 26.879276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131947, 33.235489, 26.761978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792931, 33.032520, 26.699753>,  <38.589520, 32.910740, 26.662418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792931, 33.032520, 26.699753>,  <39.131947, 33.235489, 26.761978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792931, 33.032520, 26.699753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463727, 0.565456, 0.682068,
		-0.258131, 0.650219, -0.714551,
		-0.847541, -0.507420, -0.155562,
		38.538670, 32.880295, 26.653084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680477, 33.721214, 26.549475>,  <39.131947, 33.235489, 26.761978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680477, 33.721214, 26.549475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427109, 33.434517, 26.666130>,  <38.275089, 33.262497, 26.736124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427109, 33.434517, 26.666130>,  <38.680477, 33.721214, 26.549475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427109, 33.434517, 26.666130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544019, 0.680506, 0.490871,
		-0.550293, 0.152270, -0.820970,
		-0.633420, -0.716747, 0.291640,
		38.237083, 33.219494, 26.753622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914650, 33.943207, 26.382006>,  <38.680477, 33.721214, 26.549475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914650, 33.943207, 26.382006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902798, 33.665257, 26.669415>,  <37.895687, 33.498486, 26.841860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902798, 33.665257, 26.669415>,  <37.914650, 33.943207, 26.382006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902798, 33.665257, 26.669415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635155, 0.568141, 0.523253,
		-0.771816, -0.440870, -0.458184,
		-0.029626, -0.694873, 0.718521,
		37.893909, 33.456795, 26.884972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211365, 33.834663, 26.519012>,  <37.914650, 33.943207, 26.382006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211365, 33.834663, 26.519012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421528, 33.753845, 26.849619>,  <37.547626, 33.705357, 27.047983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421528, 33.753845, 26.849619>,  <37.211365, 33.834663, 26.519012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421528, 33.753845, 26.849619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622617, 0.570774, 0.535317,
		-0.579911, -0.795861, 0.174092,
		0.525405, -0.202044, 0.826516,
		37.579151, 33.693233, 27.097574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733009, 33.808571, 27.080902>,  <37.211365, 33.834663, 26.519012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733009, 33.808571, 27.080902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086700, 33.797264, 27.267382>,  <37.298916, 33.790478, 27.379269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086700, 33.797264, 27.267382>,  <36.733009, 33.808571, 27.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086700, 33.797264, 27.267382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418707, 0.394277, 0.818065,
		-0.206938, -0.918557, 0.336794,
		0.884229, -0.028270, 0.466197,
		37.351971, 33.788784, 27.407240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566284, 33.865665, 27.793835>,  <36.733009, 33.808571, 27.080902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566284, 33.865665, 27.793835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962952, 33.907082, 27.824469>,  <37.200954, 33.931931, 27.842848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962952, 33.907082, 27.824469>,  <36.566284, 33.865665, 27.793835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962952, 33.907082, 27.824469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117281, 0.480410, 0.869167,
		0.053202, -0.870911, 0.488552,
		0.991673, 0.103539, 0.076583,
		37.260452, 33.938145, 27.847443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866314, 33.631222, 28.530323>,  <36.566284, 33.865665, 27.793835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866314, 33.631222, 28.530323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122688, 33.897663, 28.377743>,  <37.276512, 34.057529, 28.286194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122688, 33.897663, 28.377743>,  <36.866314, 33.631222, 28.530323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122688, 33.897663, 28.377743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058749, 0.538057, 0.840858,
		0.765341, -0.516529, 0.383995,
		0.640939, 0.666102, -0.381451,
		37.314972, 34.097492, 28.263308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250843, 33.737000, 29.076559>,  <36.866314, 33.631222, 28.530323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250843, 33.737000, 29.076559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351143, 34.048958, 28.847160>,  <37.411324, 34.236134, 28.709522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351143, 34.048958, 28.847160>,  <37.250843, 33.737000, 29.076559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351143, 34.048958, 28.847160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151365, 0.553549, 0.818946,
		0.956146, -0.292154, 0.020751,
		0.250745, 0.779891, -0.573495,
		37.426365, 34.282925, 28.675112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911980, 34.034447, 29.210987>,  <37.250843, 33.737000, 29.076559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911980, 34.034447, 29.210987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723331, 34.347759, 29.048979>,  <37.610142, 34.535748, 28.951775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723331, 34.347759, 29.048979>,  <37.911980, 34.034447, 29.210987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723331, 34.347759, 29.048979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045555, 0.480338, 0.875900,
		0.880625, 0.394641, -0.262219,
		-0.471620, 0.783284, -0.405019,
		37.581844, 34.582745, 28.927473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122135, 34.685734, 29.556999>,  <37.911980, 34.034447, 29.210987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122135, 34.685734, 29.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793713, 34.827629, 29.378099>,  <37.596661, 34.912766, 29.270760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793713, 34.827629, 29.378099>,  <38.122135, 34.685734, 29.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793713, 34.827629, 29.378099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154219, 0.616510, 0.772096,
		0.549626, 0.702906, -0.451480,
		-0.821053, 0.354737, -0.447251,
		37.547398, 34.934052, 29.243923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118958, 35.432930, 29.653494>,  <38.122135, 34.685734, 29.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118958, 35.432930, 29.653494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734215, 35.348545, 29.583838>,  <37.503368, 35.297913, 29.542044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734215, 35.348545, 29.583838>,  <38.118958, 35.432930, 29.653494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734215, 35.348545, 29.583838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266546, 0.579648, 0.770040,
		-0.061509, 0.787085, -0.613770,
		-0.961858, -0.210962, -0.174140,
		37.445656, 35.285255, 29.531595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782913, 36.018295, 29.693634>,  <38.118958, 35.432930, 29.653494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782913, 36.018295, 29.693634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478798, 35.766003, 29.755785>,  <37.296329, 35.614628, 29.793076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478798, 35.766003, 29.755785>,  <37.782913, 36.018295, 29.693634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478798, 35.766003, 29.755785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130542, 0.382669, 0.914617,
		-0.636333, 0.675090, -0.373276,
		-0.760289, -0.630729, 0.155377,
		37.250710, 35.576782, 29.802399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158680, 36.414318, 29.991751>,  <37.782913, 36.018295, 29.693634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158680, 36.414318, 29.991751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088673, 36.027805, 30.067287>,  <37.046669, 35.795898, 30.112610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088673, 36.027805, 30.067287>,  <37.158680, 36.414318, 29.991751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088673, 36.027805, 30.067287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389088, 0.244068, 0.888280,
		-0.904423, 0.081986, -0.418686,
		-0.175014, -0.966286, 0.188841,
		37.036167, 35.737919, 30.123940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428394, 36.408932, 30.298855>,  <37.158680, 36.414318, 29.991751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428394, 36.408932, 30.298855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655342, 36.105171, 30.426228>,  <36.791512, 35.922916, 30.502651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655342, 36.105171, 30.426228>,  <36.428394, 36.408932, 30.298855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655342, 36.105171, 30.426228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327544, 0.146668, 0.933383,
		-0.755515, -0.633877, -0.165521,
		0.567373, -0.759400, 0.318432,
		36.825554, 35.877350, 30.521757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015568, 35.976665, 30.743551>,  <36.428394, 36.408932, 30.298855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015568, 35.976665, 30.743551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380032, 35.840973, 30.837118>,  <36.598709, 35.759556, 30.893257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380032, 35.840973, 30.837118>,  <36.015568, 35.976665, 30.743551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380032, 35.840973, 30.837118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264703, -0.046810, 0.963193,
		-0.315800, -0.939536, -0.132448,
		0.911155, -0.339236, 0.233916,
		36.653378, 35.739204, 30.907293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932129, 35.372208, 31.192480>,  <36.015568, 35.976665, 30.743551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932129, 35.372208, 31.192480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298702, 35.511616, 31.271156>,  <36.518646, 35.595261, 31.318363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298702, 35.511616, 31.271156>,  <35.932129, 35.372208, 31.192480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298702, 35.511616, 31.271156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221603, 0.032680, 0.974589,
		0.333241, -0.936729, 0.107183,
		0.916429, 0.348525, 0.196691,
		36.573631, 35.616173, 31.330164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093327, 35.083374, 31.808489>,  <35.932129, 35.372208, 31.192480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093327, 35.083374, 31.808489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384056, 35.356945, 31.783262>,  <36.558495, 35.521088, 31.768127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384056, 35.356945, 31.783262>,  <36.093327, 35.083374, 31.808489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384056, 35.356945, 31.783262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036288, 0.129932, 0.990859,
		0.685866, -0.717890, 0.119256,
		0.726823, 0.683923, -0.063066,
		36.602104, 35.562122, 31.764343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684826, 34.825790, 32.113472>,  <36.093327, 35.083374, 31.808489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684826, 34.825790, 32.113472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715588, 35.224483, 32.123417>,  <36.734043, 35.463699, 32.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715588, 35.224483, 32.123417>,  <36.684826, 34.825790, 32.113472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715588, 35.224483, 32.123417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143062, -0.035709, 0.989069,
		0.986722, -0.072503, -0.145340,
		0.076900, 0.996729, 0.024862,
		36.738659, 35.523502, 32.130875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312199, 34.966511, 32.450897>,  <36.684826, 34.825790, 32.113472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312199, 34.966511, 32.450897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113079, 35.312546, 32.475597>,  <36.993607, 35.520168, 32.490417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113079, 35.312546, 32.475597>,  <37.312199, 34.966511, 32.450897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113079, 35.312546, 32.475597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206595, 0.049127, 0.977193,
		0.842328, 0.499202, -0.203179,
		-0.497798, 0.865092, 0.061751,
		36.963741, 35.572075, 32.494122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642151, 35.363697, 32.985725>,  <37.312199, 34.966511, 32.450897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642151, 35.363697, 32.985725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285442, 35.540573, 32.947342>,  <37.071415, 35.646698, 32.924313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285442, 35.540573, 32.947342>,  <37.642151, 35.363697, 32.985725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285442, 35.540573, 32.947342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074153, 0.066376, 0.995035,
		0.446366, 0.894461, -0.026402,
		-0.891773, 0.442192, -0.095955,
		37.017910, 35.673229, 32.918556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597511, 35.919003, 33.511478>,  <37.642151, 35.363697, 32.985725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597511, 35.919003, 33.511478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209351, 35.857033, 33.437374>,  <36.976456, 35.819851, 33.392910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209351, 35.857033, 33.437374>,  <37.597511, 35.919003, 33.511478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209351, 35.857033, 33.437374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207161, 0.139690, 0.968282,
		-0.124130, 0.978001, -0.167649,
		-0.970400, -0.154924, -0.185264,
		36.918232, 35.810555, 33.381794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364651, 36.230373, 34.172867>,  <37.597511, 35.919003, 33.511478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364651, 36.230373, 34.172867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062450, 36.027527, 34.006950>,  <36.881130, 35.905819, 33.907402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062450, 36.027527, 34.006950>,  <37.364651, 36.230373, 34.172867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062450, 36.027527, 34.006950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339704, -0.238144, 0.909884,
		-0.560198, 0.828323, 0.007648,
		-0.755499, -0.507118, -0.414792,
		36.835800, 35.875393, 33.882511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974617, 36.303738, 34.771873>,  <37.364651, 36.230373, 34.172867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974617, 36.303738, 34.771873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793583, 36.038952, 34.532887>,  <36.684963, 35.880081, 34.389492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793583, 36.038952, 34.532887>,  <36.974617, 36.303738, 34.771873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793583, 36.038952, 34.532887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343211, -0.489091, 0.801871,
		-0.823028, 0.567971, -0.005840,
		-0.452583, -0.661966, -0.597469,
		36.657806, 35.840363, 34.353645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357571, 36.196747, 35.092373>,  <36.974617, 36.303738, 34.771873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357571, 36.196747, 35.092373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470097, 35.888702, 34.863361>,  <36.537613, 35.703876, 34.725956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470097, 35.888702, 34.863361>,  <36.357571, 36.196747, 35.092373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470097, 35.888702, 34.863361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216232, -0.632148, 0.744065,
		-0.934935, -0.085521, -0.344358,
		0.281319, -0.770114, -0.572525,
		36.554493, 35.657669, 34.691605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853470, 35.637520, 35.050968>,  <36.357571, 36.196747, 35.092373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853470, 35.637520, 35.050968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226143, 35.497963, 35.010490>,  <36.449749, 35.414230, 34.986202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226143, 35.497963, 35.010490>,  <35.853470, 35.637520, 35.050968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226143, 35.497963, 35.010490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166222, -0.657137, 0.735215,
		-0.323007, -0.668168, -0.670237,
		0.931685, -0.348888, -0.101195,
		36.505650, 35.393295, 34.980133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771015, 34.949841, 34.843201>,  <35.853470, 35.637520, 35.050968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771015, 34.949841, 34.843201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123810, 35.003502, 35.023911>,  <36.335487, 35.035698, 35.132336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123810, 35.003502, 35.023911>,  <35.771015, 34.949841, 34.843201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123810, 35.003502, 35.023911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221793, -0.727662, 0.649089,
		0.415818, -0.672689, -0.612034,
		0.881988, 0.134158, 0.451772,
		36.388405, 35.043751, 35.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300739, 34.458778, 34.709503>,  <35.771015, 34.949841, 34.843201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300739, 34.458778, 34.709503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382210, 34.608810, 35.071239>,  <36.431091, 34.698830, 35.288280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382210, 34.608810, 35.071239>,  <36.300739, 34.458778, 34.709503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382210, 34.608810, 35.071239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081366, -0.914022, 0.397421,
		0.975652, -0.154527, -0.155642,
		0.203672, 0.375081, 0.904341,
		36.443310, 34.721336, 35.342541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985344, 34.693199, 34.445004>,  <36.300739, 34.458778, 34.709503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985344, 34.693199, 34.445004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329323, 34.494202, 34.490597>,  <37.535709, 34.374802, 34.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329323, 34.494202, 34.490597>,  <36.985344, 34.693199, 34.445004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329323, 34.494202, 34.490597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503139, -0.863826, 0.025619,
		0.085716, -0.079380, -0.993152,
		0.859944, -0.497498, 0.113983,
		37.587307, 34.344952, 34.524792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959641, 34.040798, 33.994282>,  <36.985344, 34.693199, 34.445004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959641, 34.040798, 33.994282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239071, 33.989815, 34.275921>,  <37.406731, 33.959225, 34.444904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239071, 33.989815, 34.275921>,  <36.959641, 34.040798, 33.994282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239071, 33.989815, 34.275921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189409, -0.981845, 0.010191,
		0.690013, -0.140481, -0.710033,
		0.698575, -0.127455, 0.704095,
		37.448643, 33.951580, 34.487148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204426, 33.364124, 33.854595>,  <36.959641, 34.040798, 33.994282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204426, 33.364124, 33.854595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353672, 33.434517, 34.218971>,  <37.443218, 33.476753, 34.437599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353672, 33.434517, 34.218971>,  <37.204426, 33.364124, 33.854595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353672, 33.434517, 34.218971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153485, -0.956611, 0.247665,
		0.915003, -0.232223, -0.329913,
		0.373112, 0.175978, 0.910944,
		37.465607, 33.487309, 34.492256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621685, 32.822227, 33.992321>,  <37.204426, 33.364124, 33.854595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621685, 32.822227, 33.992321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496357, 32.981701, 34.337086>,  <37.421162, 33.077385, 34.543945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496357, 32.981701, 34.337086>,  <37.621685, 32.822227, 33.992321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496357, 32.981701, 34.337086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252242, -0.909943, 0.329207,
		0.915536, -0.114262, 0.385666,
		-0.313319, 0.398682, 0.861907,
		37.402363, 33.101307, 34.595657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828430, 32.374733, 34.636364>,  <37.621685, 32.822227, 33.992321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828430, 32.374733, 34.636364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534317, 32.598633, 34.789227>,  <37.357849, 32.732975, 34.880943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534317, 32.598633, 34.789227>,  <37.828430, 32.374733, 34.636364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534317, 32.598633, 34.789227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403008, -0.814420, 0.417498,
		0.544931, 0.152965, 0.824410,
		-0.735279, 0.559751, 0.382156,
		37.313732, 32.766560, 34.903873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780731, 32.163235, 35.437397>,  <37.828430, 32.374733, 34.636364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780731, 32.163235, 35.437397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448227, 32.323730, 35.283508>,  <37.248726, 32.420029, 35.191177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448227, 32.323730, 35.283508>,  <37.780731, 32.163235, 35.437397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448227, 32.323730, 35.283508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539619, -0.748639, 0.385162,
		-0.133473, 0.527773, 0.838833,
		-0.831261, 0.401242, -0.384720,
		37.198849, 32.444103, 35.168091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290730, 31.889267, 35.949558>,  <37.780731, 32.163235, 35.437397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290730, 31.889267, 35.949558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082653, 32.017509, 35.632923>,  <36.957809, 32.094456, 35.442940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082653, 32.017509, 35.632923>,  <37.290730, 31.889267, 35.949558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082653, 32.017509, 35.632923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750468, -0.614029, 0.244471,
		-0.407681, 0.721234, 0.560016,
		-0.520187, 0.320608, -0.791591,
		36.926598, 32.113693, 35.395447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600288, 32.030327, 36.186218>,  <37.290730, 31.889267, 35.949558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600288, 32.030327, 36.186218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558075, 31.968729, 35.793251>,  <36.532749, 31.931772, 35.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558075, 31.968729, 35.793251>,  <36.600288, 32.030327, 36.186218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558075, 31.968729, 35.793251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543007, -0.818720, 0.186659,
		-0.833071, 0.553160, 0.002781,
		-0.105529, -0.153990, -0.982421,
		36.526417, 31.922531, 35.498524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920856, 31.765444, 36.033428>,  <36.600288, 32.030327, 36.186218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920856, 31.765444, 36.033428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124344, 31.641850, 35.711998>,  <36.246437, 31.567692, 35.519138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124344, 31.641850, 35.711998>,  <35.920856, 31.765444, 36.033428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124344, 31.641850, 35.711998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581067, -0.811951, -0.055647,
		-0.635270, 0.495240, -0.592596,
		0.508718, -0.308987, -0.803576,
		36.276958, 31.549154, 35.470924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332020, 31.525543, 35.667404>,  <35.920856, 31.765444, 36.033428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332020, 31.525543, 35.667404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665230, 31.351803, 35.530342>,  <35.865154, 31.247559, 35.448105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665230, 31.351803, 35.530342>,  <35.332020, 31.525543, 35.667404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665230, 31.351803, 35.530342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479337, -0.875906, -0.055004,
		-0.276239, 0.210065, -0.937851,
		0.833023, -0.434352, -0.342652,
		35.915138, 31.221497, 35.427547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022358, 31.240068, 35.019970>,  <35.332020, 31.525543, 35.667404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022358, 31.240068, 35.019970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355949, 31.058271, 35.145134>,  <35.556107, 30.949194, 35.220230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355949, 31.058271, 35.145134>,  <35.022358, 31.240068, 35.019970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355949, 31.058271, 35.145134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429357, -0.890697, -0.149366,
		0.346591, -0.009780, -0.937965,
		0.833982, -0.454491, 0.312907,
		35.606144, 30.921925, 35.239006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062752, 30.663244, 34.534771>,  <35.022358, 31.240068, 35.019970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062752, 30.663244, 34.534771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300133, 30.557480, 34.838848>,  <35.442562, 30.494020, 35.021294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300133, 30.557480, 34.838848>,  <35.062752, 30.663244, 34.534771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300133, 30.557480, 34.838848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250035, -0.958332, -0.138137,
		0.765045, -0.108098, -0.634839,
		0.593454, -0.264413, 0.760196,
		35.478168, 30.478155, 35.066906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561924, 30.180971, 34.279129>,  <35.062752, 30.663244, 34.534771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561924, 30.180971, 34.279129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532894, 30.135340, 34.675457>,  <35.515476, 30.107960, 34.913254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532894, 30.135340, 34.675457>,  <35.561924, 30.180971, 34.279129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532894, 30.135340, 34.675457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287887, -0.948755, -0.130325,
		0.954910, -0.294702, 0.036015,
		-0.072576, -0.114080, 0.990817,
		35.511120, 30.101116, 34.972702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730942, 29.450047, 34.455692>,  <35.561924, 30.180971, 34.279129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730942, 29.450047, 34.455692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551159, 29.565340, 34.793900>,  <35.443287, 29.634516, 34.996826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551159, 29.565340, 34.793900>,  <35.730942, 29.450047, 34.455692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551159, 29.565340, 34.793900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322957, -0.934922, 0.147034,
		0.832876, -0.206981, 0.513299,
		-0.449462, 0.288235, 0.845520,
		35.416321, 29.651810, 35.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719498, 28.866554, 34.796192>,  <35.730942, 29.450047, 34.455692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719498, 28.866554, 34.796192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433018, 29.104273, 34.942547>,  <35.261131, 29.246904, 35.030361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433018, 29.104273, 34.942547>,  <35.719498, 28.866554, 34.796192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433018, 29.104273, 34.942547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596773, -0.793323, 0.120422,
		0.361834, -0.132107, 0.922835,
		-0.716197, 0.594295, 0.365889,
		35.218159, 29.282562, 35.052315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671089, 28.590916, 35.470058>,  <35.719498, 28.866554, 34.796192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671089, 28.590916, 35.470058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366325, 28.789700, 35.303913>,  <35.183468, 28.908970, 35.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366325, 28.789700, 35.303913>,  <35.671089, 28.590916, 35.470058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366325, 28.789700, 35.303913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572102, -0.817026, 0.071886,
		-0.303637, 0.292400, 0.906811,
		-0.761908, 0.496961, -0.415362,
		35.137753, 28.938787, 35.179306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020092, 28.515188, 35.831673>,  <35.671089, 28.590916, 35.470058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020092, 28.515188, 35.831673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868603, 28.611650, 35.474258>,  <34.777710, 28.669529, 35.259808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868603, 28.611650, 35.474258>,  <35.020092, 28.515188, 35.831673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868603, 28.611650, 35.474258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646664, -0.759641, 0.069068,
		-0.662112, 0.603977, 0.443644,
		-0.378726, 0.241158, -0.893538,
		34.754986, 28.683998, 35.206196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295017, 28.616919, 35.861954>,  <35.020092, 28.515188, 35.831673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295017, 28.616919, 35.861954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404133, 28.481710, 35.501659>,  <34.469601, 28.400585, 35.285484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404133, 28.481710, 35.501659>,  <34.295017, 28.616919, 35.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404133, 28.481710, 35.501659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629054, -0.771051, 0.098847,
		-0.727927, 0.539649, -0.422967,
		0.272787, -0.338023, -0.900738,
		34.485970, 28.380304, 35.231438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816608, 28.626217, 35.298870>,  <34.295017, 28.616919, 35.861954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816608, 28.626217, 35.298870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053192, 28.305565, 35.264065>,  <34.195141, 28.113174, 35.243183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053192, 28.305565, 35.264065>,  <33.816608, 28.626217, 35.298870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053192, 28.305565, 35.264065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768183, -0.592980, 0.241393,
		-0.245102, -0.075934, -0.966519,
		0.591456, -0.801629, -0.087009,
		34.230629, 28.065077, 35.237961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375626, 29.203465, 35.266483>,  <33.816608, 28.626217, 35.298870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375626, 29.203465, 35.266483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736313, 29.135069, 35.425312>,  <34.952724, 29.094030, 35.520607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736313, 29.135069, 35.425312>,  <34.375626, 29.203465, 35.266483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736313, 29.135069, 35.425312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233082, 0.965823, -0.113400,
		-0.364107, 0.194804, 0.910756,
		0.901720, -0.170991, 0.397068,
		35.006828, 29.083771, 35.544434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445911, 29.699800, 35.921520>,  <34.375626, 29.203465, 35.266483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445911, 29.699800, 35.921520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768833, 29.553204, 35.736504>,  <34.962585, 29.465246, 35.625492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768833, 29.553204, 35.736504>,  <34.445911, 29.699800, 35.921520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768833, 29.553204, 35.736504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293781, 0.929350, -0.223609,
		0.511814, 0.044635, 0.857936,
		0.807304, -0.366492, -0.462542,
		35.011024, 29.443256, 35.597740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055721, 29.866194, 36.269032>,  <34.445911, 29.699800, 35.921520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055721, 29.866194, 36.269032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143059, 29.821474, 35.881252>,  <35.195461, 29.794641, 35.648586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143059, 29.821474, 35.881252>,  <35.055721, 29.866194, 36.269032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143059, 29.821474, 35.881252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603555, 0.796099, 0.044130,
		0.766842, -0.594750, 0.241302,
		0.218347, -0.111799, -0.969446,
		35.208561, 29.787935, 35.590420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752369, 29.967855, 36.233959>,  <35.055721, 29.866194, 36.269032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752369, 29.967855, 36.233959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636337, 30.007057, 35.853172>,  <35.566719, 30.030579, 35.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636337, 30.007057, 35.853172>,  <35.752369, 29.967855, 36.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636337, 30.007057, 35.853172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543093, 0.835907, -0.079431,
		0.787975, -0.540050, -0.295705,
		-0.290078, 0.098006, -0.951971,
		35.549313, 30.036459, 35.567581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380089, 30.119682, 35.928230>,  <35.752369, 29.967855, 36.233959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380089, 30.119682, 35.928230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097519, 30.234610, 35.669491>,  <35.927979, 30.303566, 35.514248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097519, 30.234610, 35.669491>,  <36.380089, 30.119682, 35.928230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097519, 30.234610, 35.669491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568671, 0.774515, -0.277021,
		0.421398, -0.563537, -0.710527,
		-0.706426, 0.287320, -0.646846,
		35.885590, 30.320805, 35.475437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691681, 30.318548, 35.386208>,  <36.380089, 30.119682, 35.928230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691681, 30.318548, 35.386208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349945, 30.505054, 35.294376>,  <36.144905, 30.616959, 35.239277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349945, 30.505054, 35.294376>,  <36.691681, 30.318548, 35.386208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349945, 30.505054, 35.294376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519003, 0.742183, -0.424028,
		-0.027320, -0.481415, -0.876067,
		-0.854336, 0.466266, -0.229579,
		36.093643, 30.644934, 35.225502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775051, 30.550871, 34.654995>,  <36.691681, 30.318548, 35.386208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775051, 30.550871, 34.654995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532375, 30.764029, 34.890942>,  <36.386768, 30.891924, 35.032509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532375, 30.764029, 34.890942>,  <36.775051, 30.550871, 34.654995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532375, 30.764029, 34.890942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502014, 0.832186, -0.235473,
		-0.616364, 0.153263, -0.772403,
		-0.606693, 0.532894, 0.589870,
		36.350368, 30.923897, 35.067902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760239, 31.175713, 34.389774>,  <36.775051, 30.550871, 34.654995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760239, 31.175713, 34.389774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590221, 31.283688, 34.735371>,  <36.488213, 31.348473, 34.942726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590221, 31.283688, 34.735371>,  <36.760239, 31.175713, 34.389774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590221, 31.283688, 34.735371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463066, 0.884986, -0.048692,
		-0.777759, 0.379386, -0.501156,
		-0.425043, 0.269938, 0.863986,
		36.462708, 31.364670, 34.994568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535454, 31.796930, 34.284428>,  <36.760239, 31.175713, 34.389774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535454, 31.796930, 34.284428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536537, 31.783123, 34.684189>,  <36.537186, 31.774839, 34.924046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536537, 31.783123, 34.684189>,  <36.535454, 31.796930, 34.284428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536537, 31.783123, 34.684189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331157, 0.943044, 0.031674,
		-0.943572, 0.330873, 0.013987,
		0.002710, -0.034519, 0.999400,
		36.537350, 31.772768, 34.984009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183807, 32.463406, 34.588928>,  <36.535454, 31.796930, 34.284428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183807, 32.463406, 34.588928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356781, 32.386169, 34.941227>,  <36.460564, 32.339828, 35.152607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356781, 32.386169, 34.941227>,  <36.183807, 32.463406, 34.588928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356781, 32.386169, 34.941227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357633, 0.933411, 0.029039,
		-0.827708, 0.302427, 0.472692,
		0.432433, -0.193086, 0.880749,
		36.486511, 32.328243, 35.205452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976978, 32.920498, 35.204758>,  <36.183807, 32.463406, 34.588928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976978, 32.920498, 35.204758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355457, 32.793201, 35.181332>,  <36.582546, 32.716824, 35.167274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355457, 32.793201, 35.181332>,  <35.976978, 32.920498, 35.204758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355457, 32.793201, 35.181332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312275, 0.945485, -0.092429,
		0.084791, 0.069167, 0.993995,
		0.946200, -0.318237, -0.058569,
		36.639317, 32.697731, 35.163761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445881, 33.463074, 35.493572>,  <35.976978, 32.920498, 35.204758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445881, 33.463074, 35.493572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714790, 33.233284, 35.306797>,  <36.876137, 33.095409, 35.194733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714790, 33.233284, 35.306797>,  <36.445881, 33.463074, 35.493572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714790, 33.233284, 35.306797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541375, 0.811707, -0.219191,
		0.504933, -0.105429, 0.856696,
		0.672277, -0.574471, -0.466934,
		36.916473, 33.060944, 35.166718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051327, 33.705898, 35.728909>,  <36.445881, 33.463074, 35.493572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051327, 33.705898, 35.728909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095219, 33.528149, 35.373268>,  <37.121555, 33.421501, 35.159885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095219, 33.528149, 35.373268>,  <37.051327, 33.705898, 35.728909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095219, 33.528149, 35.373268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433780, 0.826231, -0.359412,
		0.894312, -0.346232, 0.283425,
		0.109734, -0.444371, -0.889097,
		37.128139, 33.394836, 35.106541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588013, 34.108879, 35.477283>,  <37.051327, 33.705898, 35.728909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588013, 34.108879, 35.477283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450077, 33.915531, 35.155430>,  <37.367313, 33.799522, 34.962318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450077, 33.915531, 35.155430>,  <37.588013, 34.108879, 35.477283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450077, 33.915531, 35.155430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350592, 0.728850, -0.588101,
		0.870729, -0.484900, -0.081872,
		-0.344842, -0.483373, -0.804633,
		37.346622, 33.770519, 34.914040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767147, 33.477684, 35.762768>,  <37.588013, 34.108879, 35.477283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767147, 33.477684, 35.762768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666065, 33.499413, 35.376362>,  <37.605415, 33.512451, 35.144516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666065, 33.499413, 35.376362>,  <37.767147, 33.477684, 35.762768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666065, 33.499413, 35.376362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453292, 0.888718, -0.068603,
		0.854790, -0.455224, -0.249208,
		-0.252705, 0.054323, -0.966017,
		37.590252, 33.515709, 35.086555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284679, 33.931362, 35.489155>,  <37.767147, 33.477684, 35.762768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284679, 33.931362, 35.489155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025612, 33.938736, 35.184475>,  <37.870171, 33.943161, 35.001667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025612, 33.938736, 35.184475>,  <38.284679, 33.931362, 35.489155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025612, 33.938736, 35.184475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237859, 0.954637, -0.179143,
		0.723842, -0.297202, -0.622674,
		-0.647669, 0.018437, -0.761699,
		37.831310, 33.944267, 34.955967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598019, 34.021938, 34.862492>,  <38.284679, 33.931362, 35.489155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598019, 34.021938, 34.862492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223846, 34.160358, 34.891388>,  <37.999344, 34.243408, 34.908726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223846, 34.160358, 34.891388>,  <38.598019, 34.021938, 34.862492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223846, 34.160358, 34.891388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301167, 0.887124, -0.349729,
		-0.185113, -0.305389, -0.934061,
		-0.935431, 0.346047, 0.072245,
		37.943218, 34.264172, 34.913063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377834, 34.276901, 34.235302>,  <38.598019, 34.021938, 34.862492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377834, 34.276901, 34.235302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122417, 34.458797, 34.483646>,  <37.969166, 34.567936, 34.632652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122417, 34.458797, 34.483646>,  <38.377834, 34.276901, 34.235302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122417, 34.458797, 34.483646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099877, 0.750960, -0.652751,
		-0.763078, -0.478819, -0.434101,
		-0.638543, 0.454743, 0.620864,
		37.930855, 34.595219, 34.669907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519730, 34.424091, 33.531723>,  <38.377834, 34.276901, 34.235302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519730, 34.424091, 33.531723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630760, 34.338898, 33.157005>,  <38.697376, 34.287781, 32.932175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630760, 34.338898, 33.157005>,  <38.519730, 34.424091, 33.531723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630760, 34.338898, 33.157005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934250, -0.167418, 0.314880,
		-0.223900, -0.962606, 0.152509,
		0.277572, -0.212983, -0.936799,
		38.714031, 34.275002, 32.875965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666138, 33.709549, 33.443314>,  <38.519730, 34.424091, 33.531723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666138, 33.709549, 33.443314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872272, 33.897060, 33.156349>,  <38.995953, 34.009567, 32.984173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872272, 33.897060, 33.156349>,  <38.666138, 33.709549, 33.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872272, 33.897060, 33.156349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831914, -0.474660, 0.287434,
		-0.205782, -0.744947, -0.634593,
		0.515339, 0.468778, -0.717408,
		39.026875, 34.037693, 32.941128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104469, 33.192776, 32.900162>,  <38.666138, 33.709549, 33.443314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104469, 33.192776, 32.900162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273426, 33.551350, 32.953808>,  <39.374802, 33.766495, 32.985996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273426, 33.551350, 32.953808>,  <39.104469, 33.192776, 32.900162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273426, 33.551350, 32.953808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745740, -0.427796, 0.510747,
		0.515226, -0.115721, -0.849206,
		0.422391, 0.896437, 0.134114,
		39.400143, 33.820282, 32.994041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771374, 33.090881, 32.775070>,  <39.104469, 33.192776, 32.900162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771374, 33.090881, 32.775070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783638, 33.444229, 32.962143>,  <39.790997, 33.656239, 33.074387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783638, 33.444229, 32.962143>,  <39.771374, 33.090881, 32.775070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783638, 33.444229, 32.962143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881402, -0.244552, 0.404135,
		0.471371, 0.399824, -0.786098,
		0.030659, 0.883366, 0.467681,
		39.792835, 33.709240, 33.102448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159561, 33.774921, 32.574539>,  <39.771374, 33.090881, 32.775070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159561, 33.774921, 32.574539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165527, 33.750526, 32.973751>,  <40.169106, 33.735889, 33.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165527, 33.750526, 32.973751>,  <40.159561, 33.774921, 32.574539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165527, 33.750526, 32.973751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992564, 0.121502, -0.007405,
		-0.120811, 0.990716, 0.062347,
		0.014912, -0.060988, 0.998027,
		40.170002, 33.732231, 33.273159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478676, 34.291489, 32.856468>,  <40.159561, 33.774921, 32.574539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478676, 34.291489, 32.856468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523838, 33.976883, 33.099335>,  <40.550938, 33.788120, 33.245052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523838, 33.976883, 33.099335>,  <40.478676, 34.291489, 32.856468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523838, 33.976883, 33.099335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990888, 0.134294, -0.010301,
		-0.073437, 0.602795, 0.794510,
		0.112907, -0.786514, 0.607164,
		40.557709, 33.740929, 33.281483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911228, 34.368214, 33.414368>,  <40.478676, 34.291489, 32.856468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911228, 34.368214, 33.414368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953930, 33.978905, 33.333027>,  <40.979549, 33.745319, 33.284222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953930, 33.978905, 33.333027>,  <40.911228, 34.368214, 33.414368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953930, 33.978905, 33.333027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970352, 0.146585, -0.192173,
		0.216844, -0.176805, 0.960062,
		0.106754, -0.973269, -0.203349,
		40.985954, 33.686924, 33.272022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433388, 34.112011, 33.772228>,  <40.911228, 34.368214, 33.414368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433388, 34.112011, 33.772228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395817, 33.870911, 33.455276>,  <41.373276, 33.726250, 33.265106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395817, 33.870911, 33.455276>,  <41.433388, 34.112011, 33.772228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395817, 33.870911, 33.455276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974820, 0.106004, -0.196185,
		0.202246, -0.790856, 0.577619,
		-0.093924, -0.602752, -0.792381,
		41.367641, 33.690086, 33.217564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850903, 33.515213, 33.841087>,  <41.433388, 34.112011, 33.772228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850903, 33.515213, 33.841087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780537, 33.613171, 33.459705>,  <41.738316, 33.671947, 33.230877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780537, 33.613171, 33.459705>,  <41.850903, 33.515213, 33.841087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780537, 33.613171, 33.459705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979185, 0.143138, -0.143900,
		0.101235, -0.958924, -0.264982,
		-0.175918, 0.244898, -0.953456,
		41.727760, 33.686642, 33.173668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315914, 33.038548, 33.542099>,  <41.850903, 33.515213, 33.841087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315914, 33.038548, 33.542099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227127, 33.385201, 33.363361>,  <42.173855, 33.593193, 33.256119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227127, 33.385201, 33.363361>,  <42.315914, 33.038548, 33.542099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227127, 33.385201, 33.363361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970462, 0.240781, -0.015084,
		0.094520, -0.436996, -0.894483,
		-0.221966, 0.866637, -0.446847,
		42.160538, 33.645191, 33.229309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619228, 33.192966, 32.884056>,  <42.315914, 33.038548, 33.542099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619228, 33.192966, 32.884056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544689, 33.566860, 33.005085>,  <42.499966, 33.791195, 33.077702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544689, 33.566860, 33.005085>,  <42.619228, 33.192966, 32.884056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544689, 33.566860, 33.005085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980721, 0.195414, 0.000314,
		-0.058833, 0.296796, -0.953127,
		-0.186348, 0.934733, 0.302571,
		42.488785, 33.847279, 33.095856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893108, 33.712170, 32.403542>,  <42.619228, 33.192966, 32.884056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893108, 33.712170, 32.403542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853901, 33.869812, 32.769070>,  <42.830376, 33.964397, 32.988388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853901, 33.869812, 32.769070>,  <42.893108, 33.712170, 32.403542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853901, 33.869812, 32.769070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900582, 0.425877, -0.087072,
		-0.423492, 0.814438, -0.396668,
		-0.098017, 0.394107, 0.913823,
		42.824497, 33.988045, 33.043217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988716, 34.497551, 32.446678>,  <42.893108, 33.712170, 32.403542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988716, 34.497551, 32.446678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096897, 34.308151, 32.781975>,  <43.161804, 34.194511, 32.983154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096897, 34.308151, 32.781975>,  <42.988716, 34.497551, 32.446678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096897, 34.308151, 32.781975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912790, 0.402912, -0.066907,
		-0.306058, 0.783235, 0.541176,
		0.270450, -0.473503, 0.838244,
		43.178032, 34.166100, 33.033447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278233, 35.005093, 32.982430>,  <42.988716, 34.497551, 32.446678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278233, 35.005093, 32.982430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424274, 34.634174, 33.015488>,  <43.511898, 34.411625, 33.035324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424274, 34.634174, 33.015488>,  <43.278233, 35.005093, 32.982430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424274, 34.634174, 33.015488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930403, 0.360349, -0.067070,
		0.032411, 0.101383, 0.994319,
		0.365102, -0.927292, 0.082648,
		43.533806, 34.355988, 33.040283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746941, 35.040417, 33.554863>,  <43.278233, 35.005093, 32.982430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746941, 35.040417, 33.554863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849998, 34.739620, 33.312168>,  <43.911835, 34.559143, 33.166550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849998, 34.739620, 33.312168>,  <43.746941, 35.040417, 33.554863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849998, 34.739620, 33.312168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955454, 0.291838, 0.044023,
		0.143964, -0.591051, 0.793683,
		0.257647, -0.751990, -0.606736,
		43.927292, 34.514023, 33.130146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127472, 34.611015, 33.900146>,  <43.746941, 35.040417, 33.554863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127472, 34.611015, 33.900146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229206, 34.646900, 33.514969>,  <44.290245, 34.668430, 33.283863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229206, 34.646900, 33.514969>,  <44.127472, 34.611015, 33.900146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229206, 34.646900, 33.514969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955729, 0.129030, 0.264450,
		0.147973, -0.987575, -0.052923,
		0.254335, 0.089712, -0.962947,
		44.305508, 34.673813, 33.226086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604034, 34.128754, 33.716148>,  <44.127472, 34.611015, 33.900146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604034, 34.128754, 33.716148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593307, 34.498371, 33.563610>,  <44.586872, 34.720142, 33.472088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593307, 34.498371, 33.563610>,  <44.604034, 34.128754, 33.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593307, 34.498371, 33.563610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809759, 0.243768, 0.533729,
		0.586149, -0.294487, -0.754789,
		-0.026817, 0.924043, -0.381348,
		44.585262, 34.775585, 33.449207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240543, 34.299004, 33.472610>,  <44.604034, 34.128754, 33.716148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240543, 34.299004, 33.472610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065987, 34.639854, 33.588158>,  <44.961254, 34.844364, 33.657486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065987, 34.639854, 33.588158>,  <45.240543, 34.299004, 33.472610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065987, 34.639854, 33.588158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836456, 0.265919, 0.479196,
		0.331523, 0.450737, -0.828812,
		-0.436388, 0.852129, 0.288864,
		44.935070, 34.895493, 33.674816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544044, 34.983055, 33.256844>,  <45.240543, 34.299004, 33.472610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544044, 34.983055, 33.256844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371231, 34.979362, 33.617569>,  <45.267544, 34.977146, 33.834003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371231, 34.979362, 33.617569>,  <45.544044, 34.983055, 33.256844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371231, 34.979362, 33.617569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898182, 0.085801, 0.431169,
		-0.081358, 0.996270, -0.028774,
		-0.432030, -0.009235, 0.901812,
		45.241623, 34.976593, 33.888111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681282, 35.666870, 33.663979>,  <45.544044, 34.983055, 33.256844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681282, 35.666870, 33.663979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612202, 35.332405, 33.872211>,  <45.570755, 35.131725, 33.997150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612202, 35.332405, 33.872211>,  <45.681282, 35.666870, 33.663979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612202, 35.332405, 33.872211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933838, 0.029080, 0.356511,
		-0.313241, 0.547707, 0.775821,
		-0.172702, -0.836165, 0.520579,
		45.560390, 35.081554, 34.028385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832535, 35.615746, 34.463661>,  <45.681282, 35.666870, 33.663979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832535, 35.615746, 34.463661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889969, 35.249912, 34.312447>,  <45.924431, 35.030411, 34.221718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889969, 35.249912, 34.312447>,  <45.832535, 35.615746, 34.463661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889969, 35.249912, 34.312447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919321, -0.018151, 0.393089,
		-0.366376, -0.403980, 0.838194,
		0.143586, -0.914588, -0.378038,
		45.933044, 34.975536, 34.199036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060497, 35.046398, 34.956196>,  <45.832535, 35.615746, 34.463661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060497, 35.046398, 34.956196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214577, 35.000153, 34.589970>,  <46.307026, 34.972404, 34.370235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214577, 35.000153, 34.589970>,  <46.060497, 35.046398, 34.956196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214577, 35.000153, 34.589970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922415, 0.078143, 0.378212,
		0.027819, -0.990216, 0.136744,
		0.385197, -0.115614, -0.915564,
		46.330135, 34.965469, 34.315300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698605, 34.628830, 35.159386>,  <46.060497, 35.046398, 34.956196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698605, 34.628830, 35.159386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756279, 34.794006, 34.799679>,  <46.790882, 34.893112, 34.583855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756279, 34.794006, 34.799679>,  <46.698605, 34.628830, 35.159386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756279, 34.794006, 34.799679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984792, 0.029133, 0.171277,
		0.096926, -0.910291, -0.402461,
		0.144187, 0.412942, -0.899271,
		46.799534, 34.917889, 34.529896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267662, 34.370827, 34.840305>,  <46.698605, 34.628830, 35.159386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267662, 34.370827, 34.840305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182083, 34.748234, 34.739117>,  <47.130737, 34.974678, 34.678406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182083, 34.748234, 34.739117>,  <47.267662, 34.370827, 34.840305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.182083, 34.748234, 34.739117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905691, 0.288623, 0.310517,
		0.365992, -0.162675, -0.916290,
		-0.213949, 0.943522, -0.252967,
		47.117897, 35.031292, 34.663227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.860092, 34.719734, 34.572334>,  <47.267662, 34.370827, 34.840305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.860092, 34.719734, 34.572334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642796, 34.995068, 34.764618>,  <47.512417, 35.160267, 34.879990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642796, 34.995068, 34.764618>,  <47.860092, 34.719734, 34.572334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.642796, 34.995068, 34.764618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823125, 0.323858, 0.466457,
		0.165398, 0.649082, -0.742520,
		-0.543240, 0.688338, 0.480710,
		47.479824, 35.201569, 34.908833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.775375, 29.178974, 24.878189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590374, 29.498396, 24.724096>,  <34.479374, 29.690048, 24.631641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590374, 29.498396, 24.724096>,  <34.775375, 29.178974, 24.878189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590374, 29.498396, 24.724096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262299, 0.291809, 0.919808,
		0.846931, 0.526458, 0.074498,
		-0.462501, 0.798554, -0.385231,
		34.451622, 29.737963, 24.608526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870708, 29.612984, 25.390924>,  <34.775375, 29.178974, 24.878189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870708, 29.612984, 25.390924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584633, 29.790672, 25.175085>,  <34.412987, 29.897285, 25.045582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584633, 29.790672, 25.175085>,  <34.870708, 29.612984, 25.390924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584633, 29.790672, 25.175085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427532, 0.332704, 0.840550,
		0.552916, 0.831851, -0.048030,
		-0.715193, 0.444219, -0.539600,
		34.370075, 29.923939, 25.013205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839783, 30.253693, 25.538853>,  <34.870708, 29.612984, 25.390924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839783, 30.253693, 25.538853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481628, 30.256754, 25.360762>,  <34.266735, 30.258591, 25.253908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481628, 30.256754, 25.360762>,  <34.839783, 30.253693, 25.538853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481628, 30.256754, 25.360762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334894, 0.647400, 0.684631,
		0.293480, 0.762112, -0.577109,
		-0.895386, 0.007655, -0.445226,
		34.213013, 30.259050, 25.227194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642902, 30.966894, 25.562450>,  <34.839783, 30.253693, 25.538853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642902, 30.966894, 25.562450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325745, 30.723845, 25.544100>,  <34.135448, 30.578014, 25.533089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325745, 30.723845, 25.544100>,  <34.642902, 30.966894, 25.562450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325745, 30.723845, 25.544100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479242, 0.575327, 0.662816,
		-0.376350, 0.547532, -0.747375,
		-0.792899, -0.607624, -0.045876,
		34.087875, 30.541557, 25.530336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964157, 31.388128, 25.524780>,  <34.642902, 30.966894, 25.562450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964157, 31.388128, 25.524780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883160, 31.023537, 25.668001>,  <33.834560, 30.804783, 25.753935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883160, 31.023537, 25.668001>,  <33.964157, 31.388128, 25.524780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883160, 31.023537, 25.668001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379239, 0.410089, 0.829461,
		-0.902869, 0.032175, -0.428710,
		-0.202497, -0.911478, 0.358055,
		33.822411, 30.750093, 25.775417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313519, 31.483397, 25.779856>,  <33.964157, 31.388128, 25.524780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313519, 31.483397, 25.779856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455303, 31.163752, 25.974083>,  <33.540375, 30.971964, 26.090620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455303, 31.163752, 25.974083>,  <33.313519, 31.483397, 25.779856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455303, 31.163752, 25.974083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538812, 0.249857, 0.804520,
		-0.764225, -0.546801, -0.342007,
		0.354460, -0.799112, 0.485570,
		33.561642, 30.924019, 26.119755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562206, 31.233864, 26.143818>,  <33.313519, 31.483397, 25.779856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562206, 31.233864, 26.143818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.883907, 31.067759, 26.313868>,  <33.076927, 30.968096, 26.415897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.883907, 31.067759, 26.313868>,  <32.562206, 31.233864, 26.143818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883907, 31.067759, 26.313868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340646, 0.264042, 0.902354,
		-0.486964, -0.870540, 0.070900,
		0.804255, -0.415261, 0.425125,
		33.125183, 30.943180, 26.441404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357998, 30.703629, 26.743759>,  <32.562206, 31.233864, 26.143818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357998, 30.703629, 26.743759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.739449, 30.805555, 26.807835>,  <32.968319, 30.866711, 26.846279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.739449, 30.805555, 26.807835>,  <32.357998, 30.703629, 26.743759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739449, 30.805555, 26.807835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198247, 0.131322, 0.971315,
		0.226472, -0.958031, 0.175749,
		0.953629, 0.254817, 0.160186,
		33.025536, 30.882000, 26.855890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638859, 30.358221, 27.357342>,  <32.357998, 30.703629, 26.743759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638859, 30.358221, 27.357342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867874, 30.683647, 27.316715>,  <33.005283, 30.878902, 27.292339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867874, 30.683647, 27.316715>,  <32.638859, 30.358221, 27.357342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867874, 30.683647, 27.316715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227703, 0.276788, 0.933563,
		0.787625, -0.511373, 0.343722,
		0.572537, 0.813564, -0.101564,
		33.039635, 30.927717, 27.286245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989147, 30.409113, 27.918287>,  <32.638859, 30.358221, 27.357342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989147, 30.409113, 27.918287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060543, 30.774031, 27.770851>,  <33.103382, 30.992981, 27.682390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060543, 30.774031, 27.770851>,  <32.989147, 30.409113, 27.918287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060543, 30.774031, 27.770851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075203, 0.386157, 0.919362,
		0.981063, -0.136381, 0.137534,
		0.178494, 0.912295, -0.368588,
		33.114090, 31.047720, 27.660275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509487, 30.659994, 28.387247>,  <32.989147, 30.409113, 27.918287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509487, 30.659994, 28.387247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342037, 30.975193, 28.206663>,  <33.241566, 31.164312, 28.098312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342037, 30.975193, 28.206663>,  <33.509487, 30.659994, 28.387247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342037, 30.975193, 28.206663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047611, 0.515472, 0.855582,
		0.906911, 0.336673, -0.253306,
		-0.418624, 0.787997, -0.451458,
		33.216450, 31.211592, 28.071226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936016, 31.316063, 28.566584>,  <33.509487, 30.659994, 28.387247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936016, 31.316063, 28.566584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574711, 31.455502, 28.466503>,  <33.357929, 31.539165, 28.406454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574711, 31.455502, 28.466503>,  <33.936016, 31.316063, 28.566584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574711, 31.455502, 28.466503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023612, 0.622590, 0.782192,
		0.428444, 0.700615, -0.570591,
		-0.903260, 0.348598, -0.250202,
		33.303734, 31.560081, 28.391443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018768, 32.096436, 28.807522>,  <33.936016, 31.316063, 28.566584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018768, 32.096436, 28.807522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627949, 32.028854, 28.755621>,  <33.393459, 31.988306, 28.724482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627949, 32.028854, 28.755621>,  <34.018768, 32.096436, 28.807522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627949, 32.028854, 28.755621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210892, 0.681191, 0.701073,
		-0.030061, 0.712344, -0.701186,
		-0.977047, -0.168950, -0.129750,
		33.334835, 31.978170, 28.716696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752750, 32.737427, 28.855003>,  <34.018768, 32.096436, 28.807522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752750, 32.737427, 28.855003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.424873, 32.523144, 28.936127>,  <33.228149, 32.394573, 28.984800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.424873, 32.523144, 28.936127>,  <33.752750, 32.737427, 28.855003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424873, 32.523144, 28.936127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252922, 0.656164, 0.710970,
		-0.513946, 0.531479, -0.673342,
		-0.819689, -0.535704, 0.202810,
		33.178967, 32.362434, 28.996969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141636, 33.173653, 28.829325>,  <33.752750, 32.737427, 28.855003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141636, 33.173653, 28.829325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.058102, 32.863464, 29.067665>,  <33.007980, 32.677353, 29.210669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.058102, 32.863464, 29.067665>,  <33.141636, 33.173653, 28.829325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058102, 32.863464, 29.067665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137389, 0.626508, 0.767211,
		-0.968251, 0.078359, -0.237379,
		-0.208837, -0.775466, 0.595851,
		32.995449, 32.630825, 29.246420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561863, 33.410332, 29.124712>,  <33.141636, 33.173653, 28.829325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561863, 33.410332, 29.124712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.704762, 33.127666, 29.369009>,  <32.790501, 32.958069, 29.515587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.704762, 33.127666, 29.369009>,  <32.561863, 33.410332, 29.124712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704762, 33.127666, 29.369009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154275, 0.600266, 0.784780,
		-0.921180, -0.374584, 0.105424,
		0.357248, -0.706660, 0.610742,
		32.811935, 32.915668, 29.552231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141068, 33.372841, 29.766737>,  <32.561863, 33.410332, 29.124712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141068, 33.372841, 29.766737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481354, 33.196732, 29.881596>,  <32.685524, 33.091068, 29.950510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481354, 33.196732, 29.881596>,  <32.141068, 33.372841, 29.766737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481354, 33.196732, 29.881596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030440, 0.504101, 0.863108,
		-0.524750, -0.742997, 0.415442,
		0.850712, -0.440270, 0.287144,
		32.736568, 33.064651, 29.967739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029335, 33.162182, 30.433374>,  <32.141068, 33.372841, 29.766737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029335, 33.162182, 30.433374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.427357, 33.167362, 30.393969>,  <32.666168, 33.170471, 30.370325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.427357, 33.167362, 30.393969>,  <32.029335, 33.162182, 30.433374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427357, 33.167362, 30.393969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076618, 0.531306, 0.843708,
		0.063264, -0.847081, 0.527684,
		0.995051, 0.012947, -0.098514,
		32.725872, 33.171246, 30.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267998, 33.378265, 31.132730>,  <32.029335, 33.162182, 30.433374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267998, 33.378265, 31.132730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614449, 33.413647, 30.935959>,  <32.822319, 33.434875, 30.817896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614449, 33.413647, 30.935959>,  <32.267998, 33.378265, 31.132730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614449, 33.413647, 30.935959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349494, 0.596427, 0.722585,
		0.357315, -0.797779, 0.485669,
		0.866129, 0.088452, -0.491931,
		32.874287, 33.440182, 30.788380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850586, 33.233734, 31.653996>,  <32.267998, 33.378265, 31.132730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850586, 33.233734, 31.653996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967548, 33.459007, 31.344849>,  <33.037727, 33.594173, 31.159361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967548, 33.459007, 31.344849>,  <32.850586, 33.233734, 31.653996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967548, 33.459007, 31.344849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219308, 0.747157, 0.627424,
		0.930808, -0.352958, 0.094961,
		0.292405, 0.563185, -0.772866,
		33.055271, 33.627964, 31.112989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442539, 33.501274, 31.821707>,  <32.850586, 33.233734, 31.653996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442539, 33.501274, 31.821707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281425, 33.742641, 31.546417>,  <33.184757, 33.887463, 31.381245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281425, 33.742641, 31.546417>,  <33.442539, 33.501274, 31.821707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281425, 33.742641, 31.546417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200840, 0.791853, 0.576743,
		0.892990, 0.094078, -0.440134,
		-0.402780, 0.603422, -0.688222,
		33.160591, 33.923668, 31.339951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963844, 33.951679, 32.100208>,  <33.442539, 33.501274, 31.821707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963844, 33.951679, 32.100208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307758, 34.071140, 32.265896>,  <34.514107, 34.142815, 32.365307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307758, 34.071140, 32.265896>,  <33.963844, 33.951679, 32.100208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307758, 34.071140, 32.265896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509099, -0.564564, -0.649682,
		0.039826, 0.769466, -0.637446,
		0.859786, 0.298648, 0.414218,
		34.565693, 34.160736, 32.390160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489941, 34.223431, 31.498894>,  <33.963844, 33.951679, 32.100208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489941, 34.223431, 31.498894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706253, 34.075447, 31.801069>,  <34.836040, 33.986656, 31.982374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706253, 34.075447, 31.801069>,  <34.489941, 34.223431, 31.498894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706253, 34.075447, 31.801069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592998, -0.469282, -0.654314,
		0.596584, 0.801813, -0.034392,
		0.540778, -0.369959, 0.755440,
		34.868484, 33.964458, 32.027702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220272, 34.430241, 31.374004>,  <34.489941, 34.223431, 31.498894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220272, 34.430241, 31.374004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196594, 34.108803, 31.610897>,  <35.182388, 33.915939, 31.753033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196594, 34.108803, 31.610897>,  <35.220272, 34.430241, 31.374004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196594, 34.108803, 31.610897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696617, -0.458185, -0.552078,
		0.714997, 0.379878, 0.586918,
		-0.059195, -0.803592, 0.592230,
		35.178837, 33.867725, 31.788567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591221, 33.828686, 31.115728>,  <35.220272, 34.430241, 31.374004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591221, 33.828686, 31.115728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534813, 33.613209, 31.447975>,  <35.500969, 33.483921, 31.647324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534813, 33.613209, 31.447975>,  <35.591221, 33.828686, 31.115728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534813, 33.613209, 31.447975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561177, -0.734685, -0.381206,
		0.815595, 0.412367, 0.405905,
		-0.141016, -0.538694, 0.830616,
		35.492508, 33.451599, 31.697161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268784, 33.521610, 31.361467>,  <35.591221, 33.828686, 31.115728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268784, 33.521610, 31.361467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976845, 33.292484, 31.510712>,  <35.801682, 33.155010, 31.600258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976845, 33.292484, 31.510712>,  <36.268784, 33.521610, 31.361467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976845, 33.292484, 31.510712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494102, -0.819200, -0.291160,
		0.472433, -0.028146, 0.880917,
		-0.729843, -0.572816, 0.373110,
		35.757893, 33.120640, 31.622644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651623, 32.982491, 31.594463>,  <36.268784, 33.521610, 31.361467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651623, 32.982491, 31.594463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275379, 32.846962, 31.603024>,  <36.049633, 32.765644, 31.608160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275379, 32.846962, 31.603024>,  <36.651623, 32.982491, 31.594463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275379, 32.846962, 31.603024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304542, -0.869935, -0.387900,
		0.150047, -0.358344, 0.921453,
		-0.940606, -0.338825, 0.021401,
		35.993198, 32.745316, 31.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623398, 32.253933, 31.900711>,  <36.651623, 32.982491, 31.594463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623398, 32.253933, 31.900711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313004, 32.272621, 31.649103>,  <36.126766, 32.283836, 31.498138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313004, 32.272621, 31.649103>,  <36.623398, 32.253933, 31.900711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313004, 32.272621, 31.649103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240059, -0.900325, -0.363023,
		-0.583282, -0.432702, 0.687423,
		-0.775986, 0.046723, -0.629018,
		36.080208, 32.286636, 31.460398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305916, 31.560564, 31.893311>,  <36.623398, 32.253933, 31.900711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305916, 31.560564, 31.893311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184505, 31.736584, 31.555262>,  <36.111660, 31.842196, 31.352432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184505, 31.736584, 31.555262>,  <36.305916, 31.560564, 31.893311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184505, 31.736584, 31.555262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199826, -0.837842, -0.508026,
		-0.931633, -0.323077, 0.166377,
		-0.303529, 0.440047, -0.845121,
		36.093449, 31.868597, 31.301725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798687, 31.077030, 31.530197>,  <36.305916, 31.560564, 31.893311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798687, 31.077030, 31.530197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916676, 31.320019, 31.235182>,  <35.987469, 31.465813, 31.058172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916676, 31.320019, 31.235182>,  <35.798687, 31.077030, 31.530197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916676, 31.320019, 31.235182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116838, -0.743162, -0.658832,
		-0.948334, 0.280512, -0.148238,
		0.294975, 0.607473, -0.737540,
		36.005169, 31.502260, 31.013920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429436, 30.853771, 31.002495>,  <35.798687, 31.077030, 31.530197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429436, 30.853771, 31.002495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707829, 31.068157, 30.811348>,  <35.874863, 31.196789, 30.696659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707829, 31.068157, 30.811348>,  <35.429436, 30.853771, 31.002495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707829, 31.068157, 30.811348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093871, -0.591876, -0.800544,
		-0.711901, 0.602019, -0.361621,
		0.695978, 0.535963, -0.477869,
		35.916622, 31.228947, 30.667988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230404, 31.104471, 30.381163>,  <35.429436, 30.853771, 31.002495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230404, 31.104471, 30.381163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628799, 31.079721, 30.355284>,  <35.867836, 31.064871, 30.339756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628799, 31.079721, 30.355284>,  <35.230404, 31.104471, 30.381163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628799, 31.079721, 30.355284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088285, -0.559148, -0.824354,
		0.014831, 0.826756, -0.562365,
		0.995985, -0.061874, -0.064697,
		35.927593, 31.061159, 30.335875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415646, 31.126354, 29.684986>,  <35.230404, 31.104471, 30.381163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415646, 31.126354, 29.684986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782059, 31.030636, 29.813751>,  <36.001907, 30.973206, 29.891010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782059, 31.030636, 29.813751>,  <35.415646, 31.126354, 29.684986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782059, 31.030636, 29.813751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196033, -0.433089, -0.879775,
		0.349943, 0.869006, -0.349813,
		0.916030, -0.239297, 0.321910,
		36.056870, 30.958847, 29.910324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792179, 31.386185, 29.246799>,  <35.415646, 31.126354, 29.684986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792179, 31.386185, 29.246799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008919, 31.091234, 29.408129>,  <36.138962, 30.914265, 29.504927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008919, 31.091234, 29.408129>,  <35.792179, 31.386185, 29.246799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008919, 31.091234, 29.408129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362722, -0.227727, -0.903644,
		0.758173, 0.635938, 0.144068,
		0.541854, -0.737376, 0.403325,
		36.171474, 30.870022, 29.529127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402409, 31.444120, 28.949856>,  <35.792179, 31.386185, 29.246799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402409, 31.444120, 28.949856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435226, 31.065859, 29.075718>,  <36.454918, 30.838902, 29.151236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435226, 31.065859, 29.075718>,  <36.402409, 31.444120, 28.949856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435226, 31.065859, 29.075718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291005, -0.279228, -0.915067,
		0.953197, 0.166644, 0.252280,
		0.082047, -0.945654, 0.314654,
		36.459839, 30.782162, 29.170115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075787, 31.135168, 28.606367>,  <36.402409, 31.444120, 28.949856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075787, 31.135168, 28.606367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.862961, 30.815929, 28.719473>,  <36.735268, 30.624386, 28.787336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.862961, 30.815929, 28.719473>,  <37.075787, 31.135168, 28.606367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862961, 30.815929, 28.719473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105094, -0.393622, -0.913245,
		0.840159, -0.456185, 0.293306,
		-0.532060, -0.798096, 0.282763,
		36.703342, 30.576500, 28.804302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495705, 30.499807, 28.573526>,  <37.075787, 31.135168, 28.606367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495705, 30.499807, 28.573526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120857, 30.363878, 28.541687>,  <36.895950, 30.282320, 28.522583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120857, 30.363878, 28.541687>,  <37.495705, 30.499807, 28.573526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120857, 30.363878, 28.541687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187945, -0.299162, -0.935510,
		0.294097, -0.891639, 0.344217,
		-0.937115, -0.339825, -0.079597,
		36.839722, 30.261930, 28.517809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617252, 29.989471, 28.169754>,  <37.495705, 30.499807, 28.573526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617252, 29.989471, 28.169754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218880, 30.001133, 28.135658>,  <36.979855, 30.008129, 28.115202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218880, 30.001133, 28.135658>,  <37.617252, 29.989471, 28.169754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218880, 30.001133, 28.135658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069997, -0.345194, -0.935917,
		-0.056706, -0.938079, 0.341750,
		-0.995934, 0.029151, -0.085238,
		36.920101, 30.009878, 28.110086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474281, 29.373938, 27.804934>,  <37.617252, 29.989471, 28.169754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474281, 29.373938, 27.804934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135731, 29.578842, 27.746645>,  <36.932602, 29.701784, 27.711672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135731, 29.578842, 27.746645>,  <37.474281, 29.373938, 27.804934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135731, 29.578842, 27.746645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028514, -0.229636, -0.972859,
		-0.531821, -0.827560, 0.179752,
		-0.846376, 0.512261, -0.145722,
		36.881817, 29.732521, 27.702929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870564, 28.875628, 27.538422>,  <37.474281, 29.373938, 27.804934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870564, 28.875628, 27.538422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819702, 29.256807, 27.428354>,  <36.789185, 29.485516, 27.362314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819702, 29.256807, 27.428354>,  <36.870564, 28.875628, 27.538422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819702, 29.256807, 27.428354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199843, -0.247121, -0.948153,
		-0.971543, -0.175549, -0.159019,
		-0.127151, 0.952950, -0.275171,
		36.781555, 29.542692, 27.345802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.306221, 28.873985, 27.022675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476471, 29.230688, 26.961210>,  <36.578621, 29.444710, 26.924332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476471, 29.230688, 26.961210>,  <36.306221, 28.873985, 27.022675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476471, 29.230688, 26.961210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001725, -0.169010, -0.985613,
		-0.904896, 0.419771, -0.070397,
		0.425629, 0.891756, -0.153661,
		36.604160, 29.498215, 26.915112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911785, 29.243723, 26.507397>,  <36.306221, 28.873985, 27.022675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911785, 29.243723, 26.507397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289360, 29.375767, 26.507643>,  <36.515907, 29.454994, 26.507790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289360, 29.375767, 26.507643>,  <35.911785, 29.243723, 26.507397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289360, 29.375767, 26.507643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043785, -0.123354, -0.991396,
		-0.327195, 0.935847, -0.130893,
		0.943942, 0.330111, 0.000615,
		36.572544, 29.474800, 26.507828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851292, 29.801373, 25.899160>,  <35.911785, 29.243723, 26.507397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851292, 29.801373, 25.899160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194511, 29.622253, 25.999737>,  <36.400444, 29.514782, 26.060083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194511, 29.622253, 25.999737>,  <35.851292, 29.801373, 25.899160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194511, 29.622253, 25.999737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128064, -0.287569, -0.949159,
		0.497339, 0.846629, -0.189402,
		0.858052, -0.447799, 0.251442,
		36.451927, 29.487913, 26.075169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128647, 29.797802, 25.286127>,  <35.851292, 29.801373, 25.899160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128647, 29.797802, 25.286127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393501, 29.579178, 25.491199>,  <36.552414, 29.448004, 25.614243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393501, 29.579178, 25.491199>,  <36.128647, 29.797802, 25.286127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393501, 29.579178, 25.491199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367577, -0.359301, -0.857782,
		0.653037, 0.756422, -0.037004,
		0.662140, -0.546561, 0.512680,
		36.592144, 29.415209, 25.645004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820843, 29.870079, 24.957350>,  <36.128647, 29.797802, 25.286127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820843, 29.870079, 24.957350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831501, 29.528440, 25.165125>,  <36.837894, 29.323458, 25.289789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831501, 29.528440, 25.165125>,  <36.820843, 29.870079, 24.957350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831501, 29.528440, 25.165125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351914, -0.478343, -0.804577,
		0.935653, 0.204234, 0.287822,
		0.026644, -0.854094, 0.519436,
		36.839493, 29.272213, 25.320955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585564, 29.525557, 24.830545>,  <36.820843, 29.870079, 24.957350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585564, 29.525557, 24.830545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301048, 29.263214, 24.931677>,  <37.130341, 29.105808, 24.992355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301048, 29.263214, 24.931677>,  <37.585564, 29.525557, 24.830545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301048, 29.263214, 24.931677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332950, -0.631154, -0.700564,
		0.619044, -0.414122, 0.667299,
		-0.711286, -0.655857, 0.252830,
		37.087662, 29.066458, 25.007526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923733, 28.945353, 24.825069>,  <37.585564, 29.525557, 24.830545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923733, 28.945353, 24.825069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545330, 28.822008, 24.785109>,  <37.318287, 28.748001, 24.761133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545330, 28.822008, 24.785109>,  <37.923733, 28.945353, 24.825069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545330, 28.822008, 24.785109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270169, -0.579821, -0.768645,
		0.179095, -0.754136, 0.631826,
		-0.946009, -0.308361, -0.099901,
		37.261528, 28.729500, 24.755138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944633, 28.205374, 24.821098>,  <37.923733, 28.945353, 24.825069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944633, 28.205374, 24.821098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589642, 28.264139, 24.646379>,  <37.376644, 28.299398, 24.541548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589642, 28.264139, 24.646379>,  <37.944633, 28.205374, 24.821098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589642, 28.264139, 24.646379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281959, -0.576615, -0.766821,
		-0.364521, -0.803698, 0.470312,
		-0.887482, 0.146914, -0.436799,
		37.323399, 28.308214, 24.515341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694908, 27.541290, 24.477057>,  <37.944633, 28.205374, 24.821098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694908, 27.541290, 24.477057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473988, 27.823231, 24.299000>,  <37.341434, 27.992395, 24.192165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473988, 27.823231, 24.299000>,  <37.694908, 27.541290, 24.477057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473988, 27.823231, 24.299000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104228, -0.471395, -0.875742,
		-0.827105, -0.530067, 0.186885,
		-0.552298, 0.704852, -0.445141,
		37.308296, 28.034687, 24.165457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476368, 27.184845, 23.899014>,  <37.694908, 27.541290, 24.477057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476368, 27.184845, 23.899014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375771, 27.549582, 23.769218>,  <37.315411, 27.768423, 23.691341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375771, 27.549582, 23.769218>,  <37.476368, 27.184845, 23.899014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375771, 27.549582, 23.769218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224284, -0.271232, -0.936018,
		-0.941512, -0.308184, -0.136298,
		-0.251497, 0.911842, -0.324489,
		37.300320, 27.823133, 23.671871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066975, 27.085543, 23.274750>,  <37.476368, 27.184845, 23.899014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066975, 27.085543, 23.274750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210190, 27.458870, 23.285574>,  <37.296120, 27.682865, 23.292068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210190, 27.458870, 23.285574>,  <37.066975, 27.085543, 23.274750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210190, 27.458870, 23.285574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422014, -0.135902, -0.896345,
		-0.832896, 0.332342, -0.442530,
		0.358034, 0.933316, 0.027060,
		37.317600, 27.738865, 23.293692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919052, 27.327124, 22.610523>,  <37.066975, 27.085543, 23.274750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919052, 27.327124, 22.610523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.224751, 27.550419, 22.739706>,  <37.408169, 27.684395, 22.817215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.224751, 27.550419, 22.739706>,  <36.919052, 27.327124, 22.610523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224751, 27.550419, 22.739706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438438, -0.082472, -0.894970,
		-0.472970, 0.825572, -0.307781,
		0.764246, 0.558237, 0.322955,
		37.454025, 27.717890, 22.836592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069283, 27.732822, 22.030298>,  <36.919052, 27.327124, 22.610523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069283, 27.732822, 22.030298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404003, 27.760992, 22.247478>,  <37.604836, 27.777893, 22.377787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404003, 27.760992, 22.247478>,  <37.069283, 27.732822, 22.030298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404003, 27.760992, 22.247478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542479, 0.027344, -0.839624,
		-0.073974, 0.997142, -0.015321,
		0.836806, 0.070422, 0.542952,
		37.655045, 27.782118, 22.410364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442612, 28.250032, 21.747469>,  <37.069283, 27.732822, 22.030298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442612, 28.250032, 21.747469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726799, 28.065674, 21.960186>,  <37.897312, 27.955059, 22.087816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726799, 28.065674, 21.960186>,  <37.442612, 28.250032, 21.747469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726799, 28.065674, 21.960186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645774, 0.126688, -0.752945,
		0.279659, 0.878364, 0.387644,
		0.710470, -0.460898, 0.531795,
		37.939941, 27.927404, 22.119724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071495, 28.653479, 21.775465>,  <37.442612, 28.250032, 21.747469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071495, 28.653479, 21.775465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197151, 28.278204, 21.833597>,  <38.272545, 28.053040, 21.868477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197151, 28.278204, 21.833597>,  <38.071495, 28.653479, 21.775465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197151, 28.278204, 21.833597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682096, 0.116563, -0.721913,
		0.660348, 0.325913, 0.676551,
		0.314141, -0.938187, 0.145332,
		38.291393, 27.996748, 21.877197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825829, 28.717442, 21.882494>,  <38.071495, 28.653479, 21.775465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825829, 28.717442, 21.882494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712605, 28.350037, 21.772066>,  <38.644669, 28.129595, 21.705811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712605, 28.350037, 21.772066>,  <38.825829, 28.717442, 21.882494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712605, 28.350037, 21.772066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840783, -0.099146, -0.532216,
		0.461475, -0.382765, 0.800332,
		-0.283064, -0.918510, -0.276069,
		38.627686, 28.074484, 21.689245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496002, 28.235317, 21.941217>,  <38.825829, 28.717442, 21.882494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496002, 28.235317, 21.941217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245129, 28.057283, 21.685551>,  <39.094604, 27.950462, 21.532150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245129, 28.057283, 21.685551>,  <39.496002, 28.235317, 21.941217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245129, 28.057283, 21.685551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760089, -0.170635, -0.627016,
		0.170012, -0.879080, 0.445325,
		-0.627185, -0.445087, -0.639169,
		39.056973, 27.923758, 21.493799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867851, 27.914852, 21.519939>,  <39.496002, 28.235317, 21.941217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867851, 27.914852, 21.519939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534218, 27.828054, 21.317070>,  <39.334038, 27.775976, 21.195349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534218, 27.828054, 21.317070>,  <39.867851, 27.914852, 21.519939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534218, 27.828054, 21.317070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541292, -0.144651, -0.828299,
		0.106372, -0.965396, 0.238107,
		-0.834079, -0.216993, -0.507174,
		39.283993, 27.762957, 21.164917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940868, 27.238623, 21.185461>,  <39.867851, 27.914852, 21.519939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940868, 27.238623, 21.185461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697510, 27.477217, 20.976059>,  <39.551495, 27.620373, 20.850418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697510, 27.477217, 20.976059>,  <39.940868, 27.238623, 21.185461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697510, 27.477217, 20.976059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478752, -0.250253, -0.841528,
		-0.632968, -0.762613, -0.133315,
		-0.608397, 0.596485, -0.523505,
		39.514992, 27.656162, 20.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723457, 26.755329, 20.624891>,  <39.940868, 27.238623, 21.185461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723457, 26.755329, 20.624891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685097, 27.142187, 20.530714>,  <39.662079, 27.374302, 20.474207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685097, 27.142187, 20.530714>,  <39.723457, 26.755329, 20.624891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685097, 27.142187, 20.530714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370589, -0.184839, -0.910219,
		-0.923833, -0.174545, -0.340687,
		-0.095902, 0.967145, -0.235445,
		39.656326, 27.432331, 20.460081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431446, 26.775654, 19.962385>,  <39.723457, 26.755329, 20.624891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431446, 26.775654, 19.962385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642925, 27.105354, 20.043468>,  <39.769814, 27.303175, 20.092117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642925, 27.105354, 20.043468>,  <39.431446, 26.775654, 19.962385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642925, 27.105354, 20.043468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474778, -0.089208, -0.875573,
		-0.703609, 0.559154, -0.438500,
		0.528697, 0.824251, 0.202707,
		39.801533, 27.352629, 20.104280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731716, 26.717783, 19.409212>,  <39.431446, 26.775654, 19.962385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731716, 26.717783, 19.409212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905380, 27.036604, 19.577122>,  <40.009579, 27.227896, 19.677868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905380, 27.036604, 19.577122>,  <39.731716, 26.717783, 19.409212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905380, 27.036604, 19.577122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507327, 0.168722, -0.845075,
		-0.744394, 0.579864, -0.331113,
		0.434163, 0.797051, 0.419776,
		40.035629, 27.275719, 19.703054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547329, 27.342880, 18.976471>,  <39.731716, 26.717783, 19.409212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547329, 27.342880, 18.976471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888866, 27.331335, 19.184361>,  <40.093788, 27.324408, 19.309095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888866, 27.331335, 19.184361>,  <39.547329, 27.342880, 18.976471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888866, 27.331335, 19.184361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518546, 0.134179, -0.844456,
		-0.045361, 0.990537, 0.129536,
		0.853846, -0.028864, 0.519725,
		40.145020, 27.322676, 19.340279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085972, 27.722330, 18.464355>,  <39.547329, 27.342880, 18.976471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085972, 27.722330, 18.464355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163635, 28.044910, 18.240948>,  <39.210232, 28.238459, 18.106903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163635, 28.044910, 18.240948>,  <39.085972, 27.722330, 18.464355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163635, 28.044910, 18.240948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824079, 0.442952, 0.353110,
		0.532163, 0.391707, 0.750579,
		0.194155, 0.806449, -0.558520,
		39.221882, 28.286844, 18.073391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317917, 28.403641, 18.873098>,  <39.085972, 27.722330, 18.464355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317917, 28.403641, 18.873098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105900, 28.482294, 18.543154>,  <38.978691, 28.529486, 18.345188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105900, 28.482294, 18.543154>,  <39.317917, 28.403641, 18.873098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105900, 28.482294, 18.543154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689511, 0.466278, 0.554219,
		0.493591, 0.862508, -0.111567,
		-0.530040, 0.196631, -0.824860,
		38.946888, 28.541283, 18.295696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100048, 29.106691, 18.941628>,  <39.317917, 28.403641, 18.873098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100048, 29.106691, 18.941628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843414, 28.951090, 18.677191>,  <38.689434, 28.857729, 18.518528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843414, 28.951090, 18.677191>,  <39.100048, 29.106691, 18.941628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843414, 28.951090, 18.677191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740463, 0.539044, 0.401431,
		0.200200, 0.747066, -0.633886,
		-0.641588, -0.389003, -0.661091,
		38.650936, 28.834389, 18.478863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814281, 29.654610, 18.541641>,  <39.100048, 29.106691, 18.941628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814281, 29.654610, 18.541641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561382, 29.344706, 18.540346>,  <38.409645, 29.158762, 18.539570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561382, 29.344706, 18.540346>,  <38.814281, 29.654610, 18.541641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561382, 29.344706, 18.540346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667286, 0.542406, 0.510416,
		-0.393696, 0.324868, -0.859921,
		-0.632245, -0.774762, -0.003237,
		38.371708, 29.112276, 18.539375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196312, 30.012920, 18.520163>,  <38.814281, 29.654610, 18.541641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196312, 30.012920, 18.520163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140202, 29.645834, 18.668821>,  <38.106533, 29.425583, 18.758017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140202, 29.645834, 18.668821>,  <38.196312, 30.012920, 18.520163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140202, 29.645834, 18.668821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581342, 0.380186, 0.719374,
		-0.801475, -0.115139, -0.586839,
		-0.140280, -0.917715, 0.371645,
		38.098118, 29.370520, 18.780315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544983, 30.092251, 18.816690>,  <38.196312, 30.012920, 18.520163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544983, 30.092251, 18.816690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649261, 29.742590, 18.980593>,  <37.711826, 29.532793, 19.078934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649261, 29.742590, 18.980593>,  <37.544983, 30.092251, 18.816690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649261, 29.742590, 18.980593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484250, 0.248779, 0.838815,
		-0.835190, -0.417097, -0.358453,
		0.260692, -0.874151, 0.409757,
		37.727470, 29.480345, 19.103519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919891, 29.729799, 19.013296>,  <37.544983, 30.092251, 18.816690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919891, 29.729799, 19.013296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173969, 29.522877, 19.242704>,  <37.326416, 29.398724, 19.380350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173969, 29.522877, 19.242704>,  <36.919891, 29.729799, 19.013296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173969, 29.522877, 19.242704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568841, 0.188962, 0.800445,
		-0.522449, -0.834679, -0.174238,
		0.635190, -0.517305, 0.573523,
		37.364525, 29.367685, 19.414761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541214, 29.396534, 19.469116>,  <36.919891, 29.729799, 19.013296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541214, 29.396534, 19.469116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901932, 29.428558, 19.638994>,  <37.118362, 29.447773, 19.740921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901932, 29.428558, 19.638994>,  <36.541214, 29.396534, 19.469116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901932, 29.428558, 19.638994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431430, 0.109163, 0.895518,
		0.025331, -0.990795, 0.132981,
		0.901791, 0.080056, 0.424693,
		37.172470, 29.452576, 19.766401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552799, 28.871473, 19.966860>,  <36.541214, 29.396534, 19.469116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552799, 28.871473, 19.966860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829906, 29.147058, 20.052090>,  <36.996170, 29.312410, 20.103228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829906, 29.147058, 20.052090>,  <36.552799, 28.871473, 19.966860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829906, 29.147058, 20.052090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443150, 0.173600, 0.879477,
		0.568939, -0.703698, 0.425580,
		0.692767, 0.688965, 0.213076,
		37.037735, 29.353748, 20.116013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751663, 28.632200, 20.627302>,  <36.552799, 28.871473, 19.966860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751663, 28.632200, 20.627302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843880, 29.020405, 20.599142>,  <36.899208, 29.253328, 20.582245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843880, 29.020405, 20.599142>,  <36.751663, 28.632200, 20.627302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843880, 29.020405, 20.599142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440413, 0.168587, 0.881825,
		0.867690, -0.172292, 0.466293,
		0.230543, 0.970512, -0.070402,
		36.913044, 29.311558, 20.578022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092873, 28.688503, 21.266857>,  <36.751663, 28.632200, 20.627302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092873, 28.688503, 21.266857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940399, 29.040247, 21.152718>,  <36.848915, 29.251293, 21.084234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940399, 29.040247, 21.152718>,  <37.092873, 28.688503, 21.266857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940399, 29.040247, 21.152718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286564, 0.181066, 0.940796,
		0.878966, 0.440386, 0.182974,
		-0.381183, 0.879361, -0.285349,
		36.826046, 29.304056, 21.067112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187588, 29.071527, 21.792408>,  <37.092873, 28.688503, 21.266857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187588, 29.071527, 21.792408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.915817, 29.306341, 21.616331>,  <36.752754, 29.447229, 21.510685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.915817, 29.306341, 21.616331>,  <37.187588, 29.071527, 21.792408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915817, 29.306341, 21.616331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489960, 0.083592, 0.867727,
		0.546180, 0.805236, 0.230827,
		-0.679430, 0.587032, -0.440190,
		36.711987, 29.482450, 21.484274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183430, 29.625404, 22.119925>,  <37.187588, 29.071527, 21.792408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183430, 29.625404, 22.119925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831261, 29.653427, 21.932327>,  <36.619961, 29.670240, 21.819769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831261, 29.653427, 21.932327>,  <37.183430, 29.625404, 22.119925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831261, 29.653427, 21.932327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468094, 0.029740, 0.883178,
		0.075822, 0.997099, 0.006611,
		-0.880420, 0.070059, -0.468991,
		36.567135, 29.674444, 21.791630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758022, 30.025101, 22.553707>,  <37.183430, 29.625404, 22.119925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758022, 30.025101, 22.553707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466015, 29.886629, 22.318003>,  <36.290810, 29.803545, 22.176580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466015, 29.886629, 22.318003>,  <36.758022, 30.025101, 22.553707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466015, 29.886629, 22.318003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624856, -0.011128, 0.780661,
		-0.276807, 0.938102, -0.208189,
		-0.730023, -0.346181, -0.589259,
		36.247009, 29.782774, 22.141226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154266, 30.518150, 22.633305>,  <36.758022, 30.025101, 22.553707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154266, 30.518150, 22.633305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023548, 30.154837, 22.528824>,  <35.945118, 29.936850, 22.466135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023548, 30.154837, 22.528824>,  <36.154266, 30.518150, 22.633305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023548, 30.154837, 22.528824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584049, -0.023194, 0.811387,
		-0.743026, 0.417715, -0.522902,
		-0.326800, -0.908282, -0.261200,
		35.925507, 29.882353, 22.450464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452419, 30.551334, 22.757809>,  <36.154266, 30.518150, 22.633305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452419, 30.551334, 22.757809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527164, 30.159208, 22.732309>,  <35.572014, 29.923933, 22.717010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527164, 30.159208, 22.732309>,  <35.452419, 30.551334, 22.757809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527164, 30.159208, 22.732309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694784, -0.177757, 0.696906,
		-0.694518, -0.085938, -0.714324,
		0.186867, -0.980315, -0.063747,
		35.583225, 29.865114, 22.713186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808624, 30.343664, 22.485046>,  <35.452419, 30.551334, 22.757809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808624, 30.343664, 22.485046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990711, 30.019588, 22.632761>,  <35.099964, 29.825144, 22.721390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990711, 30.019588, 22.632761>,  <34.808624, 30.343664, 22.485046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990711, 30.019588, 22.632761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638562, -0.008032, 0.769528,
		-0.620496, -0.586116, -0.521011,
		0.455218, -0.810188, 0.369288,
		35.127277, 29.776533, 22.743547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304146, 29.928753, 22.682589>,  <34.808624, 30.343664, 22.485046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304146, 29.928753, 22.682589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621151, 29.774839, 22.871847>,  <34.811356, 29.682491, 22.985401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621151, 29.774839, 22.871847>,  <34.304146, 29.928753, 22.682589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621151, 29.774839, 22.871847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536809, -0.071959, 0.840629,
		-0.289412, -0.920198, -0.263583,
		0.792512, -0.384782, 0.473145,
		34.858906, 29.659405, 23.013790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110146, 29.354618, 23.026363>,  <34.304146, 29.928753, 22.682589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110146, 29.354618, 23.026363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433994, 29.476152, 23.227240>,  <34.628304, 29.549074, 23.347765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433994, 29.476152, 23.227240>,  <34.110146, 29.354618, 23.026363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433994, 29.476152, 23.227240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549541, 0.091812, 0.830407,
		0.206205, -0.948289, 0.241306,
		0.809620, 0.303841, 0.502192,
		34.676880, 29.567303, 23.377897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030792, 29.001644, 23.682699>,  <34.110146, 29.354618, 23.026363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030792, 29.001644, 23.682699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.257992, 29.326986, 23.733032>,  <34.394310, 29.522192, 23.763231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.257992, 29.326986, 23.733032>,  <34.030792, 29.001644, 23.682699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257992, 29.326986, 23.733032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373764, 0.118698, 0.919897,
		0.733266, -0.569531, 0.371423,
		0.567998, 0.813354, 0.125832,
		34.428391, 29.570992, 23.770782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241619, 28.910437, 24.296074>,  <34.030792, 29.001644, 23.682699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241619, 28.910437, 24.296074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327843, 29.292326, 24.214062>,  <34.379578, 29.521460, 24.164854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327843, 29.292326, 24.214062>,  <34.241619, 28.910437, 24.296074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327843, 29.292326, 24.214062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236924, 0.254828, 0.937512,
		0.947313, -0.153511, 0.281128,
		0.215558, 0.954724, -0.205031,
		34.392509, 29.578743, 24.152552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.085091, 29.965183, 30.088144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813812, 30.219252, 29.940300>,  <36.651047, 30.371693, 29.851593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813812, 30.219252, 29.940300>,  <37.085091, 29.965183, 30.088144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813812, 30.219252, 29.940300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015554, 0.490430, 0.871342,
		0.734718, 0.596688, -0.322727,
		-0.678194, 0.635171, -0.369609,
		36.610355, 30.409803, 29.829418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239895, 30.550577, 30.356796>,  <37.085091, 29.965183, 30.088144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239895, 30.550577, 30.356796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.889645, 30.673090, 30.207413>,  <36.679493, 30.746597, 30.117783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.889645, 30.673090, 30.207413>,  <37.239895, 30.550577, 30.356796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889645, 30.673090, 30.207413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113207, 0.621534, 0.775164,
		0.469537, 0.721031, -0.509557,
		-0.875625, 0.306283, -0.373459,
		36.626957, 30.764975, 30.095375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210815, 31.289286, 30.248571>,  <37.239895, 30.550577, 30.356796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210815, 31.289286, 30.248571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.816734, 31.220898, 30.243740>,  <36.580284, 31.179865, 30.240841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.816734, 31.220898, 30.243740>,  <37.210815, 31.289286, 30.248571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816734, 31.220898, 30.243740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126852, 0.679950, 0.722203,
		-0.115262, 0.713048, -0.691575,
		-0.985202, -0.170970, -0.012079,
		36.521175, 31.169607, 30.240116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917774, 31.865326, 30.115358>,  <37.210815, 31.289286, 30.248571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917774, 31.865326, 30.115358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.622681, 31.667025, 30.298653>,  <36.445625, 31.548044, 30.408630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.622681, 31.667025, 30.298653>,  <36.917774, 31.865326, 30.115358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622681, 31.667025, 30.298653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204192, 0.810840, 0.548493,
		-0.643475, 0.311071, -0.699410,
		-0.737730, -0.495755, 0.458237,
		36.401363, 31.518297, 30.436123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395332, 32.339764, 30.112995>,  <36.917774, 31.865326, 30.115358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395332, 32.339764, 30.112995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253731, 32.074379, 30.376661>,  <36.168770, 31.915148, 30.534861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253731, 32.074379, 30.376661>,  <36.395332, 32.339764, 30.112995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253731, 32.074379, 30.376661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370292, 0.746637, 0.552646,
		-0.858818, -0.048446, -0.509985,
		-0.354000, -0.663466, 0.659164,
		36.147530, 31.875340, 30.574411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700691, 32.469074, 30.242365>,  <36.395332, 32.339764, 30.112995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700691, 32.469074, 30.242365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.841263, 32.280087, 30.565666>,  <35.925606, 32.166695, 30.759647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.841263, 32.280087, 30.565666>,  <35.700691, 32.469074, 30.242365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841263, 32.280087, 30.565666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510326, 0.627111, 0.588472,
		-0.784900, -0.619276, -0.020732,
		0.351425, -0.472472, 0.808251,
		35.946690, 32.138344, 30.808142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179817, 32.527088, 30.569027>,  <35.700691, 32.469074, 30.242365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179817, 32.527088, 30.569027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463497, 32.435970, 30.835903>,  <35.633705, 32.381298, 30.996029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463497, 32.435970, 30.835903>,  <35.179817, 32.527088, 30.569027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463497, 32.435970, 30.835903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345075, 0.713088, 0.610269,
		-0.614786, -0.663033, 0.427113,
		0.709198, -0.227799, 0.667193,
		35.676258, 32.367630, 31.036060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814278, 32.399502, 31.155674>,  <35.179817, 32.527088, 30.569027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814278, 32.399502, 31.155674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.170414, 32.461628, 31.326870>,  <35.384094, 32.498905, 31.429588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.170414, 32.461628, 31.326870>,  <34.814278, 32.399502, 31.155674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170414, 32.461628, 31.326870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421326, 0.637361, 0.645178,
		-0.172579, -0.754751, 0.632904,
		0.890337, 0.155315, 0.427991,
		35.437515, 32.508221, 31.455267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855629, 32.229000, 31.916946>,  <34.814278, 32.399502, 31.155674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855629, 32.229000, 31.916946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.144119, 32.500488, 31.861559>,  <35.317215, 32.663380, 31.828325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.144119, 32.500488, 31.861559>,  <34.855629, 32.229000, 31.916946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144119, 32.500488, 31.861559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350868, 0.530301, 0.771798,
		0.597265, -0.508056, 0.620607,
		0.721226, 0.678719, -0.138470,
		35.360485, 32.704105, 31.820017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093056, 32.578979, 32.604397>,  <34.855629, 32.229000, 31.916946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093056, 32.578979, 32.604397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.242126, 32.842777, 32.343266>,  <35.331570, 33.001057, 32.186588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.242126, 32.842777, 32.343266>,  <35.093056, 32.578979, 32.604397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242126, 32.842777, 32.343266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368916, 0.750816, 0.547883,
		0.851476, 0.036654, 0.523110,
		0.372678, 0.659493, -0.652825,
		35.353931, 33.040627, 32.147419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085262, 33.239086, 32.866287>,  <35.093056, 32.578979, 32.604397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085262, 33.239086, 32.866287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.162727, 33.389576, 32.503860>,  <35.209206, 33.479870, 32.286404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.162727, 33.389576, 32.503860>,  <35.085262, 33.239086, 32.866287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162727, 33.389576, 32.503860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312679, 0.899054, 0.306485,
		0.929907, 0.223953, 0.291750,
		0.193660, 0.376227, -0.906063,
		35.220825, 33.502445, 32.232040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615108, 33.698288, 33.034706>,  <35.085262, 33.239086, 32.866287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615108, 33.698288, 33.034706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391113, 33.784157, 32.714622>,  <35.256718, 33.835678, 32.522572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391113, 33.784157, 32.714622>,  <35.615108, 33.698288, 33.034706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391113, 33.784157, 32.714622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361859, 0.805484, 0.469312,
		0.745302, 0.552371, -0.373380,
		-0.559985, 0.214668, -0.800209,
		35.223118, 33.848557, 32.474560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749546, 34.454166, 32.852497>,  <35.615108, 33.698288, 33.034706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749546, 34.454166, 32.852497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.378716, 34.363445, 32.733105>,  <35.156219, 34.309013, 32.661469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.378716, 34.363445, 32.733105>,  <35.749546, 34.454166, 32.852497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378716, 34.363445, 32.733105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370768, 0.672325, 0.640710,
		0.055360, 0.704654, -0.707388,
		-0.927074, -0.226807, -0.298483,
		35.100594, 34.295403, 32.643559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309101, 35.118454, 32.788837>,  <35.749546, 34.454166, 32.852497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309101, 35.118454, 32.788837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.078148, 34.797615, 32.849861>,  <34.939575, 34.605114, 32.886475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.078148, 34.797615, 32.849861>,  <35.309101, 35.118454, 32.788837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078148, 34.797615, 32.849861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510795, 0.500627, 0.698900,
		-0.636962, 0.325603, -0.698758,
		-0.577381, -0.802095, 0.152564,
		34.904934, 34.556988, 32.895630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789436, 35.122467, 33.471672>,  <35.309101, 35.118454, 32.788837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789436, 35.122467, 33.471672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.051075, 35.406307, 33.576458>,  <36.208057, 35.576611, 33.639328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.051075, 35.406307, 33.576458>,  <35.789436, 35.122467, 33.471672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051075, 35.406307, 33.576458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072317, 0.286073, -0.955475,
		-0.752949, 0.643915, 0.135802,
		0.654094, 0.709603, 0.261964,
		36.247303, 35.619186, 33.655048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680122, 35.748627, 33.097431>,  <35.789436, 35.122467, 33.471672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680122, 35.748627, 33.097431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069332, 35.767277, 33.187805>,  <36.302860, 35.778469, 33.242027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069332, 35.767277, 33.187805>,  <35.680122, 35.748627, 33.097431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069332, 35.767277, 33.187805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196649, 0.344405, -0.917995,
		-0.120616, 0.937663, 0.325946,
		0.973027, 0.046628, 0.225931,
		36.361240, 35.781265, 33.255585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913342, 36.313065, 32.805653>,  <35.680122, 35.748627, 33.097431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913342, 36.313065, 32.805653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265041, 36.129585, 32.857059>,  <36.476063, 36.019497, 32.887905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265041, 36.129585, 32.857059>,  <35.913342, 36.313065, 32.805653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265041, 36.129585, 32.857059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270098, 0.257818, -0.927673,
		0.392387, 0.850368, 0.350580,
		0.879249, -0.458698, 0.128518,
		36.528816, 35.991978, 32.895615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506638, 36.760334, 32.687126>,  <35.913342, 36.313065, 32.805653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506638, 36.760334, 32.687126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605328, 36.379829, 32.613121>,  <36.664543, 36.151527, 32.568718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605328, 36.379829, 32.613121>,  <36.506638, 36.760334, 32.687126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605328, 36.379829, 32.613121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158030, 0.227852, -0.960786,
		0.956113, 0.207814, 0.206545,
		0.246726, -0.951261, -0.185011,
		36.679344, 36.094452, 32.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884609, 36.832211, 32.086365>,  <36.506638, 36.760334, 32.687126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884609, 36.832211, 32.086365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818287, 36.438152, 32.104248>,  <36.778492, 36.201717, 32.114979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818287, 36.438152, 32.104248>,  <36.884609, 36.832211, 32.086365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818287, 36.438152, 32.104248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203495, -0.078542, -0.975921,
		0.964935, -0.152713, 0.213494,
		-0.165805, -0.985145, 0.044712,
		36.768547, 36.142609, 32.117661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398560, 36.586781, 31.678061>,  <36.884609, 36.832211, 32.086365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398560, 36.586781, 31.678061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.151886, 36.272068, 31.688469>,  <37.003883, 36.083241, 31.694714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.151886, 36.272068, 31.688469>,  <37.398560, 36.586781, 31.678061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151886, 36.272068, 31.688469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330191, -0.288530, -0.898735,
		0.714617, -0.545641, 0.437720,
		-0.616681, -0.786782, 0.026023,
		36.966881, 36.036034, 31.696276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814545, 36.000443, 31.609495>,  <37.398560, 36.586781, 31.678061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814545, 36.000443, 31.609495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.439648, 35.904705, 31.508074>,  <37.214710, 35.847263, 31.447222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.439648, 35.904705, 31.508074>,  <37.814545, 36.000443, 31.609495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439648, 35.904705, 31.508074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316148, -0.276656, -0.907475,
		0.147052, -0.930686, 0.334962,
		-0.937244, -0.239343, -0.253552,
		37.158474, 35.832901, 31.432009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888973, 35.381050, 31.181690>,  <37.814545, 36.000443, 31.609495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888973, 35.381050, 31.181690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.534794, 35.553234, 31.111629>,  <37.322285, 35.656544, 31.069593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.534794, 35.553234, 31.111629>,  <37.888973, 35.381050, 31.181690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534794, 35.553234, 31.111629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018818, -0.343376, -0.939009,
		-0.464349, -0.834744, 0.295943,
		-0.885452, 0.430459, -0.175154,
		37.269157, 35.682373, 31.059084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375454, 34.763481, 30.965866>,  <37.888973, 35.381050, 31.181690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375454, 34.763481, 30.965866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.231552, 35.098827, 30.802055>,  <37.145210, 35.300037, 30.703770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.231552, 35.098827, 30.802055>,  <37.375454, 34.763481, 30.965866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231552, 35.098827, 30.802055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220793, -0.502940, -0.835644,
		-0.906545, -0.210210, 0.366043,
		-0.359759, 0.838369, -0.409525,
		37.123623, 35.350338, 30.679197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847992, 34.548653, 30.554781>,  <37.375454, 34.763481, 30.965866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847992, 34.548653, 30.554781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911179, 34.922150, 30.426296>,  <36.949089, 35.146248, 30.349205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911179, 34.922150, 30.426296>,  <36.847992, 34.548653, 30.554781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911179, 34.922150, 30.426296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091959, -0.309971, -0.946289,
		-0.983153, 0.179020, 0.036901,
		0.157966, 0.933740, -0.321211,
		36.958569, 35.202271, 30.329933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386932, 34.568203, 29.955004>,  <36.847992, 34.548653, 30.554781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386932, 34.568203, 29.955004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.632427, 34.881393, 29.914454>,  <36.779724, 35.069305, 29.890123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.632427, 34.881393, 29.914454>,  <36.386932, 34.568203, 29.955004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632427, 34.881393, 29.914454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002681, -0.126334, -0.991984,
		-0.789504, 0.609092, -0.075437,
		0.613740, 0.782973, -0.101374,
		36.816547, 35.116283, 29.884041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170742, 34.939369, 29.413002>,  <36.386932, 34.568203, 29.955004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170742, 34.939369, 29.413002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558945, 35.022579, 29.461725>,  <36.791866, 35.072506, 29.490959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558945, 35.022579, 29.461725>,  <36.170742, 34.939369, 29.413002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558945, 35.022579, 29.461725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173224, -0.250399, -0.952520,
		-0.167648, 0.945529, -0.279049,
		0.970509, 0.208026, 0.121810,
		36.850098, 35.084988, 29.498268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364590, 35.247963, 28.758314>,  <36.170742, 34.939369, 29.413002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364590, 35.247963, 28.758314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726860, 35.148296, 28.895523>,  <36.944221, 35.088497, 28.977848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726860, 35.148296, 28.895523>,  <36.364590, 35.247963, 28.758314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726860, 35.148296, 28.895523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268077, -0.290259, -0.918632,
		0.328455, 0.923941, -0.196086,
		0.905678, -0.249163, 0.343024,
		36.998562, 35.073547, 28.998430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882111, 35.517563, 28.268457>,  <36.364590, 35.247963, 28.758314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882111, 35.517563, 28.268457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.064922, 35.210915, 28.448868>,  <37.174610, 35.026928, 28.557114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.064922, 35.210915, 28.448868>,  <36.882111, 35.517563, 28.268457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064922, 35.210915, 28.448868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376252, -0.292848, -0.879019,
		0.805954, 0.571433, 0.154603,
		0.457026, -0.766619, 0.451025,
		37.202030, 34.980930, 28.584175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007401, 36.218586, 28.331610>,  <36.882111, 35.517563, 28.268457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007401, 36.218586, 28.331610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968601, 36.536423, 28.091871>,  <36.945320, 36.727123, 27.948029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968601, 36.536423, 28.091871>,  <37.007401, 36.218586, 28.331610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968601, 36.536423, 28.091871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655104, 0.402374, 0.639479,
		0.749286, 0.454662, 0.481511,
		-0.097000, 0.794592, -0.599345,
		36.939503, 36.774799, 27.912067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826416, 36.822483, 28.816956>,  <37.007401, 36.218586, 28.331610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826416, 36.822483, 28.816956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.672619, 36.924316, 28.462023>,  <36.580341, 36.985416, 28.249063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.672619, 36.924316, 28.462023>,  <36.826416, 36.822483, 28.816956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672619, 36.924316, 28.462023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886576, 0.165975, 0.431780,
		0.257197, 0.952702, 0.161888,
		-0.384489, 0.254579, -0.887332,
		36.557274, 37.000690, 28.195824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366665, 37.440994, 28.954802>,  <36.826416, 36.822483, 28.816956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366665, 37.440994, 28.954802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.237503, 37.271133, 28.616476>,  <36.160007, 37.169216, 28.413481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.237503, 37.271133, 28.616476>,  <36.366665, 37.440994, 28.954802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237503, 37.271133, 28.616476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933850, -0.002278, 0.357656,
		-0.153806, 0.905354, -0.395825,
		-0.322904, -0.424651, -0.845816,
		36.140633, 37.143738, 28.362732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870392, 37.867260, 28.649590>,  <36.366665, 37.440994, 28.954802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870392, 37.867260, 28.649590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808937, 37.511612, 28.477142>,  <35.772064, 37.298222, 28.373674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808937, 37.511612, 28.477142>,  <35.870392, 37.867260, 28.649590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808937, 37.511612, 28.477142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940409, -0.002379, 0.340038,
		-0.303360, 0.457670, -0.835770,
		-0.153637, -0.889119, -0.431118,
		35.762844, 37.244877, 28.347807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183567, 38.019115, 28.240545>,  <35.870392, 37.867260, 28.649590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183567, 38.019115, 28.240545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.237640, 37.622826, 28.246141>,  <35.270084, 37.385052, 28.249500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.237640, 37.622826, 28.246141>,  <35.183567, 38.019115, 28.240545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237640, 37.622826, 28.246141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977228, -0.130985, 0.166941,
		-0.163559, -0.036241, -0.985868,
		0.135184, -0.990722, 0.013992,
		35.278194, 37.325607, 28.250340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648491, 37.726406, 27.887737>,  <35.183567, 38.019115, 28.240545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648491, 37.726406, 27.887737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.797775, 37.440552, 28.124384>,  <34.887344, 37.269039, 28.266371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.797775, 37.440552, 28.124384>,  <34.648491, 37.726406, 27.887737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797775, 37.440552, 28.124384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922493, -0.218076, 0.318511,
		-0.098602, -0.664633, -0.740636,
		0.373207, -0.714638, 0.591617,
		34.909737, 37.226162, 28.301868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098618, 37.172237, 27.967228>,  <34.648491, 37.726406, 27.887737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098618, 37.172237, 27.967228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.341545, 37.077049, 28.270420>,  <34.487301, 37.019936, 28.452335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.341545, 37.077049, 28.270420>,  <34.098618, 37.172237, 27.967228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341545, 37.077049, 28.270420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785236, -0.324760, 0.527196,
		0.120708, -0.915370, -0.384092,
		0.607318, -0.237966, 0.757982,
		34.523739, 37.005661, 28.497814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807194, 36.615067, 28.253773>,  <34.098618, 37.172237, 27.967228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807194, 36.615067, 28.253773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.040676, 36.722256, 28.560362>,  <34.180763, 36.786568, 28.744316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.040676, 36.722256, 28.560362>,  <33.807194, 36.615067, 28.253773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040676, 36.722256, 28.560362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673905, -0.366679, 0.641403,
		0.452929, -0.890919, -0.033443,
		0.583701, 0.267973, 0.766475,
		34.215786, 36.802647, 28.790304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784222, 36.034515, 28.727251>,  <33.807194, 36.615067, 28.253773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784222, 36.034515, 28.727251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885674, 36.354237, 28.945164>,  <33.946545, 36.546070, 29.075911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885674, 36.354237, 28.945164>,  <33.784222, 36.034515, 28.727251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885674, 36.354237, 28.945164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551101, -0.343446, 0.760481,
		0.794957, -0.493113, 0.353387,
		0.253634, 0.799302, 0.544781,
		33.961765, 36.594028, 29.108599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084122, 35.708981, 29.380358>,  <33.784222, 36.034515, 28.727251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084122, 35.708981, 29.380358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962860, 36.084625, 29.445061>,  <33.890102, 36.310013, 29.483883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962860, 36.084625, 29.445061>,  <34.084122, 35.708981, 29.380358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962860, 36.084625, 29.445061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619037, -0.323128, 0.715808,
		0.724491, 0.116869, 0.679304,
		-0.303158, 0.939111, 0.161757,
		33.871914, 36.366360, 29.493587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092739, 35.733936, 30.087189>,  <34.084122, 35.708981, 29.380358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092739, 35.733936, 30.087189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.895817, 36.074837, 30.016417>,  <33.777664, 36.279377, 29.973953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.895817, 36.074837, 30.016417>,  <34.092739, 35.733936, 30.087189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895817, 36.074837, 30.016417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486052, -0.100543, 0.868127,
		0.722071, 0.513383, 0.463736,
		-0.492307, 0.852249, -0.176932,
		33.748123, 36.330513, 29.963337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168255, 36.056236, 30.643082>,  <34.092739, 35.733936, 30.087189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168255, 36.056236, 30.643082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.835758, 36.221344, 30.494135>,  <33.636261, 36.320408, 30.404766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.835758, 36.221344, 30.494135>,  <34.168255, 36.056236, 30.643082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835758, 36.221344, 30.494135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495249, -0.245594, 0.833314,
		0.252511, 0.877102, 0.408570,
		-0.831244, 0.412765, -0.372369,
		33.586384, 36.345173, 30.382423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.056446, 35.848152, 25.658672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732121, 35.972042, 25.460018>,  <39.537525, 36.046375, 25.340826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732121, 35.972042, 25.460018>,  <40.056446, 35.848152, 25.658672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732121, 35.972042, 25.460018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321711, 0.473006, 0.820224,
		0.488954, 0.824825, -0.283880,
		-0.810818, 0.309725, -0.496634,
		39.488876, 36.064960, 25.311028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983444, 36.582954, 25.735712>,  <40.056446, 35.848152, 25.658672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983444, 36.582954, 25.735712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622402, 36.432762, 25.651503>,  <39.405777, 36.342648, 25.600977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622402, 36.432762, 25.651503>,  <39.983444, 36.582954, 25.735712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622402, 36.432762, 25.651503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358832, 0.386122, 0.849794,
		-0.237792, 0.842570, -0.483249,
		-0.902604, -0.375480, -0.210524,
		39.351620, 36.320118, 25.588345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460285, 37.173939, 25.765120>,  <39.983444, 36.582954, 25.735712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460285, 37.173939, 25.765120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269775, 36.826054, 25.816914>,  <39.155472, 36.617325, 25.847990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269775, 36.826054, 25.816914>,  <39.460285, 37.173939, 25.765120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269775, 36.826054, 25.816914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514495, 0.395060, 0.761067,
		-0.713063, 0.295855, -0.635618,
		-0.476273, -0.869711, 0.129487,
		39.126892, 36.565140, 25.855759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829628, 37.495461, 25.787458>,  <39.460285, 37.173939, 25.765120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829628, 37.495461, 25.787458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799667, 37.131084, 25.949730>,  <38.781693, 36.912460, 26.047092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799667, 37.131084, 25.949730>,  <38.829628, 37.495461, 25.787458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799667, 37.131084, 25.949730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661639, 0.349773, 0.663244,
		-0.746072, -0.218734, -0.628913,
		-0.074903, -0.910941, 0.405679,
		38.777195, 36.857803, 26.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083569, 37.306618, 25.848627>,  <38.829628, 37.495461, 25.787458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083569, 37.306618, 25.848627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251934, 37.067772, 26.121767>,  <38.352955, 36.924465, 26.285652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251934, 37.067772, 26.121767>,  <38.083569, 37.306618, 25.848627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251934, 37.067772, 26.121767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738598, 0.211406, 0.640141,
		-0.526595, -0.773799, -0.352041,
		0.420917, -0.597112, 0.682851,
		38.378208, 36.888638, 26.326622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575867, 36.948051, 26.051594>,  <38.083569, 37.306618, 25.848627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575867, 36.948051, 26.051594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834599, 36.891911, 26.351439>,  <37.989838, 36.858227, 26.531345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834599, 36.891911, 26.351439>,  <37.575867, 36.948051, 26.051594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834599, 36.891911, 26.351439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759739, -0.032975, 0.649391,
		-0.066422, -0.989553, -0.127957,
		0.646827, -0.140348, 0.749612,
		38.028648, 36.849808, 26.576323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308418, 36.394840, 26.459164>,  <37.575867, 36.948051, 26.051594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308418, 36.394840, 26.459164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550236, 36.591942, 26.709513>,  <37.695328, 36.710205, 26.859722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550236, 36.591942, 26.709513>,  <37.308418, 36.394840, 26.459164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550236, 36.591942, 26.709513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690593, -0.067372, 0.720099,
		0.397002, -0.867554, 0.299567,
		0.604542, 0.492759, 0.625873,
		37.731598, 36.739769, 26.897274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323769, 36.083706, 27.022469>,  <37.308418, 36.394840, 26.459164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323769, 36.083706, 27.022469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444252, 36.438679, 27.162031>,  <37.516541, 36.651661, 27.245770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444252, 36.438679, 27.162031>,  <37.323769, 36.083706, 27.022469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444252, 36.438679, 27.162031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681573, -0.055534, 0.729640,
		0.666883, -0.457579, 0.588123,
		0.301207, 0.887433, 0.348909,
		37.534615, 36.704910, 27.266705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200348, 35.977020, 27.669836>,  <37.323769, 36.083706, 27.022469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200348, 35.977020, 27.669836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246727, 36.373722, 27.647987>,  <37.274555, 36.611744, 27.634878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246727, 36.373722, 27.647987>,  <37.200348, 35.977020, 27.669836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246727, 36.373722, 27.647987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676156, 0.119098, 0.727069,
		0.727578, -0.047369, 0.684388,
		0.115950, 0.991752, -0.054624,
		37.281513, 36.671249, 27.631599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593098, 35.366467, 27.887941>,  <37.200348, 35.977020, 27.669836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593098, 35.366467, 27.887941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543560, 35.053463, 28.132019>,  <37.513836, 34.865662, 28.278465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543560, 35.053463, 28.132019>,  <37.593098, 35.366467, 27.887941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543560, 35.053463, 28.132019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523173, -0.574008, -0.629924,
		0.843180, 0.241221, 0.480480,
		-0.123849, -0.782513, 0.610192,
		37.506405, 34.818710, 28.315077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155735, 34.942703, 27.769947>,  <37.593098, 35.366467, 27.887941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155735, 34.942703, 27.769947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908180, 34.669617, 27.925320>,  <37.759647, 34.505764, 28.018543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908180, 34.669617, 27.925320>,  <38.155735, 34.942703, 27.769947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908180, 34.669617, 27.925320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283805, -0.655464, -0.699872,
		0.732415, -0.322905, 0.599417,
		-0.618888, -0.682715, 0.388429,
		37.722515, 34.464802, 28.041849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534622, 34.300423, 27.940157>,  <38.155735, 34.942703, 27.769947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534622, 34.300423, 27.940157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154106, 34.184788, 27.897293>,  <37.925797, 34.115406, 27.871574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154106, 34.184788, 27.897293>,  <38.534622, 34.300423, 27.940157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154106, 34.184788, 27.897293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294441, -0.748770, -0.593842,
		0.091437, -0.596465, 0.797414,
		-0.951285, -0.289090, -0.107158,
		37.868721, 34.098061, 27.865145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568703, 33.645126, 27.819195>,  <38.534622, 34.300423, 27.940157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568703, 33.645126, 27.819195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188972, 33.687336, 27.700773>,  <37.961136, 33.712662, 27.629721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188972, 33.687336, 27.700773>,  <38.568703, 33.645126, 27.819195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188972, 33.687336, 27.700773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041260, -0.891953, -0.450241,
		-0.311577, -0.439640, 0.842399,
		-0.949325, 0.105527, -0.296051,
		37.904175, 33.718994, 27.611958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262535, 33.021996, 27.901901>,  <38.568703, 33.645126, 27.819195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262535, 33.021996, 27.901901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029861, 33.196674, 27.627401>,  <37.890255, 33.301483, 27.462702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029861, 33.196674, 27.627401>,  <38.262535, 33.021996, 27.901901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029861, 33.196674, 27.627401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143870, -0.775129, -0.615204,
		-0.800588, -0.456587, 0.388055,
		-0.581687, 0.436695, -0.686249,
		37.855354, 33.327682, 27.421526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774475, 32.445694, 27.659658>,  <38.262535, 33.021996, 27.901901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774475, 32.445694, 27.659658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784790, 32.745937, 27.395561>,  <37.790981, 32.926083, 27.237103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784790, 32.745937, 27.395561>,  <37.774475, 32.445694, 27.659658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784790, 32.745937, 27.395561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088222, -0.659593, -0.746427,
		-0.995767, -0.038998, -0.083232,
		0.025790, 0.750610, -0.660242,
		37.792526, 32.971119, 27.197489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641174, 32.104603, 27.096008>,  <37.774475, 32.445694, 27.659658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641174, 32.104603, 27.096008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783829, 32.455345, 26.967051>,  <37.869423, 32.665791, 26.889675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783829, 32.455345, 26.967051>,  <37.641174, 32.104603, 27.096008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783829, 32.455345, 26.967051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269970, -0.427092, -0.862965,
		-0.894386, 0.220729, -0.389041,
		0.356638, 0.876853, -0.322395,
		37.890820, 32.718403, 26.870333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486946, 32.169071, 26.370157>,  <37.641174, 32.104603, 27.096008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486946, 32.169071, 26.370157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805519, 32.404701, 26.424835>,  <37.996662, 32.546078, 26.457642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805519, 32.404701, 26.424835>,  <37.486946, 32.169071, 26.370157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805519, 32.404701, 26.424835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490955, -0.497891, -0.714890,
		-0.353064, 0.636473, -0.685746,
		0.796435, 0.589072, 0.136693,
		38.044449, 32.581425, 26.465843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734158, 32.221424, 25.750517>,  <37.486946, 32.169071, 26.370157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734158, 32.221424, 25.750517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045315, 32.350742, 25.966059>,  <38.232010, 32.428333, 26.095385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045315, 32.350742, 25.966059>,  <37.734158, 32.221424, 25.750517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045315, 32.350742, 25.966059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627747, -0.360733, -0.689787,
		-0.028624, 0.874843, -0.483560,
		0.777891, 0.323297, 0.538854,
		38.278683, 32.447731, 26.127714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138866, 32.779625, 25.348534>,  <37.734158, 32.221424, 25.750517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138866, 32.779625, 25.348534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366756, 32.582462, 25.611578>,  <38.503490, 32.464165, 25.769405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366756, 32.582462, 25.611578>,  <38.138866, 32.779625, 25.348534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366756, 32.582462, 25.611578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454397, -0.477812, -0.751811,
		0.684788, 0.727144, -0.048246,
		0.569727, -0.492908, 0.657612,
		38.537674, 32.434589, 25.808861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755733, 32.729069, 24.971315>,  <38.138866, 32.779625, 25.348534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755733, 32.729069, 24.971315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834625, 32.484409, 25.277775>,  <38.881962, 32.337612, 25.461651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834625, 32.484409, 25.277775>,  <38.755733, 32.729069, 24.971315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834625, 32.484409, 25.277775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760601, -0.397600, -0.513225,
		0.618536, 0.683955, 0.386805,
		0.197230, -0.611653, 0.766147,
		38.893795, 32.300915, 25.507620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358242, 32.828873, 25.137583>,  <38.755733, 32.729069, 24.971315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358242, 32.828873, 25.137583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306126, 32.451069, 25.258198>,  <39.274857, 32.224388, 25.330566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306126, 32.451069, 25.258198>,  <39.358242, 32.828873, 25.137583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306126, 32.451069, 25.258198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715564, -0.300096, -0.630801,
		0.686289, 0.133583, 0.714957,
		-0.130291, -0.944509, 0.301540,
		39.267036, 32.167717, 25.348660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974350, 32.530773, 25.105503>,  <39.358242, 32.828873, 25.137583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974350, 32.530773, 25.105503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744473, 32.203987, 25.124670>,  <39.606548, 32.007915, 25.136169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744473, 32.203987, 25.124670>,  <39.974350, 32.530773, 25.105503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744473, 32.203987, 25.124670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553083, -0.430884, -0.713049,
		0.603183, -0.383281, 0.699476,
		-0.574691, -0.816967, 0.047916,
		39.572063, 31.958897, 25.139046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443386, 32.024208, 25.129709>,  <39.974350, 32.530773, 25.105503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443386, 32.024208, 25.129709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105587, 31.848335, 25.007397>,  <39.902908, 31.742811, 24.934010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105587, 31.848335, 25.007397>,  <40.443386, 32.024208, 25.129709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105587, 31.848335, 25.007397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497898, -0.434230, -0.750695,
		0.197291, -0.786206, 0.585624,
		-0.844496, -0.439686, -0.305781,
		39.852238, 31.716429, 24.915663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.628750, 31.549131, 21.505047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962742, 31.670801, 21.688477>,  <34.163136, 31.743803, 21.798534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962742, 31.670801, 21.688477>,  <33.628750, 31.549131, 21.505047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962742, 31.670801, 21.688477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459352, -0.073589, 0.885201,
		0.303001, -0.949770, 0.078278,
		0.834976, 0.304174, 0.458576,
		34.213234, 31.762053, 21.826050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815121, 31.101225, 22.149683>,  <33.628750, 31.549131, 21.505047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815121, 31.101225, 22.149683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002865, 31.447489, 22.219358>,  <34.115509, 31.655247, 22.261164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002865, 31.447489, 22.219358>,  <33.815121, 31.101225, 22.149683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002865, 31.447489, 22.219358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459800, 0.071190, 0.885164,
		0.753849, -0.495548, 0.431443,
		0.469356, 0.865658, 0.174187,
		34.143673, 31.707186, 22.271614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041660, 31.074167, 22.732759>,  <33.815121, 31.101225, 22.149683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041660, 31.074167, 22.732759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.041210, 31.468290, 22.664444>,  <34.040939, 31.704763, 22.623455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.041210, 31.468290, 22.664444>,  <34.041660, 31.074167, 22.732759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041210, 31.468290, 22.664444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363601, 0.158698, 0.917938,
		0.931554, 0.063131, 0.358080,
		-0.001124, 0.985307, -0.170790,
		34.040874, 31.763882, 22.613207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341919, 31.357903, 23.335135>,  <34.041660, 31.074167, 22.732759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341919, 31.357903, 23.335135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136913, 31.657640, 23.167418>,  <34.013908, 31.837484, 23.066788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136913, 31.657640, 23.167418>,  <34.341919, 31.357903, 23.335135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136913, 31.657640, 23.167418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392870, 0.229559, 0.890480,
		0.763531, 0.621113, 0.176743,
		-0.512516, 0.749347, -0.419292,
		33.983158, 31.882444, 23.041630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531246, 31.954027, 23.827457>,  <34.341919, 31.357903, 23.335135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531246, 31.954027, 23.827457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.202606, 32.041103, 23.616713>,  <34.005421, 32.093349, 23.490265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.202606, 32.041103, 23.616713>,  <34.531246, 31.954027, 23.827457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202606, 32.041103, 23.616713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401440, 0.435255, 0.805853,
		0.404748, 0.873593, -0.270214,
		-0.821599, 0.217693, -0.526863,
		33.956127, 32.106411, 23.458654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490261, 32.734283, 23.800011>,  <34.531246, 31.954027, 23.827457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490261, 32.734283, 23.800011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135029, 32.570320, 23.716782>,  <33.921890, 32.471943, 23.666843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135029, 32.570320, 23.716782>,  <34.490261, 32.734283, 23.800011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135029, 32.570320, 23.716782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417374, 0.529298, 0.738676,
		-0.192656, 0.742846, -0.641142,
		-0.888078, -0.409907, -0.208073,
		33.868607, 32.447350, 23.654360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082409, 33.252319, 24.024563>,  <34.490261, 32.734283, 23.800011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082409, 33.252319, 24.024563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829678, 32.943466, 23.997419>,  <33.678040, 32.758156, 23.981133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.829678, 32.943466, 23.997419>,  <34.082409, 33.252319, 24.024563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829678, 32.943466, 23.997419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498057, 0.337349, 0.798834,
		-0.593913, 0.538523, -0.597712,
		-0.631828, -0.772132, -0.067859,
		33.640129, 32.711826, 23.977062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490814, 33.555477, 24.132614>,  <34.082409, 33.252319, 24.024563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490814, 33.555477, 24.132614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409309, 33.169277, 24.197474>,  <33.360409, 32.937557, 24.236389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409309, 33.169277, 24.197474>,  <33.490814, 33.555477, 24.132614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409309, 33.169277, 24.197474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504298, 0.245467, 0.827907,
		-0.839146, 0.086924, -0.536916,
		-0.203760, -0.965500, 0.162147,
		33.348183, 32.879627, 24.246119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856136, 33.538265, 24.239594>,  <33.490814, 33.555477, 24.132614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856136, 33.538265, 24.239594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.945923, 33.196228, 24.426540>,  <32.999794, 32.991005, 24.538710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.945923, 33.196228, 24.426540>,  <32.856136, 33.538265, 24.239594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945923, 33.196228, 24.426540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628884, 0.239254, 0.739772,
		-0.744393, -0.459972, -0.484050,
		0.224464, -0.855093, 0.467368,
		33.013264, 32.939701, 24.566751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159218, 33.301361, 24.497808>,  <32.856136, 33.538265, 24.239594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159218, 33.301361, 24.497808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.457310, 33.119846, 24.693241>,  <32.636166, 33.010937, 24.810501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.457310, 33.119846, 24.693241>,  <32.159218, 33.301361, 24.497808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457310, 33.119846, 24.693241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475693, 0.151666, 0.866437,
		-0.467282, -0.878107, -0.102840,
		0.745227, -0.453791, 0.488580,
		32.680878, 32.983707, 24.839815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822010, 32.734173, 24.975569>,  <32.159218, 33.301361, 24.497808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822010, 32.734173, 24.975569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.194603, 32.785389, 25.111774>,  <32.418159, 32.816116, 25.193497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.194603, 32.785389, 25.111774>,  <31.822010, 32.734173, 24.975569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194603, 32.785389, 25.111774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340508, -0.022607, 0.939970,
		0.128052, -0.991511, 0.022540,
		0.931481, 0.128040, 0.340513,
		32.474049, 32.823799, 25.213928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902287, 32.186996, 25.448359>,  <31.822010, 32.734173, 24.975569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902287, 32.186996, 25.448359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166798, 32.465866, 25.559113>,  <32.325504, 32.633186, 25.625565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166798, 32.465866, 25.559113>,  <31.902287, 32.186996, 25.448359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166798, 32.465866, 25.559113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307238, -0.085018, 0.947828,
		0.684337, -0.711847, 0.157976,
		0.661277, 0.697170, 0.276887,
		32.365181, 32.675018, 25.642179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276268, 31.965919, 25.998856>,  <31.902287, 32.186996, 25.448359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276268, 31.965919, 25.998856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.348557, 32.358604, 26.022799>,  <32.391930, 32.594215, 26.037165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.348557, 32.358604, 26.022799>,  <32.276268, 31.965919, 25.998856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348557, 32.358604, 26.022799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370756, 0.011630, 0.928658,
		0.910978, -0.190017, 0.366077,
		0.180718, 0.981712, 0.059856,
		32.402771, 32.653118, 26.040754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624050, 32.189621, 26.648632>,  <32.276268, 31.965919, 25.998856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624050, 32.189621, 26.648632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.432796, 32.509132, 26.502567>,  <32.318043, 32.700840, 26.414928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.432796, 32.509132, 26.502567>,  <32.624050, 32.189621, 26.648632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432796, 32.509132, 26.502567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568338, 0.035592, 0.822025,
		0.669612, 0.600573, 0.436958,
		-0.478133, 0.798778, -0.365161,
		32.289356, 32.748764, 26.393019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186279, 32.210709, 27.173880>,  <32.624050, 32.189621, 26.648632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186279, 32.210709, 27.173880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213928, 31.850199, 27.344959>,  <33.230518, 31.633892, 27.447607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213928, 31.850199, 27.344959>,  <33.186279, 32.210709, 27.173880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213928, 31.850199, 27.344959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296329, -0.390825, -0.871461,
		0.952582, 0.186973, 0.240061,
		0.069118, -0.901275, 0.427699,
		33.234665, 31.579817, 27.473269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934792, 31.839212, 27.100672>,  <33.186279, 32.210709, 27.173880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934792, 31.839212, 27.100672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655331, 31.564135, 27.179621>,  <33.487656, 31.399088, 27.226990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655331, 31.564135, 27.179621>,  <33.934792, 31.839212, 27.100672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655331, 31.564135, 27.179621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280001, -0.516680, -0.809099,
		0.658394, -0.510015, 0.553536,
		-0.698654, -0.687697, 0.197375,
		33.445736, 31.357826, 27.238832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281319, 31.147207, 27.055801>,  <33.934792, 31.839212, 27.100672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281319, 31.147207, 27.055801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892780, 31.082668, 26.986002>,  <33.659657, 31.043945, 26.944122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892780, 31.082668, 26.986002>,  <34.281319, 31.147207, 27.055801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892780, 31.082668, 26.986002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237338, -0.620290, -0.747603,
		0.012385, -0.767598, 0.640812,
		-0.971348, -0.161348, -0.174498,
		33.601376, 31.034264, 26.933653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177109, 30.426065, 26.997047>,  <34.281319, 31.147207, 27.055801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177109, 30.426065, 26.997047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.877285, 30.606247, 26.803036>,  <33.697392, 30.714355, 26.686628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.877285, 30.606247, 26.803036>,  <34.177109, 30.426065, 26.997047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877285, 30.606247, 26.803036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178733, -0.567796, -0.803531,
		-0.637353, -0.688983, 0.345085,
		-0.749557, 0.450455, -0.485031,
		33.652416, 30.741385, 26.657526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871334, 29.806320, 26.682913>,  <34.177109, 30.426065, 26.997047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871334, 29.806320, 26.682913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.743855, 30.143951, 26.510418>,  <33.667366, 30.346529, 26.406921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.743855, 30.143951, 26.510418>,  <33.871334, 29.806320, 26.682913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743855, 30.143951, 26.510418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203995, -0.383221, -0.900849,
		-0.925645, -0.375068, -0.050056,
		-0.318697, 0.844077, -0.431238,
		33.648247, 30.397175, 26.381046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428539, 29.562510, 26.196417>,  <33.871334, 29.806320, 26.682913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428539, 29.562510, 26.196417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524841, 29.930048, 26.071350>,  <33.582623, 30.150570, 25.996309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524841, 29.930048, 26.071350>,  <33.428539, 29.562510, 26.196417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524841, 29.930048, 26.071350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075790, -0.338958, -0.937744,
		-0.967623, 0.202069, -0.151245,
		0.240755, 0.918845, -0.312668,
		33.597069, 30.205702, 25.977551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045799, 29.757771, 25.554449>,  <33.428539, 29.562510, 26.196417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045799, 29.757771, 25.554449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.371872, 29.989048, 25.540783>,  <33.567516, 30.127815, 25.532583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.371872, 29.989048, 25.540783>,  <33.045799, 29.757771, 25.554449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371872, 29.989048, 25.540783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181519, -0.311043, -0.932900,
		-0.550025, 0.754283, -0.358510,
		0.815183, 0.578195, -0.034164,
		33.616428, 30.162506, 25.530533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053192, 30.015949, 24.805628>,  <33.045799, 29.757771, 25.554449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053192, 30.015949, 24.805628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.419369, 30.105223, 24.939583>,  <33.639076, 30.158787, 25.019955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.419369, 30.105223, 24.939583>,  <33.053192, 30.015949, 24.805628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419369, 30.105223, 24.939583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395373, -0.343477, -0.851883,
		-0.075099, 0.912257, -0.402675,
		0.915446, 0.223182, 0.334887,
		33.694004, 30.172178, 25.040049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423035, 30.311922, 24.279799>,  <33.053192, 30.015949, 24.805628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423035, 30.311922, 24.279799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723038, 30.224264, 24.529427>,  <33.903038, 30.171669, 24.679203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723038, 30.224264, 24.529427>,  <33.423035, 30.311922, 24.279799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723038, 30.224264, 24.529427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560654, -0.289966, -0.775620,
		0.350934, 0.931608, -0.094612,
		0.750009, -0.219147, 0.624069,
		33.948040, 30.158520, 24.716648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996769, 30.809965, 24.025858>,  <33.423035, 30.311922, 24.279799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996769, 30.809965, 24.025858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137203, 30.484186, 24.210646>,  <34.221462, 30.288719, 24.321518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137203, 30.484186, 24.210646>,  <33.996769, 30.809965, 24.025858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137203, 30.484186, 24.210646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509785, -0.247582, -0.823907,
		0.785404, 0.524766, 0.328270,
		0.351085, -0.814447, 0.461969,
		34.242527, 30.239853, 24.349236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741245, 30.805883, 24.098946>,  <33.996769, 30.809965, 24.025858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741245, 30.805883, 24.098946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.615463, 30.426603, 24.116997>,  <34.539993, 30.199036, 24.127827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.615463, 30.426603, 24.116997>,  <34.741245, 30.805883, 24.098946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615463, 30.426603, 24.116997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609364, -0.238077, -0.756303,
		0.727871, -0.210321, 0.652663,
		-0.314451, -0.948201, 0.045128,
		34.521130, 30.142143, 24.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356964, 30.515118, 24.099827>,  <34.741245, 30.805883, 24.098946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356964, 30.515118, 24.099827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.088863, 30.238901, 23.991083>,  <34.928001, 30.073172, 23.925837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.088863, 30.238901, 23.991083>,  <35.356964, 30.515118, 24.099827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088863, 30.238901, 23.991083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625271, -0.328146, -0.708066,
		0.399741, -0.644570, 0.651718,
		-0.670256, -0.690543, -0.271858,
		34.887787, 30.031738, 23.909525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720829, 29.917629, 24.095160>,  <35.356964, 30.515118, 24.099827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720829, 29.917629, 24.095160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399452, 29.830225, 23.873629>,  <35.206627, 29.777782, 23.740709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399452, 29.830225, 23.873629>,  <35.720829, 29.917629, 24.095160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399452, 29.830225, 23.873629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593981, -0.357859, -0.720502,
		-0.040753, -0.907849, 0.417313,
		-0.803446, -0.218513, -0.553829,
		35.158417, 29.764671, 23.707479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918781, 29.316668, 23.781977>,  <35.720829, 29.917629, 24.095160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918781, 29.316668, 23.781977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604214, 29.430475, 23.562672>,  <35.415474, 29.498760, 23.431089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604214, 29.430475, 23.562672>,  <35.918781, 29.316668, 23.781977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604214, 29.430475, 23.562672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542838, -0.105179, -0.833225,
		-0.294736, -0.952883, -0.071734,
		-0.786421, 0.284521, -0.548260,
		35.368286, 29.515831, 23.398193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136276, 28.616232, 24.073240>,  <35.918781, 29.316668, 23.781977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136276, 28.616232, 24.073240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493065, 28.493826, 24.206347>,  <36.707138, 28.420382, 24.286211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493065, 28.493826, 24.206347>,  <36.136276, 28.616232, 24.073240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493065, 28.493826, 24.206347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229853, 0.326854, 0.916697,
		-0.389290, -0.894159, 0.221207,
		0.891975, -0.306016, 0.332766,
		36.760658, 28.402021, 24.306177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064785, 28.248655, 24.743065>,  <36.136276, 28.616232, 24.073240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064785, 28.248655, 24.743065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434711, 28.400780, 24.739527>,  <36.656666, 28.492054, 24.737404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434711, 28.400780, 24.739527>,  <36.064785, 28.248655, 24.743065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434711, 28.400780, 24.739527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117225, 0.307027, 0.944454,
		0.361907, -0.872407, 0.328525,
		0.924814, 0.380316, -0.008847,
		36.712154, 28.514874, 24.736874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216274, 28.202896, 25.500351>,  <36.064785, 28.248655, 24.743065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216274, 28.202896, 25.500351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479919, 28.455397, 25.336842>,  <36.638107, 28.606897, 25.238737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479919, 28.455397, 25.336842>,  <36.216274, 28.202896, 25.500351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479919, 28.455397, 25.336842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148081, 0.423968, 0.893489,
		0.737323, -0.649440, 0.185965,
		0.659111, 0.631252, -0.408771,
		36.677654, 28.644772, 25.214211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874825, 28.139585, 25.918976>,  <36.216274, 28.202896, 25.500351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874825, 28.139585, 25.918976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863762, 28.496374, 25.738476>,  <36.857124, 28.710447, 25.630177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863762, 28.496374, 25.738476>,  <36.874825, 28.139585, 25.918976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863762, 28.496374, 25.738476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117461, 0.451194, 0.884662,
		0.992692, -0.028533, -0.117252,
		-0.027661, 0.891970, -0.451248,
		36.855465, 28.763966, 25.603102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425972, 28.622482, 26.291992>,  <36.874825, 28.139585, 25.918976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425972, 28.622482, 26.291992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177944, 28.870752, 26.100044>,  <37.029129, 29.019714, 25.984875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177944, 28.870752, 26.100044>,  <37.425972, 28.622482, 26.291992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177944, 28.870752, 26.100044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156909, 0.697404, 0.699291,
		0.768697, 0.358312, -0.529828,
		-0.620068, 0.620677, -0.479870,
		36.991924, 29.056955, 25.956083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698288, 29.219524, 26.377468>,  <37.425972, 28.622482, 26.291992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698288, 29.219524, 26.377468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328434, 29.320507, 26.263399>,  <37.106522, 29.381096, 26.194958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328434, 29.320507, 26.263399>,  <37.698288, 29.219524, 26.377468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328434, 29.320507, 26.263399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084135, 0.594862, 0.799413,
		0.371456, 0.763154, -0.528787,
		-0.924631, 0.252457, -0.285173,
		37.051044, 29.396244, 26.177847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699642, 29.992090, 26.718670>,  <37.698288, 29.219524, 26.377468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699642, 29.992090, 26.718670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335430, 29.863045, 26.615240>,  <37.116905, 29.785618, 26.553183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335430, 29.863045, 26.615240>,  <37.699642, 29.992090, 26.718670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335430, 29.863045, 26.615240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371930, 0.365986, 0.853066,
		-0.180578, 0.872911, -0.453231,
		-0.910527, -0.322615, -0.258573,
		37.062271, 29.766260, 26.537668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259037, 30.593031, 26.876190>,  <37.699642, 29.992090, 26.718670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259037, 30.593031, 26.876190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041115, 30.258579, 26.850645>,  <36.910362, 30.057909, 26.835318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041115, 30.258579, 26.850645>,  <37.259037, 30.593031, 26.876190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041115, 30.258579, 26.850645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469352, 0.240933, 0.849506,
		-0.694909, 0.492789, -0.523699,
		-0.544803, -0.836129, -0.063865,
		36.877674, 30.007740, 26.831486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579781, 30.790468, 27.046715>,  <37.259037, 30.593031, 26.876190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579781, 30.790468, 27.046715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637714, 30.402746, 27.126184>,  <36.672474, 30.170113, 27.173866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637714, 30.402746, 27.126184>,  <36.579781, 30.790468, 27.046715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637714, 30.402746, 27.126184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530874, 0.093317, 0.842297,
		-0.834982, -0.227468, -0.501062,
		0.144838, -0.969304, 0.198675,
		36.681168, 30.111956, 27.185787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932880, 30.540630, 27.459108>,  <36.579781, 30.790468, 27.046715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932880, 30.540630, 27.459108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235413, 30.293024, 27.543755>,  <36.416931, 30.144461, 27.594542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235413, 30.293024, 27.543755>,  <35.932880, 30.540630, 27.459108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235413, 30.293024, 27.543755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327300, -0.077982, 0.941697,
		-0.566424, -0.781497, -0.261585,
		0.756332, -0.619017, 0.211614,
		36.462311, 30.107319, 27.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659382, 30.074274, 27.827305>,  <35.932880, 30.540630, 27.459108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659382, 30.074274, 27.827305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045876, 30.031979, 27.921297>,  <36.277771, 30.006601, 27.977694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045876, 30.031979, 27.921297>,  <35.659382, 30.074274, 27.827305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045876, 30.031979, 27.921297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220845, 0.130019, 0.966604,
		-0.132759, -0.985857, 0.102277,
		0.966231, -0.105738, 0.234983,
		36.335747, 30.000257, 27.991793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592510, 29.766748, 28.504206>,  <35.659382, 30.074274, 27.827305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592510, 29.766748, 28.504206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957134, 29.931170, 28.500231>,  <36.175907, 30.029823, 28.497847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957134, 29.931170, 28.500231>,  <35.592510, 29.766748, 28.504206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957134, 29.931170, 28.500231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100234, 0.245585, 0.964179,
		0.398770, -0.877908, 0.265066,
		0.911557, 0.411054, -0.009936,
		36.230602, 30.054485, 28.497250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977623, 29.513525, 29.157124>,  <35.592510, 29.766748, 28.504206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977623, 29.513525, 29.157124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166275, 29.855646, 29.071314>,  <36.279465, 30.060919, 29.019829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166275, 29.855646, 29.071314>,  <35.977623, 29.513525, 29.157124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166275, 29.855646, 29.071314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142676, 0.314092, 0.938610,
		0.870178, -0.412068, 0.270166,
		0.471628, 0.855305, -0.214524,
		36.307762, 30.112238, 29.006956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513401, 29.627649, 29.726667>,  <35.977623, 29.513525, 29.157124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513401, 29.627649, 29.726667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479004, 29.980988, 29.542360>,  <36.458366, 30.192991, 29.431776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479004, 29.980988, 29.542360>,  <36.513401, 29.627649, 29.726667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479004, 29.980988, 29.542360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024966, 0.460425, 0.887348,
		0.995983, 0.087810, -0.017540,
		-0.085994, 0.883345, -0.460768,
		36.453205, 30.245991, 29.404131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.605244, 31.259386, 25.060282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273968, 31.358782, 24.859343>,  <40.075203, 31.418419, 24.738779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273968, 31.358782, 24.859343>,  <40.605244, 31.259386, 25.060282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273968, 31.358782, 24.859343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347212, -0.476112, -0.807937,
		-0.439929, -0.843550, 0.308038,
		-0.828195, 0.248480, -0.502345,
		40.025509, 31.433329, 24.708637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463787, 30.695021, 24.630518>,  <40.605244, 31.259386, 25.060282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463787, 30.695021, 24.630518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.300167, 31.026043, 24.476725>,  <40.201996, 31.224657, 24.384449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.300167, 31.026043, 24.476725>,  <40.463787, 30.695021, 24.630518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300167, 31.026043, 24.476725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237619, -0.310211, -0.920492,
		-0.881030, -0.467889, -0.069751,
		-0.409051, 0.827556, -0.384485,
		40.177452, 31.274309, 24.361380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164803, 30.507490, 23.986805>,  <40.463787, 30.695021, 24.630518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164803, 30.507490, 23.986805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217571, 30.901167, 23.939547>,  <40.249233, 31.137373, 23.911192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217571, 30.901167, 23.939547>,  <40.164803, 30.507490, 23.986805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217571, 30.901167, 23.939547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140524, -0.136552, -0.980615,
		-0.981249, 0.112762, -0.156317,
		0.131921, 0.984194, -0.118146,
		40.257149, 31.196424, 23.904102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699898, 30.713228, 23.436995>,  <40.164803, 30.507490, 23.986805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699898, 30.713228, 23.436995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001083, 30.971882, 23.485842>,  <40.181793, 31.127073, 23.515150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001083, 30.971882, 23.485842>,  <39.699898, 30.713228, 23.436995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001083, 30.971882, 23.485842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130089, 0.035649, -0.990861,
		-0.645078, 0.761967, -0.057278,
		0.752962, 0.646634, 0.122120,
		40.226971, 31.165873, 23.522478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487026, 31.172729, 23.023855>,  <39.699898, 30.713228, 23.436995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487026, 31.172729, 23.023855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.875175, 31.233988, 23.098602>,  <40.108067, 31.270742, 23.143452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.875175, 31.233988, 23.098602>,  <39.487026, 31.172729, 23.023855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875175, 31.233988, 23.098602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187189, 0.012464, -0.982245,
		-0.152755, 0.988125, -0.016573,
		0.970374, 0.153145, 0.186870,
		40.166286, 31.279932, 23.154663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719734, 31.695450, 22.492016>,  <39.487026, 31.172729, 23.023855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719734, 31.695450, 22.492016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052727, 31.512407, 22.616962>,  <40.252522, 31.402582, 22.691931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052727, 31.512407, 22.616962>,  <39.719734, 31.695450, 22.492016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052727, 31.512407, 22.616962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375762, 0.052002, -0.925256,
		0.407162, 0.887632, 0.215242,
		0.832480, -0.457609, 0.312365,
		40.302471, 31.375124, 22.710672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255062, 32.004360, 22.097586>,  <39.719734, 31.695450, 22.492016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255062, 32.004360, 22.097586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386650, 31.651237, 22.231707>,  <40.465603, 31.439363, 22.312180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386650, 31.651237, 22.231707>,  <40.255062, 32.004360, 22.097586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386650, 31.651237, 22.231707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516616, -0.128978, -0.846447,
		0.790497, 0.451679, 0.413642,
		0.328972, -0.882808, 0.335301,
		40.485340, 31.386395, 22.332296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982967, 32.016289, 21.874811>,  <40.255062, 32.004360, 22.097586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982967, 32.016289, 21.874811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895653, 31.638659, 21.973658>,  <40.843266, 31.412079, 22.032965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895653, 31.638659, 21.973658>,  <40.982967, 32.016289, 21.874811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895653, 31.638659, 21.973658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335749, -0.310414, -0.889334,
		0.916311, -0.111157, 0.384732,
		-0.218282, -0.944080, 0.247115,
		40.830170, 31.355434, 22.047792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546642, 31.616451, 21.553446>,  <40.982967, 32.016289, 21.874811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546642, 31.616451, 21.553446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.255783, 31.350883, 21.623264>,  <41.081268, 31.191544, 21.665155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.255783, 31.350883, 21.623264>,  <41.546642, 31.616451, 21.553446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255783, 31.350883, 21.623264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194725, -0.443302, -0.874966,
		0.658283, -0.602242, 0.451628,
		-0.727149, -0.663918, 0.174547,
		41.037640, 31.151709, 21.675629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905369, 30.994753, 21.385599>,  <41.546642, 31.616451, 21.553446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905369, 30.994753, 21.385599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.511124, 30.929075, 21.369526>,  <41.274578, 30.889669, 21.359882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.511124, 30.929075, 21.369526>,  <41.905369, 30.994753, 21.385599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511124, 30.929075, 21.369526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128478, -0.573163, -0.809307,
		0.109851, -0.802823, 0.586010,
		-0.985609, -0.164192, -0.040182,
		41.215439, 30.879818, 21.357471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873203, 30.249060, 21.317596>,  <41.905369, 30.994753, 21.385599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873203, 30.249060, 21.317596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.517105, 30.358164, 21.171688>,  <41.303444, 30.423626, 21.084143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.517105, 30.358164, 21.171688>,  <41.873203, 30.249060, 21.317596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517105, 30.358164, 21.171688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155627, -0.570501, -0.806418,
		-0.428058, -0.774682, 0.465440,
		-0.890251, 0.272759, -0.364769,
		41.250031, 30.439991, 21.062258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508102, 29.659554, 21.185131>,  <41.873203, 30.249060, 21.317596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508102, 29.659554, 21.185131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332382, 29.950281, 20.973944>,  <41.226952, 30.124718, 20.847231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332382, 29.950281, 20.973944>,  <41.508102, 29.659554, 21.185131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332382, 29.950281, 20.973944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014789, -0.581782, -0.813210,
		-0.898220, -0.365050, 0.244827,
		-0.439299, 0.726821, -0.527967,
		41.200592, 30.168327, 20.815554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323345, 29.395580, 20.528622>,  <41.508102, 29.659554, 21.185131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323345, 29.395580, 20.528622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.205048, 29.768261, 20.444275>,  <41.134068, 29.991869, 20.393667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.205048, 29.768261, 20.444275>,  <41.323345, 29.395580, 20.528622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205048, 29.768261, 20.444275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223028, -0.281987, -0.933136,
		-0.928867, -0.228940, 0.291192,
		-0.295744, 0.931703, -0.210868,
		41.116325, 30.047771, 20.381014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232464, 28.717831, 19.953604>,  <41.323345, 29.395580, 20.528622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232464, 28.717831, 19.953604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146358, 29.102474, 20.021685>,  <41.094696, 29.333261, 20.062532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146358, 29.102474, 20.021685>,  <41.232464, 28.717831, 19.953604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146358, 29.102474, 20.021685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822503, -0.272484, 0.499242,
		0.526453, -0.032525, 0.849582,
		-0.215259, 0.961611, 0.170201,
		41.081779, 29.390957, 20.072744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835361, 28.168793, 20.226431>,  <41.232464, 28.717831, 19.953604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835361, 28.168793, 20.226431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.553036, 27.936579, 20.064047>,  <40.383640, 27.797251, 19.966616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.553036, 27.936579, 20.064047>,  <40.835361, 28.168793, 20.226431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553036, 27.936579, 20.064047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611604, 0.210229, 0.762721,
		-0.357443, 0.786627, -0.503441,
		-0.705815, -0.580536, -0.405959,
		40.341290, 27.762419, 19.942259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252525, 28.573174, 20.086760>,  <40.835361, 28.168793, 20.226431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252525, 28.573174, 20.086760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122437, 28.195438, 20.106596>,  <40.044384, 27.968798, 20.118498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122437, 28.195438, 20.106596>,  <40.252525, 28.573174, 20.086760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122437, 28.195438, 20.106596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813138, 0.306042, 0.495121,
		-0.482737, 0.120700, -0.867408,
		-0.325224, -0.944336, 0.049592,
		40.024868, 27.912138, 20.121473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512436, 28.713572, 20.120876>,  <40.252525, 28.573174, 20.086760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512436, 28.713572, 20.120876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.554276, 28.329329, 20.223864>,  <39.579380, 28.098782, 20.285656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.554276, 28.329329, 20.223864>,  <39.512436, 28.713572, 20.120876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554276, 28.329329, 20.223864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694477, 0.114762, 0.710304,
		-0.711871, -0.253102, -0.655117,
		0.104597, -0.960609, 0.257469,
		39.585655, 28.041145, 20.301104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805473, 28.407574, 20.040653>,  <39.512436, 28.713572, 20.120876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805473, 28.407574, 20.040653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009598, 28.167604, 20.287127>,  <39.132072, 28.023623, 20.435011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009598, 28.167604, 20.287127>,  <38.805473, 28.407574, 20.040653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009598, 28.167604, 20.287127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709445, 0.111307, 0.695916,
		-0.486080, -0.792278, -0.368811,
		0.510308, -0.599922, 0.616181,
		39.162689, 27.987627, 20.471981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318012, 27.878365, 20.345062>,  <38.805473, 28.407574, 20.040653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318012, 27.878365, 20.345062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.620617, 27.810085, 20.597586>,  <38.802181, 27.769117, 20.749100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.620617, 27.810085, 20.597586>,  <38.318012, 27.878365, 20.345062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620617, 27.810085, 20.597586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653045, -0.145671, 0.743178,
		-0.034894, -0.974496, -0.221673,
		0.756515, -0.170695, 0.631307,
		38.847572, 27.758877, 20.786978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092236, 27.331244, 20.788137>,  <38.318012, 27.878365, 20.345062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092236, 27.331244, 20.788137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394295, 27.494699, 20.993181>,  <38.575531, 27.592773, 21.116207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394295, 27.494699, 20.993181>,  <38.092236, 27.331244, 20.788137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394295, 27.494699, 20.993181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498629, -0.149595, 0.853809,
		0.425584, -0.900353, 0.090794,
		0.755147, 0.408640, 0.512607,
		38.620838, 27.617292, 21.146963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343430, 26.874399, 21.363987>,  <38.092236, 27.331244, 20.788137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343430, 26.874399, 21.363987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.406036, 27.262604, 21.437315>,  <38.443600, 27.495527, 21.481312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.406036, 27.262604, 21.437315>,  <38.343430, 26.874399, 21.363987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406036, 27.262604, 21.437315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468523, -0.090441, 0.878810,
		0.869477, -0.223436, 0.440553,
		0.156514, 0.970514, 0.183321,
		38.452991, 27.553759, 21.492311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646496, 26.756508, 22.097452>,  <38.343430, 26.874399, 21.363987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646496, 26.756508, 22.097452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.558746, 27.143854, 22.049883>,  <38.506096, 27.376263, 22.021341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.558746, 27.143854, 22.049883>,  <38.646496, 26.756508, 22.097452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558746, 27.143854, 22.049883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343666, 0.037386, 0.938348,
		0.913110, 0.246716, 0.324593,
		-0.219370, 0.968367, -0.118926,
		38.492935, 27.434364, 22.014206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678703, 27.069891, 22.747309>,  <38.646496, 26.756508, 22.097452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678703, 27.069891, 22.747309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464428, 27.353338, 22.563616>,  <38.335861, 27.523407, 22.453400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464428, 27.353338, 22.563616>,  <38.678703, 27.069891, 22.747309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464428, 27.353338, 22.563616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456234, 0.214745, 0.863559,
		0.710552, 0.672119, 0.208259,
		-0.535692, 0.708618, -0.459232,
		38.303719, 27.565924, 22.425846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771053, 27.800894, 23.101290>,  <38.678703, 27.069891, 22.747309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771053, 27.800894, 23.101290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.429337, 27.790949, 22.893608>,  <38.224308, 27.784983, 22.768999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.429337, 27.790949, 22.893608>,  <38.771053, 27.800894, 23.101290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429337, 27.790949, 22.893608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509510, 0.237785, 0.826957,
		0.102900, 0.970999, -0.215805,
		-0.854290, -0.024861, -0.519202,
		38.173050, 27.783491, 22.737848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439720, 28.429348, 23.302277>,  <38.771053, 27.800894, 23.101290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439720, 28.429348, 23.302277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145454, 28.196184, 23.164280>,  <37.968895, 28.056286, 23.081482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145454, 28.196184, 23.164280>,  <38.439720, 28.429348, 23.302277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145454, 28.196184, 23.164280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590693, 0.302843, 0.747910,
		-0.331484, 0.753993, -0.567109,
		-0.735663, -0.582908, -0.344990,
		37.924755, 28.021313, 23.060783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884468, 28.896358, 23.240643>,  <38.439720, 28.429348, 23.302277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884468, 28.896358, 23.240643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697254, 28.542875, 23.241468>,  <37.584927, 28.330786, 23.241964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697254, 28.542875, 23.241468>,  <37.884468, 28.896358, 23.240643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697254, 28.542875, 23.241468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564066, 0.300541, 0.769094,
		-0.680275, 0.358797, -0.639133,
		-0.468034, -0.883708, 0.002065,
		37.556843, 28.277763, 23.242088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133457, 29.024858, 23.252968>,  <37.884468, 28.896358, 23.240643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133457, 29.024858, 23.252968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182945, 28.652969, 23.391710>,  <37.212639, 28.429836, 23.474955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182945, 28.652969, 23.391710>,  <37.133457, 29.024858, 23.252968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182945, 28.652969, 23.391710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568905, 0.219933, 0.792450,
		-0.813043, -0.295373, -0.501713,
		0.123725, -0.929723, 0.346854,
		37.220062, 28.374052, 23.495766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567474, 28.907804, 23.523611>,  <37.133457, 29.024858, 23.252968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567474, 28.907804, 23.523611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763916, 28.618031, 23.717108>,  <36.881783, 28.444166, 23.833206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763916, 28.618031, 23.717108>,  <36.567474, 28.907804, 23.523611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763916, 28.618031, 23.717108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393300, 0.311099, 0.865178,
		-0.777259, -0.615149, -0.132139,
		0.491105, -0.724437, 0.483742,
		36.911247, 28.400700, 23.862230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860382, 28.821480, 23.236446>,  <36.567474, 28.907804, 23.523611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860382, 28.821480, 23.236446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646622, 29.126236, 23.090054>,  <35.518368, 29.309090, 23.002218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646622, 29.126236, 23.090054>,  <35.860382, 28.821480, 23.236446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646622, 29.126236, 23.090054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531410, -0.033859, -0.846438,
		-0.657283, -0.646823, -0.386781,
		-0.534399, 0.761888, -0.365983,
		35.486301, 29.354803, 22.980259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678112, 28.598299, 22.615396>,  <35.860382, 28.821480, 23.236446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678112, 28.598299, 22.615396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630463, 28.995449, 22.616713>,  <35.601871, 29.233738, 22.617502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630463, 28.995449, 22.616713>,  <35.678112, 28.598299, 22.615396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630463, 28.995449, 22.616713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504370, 0.063370, -0.861159,
		-0.855231, -0.100927, -0.508325,
		-0.119126, 0.992874, 0.003291,
		35.594727, 29.293312, 22.617701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407726, 28.749380, 21.992050>,  <35.678112, 28.598299, 22.615396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407726, 28.749380, 21.992050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567623, 29.093227, 22.119335>,  <35.663563, 29.299536, 22.195705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567623, 29.093227, 22.119335>,  <35.407726, 28.749380, 21.992050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567623, 29.093227, 22.119335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519328, 0.073667, -0.851394,
		-0.755316, 0.505598, -0.416975,
		0.399746, 0.859618, 0.318213,
		35.687546, 29.351112, 22.214800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270145, 29.259485, 21.556705>,  <35.407726, 28.749380, 21.992050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270145, 29.259485, 21.556705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.583534, 29.429272, 21.738256>,  <35.771568, 29.531143, 21.847187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.583534, 29.429272, 21.738256>,  <35.270145, 29.259485, 21.556705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583534, 29.429272, 21.738256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450633, 0.114862, -0.885289,
		-0.427910, 0.898128, -0.101289,
		0.783469, 0.424468, 0.453876,
		35.818573, 29.556612, 21.874420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449928, 29.813133, 21.117620>,  <35.270145, 29.259485, 21.556705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449928, 29.813133, 21.117620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.777340, 29.743227, 21.336514>,  <35.973789, 29.701283, 21.467850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.777340, 29.743227, 21.336514>,  <35.449928, 29.813133, 21.117620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777340, 29.743227, 21.336514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574273, 0.273336, -0.771686,
		-0.014714, 0.945909, 0.324097,
		0.818532, -0.174765, 0.547232,
		36.022900, 29.690798, 21.500683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868286, 30.342644, 20.903986>,  <35.449928, 29.813133, 21.117620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868286, 30.342644, 20.903986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.122089, 30.084408, 21.073980>,  <36.274372, 29.929466, 21.175978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.122089, 30.084408, 21.073980>,  <35.868286, 30.342644, 20.903986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122089, 30.084408, 21.073980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653334, 0.154190, -0.741202,
		0.412984, 0.747956, 0.519621,
		0.634507, -0.645591, 0.424987,
		36.312443, 29.890730, 21.201477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509731, 30.562628, 20.646921>,  <35.868286, 30.342644, 20.903986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509731, 30.562628, 20.646921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580231, 30.188522, 20.769701>,  <36.622532, 29.964060, 20.843369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580231, 30.188522, 20.769701>,  <36.509731, 30.562628, 20.646921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580231, 30.188522, 20.769701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670533, -0.114216, -0.733035,
		0.720639, 0.335017, 0.606994,
		0.176251, -0.935264, 0.306948,
		36.633106, 29.907944, 20.861786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821320, 31.260500, 20.760693>,  <36.509731, 30.562628, 20.646921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821320, 31.260500, 20.760693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.670460, 31.520544, 20.496841>,  <36.579945, 31.676571, 20.338530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.670460, 31.520544, 20.496841>,  <36.821320, 31.260500, 20.760693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670460, 31.520544, 20.496841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702362, 0.263478, 0.661262,
		0.603692, 0.712695, 0.357241,
		-0.377153, 0.650111, -0.659630,
		36.557316, 31.715578, 20.298952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842838, 32.040596, 21.044741>,  <36.821320, 31.260500, 20.760693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842838, 32.040596, 21.044741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571198, 31.970963, 20.759499>,  <36.408215, 31.929182, 20.588354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571198, 31.970963, 20.759499>,  <36.842838, 32.040596, 21.044741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571198, 31.970963, 20.759499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724101, 0.318248, 0.611879,
		0.120423, 0.931886, -0.342179,
		-0.679099, -0.174088, -0.713104,
		36.367466, 31.918736, 20.545567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306149, 32.442055, 21.167309>,  <36.842838, 32.040596, 21.044741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306149, 32.442055, 21.167309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108612, 32.222324, 20.897682>,  <35.990089, 32.090485, 20.735907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108612, 32.222324, 20.897682>,  <36.306149, 32.442055, 21.167309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108612, 32.222324, 20.897682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855840, 0.169927, 0.488532,
		-0.153821, 0.818148, -0.554051,
		-0.493839, -0.549325, -0.674066,
		35.960461, 32.057526, 20.695463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768013, 32.847416, 21.071632>,  <36.306149, 32.442055, 21.167309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768013, 32.847416, 21.071632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.661861, 32.488083, 20.931593>,  <35.598171, 32.272484, 20.847570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.661861, 32.488083, 20.931593>,  <35.768013, 32.847416, 21.071632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661861, 32.488083, 20.931593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896147, 0.095876, 0.433276,
		-0.355661, 0.428721, -0.830484,
		-0.265378, -0.898335, -0.350098,
		35.582249, 32.218582, 20.826563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075680, 32.946724, 20.989901>,  <35.768013, 32.847416, 21.071632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075680, 32.946724, 20.989901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120083, 32.549202, 20.987677>,  <35.146725, 32.310688, 20.986341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120083, 32.549202, 20.987677>,  <35.075680, 32.946724, 20.989901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120083, 32.549202, 20.987677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766873, -0.089217, 0.635568,
		-0.632126, -0.066288, -0.772025,
		0.111008, -0.993804, -0.005562,
		35.153385, 32.251060, 20.986008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377766, 32.700714, 20.904490>,  <35.075680, 32.946724, 20.989901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377766, 32.700714, 20.904490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591354, 32.399124, 21.057543>,  <34.719505, 32.218170, 21.149374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591354, 32.399124, 21.057543>,  <34.377766, 32.700714, 20.904490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591354, 32.399124, 21.057543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617092, -0.038160, 0.785965,
		-0.577993, -0.655799, -0.485646,
		0.533967, -0.753971, 0.382632,
		34.751545, 32.172932, 21.172333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854767, 32.255554, 21.172356>,  <34.377766, 32.700714, 20.904490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854767, 32.255554, 21.172356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175385, 32.113632, 21.364870>,  <34.367756, 32.028481, 21.480379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175385, 32.113632, 21.364870>,  <33.854767, 32.255554, 21.172356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175385, 32.113632, 21.364870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545010, -0.102456, 0.832146,
		-0.245942, -0.929308, -0.275498,
		0.801547, -0.354809, 0.481283,
		34.415848, 32.007191, 21.509254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.162674, 32.587013, 19.084808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386532, 32.383026, 19.346107>,  <40.520847, 32.260632, 19.502886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386532, 32.383026, 19.346107>,  <40.162674, 32.587013, 19.084808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386532, 32.383026, 19.346107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233382, 0.659361, 0.714686,
		-0.795195, -0.552423, 0.249987,
		0.559641, -0.509972, 0.653246,
		40.554424, 32.230034, 19.542082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831978, 32.669285, 19.716661>,  <40.162674, 32.587013, 19.084808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831978, 32.669285, 19.716661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.170231, 32.510273, 19.859144>,  <40.373180, 32.414867, 19.944633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.170231, 32.510273, 19.859144>,  <39.831978, 32.669285, 19.716661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170231, 32.510273, 19.859144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127966, 0.496893, 0.858325,
		-0.518207, -0.771406, 0.369316,
		0.845628, -0.397530, 0.356207,
		40.423920, 32.391014, 19.966007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647446, 32.215591, 20.192175>,  <39.831978, 32.669285, 19.716661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647446, 32.215591, 20.192175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013729, 32.359791, 20.263199>,  <40.233498, 32.446312, 20.305813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013729, 32.359791, 20.263199>,  <39.647446, 32.215591, 20.192175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013729, 32.359791, 20.263199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332338, 0.430966, 0.838940,
		0.225912, -0.827231, 0.514444,
		0.915705, 0.360495, 0.177560,
		40.288441, 32.467941, 20.316467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472141, 32.481106, 20.895977>,  <39.647446, 32.215591, 20.192175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472141, 32.481106, 20.895977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.852009, 32.595940, 20.845846>,  <40.079929, 32.664841, 20.815767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.852009, 32.595940, 20.845846>,  <39.472141, 32.481106, 20.895977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852009, 32.595940, 20.845846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052425, 0.540114, 0.839957,
		0.308827, -0.791114, 0.527982,
		0.949672, 0.287081, -0.125328,
		40.136909, 32.682064, 20.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731842, 32.428020, 21.540550>,  <39.472141, 32.481106, 20.895977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731842, 32.428020, 21.540550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937485, 32.685917, 21.314274>,  <40.060871, 32.840652, 21.178507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937485, 32.685917, 21.314274>,  <39.731842, 32.428020, 21.540550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937485, 32.685917, 21.314274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005245, 0.661875, 0.749596,
		0.857711, -0.382404, 0.343655,
		0.514105, 0.644739, -0.565692,
		40.091717, 32.879337, 21.144566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255238, 32.727226, 22.004183>,  <39.731842, 32.428020, 21.540550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255238, 32.727226, 22.004183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.218498, 32.990540, 21.705326>,  <40.196453, 33.148529, 21.526012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.218498, 32.990540, 21.705326>,  <40.255238, 32.727226, 22.004183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218498, 32.990540, 21.705326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171550, 0.728636, 0.663068,
		0.980884, 0.189077, 0.046002,
		-0.091852, 0.658285, -0.747144,
		40.190941, 33.188026, 21.481182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575630, 33.243069, 22.282959>,  <40.255238, 32.727226, 22.004183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575630, 33.243069, 22.282959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361656, 33.397636, 21.982422>,  <40.233273, 33.490379, 21.802099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361656, 33.397636, 21.982422>,  <40.575630, 33.243069, 22.282959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361656, 33.397636, 21.982422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221238, 0.794186, 0.565971,
		0.815411, 0.468985, -0.339349,
		-0.534938, 0.386422, -0.751345,
		40.201176, 33.513561, 21.757019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871738, 33.983372, 22.127567>,  <40.575630, 33.243069, 22.282959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871738, 33.983372, 22.127567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483128, 33.933601, 22.046911>,  <40.249962, 33.903740, 21.998518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483128, 33.933601, 22.046911>,  <40.871738, 33.983372, 22.127567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483128, 33.933601, 22.046911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225329, 0.748334, 0.623878,
		0.073268, 0.651548, -0.755061,
		-0.971524, -0.124427, -0.201642,
		40.191669, 33.896275, 21.986418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618488, 34.614780, 21.854063>,  <40.871738, 33.983372, 22.127567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618488, 34.614780, 21.854063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299477, 34.421432, 21.998451>,  <40.108070, 34.305424, 22.085085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299477, 34.421432, 21.998451>,  <40.618488, 34.614780, 21.854063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299477, 34.421432, 21.998451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293480, 0.833637, 0.467887,
		-0.527079, 0.267217, -0.806711,
		-0.797531, -0.483367, 0.360970,
		40.060219, 34.276421, 22.106743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081268, 35.156689, 21.821993>,  <40.618488, 34.614780, 21.854063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081268, 35.156689, 21.821993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917126, 34.873276, 22.051634>,  <39.818638, 34.703228, 22.189419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917126, 34.873276, 22.051634>,  <40.081268, 35.156689, 21.821993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917126, 34.873276, 22.051634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606512, 0.682176, 0.408385,
		-0.680991, -0.180615, -0.709669,
		-0.410359, -0.708529, 0.574101,
		39.794018, 34.660717, 22.223864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369366, 35.183659, 21.811552>,  <40.081268, 35.156689, 21.821993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369366, 35.183659, 21.811552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.431660, 35.004120, 22.163525>,  <39.469036, 34.896397, 22.374708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.431660, 35.004120, 22.163525>,  <39.369366, 35.183659, 21.811552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431660, 35.004120, 22.163525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602346, 0.662868, 0.444730,
		-0.782895, -0.599286, -0.167128,
		0.155737, -0.448846, 0.879934,
		39.478382, 34.869465, 22.427505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683098, 35.299900, 22.304304>,  <39.369366, 35.183659, 21.811552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683098, 35.299900, 22.304304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007595, 35.226768, 22.526463>,  <39.202293, 35.182888, 22.659758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007595, 35.226768, 22.526463>,  <38.683098, 35.299900, 22.304304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007595, 35.226768, 22.526463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284552, 0.706346, 0.648156,
		-0.510804, -0.683848, 0.520990,
		0.811239, -0.182832, 0.555394,
		39.250965, 35.171917, 22.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073734, 35.056168, 22.199333>,  <38.683098, 35.299900, 22.304304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073734, 35.056168, 22.199333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845577, 35.338463, 22.031246>,  <37.708683, 35.507839, 21.930395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845577, 35.338463, 22.031246>,  <38.073734, 35.056168, 22.199333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845577, 35.338463, 22.031246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101585, -0.447061, -0.888717,
		-0.815066, -0.549605, 0.183308,
		-0.570393, 0.705741, -0.420216,
		37.674458, 35.550186, 21.905182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858974, 34.701397, 21.740883>,  <38.073734, 35.056168, 22.199333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858974, 34.701397, 21.740883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757427, 35.067520, 21.615820>,  <37.696499, 35.287193, 21.540783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757427, 35.067520, 21.615820>,  <37.858974, 34.701397, 21.740883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757427, 35.067520, 21.615820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149159, -0.282330, -0.947650,
		-0.955668, -0.287215, -0.064852,
		-0.253870, 0.915312, -0.312655,
		37.681267, 35.342113, 21.522024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546856, 34.533604, 21.157682>,  <37.858974, 34.701397, 21.740883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546856, 34.533604, 21.157682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612110, 34.926964, 21.125887>,  <37.651260, 35.162979, 21.106810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612110, 34.926964, 21.125887>,  <37.546856, 34.533604, 21.157682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612110, 34.926964, 21.125887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083390, -0.094021, -0.992072,
		-0.983074, 0.155211, -0.097343,
		0.163133, 0.983397, -0.079487,
		37.661049, 35.221981, 21.102041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046616, 34.704395, 20.639341>,  <37.546856, 34.533604, 21.157682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046616, 34.704395, 20.639341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.342133, 34.971870, 20.672903>,  <37.519444, 35.132355, 20.693041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.342133, 34.971870, 20.672903>,  <37.046616, 34.704395, 20.639341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342133, 34.971870, 20.672903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236119, -0.140219, -0.961554,
		-0.631217, 0.730199, -0.261483,
		0.738791, 0.668691, 0.083905,
		37.563770, 35.172478, 20.698074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979145, 35.114567, 20.060028>,  <37.046616, 34.704395, 20.639341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979145, 35.114567, 20.060028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363464, 35.112621, 20.170910>,  <37.594055, 35.111454, 20.237438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363464, 35.112621, 20.170910>,  <36.979145, 35.114567, 20.060028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363464, 35.112621, 20.170910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276820, -0.038662, -0.960144,
		0.015389, 0.999241, -0.035799,
		0.960799, -0.004865, 0.277204,
		37.651703, 35.111160, 20.254070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323898, 35.642441, 19.607721>,  <36.979145, 35.114567, 20.060028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323898, 35.642441, 19.607721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634418, 35.441326, 19.759806>,  <37.820732, 35.320656, 19.851055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634418, 35.441326, 19.759806>,  <37.323898, 35.642441, 19.607721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634418, 35.441326, 19.759806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444284, 0.008531, -0.895845,
		0.447175, 0.864368, 0.230003,
		0.776303, -0.502786, 0.380210,
		37.867310, 35.290489, 19.873869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918720, 35.916851, 19.229630>,  <37.323898, 35.642441, 19.607721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918720, 35.916851, 19.229630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.076862, 35.603958, 19.422218>,  <38.171745, 35.416222, 19.537771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.076862, 35.603958, 19.422218>,  <37.918720, 35.916851, 19.229630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076862, 35.603958, 19.422218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649023, -0.133020, -0.749049,
		0.649973, 0.608625, 0.455094,
		0.395353, -0.782228, 0.481471,
		38.195469, 35.369289, 19.566660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686256, 35.887459, 19.056107>,  <37.918720, 35.916851, 19.229630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686256, 35.887459, 19.056107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587402, 35.517933, 19.173063>,  <38.528091, 35.296219, 19.243238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587402, 35.517933, 19.173063>,  <38.686256, 35.887459, 19.056107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587402, 35.517933, 19.173063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579275, -0.382749, -0.719683,
		0.776766, -0.008481, 0.629732,
		-0.247133, -0.923814, 0.292393,
		38.513264, 35.240788, 19.260780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261501, 35.550354, 18.902355>,  <38.686256, 35.887459, 19.056107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261501, 35.550354, 18.902355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996029, 35.253235, 18.937660>,  <38.836746, 35.074963, 18.958843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996029, 35.253235, 18.937660>,  <39.261501, 35.550354, 18.902355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996029, 35.253235, 18.937660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469044, -0.505166, -0.724434,
		0.582693, -0.439391, 0.683670,
		-0.663677, -0.742794, 0.088263,
		38.796925, 35.030396, 18.964140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642807, 34.892658, 18.985119>,  <39.261501, 35.550354, 18.902355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642807, 34.892658, 18.985119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278831, 34.816448, 18.837765>,  <39.060444, 34.770721, 18.749352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278831, 34.816448, 18.837765>,  <39.642807, 34.892658, 18.985119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278831, 34.816448, 18.837765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409590, -0.552353, -0.726045,
		-0.065150, -0.811545, 0.580646,
		-0.909941, -0.190525, -0.368387,
		39.005848, 34.759293, 18.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560368, 34.089371, 18.976791>,  <39.642807, 34.892658, 18.985119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560368, 34.089371, 18.976791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.311874, 34.265343, 18.717398>,  <39.162777, 34.370926, 18.561762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.311874, 34.265343, 18.717398>,  <39.560368, 34.089371, 18.976791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311874, 34.265343, 18.717398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343443, -0.590980, -0.729924,
		-0.704356, -0.676171, 0.216046,
		-0.621232, 0.439927, -0.648486,
		39.125504, 34.397320, 18.522852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358562, 33.575222, 18.453688>,  <39.560368, 34.089371, 18.976791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358562, 33.575222, 18.453688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.193516, 33.881386, 18.256145>,  <39.094486, 34.065086, 18.137621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.193516, 33.881386, 18.256145>,  <39.358562, 33.575222, 18.453688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193516, 33.881386, 18.256145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286779, -0.405434, -0.867975,
		-0.864584, -0.499768, -0.052215,
		-0.412616, 0.765412, -0.493855,
		39.069733, 34.111008, 18.107988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944012, 33.279522, 17.912329>,  <39.358562, 33.575222, 18.453688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944012, 33.279522, 17.912329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011173, 33.658684, 17.804047>,  <39.051472, 33.886181, 17.739077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.011173, 33.658684, 17.804047>,  <38.944012, 33.279522, 17.912329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011173, 33.658684, 17.804047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171083, -0.298458, -0.938964,
		-0.970844, 0.111344, -0.212283,
		0.167906, 0.947906, -0.270707,
		39.061546, 33.943054, 17.722834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145813, 32.636829, 18.243721>,  <38.944012, 33.279522, 17.912329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145813, 32.636829, 18.243721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.951881, 32.305195, 18.132318>,  <38.835522, 32.106216, 18.065477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.951881, 32.305195, 18.132318>,  <39.145813, 32.636829, 18.243721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951881, 32.305195, 18.132318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558664, 0.048563, 0.827971,
		-0.672931, 0.557015, -0.486723,
		-0.484829, -0.829082, -0.278505,
		38.806435, 32.056469, 18.048767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534412, 32.781174, 18.485857>,  <39.145813, 32.636829, 18.243721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534412, 32.781174, 18.485857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485374, 32.400616, 18.372850>,  <38.455952, 32.172279, 18.305046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485374, 32.400616, 18.372850>,  <38.534412, 32.781174, 18.485857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485374, 32.400616, 18.372850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687424, -0.123917, 0.715607,
		-0.715834, 0.281938, -0.638821,
		-0.122596, -0.951397, -0.282514,
		38.448597, 32.115196, 18.288095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866230, 32.734142, 18.386627>,  <38.534412, 32.781174, 18.485857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866230, 32.734142, 18.386627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985912, 32.355377, 18.433666>,  <38.057724, 32.128117, 18.461889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985912, 32.355377, 18.433666>,  <37.866230, 32.734142, 18.386627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985912, 32.355377, 18.433666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678140, -0.124325, 0.724341,
		-0.671267, -0.296477, -0.679339,
		0.299209, -0.946913, 0.117598,
		38.075676, 32.071304, 18.468946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368008, 32.314728, 18.093407>,  <37.866230, 32.734142, 18.386627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368008, 32.314728, 18.093407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565868, 32.074604, 18.344788>,  <37.684586, 31.930531, 18.495617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565868, 32.074604, 18.344788>,  <37.368008, 32.314728, 18.093407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565868, 32.074604, 18.344788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819463, -0.081305, 0.567335,
		-0.289478, -0.795628, -0.532146,
		0.494654, -0.600305, 0.628452,
		37.714264, 31.894512, 18.533323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938240, 31.682785, 18.216339>,  <37.368008, 32.314728, 18.093407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938240, 31.682785, 18.216339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195850, 31.714439, 18.520699>,  <37.350418, 31.733433, 18.703314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195850, 31.714439, 18.520699>,  <36.938240, 31.682785, 18.216339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195850, 31.714439, 18.520699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752706, -0.112063, 0.648749,
		0.136609, -0.990545, -0.012604,
		0.644027, 0.079138, 0.760898,
		37.389057, 31.738180, 18.748968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621872, 31.303831, 18.615847>,  <36.938240, 31.682785, 18.216339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621872, 31.303831, 18.615847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.894264, 31.450047, 18.869663>,  <37.057701, 31.537775, 19.021954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.894264, 31.450047, 18.869663>,  <36.621872, 31.303831, 18.615847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894264, 31.450047, 18.869663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683514, 0.006301, 0.729910,
		0.262811, -0.930775, 0.254141,
		0.680983, 0.365537, 0.634542,
		37.098560, 31.559708, 19.060026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710678, 30.800714, 19.136950>,  <36.621872, 31.303831, 18.615847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710678, 30.800714, 19.136950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.797039, 31.168049, 19.269644>,  <36.848854, 31.388449, 19.349260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.797039, 31.168049, 19.269644>,  <36.710678, 30.800714, 19.136950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797039, 31.168049, 19.269644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565032, -0.159576, 0.809490,
		0.796320, -0.362209, 0.484437,
		0.215900, 0.918335, 0.331734,
		36.861809, 31.443550, 19.369164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714954, 30.764797, 19.928333>,  <36.710678, 30.800714, 19.136950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714954, 30.764797, 19.928333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.690704, 31.157795, 19.857870>,  <36.676155, 31.393593, 19.815592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.690704, 31.157795, 19.857870>,  <36.714954, 30.764797, 19.928333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690704, 31.157795, 19.857870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750983, 0.071363, 0.656454,
		0.657532, 0.172088, 0.733510,
		-0.060622, 0.982493, -0.176159,
		36.672516, 31.452543, 19.805023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174618, 30.589216, 20.368406>,  <36.714954, 30.764797, 19.928333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174618, 30.589216, 20.368406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.072685, 30.207529, 20.431053>,  <37.011524, 29.978518, 20.468641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.072685, 30.207529, 20.431053>,  <37.174618, 30.589216, 20.368406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072685, 30.207529, 20.431053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687799, -0.292711, -0.664269,
		0.679700, -0.061559, 0.730902,
		-0.254835, -0.954217, 0.156616,
		36.996235, 29.921265, 20.478037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915634, 30.200291, 20.451885>,  <37.174618, 30.589216, 20.368406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915634, 30.200291, 20.451885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.648045, 29.922226, 20.346642>,  <37.487492, 29.755386, 20.283495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.648045, 29.922226, 20.346642>,  <37.915634, 30.200291, 20.451885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648045, 29.922226, 20.346642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633492, -0.348073, -0.691038,
		0.388803, -0.628962, 0.673231,
		-0.668970, -0.695164, -0.263110,
		37.447353, 29.713676, 20.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329403, 29.680241, 20.230055>,  <37.915634, 30.200291, 20.451885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329403, 29.680241, 20.230055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970299, 29.582579, 20.083406>,  <37.754837, 29.523981, 19.995419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970299, 29.582579, 20.083406>,  <38.329403, 29.680241, 20.230055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970299, 29.582579, 20.083406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440220, -0.468763, -0.765811,
		0.015119, -0.848910, 0.528320,
		-0.897763, -0.244156, -0.366620,
		37.700970, 29.509333, 19.973421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251213, 28.901569, 20.207891>,  <38.329403, 29.680241, 20.230055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251213, 28.901569, 20.207891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980423, 29.041964, 19.949120>,  <37.817951, 29.126200, 19.793856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980423, 29.041964, 19.949120>,  <38.251213, 28.901569, 20.207891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980423, 29.041964, 19.949120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474986, -0.463091, -0.748288,
		-0.562228, -0.813851, 0.146784,
		-0.676970, 0.350989, -0.646930,
		37.777332, 29.147261, 19.755041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018417, 28.385141, 19.699940>,  <38.251213, 28.901569, 20.207891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018417, 28.385141, 19.699940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931950, 28.730936, 19.518419>,  <37.880070, 28.938414, 19.409508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931950, 28.730936, 19.518419>,  <38.018417, 28.385141, 19.699940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931950, 28.730936, 19.518419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286744, -0.388081, -0.875883,
		-0.933301, -0.319460, -0.163998,
		-0.216165, 0.864488, -0.453799,
		37.867100, 28.990282, 19.382280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869617, 28.159500, 19.075655>,  <38.018417, 28.385141, 19.699940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869617, 28.159500, 19.075655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882442, 28.548250, 18.982334>,  <37.890137, 28.781500, 18.926342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882442, 28.548250, 18.982334>,  <37.869617, 28.159500, 19.075655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882442, 28.548250, 18.982334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390069, -0.227080, -0.892346,
		-0.920227, -0.062392, -0.386380,
		0.032064, 0.971875, -0.233303,
		37.892063, 28.839813, 18.912344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501373, 28.187740, 18.377436>,  <37.869617, 28.159500, 19.075655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501373, 28.187740, 18.377436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779644, 28.461740, 18.463974>,  <37.946606, 28.626141, 18.515898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779644, 28.461740, 18.463974>,  <37.501373, 28.187740, 18.377436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779644, 28.461740, 18.463974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531646, -0.288421, -0.796345,
		-0.483097, 0.669021, -0.564826,
		0.695679, 0.685000, 0.216347,
		37.988346, 28.667240, 18.528877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746807, 28.285360, 17.706915>,  <37.501373, 28.187740, 18.377436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746807, 28.285360, 17.706915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030617, 28.447376, 17.937572>,  <38.200901, 28.544586, 18.075968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030617, 28.447376, 17.937572>,  <37.746807, 28.285360, 17.706915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030617, 28.447376, 17.937572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696644, -0.279915, -0.660556,
		-0.106141, 0.870395, -0.480776,
		0.709521, 0.405042, 0.576646,
		38.243473, 28.568890, 18.110567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214928, 28.626915, 17.219406>,  <37.746807, 28.285360, 17.706915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214928, 28.626915, 17.219406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430080, 28.581839, 17.553587>,  <38.559174, 28.554792, 17.754095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430080, 28.581839, 17.553587>,  <38.214928, 28.626915, 17.219406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430080, 28.581839, 17.553587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799361, -0.246603, -0.547913,
		0.267769, 0.962542, -0.042564,
		0.537886, -0.112690, 0.835451,
		38.591446, 28.548031, 17.804222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.750614, 34.511120, 31.344059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142990, 34.526920, 31.267960>,  <33.378414, 34.536400, 31.222300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142990, 34.526920, 31.267960>,  <32.750614, 34.511120, 31.344059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142990, 34.526920, 31.267960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097045, -0.748652, -0.655822,
		-0.168340, 0.661785, -0.730549,
		0.980940, 0.039505, -0.190251,
		33.437271, 34.538773, 31.210884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986050, 34.697441, 30.552902>,  <32.750614, 34.511120, 31.344059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986050, 34.697441, 30.552902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244549, 34.461189, 30.746199>,  <33.399647, 34.319439, 30.862177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244549, 34.461189, 30.746199>,  <32.986050, 34.697441, 30.552902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244549, 34.461189, 30.746199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241691, -0.759046, -0.604512,
		0.723846, 0.273868, -0.633280,
		0.646245, -0.590631, 0.483241,
		33.438423, 34.284000, 30.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444160, 34.375156, 30.105869>,  <32.986050, 34.697441, 30.552902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444160, 34.375156, 30.105869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358459, 34.151028, 30.425905>,  <33.307041, 34.016552, 30.617926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358459, 34.151028, 30.425905>,  <33.444160, 34.375156, 30.105869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358459, 34.151028, 30.425905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225032, -0.768761, -0.598638,
		0.950504, -0.308304, 0.038618,
		-0.214250, -0.560318, 0.800088,
		33.294186, 33.982933, 30.665932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843712, 33.711708, 30.019304>,  <33.444160, 34.375156, 30.105869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843712, 33.711708, 30.019304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550514, 33.622772, 30.276451>,  <33.374596, 33.569408, 30.430740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550514, 33.622772, 30.276451>,  <33.843712, 33.711708, 30.019304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550514, 33.622772, 30.276451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137845, -0.876912, -0.460461,
		0.666120, -0.426132, 0.612124,
		-0.732996, -0.222344, 0.642868,
		33.330616, 33.556068, 30.469311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996693, 33.033413, 30.268663>,  <33.843712, 33.711708, 30.019304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996693, 33.033413, 30.268663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602013, 33.087830, 30.304270>,  <33.365204, 33.120480, 30.325634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602013, 33.087830, 30.304270>,  <33.996693, 33.033413, 30.268663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602013, 33.087830, 30.304270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159258, -0.918840, -0.361067,
		0.032673, -0.370440, 0.928281,
		-0.986696, 0.136039, 0.089017,
		33.306004, 33.128643, 30.330975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750626, 32.380268, 30.373798>,  <33.996693, 33.033413, 30.268663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750626, 32.380268, 30.373798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437340, 32.599197, 30.255814>,  <33.249367, 32.730556, 30.185022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437340, 32.599197, 30.255814>,  <33.750626, 32.380268, 30.373798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437340, 32.599197, 30.255814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300046, -0.748239, -0.591701,
		-0.544556, -0.374930, 0.750258,
		-0.783219, 0.547326, -0.294962,
		33.202374, 32.763393, 30.167326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253242, 31.856060, 30.202818>,  <33.750626, 32.380268, 30.373798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253242, 31.856060, 30.202818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087608, 32.171276, 30.020597>,  <32.988228, 32.360405, 29.911264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087608, 32.171276, 30.020597>,  <33.253242, 31.856060, 30.202818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087608, 32.171276, 30.020597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326478, -0.595756, -0.733817,
		-0.849675, -0.155132, 0.503970,
		-0.414081, 0.788041, -0.455552,
		32.963383, 32.407688, 29.883932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616402, 31.629910, 29.984673>,  <33.253242, 31.856060, 30.202818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616402, 31.629910, 29.984673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736053, 31.930525, 29.749483>,  <32.807846, 32.110893, 29.608370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736053, 31.930525, 29.749483>,  <32.616402, 31.629910, 29.984673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736053, 31.930525, 29.749483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075220, -0.595696, -0.799680,
		-0.951243, 0.283434, -0.121658,
		0.299128, 0.751539, -0.587972,
		32.825790, 32.155987, 29.573092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232925, 31.584602, 29.381117>,  <32.616402, 31.629910, 29.984673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232925, 31.584602, 29.381117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527561, 31.827318, 29.261620>,  <32.704342, 31.972948, 29.189920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527561, 31.827318, 29.261620>,  <32.232925, 31.584602, 29.381117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527561, 31.827318, 29.261620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108080, -0.541631, -0.833639,
		-0.667653, 0.581758, -0.464539,
		0.736585, 0.606789, -0.298745,
		32.748535, 32.009354, 29.171995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044662, 31.749142, 28.726398>,  <32.232925, 31.584602, 29.381117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044662, 31.749142, 28.726398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429432, 31.854055, 28.695627>,  <32.660294, 31.917004, 28.677164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429432, 31.854055, 28.695627>,  <32.044662, 31.749142, 28.726398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429432, 31.854055, 28.695627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045760, -0.432006, -0.900709,
		-0.269473, 0.862890, -0.427557,
		0.961920, 0.262282, -0.076929,
		32.718006, 31.932739, 28.672548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164108, 32.051170, 28.115633>,  <32.044662, 31.749142, 28.726398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164108, 32.051170, 28.115633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526962, 31.907654, 28.203606>,  <32.744675, 31.821545, 28.256390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526962, 31.907654, 28.203606>,  <32.164108, 32.051170, 28.115633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526962, 31.907654, 28.203606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123511, -0.272606, -0.954165,
		0.402298, 0.892724, -0.202977,
		0.907139, -0.358788, 0.219930,
		32.799103, 31.800016, 28.269585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588619, 32.236217, 27.548674>,  <32.164108, 32.051170, 28.115633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588619, 32.236217, 27.548674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781769, 31.925093, 27.709591>,  <32.897659, 31.738419, 27.806141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781769, 31.925093, 27.709591>,  <32.588619, 32.236217, 27.548674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781769, 31.925093, 27.709591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294964, -0.288085, -0.911045,
		0.824516, 0.558584, 0.090317,
		0.482876, -0.777812, 0.402293,
		32.926632, 31.691750, 27.830278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721912, 32.866390, 27.322149>,  <32.588619, 32.236217, 27.548674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721912, 32.866390, 27.322149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431179, 32.967121, 27.066559>,  <32.256737, 33.027561, 26.913204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431179, 32.967121, 27.066559>,  <32.721912, 32.866390, 27.322149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431179, 32.967121, 27.066559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555689, 0.331133, 0.762601,
		0.403630, 0.909359, -0.100742,
		-0.726837, 0.251828, -0.638976,
		32.213127, 33.042671, 26.874866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587357, 33.521381, 27.534731>,  <32.721912, 32.866390, 27.322149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587357, 33.521381, 27.534731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262264, 33.407616, 27.331326>,  <32.067211, 33.339355, 27.209282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262264, 33.407616, 27.331326>,  <32.587357, 33.521381, 27.534731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262264, 33.407616, 27.331326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573669, 0.238004, 0.783746,
		-0.101879, 0.928689, -0.356590,
		-0.812727, -0.284411, -0.508513,
		32.018448, 33.322292, 27.178772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168381, 34.097088, 27.477152>,  <32.587357, 33.521381, 27.534731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168381, 34.097088, 27.477152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924225, 33.782616, 27.438505>,  <31.777731, 33.593933, 27.415318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924225, 33.782616, 27.438505>,  <32.168381, 34.097088, 27.477152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924225, 33.782616, 27.438505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538096, 0.322055, 0.778931,
		-0.581267, 0.527443, -0.619623,
		-0.610394, -0.786183, -0.096615,
		31.741106, 33.546761, 27.409521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582214, 34.370731, 27.475702>,  <32.168381, 34.097088, 27.477152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582214, 34.370731, 27.475702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.539129, 33.992859, 27.599621>,  <31.513279, 33.766136, 27.673971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.539129, 33.992859, 27.599621>,  <31.582214, 34.370731, 27.475702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539129, 33.992859, 27.599621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653692, 0.302074, 0.693857,
		-0.749056, -0.127776, -0.650068,
		-0.107710, -0.944682, 0.309796,
		31.506817, 33.709454, 27.692560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853775, 34.240849, 27.587923>,  <31.582214, 34.370731, 27.475702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853775, 34.240849, 27.587923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.018795, 33.929543, 27.777283>,  <31.117807, 33.742760, 27.890898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.018795, 33.929543, 27.777283>,  <30.853775, 34.240849, 27.587923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018795, 33.929543, 27.777283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659974, 0.102839, 0.744216,
		-0.627881, -0.619458, -0.471208,
		0.412552, -0.778265, 0.473397,
		31.142561, 33.696064, 27.919302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296974, 33.814953, 27.838972>,  <30.853775, 34.240849, 27.587923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296974, 33.814953, 27.838972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614784, 33.704830, 28.055466>,  <30.805471, 33.638756, 28.185362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614784, 33.704830, 28.055466>,  <30.296974, 33.814953, 27.838972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614784, 33.704830, 28.055466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563672, -0.002894, 0.825994,
		-0.225837, -0.961352, -0.157483,
		0.794526, -0.275308, 0.541233,
		30.853142, 33.622238, 28.217836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007170, 33.455593, 28.378872>,  <30.296974, 33.814953, 27.838972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007170, 33.455593, 28.378872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381016, 33.487713, 28.517466>,  <30.605324, 33.506985, 28.600622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381016, 33.487713, 28.517466>,  <30.007170, 33.455593, 28.378872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381016, 33.487713, 28.517466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355486, 0.241898, 0.902837,
		-0.011318, -0.966974, 0.254625,
		0.934613, 0.080297, 0.346484,
		30.661400, 33.511803, 28.621410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004232, 33.025585, 29.014521>,  <30.007170, 33.455593, 28.378872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004232, 33.025585, 29.014521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.285213, 33.310268, 29.016733>,  <30.453802, 33.481079, 29.018061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.285213, 33.310268, 29.016733>,  <30.004232, 33.025585, 29.014521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285213, 33.310268, 29.016733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395207, 0.383583, 0.834671,
		0.591921, -0.588503, 0.550722,
		0.702454, 0.711708, 0.005530,
		30.495949, 33.523781, 29.018393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186584, 33.072838, 29.726915>,  <30.004232, 33.025585, 29.014521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186584, 33.072838, 29.726915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302626, 33.406013, 29.538425>,  <30.372250, 33.605919, 29.425331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302626, 33.406013, 29.538425>,  <30.186584, 33.072838, 29.726915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302626, 33.406013, 29.538425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245758, 0.540727, 0.804498,
		0.924902, -0.117579, 0.361567,
		0.290101, 0.832940, -0.471224,
		30.389656, 33.655895, 29.397058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350643, 33.474102, 30.260757>,  <30.186584, 33.072838, 29.726915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350643, 33.474102, 30.260757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335243, 33.737968, 29.960529>,  <30.326002, 33.896290, 29.780392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335243, 33.737968, 29.960529>,  <30.350643, 33.474102, 30.260757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335243, 33.737968, 29.960529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237614, 0.723538, 0.648099,
		0.970596, 0.203299, 0.128889,
		-0.038502, 0.659668, -0.750570,
		30.323692, 33.935867, 29.735357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880331, 34.013107, 30.371187>,  <30.350643, 33.474102, 30.260757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880331, 34.013107, 30.371187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586920, 34.163044, 30.144409>,  <30.410873, 34.253006, 30.008343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586920, 34.163044, 30.144409>,  <30.880331, 34.013107, 30.371187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586920, 34.163044, 30.144409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226046, 0.652129, 0.723624,
		0.640967, 0.658955, -0.393624,
		-0.733529, 0.374842, -0.566947,
		30.366861, 34.275497, 29.974325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893276, 34.795761, 30.450083>,  <30.880331, 34.013107, 30.371187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893276, 34.795761, 30.450083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538092, 34.676228, 30.310244>,  <30.324980, 34.604507, 30.226339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538092, 34.676228, 30.310244>,  <30.893276, 34.795761, 30.450083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538092, 34.676228, 30.310244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444971, 0.750405, 0.488767,
		0.116281, 0.589568, -0.799305,
		-0.887964, -0.298833, -0.349599,
		30.271702, 34.586578, 30.205364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579813, 35.399288, 30.092659>,  <30.893276, 34.795761, 30.450083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579813, 35.399288, 30.092659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291515, 35.140385, 30.191927>,  <30.118536, 34.985043, 30.251488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291515, 35.140385, 30.191927>,  <30.579813, 35.399288, 30.092659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291515, 35.140385, 30.191927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545975, 0.750636, 0.372097,
		-0.427128, 0.132691, -0.894402,
		-0.720745, -0.647254, 0.248172,
		30.075293, 34.946209, 30.266378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997805, 35.866425, 30.113010>,  <30.579813, 35.399288, 30.092659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997805, 35.866425, 30.113010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.872597, 35.537746, 30.303520>,  <29.797472, 35.340538, 30.417826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.872597, 35.537746, 30.303520>,  <29.997805, 35.866425, 30.113010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872597, 35.537746, 30.303520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598222, 0.560074, 0.573104,
		-0.737665, -0.105525, -0.666870,
		-0.313020, -0.821694, 0.476274,
		29.778690, 35.291237, 30.446402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216671, 36.497894, 30.304070>,  <29.997805, 35.866425, 30.113010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216671, 36.497894, 30.304070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516703, 36.753716, 30.371424>,  <30.696722, 36.907207, 30.411837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516703, 36.753716, 30.371424>,  <30.216671, 36.497894, 30.304070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516703, 36.753716, 30.371424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142492, 0.092344, -0.985479,
		-0.645817, 0.763179, -0.021866,
		0.750078, 0.639555, 0.168384,
		30.741726, 36.945583, 30.421940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246834, 36.848568, 29.734938>,  <30.216671, 36.497894, 30.304070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246834, 36.848568, 29.734938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.594061, 36.920307, 29.920103>,  <30.802397, 36.963352, 30.031202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.594061, 36.920307, 29.920103>,  <30.246834, 36.848568, 29.734938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594061, 36.920307, 29.920103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467679, 0.017353, -0.883728,
		-0.166528, 0.983633, -0.068814,
		0.868070, 0.179348, 0.462914,
		30.854483, 36.974113, 30.058977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586950, 37.412376, 29.502981>,  <30.246834, 36.848568, 29.734938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586950, 37.412376, 29.502981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.878633, 37.178608, 29.645365>,  <31.053644, 37.038345, 29.730795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.878633, 37.178608, 29.645365>,  <30.586950, 37.412376, 29.502981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878633, 37.178608, 29.645365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389599, -0.073069, -0.918082,
		0.562556, 0.808154, 0.174408,
		0.729207, -0.584421, 0.355961,
		31.097395, 37.003281, 29.752153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220650, 37.543633, 29.090929>,  <30.586950, 37.412376, 29.502981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220650, 37.543633, 29.090929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285526, 37.189720, 29.265682>,  <31.324451, 36.977375, 29.370533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285526, 37.189720, 29.265682>,  <31.220650, 37.543633, 29.090929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285526, 37.189720, 29.265682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616772, -0.254700, -0.744796,
		0.770251, 0.390255, 0.504395,
		0.162191, -0.884776, 0.436881,
		31.334183, 36.924286, 29.396746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977551, 37.455570, 29.162899>,  <31.220650, 37.543633, 29.090929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977551, 37.455570, 29.162899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.810068, 37.092403, 29.155163>,  <31.709579, 36.874504, 29.150520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.810068, 37.092403, 29.155163>,  <31.977551, 37.455570, 29.162899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810068, 37.092403, 29.155163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565128, -0.243832, -0.788147,
		0.710855, -0.340933, 0.615183,
		-0.418706, -0.907916, -0.019342,
		31.684456, 36.820030, 29.149361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513454, 36.974850, 29.114822>,  <31.977551, 37.455570, 29.162899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513454, 36.974850, 29.114822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208611, 36.736874, 29.012661>,  <32.025703, 36.594086, 28.951365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208611, 36.736874, 29.012661>,  <32.513454, 36.974850, 29.114822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208611, 36.736874, 29.012661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513442, -0.315042, -0.798202,
		0.394422, -0.739452, 0.545566,
		-0.762108, -0.594945, -0.255406,
		31.979979, 36.558392, 28.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838203, 36.274071, 28.994614>,  <32.513454, 36.974850, 29.114822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838203, 36.274071, 28.994614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489758, 36.299034, 28.799772>,  <32.280689, 36.314014, 28.682867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489758, 36.299034, 28.799772>,  <32.838203, 36.274071, 28.994614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489758, 36.299034, 28.799772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431806, -0.375075, -0.820282,
		-0.233893, -0.924891, 0.299783,
		-0.871113, 0.062410, -0.487101,
		32.228424, 36.317757, 28.653643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803143, 35.706223, 28.685030>,  <32.838203, 36.274071, 28.994614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803143, 35.706223, 28.685030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550339, 35.918308, 28.458958>,  <32.398655, 36.045559, 28.323315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550339, 35.918308, 28.458958>,  <32.803143, 35.706223, 28.685030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550339, 35.918308, 28.458958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435070, -0.360766, -0.824962,
		-0.641305, -0.767282, -0.002671,
		-0.632014, 0.530214, -0.565182,
		32.360733, 36.077374, 28.289404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670597, 35.262836, 28.073446>,  <32.803143, 35.706223, 28.685030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670597, 35.262836, 28.073446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567234, 35.635075, 27.969748>,  <32.505215, 35.858418, 27.907528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567234, 35.635075, 27.969748>,  <32.670597, 35.262836, 28.073446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567234, 35.635075, 27.969748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465400, -0.115238, -0.877567,
		-0.846538, -0.347424, -0.403322,
		-0.258410, 0.930600, -0.259245,
		32.489712, 35.914253, 27.891973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359840, 35.202065, 27.368145>,  <32.670597, 35.262836, 28.073446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359840, 35.202065, 27.368145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453350, 35.587475, 27.420242>,  <32.509457, 35.818722, 27.451500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453350, 35.587475, 27.420242>,  <32.359840, 35.202065, 27.368145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453350, 35.587475, 27.420242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432405, 0.016949, -0.901520,
		-0.870847, 0.267073, -0.412671,
		0.233777, 0.963527, 0.130243,
		32.523483, 35.876534, 27.459314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363777, 35.456516, 26.669685>,  <32.359840, 35.202065, 27.368145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363777, 35.456516, 26.669685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551720, 35.736752, 26.884501>,  <32.664486, 35.904892, 27.013390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551720, 35.736752, 26.884501>,  <32.363777, 35.456516, 26.669685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551720, 35.736752, 26.884501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550327, 0.243199, -0.798746,
		-0.690199, 0.670843, -0.271284,
		0.469857, 0.700588, 0.537039,
		32.692677, 35.946930, 27.045612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488499, 35.988876, 26.199558>,  <32.363777, 35.456516, 26.669685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488499, 35.988876, 26.199558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744534, 36.055038, 26.499672>,  <32.898155, 36.094738, 26.679741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744534, 36.055038, 26.499672>,  <32.488499, 35.988876, 26.199558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744534, 36.055038, 26.499672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640726, 0.423978, -0.640088,
		-0.423981, 0.890439, 0.165401,
		0.640086, 0.165409, 0.750286,
		32.936558, 36.104660, 26.724758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683086, 36.744190, 26.208632>,  <32.488499, 35.988876, 26.199558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683086, 36.744190, 26.208632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978249, 36.555454, 26.401655>,  <33.155346, 36.442211, 26.517469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978249, 36.555454, 26.401655>,  <32.683086, 36.744190, 26.208632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978249, 36.555454, 26.401655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665910, 0.392664, -0.634333,
		0.109822, 0.789417, 0.603953,
		0.737904, -0.471842, 0.482558,
		33.199619, 36.413902, 26.546423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212292, 37.249428, 26.412556>,  <32.683086, 36.744190, 26.208632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212292, 37.249428, 26.412556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409447, 36.901455, 26.419220>,  <33.527740, 36.692673, 26.423220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409447, 36.901455, 26.419220>,  <33.212292, 37.249428, 26.412556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409447, 36.901455, 26.419220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807925, 0.450484, -0.379896,
		0.322977, 0.200710, 0.924879,
		0.492892, -0.869931, 0.016662,
		33.557316, 36.640476, 26.424219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955421, 37.436462, 26.279175>,  <33.212292, 37.249428, 26.412556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955421, 37.436462, 26.279175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986061, 37.039375, 26.241966>,  <34.004444, 36.801125, 26.219641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986061, 37.039375, 26.241966>,  <33.955421, 37.436462, 26.279175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986061, 37.039375, 26.241966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919495, 0.106411, -0.378426,
		0.385566, -0.056545, 0.920946,
		0.076600, -0.992713, -0.093021,
		34.009041, 36.741562, 26.214060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579342, 37.370377, 26.466837>,  <33.955421, 37.436462, 26.279175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579342, 37.370377, 26.466837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476574, 37.059006, 26.237736>,  <34.414913, 36.872185, 26.100275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476574, 37.059006, 26.237736>,  <34.579342, 37.370377, 26.466837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476574, 37.059006, 26.237736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912533, -0.000245, -0.409002,
		0.318238, -0.627735, 0.710404,
		-0.256919, -0.778427, -0.572751,
		34.399498, 36.825478, 26.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114449, 36.857845, 26.579922>,  <34.579342, 37.370377, 26.466837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114449, 36.857845, 26.579922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923405, 36.768650, 26.240000>,  <34.808781, 36.715134, 26.036047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923405, 36.768650, 26.240000>,  <35.114449, 36.857845, 26.579922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923405, 36.768650, 26.240000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878067, -0.154015, -0.453076,
		-0.029851, -0.962577, 0.269359,
		-0.477606, -0.222991, -0.849805,
		34.780125, 36.701752, 25.985058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443893, 36.291294, 26.287249>,  <35.114449, 36.857845, 26.579922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443893, 36.291294, 26.287249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253727, 36.452530, 25.974455>,  <35.139626, 36.549271, 25.786779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253727, 36.452530, 25.974455>,  <35.443893, 36.291294, 26.287249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253727, 36.452530, 25.974455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784135, -0.208863, -0.584388,
		-0.398889, -0.891007, -0.216782,
		-0.475416, 0.403092, -0.781983,
		35.111103, 36.573456, 25.739861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625542, 35.896545, 25.785645>,  <35.443893, 36.291294, 26.287249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625542, 35.896545, 25.785645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496143, 36.199516, 25.558786>,  <35.418507, 36.381298, 25.422672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496143, 36.199516, 25.558786>,  <35.625542, 35.896545, 25.785645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496143, 36.199516, 25.558786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658324, -0.250374, -0.709875,
		-0.679678, -0.603004, -0.417641,
		-0.323491, 0.757430, -0.567146,
		35.399097, 36.426746, 25.388643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549789, 35.577621, 25.101027>,  <35.625542, 35.896545, 25.785645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549789, 35.577621, 25.101027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592339, 35.970100, 25.036615>,  <35.617867, 36.205589, 24.997969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592339, 35.970100, 25.036615>,  <35.549789, 35.577621, 25.101027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592339, 35.970100, 25.036615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635988, -0.191625, -0.747529,
		-0.764333, -0.022896, -0.644415,
		0.106371, 0.981201, -0.161027,
		35.624249, 36.264462, 24.988308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313622, 35.793800, 24.426279>,  <35.549789, 35.577621, 25.101027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313622, 35.793800, 24.426279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573921, 36.080681, 24.525997>,  <35.730099, 36.252811, 24.585829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573921, 36.080681, 24.525997>,  <35.313622, 35.793800, 24.426279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573921, 36.080681, 24.525997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478938, -0.132943, -0.867724,
		-0.589193, 0.684064, -0.430008,
		0.650745, 0.717204, 0.249296,
		35.769146, 36.295841, 24.600786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213608, 36.243389, 23.865269>,  <35.313622, 35.793800, 24.426279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213608, 36.243389, 23.865269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577564, 36.304813, 24.019421>,  <35.795937, 36.341667, 24.111912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577564, 36.304813, 24.019421>,  <35.213608, 36.243389, 23.865269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577564, 36.304813, 24.019421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391885, -0.013380, -0.919917,
		-0.136110, 0.988048, -0.072354,
		0.909890, 0.153565, 0.385380,
		35.850533, 36.350883, 24.135035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590294, 36.668922, 23.387022>,  <35.213608, 36.243389, 23.865269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590294, 36.668922, 23.387022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896095, 36.546516, 23.613966>,  <36.079575, 36.473072, 23.750134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896095, 36.546516, 23.613966>,  <35.590294, 36.668922, 23.387022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896095, 36.546516, 23.613966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594300, -0.006343, -0.804219,
		0.249699, 0.952007, 0.177013,
		0.764499, -0.306011, 0.567361,
		36.125446, 36.454712, 23.784174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108440, 36.979576, 23.057003>,  <35.590294, 36.668922, 23.387022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108440, 36.979576, 23.057003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320442, 36.712444, 23.266039>,  <36.447643, 36.552166, 23.391460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320442, 36.712444, 23.266039>,  <36.108440, 36.979576, 23.057003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320442, 36.712444, 23.266039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659697, -0.062505, -0.748928,
		0.532822, 0.741683, 0.407439,
		0.530000, -0.667832, 0.522590,
		36.479443, 36.512096, 23.422815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755913, 37.119148, 22.851175>,  <36.108440, 36.979576, 23.057003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755913, 37.119148, 22.851175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768909, 36.747505, 22.998522>,  <36.776707, 36.524517, 23.086929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768909, 36.747505, 22.998522>,  <36.755913, 37.119148, 22.851175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768909, 36.747505, 22.998522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684130, -0.248015, -0.685897,
		0.728636, 0.274298, 0.627575,
		0.032492, -0.929112, 0.368368,
		36.778656, 36.468773, 23.109032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463917, 36.902500, 22.773159>,  <36.755913, 37.119148, 22.851175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463917, 36.902500, 22.773159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.250561, 36.565231, 22.800137>,  <37.122547, 36.362869, 22.816322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.250561, 36.565231, 22.800137>,  <37.463917, 36.902500, 22.773159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250561, 36.565231, 22.800137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628763, -0.448560, -0.635178,
		0.565818, -0.296394, 0.769416,
		-0.533392, -0.843175, 0.067442,
		37.090542, 36.312279, 22.820370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940834, 36.352573, 22.815100>,  <37.463917, 36.902500, 22.773159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940834, 36.352573, 22.815100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610096, 36.175304, 22.676580>,  <37.411652, 36.068943, 22.593468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610096, 36.175304, 22.676580>,  <37.940834, 36.352573, 22.815100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610096, 36.175304, 22.676580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481770, -0.240376, -0.842684,
		0.290214, -0.863606, 0.412262,
		-0.826845, -0.443174, -0.346300,
		37.362041, 36.042351, 22.572691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133259, 35.688660, 22.627716>,  <37.940834, 36.352573, 22.815100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133259, 35.688660, 22.627716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796047, 35.788162, 22.436960>,  <37.593719, 35.847862, 22.322506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796047, 35.788162, 22.436960>,  <38.133259, 35.688660, 22.627716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796047, 35.788162, 22.436960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382364, -0.346412, -0.856620,
		-0.378288, -0.904500, 0.196921,
		-0.843028, 0.248753, -0.476891,
		37.543140, 35.862789, 22.293892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383175, 35.495136, 23.322958>,  <38.133259, 35.688660, 22.627716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383175, 35.495136, 23.322958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777260, 35.432087, 23.296093>,  <39.013710, 35.394257, 23.279974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777260, 35.432087, 23.296093>,  <38.383175, 35.495136, 23.322958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777260, 35.432087, 23.296093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108295, 0.269134, 0.956995,
		-0.132768, -0.950117, 0.282223,
		0.985213, -0.157622, -0.067161,
		39.072823, 35.384800, 23.275946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467468, 35.069153, 23.862717>,  <38.383175, 35.495136, 23.322958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467468, 35.069153, 23.862717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.781750, 35.294640, 23.760817>,  <38.970318, 35.429932, 23.699677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.781750, 35.294640, 23.760817>,  <38.467468, 35.069153, 23.862717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781750, 35.294640, 23.760817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132549, 0.248832, 0.959434,
		0.604237, -0.787596, 0.120788,
		0.785702, 0.563715, -0.254748,
		39.017460, 35.463753, 23.684393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797249, 35.017738, 24.388927>,  <38.467468, 35.069153, 23.862717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797249, 35.017738, 24.388927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.970119, 35.344822, 24.236835>,  <39.073841, 35.541073, 24.145580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.970119, 35.344822, 24.236835>,  <38.797249, 35.017738, 24.388927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970119, 35.344822, 24.236835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137455, 0.356982, 0.923943,
		0.891250, -0.451574, 0.041882,
		0.432180, 0.817707, -0.380231,
		39.099773, 35.590134, 24.122766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499638, 35.042439, 24.653482>,  <38.797249, 35.017738, 24.388927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499638, 35.042439, 24.653482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.391903, 35.413067, 24.548471>,  <39.327263, 35.635445, 24.485466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.391903, 35.413067, 24.548471>,  <39.499638, 35.042439, 24.653482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391903, 35.413067, 24.548471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134734, 0.306173, 0.942393,
		0.953574, 0.218451, -0.207305,
		-0.269338, 0.926573, -0.262526,
		39.311100, 35.691040, 24.469713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078671, 35.444126, 24.866468>,  <39.499638, 35.042439, 24.653482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078671, 35.444126, 24.866468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.751736, 35.673744, 24.846727>,  <39.555576, 35.811516, 24.834883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.751736, 35.673744, 24.846727>,  <40.078671, 35.444126, 24.866468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751736, 35.673744, 24.846727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246325, 0.425584, 0.870748,
		0.520854, 0.699535, -0.489246,
		-0.817334, 0.574046, -0.049355,
		39.506535, 35.845959, 24.831921>
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
