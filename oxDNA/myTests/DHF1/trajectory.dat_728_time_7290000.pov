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
	<1.279205, -0.075888, 3.714567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527412, 0.147936, 3.494803>,  <1.676337, 0.282230, 3.362945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527412, 0.147936, 3.494803>,  <1.279205, -0.075888, 3.714567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.527412, 0.147936, 3.494803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350541, 0.824634, 0.443959,
		0.701482, -0.082895, 0.707849,
		0.620519, 0.559559, -0.549408,
		1.713568, 0.315804, 3.329981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.785321, 0.387079, 4.196618>,  <1.279205, -0.075888, 3.714567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.785321, 0.387079, 4.196618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.692646, 0.517269, 3.829927>,  <1.637041, 0.595383, 3.609913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.692646, 0.517269, 3.829927>,  <1.785321, 0.387079, 4.196618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.692646, 0.517269, 3.829927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279407, 0.880395, 0.383192,
		0.931801, 0.344921, -0.113036,
		-0.231687, 0.325476, -0.916726,
		1.623140, 0.614912, 3.554910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.096004, 1.083210, 4.108329>,  <1.785321, 0.387079, 4.196618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.096004, 1.083210, 4.108329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.777111, 1.019547, 3.875403>,  <1.585775, 0.981348, 3.735648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.777111, 1.019547, 3.875403>,  <2.096004, 1.083210, 4.108329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.777111, 1.019547, 3.875403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339934, 0.915504, 0.215168,
		0.498866, 0.369487, -0.783972,
		-0.797231, -0.159159, -0.582315,
		1.537942, 0.971799, 3.700709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064380, 1.687518, 3.726238>,  <2.096004, 1.083210, 4.108329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064380, 1.687518, 3.726238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.719666, 1.493258, 3.784843>,  <1.512837, 1.376701, 3.820007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.719666, 1.493258, 3.784843>,  <2.064380, 1.687518, 3.726238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.719666, 1.493258, 3.784843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415295, 0.841321, 0.345990,
		-0.291296, 0.237323, -0.926728,
		-0.861787, -0.485651, 0.146514,
		1.461129, 1.347562, 3.828798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.582145, 2.097562, 3.399364>,  <2.064380, 1.687518, 3.726238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.582145, 2.097562, 3.399364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.350960, 1.875208, 3.638345>,  <1.212248, 1.741796, 3.781733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.350960, 1.875208, 3.638345>,  <1.582145, 2.097562, 3.399364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.350960, 1.875208, 3.638345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445188, 0.828354, 0.340055,
		-0.683934, -0.069439, -0.726232,
		-0.577964, -0.555885, 0.597453,
		1.177571, 1.708442, 3.817580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.958030, 2.391224, 3.288267>,  <1.582145, 2.097562, 3.399364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.958030, 2.391224, 3.288267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939487, 2.184353, 3.630116>,  <0.928362, 2.060230, 3.835225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.939487, 2.184353, 3.630116>,  <0.958030, 2.391224, 3.288267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.939487, 2.184353, 3.630116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408769, 0.790451, 0.456174,
		-0.911460, -0.328197, -0.248048,
		-0.046355, -0.517179, 0.854621,
		0.925581, 2.029199, 3.886502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.281626, 2.488515, 3.601761>,  <0.958030, 2.391224, 3.288267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.281626, 2.488515, 3.601761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.494663, 2.398333, 3.928077>,  <0.622485, 2.344223, 4.123867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.494663, 2.398333, 3.928077>,  <0.281626, 2.488515, 3.601761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.494663, 2.398333, 3.928077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276002, 0.864914, 0.419222,
		-0.800105, -0.448434, 0.398420,
		0.532592, -0.225457, 0.815790,
		0.654441, 2.330695, 4.172814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.192202, 2.498888, 4.254901>,  <0.281626, 2.488515, 3.601761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.192202, 2.498888, 4.254901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.193604, 2.559229, 4.341578>,  <0.425087, 2.595434, 4.393583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.193604, 2.559229, 4.341578>,  <-0.192202, 2.498888, 4.254901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.193604, 2.559229, 4.341578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233119, 0.871890, 0.430655,
		-0.123965, -0.465888, 0.876117,
		0.964514, 0.150853, 0.216691,
		0.482958, 2.604485, 4.406585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.321342, 3.978347, 4.769241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.402046, 3.711872, 5.056431>,  <0.450469, 3.551987, 5.228745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.402046, 3.711872, 5.056431>,  <0.321342, 3.978347, 4.769241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.402046, 3.711872, 5.056431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555625, -0.525827, -0.644039,
		0.806581, 0.528866, 0.264059,
		0.201761, -0.666188, 0.717974,
		0.462575, 3.512016, 5.271823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.978452, 3.738839, 4.599122>,  <0.321342, 3.978347, 4.769241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.978452, 3.738839, 4.599122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.836510, 3.472122, 4.861256>,  <0.751344, 3.312092, 5.018536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.836510, 3.472122, 4.861256>,  <0.978452, 3.738839, 4.599122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.836510, 3.472122, 4.861256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454944, -0.735519, -0.502033,
		0.816764, 0.119993, 0.564357,
		-0.354855, -0.666793, 0.655336,
		0.730053, 3.272084, 5.057857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.535991, 3.319401, 4.797809>,  <0.978452, 3.738839, 4.599122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.535991, 3.319401, 4.797809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.186005, 3.128799, 4.832167>,  <0.976013, 3.014439, 4.852781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.186005, 3.128799, 4.832167>,  <1.535991, 3.319401, 4.797809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.186005, 3.128799, 4.832167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355203, -0.752261, -0.554919,
		0.329035, -0.455026, 0.827458,
		-0.874967, -0.476503, 0.085893,
		0.923515, 2.985848, 4.857935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713937, 2.600014, 5.051628>,  <1.535991, 3.319401, 4.797809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713937, 2.600014, 5.051628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.346024, 2.598492, 4.894665>,  <1.125275, 2.597579, 4.800487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.346024, 2.598492, 4.894665>,  <1.713937, 2.600014, 5.051628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.346024, 2.598492, 4.894665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159194, -0.917596, -0.364244,
		-0.358686, -0.397495, 0.844596,
		-0.919783, -0.003805, -0.392408,
		1.070089, 2.597350, 4.776942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.335068, 1.970696, 5.185417>,  <1.713937, 2.600014, 5.051628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.335068, 1.970696, 5.185417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111137, 2.083027, 4.873589>,  <0.976779, 2.150425, 4.686491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111137, 2.083027, 4.873589>,  <1.335068, 1.970696, 5.185417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.111137, 2.083027, 4.873589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027592, -0.946614, -0.321186,
		-0.828150, -0.158298, 0.537688,
		-0.559827, 0.280826, -0.779571,
		0.943190, 2.167275, 4.639717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.926486, 1.436699, 5.039843>,  <1.335068, 1.970696, 5.185417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.926486, 1.436699, 5.039843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.944412, 1.619160, 4.684334>,  <0.955168, 1.728636, 4.471028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.944412, 1.619160, 4.684334>,  <0.926486, 1.436699, 5.039843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.944412, 1.619160, 4.684334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237211, -0.869081, -0.434084,
		-0.970424, -0.191373, -0.147152,
		0.044815, 0.456151, -0.888773,
		0.957857, 1.756005, 4.417702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.454931, 1.146880, 4.691383>,  <0.926486, 1.436699, 5.039843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.454931, 1.146880, 4.691383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.695602, 1.306370, 4.414543>,  <0.840005, 1.402064, 4.248439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.695602, 1.306370, 4.414543>,  <0.454931, 1.146880, 4.691383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.695602, 1.306370, 4.414543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084341, -0.893362, -0.441352,
		-0.794273, 0.207180, -0.571145,
		0.601678, 0.398725, -0.692099,
		0.876106, 1.425987, 4.206913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.331075, 0.733807, 4.065953>,  <0.454931, 1.146880, 4.691383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.331075, 0.733807, 4.065953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.673424, 0.922848, 3.981924>,  <0.878833, 1.036272, 3.931507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.673424, 0.922848, 3.981924>,  <0.331075, 0.733807, 4.065953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.673424, 0.922848, 3.981924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326262, -0.808534, -0.489720,
		-0.401293, 0.350600, -0.846194,
		0.855872, 0.472602, -0.210071,
		0.930185, 1.064628, 3.918903>
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
