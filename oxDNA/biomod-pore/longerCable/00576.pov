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
	<24.436123, 34.890465, 34.698101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462107, 35.204388, 34.944633>,  <24.477697, 35.392742, 35.092552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462107, 35.204388, 34.944633>,  <24.436123, 34.890465, 34.698101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462107, 35.204388, 34.944633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992238, -0.116430, 0.043675,
		0.106035, 0.608707, -0.786277,
		0.064961, 0.784805, 0.616328,
		24.481594, 35.439831, 35.129532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789537, 35.402714, 34.280880>,  <24.436123, 34.890465, 34.698101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789537, 35.402714, 34.280880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897549, 35.408432, 34.665977>,  <24.962355, 35.411861, 34.897038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897549, 35.408432, 34.665977>,  <24.789537, 35.402714, 34.280880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897549, 35.408432, 34.665977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959416, -0.088400, -0.267780,
		0.081279, 0.995983, -0.037584,
		0.270027, 0.014294, 0.962747,
		24.978558, 35.412720, 34.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318254, 35.941563, 34.358173>,  <24.789537, 35.402714, 34.280880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318254, 35.941563, 34.358173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378227, 35.647964, 34.623135>,  <25.414211, 35.471806, 34.782112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378227, 35.647964, 34.623135>,  <25.318254, 35.941563, 34.358173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378227, 35.647964, 34.623135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969771, -0.021283, -0.243088,
		0.192523, 0.678823, 0.708614,
		0.149932, -0.733993, 0.662401,
		25.423206, 35.427765, 34.821854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907907, 36.173286, 34.689587>,  <25.318254, 35.941563, 34.358173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907907, 36.173286, 34.689587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875854, 35.783596, 34.773933>,  <25.856623, 35.549782, 34.824543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875854, 35.783596, 34.773933>,  <25.907907, 36.173286, 34.689587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875854, 35.783596, 34.773933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987591, -0.106260, -0.115637,
		0.135064, 0.198986, 0.970651,
		-0.080131, -0.974225, 0.210869,
		25.851814, 35.491329, 34.837193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376328, 35.896297, 35.309349>,  <25.907907, 36.173286, 34.689587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376328, 35.896297, 35.309349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319504, 35.579327, 35.072071>,  <26.285410, 35.389145, 34.929703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319504, 35.579327, 35.072071>,  <26.376328, 35.896297, 35.309349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319504, 35.579327, 35.072071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970628, -0.229066, 0.073552,
		-0.194166, -0.565326, 0.801690,
		-0.142059, -0.792424, -0.593198,
		26.276886, 35.341599, 34.894112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601395, 35.204144, 35.546543>,  <26.376328, 35.896297, 35.309349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601395, 35.204144, 35.546543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669422, 35.165848, 35.154236>,  <26.710239, 35.142872, 34.918850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669422, 35.165848, 35.154236>,  <26.601395, 35.204144, 35.546543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669422, 35.165848, 35.154236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917989, -0.346476, 0.193004,
		-0.358291, -0.933161, 0.028960,
		0.170070, -0.095736, -0.980771,
		26.720444, 35.137127, 34.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620825, 34.456856, 35.217213>,  <26.601395, 35.204144, 35.546543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620825, 34.456856, 35.217213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852533, 34.733898, 35.045284>,  <26.991558, 34.900124, 34.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852533, 34.733898, 35.045284>,  <26.620825, 34.456856, 35.217213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852533, 34.733898, 35.045284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811516, -0.440391, 0.384054,
		0.076709, -0.571276, -0.817165,
		0.579273, 0.692603, -0.429818,
		27.026316, 34.941681, 34.916340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210119, 34.155003, 34.864372>,  <26.620825, 34.456856, 35.217213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210119, 34.155003, 34.864372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303200, 34.522743, 34.991268>,  <27.359049, 34.743389, 35.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303200, 34.522743, 34.991268>,  <27.210119, 34.155003, 34.864372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303200, 34.522743, 34.991268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889203, -0.333241, 0.313479,
		0.393914, 0.209142, -0.895037,
		0.232701, 0.919353, 0.317238,
		27.373011, 34.798550, 35.086441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772722, 34.511024, 34.489685>,  <27.210119, 34.155003, 34.864372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772722, 34.511024, 34.489685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785681, 34.589241, 34.881748>,  <27.793455, 34.636169, 35.116985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785681, 34.589241, 34.881748>,  <27.772722, 34.511024, 34.489685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785681, 34.589241, 34.881748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986122, -0.166024, 0.000528,
		0.162833, 0.966541, -0.198204,
		0.032396, 0.195539, 0.980161,
		27.795401, 34.647903, 35.175797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346218, 34.199501, 34.797634>,  <27.772722, 34.511024, 34.489685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346218, 34.199501, 34.797634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610144, 33.921223, 34.911232>,  <28.768499, 33.754257, 34.979389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610144, 33.921223, 34.911232>,  <28.346218, 34.199501, 34.797634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610144, 33.921223, 34.911232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656810, -0.717550, -0.231781,
		0.365027, -0.033596, -0.930391,
		0.659815, -0.695696, 0.283991,
		28.808088, 33.712513, 34.996429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390713, 33.696770, 34.316162>,  <28.346218, 34.199501, 34.797634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390713, 33.696770, 34.316162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470060, 33.525032, 34.668598>,  <28.517668, 33.421989, 34.880058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470060, 33.525032, 34.668598>,  <28.390713, 33.696770, 34.316162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470060, 33.525032, 34.668598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665470, -0.718984, -0.200529,
		0.719584, -0.546558, -0.428338,
		0.198367, -0.429343, 0.881087,
		28.529570, 33.396229, 34.932926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699057, 32.927788, 34.203220>,  <28.390713, 33.696770, 34.316162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699057, 32.927788, 34.203220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469566, 33.017441, 34.518333>,  <28.331873, 33.071232, 34.707401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469566, 33.017441, 34.518333>,  <28.699057, 32.927788, 34.203220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469566, 33.017441, 34.518333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554794, -0.813913, -0.172479,
		0.602531, -0.536014, 0.591309,
		-0.573725, 0.224130, 0.787785,
		28.297449, 33.084679, 34.754669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914619, 32.753796, 34.406830>,  <28.699057, 32.927788, 34.203220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914619, 32.753796, 34.406830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606556, 33.008915, 34.410187>,  <27.421717, 33.161987, 34.412201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606556, 33.008915, 34.410187>,  <27.914619, 32.753796, 34.406830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606556, 33.008915, 34.410187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628626, 0.761186, -0.159454,
		-0.108089, -0.117527, -0.987170,
		-0.770160, 0.637796, 0.008395,
		27.375507, 33.200253, 34.412704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890049, 32.556786, 35.076607>,  <27.914619, 32.753796, 34.406830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890049, 32.556786, 35.076607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201529, 32.503620, 34.831345>,  <28.388416, 32.471722, 34.684185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201529, 32.503620, 34.831345>,  <27.890049, 32.556786, 35.076607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201529, 32.503620, 34.831345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555333, 0.600786, 0.575032,
		0.291950, -0.788283, 0.541640,
		0.778698, -0.132910, -0.613159,
		28.435139, 32.463749, 34.647396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498486, 32.667347, 35.450565>,  <27.890049, 32.556786, 35.076607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498486, 32.667347, 35.450565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681986, 32.673439, 35.095192>,  <28.792086, 32.677094, 34.881969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681986, 32.673439, 35.095192>,  <28.498486, 32.667347, 35.450565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681986, 32.673439, 35.095192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666331, 0.655565, 0.355300,
		0.587836, -0.754986, 0.290596,
		0.458751, 0.015225, -0.888434,
		28.819611, 32.678005, 34.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181349, 32.694004, 35.486385>,  <28.498486, 32.667347, 35.450565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181349, 32.694004, 35.486385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076376, 32.904213, 35.162670>,  <29.013393, 33.030338, 34.968441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076376, 32.904213, 35.162670>,  <29.181349, 32.694004, 35.486385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076376, 32.904213, 35.162670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459847, 0.805439, 0.373909,
		0.848334, -0.274025, -0.453034,
		-0.262431, 0.525526, -0.809291,
		28.997646, 33.061871, 34.919884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736406, 32.835171, 35.149410>,  <29.181349, 32.694004, 35.486385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736406, 32.835171, 35.149410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433027, 33.094551, 35.123291>,  <29.250999, 33.250179, 35.107620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433027, 33.094551, 35.123291>,  <29.736406, 32.835171, 35.149410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433027, 33.094551, 35.123291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542355, 0.683545, 0.488484,
		0.361394, 0.335075, -0.870126,
		-0.758449, 0.648453, -0.065299,
		29.205492, 33.289085, 35.103703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918701, 33.519146, 34.855808>,  <29.736406, 32.835171, 35.149410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918701, 33.519146, 34.855808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626020, 33.545918, 35.127140>,  <29.450411, 33.561981, 35.289940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626020, 33.545918, 35.127140>,  <29.918701, 33.519146, 34.855808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626020, 33.545918, 35.127140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614107, 0.496557, 0.613436,
		-0.295773, 0.865420, -0.404433,
		-0.731704, 0.066927, 0.678329,
		29.406509, 33.565994, 35.330639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938055, 33.548515, 34.117268>,  <29.918701, 33.519146, 34.855808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938055, 33.548515, 34.117268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198999, 33.669952, 33.839489>,  <30.355566, 33.742813, 33.672821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198999, 33.669952, 33.839489>,  <29.938055, 33.548515, 34.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198999, 33.669952, 33.839489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737424, -0.042649, 0.674083,
		0.175028, -0.951848, -0.251697,
		0.652359, 0.303590, -0.694450,
		30.394707, 33.761028, 33.631153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585373, 33.131554, 34.250835>,  <29.938055, 33.548515, 34.117268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585373, 33.131554, 34.250835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690001, 33.469646, 34.064430>,  <30.752777, 33.672501, 33.952587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690001, 33.469646, 34.064430>,  <30.585373, 33.131554, 34.250835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690001, 33.469646, 34.064430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786795, 0.092933, 0.610178,
		0.559049, -0.526259, -0.640715,
		0.261568, 0.845231, -0.466012,
		30.768471, 33.723217, 33.924625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221727, 32.949303, 33.854668>,  <30.585373, 33.131554, 34.250835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221727, 32.949303, 33.854668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140234, 33.303532, 34.021641>,  <31.091339, 33.516071, 34.121826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140234, 33.303532, 34.021641>,  <31.221727, 32.949303, 33.854668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140234, 33.303532, 34.021641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846718, -0.054668, 0.529226,
		0.491489, 0.461268, -0.738695,
		-0.203732, 0.885575, 0.417432,
		31.079115, 33.569202, 34.146870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777388, 33.438396, 33.887119>,  <31.221727, 32.949303, 33.854668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777388, 33.438396, 33.887119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584217, 33.562569, 34.214634>,  <31.468315, 33.637070, 34.411144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584217, 33.562569, 34.214634>,  <31.777388, 33.438396, 33.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584217, 33.562569, 34.214634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807472, -0.203887, 0.553551,
		0.338778, 0.928475, -0.152199,
		-0.482927, 0.310427, 0.818790,
		31.439339, 33.655697, 34.460270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271111, 33.976295, 34.175529>,  <31.777388, 33.438396, 33.887119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271111, 33.976295, 34.175529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025509, 33.760483, 34.405975>,  <31.878149, 33.630993, 34.544243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025509, 33.760483, 34.405975>,  <32.271111, 33.976295, 34.175529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025509, 33.760483, 34.405975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778567, -0.294014, 0.554426,
		-0.129748, 0.788959, 0.600590,
		-0.614002, -0.539536, 0.576110,
		31.841309, 33.598621, 34.578808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327343, 34.182987, 34.815826>,  <32.271111, 33.976295, 34.175529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327343, 34.182987, 34.815826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261127, 33.789734, 34.784702>,  <32.221397, 33.553783, 34.766029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261127, 33.789734, 34.784702>,  <32.327343, 34.182987, 34.815826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261127, 33.789734, 34.784702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847896, -0.182171, 0.497882,
		-0.503657, 0.016446, 0.863747,
		-0.165538, -0.983129, -0.077808,
		32.211468, 33.494797, 34.761360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486355, 33.911621, 35.466583>,  <32.327343, 34.182987, 34.815826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486355, 33.911621, 35.466583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555775, 33.621544, 35.200058>,  <32.597427, 33.447498, 35.040142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555775, 33.621544, 35.200058>,  <32.486355, 33.911621, 35.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555775, 33.621544, 35.200058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937155, -0.086342, 0.338062,
		-0.302693, -0.683106, 0.664638,
		0.173546, -0.725197, -0.666311,
		32.607838, 33.403984, 35.000164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987316, 33.650166, 35.853745>,  <32.486355, 33.911621, 35.466583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987316, 33.650166, 35.853745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009785, 33.483063, 35.491016>,  <33.023266, 33.382801, 35.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009785, 33.483063, 35.491016>,  <32.987316, 33.650166, 35.853745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009785, 33.483063, 35.491016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984562, -0.127635, 0.119781,
		-0.165781, -0.899551, 0.404135,
		0.056168, -0.417753, -0.906823,
		33.026634, 33.357738, 35.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474308, 33.149315, 35.915634>,  <32.987316, 33.650166, 35.853745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474308, 33.149315, 35.915634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475525, 33.219196, 35.521786>,  <33.476254, 33.261124, 35.285477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475525, 33.219196, 35.521786>,  <33.474308, 33.149315, 35.915634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475525, 33.219196, 35.521786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981521, -0.188909, -0.030485,
		-0.191328, -0.966329, -0.172049,
		0.003043, 0.174703, -0.984617,
		33.476437, 33.271606, 35.226402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940823, 32.659893, 35.552513>,  <33.474308, 33.149315, 35.915634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940823, 32.659893, 35.552513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899414, 32.995998, 35.339630>,  <33.874569, 33.197662, 35.211903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899414, 32.995998, 35.339630>,  <33.940823, 32.659893, 35.552513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899414, 32.995998, 35.339630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994618, 0.089761, -0.051755,
		0.004283, -0.534697, -0.845033,
		-0.103525, 0.840263, -0.532203,
		33.868355, 33.248077, 35.179970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520271, 32.676666, 36.075382>,  <33.940823, 32.659893, 35.552513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520271, 32.676666, 36.075382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693508, 32.588867, 35.725697>,  <34.797451, 32.536186, 35.515884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693508, 32.588867, 35.725697>,  <34.520271, 32.676666, 36.075382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693508, 32.588867, 35.725697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864074, 0.377145, 0.333373,
		0.256530, -0.899767, 0.353003,
		0.433092, -0.219500, -0.874214,
		34.823437, 32.523018, 35.463432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181770, 32.235077, 36.066174>,  <34.520271, 32.676666, 36.075382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181770, 32.235077, 36.066174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158672, 32.508774, 35.775387>,  <35.144814, 32.672993, 35.600914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158672, 32.508774, 35.775387>,  <35.181770, 32.235077, 36.066174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158672, 32.508774, 35.775387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906552, 0.340919, 0.248873,
		0.418126, -0.644660, -0.639988,
		-0.057745, 0.684242, -0.726965,
		35.141350, 32.714046, 35.557297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872257, 32.205570, 35.660229>,  <35.181770, 32.235077, 36.066174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872257, 32.205570, 35.660229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678440, 32.548981, 35.593128>,  <35.562149, 32.755028, 35.552868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678440, 32.548981, 35.593128>,  <35.872257, 32.205570, 35.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678440, 32.548981, 35.593128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790715, 0.511880, 0.335782,
		0.374146, 0.030061, -0.926883,
		-0.484547, 0.858531, -0.167748,
		35.533077, 32.806541, 35.542805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388714, 32.606388, 35.392693>,  <35.872257, 32.205570, 35.660229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388714, 32.606388, 35.392693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093029, 32.843441, 35.520664>,  <35.915619, 32.985672, 35.597446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093029, 32.843441, 35.520664>,  <36.388714, 32.606388, 35.392693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093029, 32.843441, 35.520664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667581, 0.707488, 0.231940,
		-0.088888, 0.385028, -0.918614,
		-0.739212, 0.592633, 0.319925,
		35.871265, 33.021233, 35.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637081, 33.186668, 35.126949>,  <36.388714, 32.606388, 35.392693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637081, 33.186668, 35.126949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377090, 33.280922, 35.415947>,  <36.221096, 33.337475, 35.589348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377090, 33.280922, 35.415947>,  <36.637081, 33.186668, 35.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377090, 33.280922, 35.415947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691413, 0.577924, 0.433534,
		-0.315392, 0.781332, -0.538561,
		-0.649981, 0.235636, 0.722496,
		36.182095, 33.351612, 35.632694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700302, 33.954544, 35.268185>,  <36.637081, 33.186668, 35.126949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700302, 33.954544, 35.268185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556828, 33.764755, 35.589737>,  <36.470745, 33.650883, 35.782669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556828, 33.764755, 35.589737>,  <36.700302, 33.954544, 35.268185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556828, 33.764755, 35.589737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679740, 0.457471, 0.573302,
		-0.639766, 0.752064, 0.158428,
		-0.358683, -0.474469, 0.803882,
		36.449223, 33.622414, 35.830902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482487, 34.465458, 35.829227>,  <36.700302, 33.954544, 35.268185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482487, 34.465458, 35.829227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598812, 34.112457, 35.977077>,  <36.668610, 33.900658, 36.065788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598812, 34.112457, 35.977077>,  <36.482487, 34.465458, 35.829227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598812, 34.112457, 35.977077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621010, 0.467994, 0.628751,
		-0.727854, 0.046690, 0.684140,
		0.290817, -0.882497, 0.369627,
		36.686058, 33.847710, 36.087967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024757, 34.556728, 36.379604>,  <36.482487, 34.465458, 35.829227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024757, 34.556728, 36.379604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847256, 34.200573, 36.420181>,  <36.740753, 33.986881, 36.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847256, 34.200573, 36.420181>,  <37.024757, 34.556728, 36.379604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847256, 34.200573, 36.420181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541080, -0.175973, 0.822354,
		-0.714362, 0.419813, 0.559860,
		-0.443756, -0.890388, 0.101444,
		36.714130, 33.933456, 36.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836761, 34.405060, 37.104279>,  <37.024757, 34.556728, 36.379604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836761, 34.405060, 37.104279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866699, 34.056564, 36.910229>,  <36.884663, 33.847466, 36.793800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866699, 34.056564, 36.910229>,  <36.836761, 34.405060, 37.104279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866699, 34.056564, 36.910229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588123, -0.354303, 0.727036,
		-0.805301, -0.339728, 0.485876,
		0.074847, -0.871237, -0.485122,
		36.889153, 33.795193, 36.764690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838585, 33.721066, 37.568497>,  <36.836761, 34.405060, 37.104279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838585, 33.721066, 37.568497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001488, 33.560261, 37.240467>,  <37.099228, 33.463779, 37.043648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001488, 33.560261, 37.240467>,  <36.838585, 33.721066, 37.568497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001488, 33.560261, 37.240467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695891, -0.444946, 0.563701,
		-0.591506, -0.800255, 0.098551,
		0.407255, -0.402013, -0.820079,
		37.123665, 33.439655, 36.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084759, 32.919804, 37.635620>,  <36.838585, 33.721066, 37.568497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084759, 32.919804, 37.635620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331306, 33.135475, 37.406059>,  <37.479237, 33.264877, 37.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331306, 33.135475, 37.406059>,  <37.084759, 32.919804, 37.635620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331306, 33.135475, 37.406059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764983, -0.237127, 0.598809,
		0.186777, -0.808118, -0.558623,
		0.616373, 0.539181, -0.573907,
		37.516220, 33.297230, 37.233887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773495, 32.591358, 37.669853>,  <37.084759, 32.919804, 37.635620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773495, 32.591358, 37.669853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818497, 32.983192, 37.603203>,  <37.845497, 33.218292, 37.563213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818497, 32.983192, 37.603203>,  <37.773495, 32.591358, 37.669853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818497, 32.983192, 37.603203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795522, 0.011680, 0.605812,
		0.595388, -0.200709, -0.777965,
		0.112505, 0.979581, -0.166622,
		37.852249, 33.277065, 37.553215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435108, 32.984337, 37.611069>,  <37.773495, 32.591358, 37.669853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435108, 32.984337, 37.611069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280376, 32.759628, 37.318554>,  <38.187538, 32.624805, 37.143044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280376, 32.759628, 37.318554>,  <38.435108, 32.984337, 37.611069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280376, 32.759628, 37.318554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818230, 0.574825, -0.008757,
		0.425281, 0.594973, -0.682014,
		-0.386828, -0.561768, -0.731287,
		38.164330, 32.591099, 37.099167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304085, 33.407990, 37.090637>,  <38.435108, 32.984337, 37.611069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304085, 33.407990, 37.090637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068905, 33.085724, 37.061726>,  <37.927795, 32.892365, 37.044380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068905, 33.085724, 37.061726>,  <38.304085, 33.407990, 37.090637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068905, 33.085724, 37.061726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757209, 0.579605, -0.301154,
		0.284519, -0.122336, -0.950833,
		-0.587949, -0.805663, -0.072274,
		37.892521, 32.844025, 37.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056564, 33.186832, 36.347485>,  <38.304085, 33.407990, 37.090637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056564, 33.186832, 36.347485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774246, 33.086990, 36.612679>,  <37.604855, 33.027084, 36.771793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774246, 33.086990, 36.612679>,  <38.056564, 33.186832, 36.347485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774246, 33.086990, 36.612679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674377, 0.523335, -0.520900,
		-0.216946, -0.814752, -0.537694,
		-0.705798, -0.249601, 0.662985,
		37.562508, 33.012112, 36.811573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531334, 32.952053, 35.881454>,  <38.056564, 33.186832, 36.347485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531334, 32.952053, 35.881454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408115, 33.092972, 36.234951>,  <37.334183, 33.177521, 36.447048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408115, 33.092972, 36.234951>,  <37.531334, 32.952053, 35.881454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408115, 33.092972, 36.234951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784894, 0.430832, -0.445338,
		-0.537634, -0.830826, 0.143798,
		-0.308045, 0.352294, 0.883740,
		37.315701, 33.198662, 36.500072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882435, 32.654602, 36.037010>,  <37.531334, 32.952053, 35.881454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882435, 32.654602, 36.037010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901386, 32.982098, 36.265892>,  <36.912758, 33.178596, 36.403221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901386, 32.982098, 36.265892>,  <36.882435, 32.654602, 36.037010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901386, 32.982098, 36.265892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868600, 0.316637, -0.381150,
		-0.493244, -0.478957, 0.726161,
		0.047375, 0.818744, 0.572202,
		36.915600, 33.227722, 36.437553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370392, 32.645691, 36.597206>,  <36.882435, 32.654602, 36.037010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370392, 32.645691, 36.597206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470333, 33.011189, 36.469059>,  <36.530300, 33.230488, 36.392170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470333, 33.011189, 36.469059>,  <36.370392, 32.645691, 36.597206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470333, 33.011189, 36.469059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859855, 0.057248, -0.507318,
		-0.445219, 0.402231, 0.799994,
		0.249857, 0.913747, -0.320372,
		36.545292, 33.285313, 36.372948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882809, 33.067753, 36.826790>,  <36.370392, 32.645691, 36.597206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882809, 33.067753, 36.826790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052826, 33.252197, 36.515224>,  <36.154839, 33.362865, 36.328285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052826, 33.252197, 36.515224>,  <35.882809, 33.067753, 36.826790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052826, 33.252197, 36.515224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894037, 0.079313, -0.440916,
		-0.141534, 0.883790, 0.445964,
		0.425048, 0.461113, -0.778915,
		36.180340, 33.390530, 36.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454323, 33.629402, 36.702862>,  <35.882809, 33.067753, 36.826790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454323, 33.629402, 36.702862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656242, 33.524868, 36.373768>,  <35.777393, 33.462147, 36.176311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656242, 33.524868, 36.373768>,  <35.454323, 33.629402, 36.702862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656242, 33.524868, 36.373768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843313, -0.352886, -0.405333,
		-0.184404, 0.898430, -0.398521,
		0.504795, -0.261333, -0.822731,
		35.807682, 33.446468, 36.126949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044277, 33.871433, 36.092442>,  <35.454323, 33.629402, 36.702862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044277, 33.871433, 36.092442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288788, 33.593925, 35.940113>,  <35.435493, 33.427422, 35.848717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288788, 33.593925, 35.940113>,  <35.044277, 33.871433, 36.092442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288788, 33.593925, 35.940113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691454, -0.234084, -0.683444,
		0.385005, 0.681097, -0.622798,
		0.611279, -0.693766, -0.380824,
		35.472172, 33.385796, 35.825867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933350, 33.892719, 35.359539>,  <35.044277, 33.871433, 36.092442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933350, 33.892719, 35.359539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113705, 33.545807, 35.443932>,  <35.221920, 33.337658, 35.494568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113705, 33.545807, 35.443932>,  <34.933350, 33.892719, 35.359539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113705, 33.545807, 35.443932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357245, -0.391967, -0.847784,
		0.817970, 0.306883, -0.486568,
		0.450889, -0.867285, 0.210985,
		35.248970, 33.285622, 35.507229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371193, 33.696274, 34.739571>,  <34.933350, 33.892719, 35.359539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371193, 33.696274, 34.739571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266148, 33.374714, 34.953030>,  <35.203121, 33.181778, 35.081104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266148, 33.374714, 34.953030>,  <35.371193, 33.696274, 34.739571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266148, 33.374714, 34.953030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138697, -0.515866, -0.845367,
		0.954881, -0.296019, 0.023974,
		-0.262612, -0.803900, 0.533648,
		35.187363, 33.133545, 35.113125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799500, 33.045181, 34.622192>,  <35.371193, 33.696274, 34.739571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799500, 33.045181, 34.622192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423100, 32.939167, 34.706352>,  <35.197258, 32.875557, 34.756847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423100, 32.939167, 34.706352>,  <35.799500, 33.045181, 34.622192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423100, 32.939167, 34.706352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023310, -0.569509, -0.821654,
		0.337593, -0.778084, 0.529732,
		-0.941003, -0.265037, 0.210399,
		35.140797, 32.859657, 34.769470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841782, 32.298912, 34.605282>,  <35.799500, 33.045181, 34.622192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841782, 32.298912, 34.605282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475052, 32.426594, 34.509327>,  <35.255016, 32.503204, 34.451752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475052, 32.426594, 34.509327>,  <35.841782, 32.298912, 34.605282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475052, 32.426594, 34.509327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058751, -0.486402, -0.871758,
		-0.394953, -0.813339, 0.427190,
		-0.916821, 0.319205, -0.239890,
		35.200005, 32.522354, 34.437359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280308, 31.777651, 34.475128>,  <35.841782, 32.298912, 34.605282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280308, 31.777651, 34.475128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223934, 32.115105, 34.267891>,  <35.190109, 32.317577, 34.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223934, 32.115105, 34.267891>,  <35.280308, 31.777651, 34.475128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223934, 32.115105, 34.267891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237880, -0.479128, -0.844896,
		-0.961015, -0.242321, -0.133157,
		-0.140936, 0.843633, -0.518093,
		35.181652, 32.368195, 34.112465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697731, 31.580637, 34.072727>,  <35.280308, 31.777651, 34.475128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697731, 31.580637, 34.072727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944904, 31.859068, 33.926506>,  <35.093208, 32.026127, 33.838772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944904, 31.859068, 33.926506>,  <34.697731, 31.580637, 34.072727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944904, 31.859068, 33.926506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100525, -0.531081, -0.841337,
		-0.779777, 0.483142, -0.398147,
		0.617933, 0.696079, -0.365557,
		35.130283, 32.067890, 33.816837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430012, 31.780251, 33.383713>,  <34.697731, 31.580637, 34.072727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430012, 31.780251, 33.383713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820141, 31.862080, 33.416927>,  <35.054218, 31.911177, 33.436855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820141, 31.862080, 33.416927>,  <34.430012, 31.780251, 33.383713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820141, 31.862080, 33.416927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167306, -0.439415, -0.882566,
		-0.144061, 0.874680, -0.462798,
		0.975323, 0.204572, 0.083037,
		35.112740, 31.923450, 33.441837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702377, 32.269405, 32.863281>,  <34.430012, 31.780251, 33.383713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702377, 32.269405, 32.863281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964397, 31.986526, 32.969700>,  <35.121609, 31.816799, 33.033550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964397, 31.986526, 32.969700>,  <34.702377, 32.269405, 32.863281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964397, 31.986526, 32.969700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067951, -0.295545, -0.952909,
		0.752523, 0.642282, -0.145542,
		0.655051, -0.707196, 0.266048,
		35.160912, 31.774368, 33.049515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175591, 32.213501, 32.267193>,  <34.702377, 32.269405, 32.863281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175591, 32.213501, 32.267193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222622, 31.876230, 32.477043>,  <35.250843, 31.673868, 32.602951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222622, 31.876230, 32.477043>,  <35.175591, 32.213501, 32.267193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222622, 31.876230, 32.477043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277816, -0.479263, -0.832542,
		0.953411, 0.243640, 0.177895,
		0.117582, -0.843177, 0.524622,
		35.257896, 31.623278, 32.634430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582390, 31.709948, 31.888796>,  <35.175591, 32.213501, 32.267193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582390, 31.709948, 31.888796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428211, 31.445366, 32.146137>,  <35.335705, 31.286617, 32.300541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428211, 31.445366, 32.146137>,  <35.582390, 31.709948, 31.888796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428211, 31.445366, 32.146137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099829, -0.663243, -0.741716,
		0.917313, -0.350120, 0.189614,
		-0.385450, -0.661456, 0.643353,
		35.312576, 31.246929, 32.339142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032223, 31.077467, 31.879332>,  <35.582390, 31.709948, 31.888796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032223, 31.077467, 31.879332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657841, 30.986830, 31.987137>,  <35.433212, 30.932447, 32.051819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657841, 30.986830, 31.987137>,  <36.032223, 31.077467, 31.879332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657841, 30.986830, 31.987137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093063, -0.579011, -0.809991,
		0.339593, -0.783199, 0.520842,
		-0.935957, -0.226596, 0.269515,
		35.377052, 30.918852, 32.067993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863380, 30.321505, 31.882404>,  <36.032223, 31.077467, 31.879332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863380, 30.321505, 31.882404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499741, 30.486050, 31.856117>,  <35.281555, 30.584778, 31.840345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499741, 30.486050, 31.856117>,  <35.863380, 30.321505, 31.882404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499741, 30.486050, 31.856117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232014, -0.631006, -0.740271,
		-0.345989, -0.657732, 0.669089,
		-0.909099, 0.411364, -0.065719,
		35.227013, 30.609459, 31.836401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285179, 29.859200, 31.920691>,  <35.863380, 30.321505, 31.882404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285179, 29.859200, 31.920691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172611, 30.168020, 31.692747>,  <35.105068, 30.353313, 31.555981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172611, 30.168020, 31.692747>,  <35.285179, 29.859200, 31.920691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172611, 30.168020, 31.692747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368554, -0.635275, -0.678670,
		-0.885984, 0.019030, 0.463325,
		-0.281424, 0.772051, -0.569857,
		35.088184, 30.399635, 31.521790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561855, 29.829020, 32.006065>,  <35.285179, 29.859200, 31.920691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561855, 29.829020, 32.006065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739594, 29.950569, 31.668968>,  <34.846237, 30.023499, 31.466709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739594, 29.950569, 31.668968>,  <34.561855, 29.829020, 32.006065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739594, 29.950569, 31.668968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327289, -0.820623, -0.468466,
		-0.833930, 0.483981, -0.265184,
		0.444344, 0.303876, -0.842744,
		34.872898, 30.041733, 31.416145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079288, 29.314932, 31.643629>,  <34.561855, 29.829020, 32.006065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079288, 29.314932, 31.643629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423992, 29.240332, 31.454908>,  <34.630814, 29.195572, 31.341677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423992, 29.240332, 31.454908>,  <34.079288, 29.314932, 31.643629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423992, 29.240332, 31.454908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113278, 0.977234, -0.179392,
		0.494517, 0.101147, 0.863263,
		0.861755, -0.186501, -0.471801,
		34.682518, 29.184381, 31.313368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691860, 28.753490, 31.161583>,  <34.079288, 29.314932, 31.643629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691860, 28.753490, 31.161583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293388, 28.742685, 31.128344>,  <33.054306, 28.736202, 31.108400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293388, 28.742685, 31.128344>,  <33.691860, 28.753490, 31.161583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293388, 28.742685, 31.128344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079417, 0.116688, -0.989988,
		0.036437, -0.992801, -0.114096,
		-0.996175, -0.027011, -0.083097,
		32.994537, 28.734581, 31.103415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471497, 28.169426, 30.857866>,  <33.691860, 28.753490, 31.161583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471497, 28.169426, 30.857866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224258, 28.473902, 30.779325>,  <33.075916, 28.656588, 30.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224258, 28.473902, 30.779325>,  <33.471497, 28.169426, 30.857866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224258, 28.473902, 30.779325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163040, -0.120216, -0.979268,
		-0.769011, -0.637293, -0.049799,
		-0.618094, 0.761187, -0.196351,
		33.038830, 28.702257, 30.720421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599972, 28.048822, 30.263117>,  <33.471497, 28.169426, 30.857866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599972, 28.048822, 30.263117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366257, 28.372766, 30.242214>,  <33.226028, 28.567133, 30.229671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366257, 28.372766, 30.242214>,  <33.599972, 28.048822, 30.263117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366257, 28.372766, 30.242214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114547, 0.018551, -0.993245,
		-0.803419, -0.586331, -0.103607,
		-0.584292, 0.809860, -0.052258,
		33.190968, 28.615725, 30.226538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097633, 27.872152, 29.782887>,  <33.599972, 28.048822, 30.263117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097633, 27.872152, 29.782887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154770, 28.268042, 29.780306>,  <33.189053, 28.505575, 29.778757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154770, 28.268042, 29.780306>,  <33.097633, 27.872152, 29.782887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154770, 28.268042, 29.780306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102500, -0.021275, -0.994505,
		-0.984423, 0.141399, -0.104486,
		0.142845, 0.989724, -0.006450,
		33.197624, 28.564959, 29.778370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614571, 28.044182, 29.222500>,  <33.097633, 27.872152, 29.782887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614571, 28.044182, 29.222500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898323, 28.321609, 29.272688>,  <33.068573, 28.488066, 29.302801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898323, 28.321609, 29.272688>,  <32.614571, 28.044182, 29.222500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898323, 28.321609, 29.272688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133582, 0.042490, -0.990127,
		-0.692052, 0.719136, -0.062506,
		0.709380, 0.693569, 0.125469,
		33.111137, 28.529680, 29.310329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411179, 28.517752, 28.748556>,  <32.614571, 28.044182, 29.222500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411179, 28.517752, 28.748556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790928, 28.616682, 28.826044>,  <33.018776, 28.676041, 28.872538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790928, 28.616682, 28.826044>,  <32.411179, 28.517752, 28.748556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790928, 28.616682, 28.826044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144663, 0.203208, -0.968390,
		-0.278874, 0.947384, 0.157140,
		0.949369, 0.247327, 0.193721,
		33.075737, 28.690880, 28.884161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521076, 29.041618, 28.341518>,  <32.411179, 28.517752, 28.748556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521076, 29.041618, 28.341518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883991, 28.891018, 28.416430>,  <33.101742, 28.800657, 28.461376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883991, 28.891018, 28.416430>,  <32.521076, 29.041618, 28.341518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883991, 28.891018, 28.416430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231827, 0.076275, -0.969762,
		0.350832, 0.923271, 0.156486,
		0.907289, -0.376501, 0.187280,
		33.156178, 28.778069, 28.472614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972816, 29.437368, 27.928854>,  <32.521076, 29.041618, 28.341518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972816, 29.437368, 27.928854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161995, 29.090454, 27.990995>,  <33.275501, 28.882305, 28.028280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161995, 29.090454, 27.990995>,  <32.972816, 29.437368, 27.928854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161995, 29.090454, 27.990995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284056, -0.016822, -0.958660,
		0.834047, 0.497523, 0.238402,
		0.472945, -0.867288, 0.155355,
		33.303879, 28.830267, 28.037601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577576, 29.585329, 27.591902>,  <32.972816, 29.437368, 27.928854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577576, 29.585329, 27.591902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588421, 29.189100, 27.645615>,  <33.594929, 28.951363, 27.677841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588421, 29.189100, 27.645615>,  <33.577576, 29.585329, 27.591902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588421, 29.189100, 27.645615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350087, -0.116414, -0.929455,
		0.936325, 0.072206, 0.343630,
		0.027109, -0.990573, 0.134280,
		33.596554, 28.891928, 27.685898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163151, 29.360491, 27.216858>,  <33.577576, 29.585329, 27.591902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163151, 29.360491, 27.216858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956287, 29.022152, 27.269150>,  <33.832169, 28.819149, 27.300524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956287, 29.022152, 27.269150>,  <34.163151, 29.360491, 27.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956287, 29.022152, 27.269150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116998, -0.221169, -0.968192,
		0.847856, -0.485412, 0.213342,
		-0.517157, -0.845848, 0.130728,
		33.801140, 28.768398, 27.308369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539574, 28.869265, 26.905722>,  <34.163151, 29.360491, 27.216858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539574, 28.869265, 26.905722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176460, 28.701962, 26.918251>,  <33.958591, 28.601580, 26.925768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176460, 28.701962, 26.918251>,  <34.539574, 28.869265, 26.905722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176460, 28.701962, 26.918251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130564, -0.352760, -0.926560,
		0.398592, -0.837030, 0.374841,
		-0.907787, -0.418260, 0.031321,
		33.904125, 28.576483, 26.927647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534603, 28.246405, 26.610880>,  <34.539574, 28.869265, 26.905722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534603, 28.246405, 26.610880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141430, 28.318924, 26.598343>,  <33.905525, 28.362434, 26.590820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141430, 28.318924, 26.598343>,  <34.534603, 28.246405, 26.610880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141430, 28.318924, 26.598343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033966, -0.346225, -0.937536,
		-0.180822, -0.920467, 0.346473,
		-0.982929, 0.181296, -0.031341,
		33.846550, 28.373312, 26.588940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201225, 27.638536, 26.267130>,  <34.534603, 28.246405, 26.610880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201225, 27.638536, 26.267130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963509, 27.953680, 26.202511>,  <33.820881, 28.142767, 26.163740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963509, 27.953680, 26.202511>,  <34.201225, 27.638536, 26.267130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963509, 27.953680, 26.202511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085568, -0.261665, -0.961358,
		-0.799687, -0.557501, 0.222920,
		-0.594289, 0.787860, -0.161546,
		33.785221, 28.190039, 26.154047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739620, 27.345297, 25.881872>,  <34.201225, 27.638536, 26.267130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739620, 27.345297, 25.881872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671696, 27.735172, 25.823704>,  <33.630939, 27.969097, 25.788803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671696, 27.735172, 25.823704>,  <33.739620, 27.345297, 25.881872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671696, 27.735172, 25.823704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022237, -0.151317, -0.988235,
		-0.985225, -0.164582, 0.047370,
		-0.169814, 0.974687, -0.145421,
		33.620750, 28.027578, 25.780077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231640, 27.479214, 25.429245>,  <33.739620, 27.345297, 25.881872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231640, 27.479214, 25.429245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469418, 27.798740, 25.392305>,  <33.612083, 27.990456, 25.370142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469418, 27.798740, 25.392305>,  <33.231640, 27.479214, 25.429245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469418, 27.798740, 25.392305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069383, -0.063465, -0.995569,
		-0.801136, 0.598220, 0.017697,
		0.594447, 0.798815, -0.092350,
		33.647751, 28.038385, 25.364601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003342, 27.921812, 24.846773>,  <33.231640, 27.479214, 25.429245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003342, 27.921812, 24.846773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385181, 28.023558, 24.908785>,  <33.614285, 28.084606, 24.945992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385181, 28.023558, 24.908785>,  <33.003342, 27.921812, 24.846773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385181, 28.023558, 24.908785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146943, 0.050608, -0.987849,
		-0.259120, 0.965783, 0.010933,
		0.954602, 0.254365, 0.155029,
		33.671562, 28.099867, 24.955294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095264, 28.438799, 24.366247>,  <33.003342, 27.921812, 24.846773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095264, 28.438799, 24.366247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463886, 28.324057, 24.470898>,  <33.685059, 28.255211, 24.533688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463886, 28.324057, 24.470898>,  <33.095264, 28.438799, 24.366247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463886, 28.324057, 24.470898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330478, 0.225926, -0.916374,
		0.203759, 0.930952, 0.303003,
		0.921557, -0.286855, 0.261625,
		33.740353, 28.238001, 24.549385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502026, 29.086922, 24.200235>,  <33.095264, 28.438799, 24.366247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502026, 29.086922, 24.200235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731201, 28.759132, 24.206026>,  <33.868706, 28.562460, 24.209501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731201, 28.759132, 24.206026>,  <33.502026, 29.086922, 24.200235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731201, 28.759132, 24.206026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373547, 0.245362, -0.894573,
		0.729524, 0.517943, 0.446688,
		0.572938, -0.819471, 0.014479,
		33.903084, 28.513290, 24.210369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132648, 29.350084, 23.867371>,  <33.502026, 29.086922, 24.200235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132648, 29.350084, 23.867371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162830, 28.952185, 23.839703>,  <34.180939, 28.713446, 23.823103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162830, 28.952185, 23.839703>,  <34.132648, 29.350084, 23.867371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162830, 28.952185, 23.839703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460911, 0.096306, -0.882205,
		0.884233, 0.034689, 0.465757,
		0.075458, -0.994747, -0.069168,
		34.185467, 28.653761, 23.818953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646145, 29.284142, 23.517757>,  <34.132648, 29.350084, 23.867371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646145, 29.284142, 23.517757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501656, 28.913454, 23.476357>,  <34.414963, 28.691042, 23.451517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501656, 28.913454, 23.476357>,  <34.646145, 29.284142, 23.517757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501656, 28.913454, 23.476357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166248, 0.045213, -0.985047,
		0.917541, -0.373027, 0.137733,
		-0.361222, -0.926718, -0.103500,
		34.393288, 28.635439, 23.445307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116299, 28.979662, 23.070137>,  <34.646145, 29.284142, 23.517757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116299, 28.979662, 23.070137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776447, 28.770821, 23.040386>,  <34.572536, 28.645515, 23.022535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776447, 28.770821, 23.040386>,  <35.116299, 28.979662, 23.070137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776447, 28.770821, 23.040386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010234, 0.124687, -0.992143,
		0.527277, -0.843718, -0.100595,
		-0.849632, -0.522105, -0.074379,
		34.521557, 28.614189, 23.018072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242748, 28.608372, 22.456186>,  <35.116299, 28.979662, 23.070137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242748, 28.608372, 22.456186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847263, 28.624197, 22.513985>,  <34.609970, 28.633692, 22.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847263, 28.624197, 22.513985>,  <35.242748, 28.608372, 22.456186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847263, 28.624197, 22.513985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136288, 0.162988, -0.977170,
		-0.062209, -0.985835, -0.155756,
		-0.988714, 0.039561, 0.144497,
		34.550648, 28.636066, 22.557333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839684, 28.155905, 21.865019>,  <35.242748, 28.608372, 22.456186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839684, 28.155905, 21.865019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566792, 28.396816, 22.030828>,  <34.403057, 28.541363, 22.130314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566792, 28.396816, 22.030828>,  <34.839684, 28.155905, 21.865019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566792, 28.396816, 22.030828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432312, 0.124936, -0.893027,
		-0.589640, -0.788449, 0.175137,
		-0.682226, 0.602278, 0.414523,
		34.362125, 28.577499, 22.155186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278625, 27.873093, 21.730669>,  <34.839684, 28.155905, 21.865019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278625, 27.873093, 21.730669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216808, 28.264748, 21.783442>,  <34.179718, 28.499741, 21.815105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216808, 28.264748, 21.783442>,  <34.278625, 27.873093, 21.730669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216808, 28.264748, 21.783442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436434, 0.052143, -0.898224,
		-0.886365, -0.196391, 0.419271,
		-0.154541, 0.979138, 0.131930,
		34.170444, 28.558489, 21.823021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462933, 28.044230, 21.604239>,  <34.278625, 27.873093, 21.730669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462933, 28.044230, 21.604239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667702, 28.386885, 21.578598>,  <33.790562, 28.592478, 21.563213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667702, 28.386885, 21.578598>,  <33.462933, 28.044230, 21.604239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667702, 28.386885, 21.578598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409246, 0.177591, -0.894974,
		-0.755285, 0.484389, 0.441488,
		0.511920, 0.856638, -0.064102,
		33.821278, 28.643875, 21.559368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039478, 28.536148, 21.447052>,  <33.462933, 28.044230, 21.604239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039478, 28.536148, 21.447052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381298, 28.700211, 21.319601>,  <33.586388, 28.798649, 21.243132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381298, 28.700211, 21.319601>,  <33.039478, 28.536148, 21.447052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381298, 28.700211, 21.319601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428270, 0.209402, -0.879054,
		-0.293828, 0.887650, 0.354601,
		0.854546, 0.410156, -0.318626,
		33.637661, 28.823257, 21.224012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990337, 29.238232, 21.296371>,  <33.039478, 28.536148, 21.447052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990337, 29.238232, 21.296371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300446, 29.123884, 21.071075>,  <33.486511, 29.055275, 20.935898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300446, 29.123884, 21.071075>,  <32.990337, 29.238232, 21.296371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300446, 29.123884, 21.071075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538594, 0.166642, -0.825921,
		0.329964, 0.943668, -0.024774,
		0.775267, -0.285868, -0.563241,
		33.533028, 29.038124, 20.902103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895279, 29.665432, 20.682667>,  <32.990337, 29.238232, 21.296371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895279, 29.665432, 20.682667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185310, 29.421606, 20.554480>,  <33.359329, 29.275311, 20.477568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185310, 29.421606, 20.554480>,  <32.895279, 29.665432, 20.682667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185310, 29.421606, 20.554480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434505, -0.043896, -0.899599,
		0.534296, 0.791520, -0.296687,
		0.725074, -0.609564, -0.320466,
		33.402832, 29.238737, 20.458340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021954, 29.872004, 20.073521>,  <32.895279, 29.665432, 20.682667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021954, 29.872004, 20.073521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226658, 29.528788, 20.056206>,  <33.349480, 29.322859, 20.045816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226658, 29.528788, 20.056206>,  <33.021954, 29.872004, 20.073521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226658, 29.528788, 20.056206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210629, -0.076461, -0.974571,
		0.832911, 0.507860, -0.219857,
		0.511756, -0.858040, -0.043285,
		33.380184, 29.271376, 20.043221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524921, 30.040657, 19.727892>,  <33.021954, 29.872004, 20.073521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524921, 30.040657, 19.727892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484509, 29.643568, 19.701687>,  <33.460262, 29.405313, 19.685965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484509, 29.643568, 19.701687>,  <33.524921, 30.040657, 19.727892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484509, 29.643568, 19.701687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021570, 0.063647, -0.997739,
		0.994650, -0.102214, 0.014983,
		-0.101029, -0.992724, -0.065511,
		33.454201, 29.345751, 19.682034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962894, 29.771143, 19.206247>,  <33.524921, 30.040657, 19.727892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962894, 29.771143, 19.206247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678314, 29.493027, 19.247042>,  <33.507565, 29.326157, 19.271519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678314, 29.493027, 19.247042>,  <33.962894, 29.771143, 19.206247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678314, 29.493027, 19.247042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103000, -0.040386, -0.993861,
		0.695143, -0.717591, -0.042883,
		-0.711454, -0.695293, 0.101986,
		33.464878, 29.284439, 19.277637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151726, 29.106928, 18.763159>,  <33.962894, 29.771143, 19.206247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151726, 29.106928, 18.763159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756714, 29.118952, 18.824968>,  <33.519707, 29.126165, 18.862055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756714, 29.118952, 18.824968>,  <34.151726, 29.106928, 18.763159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756714, 29.118952, 18.824968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157267, -0.231685, -0.959994,
		0.006945, -0.972326, 0.233524,
		-0.987532, 0.030058, 0.154524,
		33.460453, 29.127970, 18.871325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927517, 28.492470, 18.561295>,  <34.151726, 29.106928, 18.763159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927517, 28.492470, 18.561295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633301, 28.761141, 18.525888>,  <33.456772, 28.922344, 18.504644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633301, 28.761141, 18.525888>,  <33.927517, 28.492470, 18.561295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633301, 28.761141, 18.525888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085467, -0.221601, -0.971385,
		-0.672073, -0.706924, 0.220402,
		-0.735536, 0.671678, -0.088513,
		33.412640, 28.962645, 18.499334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502308, 28.214869, 17.971874>,  <33.927517, 28.492470, 18.561295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502308, 28.214869, 17.971874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371094, 28.590246, 18.015167>,  <33.292366, 28.815474, 18.041143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371094, 28.590246, 18.015167>,  <33.502308, 28.214869, 17.971874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371094, 28.590246, 18.015167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137010, 0.066095, -0.988362,
		-0.934676, -0.339049, 0.106894,
		-0.328038, 0.938444, 0.108231,
		33.272682, 28.871778, 18.047636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919647, 28.313618, 17.473019>,  <33.502308, 28.214869, 17.971874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919647, 28.313618, 17.473019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002815, 28.694538, 17.562368>,  <33.052715, 28.923090, 17.615978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002815, 28.694538, 17.562368>,  <32.919647, 28.313618, 17.473019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002815, 28.694538, 17.562368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135350, 0.254178, -0.957640,
		-0.968737, 0.168875, 0.181742,
		0.207916, 0.952299, 0.223374,
		33.065189, 28.980228, 17.629381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466141, 28.745693, 17.031445>,  <32.919647, 28.313618, 17.473019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466141, 28.745693, 17.031445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751045, 28.990133, 17.169569>,  <32.921989, 29.136797, 17.252443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751045, 28.990133, 17.169569>,  <32.466141, 28.745693, 17.031445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751045, 28.990133, 17.169569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031526, 0.519312, -0.854003,
		-0.701206, 0.597387, 0.389151,
		0.712261, 0.611101, 0.345312,
		32.964722, 29.173464, 17.273163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287430, 29.367170, 16.726097>,  <32.466141, 28.745693, 17.031445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287430, 29.367170, 16.726097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655743, 29.441957, 16.863033>,  <32.876732, 29.486830, 16.945194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655743, 29.441957, 16.863033>,  <32.287430, 29.367170, 16.726097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655743, 29.441957, 16.863033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164230, 0.610237, -0.775009,
		-0.353811, 0.769840, 0.531192,
		0.920786, 0.186969, 0.342339,
		32.931980, 29.498049, 16.965734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388100, 30.044506, 16.591230>,  <32.287430, 29.367170, 16.726097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388100, 30.044506, 16.591230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750530, 29.876871, 16.614548>,  <32.967987, 29.776291, 16.628538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750530, 29.876871, 16.614548>,  <32.388100, 30.044506, 16.591230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750530, 29.876871, 16.614548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298057, 0.534384, -0.790946,
		0.300323, 0.734030, 0.609103,
		0.906073, -0.419087, 0.058295,
		33.022350, 29.751144, 16.632036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834000, 30.598677, 16.749352>,  <32.388100, 30.044506, 16.591230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834000, 30.598677, 16.749352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053669, 30.319626, 16.565296>,  <33.185471, 30.152195, 16.454863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053669, 30.319626, 16.565296>,  <32.834000, 30.598677, 16.749352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053669, 30.319626, 16.565296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136826, 0.618221, -0.774003,
		0.824432, 0.362102, 0.434963,
		0.549172, -0.697628, -0.460137,
		33.218422, 30.110338, 16.427256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236347, 30.966423, 16.318975>,  <32.834000, 30.598677, 16.749352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236347, 30.966423, 16.318975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303864, 30.593493, 16.191053>,  <33.344376, 30.369734, 16.114300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303864, 30.593493, 16.191053>,  <33.236347, 30.966423, 16.318975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303864, 30.593493, 16.191053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113765, 0.340721, -0.933256,
		0.979064, 0.121146, 0.163578,
		0.168795, -0.932327, -0.319805,
		33.354504, 30.313795, 16.095112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896126, 30.966131, 16.035273>,  <33.236347, 30.966423, 16.318975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896126, 30.966131, 16.035273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660484, 30.685059, 15.875677>,  <33.519100, 30.516415, 15.779920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660484, 30.685059, 15.875677>,  <33.896126, 30.966131, 16.035273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660484, 30.685059, 15.875677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134533, 0.401584, -0.905887,
		0.796779, -0.587339, -0.142040,
		-0.589104, -0.702683, -0.398990,
		33.483753, 30.474255, 15.755980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125572, 30.874178, 15.286660>,  <33.896126, 30.966131, 16.035273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125572, 30.874178, 15.286660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769753, 30.692011, 15.272224>,  <33.556263, 30.582710, 15.263563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769753, 30.692011, 15.272224>,  <34.125572, 30.874178, 15.286660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769753, 30.692011, 15.272224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131018, 0.329995, -0.934846,
		0.437655, -0.826861, -0.353214,
		-0.889546, -0.455417, -0.036090,
		33.502888, 30.555386, 15.261397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077534, 30.541275, 14.664521>,  <34.125572, 30.874178, 15.286660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077534, 30.541275, 14.664521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703037, 30.596916, 14.793586>,  <33.478340, 30.630301, 14.871024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703037, 30.596916, 14.793586>,  <34.077534, 30.541275, 14.664521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703037, 30.596916, 14.793586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279826, 0.260193, -0.924120,
		-0.212501, -0.955485, -0.204678,
		-0.936237, 0.139102, 0.322661,
		33.422165, 30.638647, 14.890384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598076, 30.246067, 14.112165>,  <34.077534, 30.541275, 14.664521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598076, 30.246067, 14.112165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399826, 30.521294, 14.324171>,  <33.280876, 30.686430, 14.451375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399826, 30.521294, 14.324171>,  <33.598076, 30.246067, 14.112165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399826, 30.521294, 14.324171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228050, 0.485732, -0.843835,
		-0.838061, -0.539097, -0.083828,
		-0.495627, 0.688068, 0.530015,
		33.251137, 30.727715, 14.483175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157024, 30.554087, 13.659588>,  <33.598076, 30.246067, 14.112165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157024, 30.554087, 13.659588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154602, 30.824261, 13.954545>,  <33.153149, 30.986366, 14.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154602, 30.824261, 13.954545>,  <33.157024, 30.554087, 13.659588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154602, 30.824261, 13.954545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413894, 0.669583, -0.616725,
		-0.910305, -0.308938, 0.275503,
		-0.006058, 0.675437, 0.737393,
		33.152786, 31.026892, 14.175763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424244, 30.693943, 13.845728>,  <33.157024, 30.554087, 13.659588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424244, 30.693943, 13.845728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678898, 30.998100, 13.897117>,  <32.831688, 31.180595, 13.927950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678898, 30.998100, 13.897117>,  <32.424244, 30.693943, 13.845728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678898, 30.998100, 13.897117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481186, 0.521870, -0.704352,
		-0.602629, 0.386594, 0.698128,
		0.636631, 0.760392, 0.128471,
		32.869888, 31.226217, 13.935658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014332, 31.355844, 13.924941>,  <32.424244, 30.693943, 13.845728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014332, 31.355844, 13.924941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376099, 31.391436, 13.758037>,  <32.593159, 31.412790, 13.657894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376099, 31.391436, 13.758037>,  <32.014332, 31.355844, 13.924941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376099, 31.391436, 13.758037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407823, 0.467576, -0.784253,
		0.125320, 0.879463, 0.459172,
		0.904420, 0.088978, -0.417262,
		32.647423, 31.418129, 13.632858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018585, 31.951002, 13.665260>,  <32.014332, 31.355844, 13.924941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018585, 31.951002, 13.665260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300289, 31.783199, 13.436163>,  <32.469311, 31.682518, 13.298705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300289, 31.783199, 13.436163>,  <32.018585, 31.951002, 13.665260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300289, 31.783199, 13.436163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373525, 0.467107, -0.801430,
		0.603737, 0.778348, 0.172269,
		0.704259, -0.419506, -0.572743,
		32.511566, 31.657347, 13.264340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502918, 32.331875, 13.393927>,  <32.018585, 31.951002, 13.665260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502918, 32.331875, 13.393927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480801, 32.019333, 13.145272>,  <32.467529, 31.831808, 12.996079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480801, 32.019333, 13.145272>,  <32.502918, 32.331875, 13.393927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480801, 32.019333, 13.145272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326177, 0.602566, -0.728370,
		0.943690, 0.162492, -0.288175,
		-0.055290, -0.781352, -0.621637,
		32.464214, 31.784927, 12.958781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968433, 32.467999, 12.870399>,  <32.502918, 32.331875, 13.393927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968433, 32.467999, 12.870399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678467, 32.236549, 12.720901>,  <32.504486, 32.097679, 12.631202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678467, 32.236549, 12.720901>,  <32.968433, 32.467999, 12.870399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678467, 32.236549, 12.720901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287170, 0.747041, -0.599552,
		0.626119, -0.327299, -0.707708,
		-0.724919, -0.578624, -0.373746,
		32.460991, 32.062962, 12.608776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998093, 32.227726, 12.184729>,  <32.968433, 32.467999, 12.870399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998093, 32.227726, 12.184729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610806, 32.277660, 12.271426>,  <32.378433, 32.307621, 12.323445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610806, 32.277660, 12.271426>,  <32.998093, 32.227726, 12.184729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610806, 32.277660, 12.271426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073195, 0.687201, -0.722771,
		-0.239176, -0.715661, -0.656220,
		-0.968213, 0.124837, 0.216745,
		32.320343, 32.315113, 12.336450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683411, 32.391453, 11.904937>,  <32.998093, 32.227726, 12.184729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683411, 32.391453, 11.904937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028187, 32.495609, 12.078948>,  <34.235054, 32.558102, 12.183354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028187, 32.495609, 12.078948>,  <33.683411, 32.391453, 11.904937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028187, 32.495609, 12.078948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505068, 0.366111, 0.781581,
		0.044247, -0.893398, 0.447082,
		0.861945, 0.260389, 0.435028,
		34.286770, 32.573727, 12.209456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903057, 32.040226, 12.559305>,  <33.683411, 32.391453, 11.904937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903057, 32.040226, 12.559305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045010, 32.413658, 12.539352>,  <34.130180, 32.637718, 12.527381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045010, 32.413658, 12.539352>,  <33.903057, 32.040226, 12.559305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045010, 32.413658, 12.539352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588407, 0.264494, 0.764082,
		0.726525, -0.241805, 0.643188,
		0.354878, 0.933581, -0.049882,
		34.151474, 32.693733, 12.524387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467667, 32.331532, 13.058667>,  <33.903057, 32.040226, 12.559305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467667, 32.331532, 13.058667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199726, 32.595383, 12.922318>,  <34.038963, 32.753693, 12.840508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199726, 32.595383, 12.922318>,  <34.467667, 32.331532, 13.058667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199726, 32.595383, 12.922318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374471, 0.096303, 0.922224,
		0.641148, 0.745401, 0.182502,
		-0.669851, 0.659624, -0.340875,
		33.998772, 32.793270, 12.820055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545433, 33.028652, 13.388964>,  <34.467667, 32.331532, 13.058667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545433, 33.028652, 13.388964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184601, 32.901184, 13.272544>,  <33.968102, 32.824703, 13.202692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184601, 32.901184, 13.272544>,  <34.545433, 33.028652, 13.388964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184601, 32.901184, 13.272544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386898, 0.298298, 0.872541,
		-0.191230, 0.899705, -0.392379,
		-0.902076, -0.318667, -0.291050,
		33.913979, 32.805584, 13.185228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063499, 33.581268, 13.621229>,  <34.545433, 33.028652, 13.388964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063499, 33.581268, 13.621229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873215, 33.237728, 13.545252>,  <33.759045, 33.031605, 13.499665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873215, 33.237728, 13.545252>,  <34.063499, 33.581268, 13.621229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873215, 33.237728, 13.545252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729006, 0.264133, 0.631494,
		-0.492186, 0.438881, -0.751756,
		-0.475714, -0.858847, -0.189944,
		33.730499, 32.980076, 13.488269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369038, 33.579082, 13.226898>,  <34.063499, 33.581268, 13.621229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369038, 33.579082, 13.226898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414200, 33.301659, 13.511496>,  <33.441296, 33.135204, 13.682254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414200, 33.301659, 13.511496>,  <33.369038, 33.579082, 13.226898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414200, 33.301659, 13.511496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647655, 0.491678, 0.582061,
		-0.753522, -0.526518, -0.393679,
		0.112902, -0.693564, 0.711492,
		33.448071, 33.093590, 13.724943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684185, 33.362247, 13.439481>,  <33.369038, 33.579082, 13.226898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684185, 33.362247, 13.439481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932304, 33.289623, 13.744704>,  <33.081177, 33.246048, 13.927838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932304, 33.289623, 13.744704>,  <32.684185, 33.362247, 13.439481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932304, 33.289623, 13.744704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614819, 0.491541, 0.616754,
		-0.487055, -0.851717, 0.193275,
		0.620302, -0.181564, 0.763059,
		33.118397, 33.235153, 13.973622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221329, 33.249622, 14.025337>,  <32.684185, 33.362247, 13.439481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221329, 33.249622, 14.025337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560398, 33.319283, 14.225785>,  <32.763840, 33.361076, 14.346054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560398, 33.319283, 14.225785>,  <32.221329, 33.249622, 14.025337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560398, 33.319283, 14.225785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520945, 0.451867, 0.724177,
		-0.100327, -0.874922, 0.473757,
		0.847674, 0.174147, 0.501121,
		32.814701, 33.371529, 14.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130306, 32.962200, 14.723536>,  <32.221329, 33.249622, 14.025337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130306, 32.962200, 14.723536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421734, 33.232800, 14.766479>,  <32.596592, 33.395161, 14.792246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421734, 33.232800, 14.766479>,  <32.130306, 32.962200, 14.723536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421734, 33.232800, 14.766479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449940, 0.354489, 0.819690,
		0.516466, -0.645508, 0.562657,
		0.728572, 0.676504, 0.107359,
		32.640305, 33.435749, 14.798688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320850, 32.989605, 15.381368>,  <32.130306, 32.962200, 14.723536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320850, 32.989605, 15.381368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445763, 33.352909, 15.269984>,  <32.520710, 33.570892, 15.203154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445763, 33.352909, 15.269984>,  <32.320850, 32.989605, 15.381368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445763, 33.352909, 15.269984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312185, 0.374952, 0.872898,
		0.897231, -0.185656, 0.400636,
		0.312278, 0.908263, -0.278460,
		32.539448, 33.625389, 15.186446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705059, 33.146725, 15.943351>,  <32.320850, 32.989605, 15.381368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705059, 33.146725, 15.943351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662228, 33.487160, 15.737756>,  <32.636528, 33.691422, 15.614399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662228, 33.487160, 15.737756>,  <32.705059, 33.146725, 15.943351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662228, 33.487160, 15.737756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156917, 0.496013, 0.854019,
		0.981790, 0.172102, 0.080437,
		-0.107080, 0.851088, -0.513987,
		32.630104, 33.742485, 15.583560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205715, 33.588001, 16.233053>,  <32.705059, 33.146725, 15.943351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205715, 33.588001, 16.233053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925083, 33.807892, 16.051689>,  <32.756702, 33.939827, 15.942870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925083, 33.807892, 16.051689>,  <33.205715, 33.588001, 16.233053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925083, 33.807892, 16.051689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294313, 0.355941, 0.886953,
		0.648971, 0.755715, -0.087929,
		-0.701581, 0.549728, -0.453412,
		32.714607, 33.972809, 15.915666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353527, 34.286953, 16.531446>,  <33.205715, 33.588001, 16.233053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353527, 34.286953, 16.531446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993324, 34.286674, 16.357510>,  <32.777203, 34.286507, 16.253147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993324, 34.286674, 16.357510>,  <33.353527, 34.286953, 16.531446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993324, 34.286674, 16.357510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405231, 0.364046, 0.838605,
		0.157723, 0.931381, -0.328106,
		-0.900506, -0.000692, -0.434842,
		32.723171, 34.286469, 16.227057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109474, 34.909988, 16.661871>,  <33.353527, 34.286953, 16.531446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109474, 34.909988, 16.661871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829277, 34.626068, 16.632200>,  <32.661160, 34.455715, 16.614397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829277, 34.626068, 16.632200>,  <33.109474, 34.909988, 16.661871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829277, 34.626068, 16.632200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370088, 0.272417, 0.888157,
		-0.610204, 0.649598, -0.453512,
		-0.700490, -0.709796, -0.074178,
		32.619129, 34.413128, 16.609947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679493, 35.097912, 17.151106>,  <33.109474, 34.909988, 16.661871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679493, 35.097912, 17.151106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511776, 34.745708, 17.062651>,  <32.411148, 34.534386, 17.009577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511776, 34.745708, 17.062651>,  <32.679493, 35.097912, 17.151106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511776, 34.745708, 17.062651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180957, -0.157638, 0.970775,
		-0.889635, 0.447053, -0.093238,
		-0.419290, -0.880508, -0.221138,
		32.385990, 34.481556, 16.996309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071980, 35.093536, 17.447069>,  <32.679493, 35.097912, 17.151106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071980, 35.093536, 17.447069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181473, 34.714790, 17.379515>,  <32.247169, 34.487545, 17.338982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181473, 34.714790, 17.379515>,  <32.071980, 35.093536, 17.447069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181473, 34.714790, 17.379515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173235, -0.221259, 0.959705,
		-0.946075, -0.233450, -0.224596,
		0.273737, -0.946861, -0.168886,
		32.263596, 34.430733, 17.328850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578892, 34.729912, 17.804743>,  <32.071980, 35.093536, 17.447069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578892, 34.729912, 17.804743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908499, 34.507996, 17.758783>,  <32.106262, 34.374847, 17.731207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908499, 34.507996, 17.758783>,  <31.578892, 34.729912, 17.804743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908499, 34.507996, 17.758783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064922, -0.293926, 0.953621,
		-0.562831, -0.778342, -0.278218,
		0.824018, -0.554790, -0.114899,
		32.155704, 34.341560, 17.724314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332850, 34.012123, 17.938213>,  <31.578892, 34.729912, 17.804743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332850, 34.012123, 17.938213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729078, 34.027046, 17.990934>,  <31.966816, 34.035999, 18.022568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729078, 34.027046, 17.990934>,  <31.332850, 34.012123, 17.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729078, 34.027046, 17.990934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116710, -0.273842, 0.954667,
		0.071714, -0.961051, -0.266905,
		0.990573, 0.037312, 0.131803,
		32.026249, 34.038239, 18.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465101, 33.442135, 18.443148>,  <31.332850, 34.012123, 17.938213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465101, 33.442135, 18.443148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811974, 33.641312, 18.446167>,  <32.020096, 33.760818, 18.447979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811974, 33.641312, 18.446167>,  <31.465101, 33.442135, 18.443148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811974, 33.641312, 18.446167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119703, -0.223132, 0.967411,
		0.483395, -0.838015, -0.253101,
		0.867179, 0.497939, 0.007548,
		32.072128, 33.790691, 18.448431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898722, 32.895767, 18.713373>,  <31.465101, 33.442135, 18.443148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898722, 32.895767, 18.713373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065563, 33.254940, 18.769577>,  <32.165668, 33.470444, 18.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065563, 33.254940, 18.769577>,  <31.898722, 32.895767, 18.713373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065563, 33.254940, 18.769577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218464, -0.249124, 0.943510,
		0.882211, -0.362847, -0.300076,
		0.417106, 0.897931, 0.140511,
		32.190697, 33.524319, 18.811729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526672, 32.769707, 19.086575>,  <31.898722, 32.895767, 18.713373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526672, 32.769707, 19.086575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409538, 33.150890, 19.117842>,  <32.339260, 33.379601, 19.136602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409538, 33.150890, 19.117842>,  <32.526672, 32.769707, 19.086575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409538, 33.150890, 19.117842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074262, -0.104171, 0.991783,
		0.953276, 0.284620, 0.101274,
		-0.292831, 0.952964, 0.078168,
		32.321690, 33.436779, 19.141293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055645, 33.118629, 19.661169>,  <32.526672, 32.769707, 19.086575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055645, 33.118629, 19.661169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703392, 33.307434, 19.644739>,  <32.492039, 33.420719, 19.634880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703392, 33.307434, 19.644739>,  <33.055645, 33.118629, 19.661169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703392, 33.307434, 19.644739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087013, -0.075896, 0.993312,
		0.465739, 0.878318, 0.107908,
		-0.880634, 0.472014, -0.041077,
		32.439201, 33.449039, 19.632416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097569, 33.636581, 20.183846>,  <33.055645, 33.118629, 19.661169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097569, 33.636581, 20.183846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706978, 33.571987, 20.126696>,  <32.472622, 33.533230, 20.092405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706978, 33.571987, 20.126696>,  <33.097569, 33.636581, 20.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706978, 33.571987, 20.126696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114893, -0.171034, 0.978543,
		-0.182461, 0.971941, 0.148457,
		-0.976477, -0.161489, -0.142877,
		32.414036, 33.523540, 20.083832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741299, 33.848999, 20.864002>,  <33.097569, 33.636581, 20.183846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741299, 33.848999, 20.864002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470894, 33.626591, 20.670568>,  <32.308651, 33.493145, 20.554508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470894, 33.626591, 20.670568>,  <32.741299, 33.848999, 20.864002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470894, 33.626591, 20.670568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335883, -0.351614, 0.873813,
		-0.655891, 0.753135, 0.050938,
		-0.676010, -0.556017, -0.483586,
		32.268089, 33.459785, 20.525494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163410, 33.880989, 21.246450>,  <32.741299, 33.848999, 20.864002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163410, 33.880989, 21.246450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106312, 33.545776, 21.035807>,  <32.072052, 33.344646, 20.909420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106312, 33.545776, 21.035807>,  <32.163410, 33.880989, 21.246450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106312, 33.545776, 21.035807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350840, -0.454670, 0.818650,
		-0.925492, 0.301614, -0.229115,
		-0.142745, -0.838036, -0.526611,
		32.063488, 33.294365, 20.877823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461123, 33.615562, 21.404715>,  <32.163410, 33.880989, 21.246450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461123, 33.615562, 21.404715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646658, 33.291553, 21.261204>,  <31.757978, 33.097149, 21.175097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646658, 33.291553, 21.261204>,  <31.461123, 33.615562, 21.404715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646658, 33.291553, 21.261204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204302, -0.491865, 0.846363,
		-0.862042, -0.319275, -0.393634,
		0.463837, -0.810020, -0.358779,
		31.785809, 33.048546, 21.153570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059891, 33.023777, 21.732100>,  <31.461123, 33.615562, 21.404715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059891, 33.023777, 21.732100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421848, 32.871964, 21.655031>,  <31.639023, 32.780876, 21.608791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421848, 32.871964, 21.655031>,  <31.059891, 33.023777, 21.732100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421848, 32.871964, 21.655031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086543, -0.607268, 0.789770,
		-0.416743, -0.697985, -0.582359,
		0.904895, -0.379530, -0.192669,
		31.693317, 32.758102, 21.597231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045826, 32.284458, 21.923931>,  <31.059891, 33.023777, 21.732100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045826, 32.284458, 21.923931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434420, 32.378525, 21.911808>,  <31.667576, 32.434963, 21.904533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434420, 32.378525, 21.911808>,  <31.045826, 32.284458, 21.923931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434420, 32.378525, 21.911808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163072, -0.569861, 0.805398,
		0.172131, -0.787372, -0.591959,
		0.971483, 0.235166, -0.030307,
		31.725864, 32.449074, 21.902716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454479, 31.667118, 22.015425>,  <31.045826, 32.284458, 21.923931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454479, 31.667118, 22.015425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700319, 31.966389, 22.115423>,  <31.847824, 32.145950, 22.175423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700319, 31.966389, 22.115423>,  <31.454479, 31.667118, 22.015425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700319, 31.966389, 22.115423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108131, -0.393831, 0.912801,
		0.781393, -0.533975, -0.322950,
		0.614600, 0.748176, 0.249997,
		31.884699, 32.190842, 22.190422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060036, 31.290462, 22.270712>,  <31.454479, 31.667118, 22.015425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060036, 31.290462, 22.270712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081661, 31.669975, 22.395220>,  <32.094639, 31.897682, 22.469925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081661, 31.669975, 22.395220>,  <32.060036, 31.290462, 22.270712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081661, 31.669975, 22.395220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355273, -0.309605, 0.882001,
		0.933198, 0.062899, -0.353816,
		0.054066, 0.948783, 0.311269,
		32.097881, 31.954611, 22.488600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643452, 31.306160, 22.585094>,  <32.060036, 31.290462, 22.270712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643452, 31.306160, 22.585094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436138, 31.616522, 22.728958>,  <32.311752, 31.802740, 22.815275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436138, 31.616522, 22.728958>,  <32.643452, 31.306160, 22.585094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436138, 31.616522, 22.728958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200613, -0.298512, 0.933084,
		0.831348, 0.555751, -0.000944,
		-0.518280, 0.775907, 0.359658,
		32.280655, 31.849295, 22.836855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113686, 31.706282, 23.006989>,  <32.643452, 31.306160, 22.585094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113686, 31.706282, 23.006989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739880, 31.785664, 23.125172>,  <32.515594, 31.833294, 23.196083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739880, 31.785664, 23.125172>,  <33.113686, 31.706282, 23.006989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739880, 31.785664, 23.125172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228559, -0.301742, 0.925588,
		0.272841, 0.932506, 0.236624,
		-0.934515, 0.198456, 0.295460,
		32.459526, 31.845200, 23.213810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131870, 32.121578, 23.668692>,  <33.113686, 31.706282, 23.006989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131870, 32.121578, 23.668692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758492, 31.979187, 23.686380>,  <32.534466, 31.893753, 23.696993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758492, 31.979187, 23.686380>,  <33.131870, 32.121578, 23.668692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758492, 31.979187, 23.686380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141066, -0.250940, 0.957669,
		-0.329812, 0.900172, 0.284456,
		-0.933448, -0.355978, 0.044221,
		32.478458, 31.872395, 23.699646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727253, 32.552734, 24.188076>,  <33.131870, 32.121578, 23.668692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727253, 32.552734, 24.188076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541340, 32.201485, 24.142687>,  <32.429790, 31.990736, 24.115454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541340, 32.201485, 24.142687>,  <32.727253, 32.552734, 24.188076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541340, 32.201485, 24.142687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066009, -0.093438, 0.993434,
		-0.882960, 0.469222, -0.014536,
		-0.464783, -0.878123, -0.113475,
		32.401905, 31.938047, 24.108644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264366, 32.654686, 24.709427>,  <32.727253, 32.552734, 24.188076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264366, 32.654686, 24.709427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242039, 32.262863, 24.632120>,  <32.228642, 32.027771, 24.585735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242039, 32.262863, 24.632120>,  <32.264366, 32.654686, 24.709427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242039, 32.262863, 24.632120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087616, -0.197629, 0.976353,
		-0.994589, 0.037567, 0.096856,
		-0.055820, -0.979557, -0.193269,
		32.225292, 31.968996, 24.574139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847771, 32.506229, 25.208958>,  <32.264366, 32.654686, 24.709427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847771, 32.506229, 25.208958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035854, 32.169598, 25.102636>,  <32.148705, 31.967619, 25.038843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035854, 32.169598, 25.102636>,  <31.847771, 32.506229, 25.208958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035854, 32.169598, 25.102636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114228, -0.240610, 0.963877,
		-0.875131, -0.483587, -0.017005,
		0.470210, -0.841576, -0.265804,
		32.176918, 31.917126, 25.022896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520727, 31.911152, 25.406542>,  <31.847771, 32.506229, 25.208958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520727, 31.911152, 25.406542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906761, 31.806673, 25.398643>,  <32.138382, 31.743986, 25.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906761, 31.806673, 25.398643>,  <31.520727, 31.911152, 25.406542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906761, 31.806673, 25.398643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076403, -0.352791, 0.932578,
		-0.250552, -0.898507, -0.360429,
		0.965084, -0.261198, -0.019743,
		32.196285, 31.728313, 25.392721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584352, 31.148439, 25.772268>,  <31.520727, 31.911152, 25.406542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584352, 31.148439, 25.772268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951363, 31.306454, 25.790581>,  <32.171570, 31.401262, 25.801569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951363, 31.306454, 25.790581>,  <31.584352, 31.148439, 25.772268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951363, 31.306454, 25.790581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169622, -0.492875, 0.853407,
		0.359693, -0.775255, -0.519231,
		0.917523, 0.395038, 0.045783,
		32.226620, 31.424965, 25.804316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056488, 30.631491, 26.119652>,  <31.584352, 31.148439, 25.772268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056488, 30.631491, 26.119652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313076, 30.937685, 26.139833>,  <32.467030, 31.121403, 26.151943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313076, 30.937685, 26.139833>,  <32.056488, 30.631491, 26.119652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313076, 30.937685, 26.139833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271894, -0.288361, 0.918108,
		0.717349, -0.575220, -0.393106,
		0.641470, 0.765487, 0.050456,
		32.505516, 31.167332, 26.154970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631237, 30.283466, 26.298578>,  <32.056488, 30.631491, 26.119652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631237, 30.283466, 26.298578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696495, 30.666164, 26.394928>,  <32.735649, 30.895784, 26.452738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696495, 30.666164, 26.394928>,  <32.631237, 30.283466, 26.298578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696495, 30.666164, 26.394928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332032, -0.283148, 0.899768,
		0.929052, -0.066814, -0.363864,
		0.163144, 0.956746, 0.240875,
		32.745438, 30.953188, 26.467190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194168, 30.240763, 26.673731>,  <32.631237, 30.283466, 26.298578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194168, 30.240763, 26.673731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055279, 30.601074, 26.778069>,  <32.971947, 30.817261, 26.840672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055279, 30.601074, 26.778069>,  <33.194168, 30.240763, 26.673731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055279, 30.601074, 26.778069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334121, -0.141068, 0.931913,
		0.876242, 0.410733, -0.251987,
		-0.347221, 0.900776, 0.260844,
		32.951111, 30.871307, 26.856321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753223, 30.612978, 26.988277>,  <33.194168, 30.240763, 26.673731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753223, 30.612978, 26.988277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423374, 30.791357, 27.127491>,  <33.225464, 30.898384, 27.211020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423374, 30.791357, 27.127491>,  <33.753223, 30.612978, 26.988277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423374, 30.791357, 27.127491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300448, -0.176025, 0.937415,
		0.479301, 0.877580, 0.011170,
		-0.824622, 0.445948, 0.348036,
		33.175987, 30.925142, 27.231901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026161, 30.887047, 27.543314>,  <33.753223, 30.612978, 26.988277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026161, 30.887047, 27.543314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638531, 30.928291, 27.632986>,  <33.405952, 30.953037, 27.686790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638531, 30.928291, 27.632986>,  <34.026161, 30.887047, 27.543314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638531, 30.928291, 27.632986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219965, -0.050741, 0.974187,
		0.111825, 0.993375, 0.026491,
		-0.969077, 0.103112, 0.224181,
		33.347809, 30.959225, 27.700241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964176, 31.478291, 27.999626>,  <34.026161, 30.887047, 27.543314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964176, 31.478291, 27.999626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667496, 31.222456, 28.080433>,  <33.489487, 31.068954, 28.128918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667496, 31.222456, 28.080433>,  <33.964176, 31.478291, 27.999626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667496, 31.222456, 28.080433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342574, -0.102286, 0.933906,
		-0.576652, 0.761882, 0.294972,
		-0.741698, -0.639588, 0.202018,
		33.444988, 31.030579, 28.141039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168823, 32.278248, 28.042419>,  <33.964176, 31.478291, 27.999626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168823, 32.278248, 28.042419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215775, 32.658192, 28.158342>,  <34.243946, 32.886158, 28.227896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215775, 32.658192, 28.158342>,  <34.168823, 32.278248, 28.042419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215775, 32.658192, 28.158342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133099, 0.304236, -0.943252,
		-0.984128, 0.072142, 0.162135,
		0.117375, 0.949861, 0.289805,
		34.250988, 32.943150, 28.245283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578827, 32.689419, 27.773901>,  <34.168823, 32.278248, 28.042419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578827, 32.689419, 27.773901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859032, 32.966564, 27.842272>,  <34.027153, 33.132851, 27.883295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859032, 32.966564, 27.842272>,  <33.578827, 32.689419, 27.773901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859032, 32.966564, 27.842272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150613, 0.377660, -0.913613,
		-0.697565, 0.614254, 0.368911,
		0.700513, 0.692867, 0.170928,
		34.069187, 33.174423, 27.893551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245548, 33.325592, 27.488552>,  <33.578827, 32.689419, 27.773901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245548, 33.325592, 27.488552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644615, 33.345688, 27.507008>,  <33.884056, 33.357746, 27.518080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644615, 33.345688, 27.507008>,  <33.245548, 33.325592, 27.488552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644615, 33.345688, 27.507008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029415, 0.293374, -0.955545,
		-0.061543, 0.954677, 0.291213,
		0.997671, 0.050241, 0.046137,
		33.943916, 33.360760, 27.520849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429810, 34.022064, 27.449236>,  <33.245548, 33.325592, 27.488552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429810, 34.022064, 27.449236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730137, 33.803974, 27.300108>,  <33.910336, 33.673119, 27.210630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730137, 33.803974, 27.300108>,  <33.429810, 34.022064, 27.449236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730137, 33.803974, 27.300108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024751, 0.587277, -0.809007,
		0.660040, 0.598193, 0.454436,
		0.750823, -0.545225, -0.372821,
		33.955383, 33.640408, 27.188261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620609, 34.508114, 27.116287>,  <33.429810, 34.022064, 27.449236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620609, 34.508114, 27.116287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846561, 34.214375, 26.965740>,  <33.982132, 34.038132, 26.875412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846561, 34.214375, 26.965740>,  <33.620609, 34.508114, 27.116287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846561, 34.214375, 26.965740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047757, 0.484434, -0.873523,
		0.823792, 0.475459, 0.308715,
		0.564877, -0.734345, -0.376366,
		34.016026, 33.994072, 26.852831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276711, 34.765854, 26.821629>,  <33.620609, 34.508114, 27.116287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276711, 34.765854, 26.821629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234341, 34.422104, 26.621525>,  <34.208920, 34.215855, 26.501463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234341, 34.422104, 26.621525>,  <34.276711, 34.765854, 26.821629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234341, 34.422104, 26.621525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194065, 0.475548, -0.858017,
		0.975253, -0.187970, 0.116400,
		-0.105927, -0.859373, -0.500258,
		34.202564, 34.164291, 26.471447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900085, 34.666077, 26.424576>,  <34.276711, 34.765854, 26.821629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900085, 34.666077, 26.424576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637810, 34.399910, 26.281862>,  <34.480446, 34.240211, 26.196234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637810, 34.399910, 26.281862>,  <34.900085, 34.666077, 26.424576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637810, 34.399910, 26.281862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333724, 0.168464, -0.927496,
		0.677276, -0.727214, 0.111606,
		-0.655687, -0.665417, -0.356785,
		34.441105, 34.200287, 26.174828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262386, 34.087597, 25.890690>,  <34.900085, 34.666077, 26.424576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262386, 34.087597, 25.890690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872631, 34.105694, 25.802584>,  <34.638779, 34.116554, 25.749720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872631, 34.105694, 25.802584>,  <35.262386, 34.087597, 25.890690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872631, 34.105694, 25.802584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223221, 0.076478, -0.971763,
		-0.027123, -0.996044, -0.084619,
		-0.974390, 0.045246, -0.220264,
		34.580315, 34.119267, 25.736504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094807, 33.566299, 25.271889>,  <35.262386, 34.087597, 25.890690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094807, 33.566299, 25.271889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806408, 33.841740, 25.240902>,  <34.633369, 34.007004, 25.222309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806408, 33.841740, 25.240902>,  <35.094807, 33.566299, 25.271889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806408, 33.841740, 25.240902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264889, 0.170580, -0.949071,
		-0.640316, -0.704793, -0.305389,
		-0.720992, 0.688599, -0.077467,
		34.590111, 34.048321, 25.217661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856609, 33.426819, 24.506334>,  <35.094807, 33.566299, 25.271889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856609, 33.426819, 24.506334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747646, 33.791718, 24.628714>,  <34.682270, 34.010654, 24.702141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747646, 33.791718, 24.628714>,  <34.856609, 33.426819, 24.506334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747646, 33.791718, 24.628714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014126, 0.321733, -0.946725,
		-0.962078, -0.253574, -0.100529,
		-0.272409, 0.912244, 0.305950,
		34.665924, 34.065392, 24.720499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280388, 33.583099, 24.087078>,  <34.856609, 33.426819, 24.506334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280388, 33.583099, 24.087078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367249, 33.950703, 24.218695>,  <34.419365, 34.171265, 24.297665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367249, 33.950703, 24.218695>,  <34.280388, 33.583099, 24.087078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367249, 33.950703, 24.218695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220444, 0.374549, -0.900621,
		-0.950920, 0.123038, 0.283924,
		0.217154, 0.919007, 0.329043,
		34.432396, 34.226406, 24.317408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711319, 33.952454, 23.796852>,  <34.280388, 33.583099, 24.087078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711319, 33.952454, 23.796852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984467, 34.231289, 23.884272>,  <34.148354, 34.398590, 23.936724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984467, 34.231289, 23.884272>,  <33.711319, 33.952454, 23.796852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984467, 34.231289, 23.884272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196791, 0.463627, -0.863900,
		-0.703537, 0.546922, 0.453776,
		0.682868, 0.697085, 0.218549,
		34.189327, 34.440414, 23.949837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471588, 34.657131, 23.889122>,  <33.711319, 33.952454, 23.796852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471588, 34.657131, 23.889122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850075, 34.703548, 23.768314>,  <34.077168, 34.731400, 23.695829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850075, 34.703548, 23.768314>,  <33.471588, 34.657131, 23.889122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850075, 34.703548, 23.768314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323536, 0.346051, -0.880666,
		0.002320, 0.931012, 0.364981,
		0.946213, 0.116041, -0.302019,
		34.133938, 34.738361, 23.677710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507118, 35.278206, 23.616970>,  <33.471588, 34.657131, 23.889122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507118, 35.278206, 23.616970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828930, 35.099586, 23.460348>,  <34.022018, 34.992413, 23.366375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828930, 35.099586, 23.460348>,  <33.507118, 35.278206, 23.616970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828930, 35.099586, 23.460348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212859, 0.398685, -0.892043,
		0.554452, 0.801025, 0.225703,
		0.804534, -0.446552, -0.391557,
		34.070290, 34.965622, 23.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636093, 35.715271, 23.064201>,  <33.507118, 35.278206, 23.616970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636093, 35.715271, 23.064201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879055, 35.405399, 22.993841>,  <34.024830, 35.219479, 22.951624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879055, 35.405399, 22.993841>,  <33.636093, 35.715271, 23.064201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879055, 35.405399, 22.993841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183621, 0.078519, -0.979856,
		0.772882, 0.627465, -0.094554,
		0.607401, -0.774676, -0.175902,
		34.061275, 35.172997, 22.941071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172371, 35.925304, 22.543419>,  <33.636093, 35.715271, 23.064201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172371, 35.925304, 22.543419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117722, 35.529057, 22.543842>,  <34.084934, 35.291306, 22.544096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117722, 35.529057, 22.543842>,  <34.172371, 35.925304, 22.543419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117722, 35.529057, 22.543842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118561, 0.015289, -0.992829,
		0.983503, -0.135766, -0.119538,
		-0.136620, -0.990623, 0.001059,
		34.076736, 35.231869, 22.544161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665333, 35.653172, 22.205412>,  <34.172371, 35.925304, 22.543419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665333, 35.653172, 22.205412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374413, 35.378891, 22.193726>,  <34.199860, 35.214321, 22.186714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374413, 35.378891, 22.193726>,  <34.665333, 35.653172, 22.205412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374413, 35.378891, 22.193726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180246, -0.149759, -0.972154,
		0.662233, -0.712310, 0.232514,
		-0.727296, -0.685702, -0.029216,
		34.156223, 35.173180, 22.184961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955479, 35.013924, 21.906061>,  <34.665333, 35.653172, 22.205412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955479, 35.013924, 21.906061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562778, 35.040176, 21.834671>,  <34.327156, 35.055927, 21.791838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562778, 35.040176, 21.834671>,  <34.955479, 35.013924, 21.906061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562778, 35.040176, 21.834671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158324, -0.237734, -0.958340,
		-0.105329, -0.969110, 0.223005,
		-0.981753, 0.065634, -0.178474,
		34.268253, 35.059868, 21.781128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880527, 34.760727, 21.149397>,  <34.955479, 35.013924, 21.906061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880527, 34.760727, 21.149397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505852, 34.859184, 21.249023>,  <34.281048, 34.918259, 21.308800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505852, 34.859184, 21.249023>,  <34.880527, 34.760727, 21.149397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505852, 34.859184, 21.249023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246113, 0.043206, -0.968278,
		-0.249094, -0.968271, 0.020108,
		-0.936686, 0.246141, 0.249066,
		34.224846, 34.933025, 21.323744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444828, 34.326908, 20.732544>,  <34.880527, 34.760727, 21.149397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444828, 34.326908, 20.732544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225830, 34.649406, 20.822178>,  <34.094433, 34.842907, 20.875957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225830, 34.649406, 20.822178>,  <34.444828, 34.326908, 20.732544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225830, 34.649406, 20.822178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223351, 0.117275, -0.967657,
		-0.806451, -0.579838, 0.115869,
		-0.547496, 0.806247, 0.224084,
		34.061581, 34.891281, 20.889402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695087, 34.237564, 20.455688>,  <34.444828, 34.326908, 20.732544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695087, 34.237564, 20.455688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782051, 34.626503, 20.489803>,  <33.834229, 34.859867, 20.510273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782051, 34.626503, 20.489803>,  <33.695087, 34.237564, 20.455688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782051, 34.626503, 20.489803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294397, 0.148631, -0.944054,
		-0.930624, 0.180141, 0.318570,
		0.217412, 0.972347, 0.085287,
		33.847275, 34.918205, 20.515390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292797, 34.570885, 19.920906>,  <33.695087, 34.237564, 20.455688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292797, 34.570885, 19.920906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533287, 34.877388, 20.011574>,  <33.677582, 35.061291, 20.065975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533287, 34.877388, 20.011574>,  <33.292797, 34.570885, 19.920906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533287, 34.877388, 20.011574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149435, 0.386472, -0.910115,
		-0.784985, 0.513309, 0.346862,
		0.601222, 0.766259, 0.226669,
		33.713654, 35.107265, 20.079575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971382, 35.163685, 19.600796>,  <33.292797, 34.570885, 19.920906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971382, 35.163685, 19.600796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359253, 35.227528, 19.674822>,  <33.591976, 35.265831, 19.719238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359253, 35.227528, 19.674822>,  <32.971382, 35.163685, 19.600796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359253, 35.227528, 19.674822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150531, 0.206482, -0.966802,
		-0.192519, 0.965345, 0.176196,
		0.969679, 0.159605, 0.185066,
		33.650158, 35.275410, 19.730341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168369, 35.910259, 19.367651>,  <32.971382, 35.163685, 19.600796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168369, 35.910259, 19.367651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505123, 35.694408, 19.365534>,  <33.707176, 35.564899, 19.364264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505123, 35.694408, 19.365534>,  <33.168369, 35.910259, 19.367651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505123, 35.694408, 19.365534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094948, 0.157774, -0.982900,
		0.531232, 0.826990, 0.184064,
		0.841889, -0.539624, -0.005294,
		33.757690, 35.532520, 19.363945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545288, 36.244350, 18.892277>,  <33.168369, 35.910259, 19.367651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545288, 36.244350, 18.892277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732075, 35.894066, 18.941387>,  <33.844147, 35.683895, 18.970854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732075, 35.894066, 18.941387>,  <33.545288, 36.244350, 18.892277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732075, 35.894066, 18.941387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325086, 0.040887, -0.944800,
		0.822352, 0.481100, 0.303774,
		0.466964, -0.875712, 0.122776,
		33.872166, 35.631351, 18.978220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250603, 36.336521, 18.684755>,  <33.545288, 36.244350, 18.892277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250603, 36.336521, 18.684755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153889, 35.949017, 18.662722>,  <34.095860, 35.716515, 18.649502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153889, 35.949017, 18.662722>,  <34.250603, 36.336521, 18.684755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153889, 35.949017, 18.662722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372981, -0.040382, -0.926960,
		0.895783, -0.244666, 0.371095,
		-0.241781, -0.968766, -0.055082,
		34.081356, 35.658386, 18.646196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774223, 36.038307, 18.380827>,  <34.250603, 36.336521, 18.684755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774223, 36.038307, 18.380827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475605, 35.783722, 18.303291>,  <34.296432, 35.630970, 18.256769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475605, 35.783722, 18.303291>,  <34.774223, 36.038307, 18.380827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475605, 35.783722, 18.303291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297054, -0.058161, -0.953088,
		0.595334, -0.769108, 0.232485,
		-0.746549, -0.636467, -0.193841,
		34.251640, 35.592781, 18.245138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055382, 35.483952, 18.022627>,  <34.774223, 36.038307, 18.380827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055382, 35.483952, 18.022627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666786, 35.473637, 17.928362>,  <34.433628, 35.467449, 17.871803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666786, 35.473637, 17.928362>,  <35.055382, 35.483952, 18.022627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666786, 35.473637, 17.928362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236982, -0.132797, -0.962395,
		-0.006483, -0.990808, 0.135121,
		-0.971492, -0.025782, -0.235664,
		34.375340, 35.465900, 17.857662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952259, 34.870895, 17.773239>,  <35.055382, 35.483952, 18.022627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952259, 34.870895, 17.773239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688251, 35.136494, 17.632673>,  <34.529846, 35.295853, 17.548334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688251, 35.136494, 17.632673>,  <34.952259, 34.870895, 17.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688251, 35.136494, 17.632673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166394, -0.326950, -0.930278,
		-0.732593, -0.672472, 0.105307,
		-0.660016, 0.663992, -0.351416,
		34.490246, 35.335690, 17.527248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656075, 34.537647, 17.282373>,  <34.952259, 34.870895, 17.773239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656075, 34.537647, 17.282373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545570, 34.909763, 17.185839>,  <34.479267, 35.133034, 17.127918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545570, 34.909763, 17.185839>,  <34.656075, 34.537647, 17.282373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545570, 34.909763, 17.185839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235461, -0.177941, -0.955456,
		-0.931793, -0.320779, -0.169889,
		-0.276260, 0.930290, -0.241335,
		34.462692, 35.188850, 17.113438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288166, 34.429882, 16.754395>,  <34.656075, 34.537647, 17.282373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288166, 34.429882, 16.754395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388779, 34.815918, 16.725170>,  <34.449146, 35.047539, 16.707636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388779, 34.815918, 16.725170>,  <34.288166, 34.429882, 16.754395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388779, 34.815918, 16.725170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121830, -0.106458, -0.986825,
		-0.960152, 0.239313, -0.144354,
		0.251528, 0.965088, -0.073060,
		34.464237, 35.105446, 16.703253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917526, 34.741226, 16.130339>,  <34.288166, 34.429882, 16.754395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917526, 34.741226, 16.130339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226692, 34.980885, 16.213892>,  <34.412189, 35.124680, 16.264025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226692, 34.980885, 16.213892>,  <33.917526, 34.741226, 16.130339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226692, 34.980885, 16.213892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288634, -0.038819, -0.956652,
		-0.565066, 0.799698, -0.202938,
		0.772911, 0.599146, 0.208885,
		34.458565, 35.160629, 16.276558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937874, 35.278885, 15.596825>,  <33.917526, 34.741226, 16.130339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937874, 35.278885, 15.596825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310276, 35.280445, 15.742819>,  <34.533718, 35.281384, 15.830415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310276, 35.280445, 15.742819>,  <33.937874, 35.278885, 15.596825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310276, 35.280445, 15.742819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358378, -0.199463, -0.912020,
		0.069240, 0.979897, -0.187100,
		0.931005, 0.003904, 0.364984,
		34.589577, 35.281616, 15.852314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381893, 35.675018, 15.204406>,  <33.937874, 35.278885, 15.596825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381893, 35.675018, 15.204406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652691, 35.442635, 15.385146>,  <34.815170, 35.303204, 15.493590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652691, 35.442635, 15.385146>,  <34.381893, 35.675018, 15.204406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652691, 35.442635, 15.385146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476649, -0.121706, -0.870628,
		0.560791, 0.804783, 0.194519,
		0.676993, -0.580958, 0.451850,
		34.855789, 35.268349, 15.520701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032803, 35.762604, 14.816103>,  <34.381893, 35.675018, 15.204406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032803, 35.762604, 14.816103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106937, 35.424789, 15.017063>,  <35.151417, 35.222099, 15.137639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106937, 35.424789, 15.017063>,  <35.032803, 35.762604, 14.816103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106937, 35.424789, 15.017063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575680, -0.321027, -0.752020,
		0.796393, 0.428600, 0.426685,
		0.185338, -0.844538, 0.502400,
		35.162540, 35.171429, 15.167783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719685, 35.699585, 14.849158>,  <35.032803, 35.762604, 14.816103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719685, 35.699585, 14.849158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565590, 35.333183, 14.893930>,  <35.473133, 35.113342, 14.920794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565590, 35.333183, 14.893930>,  <35.719685, 35.699585, 14.849158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565590, 35.333183, 14.893930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606378, -0.342701, -0.717539,
		0.695626, -0.208553, 0.687466,
		-0.385241, -0.916003, 0.111930,
		35.450016, 35.058384, 14.927509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294796, 35.266701, 14.616373>,  <35.719685, 35.699585, 14.849158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294796, 35.266701, 14.616373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968048, 35.035969, 14.616820>,  <35.771999, 34.897530, 14.617089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968048, 35.035969, 14.616820>,  <36.294796, 35.266701, 14.616373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968048, 35.035969, 14.616820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377210, -0.535649, -0.755508,
		0.436396, -0.616728, 0.655138,
		-0.816867, -0.576825, 0.001119,
		35.722988, 34.862923, 14.617156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516670, 34.491623, 14.639977>,  <36.294796, 35.266701, 14.616373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516670, 34.491623, 14.639977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149616, 34.526306, 14.484837>,  <35.929382, 34.547115, 14.391752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149616, 34.526306, 14.484837>,  <36.516670, 34.491623, 14.639977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149616, 34.526306, 14.484837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193667, -0.754628, -0.626920,
		-0.347044, -0.650397, 0.675680,
		-0.917635, 0.086712, -0.387850,
		35.874325, 34.552319, 14.368482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959476, 33.923481, 14.548564>,  <36.516670, 34.491623, 14.639977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959476, 33.923481, 14.548564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336132, 33.846592, 14.438022>,  <37.562126, 33.800457, 14.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336132, 33.846592, 14.438022>,  <36.959476, 33.923481, 14.548564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336132, 33.846592, 14.438022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322548, 0.280207, 0.904128,
		-0.096357, -0.940497, 0.325853,
		0.941636, -0.192222, -0.276355,
		37.618622, 33.788925, 14.355115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176880, 33.341660, 14.851912>,  <36.959476, 33.923481, 14.548564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176880, 33.341660, 14.851912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512291, 33.545235, 14.774086>,  <37.713539, 33.667381, 14.727390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512291, 33.545235, 14.774086>,  <37.176880, 33.341660, 14.851912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512291, 33.545235, 14.774086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187887, 0.065100, 0.980031,
		0.511440, -0.858338, -0.041035,
		0.838527, 0.508937, -0.194566,
		37.763847, 33.697914, 14.715716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656116, 33.161777, 15.291565>,  <37.176880, 33.341660, 14.851912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656116, 33.161777, 15.291565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832752, 33.506374, 15.191303>,  <37.938732, 33.713135, 15.131146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832752, 33.506374, 15.191303>,  <37.656116, 33.161777, 15.291565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832752, 33.506374, 15.191303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201020, 0.177268, 0.963414,
		0.874410, -0.475816, -0.094899,
		0.441586, 0.861496, -0.250653,
		37.965229, 33.764824, 15.116107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399982, 33.254761, 15.500620>,  <37.656116, 33.161777, 15.291565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399982, 33.254761, 15.500620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262646, 33.629108, 15.468951>,  <38.180244, 33.853718, 15.449950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262646, 33.629108, 15.468951>,  <38.399982, 33.254761, 15.500620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262646, 33.629108, 15.468951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281166, 0.182849, 0.942079,
		0.896136, 0.301197, -0.325914,
		-0.343344, 0.935867, -0.079172,
		38.159641, 33.909870, 15.445200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989269, 33.662434, 15.783753>,  <38.399982, 33.254761, 15.500620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989269, 33.662434, 15.783753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657352, 33.885551, 15.790887>,  <38.458202, 34.019421, 15.795167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657352, 33.885551, 15.790887>,  <38.989269, 33.662434, 15.783753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657352, 33.885551, 15.790887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182851, 0.241544, 0.953007,
		0.527274, 0.794054, -0.302424,
		-0.829788, 0.557794, 0.017834,
		38.408417, 34.052891, 15.796237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216103, 34.299210, 16.094450>,  <38.989269, 33.662434, 15.783753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216103, 34.299210, 16.094450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820221, 34.263802, 16.139446>,  <38.582691, 34.242558, 16.166445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820221, 34.263802, 16.139446>,  <39.216103, 34.299210, 16.094450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820221, 34.263802, 16.139446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091296, 0.214925, 0.972354,
		-0.110248, 0.972611, -0.204631,
		-0.989702, -0.088518, 0.112491,
		38.523312, 34.237247, 16.173193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076488, 34.768639, 16.522840>,  <39.216103, 34.299210, 16.094450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076488, 34.768639, 16.522840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742661, 34.553211, 16.569214>,  <38.542366, 34.423954, 16.597038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742661, 34.553211, 16.569214>,  <39.076488, 34.768639, 16.522840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742661, 34.553211, 16.569214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030270, 0.254957, 0.966479,
		-0.550073, 0.803083, -0.229081,
		-0.834568, -0.538568, 0.115935,
		38.492290, 34.391640, 16.603994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543182, 35.252235, 16.896530>,  <39.076488, 34.768639, 16.522840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543182, 35.252235, 16.896530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429825, 34.869652, 16.924442>,  <38.361809, 34.640102, 16.941189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429825, 34.869652, 16.924442>,  <38.543182, 35.252235, 16.896530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429825, 34.869652, 16.924442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103237, 0.102766, 0.989334,
		-0.953430, 0.273169, -0.127866,
		-0.283396, -0.956461, 0.069779,
		38.344807, 34.582714, 16.945375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961300, 35.304005, 17.327526>,  <38.543182, 35.252235, 16.896530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961300, 35.304005, 17.327526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032887, 34.910530, 17.334803>,  <38.075836, 34.674446, 17.339169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032887, 34.910530, 17.334803>,  <37.961300, 35.304005, 17.327526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032887, 34.910530, 17.334803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217912, -0.021602, 0.975729,
		-0.959420, -0.178584, -0.218223,
		0.178964, -0.983688, 0.018190,
		38.086575, 34.615425, 17.340260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420006, 35.046192, 17.699095>,  <37.961300, 35.304005, 17.327526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420006, 35.046192, 17.699095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693146, 34.753979, 17.701561>,  <37.857029, 34.578651, 17.703041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693146, 34.753979, 17.701561>,  <37.420006, 35.046192, 17.699095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693146, 34.753979, 17.701561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097209, -0.082490, 0.991840,
		-0.724062, -0.677878, -0.127343,
		0.682850, -0.730532, 0.006168,
		37.898003, 34.534821, 17.703411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115620, 34.397289, 17.937357>,  <37.420006, 35.046192, 17.699095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115620, 34.397289, 17.937357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507946, 34.414337, 18.013451>,  <37.743340, 34.424564, 18.059107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507946, 34.414337, 18.013451>,  <37.115620, 34.397289, 17.937357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507946, 34.414337, 18.013451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183631, -0.125681, 0.974928,
		0.065459, -0.991155, -0.115443,
		0.980813, 0.042618, 0.190233,
		37.802189, 34.427124, 18.070520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254581, 33.812061, 18.343735>,  <37.115620, 34.397289, 17.937357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254581, 33.812061, 18.343735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526741, 34.101517, 18.390060>,  <37.690037, 34.275188, 18.417856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526741, 34.101517, 18.390060>,  <37.254581, 33.812061, 18.343735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526741, 34.101517, 18.390060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045448, -0.116066, 0.992201,
		0.731435, -0.680352, -0.046082,
		0.680395, 0.723636, 0.115815,
		37.730858, 34.318607, 18.424805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543121, 33.693317, 18.998453>,  <37.254581, 33.812061, 18.343735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543121, 33.693317, 18.998453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667233, 34.068581, 18.937019>,  <37.741699, 34.293739, 18.900158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667233, 34.068581, 18.937019>,  <37.543121, 33.693317, 18.998453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667233, 34.068581, 18.937019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048877, 0.177089, 0.982980,
		0.949390, -0.297487, 0.100801,
		0.310274, 0.938158, -0.153587,
		37.760315, 34.350029, 18.890944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039783, 33.890793, 19.385256>,  <37.543121, 33.693317, 18.998453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039783, 33.890793, 19.385256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913971, 34.257469, 19.286663>,  <37.838482, 34.477474, 19.227507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913971, 34.257469, 19.286663>,  <38.039783, 33.890793, 19.385256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913971, 34.257469, 19.286663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051777, 0.242707, 0.968717,
		0.947833, 0.317458, -0.028877,
		-0.314535, 0.916686, -0.246483,
		37.819611, 34.532475, 19.212719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530148, 34.297676, 19.801834>,  <38.039783, 33.890793, 19.385256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530148, 34.297676, 19.801834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225765, 34.542412, 19.715479>,  <38.043137, 34.689251, 19.663666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225765, 34.542412, 19.715479>,  <38.530148, 34.297676, 19.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225765, 34.542412, 19.715479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059896, 0.265081, 0.962364,
		0.646037, 0.745245, -0.165068,
		-0.760953, 0.611836, -0.215889,
		37.997478, 34.725964, 19.650713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605412, 34.878544, 20.235573>,  <38.530148, 34.297676, 19.801834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605412, 34.878544, 20.235573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229443, 34.970921, 20.135004>,  <38.003860, 35.026348, 20.074663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229443, 34.970921, 20.135004>,  <38.605412, 34.878544, 20.235573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229443, 34.970921, 20.135004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189938, 0.258194, 0.947238,
		0.283673, 0.938084, -0.198817,
		-0.939922, 0.230943, -0.251420,
		37.947468, 35.040203, 20.059578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454266, 35.567024, 20.426779>,  <38.605412, 34.878544, 20.235573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454266, 35.567024, 20.426779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105766, 35.372776, 20.398233>,  <37.896667, 35.256226, 20.381107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105766, 35.372776, 20.398233>,  <38.454266, 35.567024, 20.426779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105766, 35.372776, 20.398233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221821, 0.259863, 0.939823,
		-0.437853, 0.834652, -0.334127,
		-0.871252, -0.485621, -0.071362,
		37.844391, 35.227089, 20.376825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968849, 35.994370, 20.753065>,  <38.454266, 35.567024, 20.426779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968849, 35.994370, 20.753065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777969, 35.643101, 20.766277>,  <37.663441, 35.432339, 20.774204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777969, 35.643101, 20.766277>,  <37.968849, 35.994370, 20.753065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777969, 35.643101, 20.766277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044299, 0.061574, 0.997119,
		-0.877680, 0.474358, -0.068285,
		-0.477196, -0.878176, 0.033029,
		37.634811, 35.379646, 20.776186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542442, 36.102383, 21.378382>,  <37.968849, 35.994370, 20.753065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542442, 36.102383, 21.378382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533009, 35.708038, 21.312012>,  <37.527348, 35.471432, 21.272190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533009, 35.708038, 21.312012>,  <37.542442, 36.102383, 21.378382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533009, 35.708038, 21.312012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026230, -0.165305, 0.985894,
		-0.999378, 0.027600, -0.021960,
		-0.023581, -0.985856, -0.165926,
		37.525936, 35.412281, 21.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001820, 35.850399, 21.795164>,  <37.542442, 36.102383, 21.378382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001820, 35.850399, 21.795164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206635, 35.514267, 21.723997>,  <37.329525, 35.312588, 21.681297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206635, 35.514267, 21.723997>,  <37.001820, 35.850399, 21.795164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206635, 35.514267, 21.723997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266481, -0.352318, 0.897140,
		-0.816581, -0.411958, -0.404333,
		0.512038, -0.840335, -0.177917,
		37.360245, 35.262165, 21.670622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590492, 35.352024, 22.012577>,  <37.001820, 35.850399, 21.795164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590492, 35.352024, 22.012577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929703, 35.140053, 22.014711>,  <37.133228, 35.012871, 22.015993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929703, 35.140053, 22.014711>,  <36.590492, 35.352024, 22.012577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929703, 35.140053, 22.014711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252640, -0.395398, 0.883082,
		-0.465863, -0.750223, -0.469189,
		0.848024, -0.529931, 0.005335,
		37.184109, 34.981075, 22.016312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457333, 34.680305, 22.224005>,  <36.590492, 35.352024, 22.012577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457333, 34.680305, 22.224005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847641, 34.728386, 22.297142>,  <37.081825, 34.757233, 22.341024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847641, 34.728386, 22.297142>,  <36.457333, 34.680305, 22.224005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847641, 34.728386, 22.297142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127797, -0.365231, 0.922103,
		0.177616, -0.923124, -0.341019,
		0.975767, 0.120199, 0.182843,
		37.140369, 34.764446, 22.351995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742622, 34.056461, 22.516472>,  <36.457333, 34.680305, 22.224005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742622, 34.056461, 22.516472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998775, 34.340244, 22.634167>,  <37.152470, 34.510513, 22.704784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998775, 34.340244, 22.634167>,  <36.742622, 34.056461, 22.516472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998775, 34.340244, 22.634167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208543, -0.208092, 0.955619,
		0.739199, -0.673326, 0.014693,
		0.640386, 0.709457, 0.294239,
		37.190891, 34.553082, 22.722439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017845, 33.742527, 23.150341>,  <36.742622, 34.056461, 22.516472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017845, 33.742527, 23.150341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107666, 34.128201, 23.206795>,  <37.161556, 34.359604, 23.240667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107666, 34.128201, 23.206795>,  <37.017845, 33.742527, 23.150341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107666, 34.128201, 23.206795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352366, -0.054689, 0.934263,
		0.908524, -0.259519, 0.327466,
		0.224550, 0.964188, 0.141132,
		37.175030, 34.417458, 23.249134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352928, 33.794659, 23.781300>,  <37.017845, 33.742527, 23.150341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352928, 33.794659, 23.781300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237301, 34.172882, 23.721489>,  <37.167923, 34.399815, 23.685602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237301, 34.172882, 23.721489>,  <37.352928, 33.794659, 23.781300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237301, 34.172882, 23.721489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382563, 0.029078, 0.923472,
		0.877545, 0.324149, 0.353331,
		-0.289068, 0.945559, -0.149525,
		37.150581, 34.456551, 23.676632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728691, 34.235210, 24.218557>,  <37.352928, 33.794659, 23.781300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728691, 34.235210, 24.218557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388222, 34.430645, 24.141827>,  <37.183941, 34.547905, 24.095789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388222, 34.430645, 24.141827>,  <37.728691, 34.235210, 24.218557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388222, 34.430645, 24.141827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199979, 0.036037, 0.979137,
		0.485304, 0.871772, 0.067033,
		-0.851169, 0.488585, -0.191825,
		37.132870, 34.577221, 24.084280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800739, 34.785664, 24.579718>,  <37.728691, 34.235210, 24.218557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800739, 34.785664, 24.579718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406906, 34.755211, 24.516716>,  <37.170609, 34.736938, 24.478914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406906, 34.755211, 24.516716>,  <37.800739, 34.785664, 24.579718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406906, 34.755211, 24.516716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169572, 0.194064, 0.966222,
		-0.042990, 0.978031, -0.203981,
		-0.984580, -0.076128, -0.157504,
		37.111534, 34.732372, 24.469465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509701, 35.264023, 24.976618>,  <37.800739, 34.785664, 24.579718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509701, 35.264023, 24.976618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199444, 35.017792, 24.920843>,  <37.013290, 34.870052, 24.887379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199444, 35.017792, 24.920843>,  <37.509701, 35.264023, 24.976618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199444, 35.017792, 24.920843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247504, 0.093416, 0.964373,
		-0.580625, 0.782517, -0.224816,
		-0.775639, -0.615582, -0.139436,
		36.966751, 34.833118, 24.879013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054317, 35.573574, 25.362246>,  <37.509701, 35.264023, 24.976618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054317, 35.573574, 25.362246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945942, 35.189693, 25.332397>,  <36.880917, 34.959366, 25.314489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945942, 35.189693, 25.332397>,  <37.054317, 35.573574, 25.362246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945942, 35.189693, 25.332397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308128, 0.013029, 0.951256,
		-0.911947, 0.280727, -0.299240,
		-0.270942, -0.959699, -0.074618,
		36.864658, 34.901783, 25.310013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586887, 35.557205, 25.829620>,  <37.054317, 35.573574, 25.362246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586887, 35.557205, 25.829620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641582, 35.165855, 25.767544>,  <36.674400, 34.931046, 25.730299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641582, 35.165855, 25.767544>,  <36.586887, 35.557205, 25.829620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641582, 35.165855, 25.767544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118972, -0.171748, 0.977931,
		-0.983437, -0.115258, -0.139884,
		0.136739, -0.978375, -0.155191,
		36.682606, 34.872341, 25.720987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144585, 35.285503, 26.227644>,  <36.586887, 35.557205, 25.829620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144585, 35.285503, 26.227644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420372, 34.998627, 26.187109>,  <36.585846, 34.826500, 26.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420372, 34.998627, 26.187109>,  <36.144585, 35.285503, 26.227644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420372, 34.998627, 26.187109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104393, -0.040054, 0.993729,
		-0.716753, -0.695725, 0.047254,
		0.689469, -0.717191, -0.101338,
		36.627213, 34.783470, 26.156708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928520, 34.646851, 26.536539>,  <36.144585, 35.285503, 26.227644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928520, 34.646851, 26.536539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328144, 34.631561, 26.528419>,  <36.567921, 34.622387, 26.523548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328144, 34.631561, 26.528419>,  <35.928520, 34.646851, 26.536539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328144, 34.631561, 26.528419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013781, -0.163624, 0.986426,
		-0.041027, -0.985782, -0.162944,
		0.999063, -0.038225, -0.020298,
		36.627865, 34.620094, 26.522329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117237, 34.098408, 27.053419>,  <35.928520, 34.646851, 26.536539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117237, 34.098408, 27.053419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473549, 34.265026, 26.980759>,  <36.687336, 34.364998, 26.937162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473549, 34.265026, 26.980759>,  <36.117237, 34.098408, 27.053419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473549, 34.265026, 26.980759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321291, -0.294600, 0.899990,
		0.321374, -0.860057, -0.396257,
		0.890781, 0.416548, -0.181652,
		36.740784, 34.389992, 26.926264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732967, 33.537899, 27.212387>,  <36.117237, 34.098408, 27.053419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732967, 33.537899, 27.212387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865494, 33.915234, 27.219877>,  <36.945007, 34.141632, 27.224371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865494, 33.915234, 27.219877>,  <36.732967, 33.537899, 27.212387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865494, 33.915234, 27.219877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364560, -0.146293, 0.919616,
		0.870245, -0.297855, -0.392372,
		0.331314, 0.943335, 0.018725,
		36.964890, 34.198235, 27.225494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321152, 33.452908, 27.536823>,  <36.732967, 33.537899, 27.212387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321152, 33.452908, 27.536823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303493, 33.851212, 27.569107>,  <37.292900, 34.090195, 27.588478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303493, 33.851212, 27.569107>,  <37.321152, 33.452908, 27.536823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303493, 33.851212, 27.569107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458868, -0.051552, 0.887008,
		0.887407, 0.076194, -0.454647,
		-0.044147, 0.995760, 0.080711,
		37.290249, 34.149940, 27.593321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041817, 33.725620, 27.656532>,  <37.321152, 33.452908, 27.536823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041817, 33.725620, 27.656532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752007, 33.962254, 27.798002>,  <37.578121, 34.104233, 27.882885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752007, 33.962254, 27.798002>,  <38.041817, 33.725620, 27.656532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752007, 33.962254, 27.798002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367638, -0.102347, 0.924320,
		0.583013, 0.799719, -0.143337,
		-0.724526, 0.591587, 0.353676,
		37.534649, 34.139729, 27.904104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374710, 33.953781, 28.166576>,  <38.041817, 33.725620, 27.656532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374710, 33.953781, 28.166576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992138, 34.035999, 28.249516>,  <37.762596, 34.085331, 28.299278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992138, 34.035999, 28.249516>,  <38.374710, 33.953781, 28.166576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992138, 34.035999, 28.249516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202281, -0.045601, 0.978265,
		0.210533, 0.977585, 0.002036,
		-0.956430, 0.205545, 0.207347,
		37.705208, 34.097664, 28.311720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414131, 34.252705, 28.853125>,  <38.374710, 33.953781, 28.166576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414131, 34.252705, 28.853125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019997, 34.193371, 28.819405>,  <37.783516, 34.157768, 28.799173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019997, 34.193371, 28.819405>,  <38.414131, 34.252705, 28.853125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019997, 34.193371, 28.819405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072909, -0.080625, 0.994074,
		-0.154254, 0.985645, 0.068628,
		-0.985337, -0.148336, -0.084299,
		37.724396, 34.148869, 28.794115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025551, 34.694515, 29.354742>,  <38.414131, 34.252705, 28.853125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025551, 34.694515, 29.354742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774006, 34.390808, 29.287760>,  <37.623077, 34.208584, 29.247570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774006, 34.390808, 29.287760>,  <38.025551, 34.694515, 29.354742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774006, 34.390808, 29.287760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173809, -0.072645, 0.982096,
		-0.757841, 0.646709, -0.086284,
		-0.628862, -0.759269, -0.167458,
		37.585346, 34.163029, 29.237522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382767, 34.825455, 29.750803>,  <38.025551, 34.694515, 29.354742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382767, 34.825455, 29.750803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422379, 34.432301, 29.688658>,  <37.446144, 34.196407, 29.651371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422379, 34.432301, 29.688658>,  <37.382767, 34.825455, 29.750803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422379, 34.432301, 29.688658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018695, -0.154264, 0.987853,
		-0.994909, -0.100730, 0.003098,
		0.099029, -0.982881, -0.155362,
		37.452087, 34.137436, 29.642050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792915, 34.443336, 30.105942>,  <37.382767, 34.825455, 29.750803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792915, 34.443336, 30.105942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148518, 34.262051, 30.079802>,  <37.361877, 34.153278, 30.064117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148518, 34.262051, 30.079802>,  <36.792915, 34.443336, 30.105942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148518, 34.262051, 30.079802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041987, -0.222796, 0.973960,
		-0.455974, -0.863109, -0.217096,
		0.889002, -0.453215, -0.065350,
		37.415218, 34.126087, 30.060196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822517, 33.778645, 30.316580>,  <36.792915, 34.443336, 30.105942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822517, 33.778645, 30.316580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178181, 33.908466, 30.445610>,  <37.391579, 33.986359, 30.523029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178181, 33.908466, 30.445610>,  <36.822517, 33.778645, 30.316580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178181, 33.908466, 30.445610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368366, 0.089455, 0.925367,
		0.271479, -0.941626, 0.199096,
		0.889160, 0.324558, 0.322578,
		37.444927, 34.005833, 30.542383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953606, 33.502064, 30.979923>,  <36.822517, 33.778645, 30.316580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953606, 33.502064, 30.979923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157681, 33.845173, 30.954845>,  <37.280125, 34.051041, 30.939798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157681, 33.845173, 30.954845>,  <36.953606, 33.502064, 30.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157681, 33.845173, 30.954845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300129, 0.245876, 0.921666,
		0.805998, -0.451404, 0.382886,
		0.510186, 0.857776, -0.062696,
		37.310738, 34.102505, 30.936037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749432, 32.828922, 30.769548>,  <36.953606, 33.502064, 30.979923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749432, 32.828922, 30.769548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032143, 32.972713, 30.525827>,  <37.201767, 33.058987, 30.379595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032143, 32.972713, 30.525827>,  <36.749432, 32.828922, 30.769548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032143, 32.972713, 30.525827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681854, -0.116616, 0.722133,
		0.188537, -0.925838, -0.327533,
		0.706774, 0.359478, -0.609300,
		37.244175, 33.080555, 30.343037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342083, 32.327152, 30.838699>,  <36.749432, 32.828922, 30.769548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342083, 32.327152, 30.838699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474491, 32.676033, 30.694654>,  <37.553936, 32.885361, 30.608227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474491, 32.676033, 30.694654>,  <37.342083, 32.327152, 30.838699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474491, 32.676033, 30.694654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673660, 0.048798, 0.737428,
		0.660763, -0.486698, -0.571418,
		0.331020, 0.872206, -0.360113,
		37.573799, 32.937695, 30.586620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192528, 31.676044, 30.400269>,  <37.342083, 32.327152, 30.838699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192528, 31.676044, 30.400269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204742, 31.311800, 30.235416>,  <37.212070, 31.093252, 30.136505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204742, 31.311800, 30.235416>,  <37.192528, 31.676044, 30.400269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204742, 31.311800, 30.235416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981037, -0.051652, 0.186812,
		-0.191401, -0.410020, 0.891767,
		0.030535, -0.910613, -0.412131,
		37.213902, 31.038616, 30.111776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703201, 31.360075, 30.622030>,  <37.192528, 31.676044, 30.400269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703201, 31.360075, 30.622030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683231, 31.084711, 30.332588>,  <37.671249, 30.919493, 30.158924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683231, 31.084711, 30.332588>,  <37.703201, 31.360075, 30.622030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683231, 31.084711, 30.332588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959140, -0.235067, 0.157464,
		-0.278495, -0.686176, 0.672015,
		-0.049920, -0.688409, -0.723603,
		37.668255, 30.878189, 30.115507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165371, 31.725176, 31.159184>,  <37.703201, 31.360075, 30.622030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165371, 31.725176, 31.159184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301025, 31.350018, 31.188421>,  <38.382420, 31.124924, 31.205965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301025, 31.350018, 31.188421>,  <38.165371, 31.725176, 31.159184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301025, 31.350018, 31.188421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119453, -0.120004, -0.985561,
		0.933123, 0.325507, -0.152732,
		0.339135, -0.937893, 0.073096,
		38.402767, 31.068649, 31.210350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527493, 31.706865, 30.645668>,  <38.165371, 31.725176, 31.159184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527493, 31.706865, 30.645668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417362, 31.334156, 30.740320>,  <38.351284, 31.110531, 30.797112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417362, 31.334156, 30.740320>,  <38.527493, 31.706865, 30.645668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417362, 31.334156, 30.740320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236902, -0.172793, -0.956044,
		0.931704, -0.319282, -0.173164,
		-0.275327, -0.931773, 0.236630,
		38.334763, 31.054625, 30.811310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893875, 31.170732, 30.392792>,  <38.527493, 31.706865, 30.645668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893875, 31.170732, 30.392792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518368, 31.039944, 30.436235>,  <38.293064, 30.961470, 30.462301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518368, 31.039944, 30.436235>,  <38.893875, 31.170732, 30.392792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518368, 31.039944, 30.436235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128770, 0.040589, -0.990843,
		0.319572, -0.944161, -0.080208,
		-0.938771, -0.326974, 0.108609,
		38.236736, 30.941851, 30.468819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790901, 30.632170, 29.772402>,  <38.893875, 31.170732, 30.392792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790901, 30.632170, 29.772402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453323, 30.807770, 29.895716>,  <38.250778, 30.913130, 29.969704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453323, 30.807770, 29.895716>,  <38.790901, 30.632170, 29.772402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453323, 30.807770, 29.895716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298357, 0.093465, -0.949867,
		-0.445806, -0.893612, 0.052100,
		-0.843943, 0.439001, 0.308283,
		38.200142, 30.939470, 29.988201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271027, 30.204744, 29.681850>,  <38.790901, 30.632170, 29.772402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271027, 30.204744, 29.681850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165680, 30.590593, 29.677080>,  <38.102470, 30.822104, 29.674217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165680, 30.590593, 29.677080>,  <38.271027, 30.204744, 29.681850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165680, 30.590593, 29.677080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144222, -0.051594, -0.988199,
		-0.953855, -0.258538, 0.152708,
		-0.263366, 0.964622, -0.011926,
		38.086670, 30.879980, 29.673502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584442, 30.342672, 29.325577>,  <38.271027, 30.204744, 29.681850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584442, 30.342672, 29.325577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802525, 30.677561, 29.308542>,  <37.933372, 30.878494, 29.298321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802525, 30.677561, 29.308542>,  <37.584442, 30.342672, 29.325577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802525, 30.677561, 29.308542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137142, 0.038959, -0.989785,
		-0.827008, 0.545477, 0.136058,
		0.545206, 0.837220, -0.042588,
		37.966087, 30.928726, 29.295765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839756, 30.056452, 29.474482>,  <37.584442, 30.342672, 29.325577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839756, 30.056452, 29.474482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549526, 30.149055, 29.215269>,  <36.375389, 30.204617, 29.059742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549526, 30.149055, 29.215269>,  <36.839756, 30.056452, 29.474482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549526, 30.149055, 29.215269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684316, -0.341895, 0.644065,
		-0.072452, 0.910775, 0.406496,
		-0.725577, 0.231508, -0.648029,
		36.331852, 30.218508, 29.020861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433445, 30.452541, 29.888239>,  <36.839756, 30.056452, 29.474482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433445, 30.452541, 29.888239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262337, 30.245329, 29.591955>,  <36.159672, 30.121000, 29.414185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262337, 30.245329, 29.591955>,  <36.433445, 30.452541, 29.888239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262337, 30.245329, 29.591955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688141, -0.344685, 0.638477,
		-0.586065, 0.782837, -0.209033,
		-0.427773, -0.518033, -0.740710,
		36.134007, 30.089918, 29.369741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713703, 30.497103, 29.942877>,  <36.433445, 30.452541, 29.888239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713703, 30.497103, 29.942877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750793, 30.151461, 29.744999>,  <35.773048, 29.944075, 29.626272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750793, 30.151461, 29.744999>,  <35.713703, 30.497103, 29.942877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750793, 30.151461, 29.744999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452781, -0.479089, 0.751973,
		-0.886787, 0.154261, -0.435675,
		0.092726, -0.864105, -0.494696,
		35.778610, 29.892229, 29.596590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065769, 30.142015, 30.043894>,  <35.713703, 30.497103, 29.942877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065769, 30.142015, 30.043894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367928, 29.884861, 29.993189>,  <35.549225, 29.730568, 29.962767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367928, 29.884861, 29.993189>,  <35.065769, 30.142015, 30.043894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367928, 29.884861, 29.993189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311121, -0.522144, 0.794084,
		-0.576697, -0.560409, -0.594442,
		0.755396, -0.642890, -0.126764,
		35.594547, 29.691996, 29.955160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172874, 30.621239, 30.640949>,  <35.065769, 30.142015, 30.043894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172874, 30.621239, 30.640949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788429, 30.528877, 30.701544>,  <34.557762, 30.473459, 30.737902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788429, 30.528877, 30.701544>,  <35.172874, 30.621239, 30.640949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788429, 30.528877, 30.701544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121652, 0.138461, 0.982868,
		-0.247924, 0.963074, -0.104986,
		-0.961111, -0.230905, 0.151487,
		34.500095, 30.459606, 30.746990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726067, 31.184645, 30.800343>,  <35.172874, 30.621239, 30.640949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726067, 31.184645, 30.800343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633038, 30.833330, 30.967445>,  <34.577221, 30.622541, 31.067707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633038, 30.833330, 30.967445>,  <34.726067, 31.184645, 30.800343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633038, 30.833330, 30.967445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393596, 0.307792, 0.866225,
		-0.889377, 0.365887, 0.274107,
		-0.232573, -0.878288, 0.417755,
		34.563267, 30.569843, 31.092772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222904, 31.276148, 31.361923>,  <34.726067, 31.184645, 30.800343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222904, 31.276148, 31.361923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443626, 30.949825, 31.431177>,  <34.576057, 30.754032, 31.472729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443626, 30.949825, 31.431177>,  <34.222904, 31.276148, 31.361923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443626, 30.949825, 31.431177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244092, 0.356496, 0.901848,
		-0.797454, -0.455382, 0.395847,
		0.551804, -0.815805, 0.173134,
		34.609169, 30.705084, 31.483118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010223, 31.060564, 31.961792>,  <34.222904, 31.276148, 31.361923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010223, 31.060564, 31.961792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382793, 30.926878, 31.904179>,  <34.606335, 30.846666, 31.869612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382793, 30.926878, 31.904179>,  <34.010223, 31.060564, 31.961792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382793, 30.926878, 31.904179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269216, 0.366456, 0.890636,
		-0.244884, -0.868337, 0.431303,
		0.931426, -0.334216, -0.144031,
		34.662220, 30.826612, 31.860970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199890, 30.737251, 32.573883>,  <34.010223, 31.060564, 31.961792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199890, 30.737251, 32.573883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552204, 30.818077, 32.402588>,  <34.763592, 30.866573, 32.299809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552204, 30.818077, 32.402588>,  <34.199890, 30.737251, 32.573883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552204, 30.818077, 32.402588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343020, 0.351181, 0.871212,
		0.326420, -0.914246, 0.240007,
		0.880788, 0.202054, -0.428237,
		34.816441, 30.878696, 32.274117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824970, 30.331957, 33.040997>,  <34.199890, 30.737251, 32.573883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824970, 30.331957, 33.040997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950199, 30.649000, 32.831711>,  <35.025337, 30.839226, 32.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950199, 30.649000, 32.831711>,  <34.824970, 30.331957, 33.040997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950199, 30.649000, 32.831711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458495, 0.356325, 0.814135,
		0.831726, -0.494775, -0.251852,
		0.313073, 0.792610, -0.523216,
		35.044121, 30.886784, 32.674747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512890, 30.390339, 33.195660>,  <34.824970, 30.331957, 33.040997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512890, 30.390339, 33.195660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357460, 30.743883, 33.091503>,  <35.264202, 30.956009, 33.029011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357460, 30.743883, 33.091503>,  <35.512890, 30.390339, 33.195660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357460, 30.743883, 33.091503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337482, 0.399477, 0.852363,
		0.857388, 0.243331, -0.453514,
		-0.388575, 0.883860, -0.260387,
		35.240887, 31.009041, 33.013386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959373, 30.841398, 33.499725>,  <35.512890, 30.390339, 33.195660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959373, 30.841398, 33.499725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703724, 31.123207, 33.376328>,  <35.550335, 31.292292, 33.302288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703724, 31.123207, 33.376328>,  <35.959373, 30.841398, 33.499725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703724, 31.123207, 33.376328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317940, 0.607256, 0.728117,
		0.700312, 0.367271, -0.612107,
		-0.639122, 0.704522, -0.308498,
		35.511986, 31.334564, 33.283779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815193, 30.369446, 34.134624>,  <35.959373, 30.841398, 33.499725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815193, 30.369446, 34.134624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531757, 30.137615, 34.295616>,  <35.361694, 29.998516, 34.392212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531757, 30.137615, 34.295616>,  <35.815193, 30.369446, 34.134624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531757, 30.137615, 34.295616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395989, -0.145479, -0.906658,
		0.584030, -0.801827, -0.126421,
		-0.708591, -0.579577, 0.402479,
		35.319180, 29.963741, 34.416359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674789, 29.817148, 33.712677>,  <35.815193, 30.369446, 34.134624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674789, 29.817148, 33.712677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329914, 29.908522, 33.893536>,  <35.122990, 29.963346, 34.002052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329914, 29.908522, 33.893536>,  <35.674789, 29.817148, 33.712677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329914, 29.908522, 33.893536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476551, -0.063014, -0.876885,
		-0.171824, -0.971517, 0.163193,
		-0.862193, 0.228440, 0.452150,
		35.071255, 29.977053, 34.029182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265026, 30.088387, 33.249340>,  <35.674789, 29.817148, 33.712677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265026, 30.088387, 33.249340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130508, 30.222433, 32.897293>,  <36.049797, 30.302860, 32.686066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130508, 30.222433, 32.897293>,  <36.265026, 30.088387, 33.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130508, 30.222433, 32.897293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778046, -0.427684, -0.460141,
		-0.530611, -0.839515, -0.116906,
		-0.336296, 0.335115, -0.880115,
		36.029621, 30.322968, 32.633259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119659, 29.513351, 32.654652>,  <36.265026, 30.088387, 33.249340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119659, 29.513351, 32.654652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314400, 29.852755, 32.571697>,  <36.431244, 30.056396, 32.521927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314400, 29.852755, 32.571697>,  <36.119659, 29.513351, 32.654652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314400, 29.852755, 32.571697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797223, -0.528665, -0.291460,
		-0.356942, -0.023433, -0.933833,
		0.486855, 0.848507, -0.207384,
		36.460457, 30.107307, 32.509483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350105, 29.361696, 31.933374>,  <36.119659, 29.513351, 32.654652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350105, 29.361696, 31.933374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535007, 29.604868, 32.191597>,  <36.645947, 29.750771, 32.346531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535007, 29.604868, 32.191597>,  <36.350105, 29.361696, 31.933374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535007, 29.604868, 32.191597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866624, -0.463934, -0.183651,
		0.187849, 0.644348, -0.741302,
		0.462251, 0.607931, 0.645557,
		36.673683, 29.787247, 32.385265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829411, 29.626490, 31.554977>,  <36.350105, 29.361696, 31.933374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829411, 29.626490, 31.554977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930634, 29.657318, 31.940729>,  <36.991367, 29.675816, 32.172180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930634, 29.657318, 31.940729>,  <36.829411, 29.626490, 31.554977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930634, 29.657318, 31.940729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836813, -0.517672, -0.178211,
		0.485496, 0.852101, -0.195494,
		0.253055, 0.077071, 0.964377,
		37.006550, 29.680439, 32.230042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610565, 29.635078, 31.651905>,  <36.829411, 29.626490, 31.554977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610565, 29.635078, 31.651905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547272, 29.438314, 31.994364>,  <37.509296, 29.320257, 32.199841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547272, 29.438314, 31.994364>,  <37.610565, 29.635078, 31.651905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547272, 29.438314, 31.994364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839298, -0.523754, -0.145810,
		0.520136, 0.695491, 0.495732,
		-0.158232, -0.491908, 0.856148,
		37.499802, 29.290741, 32.251209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200523, 29.704990, 32.099899>,  <37.610565, 29.635078, 31.651905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200523, 29.704990, 32.099899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034012, 29.362629, 32.222633>,  <37.934105, 29.157211, 32.296272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034012, 29.362629, 32.222633>,  <38.200523, 29.704990, 32.099899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034012, 29.362629, 32.222633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907732, -0.371787, 0.194413,
		-0.052323, 0.359449, 0.931697,
		-0.416274, -0.855903, 0.306831,
		37.909130, 29.105858, 32.314682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434135, 29.522026, 32.825840>,  <38.200523, 29.704990, 32.099899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434135, 29.522026, 32.825840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306152, 29.196375, 32.632008>,  <38.229362, 29.000984, 32.515709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306152, 29.196375, 32.632008>,  <38.434135, 29.522026, 32.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306152, 29.196375, 32.632008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841420, -0.479270, 0.249627,
		-0.435474, -0.327868, 0.838371,
		-0.319961, -0.814128, -0.484584,
		38.210163, 28.952137, 32.486633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404591, 28.940489, 33.242981>,  <38.434135, 29.522026, 32.825840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404591, 28.940489, 33.242981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454300, 28.837059, 32.859795>,  <38.484123, 28.775002, 32.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454300, 28.837059, 32.859795>,  <38.404591, 28.940489, 33.242981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454300, 28.837059, 32.859795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956714, -0.224831, 0.184795,
		-0.263163, -0.939463, 0.219442,
		0.124271, -0.258575, -0.957965,
		38.491581, 28.759487, 32.572407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553955, 28.218239, 33.114616>,  <38.404591, 28.940489, 33.242981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553955, 28.218239, 33.114616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734943, 28.535282, 32.951130>,  <38.843536, 28.725508, 32.853039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734943, 28.535282, 32.951130>,  <38.553955, 28.218239, 33.114616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734943, 28.535282, 32.951130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856314, -0.258187, 0.447287,
		0.248999, -0.552369, -0.795543,
		0.452467, 0.792608, -0.408713,
		38.870682, 28.773064, 32.828514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220982, 28.042721, 32.798519>,  <38.553955, 28.218239, 33.114616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220982, 28.042721, 32.798519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279484, 28.434402, 32.854755>,  <39.314587, 28.669411, 32.888496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279484, 28.434402, 32.854755>,  <39.220982, 28.042721, 32.798519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279484, 28.434402, 32.854755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907913, -0.189304, 0.373977,
		0.392815, 0.072951, -0.916719,
		0.146256, 0.979205, 0.140595,
		39.323360, 28.728165, 32.896935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759434, 28.359934, 32.429520>,  <39.220982, 28.042721, 32.798519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759434, 28.359934, 32.429520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743187, 28.538507, 32.787079>,  <39.733440, 28.645651, 33.001614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743187, 28.538507, 32.787079>,  <39.759434, 28.359934, 32.429520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743187, 28.538507, 32.787079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963010, -0.221028, 0.154140,
		0.266389, 0.867090, -0.420942,
		-0.040613, 0.446432, 0.893895,
		39.731003, 28.672438, 33.055248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458813, 28.537445, 32.475941>,  <39.759434, 28.359934, 32.429520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458813, 28.537445, 32.475941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319893, 28.598894, 32.845974>,  <40.236542, 28.635763, 33.067993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319893, 28.598894, 32.845974>,  <40.458813, 28.537445, 32.475941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319893, 28.598894, 32.845974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926269, -0.097734, 0.363970,
		0.146327, 0.983284, -0.108355,
		-0.347296, 0.153625, 0.925086,
		40.215706, 28.644981, 33.123501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781799, 29.007820, 32.783867>,  <40.458813, 28.537445, 32.475941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781799, 29.007820, 32.783867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655689, 28.772909, 33.082050>,  <40.580025, 28.631964, 33.260960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655689, 28.772909, 33.082050>,  <40.781799, 29.007820, 32.783867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655689, 28.772909, 33.082050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941419, -0.094457, 0.323739,
		-0.119710, 0.803857, 0.582653,
		-0.315276, -0.587275, 0.745459,
		40.561108, 28.596727, 33.305687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912144, 29.400127, 33.433022>,  <40.781799, 29.007820, 32.783867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912144, 29.400127, 33.433022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942650, 29.003906, 33.478603>,  <40.960953, 28.766172, 33.505951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942650, 29.003906, 33.478603>,  <40.912144, 29.400127, 33.433022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942650, 29.003906, 33.478603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962657, 0.102918, 0.250397,
		-0.259759, 0.090602, 0.961414,
		0.076261, -0.990555, 0.113953,
		40.965527, 28.706739, 33.512791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103542, 29.036640, 34.136196>,  <40.912144, 29.400127, 33.433022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103542, 29.036640, 34.136196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245956, 28.894382, 33.790535>,  <41.331406, 28.809029, 33.583138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245956, 28.894382, 33.790535>,  <41.103542, 29.036640, 34.136196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245956, 28.894382, 33.790535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895177, 0.395146, 0.206199,
		0.268132, -0.846981, 0.459051,
		0.356039, -0.355644, -0.864149,
		41.352768, 28.787689, 33.531292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699211, 28.604721, 34.364586>,  <41.103542, 29.036640, 34.136196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699211, 28.604721, 34.364586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703758, 28.725363, 33.983238>,  <41.706486, 28.797749, 33.754429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703758, 28.725363, 33.983238>,  <41.699211, 28.604721, 34.364586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703758, 28.725363, 33.983238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977962, 0.195428, 0.073482,
		0.208477, -0.933189, -0.292737,
		0.011363, 0.301605, -0.953365,
		41.707169, 28.815844, 33.697227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159103, 28.151045, 33.906338>,  <41.699211, 28.604721, 34.364586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159103, 28.151045, 33.906338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151787, 28.531796, 33.783966>,  <42.147396, 28.760246, 33.710541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151787, 28.531796, 33.783966>,  <42.159103, 28.151045, 33.906338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151787, 28.531796, 33.783966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998029, -0.000989, -0.062744,
		-0.060027, -0.306476, -0.949984,
		-0.018290, 0.951878, -0.305932,
		42.146301, 28.817358, 33.692188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372589, 28.321131, 33.201458>,  <42.159103, 28.151045, 33.906338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372589, 28.321131, 33.201458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449154, 28.614485, 33.462383>,  <42.495094, 28.790497, 33.618938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449154, 28.614485, 33.462383>,  <42.372589, 28.321131, 33.201458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449154, 28.614485, 33.462383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963086, -0.012175, -0.268917,
		-0.189278, 0.679704, -0.708644,
		0.191412, 0.733386, 0.652309,
		42.506577, 28.834501, 33.658077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708881, 28.916485, 32.812325>,  <42.372589, 28.321131, 33.201458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708881, 28.916485, 32.812325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570698, 29.231400, 33.016613>,  <42.487789, 29.420349, 33.139187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570698, 29.231400, 33.016613>,  <42.708881, 28.916485, 32.812325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570698, 29.231400, 33.016613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442221, 0.616586, -0.651354,
		-0.827708, 0.000837, -0.561159,
		-0.345457, 0.787287, 0.510724,
		42.467060, 29.467587, 33.169830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193726, 29.280893, 32.428185>,  <42.708881, 28.916485, 32.812325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193726, 29.280893, 32.428185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396118, 29.509460, 32.686630>,  <42.517551, 29.646601, 32.841698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396118, 29.509460, 32.686630>,  <42.193726, 29.280893, 32.428185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396118, 29.509460, 32.686630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305480, 0.581815, -0.753773,
		-0.806639, 0.578770, 0.119830,
		0.505980, 0.571417, 0.646117,
		42.547913, 29.680885, 32.880466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146259, 29.965183, 32.098942>,  <42.193726, 29.280893, 32.428185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146259, 29.965183, 32.098942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429714, 29.964575, 32.381168>,  <42.599789, 29.964209, 32.550503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429714, 29.964575, 32.381168>,  <42.146259, 29.965183, 32.098942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429714, 29.964575, 32.381168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525097, 0.669073, -0.525942,
		-0.471274, 0.743195, 0.474932,
		0.708642, -0.001523, 0.705567,
		42.642307, 29.964117, 32.592838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408745, 30.684559, 32.338062>,  <42.146259, 29.965183, 32.098942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408745, 30.684559, 32.338062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741489, 30.462715, 32.346207>,  <42.941135, 30.329609, 32.351093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741489, 30.462715, 32.346207>,  <42.408745, 30.684559, 32.338062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741489, 30.462715, 32.346207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485543, 0.709519, -0.510716,
		0.268798, 0.434734, 0.859508,
		0.831862, -0.554608, 0.020365,
		42.991047, 30.296333, 32.352318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851212, 31.122770, 31.903564>,  <42.408745, 30.684559, 32.338062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851212, 31.122770, 31.903564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087559, 30.808308, 31.976040>,  <43.229366, 30.619631, 32.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087559, 30.808308, 31.976040>,  <42.851212, 31.122770, 31.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087559, 30.808308, 31.976040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761110, 0.468713, -0.448352,
		0.267550, 0.402823, 0.875301,
		0.590871, -0.786156, 0.181188,
		43.264820, 30.572460, 32.030396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328827, 31.034569, 31.228283>,  <42.851212, 31.122770, 31.903564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328827, 31.034569, 31.228283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479435, 31.377356, 31.369049>,  <43.569798, 31.583027, 31.453508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479435, 31.377356, 31.369049>,  <43.328827, 31.034569, 31.228283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479435, 31.377356, 31.369049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209495, -0.448792, 0.868733,
		0.902412, -0.253367, -0.348507,
		0.376516, 0.856966, 0.351916,
		43.592388, 31.634445, 31.474625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033848, 30.951591, 31.386637>,  <43.328827, 31.034569, 31.228283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033848, 30.951591, 31.386637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802116, 31.194401, 31.604223>,  <43.663078, 31.340086, 31.734776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802116, 31.194401, 31.604223>,  <44.033848, 30.951591, 31.386637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802116, 31.194401, 31.604223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168072, -0.564064, 0.808445,
		0.797575, 0.559784, 0.224756,
		-0.579331, 0.607021, 0.543968,
		43.628319, 31.376507, 31.767414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402210, 30.932972, 31.978821>,  <44.033848, 30.951591, 31.386637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402210, 30.932972, 31.978821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046314, 31.093594, 32.065639>,  <43.832775, 31.189966, 32.117729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046314, 31.093594, 32.065639>,  <44.402210, 30.932972, 31.978821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046314, 31.093594, 32.065639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008559, -0.460739, 0.887494,
		0.456378, 0.791501, 0.406503,
		-0.889745, 0.401554, 0.217046,
		43.779392, 31.214060, 32.130753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440262, 31.049145, 32.689880>,  <44.402210, 30.932972, 31.978821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440262, 31.049145, 32.689880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042278, 31.052086, 32.649857>,  <43.803490, 31.053850, 32.625843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042278, 31.052086, 32.649857>,  <44.440262, 31.049145, 32.689880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042278, 31.052086, 32.649857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097561, -0.303434, 0.947845,
		-0.023391, 0.952824, 0.302620,
		-0.994955, 0.007353, -0.100056,
		43.743793, 31.054291, 32.619839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347858, 31.804991, 32.655346>,  <44.440262, 31.049145, 32.689880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347858, 31.804991, 32.655346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951275, 31.757734, 32.633270>,  <43.713326, 31.729380, 32.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951275, 31.757734, 32.633270>,  <44.347858, 31.804991, 32.655346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951275, 31.757734, 32.633270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044821, 0.088700, -0.995049,
		0.122457, -0.989027, -0.082647,
		-0.991461, -0.118147, -0.055191,
		43.653835, 31.722292, 32.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091652, 31.999466, 32.678848>,  <44.347858, 31.804991, 32.655346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091652, 31.999466, 32.678848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187492, 31.908192, 33.056320>,  <45.244995, 31.853428, 33.282803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187492, 31.908192, 33.056320>,  <45.091652, 31.999466, 32.678848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187492, 31.908192, 33.056320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639564, 0.768381, 0.023410,
		-0.730444, 0.597932, 0.330043,
		0.239602, -0.228183, 0.943676,
		45.259373, 31.839737, 33.339424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951309, 32.559063, 32.824123>,  <45.091652, 31.999466, 32.678848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951309, 32.559063, 32.824123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223763, 32.367447, 33.045601>,  <45.387234, 32.252476, 33.178490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223763, 32.367447, 33.045601>,  <44.951309, 32.559063, 32.824123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223763, 32.367447, 33.045601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527486, 0.845534, 0.082648,
		-0.507761, 0.235772, 0.828607,
		0.681130, -0.479044, 0.553696,
		45.428101, 32.223732, 33.211708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415958, 33.055321, 32.461777>,  <44.951309, 32.559063, 32.824123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415958, 33.055321, 32.461777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316727, 32.686367, 32.343346>,  <45.257187, 32.464996, 32.272289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316727, 32.686367, 32.343346>,  <45.415958, 33.055321, 32.461777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316727, 32.686367, 32.343346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955261, 0.182122, 0.233039,
		-0.161030, 0.340642, -0.926300,
		-0.248083, -0.922385, -0.296075,
		45.242302, 32.409653, 32.254524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455227, 33.108368, 33.244595>,  <45.415958, 33.055321, 32.461777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455227, 33.108368, 33.244595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721031, 33.274578, 32.996155>,  <45.880516, 33.374302, 32.847092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721031, 33.274578, 32.996155>,  <45.455227, 33.108368, 33.244595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721031, 33.274578, 32.996155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650717, 0.086890, 0.754332,
		0.367409, -0.905423, -0.212648,
		0.664513, 0.415522, -0.621099,
		45.920383, 33.399235, 32.809826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069988, 32.871868, 33.463970>,  <45.455227, 33.108368, 33.244595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069988, 32.871868, 33.463970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156845, 33.216263, 33.279991>,  <46.208958, 33.422901, 33.169605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156845, 33.216263, 33.279991>,  <46.069988, 32.871868, 33.463970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156845, 33.216263, 33.279991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514831, 0.299313, 0.803343,
		0.829336, -0.411234, -0.378269,
		0.217141, 0.860987, -0.459947,
		46.221989, 33.474560, 33.142006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741070, 33.041679, 33.348404>,  <46.069988, 32.871868, 33.463970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741070, 33.041679, 33.348404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576664, 33.404232, 33.387486>,  <46.478020, 33.621761, 33.410934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576664, 33.404232, 33.387486>,  <46.741070, 33.041679, 33.348404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576664, 33.404232, 33.387486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766723, 0.285715, 0.574894,
		0.493158, 0.311197, -0.812374,
		-0.411013, 0.906379, 0.097699,
		46.453362, 33.676147, 33.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305882, 33.548977, 33.321861>,  <46.741070, 33.041679, 33.348404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305882, 33.548977, 33.321861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012032, 33.698032, 33.548649>,  <46.835720, 33.787468, 33.684723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012032, 33.698032, 33.548649>,  <47.305882, 33.548977, 33.321861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012032, 33.698032, 33.548649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672552, 0.510091, 0.536173,
		-0.089408, 0.775207, -0.625348,
		-0.734629, 0.372640, 0.566973,
		46.791641, 33.809826, 33.718742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112045, 34.271347, 33.346668>,  <47.305882, 33.548977, 33.321861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112045, 34.271347, 33.346668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090149, 34.079727, 33.697102>,  <47.077011, 33.964756, 33.907360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090149, 34.079727, 33.697102>,  <47.112045, 34.271347, 33.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090149, 34.079727, 33.697102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716643, 0.592112, 0.368545,
		-0.695289, 0.648011, 0.310895,
		-0.054736, -0.479046, 0.876082,
		47.073727, 33.936012, 33.959927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676804, 34.728203, 33.837296>,  <47.112045, 34.271347, 33.346668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676804, 34.728203, 33.837296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.949436, 34.484264, 33.999054>,  <47.113014, 34.337902, 34.096107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.949436, 34.484264, 33.999054>,  <46.676804, 34.728203, 33.837296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949436, 34.484264, 33.999054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525921, 0.792513, 0.308756,
		-0.508782, 0.002237, 0.860892,
		0.681578, -0.609851, 0.404393,
		47.153908, 34.301308, 34.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869938, 34.713184, 34.567528>,  <46.676804, 34.728203, 33.837296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869938, 34.713184, 34.567528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203106, 34.639664, 34.358738>,  <47.403008, 34.595551, 34.233463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203106, 34.639664, 34.358738>,  <46.869938, 34.713184, 34.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203106, 34.639664, 34.358738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457841, 0.758693, 0.463429,
		0.310841, -0.624982, 0.716083,
		0.832922, -0.183799, -0.521975,
		47.452984, 34.584522, 34.202145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453457, 34.696808, 35.046917>,  <46.869938, 34.713184, 34.567528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453457, 34.696808, 35.046917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547443, 34.833851, 34.683067>,  <47.603836, 34.916077, 34.464760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547443, 34.833851, 34.683067>,  <47.453457, 34.696808, 35.046917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547443, 34.833851, 34.683067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490084, 0.766405, 0.415260,
		0.839409, -0.543364, 0.012174,
		0.234967, 0.342607, -0.909622,
		47.617935, 34.936634, 34.410179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.025414, 35.112072, 35.261192>,  <47.453457, 34.696808, 35.046917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.025414, 35.112072, 35.261192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.951042, 35.190350, 34.876041>,  <47.906418, 35.237316, 34.644951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.951042, 35.190350, 34.876041>,  <48.025414, 35.112072, 35.261192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.951042, 35.190350, 34.876041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439996, 0.892801, 0.096487,
		0.878540, -0.405722, -0.252104,
		-0.185932, 0.195692, -0.962878,
		47.895264, 35.249058, 34.587177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.000355, 29.321564, 20.840208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733902, 29.046080, 20.725700>,  <36.574032, 28.880789, 20.656996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733902, 29.046080, 20.725700>,  <37.000355, 29.321564, 20.840208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733902, 29.046080, 20.725700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273232, -0.131797, 0.952877,
		-0.693984, 0.712958, -0.100384,
		-0.666131, -0.688709, -0.286268,
		36.534061, 28.839466, 20.639820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348286, 29.417635, 21.231653>,  <37.000355, 29.321564, 20.840208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348286, 29.417635, 21.231653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420242, 29.041363, 21.116579>,  <36.463417, 28.815599, 21.047535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420242, 29.041363, 21.116579>,  <36.348286, 29.417635, 21.231653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420242, 29.041363, 21.116579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069954, -0.303948, 0.950117,
		-0.981197, -0.150789, -0.120481,
		0.179887, -0.940680, -0.287685,
		36.474209, 28.759159, 21.030273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793877, 29.065187, 21.563833>,  <36.348286, 29.417635, 21.231653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793877, 29.065187, 21.563833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088795, 28.808441, 21.479548>,  <36.265747, 28.654394, 21.428976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088795, 28.808441, 21.479548>,  <35.793877, 29.065187, 21.563833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088795, 28.808441, 21.479548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049836, -0.362733, 0.930560,
		-0.673727, -0.675598, -0.299430,
		0.737298, -0.641866, -0.210714,
		36.309982, 28.615881, 21.416334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559917, 28.374548, 21.593628>,  <35.793877, 29.065187, 21.563833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559917, 28.374548, 21.593628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955494, 28.353748, 21.649174>,  <36.192841, 28.341269, 21.682501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955494, 28.353748, 21.649174>,  <35.559917, 28.374548, 21.593628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955494, 28.353748, 21.649174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147670, -0.260535, 0.954105,
		-0.013436, -0.964063, -0.265334,
		0.988946, -0.052001, 0.138862,
		36.252178, 28.338148, 21.690832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526951, 27.954494, 22.128963>,  <35.559917, 28.374548, 21.593628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526951, 27.954494, 22.128963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901760, 28.094028, 22.135899>,  <36.126644, 28.177750, 22.140060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901760, 28.094028, 22.135899>,  <35.526951, 27.954494, 22.128963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901760, 28.094028, 22.135899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084989, -0.275876, 0.957428,
		0.338769, -0.895659, -0.288150,
		0.937023, 0.348837, 0.017338,
		36.182869, 28.198679, 22.141100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941181, 27.473585, 22.374035>,  <35.526951, 27.954494, 22.128963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941181, 27.473585, 22.374035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107948, 27.824230, 22.470144>,  <36.208008, 28.034616, 22.527809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107948, 27.824230, 22.470144>,  <35.941181, 27.473585, 22.374035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107948, 27.824230, 22.470144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023905, -0.274824, 0.961197,
		0.908631, -0.394994, -0.135534,
		0.416915, 0.876613, 0.240272,
		36.233025, 28.087214, 22.542225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500622, 27.223597, 22.824646>,  <35.941181, 27.473585, 22.374035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500622, 27.223597, 22.824646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412338, 27.606258, 22.900646>,  <36.359367, 27.835855, 22.946247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412338, 27.606258, 22.900646>,  <36.500622, 27.223597, 22.824646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412338, 27.606258, 22.900646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246081, -0.133882, 0.959958,
		0.943785, 0.258629, -0.205865,
		-0.220711, 0.956654, 0.190000,
		36.346127, 27.893255, 22.957645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949272, 27.371971, 23.400597>,  <36.500622, 27.223597, 22.824646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949272, 27.371971, 23.400597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717995, 27.697985, 23.415609>,  <36.579227, 27.893593, 23.424618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717995, 27.697985, 23.415609>,  <36.949272, 27.371971, 23.400597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717995, 27.697985, 23.415609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141086, 0.054567, 0.988492,
		0.803609, 0.576835, -0.146541,
		-0.578193, 0.815036, 0.037533,
		36.544537, 27.942495, 23.426868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323170, 27.869429, 23.963871>,  <36.949272, 27.371971, 23.400597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323170, 27.869429, 23.963871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955956, 28.022289, 23.921602>,  <36.735626, 28.114006, 23.896240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955956, 28.022289, 23.921602>,  <37.323170, 27.869429, 23.963871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955956, 28.022289, 23.921602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001180, 0.263888, 0.964553,
		0.396492, 0.885620, -0.241808,
		-0.918037, 0.382152, -0.105674,
		36.680546, 28.136934, 23.889900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300152, 28.533522, 24.385389>,  <37.323170, 27.869429, 23.963871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300152, 28.533522, 24.385389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913616, 28.443487, 24.335556>,  <36.681694, 28.389467, 24.305656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913616, 28.443487, 24.335556>,  <37.300152, 28.533522, 24.385389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913616, 28.443487, 24.335556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180620, 0.248756, 0.951576,
		-0.183196, 0.942049, -0.281038,
		-0.966341, -0.225086, -0.124581,
		36.623714, 28.375961, 24.298182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920750, 29.095076, 24.633680>,  <37.300152, 28.533522, 24.385389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920750, 29.095076, 24.633680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646233, 28.804167, 24.637262>,  <36.481522, 28.629622, 24.639412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646233, 28.804167, 24.637262>,  <36.920750, 29.095076, 24.633680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646233, 28.804167, 24.637262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269072, 0.265307, 0.925858,
		-0.675727, 0.632997, -0.377766,
		-0.686289, -0.727273, 0.008953,
		36.440346, 28.585985, 24.639948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164673, 29.355000, 24.691910>,  <36.920750, 29.095076, 24.633680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164673, 29.355000, 24.691910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197285, 28.990868, 24.854219>,  <36.216850, 28.772388, 24.951605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197285, 28.990868, 24.854219>,  <36.164673, 29.355000, 24.691910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197285, 28.990868, 24.854219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392574, 0.344886, 0.852608,
		-0.916100, -0.228811, -0.329252,
		0.081531, -0.910329, 0.405775,
		36.221745, 28.717770, 24.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552738, 29.338310, 25.092356>,  <36.164673, 29.355000, 24.691910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552738, 29.338310, 25.092356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787090, 29.049351, 25.239262>,  <35.927700, 28.875975, 25.327404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787090, 29.049351, 25.239262>,  <35.552738, 29.338310, 25.092356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787090, 29.049351, 25.239262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420812, 0.116109, 0.899687,
		-0.692577, -0.681657, -0.235969,
		0.585880, -0.722401, 0.367264,
		35.962852, 28.832630, 25.349442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185856, 29.117157, 25.677862>,  <35.552738, 29.338310, 25.092356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185856, 29.117157, 25.677862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549625, 28.967604, 25.750704>,  <35.767887, 28.877871, 25.794409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549625, 28.967604, 25.750704>,  <35.185856, 29.117157, 25.677862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549625, 28.967604, 25.750704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084259, 0.263149, 0.961069,
		-0.407249, -0.889361, 0.207811,
		0.909422, -0.373884, 0.182104,
		35.822453, 28.855438, 25.805334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070679, 28.784695, 26.348211>,  <35.185856, 29.117157, 25.677862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070679, 28.784695, 26.348211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462509, 28.835392, 26.285782>,  <35.697609, 28.865810, 26.248323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462509, 28.835392, 26.285782>,  <35.070679, 28.784695, 26.348211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462509, 28.835392, 26.285782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103431, 0.348005, 0.931769,
		0.172410, -0.928886, 0.327790,
		0.979580, 0.126743, -0.156076,
		35.756382, 28.873415, 26.238958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265408, 28.317034, 26.922304>,  <35.070679, 28.784695, 26.348211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265408, 28.317034, 26.922304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.557926, 28.565577, 26.809790>,  <35.733437, 28.714703, 26.742281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.557926, 28.565577, 26.809790>,  <35.265408, 28.317034, 26.922304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557926, 28.565577, 26.809790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195048, 0.204668, 0.959201,
		0.653576, -0.756325, 0.028479,
		0.731296, 0.621357, -0.281286,
		35.777313, 28.751984, 26.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942772, 28.099035, 27.276506>,  <35.265408, 28.317034, 26.922304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942772, 28.099035, 27.276506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949097, 28.490721, 27.195618>,  <35.952892, 28.725731, 27.147085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949097, 28.490721, 27.195618>,  <35.942772, 28.099035, 27.276506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949097, 28.490721, 27.195618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354333, 0.183636, 0.916911,
		0.934986, -0.086150, -0.344063,
		0.015810, 0.979212, -0.202222,
		35.953838, 28.784485, 27.134951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453533, 28.397776, 27.733414>,  <35.942772, 28.099035, 27.276506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453533, 28.397776, 27.733414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.302082, 28.744057, 27.602448>,  <36.211212, 28.951826, 27.523869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.302082, 28.744057, 27.602448>,  <36.453533, 28.397776, 27.733414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302082, 28.744057, 27.602448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334294, 0.457783, 0.823822,
		0.863069, 0.202471, -0.462729,
		-0.378629, 0.865702, -0.327413,
		36.188492, 29.003767, 27.504223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950203, 28.909689, 27.790195>,  <36.453533, 28.397776, 27.733414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950203, 28.909689, 27.790195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611301, 29.122160, 27.788601>,  <36.407963, 29.249641, 27.787645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611301, 29.122160, 27.788601>,  <36.950203, 28.909689, 27.790195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611301, 29.122160, 27.788601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368865, 0.593721, 0.715146,
		0.382234, 0.604439, -0.698964,
		-0.847252, 0.531176, -0.003984,
		36.357124, 29.281513, 27.787405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136688, 29.685946, 27.791378>,  <36.950203, 28.909689, 27.790195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136688, 29.685946, 27.791378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769035, 29.638052, 27.941502>,  <36.548443, 29.609316, 28.031576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769035, 29.638052, 27.941502>,  <37.136688, 29.685946, 27.791378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769035, 29.638052, 27.941502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286393, 0.451082, 0.845284,
		-0.270503, 0.884415, -0.380315,
		-0.919134, -0.119732, 0.375309,
		36.493294, 29.602133, 28.054094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118248, 30.241310, 28.170248>,  <37.136688, 29.685946, 27.791378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118248, 30.241310, 28.170248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805317, 30.023060, 28.290419>,  <36.617558, 29.892109, 28.362520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805317, 30.023060, 28.290419>,  <37.118248, 30.241310, 28.170248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805317, 30.023060, 28.290419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090316, 0.377861, 0.921447,
		-0.616286, 0.748006, -0.246333,
		-0.782327, -0.545627, 0.300427,
		36.570618, 29.859371, 28.380547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667629, 30.678635, 28.462673>,  <37.118248, 30.241310, 28.170248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667629, 30.678635, 28.462673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595261, 30.323708, 28.632347>,  <36.551842, 30.110750, 28.734152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595261, 30.323708, 28.632347>,  <36.667629, 30.678635, 28.462673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595261, 30.323708, 28.632347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137348, 0.404283, 0.904263,
		-0.973861, 0.221858, 0.048730,
		-0.180917, -0.887319, 0.424187,
		36.540985, 30.057512, 28.759604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178207, 30.834333, 28.951281>,  <36.667629, 30.678635, 28.462673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178207, 30.834333, 28.951281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554886, 30.959526, 28.901894>,  <37.780895, 31.034641, 28.872261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554886, 30.959526, 28.901894>,  <37.178207, 30.834333, 28.951281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554886, 30.959526, 28.901894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174938, 0.142016, -0.974284,
		-0.287397, 0.939082, 0.188488,
		0.941700, 0.312980, -0.123466,
		37.837395, 31.053421, 28.864853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105663, 31.355892, 28.478554>,  <37.178207, 30.834333, 28.951281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105663, 31.355892, 28.478554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495834, 31.270601, 28.456398>,  <37.729939, 31.219427, 28.443106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495834, 31.270601, 28.456398>,  <37.105663, 31.355892, 28.478554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495834, 31.270601, 28.456398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011637, 0.300935, -0.953574,
		0.219995, 0.929501, 0.296023,
		0.975432, -0.213227, -0.055388,
		37.788464, 31.206633, 28.439781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292850, 31.805763, 27.922842>,  <37.105663, 31.355892, 28.478554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292850, 31.805763, 27.922842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601192, 31.555086, 27.968512>,  <37.786198, 31.404680, 27.995914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601192, 31.555086, 27.968512>,  <37.292850, 31.805763, 27.922842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601192, 31.555086, 27.968512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225131, 0.100355, -0.969146,
		0.595897, 0.772779, 0.218447,
		0.770858, -0.626691, 0.114175,
		37.832451, 31.367079, 28.002764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931900, 32.234539, 27.704411>,  <37.292850, 31.805763, 27.922842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931900, 32.234539, 27.704411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007393, 31.841854, 27.694441>,  <38.052689, 31.606243, 27.688459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007393, 31.841854, 27.694441>,  <37.931900, 32.234539, 27.704411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007393, 31.841854, 27.694441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427963, 0.105066, -0.897668,
		0.883870, 0.158754, 0.439966,
		0.188735, -0.981712, -0.024924,
		38.064014, 31.547340, 27.686964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468002, 32.168404, 27.235613>,  <37.931900, 32.234539, 27.704411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468002, 32.168404, 27.235613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312222, 31.800909, 27.261683>,  <38.218754, 31.580412, 27.277325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312222, 31.800909, 27.261683>,  <38.468002, 32.168404, 27.235613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312222, 31.800909, 27.261683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132809, -0.126035, -0.983096,
		0.911421, -0.374214, 0.171101,
		-0.389453, -0.918738, 0.065172,
		38.195385, 31.525288, 27.281235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994823, 31.778990, 27.065283>,  <38.468002, 32.168404, 27.235613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994823, 31.778990, 27.065283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.645721, 31.600201, 26.986790>,  <38.436260, 31.492928, 26.939693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.645721, 31.600201, 26.986790>,  <38.994823, 31.778990, 27.065283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645721, 31.600201, 26.986790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237120, -0.036795, -0.970783,
		0.426694, -0.893790, 0.138099,
		-0.872758, -0.446974, -0.196235,
		38.383896, 31.466108, 26.927919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085457, 31.170000, 26.598814>,  <38.994823, 31.778990, 27.065283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085457, 31.170000, 26.598814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692291, 31.229057, 26.554855>,  <38.456390, 31.264492, 26.528481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692291, 31.229057, 26.554855>,  <39.085457, 31.170000, 26.598814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692291, 31.229057, 26.554855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086339, -0.157440, -0.983747,
		-0.162567, -0.976426, 0.142000,
		-0.982913, 0.147664, -0.109898,
		38.397415, 31.273350, 26.521887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892517, 30.784006, 26.035015>,  <39.085457, 31.170000, 26.598814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892517, 30.784006, 26.035015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580368, 31.031670, 26.070040>,  <38.393078, 31.180267, 26.091055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580368, 31.031670, 26.070040>,  <38.892517, 30.784006, 26.035015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580368, 31.031670, 26.070040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066528, 0.057028, -0.996154,
		-0.621769, -0.783194, -0.003312,
		-0.780370, 0.619157, 0.087563,
		38.346256, 31.217417, 26.096308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455875, 30.493637, 25.668119>,  <38.892517, 30.784006, 26.035015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455875, 30.493637, 25.668119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285091, 30.854994, 25.684031>,  <38.182621, 31.071808, 25.693577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285091, 30.854994, 25.684031>,  <38.455875, 30.493637, 25.668119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285091, 30.854994, 25.684031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170529, -0.037240, -0.984649,
		-0.888044, -0.427192, 0.169955,
		-0.426963, 0.903394, 0.039777,
		38.157001, 31.126013, 25.695963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848827, 30.384338, 25.360189>,  <38.455875, 30.493637, 25.668119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848827, 30.384338, 25.360189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904140, 30.779570, 25.333115>,  <37.937328, 31.016708, 25.316870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904140, 30.779570, 25.333115>,  <37.848827, 30.384338, 25.360189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904140, 30.779570, 25.333115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210206, -0.037506, -0.976938,
		-0.967829, 0.149319, 0.202513,
		0.138279, 0.988078, -0.067687,
		37.945625, 31.075993, 25.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266106, 30.611338, 24.937904>,  <37.848827, 30.384338, 25.360189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266106, 30.611338, 24.937904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515224, 30.922979, 24.909306>,  <37.664696, 31.109964, 24.892145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515224, 30.922979, 24.909306>,  <37.266106, 30.611338, 24.937904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515224, 30.922979, 24.909306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247262, 0.109304, -0.962764,
		-0.742280, 0.617290, 0.260718,
		0.622802, 0.779106, -0.071499,
		37.702065, 31.156712, 24.887856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855762, 31.153568, 24.681145>,  <37.266106, 30.611338, 24.937904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855762, 31.153568, 24.681145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231544, 31.272474, 24.612959>,  <37.457012, 31.343819, 24.572046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231544, 31.272474, 24.612959>,  <36.855762, 31.153568, 24.681145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231544, 31.272474, 24.612959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250902, 0.257889, -0.933028,
		-0.233394, 0.919308, 0.316860,
		0.939455, 0.297264, -0.170467,
		37.513382, 31.361654, 24.561819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846977, 31.687124, 24.222477>,  <36.855762, 31.153568, 24.681145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846977, 31.687124, 24.222477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222290, 31.553804, 24.185511>,  <37.447475, 31.473812, 24.163332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222290, 31.553804, 24.185511>,  <36.846977, 31.687124, 24.222477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222290, 31.553804, 24.185511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072293, 0.072303, -0.994759,
		0.338237, 0.940044, 0.043745,
		0.938280, -0.333302, -0.092414,
		37.503773, 31.453814, 24.157787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288433, 32.187309, 23.870789>,  <36.846977, 31.687124, 24.222477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288433, 32.187309, 23.870789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427299, 31.822012, 23.785505>,  <37.510620, 31.602833, 23.734335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427299, 31.822012, 23.785505>,  <37.288433, 32.187309, 23.870789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427299, 31.822012, 23.785505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043638, 0.211373, -0.976431,
		0.936789, 0.348286, 0.033528,
		0.347164, -0.913246, -0.213210,
		37.531448, 31.548038, 23.721542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588181, 32.278378, 23.272404>,  <37.288433, 32.187309, 23.870789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588181, 32.278378, 23.272404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595894, 31.878473, 23.276649>,  <37.600521, 31.638531, 23.279198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595894, 31.878473, 23.276649>,  <37.588181, 32.278378, 23.272404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595894, 31.878473, 23.276649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121038, -0.008206, -0.992614,
		0.992461, 0.020428, 0.120850,
		0.019285, -0.999758, 0.010616,
		37.601681, 31.578547, 23.279835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084087, 32.076107, 22.808670>,  <37.588181, 32.278378, 23.272404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084087, 32.076107, 22.808670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848698, 31.755692, 22.852549>,  <37.707466, 31.563442, 22.878876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848698, 31.755692, 22.852549>,  <38.084087, 32.076107, 22.808670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848698, 31.755692, 22.852549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104829, -0.058939, -0.992742,
		0.801693, -0.595701, -0.049289,
		-0.588472, -0.801041, 0.109698,
		37.672157, 31.515379, 22.885458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460907, 31.543900, 22.501513>,  <38.084087, 32.076107, 22.808670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460907, 31.543900, 22.501513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088200, 31.399151, 22.513243>,  <37.864574, 31.312302, 22.520281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088200, 31.399151, 22.513243>,  <38.460907, 31.543900, 22.501513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088200, 31.399151, 22.513243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043763, -0.192129, -0.980393,
		0.360413, -0.912214, 0.194856,
		-0.931766, -0.361874, 0.029325,
		37.808670, 31.290588, 22.522039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418571, 30.898285, 22.084709>,  <38.460907, 31.543900, 22.501513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418571, 30.898285, 22.084709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040318, 31.028345, 22.087456>,  <37.813366, 31.106380, 22.089104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040318, 31.028345, 22.087456>,  <38.418571, 30.898285, 22.084709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040318, 31.028345, 22.087456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096572, -0.260579, -0.960611,
		-0.310555, -0.909052, 0.277814,
		-0.945637, 0.325152, 0.006865,
		37.756626, 31.125891, 22.089516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.048477, 30.413889, 21.622341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782650, 30.711451, 21.650499>,  <37.623154, 30.889988, 21.667395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782650, 30.711451, 21.650499>,  <38.048477, 30.413889, 21.622341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782650, 30.711451, 21.650499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315662, -0.194106, -0.928806,
		-0.677279, -0.639475, 0.363819,
		-0.664568, 0.743905, 0.070394,
		37.583279, 30.934622, 21.671618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380775, 30.181240, 21.338892>,  <38.048477, 30.413889, 21.622341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380775, 30.181240, 21.338892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393051, 30.579828, 21.307640>,  <37.400417, 30.818981, 21.288889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393051, 30.579828, 21.307640>,  <37.380775, 30.181240, 21.338892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393051, 30.579828, 21.307640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273525, -0.066809, -0.959542,
		-0.961375, 0.050815, 0.270510,
		0.030687, 0.996471, -0.078128,
		37.402256, 30.878769, 21.284203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832012, 30.272196, 20.848677>,  <37.380775, 30.181240, 21.338892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832012, 30.272196, 20.848677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058025, 30.602205, 20.845121>,  <37.193634, 30.800211, 20.842989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058025, 30.602205, 20.845121>,  <36.832012, 30.272196, 20.848677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058025, 30.602205, 20.845121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117210, 0.069601, -0.990665,
		-0.816703, 0.560797, 0.136027,
		0.565030, 0.825023, -0.008888,
		37.227535, 30.849712, 20.842455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549141, 30.649088, 20.329466>,  <36.832012, 30.272196, 20.848677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549141, 30.649088, 20.329466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923496, 30.779194, 20.383610>,  <37.148109, 30.857258, 20.416096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923496, 30.779194, 20.383610>,  <36.549141, 30.649088, 20.329466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923496, 30.779194, 20.383610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138117, 0.014719, -0.990307,
		-0.324102, 0.945509, -0.031149,
		0.935885, 0.325263, 0.135361,
		37.204262, 30.876772, 20.424217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709545, 31.277483, 19.830627>,  <36.549141, 30.649088, 20.329466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709545, 31.277483, 19.830627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055695, 31.114756, 19.947678>,  <37.263386, 31.017120, 20.017908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055695, 31.114756, 19.947678>,  <36.709545, 31.277483, 19.830627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055695, 31.114756, 19.947678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296242, -0.055688, -0.953488,
		0.404191, 0.911810, 0.072326,
		0.865373, -0.406817, 0.292625,
		37.315308, 30.992710, 20.035465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057823, 31.412901, 19.274147>,  <36.709545, 31.277483, 19.830627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057823, 31.412901, 19.274147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338573, 31.203985, 19.467880>,  <37.507023, 31.078636, 19.584120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338573, 31.203985, 19.467880>,  <37.057823, 31.412901, 19.274147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338573, 31.203985, 19.467880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489433, -0.140394, -0.860665,
		0.517514, 0.841132, 0.157086,
		0.701879, -0.522290, 0.484334,
		37.549137, 31.047298, 19.613180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686153, 31.651602, 19.032993>,  <37.057823, 31.412901, 19.274147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686153, 31.651602, 19.032993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757607, 31.284866, 19.175821>,  <37.800480, 31.064825, 19.261518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757607, 31.284866, 19.175821>,  <37.686153, 31.651602, 19.032993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757607, 31.284866, 19.175821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523478, -0.218720, -0.823488,
		0.833103, 0.334021, 0.440874,
		0.178635, -0.916838, 0.357069,
		37.811195, 31.009815, 19.282942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414059, 31.523382, 18.871750>,  <37.686153, 31.651602, 19.032993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414059, 31.523382, 18.871750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212738, 31.178223, 18.890068>,  <38.091946, 30.971127, 18.901060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212738, 31.178223, 18.890068>,  <38.414059, 31.523382, 18.871750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212738, 31.178223, 18.890068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309378, -0.229428, -0.922848,
		0.806831, -0.450299, 0.382432,
		-0.503298, -0.862898, 0.045797,
		38.061749, 30.919353, 18.903807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816757, 30.970608, 18.670944>,  <38.414059, 31.523382, 18.871750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816757, 30.970608, 18.670944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451241, 30.830023, 18.589506>,  <38.231930, 30.745672, 18.540644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451241, 30.830023, 18.589506>,  <38.816757, 30.970608, 18.670944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451241, 30.830023, 18.589506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327962, -0.342738, -0.880325,
		0.239623, -0.871208, 0.428459,
		-0.913795, -0.351464, -0.203595,
		38.177101, 30.724583, 18.528427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934650, 30.353046, 18.371260>,  <38.816757, 30.970608, 18.670944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934650, 30.353046, 18.371260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.558102, 30.422226, 18.255396>,  <38.332172, 30.463734, 18.185877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.558102, 30.422226, 18.255396>,  <38.934650, 30.353046, 18.371260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558102, 30.422226, 18.255396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225570, -0.315784, -0.921628,
		-0.250865, -0.932936, 0.258259,
		-0.941374, 0.172949, -0.289661,
		38.275688, 30.474112, 18.168497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821892, 29.956667, 17.711126>,  <38.934650, 30.353046, 18.371260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821892, 29.956667, 17.711126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519558, 30.218571, 17.711802>,  <38.338158, 30.375713, 17.712206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519558, 30.218571, 17.711802>,  <38.821892, 29.956667, 17.711126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519558, 30.218571, 17.711802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049614, -0.054702, -0.997269,
		-0.652881, -0.753854, 0.073831,
		-0.755834, 0.654762, 0.001688,
		38.292809, 30.414999, 17.712309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427273, 29.601900, 17.286184>,  <38.821892, 29.956667, 17.711126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427273, 29.601900, 17.286184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293831, 29.978960, 17.281757>,  <38.213764, 30.205196, 17.279100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293831, 29.978960, 17.281757>,  <38.427273, 29.601900, 17.286184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293831, 29.978960, 17.281757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106844, 0.026143, -0.993932,
		-0.936639, -0.332763, -0.109438,
		-0.333605, 0.942648, -0.011067,
		38.193748, 30.261755, 17.278437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943680, 29.682474, 16.784767>,  <38.427273, 29.601900, 17.286184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943680, 29.682474, 16.784767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067390, 30.058004, 16.845366>,  <38.141617, 30.283323, 16.881725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067390, 30.058004, 16.845366>,  <37.943680, 29.682474, 16.784767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067390, 30.058004, 16.845366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067984, 0.180727, -0.981181,
		-0.948539, 0.293155, 0.119720,
		0.309275, 0.938828, 0.151497,
		38.160172, 30.339653, 16.890814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504478, 30.090853, 16.391468>,  <37.943680, 29.682474, 16.784767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504478, 30.090853, 16.391468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.826225, 30.320156, 16.453901>,  <38.019276, 30.457739, 16.491362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.826225, 30.320156, 16.453901>,  <37.504478, 30.090853, 16.391468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826225, 30.320156, 16.453901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039523, 0.210500, -0.976795,
		-0.592813, 0.791873, 0.146663,
		0.804370, 0.573260, 0.156084,
		38.067535, 30.492134, 16.500727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331604, 30.724274, 16.079454>,  <37.504478, 30.090853, 16.391468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331604, 30.724274, 16.079454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728737, 30.691948, 16.114676>,  <37.967018, 30.672552, 16.135809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728737, 30.691948, 16.114676>,  <37.331604, 30.724274, 16.079454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728737, 30.691948, 16.114676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106714, 0.267636, -0.957592,
		0.053820, 0.960125, 0.274342,
		0.992832, -0.080814, 0.088054,
		38.026588, 30.667704, 16.141092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555752, 31.306324, 15.679770>,  <37.331604, 30.724274, 16.079454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555752, 31.306324, 15.679770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868484, 31.061356, 15.726554>,  <38.056126, 30.914373, 15.754624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868484, 31.061356, 15.726554>,  <37.555752, 31.306324, 15.679770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868484, 31.061356, 15.726554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342130, 0.264578, -0.901635,
		0.521237, 0.744941, 0.416383,
		0.781831, -0.612423, 0.116959,
		38.103035, 30.877628, 15.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172268, 31.757433, 15.509616>,  <37.555752, 31.306324, 15.679770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172268, 31.757433, 15.509616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253574, 31.369709, 15.454296>,  <38.302357, 31.137075, 15.421104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253574, 31.369709, 15.454296>,  <38.172268, 31.757433, 15.509616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253574, 31.369709, 15.454296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258038, 0.189286, -0.947411,
		0.944511, 0.156886, 0.288593,
		0.203262, -0.969308, -0.138300,
		38.314552, 31.078917, 15.412806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736050, 31.833191, 15.089902>,  <38.172268, 31.757433, 15.509616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736050, 31.833191, 15.089902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610786, 31.457787, 15.031755>,  <38.535629, 31.232544, 14.996867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610786, 31.457787, 15.031755>,  <38.736050, 31.833191, 15.089902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610786, 31.457787, 15.031755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159447, 0.202851, -0.966141,
		0.936220, -0.279377, -0.213168,
		-0.313159, -0.938509, -0.145367,
		38.516838, 31.176233, 14.988145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106174, 31.602373, 14.525017>,  <38.736050, 31.833191, 15.089902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106174, 31.602373, 14.525017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801659, 31.343317, 14.537672>,  <38.618950, 31.187883, 14.545265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801659, 31.343317, 14.537672>,  <39.106174, 31.602373, 14.525017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801659, 31.343317, 14.537672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043717, 0.002583, -0.999041,
		0.646936, -0.761943, -0.030279,
		-0.761290, -0.647639, 0.031639,
		38.573273, 31.149025, 14.547164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240257, 31.175261, 13.909788>,  <39.106174, 31.602373, 14.525017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240257, 31.175261, 13.909788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854477, 31.136686, 14.008201>,  <38.623009, 31.113541, 14.067248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854477, 31.136686, 14.008201>,  <39.240257, 31.175261, 13.909788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854477, 31.136686, 14.008201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249793, 0.028905, -0.967868,
		0.086229, -0.994919, -0.051968,
		-0.964452, -0.096439, 0.246031,
		38.565140, 31.107756, 14.082010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922283, 30.589218, 13.468947>,  <39.240257, 31.175261, 13.909788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922283, 30.589218, 13.468947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.633308, 30.849829, 13.561547>,  <38.459923, 31.006195, 13.617107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.633308, 30.849829, 13.561547>,  <38.922283, 30.589218, 13.468947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633308, 30.849829, 13.561547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352380, -0.058863, -0.934004,
		-0.594904, -0.756337, 0.272111,
		-0.722439, 0.651529, 0.231501,
		38.416576, 31.045288, 13.630998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542614, 30.494167, 12.923706>,  <38.922283, 30.589218, 13.468947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542614, 30.494167, 12.923706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.376568, 30.821045, 13.083639>,  <38.276939, 31.017172, 13.179599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.376568, 30.821045, 13.083639>,  <38.542614, 30.494167, 12.923706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376568, 30.821045, 13.083639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499549, 0.162560, -0.850897,
		-0.760347, -0.552960, 0.340748,
		-0.415119, 0.817196, 0.399832,
		38.252033, 31.066204, 13.203588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811180, 30.320942, 13.017532>,  <38.542614, 30.494167, 12.923706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811180, 30.320942, 13.017532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917538, 30.703430, 12.968647>,  <37.981354, 30.932924, 12.939316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917538, 30.703430, 12.968647>,  <37.811180, 30.320942, 13.017532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917538, 30.703430, 12.968647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487632, 0.024057, -0.872717,
		-0.831572, 0.291649, 0.472682,
		0.265898, 0.956223, -0.122213,
		37.997307, 30.990297, 12.931983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244175, 30.755829, 12.753736>,  <37.811180, 30.320942, 13.017532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244175, 30.755829, 12.753736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594280, 30.915909, 12.645103>,  <37.804344, 31.011957, 12.579923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594280, 30.915909, 12.645103>,  <37.244175, 30.755829, 12.753736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594280, 30.915909, 12.645103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379786, 0.221024, -0.898283,
		-0.299467, 0.889375, 0.345444,
		0.875261, 0.400201, -0.271582,
		37.856857, 31.035969, 12.563628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418934, 30.726690, 12.757333>,  <37.244175, 30.755829, 12.753736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418934, 30.726690, 12.757333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243355, 30.369236, 12.719934>,  <36.138008, 30.154762, 12.697495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243355, 30.369236, 12.719934>,  <36.418934, 30.726690, 12.757333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243355, 30.369236, 12.719934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066171, -0.071624, 0.995234,
		-0.896075, 0.443039, -0.027694,
		-0.438944, -0.893637, -0.093496,
		36.111671, 30.101145, 12.691886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802261, 30.742220, 13.173640>,  <36.418934, 30.726690, 12.757333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802261, 30.742220, 13.173640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869827, 30.350742, 13.126942>,  <35.910366, 30.115856, 13.098923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869827, 30.350742, 13.126942>,  <35.802261, 30.742220, 13.173640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869827, 30.350742, 13.126942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273453, -0.160331, 0.948429,
		-0.946939, -0.128275, -0.294709,
		0.168911, -0.978693, -0.116747,
		35.920502, 30.057135, 13.091918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360680, 30.373846, 13.709682>,  <35.802261, 30.742220, 13.173640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360680, 30.373846, 13.709682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582611, 30.058550, 13.603220>,  <35.715771, 29.869371, 13.539343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582611, 30.058550, 13.603220>,  <35.360680, 30.373846, 13.709682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582611, 30.058550, 13.603220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314725, -0.494996, 0.809893,
		-0.770139, -0.365586, -0.522718,
		0.554829, -0.788242, -0.266157,
		35.749062, 29.822077, 13.523373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968269, 29.743296, 13.689171>,  <35.360680, 30.373846, 13.709682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968269, 29.743296, 13.689171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351658, 29.657513, 13.764363>,  <35.581692, 29.606043, 13.809479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351658, 29.657513, 13.764363>,  <34.968269, 29.743296, 13.689171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351658, 29.657513, 13.764363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273325, -0.502697, 0.820115,
		-0.081383, -0.837438, -0.540439,
		0.958473, -0.214459, 0.187981,
		35.639198, 29.593174, 13.820758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914597, 29.246708, 14.137568>,  <34.968269, 29.743296, 13.689171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914597, 29.246708, 14.137568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299007, 29.338636, 14.199030>,  <35.529655, 29.393793, 14.235908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299007, 29.338636, 14.199030>,  <34.914597, 29.246708, 14.137568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299007, 29.338636, 14.199030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081694, -0.294906, 0.952028,
		0.264111, -0.927476, -0.264637,
		0.961026, 0.229822, 0.153657,
		35.587315, 29.407583, 14.245127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916031, 28.741016, 14.713286>,  <34.914597, 29.246708, 14.137568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916031, 28.741016, 14.713286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250877, 28.958578, 14.689955>,  <35.451786, 29.089115, 14.675956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250877, 28.958578, 14.689955>,  <34.916031, 28.741016, 14.713286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250877, 28.958578, 14.689955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236477, -0.263671, 0.935177,
		0.493267, -0.796647, -0.349344,
		0.837118, 0.543904, -0.058329,
		35.502014, 29.121750, 14.672456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486782, 28.303984, 14.940830>,  <34.916031, 28.741016, 14.713286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486782, 28.303984, 14.940830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583168, 28.688025, 14.997587>,  <35.640999, 28.918449, 15.031641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583168, 28.688025, 14.997587>,  <35.486782, 28.303984, 14.940830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583168, 28.688025, 14.997587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228982, -0.198315, 0.953016,
		0.943134, -0.197157, -0.267635,
		0.240969, 0.960105, 0.141892,
		35.655460, 28.976055, 15.040154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171337, 28.275963, 15.170862>,  <35.486782, 28.303984, 14.940830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171337, 28.275963, 15.170862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001892, 28.614645, 15.299635>,  <35.900227, 28.817856, 15.376899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001892, 28.614645, 15.299635>,  <36.171337, 28.275963, 15.170862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001892, 28.614645, 15.299635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278207, -0.216611, 0.935778,
		0.862065, 0.485969, -0.143801,
		-0.423610, 0.846708, 0.321933,
		35.874809, 28.868658, 15.396214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645054, 28.635637, 15.680017>,  <36.171337, 28.275963, 15.170862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645054, 28.635637, 15.680017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281586, 28.795164, 15.729435>,  <36.063503, 28.890881, 15.759087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281586, 28.795164, 15.729435>,  <36.645054, 28.635637, 15.680017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281586, 28.795164, 15.729435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107489, -0.062476, 0.992241,
		0.403440, 0.914900, 0.013901,
		-0.908670, 0.398816, 0.123547,
		36.008984, 28.914808, 15.766500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655411, 29.178938, 16.082787>,  <36.645054, 28.635637, 15.680017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655411, 29.178938, 16.082787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268799, 29.092398, 16.137936>,  <36.036831, 29.040474, 16.171024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268799, 29.092398, 16.137936>,  <36.655411, 29.178938, 16.082787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268799, 29.092398, 16.137936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134337, 0.031033, 0.990450,
		-0.218563, 0.975822, -0.000931,
		-0.966532, -0.216351, 0.137872,
		35.978840, 29.027493, 16.179296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547646, 29.512482, 16.684477>,  <36.655411, 29.178938, 16.082787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547646, 29.512482, 16.684477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231842, 29.268816, 16.654549>,  <36.042358, 29.122618, 16.636591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231842, 29.268816, 16.654549>,  <36.547646, 29.512482, 16.684477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231842, 29.268816, 16.654549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097166, -0.244432, 0.964786,
		-0.605999, 0.754436, 0.252171,
		-0.789508, -0.609162, -0.074820,
		35.994991, 29.086067, 16.632103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064026, 29.717541, 17.137907>,  <36.547646, 29.512482, 16.684477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064026, 29.717541, 17.137907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918877, 29.351130, 17.069542>,  <35.831787, 29.131283, 17.028522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918877, 29.351130, 17.069542>,  <36.064026, 29.717541, 17.137907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918877, 29.351130, 17.069542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117435, -0.136996, 0.983586,
		-0.924408, 0.376992, -0.057861,
		-0.362877, -0.916029, -0.170913,
		35.810013, 29.076321, 17.018269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470592, 29.679358, 17.566914>,  <36.064026, 29.717541, 17.137907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470592, 29.679358, 17.566914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595165, 29.305027, 17.500891>,  <35.669907, 29.080429, 17.461277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595165, 29.305027, 17.500891>,  <35.470592, 29.679358, 17.566914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595165, 29.305027, 17.500891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105259, -0.206598, 0.972748,
		-0.944422, -0.285568, -0.162845,
		0.311429, -0.935825, -0.165057,
		35.688595, 29.024279, 17.451374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038364, 29.236500, 18.003433>,  <35.470592, 29.679358, 17.566914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038364, 29.236500, 18.003433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348553, 29.005903, 17.900434>,  <35.534664, 28.867546, 17.838634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348553, 29.005903, 17.900434>,  <35.038364, 29.236500, 18.003433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348553, 29.005903, 17.900434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132056, -0.250721, 0.959010,
		-0.617420, -0.777687, -0.118297,
		0.775470, -0.576490, -0.257498,
		35.581192, 28.832956, 17.823185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937824, 28.674854, 18.476439>,  <35.038364, 29.236500, 18.003433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937824, 28.674854, 18.476439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325691, 28.671637, 18.378727>,  <35.558411, 28.669706, 18.320099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325691, 28.671637, 18.378727>,  <34.937824, 28.674854, 18.476439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325691, 28.671637, 18.378727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212747, -0.464237, 0.859781,
		-0.120319, -0.885675, -0.448447,
		0.969671, -0.008042, -0.244280,
		35.616592, 28.669224, 18.305443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285805, 28.039282, 18.752909>,  <34.937824, 28.674854, 18.476439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285805, 28.039282, 18.752909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604893, 28.264755, 18.667206>,  <35.796345, 28.400040, 18.615784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604893, 28.264755, 18.667206>,  <35.285805, 28.039282, 18.752909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604893, 28.264755, 18.667206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448567, -0.317205, 0.835565,
		0.403033, -0.762653, -0.505890,
		0.797717, 0.563686, -0.214257,
		35.844208, 28.433861, 18.602928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818031, 27.668596, 18.848272>,  <35.285805, 28.039282, 18.752909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818031, 27.668596, 18.848272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953636, 28.041433, 18.899300>,  <36.035000, 28.265135, 18.929916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953636, 28.041433, 18.899300>,  <35.818031, 27.668596, 18.848272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953636, 28.041433, 18.899300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330249, -0.244874, 0.911577,
		0.880912, -0.266907, -0.390838,
		0.339013, 0.932093, 0.127567,
		36.055340, 28.321062, 18.937571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443565, 27.567822, 19.207108>,  <35.818031, 27.668596, 18.848272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443565, 27.567822, 19.207108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394062, 27.961796, 19.255413>,  <36.364361, 28.198181, 19.284397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394062, 27.961796, 19.255413>,  <36.443565, 27.567822, 19.207108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394062, 27.961796, 19.255413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418239, -0.058587, 0.906446,
		0.899866, 0.162691, -0.404688,
		-0.123761, 0.984936, 0.120765,
		36.356934, 28.257277, 19.291643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072254, 27.873875, 19.451645>,  <36.443565, 27.567822, 19.207108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072254, 27.873875, 19.451645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777168, 28.113995, 19.575203>,  <36.600117, 28.258066, 19.649338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777168, 28.113995, 19.575203>,  <37.072254, 27.873875, 19.451645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777168, 28.113995, 19.575203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473323, 0.133645, 0.870692,
		0.481392, 0.788531, -0.382727,
		-0.737717, 0.600298, 0.308894,
		36.555855, 28.294085, 19.667871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451237, 28.323009, 19.801687>,  <37.072254, 27.873875, 19.451645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451237, 28.323009, 19.801687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079227, 28.399382, 19.927296>,  <36.856022, 28.445204, 20.002661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079227, 28.399382, 19.927296>,  <37.451237, 28.323009, 19.801687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079227, 28.399382, 19.927296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347846, 0.181575, 0.919801,
		0.118598, 0.964664, -0.235282,
		-0.930020, 0.190928, 0.314020,
		36.800220, 28.456659, 20.021502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.786129, 31.542786, 24.339264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399830, 31.480673, 24.422421>,  <38.168049, 31.443405, 24.472315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399830, 31.480673, 24.422421>,  <38.786129, 31.542786, 24.339264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399830, 31.480673, 24.422421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157767, 0.284696, 0.945546,
		-0.206012, 0.945958, -0.250446,
		-0.965748, -0.155281, 0.207892,
		38.110107, 31.434088, 24.484789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680782, 32.021027, 24.887707>,  <38.786129, 31.542786, 24.339264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680782, 32.021027, 24.887707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356918, 31.786449, 24.878504>,  <38.162598, 31.645704, 24.872982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356918, 31.786449, 24.878504>,  <38.680782, 32.021027, 24.887707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356918, 31.786449, 24.878504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063630, 0.048743, 0.996782,
		-0.583434, 0.808523, -0.076781,
		-0.809664, -0.586442, -0.023008,
		38.114017, 31.610518, 24.871601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134991, 32.371670, 25.184057>,  <38.680782, 32.021027, 24.887707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134991, 32.371670, 25.184057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064186, 31.981030, 25.232918>,  <38.021706, 31.746645, 25.262234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064186, 31.981030, 25.232918>,  <38.134991, 32.371670, 25.184057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064186, 31.981030, 25.232918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003226, 0.124687, 0.992191,
		-0.984204, 0.175233, -0.025222,
		-0.177009, -0.976600, 0.122152,
		38.011082, 31.688049, 25.269564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692192, 32.311554, 25.750542>,  <38.134991, 32.371670, 25.184057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692192, 32.311554, 25.750542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808983, 31.929815, 25.725348>,  <37.879055, 31.700771, 25.710232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808983, 31.929815, 25.725348>,  <37.692192, 32.311554, 25.750542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808983, 31.929815, 25.725348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019291, -0.071716, 0.997238,
		-0.956232, -0.289952, -0.039350,
		0.291974, -0.954350, -0.062984,
		37.896576, 31.643511, 25.706453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239567, 31.958818, 26.146471>,  <37.692192, 32.311554, 25.750542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239567, 31.958818, 26.146471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573654, 31.739407, 26.130861>,  <37.774109, 31.607759, 26.121496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573654, 31.739407, 26.130861>,  <37.239567, 31.958818, 26.146471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573654, 31.739407, 26.130861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067263, -0.172336, 0.982739,
		-0.545786, -0.818179, -0.180834,
		0.835221, -0.548529, -0.039025,
		37.824219, 31.574848, 26.119154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138439, 31.323269, 26.437813>,  <37.239567, 31.958818, 26.146471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138439, 31.323269, 26.437813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.536690, 31.348339, 26.465517>,  <37.775639, 31.363382, 26.482140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.536690, 31.348339, 26.465517>,  <37.138439, 31.323269, 26.437813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536690, 31.348339, 26.465517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055748, -0.196233, 0.978971,
		0.074950, -0.978552, -0.191881,
		0.995627, 0.062677, 0.069260,
		37.835377, 31.367142, 26.486296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375767, 30.742006, 26.726759>,  <37.138439, 31.323269, 26.437813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375767, 30.742006, 26.726759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.678108, 30.993393, 26.800209>,  <37.859512, 31.144224, 26.844280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.678108, 30.993393, 26.800209>,  <37.375767, 30.742006, 26.726759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678108, 30.993393, 26.800209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145934, -0.435109, 0.888472,
		0.638272, -0.644756, -0.420592,
		0.755852, 0.628466, 0.183627,
		37.904865, 31.181932, 26.855297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727554, 30.357798, 27.187654>,  <37.375767, 30.742006, 26.726759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727554, 30.357798, 27.187654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878410, 30.724833, 27.237925>,  <37.968925, 30.945053, 27.268087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878410, 30.724833, 27.237925>,  <37.727554, 30.357798, 27.187654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878410, 30.724833, 27.237925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070727, -0.163835, 0.983949,
		0.923450, -0.362202, -0.126688,
		0.377144, 0.917588, 0.125676,
		37.991554, 31.000109, 27.275627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342415, 30.279188, 27.576952>,  <37.727554, 30.357798, 27.187654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342415, 30.279188, 27.576952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.262577, 30.668890, 27.618885>,  <38.214676, 30.902712, 27.644045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.262577, 30.668890, 27.618885>,  <38.342415, 30.279188, 27.576952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262577, 30.668890, 27.618885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130692, -0.079564, 0.988225,
		0.971125, 0.210942, -0.111447,
		-0.199591, 0.974255, 0.104835,
		38.202702, 30.961166, 27.650335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853058, 30.598610, 28.049318>,  <38.342415, 30.279188, 27.576952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853058, 30.598610, 28.049318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542374, 30.850525, 28.045500>,  <38.355965, 31.001675, 28.043209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542374, 30.850525, 28.045500>,  <38.853058, 30.598610, 28.049318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542374, 30.850525, 28.045500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109191, 0.149557, 0.982705,
		0.620323, 0.762234, -0.184929,
		-0.776709, 0.629787, -0.009545,
		38.309361, 31.039461, 28.042637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093826, 31.076326, 28.459904>,  <38.853058, 30.598610, 28.049318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093826, 31.076326, 28.459904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696533, 31.119621, 28.443029>,  <38.458157, 31.145597, 28.432905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696533, 31.119621, 28.443029>,  <39.093826, 31.076326, 28.459904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696533, 31.119621, 28.443029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024785, 0.157344, 0.987233,
		0.113492, 0.981595, -0.153596,
		-0.993230, 0.108236, -0.042186,
		38.398563, 31.152092, 28.430374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959824, 31.659691, 28.892757>,  <39.093826, 31.076326, 28.459904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959824, 31.659691, 28.892757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614998, 31.459116, 28.863350>,  <38.408100, 31.338772, 28.845705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614998, 31.459116, 28.863350>,  <38.959824, 31.659691, 28.892757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614998, 31.459116, 28.863350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188121, 0.181914, 0.965152,
		-0.470587, 0.845855, -0.251153,
		-0.862066, -0.501435, -0.073516,
		38.356377, 31.308685, 28.841295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540936, 32.114994, 29.122799>,  <38.959824, 31.659691, 28.892757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540936, 32.114994, 29.122799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372757, 31.754374, 29.163673>,  <38.271851, 31.538002, 29.188198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372757, 31.754374, 29.163673>,  <38.540936, 32.114994, 29.122799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372757, 31.754374, 29.163673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199605, 0.201769, 0.958878,
		-0.885091, 0.382756, -0.264785,
		-0.420442, -0.901547, 0.102184,
		38.246624, 31.483910, 29.194328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914948, 32.163517, 29.379574>,  <38.540936, 32.114994, 29.122799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914948, 32.163517, 29.379574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039848, 31.803680, 29.501717>,  <38.114788, 31.587780, 29.575003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039848, 31.803680, 29.501717>,  <37.914948, 32.163517, 29.379574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039848, 31.803680, 29.501717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197865, 0.252794, 0.947072,
		-0.929167, -0.356140, -0.099063,
		0.312247, -0.899589, 0.305355,
		38.133522, 31.533804, 29.593323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646168, 32.902149, 29.341629>,  <37.914948, 32.163517, 29.379574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646168, 32.902149, 29.341629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535355, 33.274593, 29.436529>,  <37.468868, 33.498058, 29.493469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535355, 33.274593, 29.436529>,  <37.646168, 32.902149, 29.341629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535355, 33.274593, 29.436529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239133, 0.172335, -0.955571,
		-0.930629, -0.321457, 0.174917,
		-0.277030, 0.931110, 0.237251,
		37.452244, 33.553925, 29.507704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994644, 33.069817, 29.020550>,  <37.646168, 32.902149, 29.341629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994644, 33.069817, 29.020550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150253, 33.428043, 29.106924>,  <37.243618, 33.642979, 29.158749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150253, 33.428043, 29.106924>,  <36.994644, 33.069817, 29.020550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150253, 33.428043, 29.106924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038828, 0.250132, -0.967433,
		-0.920409, 0.367969, 0.132080,
		0.389023, 0.895563, 0.215936,
		37.266960, 33.696712, 29.171705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532951, 33.683590, 28.728537>,  <36.994644, 33.069817, 29.020550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532951, 33.683590, 28.728537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902668, 33.835461, 28.744198>,  <37.124496, 33.926582, 28.753595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902668, 33.835461, 28.744198>,  <36.532951, 33.683590, 28.728537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902668, 33.835461, 28.744198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109439, 0.361891, -0.925774,
		-0.365665, 0.851399, 0.376043,
		0.924290, 0.379677, 0.039155,
		37.179955, 33.949364, 28.755945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455494, 34.359844, 28.544867>,  <36.532951, 33.683590, 28.728537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455494, 34.359844, 28.544867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844090, 34.281425, 28.491550>,  <37.077248, 34.234375, 28.459560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844090, 34.281425, 28.491550>,  <36.455494, 34.359844, 28.544867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844090, 34.281425, 28.491550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047909, 0.388277, -0.920296,
		0.232177, 0.900447, 0.367816,
		0.971493, -0.196050, -0.133289,
		37.135536, 34.222610, 28.451565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606525, 34.960850, 28.242466>,  <36.455494, 34.359844, 28.544867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606525, 34.960850, 28.242466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893005, 34.700268, 28.142340>,  <37.064896, 34.543919, 28.082264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893005, 34.700268, 28.142340>,  <36.606525, 34.960850, 28.242466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893005, 34.700268, 28.142340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021155, 0.378775, -0.925247,
		0.697571, 0.657369, 0.285061,
		0.716203, -0.651456, -0.250316,
		37.107864, 34.504829, 28.067245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967136, 35.388367, 27.774696>,  <36.606525, 34.960850, 28.242466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967136, 35.388367, 27.774696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.096889, 35.013748, 27.721533>,  <37.174740, 34.788979, 27.689634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.096889, 35.013748, 27.721533>,  <36.967136, 35.388367, 27.774696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096889, 35.013748, 27.721533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038918, 0.153600, -0.987366,
		0.945126, 0.315109, 0.086273,
		0.324379, -0.936543, -0.132908,
		37.194202, 34.732784, 27.681660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483452, 35.423519, 27.226061>,  <36.967136, 35.388367, 27.774696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483452, 35.423519, 27.226061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.323689, 35.057377, 27.246433>,  <37.227829, 34.837692, 27.258657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.323689, 35.057377, 27.246433>,  <37.483452, 35.423519, 27.226061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323689, 35.057377, 27.246433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000685, -0.055257, -0.998472,
		0.916771, -0.398837, 0.021443,
		-0.399412, -0.915356, 0.050931,
		37.203865, 34.782772, 27.261713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884407, 34.959492, 26.777586>,  <37.483452, 35.423519, 27.226061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884407, 34.959492, 26.777586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.523445, 34.793739, 26.824837>,  <37.306866, 34.694290, 26.853188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.523445, 34.793739, 26.824837>,  <37.884407, 34.959492, 26.777586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523445, 34.793739, 26.824837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057745, -0.155368, -0.986168,
		0.427000, -0.896745, 0.116277,
		-0.902406, -0.414379, 0.118125,
		37.252724, 34.669426, 26.860273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904205, 34.400192, 26.364092>,  <37.884407, 34.959492, 26.777586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904205, 34.400192, 26.364092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514050, 34.465218, 26.423674>,  <37.279957, 34.504234, 26.459423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514050, 34.465218, 26.423674>,  <37.904205, 34.400192, 26.364092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514050, 34.465218, 26.423674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147053, 0.023728, -0.988844,
		-0.164284, -0.986413, 0.000762,
		-0.975390, 0.162563, 0.148953,
		37.221432, 34.513985, 26.468359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599457, 33.905216, 26.000774>,  <37.904205, 34.400192, 26.364092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599457, 33.905216, 26.000774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294769, 34.162857, 26.028856>,  <37.111958, 34.317440, 26.045706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294769, 34.162857, 26.028856>,  <37.599457, 33.905216, 26.000774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294769, 34.162857, 26.028856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285941, -0.236956, -0.928488,
		-0.581402, -0.727317, 0.364667,
		-0.761715, 0.644098, 0.070203,
		37.066254, 34.356087, 26.049917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012306, 33.638073, 25.639822>,  <37.599457, 33.905216, 26.000774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012306, 33.638073, 25.639822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.903496, 34.022694, 25.654921>,  <36.838207, 34.253464, 25.663980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.903496, 34.022694, 25.654921>,  <37.012306, 33.638073, 25.639822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903496, 34.022694, 25.654921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141276, -0.001106, -0.989970,
		-0.951862, -0.274634, 0.136145,
		-0.272030, 0.961548, 0.037746,
		36.821888, 34.311157, 25.666245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437038, 33.701828, 25.218920>,  <37.012306, 33.638073, 25.639822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437038, 33.701828, 25.218920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.566921, 34.079041, 25.247917>,  <36.644852, 34.305370, 25.265316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.566921, 34.079041, 25.247917>,  <36.437038, 33.701828, 25.218920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566921, 34.079041, 25.247917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217155, 0.148932, -0.964709,
		-0.920550, 0.297501, 0.253143,
		0.324703, 0.943034, 0.072495,
		36.664333, 34.361950, 25.269667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007526, 34.033485, 24.711369>,  <36.437038, 33.701828, 25.218920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007526, 34.033485, 24.711369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302193, 34.298088, 24.767544>,  <36.478992, 34.456852, 24.801249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302193, 34.298088, 24.767544>,  <36.007526, 34.033485, 24.711369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302193, 34.298088, 24.767544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003897, 0.203511, -0.979065,
		-0.676241, 0.721795, 0.147343,
		0.736670, 0.661510, 0.140436,
		36.523193, 34.496540, 24.809675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813160, 34.674278, 24.298269>,  <36.007526, 34.033485, 24.711369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813160, 34.674278, 24.298269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211132, 34.669601, 24.338221>,  <36.449917, 34.666794, 24.362192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211132, 34.669601, 24.338221>,  <35.813160, 34.674278, 24.298269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211132, 34.669601, 24.338221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099858, 0.232274, -0.967511,
		-0.011885, 0.972580, 0.232264,
		0.994931, -0.011694, 0.099880,
		36.509613, 34.666092, 24.368185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190556, 35.223518, 24.209026>,  <35.813160, 34.674278, 24.298269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190556, 35.223518, 24.209026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.888512, 34.978439, 24.115719>,  <34.707287, 34.831394, 24.059734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.888512, 34.978439, 24.115719>,  <35.190556, 35.223518, 24.209026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888512, 34.978439, 24.115719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092743, -0.252404, 0.963167,
		-0.649004, 0.748932, 0.133770,
		-0.755111, -0.612693, -0.233269,
		34.661980, 34.794632, 24.045738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796547, 35.367062, 24.763592>,  <35.190556, 35.223518, 24.209026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796547, 35.367062, 24.763592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.680611, 35.010719, 24.623672>,  <34.611050, 34.796913, 24.539721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.680611, 35.010719, 24.623672>,  <34.796547, 35.367062, 24.763592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680611, 35.010719, 24.623672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184093, -0.306767, 0.933812,
		-0.939202, 0.335055, -0.075086,
		-0.289844, -0.890860, -0.349797,
		34.593658, 34.743462, 24.518734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185722, 35.234638, 25.102390>,  <34.796547, 35.367062, 24.763592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185722, 35.234638, 25.102390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.337334, 34.879879, 24.996748>,  <34.428303, 34.667023, 24.933363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.337334, 34.879879, 24.996748>,  <34.185722, 35.234638, 25.102390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337334, 34.879879, 24.996748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195225, -0.355614, 0.914017,
		-0.904556, -0.294882, -0.307933,
		0.379032, -0.886895, -0.264104,
		34.451042, 34.613811, 24.917517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636189, 34.866707, 25.213480>,  <34.185722, 35.234638, 25.102390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636189, 34.866707, 25.213480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.947472, 34.616730, 25.238272>,  <34.134239, 34.466743, 25.253147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.947472, 34.616730, 25.238272>,  <33.636189, 34.866707, 25.213480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947472, 34.616730, 25.238272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355279, -0.356717, 0.864020,
		-0.517854, -0.694406, -0.499628,
		0.778206, -0.624943, 0.061981,
		34.180935, 34.429245, 25.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337833, 34.191528, 25.363991>,  <33.636189, 34.866707, 25.213480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337833, 34.191528, 25.363991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725769, 34.175156, 25.460108>,  <33.958530, 34.165333, 25.517778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725769, 34.175156, 25.460108>,  <33.337833, 34.191528, 25.363991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725769, 34.175156, 25.460108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232141, -0.455765, 0.859296,
		0.074347, -0.889159, -0.451519,
		0.969837, -0.040930, 0.240295,
		34.016720, 34.162876, 25.532196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468025, 33.425568, 25.638969>,  <33.337833, 34.191528, 25.363991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468025, 33.425568, 25.638969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746262, 33.673893, 25.783602>,  <33.913204, 33.822887, 25.870382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746262, 33.673893, 25.783602>,  <33.468025, 33.425568, 25.638969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746262, 33.673893, 25.783602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125372, -0.390677, 0.911950,
		0.707411, -0.679680, -0.193920,
		0.695595, 0.620811, 0.361583,
		33.954941, 33.860138, 25.892076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014130, 32.996559, 25.907160>,  <33.468025, 33.425568, 25.638969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014130, 32.996559, 25.907160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.054169, 33.359318, 26.070877>,  <34.078194, 33.576973, 26.169107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.054169, 33.359318, 26.070877>,  <34.014130, 32.996559, 25.907160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054169, 33.359318, 26.070877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043676, -0.414969, 0.908787,
		0.994018, -0.073091, -0.081147,
		0.100098, 0.906895, 0.409294,
		34.084198, 33.631386, 26.193665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603054, 32.977585, 26.319147>,  <34.014130, 32.996559, 25.907160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603054, 32.977585, 26.319147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.429535, 33.297375, 26.485355>,  <34.325424, 33.489250, 26.585081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.429535, 33.297375, 26.485355>,  <34.603054, 32.977585, 26.319147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429535, 33.297375, 26.485355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283163, -0.316839, 0.905225,
		0.855358, 0.510346, -0.088937,
		-0.433799, 0.799475, 0.415522,
		34.299397, 33.537216, 26.610012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100647, 33.104904, 26.882412>,  <34.603054, 32.977585, 26.319147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100647, 33.104904, 26.882412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.740429, 33.257862, 26.965153>,  <34.524296, 33.349636, 27.014797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.740429, 33.257862, 26.965153>,  <35.100647, 33.104904, 26.882412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740429, 33.257862, 26.965153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119080, -0.240644, 0.963281,
		0.418129, 0.892114, 0.171177,
		-0.900549, 0.382392, 0.206853,
		34.470264, 33.372581, 27.027208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238602, 33.576046, 27.548470>,  <35.100647, 33.104904, 26.882412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238602, 33.576046, 27.548470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847046, 33.494453, 27.543373>,  <34.612110, 33.445496, 27.540316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847046, 33.494453, 27.543373>,  <35.238602, 33.576046, 27.548470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847046, 33.494453, 27.543373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031842, -0.213797, 0.976359,
		-0.201886, 0.955344, 0.215779,
		-0.978891, -0.203984, -0.012743,
		34.553379, 33.433258, 27.539551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989880, 34.018520, 28.092648>,  <35.238602, 33.576046, 27.548470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989880, 34.018520, 28.092648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.705494, 33.743515, 28.033527>,  <34.534863, 33.578510, 27.998056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.705494, 33.743515, 28.033527>,  <34.989880, 34.018520, 28.092648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705494, 33.743515, 28.033527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057956, -0.152171, 0.986653,
		-0.700832, 0.710045, 0.068343,
		-0.710968, -0.687517, -0.147798,
		34.492203, 33.537258, 27.989187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493462, 34.224140, 28.441286>,  <34.989880, 34.018520, 28.092648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493462, 34.224140, 28.441286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452412, 33.830547, 28.382988>,  <34.427784, 33.594391, 28.348009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452412, 33.830547, 28.382988>,  <34.493462, 34.224140, 28.441286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452412, 33.830547, 28.382988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037184, -0.142621, 0.989079,
		-0.994025, 0.106921, -0.021952,
		-0.102622, -0.983985, -0.145745,
		34.421623, 33.535351, 28.339264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.926323, 36.166771, 20.724878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925140, 35.775215, 20.643131>,  <33.924431, 35.540283, 20.594082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925140, 35.775215, 20.643131>,  <33.926323, 36.166771, 20.724878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925140, 35.775215, 20.643131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280998, -0.195321, 0.939622,
		-0.959704, 0.060209, -0.274488,
		-0.002961, -0.978890, -0.204369,
		33.924252, 35.481548, 20.581821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354187, 35.914860, 21.207912>,  <33.926323, 36.166771, 20.724878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354187, 35.914860, 21.207912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571842, 35.591869, 21.116787>,  <33.702435, 35.398075, 21.062111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571842, 35.591869, 21.116787>,  <33.354187, 35.914860, 21.207912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571842, 35.591869, 21.116787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025029, -0.255788, 0.966409,
		-0.838625, -0.531557, -0.118972,
		0.544134, -0.807477, -0.227815,
		33.735081, 35.349625, 21.048443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013863, 35.339451, 21.580393>,  <33.354187, 35.914860, 21.207912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013863, 35.339451, 21.580393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372677, 35.192337, 21.482368>,  <33.587967, 35.104069, 21.423553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372677, 35.192337, 21.482368>,  <33.013863, 35.339451, 21.580393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372677, 35.192337, 21.482368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169008, -0.226879, 0.959146,
		-0.408361, -0.901808, -0.141360,
		0.897038, -0.367787, -0.245062,
		33.641788, 35.082001, 21.408850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997078, 34.722874, 21.862944>,  <33.013863, 35.339451, 21.580393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997078, 34.722874, 21.862944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385666, 34.813553, 21.835075>,  <33.618820, 34.867962, 21.818354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385666, 34.813553, 21.835075>,  <32.997078, 34.722874, 21.862944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385666, 34.813553, 21.835075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128301, -0.255277, 0.958318,
		0.199467, -0.939915, -0.277079,
		0.971469, 0.226703, -0.069673,
		33.677105, 34.881565, 21.814173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375900, 34.181305, 22.310301>,  <32.997078, 34.722874, 21.862944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375900, 34.181305, 22.310301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616131, 34.493011, 22.238695>,  <33.760269, 34.680035, 22.195732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616131, 34.493011, 22.238695>,  <33.375900, 34.181305, 22.310301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616131, 34.493011, 22.238695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471708, -0.164546, 0.866266,
		0.645596, -0.604705, -0.466409,
		0.600581, 0.779267, -0.179015,
		33.796307, 34.726791, 22.184990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110500, 33.985516, 22.443426>,  <33.375900, 34.181305, 22.310301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110500, 33.985516, 22.443426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096970, 34.383995, 22.475557>,  <34.088852, 34.623081, 22.494835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096970, 34.383995, 22.475557>,  <34.110500, 33.985516, 22.443426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096970, 34.383995, 22.475557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639908, -0.040147, 0.767402,
		0.767706, 0.077362, -0.636115,
		-0.033830, 0.996194, 0.080326,
		34.086823, 34.682854, 22.499655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749470, 34.076279, 22.671087>,  <34.110500, 33.985516, 22.443426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749470, 34.076279, 22.671087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544174, 34.411663, 22.744375>,  <34.420998, 34.612892, 22.788349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544174, 34.411663, 22.744375>,  <34.749470, 34.076279, 22.671087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544174, 34.411663, 22.744375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380435, 0.030894, 0.924291,
		0.769322, 0.544085, -0.334836,
		-0.513238, 0.838461, 0.183221,
		34.390202, 34.663200, 22.799341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198940, 34.482338, 22.961742>,  <34.749470, 34.076279, 22.671087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198940, 34.482338, 22.961742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840439, 34.611752, 23.083109>,  <34.625340, 34.689400, 23.155928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840439, 34.611752, 23.083109>,  <35.198940, 34.482338, 22.961742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840439, 34.611752, 23.083109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341656, 0.067334, 0.937410,
		0.282858, 0.943816, -0.170887,
		-0.896249, 0.323538, 0.303414,
		34.571564, 34.708813, 23.174133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373199, 34.885098, 23.496428>,  <35.198940, 34.482338, 22.961742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373199, 34.885098, 23.496428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979630, 34.839134, 23.551096>,  <34.743488, 34.811554, 23.583897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979630, 34.839134, 23.551096>,  <35.373199, 34.885098, 23.496428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979630, 34.839134, 23.551096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147598, -0.092667, 0.984697,
		-0.100487, 0.989044, 0.108139,
		-0.983929, -0.114910, 0.136670,
		34.684452, 34.804661, 23.592096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006729, 35.177475, 23.690905>,  <35.373199, 34.885098, 23.496428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006729, 35.177475, 23.690905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344547, 35.012173, 23.827124>,  <36.547237, 34.912991, 23.908855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344547, 35.012173, 23.827124>,  <36.006729, 35.177475, 23.690905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344547, 35.012173, 23.827124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429823, 0.143856, -0.891379,
		0.319374, 0.899182, 0.299118,
		0.844543, -0.413251, 0.340545,
		36.597912, 34.888199, 23.929287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579365, 35.568054, 23.553690>,  <36.006729, 35.177475, 23.690905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579365, 35.568054, 23.553690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786663, 35.229713, 23.604206>,  <36.911041, 35.026707, 23.634516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786663, 35.229713, 23.604206>,  <36.579365, 35.568054, 23.553690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786663, 35.229713, 23.604206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413164, 0.118332, -0.902936,
		0.748809, 0.520122, 0.410802,
		0.518248, -0.845855, 0.126288,
		36.942139, 34.975956, 23.642092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412949, 35.711887, 23.298590>,  <36.579365, 35.568054, 23.553690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412949, 35.711887, 23.298590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332577, 35.320049, 23.300631>,  <37.284355, 35.084946, 23.301855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332577, 35.320049, 23.300631>,  <37.412949, 35.711887, 23.298590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332577, 35.320049, 23.300631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403735, -0.087553, -0.910677,
		0.892539, -0.180921, 0.413088,
		-0.200928, -0.979593, 0.005101,
		37.272297, 35.026173, 23.302160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041073, 35.493973, 23.074368>,  <37.412949, 35.711887, 23.298590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041073, 35.493973, 23.074368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780304, 35.209351, 22.969536>,  <37.623844, 35.038578, 22.906637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780304, 35.209351, 22.969536>,  <38.041073, 35.493973, 23.074368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780304, 35.209351, 22.969536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446249, -0.080579, -0.891274,
		0.613074, -0.697993, 0.370063,
		-0.651922, -0.711557, -0.262077,
		37.584728, 34.995884, 22.890913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364838, 35.109417, 22.555817>,  <38.041073, 35.493973, 23.074368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364838, 35.109417, 22.555817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981369, 35.015587, 22.491405>,  <37.751289, 34.959290, 22.452759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981369, 35.015587, 22.491405>,  <38.364838, 35.109417, 22.555817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981369, 35.015587, 22.491405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188802, -0.101065, -0.976801,
		0.212855, -0.966831, 0.141175,
		-0.958669, -0.234571, -0.161028,
		37.693768, 34.945217, 22.443096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459202, 34.556931, 21.997601>,  <38.364838, 35.109417, 22.555817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459202, 34.556931, 21.997601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089195, 34.706913, 22.022120>,  <37.867191, 34.796902, 22.036831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089195, 34.706913, 22.022120>,  <38.459202, 34.556931, 21.997601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089195, 34.706913, 22.022120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039394, 0.065808, -0.997054,
		-0.377890, -0.924702, -0.046102,
		-0.925012, 0.374961, 0.061296,
		37.811691, 34.819401, 22.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193260, 34.185745, 21.494436>,  <38.459202, 34.556931, 21.997601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193260, 34.185745, 21.494436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959362, 34.505772, 21.548054>,  <37.819023, 34.697788, 21.580223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959362, 34.505772, 21.548054>,  <38.193260, 34.185745, 21.494436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959362, 34.505772, 21.548054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187558, 0.027420, -0.981871,
		-0.789234, -0.599289, 0.134025,
		-0.584750, 0.800063, 0.134042,
		37.783936, 34.745792, 21.588266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701618, 34.132641, 21.109858>,  <38.193260, 34.185745, 21.494436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701618, 34.132641, 21.109858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625755, 34.522350, 21.158554>,  <37.580238, 34.756176, 21.187773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625755, 34.522350, 21.158554>,  <37.701618, 34.132641, 21.109858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625755, 34.522350, 21.158554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227599, 0.076991, -0.970707,
		-0.955106, -0.211812, 0.207141,
		-0.189659, 0.974273, 0.121743,
		37.568859, 34.814632, 21.195076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973839, 34.260738, 20.782869>,  <37.701618, 34.132641, 21.109858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973839, 34.260738, 20.782869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178814, 34.604141, 20.775227>,  <37.301800, 34.810184, 20.770641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178814, 34.604141, 20.775227>,  <36.973839, 34.260738, 20.782869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178814, 34.604141, 20.775227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247740, 0.126495, -0.960533,
		-0.822212, 0.496947, 0.277508,
		0.512438, 0.858512, -0.019108,
		37.332546, 34.861694, 20.769495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636890, 34.730442, 20.365231>,  <36.973839, 34.260738, 20.782869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636890, 34.730442, 20.365231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005417, 34.885761, 20.373203>,  <37.226532, 34.978954, 20.377987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005417, 34.885761, 20.373203>,  <36.636890, 34.730442, 20.365231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005417, 34.885761, 20.373203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014507, 0.016893, -0.999752,
		-0.388541, 0.921378, 0.009931,
		0.921317, 0.388301, 0.019930,
		37.281811, 35.002251, 20.379183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706871, 35.213165, 19.804634>,  <36.636890, 34.730442, 20.365231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706871, 35.213165, 19.804634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094364, 35.142151, 19.873949>,  <37.326862, 35.099541, 19.915539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094364, 35.142151, 19.873949>,  <36.706871, 35.213165, 19.804634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094364, 35.142151, 19.873949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188242, 0.071041, -0.979550,
		0.161595, 0.981547, 0.102239,
		0.968737, -0.177537, 0.173288,
		37.384987, 35.088890, 19.925936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091553, 35.633957, 19.242300>,  <36.706871, 35.213165, 19.804634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091553, 35.633957, 19.242300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367039, 35.378250, 19.379124>,  <37.532330, 35.224827, 19.461218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367039, 35.378250, 19.379124>,  <37.091553, 35.633957, 19.242300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367039, 35.378250, 19.379124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271986, -0.209527, -0.939213,
		0.672080, 0.739888, 0.029567,
		0.688717, -0.639269, 0.342059,
		37.573654, 35.186470, 19.481741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567543, 35.719887, 18.820417>,  <37.091553, 35.633957, 19.242300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567543, 35.719887, 18.820417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650135, 35.351822, 18.953482>,  <37.699692, 35.130981, 19.033319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650135, 35.351822, 18.953482>,  <37.567543, 35.719887, 18.820417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650135, 35.351822, 18.953482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418373, -0.224308, -0.880142,
		0.884494, 0.320909, 0.338656,
		0.206482, -0.920165, 0.332658,
		37.712078, 35.075771, 19.053280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261868, 35.481644, 18.576767>,  <37.567543, 35.719887, 18.820417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261868, 35.481644, 18.576767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100323, 35.131977, 18.684649>,  <38.003395, 34.922176, 18.749376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100323, 35.131977, 18.684649>,  <38.261868, 35.481644, 18.576767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100323, 35.131977, 18.684649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489992, -0.455657, -0.743158,
		0.772533, -0.167978, 0.612353,
		-0.403857, -0.874162, 0.269702,
		37.979164, 34.869728, 18.765560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.522465, 28.396820, 19.424017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790916, 28.689722, 19.377729>,  <32.951988, 28.865463, 19.349957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790916, 28.689722, 19.377729>,  <32.522465, 28.396820, 19.424017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790916, 28.689722, 19.377729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269501, -0.095572, 0.958246,
		0.690621, -0.674292, -0.261484,
		0.671128, 0.732255, -0.115719,
		32.992256, 28.909399, 19.343014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994629, 28.094219, 19.711767>,  <32.522465, 28.396820, 19.424017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994629, 28.094219, 19.711767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.117428, 28.474831, 19.704260>,  <33.191105, 28.703197, 19.699757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.117428, 28.474831, 19.704260>,  <32.994629, 28.094219, 19.711767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117428, 28.474831, 19.704260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473609, -0.135637, 0.870228,
		0.825500, -0.276042, -0.492291,
		0.306993, 0.951527, -0.018767,
		33.209526, 28.760288, 19.698629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777195, 28.019421, 19.875147>,  <32.994629, 28.094219, 19.711767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777195, 28.019421, 19.875147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.660061, 28.393559, 19.954519>,  <33.589783, 28.618042, 20.002144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.660061, 28.393559, 19.954519>,  <33.777195, 28.019421, 19.875147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660061, 28.393559, 19.954519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554238, -0.003065, 0.832352,
		0.779146, 0.353720, -0.517507,
		-0.292833, 0.935346, 0.198433,
		33.572212, 28.674162, 20.014050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336369, 28.334358, 20.033590>,  <33.777195, 28.019421, 19.875147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336369, 28.334358, 20.033590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.072056, 28.598103, 20.177040>,  <33.913467, 28.756350, 20.263109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.072056, 28.598103, 20.177040>,  <34.336369, 28.334358, 20.033590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072056, 28.598103, 20.177040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564113, 0.121093, 0.816770,
		0.495118, 0.742012, -0.451969,
		-0.660784, 0.659359, 0.358623,
		33.873821, 28.795910, 20.284628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683540, 28.786926, 20.435448>,  <34.336369, 28.334358, 20.033590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683540, 28.786926, 20.435448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317741, 28.863844, 20.577839>,  <34.098263, 28.909994, 20.663273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317741, 28.863844, 20.577839>,  <34.683540, 28.786926, 20.435448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317741, 28.863844, 20.577839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364858, 0.011705, 0.930990,
		0.174856, 0.981268, -0.080864,
		-0.914497, 0.192293, 0.355976,
		34.043392, 28.921532, 20.684631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752205, 29.380020, 20.954145>,  <34.683540, 28.786926, 20.435448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752205, 29.380020, 20.954145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.397366, 29.210260, 21.026739>,  <34.184460, 29.108404, 21.070295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.397366, 29.210260, 21.026739>,  <34.752205, 29.380020, 20.954145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397366, 29.210260, 21.026739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219995, -0.043100, 0.974548,
		-0.405775, 0.904449, 0.131600,
		-0.887101, -0.424399, 0.181485,
		34.131237, 29.082941, 21.081184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224743, 29.868587, 21.340536>,  <34.752205, 29.380020, 20.954145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224743, 29.868587, 21.340536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.149673, 29.486225, 21.430891>,  <34.104633, 29.256807, 21.485104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.149673, 29.486225, 21.430891>,  <34.224743, 29.868587, 21.340536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149673, 29.486225, 21.430891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028380, 0.224601, 0.974038,
		-0.981822, 0.189210, -0.015023,
		-0.187672, -0.955905, 0.225888,
		34.093372, 29.199453, 21.498657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849361, 29.797653, 22.038963>,  <34.224743, 29.868587, 21.340536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849361, 29.797653, 22.038963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953728, 29.415619, 21.982777>,  <34.016350, 29.186398, 21.949064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953728, 29.415619, 21.982777>,  <33.849361, 29.797653, 22.038963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953728, 29.415619, 21.982777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007458, -0.143509, 0.989621,
		-0.965332, -0.259257, -0.030321,
		0.260918, -0.955087, -0.140468,
		34.032001, 29.129093, 21.940636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357658, 29.334862, 22.499250>,  <33.849361, 29.797653, 22.038963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357658, 29.334862, 22.499250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.681156, 29.113602, 22.419287>,  <33.875256, 28.980846, 22.371309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.681156, 29.113602, 22.419287>,  <33.357658, 29.334862, 22.499250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681156, 29.113602, 22.419287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026498, -0.305274, 0.951896,
		-0.587568, -0.775134, -0.232230,
		0.808741, -0.553150, -0.199909,
		33.923779, 28.947657, 22.359314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275795, 28.692896, 22.892872>,  <33.357658, 29.334862, 22.499250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275795, 28.692896, 22.892872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.657215, 28.650974, 22.779905>,  <33.886066, 28.625822, 22.712126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.657215, 28.650974, 22.779905>,  <33.275795, 28.692896, 22.892872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657215, 28.650974, 22.779905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238452, -0.310285, 0.920252,
		-0.184075, -0.944849, -0.270882,
		0.953550, -0.104802, -0.282417,
		33.943279, 28.619534, 22.695181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415909, 28.043385, 23.029343>,  <33.275795, 28.692896, 22.892872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415909, 28.043385, 23.029343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772579, 28.223824, 23.014242>,  <33.986580, 28.332087, 23.005182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772579, 28.223824, 23.014242>,  <33.415909, 28.043385, 23.029343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772579, 28.223824, 23.014242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250674, -0.422610, 0.870955,
		0.376933, -0.786073, -0.489910,
		0.891675, 0.451099, -0.037752,
		34.040081, 28.359154, 23.002916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874821, 27.499271, 23.256758>,  <33.415909, 28.043385, 23.029343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874821, 27.499271, 23.256758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040577, 27.858992, 23.312674>,  <34.140030, 28.074823, 23.346224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040577, 27.858992, 23.312674>,  <33.874821, 27.499271, 23.256758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040577, 27.858992, 23.312674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063862, -0.181953, 0.981231,
		0.907855, -0.397687, -0.132831,
		0.414392, 0.899299, 0.139790,
		34.164894, 28.128780, 23.354610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317905, 27.334852, 23.821947>,  <33.874821, 27.499271, 23.256758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317905, 27.334852, 23.821947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274082, 27.732424, 23.817911>,  <34.247787, 27.970966, 23.815491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274082, 27.732424, 23.817911>,  <34.317905, 27.334852, 23.821947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274082, 27.732424, 23.817911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243371, -0.016982, 0.969785,
		0.963726, 0.108702, 0.243754,
		-0.109557, 0.993929, -0.010088,
		34.241215, 28.030603, 23.814884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755718, 27.563711, 24.285225>,  <34.317905, 27.334852, 23.821947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755718, 27.563711, 24.285225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.480400, 27.851727, 24.249907>,  <34.315208, 28.024536, 24.228716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.480400, 27.851727, 24.249907>,  <34.755718, 27.563711, 24.285225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480400, 27.851727, 24.249907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027787, 0.147794, 0.988628,
		0.724902, 0.678010, -0.121733,
		-0.688291, 0.720041, -0.088296,
		34.273914, 28.067739, 24.223417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485966, 27.760027, 24.101641>,  <34.755718, 27.563711, 24.285225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485966, 27.760027, 24.101641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827694, 27.951534, 24.182560>,  <36.032730, 28.066439, 24.231112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827694, 27.951534, 24.182560>,  <35.485966, 27.760027, 24.101641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827694, 27.951534, 24.182560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158087, 0.131422, -0.978640,
		-0.495127, 0.868050, 0.036590,
		0.854317, 0.478767, 0.202298,
		36.083988, 28.095165, 24.243250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428288, 28.418257, 23.834946>,  <35.485966, 27.760027, 24.101641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428288, 28.418257, 23.834946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810749, 28.302422, 23.852455>,  <36.040226, 28.232922, 23.862961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810749, 28.302422, 23.852455>,  <35.428288, 28.418257, 23.834946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810749, 28.302422, 23.852455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104779, 0.198655, -0.974453,
		0.273493, 0.936310, 0.220286,
		0.956150, -0.289587, 0.043775,
		36.097595, 28.215546, 23.865587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754078, 29.000643, 23.463387>,  <35.428288, 28.418257, 23.834946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754078, 29.000643, 23.463387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974285, 28.667269, 23.444147>,  <36.106411, 28.467243, 23.432604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974285, 28.667269, 23.444147>,  <35.754078, 29.000643, 23.463387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974285, 28.667269, 23.444147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208381, 0.192980, -0.958820,
		0.808399, 0.517823, 0.279911,
		0.550517, -0.833437, -0.048100,
		36.139439, 28.417238, 23.429716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364464, 29.181541, 23.243551>,  <35.754078, 29.000643, 23.463387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364464, 29.181541, 23.243551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353951, 28.793581, 23.146717>,  <36.347645, 28.560804, 23.088617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353951, 28.793581, 23.146717>,  <36.364464, 29.181541, 23.243551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353951, 28.793581, 23.146717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306073, 0.222730, -0.925586,
		0.951645, -0.098420, 0.291007,
		-0.026280, -0.969899, -0.242084,
		36.346066, 28.502611, 23.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032036, 28.979315, 22.886992>,  <36.364464, 29.181541, 23.243551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032036, 28.979315, 22.886992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751732, 28.721977, 22.763670>,  <36.583549, 28.567575, 22.689676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751732, 28.721977, 22.763670>,  <37.032036, 28.979315, 22.886992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751732, 28.721977, 22.763670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382137, 0.026434, -0.923727,
		0.602423, -0.765122, 0.227321,
		-0.700755, -0.643342, -0.308306,
		36.541504, 28.528975, 22.671179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388908, 28.684029, 22.280794>,  <37.032036, 28.979315, 22.886992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388908, 28.684029, 22.280794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010963, 28.566456, 22.223051>,  <36.784195, 28.495913, 22.188406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010963, 28.566456, 22.223051>,  <37.388908, 28.684029, 22.280794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010963, 28.566456, 22.223051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160260, -0.030625, -0.986599,
		0.285572, -0.955335, 0.076042,
		-0.944862, -0.293932, -0.144357,
		36.727505, 28.478277, 22.179745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520355, 28.365545, 21.593525>,  <37.388908, 28.684029, 22.280794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520355, 28.365545, 21.593525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 28.353279, 21.644447>,  <36.885864, 28.345919, 21.675001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 28.353279, 21.644447>,  <37.520355, 28.365545, 21.593525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123798, 28.353279, 21.644447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125968, -0.042190, -0.991137,
		0.035769, -0.998639, 0.037964,
		-0.991389, -0.030670, 0.127306,
		36.826382, 28.344080, 21.682638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290302, 27.847021, 21.068186>,  <37.520355, 28.365545, 21.593525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290302, 27.847021, 21.068186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997173, 28.105772, 21.152592>,  <36.821297, 28.261023, 21.203236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997173, 28.105772, 21.152592>,  <37.290302, 27.847021, 21.068186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997173, 28.105772, 21.152592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201174, 0.090273, -0.975387,
		-0.650004, -0.757232, 0.063981,
		-0.732819, 0.646877, 0.211013,
		36.777328, 28.299835, 21.215897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637226, 27.533791, 20.708553>,  <37.290302, 27.847021, 21.068186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637226, 27.533791, 20.708553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593315, 27.919703, 20.804173>,  <36.566967, 28.151251, 20.861544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593315, 27.919703, 20.804173>,  <36.637226, 27.533791, 20.708553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593315, 27.919703, 20.804173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431204, 0.170466, -0.886005,
		-0.895551, -0.200343, 0.397304,
		-0.109778, 0.964782, 0.239050,
		36.560383, 28.209137, 20.875887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011211, 27.691673, 20.467167>,  <36.637226, 27.533791, 20.708553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011211, 27.691673, 20.467167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187965, 28.049051, 20.499397>,  <36.294018, 28.263479, 20.518736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187965, 28.049051, 20.499397>,  <36.011211, 27.691673, 20.467167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187965, 28.049051, 20.499397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266207, 0.216373, -0.939317,
		-0.856664, 0.393619, 0.333453,
		0.441883, 0.893447, 0.080575,
		36.320530, 28.317085, 20.523569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572163, 28.335445, 20.360706>,  <36.011211, 27.691673, 20.467167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572163, 28.335445, 20.360706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954773, 28.399473, 20.263182>,  <36.184338, 28.437891, 20.204666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954773, 28.399473, 20.263182>,  <35.572163, 28.335445, 20.360706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954773, 28.399473, 20.263182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272123, 0.188968, -0.943525,
		-0.104959, 0.968849, 0.224311,
		0.956521, 0.160071, -0.243812,
		36.241730, 28.447495, 20.190039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591835, 29.027426, 20.010828>,  <35.572163, 28.335445, 20.360706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591835, 29.027426, 20.010828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907494, 28.804495, 19.907574>,  <36.096889, 28.670736, 19.845621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907494, 28.804495, 19.907574>,  <35.591835, 29.027426, 20.010828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907494, 28.804495, 19.907574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112559, 0.281931, -0.952809,
		0.603804, 0.780961, 0.159752,
		0.789146, -0.557328, -0.258135,
		36.144238, 28.637297, 19.830133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103596, 29.490427, 19.579926>,  <35.591835, 29.027426, 20.010828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103596, 29.490427, 19.579926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.169273, 29.108347, 19.481430>,  <36.208679, 28.879099, 19.422333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.169273, 29.108347, 19.481430>,  <36.103596, 29.490427, 19.579926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169273, 29.108347, 19.481430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097106, 0.232760, -0.967674,
		0.981636, 0.182802, -0.054537,
		0.164199, -0.955200, -0.246236,
		36.218533, 28.821787, 19.407558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612194, 29.455336, 19.103954>,  <36.103596, 29.490427, 19.579926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612194, 29.455336, 19.103954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413723, 29.113455, 19.042906>,  <36.294640, 28.908327, 19.006277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413723, 29.113455, 19.042906>,  <36.612194, 29.455336, 19.103954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413723, 29.113455, 19.042906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085983, 0.126549, -0.988227,
		0.863953, -0.503458, 0.010699,
		-0.496177, -0.854702, -0.152622,
		36.264870, 28.857044, 18.997120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395153, 29.721237, 18.967150>,  <36.612194, 29.455336, 19.103954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395153, 29.721237, 18.967150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571354, 30.079742, 18.946489>,  <37.677074, 30.294846, 18.934093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571354, 30.079742, 18.946489>,  <37.395153, 29.721237, 18.967150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571354, 30.079742, 18.946489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072644, 0.092933, 0.993019,
		0.894809, -0.433672, 0.106045,
		0.440500, 0.896266, -0.051653,
		37.703503, 30.348621, 18.930994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866234, 29.743435, 19.549925>,  <37.395153, 29.721237, 18.967150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866234, 29.743435, 19.549925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834808, 30.134838, 19.473660>,  <37.815952, 30.369680, 19.427900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834808, 30.134838, 19.473660>,  <37.866234, 29.743435, 19.549925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834808, 30.134838, 19.473660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028839, 0.188946, 0.981564,
		0.996492, 0.082616, 0.013374,
		-0.078566, 0.978506, -0.190665,
		37.811237, 30.428391, 19.416460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299938, 30.022886, 19.993010>,  <37.866234, 29.743435, 19.549925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299938, 30.022886, 19.993010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073132, 30.338247, 19.897579>,  <37.937050, 30.527464, 19.840321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073132, 30.338247, 19.897579>,  <38.299938, 30.022886, 19.993010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073132, 30.338247, 19.897579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052585, 0.254401, 0.965668,
		0.822028, 0.560093, -0.102791,
		-0.567014, 0.788401, -0.238577,
		37.903027, 30.574768, 19.826006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539906, 30.610405, 20.423061>,  <38.299938, 30.022886, 19.993010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539906, 30.610405, 20.423061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170738, 30.713116, 20.308323>,  <37.949238, 30.774742, 20.239479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170738, 30.713116, 20.308323>,  <38.539906, 30.610405, 20.423061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170738, 30.713116, 20.308323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192737, 0.336819, 0.921632,
		0.333268, 0.905881, -0.261368,
		-0.922922, 0.256775, -0.286847,
		37.893860, 30.790148, 20.222269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468143, 31.325220, 20.640377>,  <38.539906, 30.610405, 20.423061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468143, 31.325220, 20.640377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093990, 31.200857, 20.572964>,  <37.869499, 31.126240, 20.532515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093990, 31.200857, 20.572964>,  <38.468143, 31.325220, 20.640377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093990, 31.200857, 20.572964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284455, 0.378281, 0.880903,
		-0.210124, 0.871918, -0.442275,
		-0.935379, -0.310906, -0.168535,
		37.813377, 31.107586, 20.522404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968853, 31.848288, 20.772261>,  <38.468143, 31.325220, 20.640377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968853, 31.848288, 20.772261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721729, 31.536303, 20.812212>,  <37.573456, 31.349112, 20.836184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721729, 31.536303, 20.812212>,  <37.968853, 31.848288, 20.772261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721729, 31.536303, 20.812212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184494, 0.267252, 0.945801,
		-0.764381, 0.565894, -0.309008,
		-0.617806, -0.779962, 0.099878,
		37.536388, 31.302315, 20.842175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339924, 32.161652, 21.129971>,  <37.968853, 31.848288, 20.772261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339924, 32.161652, 21.129971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367977, 31.765863, 21.180620>,  <37.384808, 31.528391, 21.211010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367977, 31.765863, 21.180620>,  <37.339924, 32.161652, 21.129971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367977, 31.765863, 21.180620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164600, 0.113718, 0.979783,
		-0.983864, -0.089556, -0.154891,
		0.070131, -0.989469, 0.126623,
		37.389015, 31.469023, 21.218607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898163, 32.020859, 21.642538>,  <37.339924, 32.161652, 21.129971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898163, 32.020859, 21.642538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117004, 31.686300, 21.655872>,  <37.248310, 31.485565, 21.663874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117004, 31.686300, 21.655872>,  <36.898163, 32.020859, 21.642538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117004, 31.686300, 21.655872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113515, -0.034679, 0.992931,
		-0.829331, -0.547022, -0.113917,
		0.547106, -0.836400, 0.033335,
		37.281136, 31.435381, 21.665873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535919, 31.477516, 22.039000>,  <36.898163, 32.020859, 21.642538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535919, 31.477516, 22.039000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912022, 31.345226, 22.071367>,  <37.137684, 31.265852, 22.090788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912022, 31.345226, 22.071367>,  <36.535919, 31.477516, 22.039000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912022, 31.345226, 22.071367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093805, -0.023161, 0.995321,
		-0.327304, -0.943443, -0.052801,
		0.940252, -0.330725, 0.080919,
		37.194096, 31.246010, 22.095642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511566, 30.925766, 22.597614>,  <36.535919, 31.477516, 22.039000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511566, 30.925766, 22.597614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895721, 31.031961, 22.563749>,  <37.126213, 31.095678, 22.543430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895721, 31.031961, 22.563749>,  <36.511566, 30.925766, 22.597614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895721, 31.031961, 22.563749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120964, -0.123479, 0.984947,
		0.251040, -0.956173, -0.150703,
		0.960389, 0.265491, -0.084664,
		37.183838, 31.111609, 22.538349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901749, 30.499306, 22.973978>,  <36.511566, 30.925766, 22.597614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901749, 30.499306, 22.973978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133141, 30.824179, 22.943724>,  <37.271976, 31.019102, 22.925571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133141, 30.824179, 22.943724>,  <36.901749, 30.499306, 22.973978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133141, 30.824179, 22.943724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272287, -0.104865, 0.956485,
		0.768910, -0.573900, -0.281809,
		0.578478, 0.812184, -0.075634,
		37.306683, 31.067833, 22.921034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567234, 30.304941, 23.260916>,  <36.901749, 30.499306, 22.973978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567234, 30.304941, 23.260916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564392, 30.704887, 23.266802>,  <37.562687, 30.944855, 23.270332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564392, 30.704887, 23.266802>,  <37.567234, 30.304941, 23.260916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564392, 30.704887, 23.266802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211112, -0.012882, 0.977377,
		0.977436, 0.010053, -0.210993,
		-0.007107, 0.999867, 0.014713,
		37.562260, 31.004847, 23.271215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091652, 30.435028, 23.686537>,  <37.567234, 30.304941, 23.260916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091652, 30.435028, 23.686537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955631, 30.811159, 23.681690>,  <37.874020, 31.036839, 23.678782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955631, 30.811159, 23.681690>,  <38.091652, 30.435028, 23.686537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955631, 30.811159, 23.681690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315087, 0.126068, 0.940653,
		0.886050, 0.316053, -0.339154,
		-0.340052, 0.940328, -0.012118,
		37.853615, 31.093258, 23.678055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578110, 30.846874, 24.015055>,  <38.091652, 30.435028, 23.686537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578110, 30.846874, 24.015055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230694, 31.040224, 24.058853>,  <38.022243, 31.156233, 24.085133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230694, 31.040224, 24.058853>,  <38.578110, 30.846874, 24.015055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230694, 31.040224, 24.058853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285577, 0.307522, 0.907676,
		0.405074, 0.819622, -0.405135,
		-0.868540, 0.483373, 0.109496,
		37.970131, 31.185236, 24.091702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.851955, 34.984947, 18.492006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503769, 34.788284, 18.482519>,  <38.294857, 34.670288, 18.476828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.503769, 34.788284, 18.482519>,  <38.851955, 34.984947, 18.492006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503769, 34.788284, 18.482519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296348, -0.484986, -0.822780,
		0.393022, -0.723231, 0.567865,
		-0.870466, -0.491656, -0.023718,
		38.242630, 34.640789, 18.475403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011890, 34.279922, 18.406424>,  <38.851955, 34.984947, 18.492006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011890, 34.279922, 18.406424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643360, 34.345722, 18.265514>,  <38.422241, 34.385201, 18.180969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643360, 34.345722, 18.265514>,  <39.011890, 34.279922, 18.406424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643360, 34.345722, 18.265514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247138, -0.451675, -0.857270,
		-0.300133, -0.876886, 0.375487,
		-0.921327, 0.164498, -0.352274,
		38.366962, 34.395073, 18.159832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928066, 33.678253, 17.846922>,  <39.011890, 34.279922, 18.406424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928066, 33.678253, 17.846922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.626854, 33.939228, 17.812815>,  <38.446125, 34.095814, 17.792351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.626854, 33.939228, 17.812815>,  <38.928066, 33.678253, 17.846922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626854, 33.939228, 17.812815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098121, -0.239489, -0.965928,
		-0.650628, -0.719007, 0.244360,
		-0.753031, 0.652437, -0.085268,
		38.400944, 34.134960, 17.787235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553417, 33.388634, 17.358198>,  <38.928066, 33.678253, 17.846922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553417, 33.388634, 17.358198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398342, 33.757328, 17.362074>,  <38.305298, 33.978546, 17.364399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398342, 33.757328, 17.362074>,  <38.553417, 33.388634, 17.358198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398342, 33.757328, 17.362074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248422, -0.094355, -0.964046,
		-0.887684, -0.376158, 0.265561,
		-0.387690, 0.921739, 0.009689,
		38.282036, 34.033848, 17.364981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890427, 33.356213, 17.063585>,  <38.553417, 33.388634, 17.358198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890427, 33.356213, 17.063585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008499, 33.736599, 17.026648>,  <38.079342, 33.964832, 17.004486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008499, 33.736599, 17.026648>,  <37.890427, 33.356213, 17.063585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008499, 33.736599, 17.026648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312196, 0.004655, -0.950006,
		-0.902997, 0.309249, 0.298263,
		0.295177, 0.950970, -0.092343,
		38.097054, 34.021889, 16.998945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388435, 33.781437, 16.711866>,  <37.890427, 33.356213, 17.063585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388435, 33.781437, 16.711866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739967, 33.968567, 16.674355>,  <37.950886, 34.080845, 16.651848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739967, 33.968567, 16.674355>,  <37.388435, 33.781437, 16.711866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739967, 33.968567, 16.674355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131594, 0.048735, -0.990105,
		-0.458627, 0.882476, 0.104392,
		0.878831, 0.467826, -0.093777,
		38.003616, 34.108913, 16.646221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216202, 34.234505, 16.309387>,  <37.388435, 33.781437, 16.711866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216202, 34.234505, 16.309387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613579, 34.239296, 16.263899>,  <37.852005, 34.242172, 16.236605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613579, 34.239296, 16.263899>,  <37.216202, 34.234505, 16.309387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613579, 34.239296, 16.263899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114264, 0.143069, -0.983095,
		0.004493, 0.989640, 0.143499,
		0.993440, 0.011979, -0.113723,
		37.911610, 34.242889, 16.229782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372314, 34.860996, 15.870036>,  <37.216202, 34.234505, 16.309387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372314, 34.860996, 15.870036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683403, 34.610207, 15.851893>,  <37.870056, 34.459732, 15.841007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683403, 34.610207, 15.851893>,  <37.372314, 34.860996, 15.870036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683403, 34.610207, 15.851893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087028, -0.035930, -0.995558,
		0.622561, 0.778210, -0.082508,
		0.777717, -0.626976, -0.045357,
		37.916718, 34.422115, 15.838286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711235, 35.078815, 15.257404>,  <37.372314, 34.860996, 15.870036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711235, 35.078815, 15.257404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874619, 34.720764, 15.328863>,  <37.972649, 34.505936, 15.371738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874619, 34.720764, 15.328863>,  <37.711235, 35.078815, 15.257404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874619, 34.720764, 15.328863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074705, -0.227844, -0.970828,
		0.909715, 0.383197, -0.159935,
		0.408458, -0.895124, 0.178646,
		37.997154, 34.452229, 15.382457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362930, 34.977470, 14.891988>,  <37.711235, 35.078815, 15.257404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362930, 34.977470, 14.891988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240921, 34.601009, 14.950233>,  <38.167717, 34.375134, 14.985179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240921, 34.601009, 14.950233>,  <38.362930, 34.977470, 14.891988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240921, 34.601009, 14.950233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103695, -0.184810, -0.977288,
		0.946684, -0.282992, 0.153963,
		-0.305018, -0.941149, 0.145612,
		38.149414, 34.318665, 14.993916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570374, 34.537613, 14.314600>,  <38.362930, 34.977470, 14.891988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570374, 34.537613, 14.314600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.330303, 34.270603, 14.490874>,  <38.186260, 34.110397, 14.596639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.330303, 34.270603, 14.490874>,  <38.570374, 34.537613, 14.314600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330303, 34.270603, 14.490874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221868, -0.390398, -0.893512,
		0.768481, -0.634039, 0.086206,
		-0.600176, -0.667521, 0.440686,
		38.150249, 34.070347, 14.623080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876469, 33.826218, 14.013733>,  <38.570374, 34.537613, 14.314600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876469, 33.826218, 14.013733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487759, 33.801647, 14.104849>,  <38.254532, 33.786907, 14.159518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.487759, 33.801647, 14.104849>,  <38.876469, 33.826218, 14.013733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487759, 33.801647, 14.104849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193683, -0.343605, -0.918925,
		0.134712, -0.937104, 0.322008,
		-0.971771, -0.061423, 0.227789,
		38.196228, 33.783222, 14.173185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550587, 33.117920, 13.781969>,  <38.876469, 33.826218, 14.013733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550587, 33.117920, 13.781969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.254757, 33.386318, 13.803094>,  <38.077259, 33.547356, 13.815769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.254757, 33.386318, 13.803094>,  <38.550587, 33.117920, 13.781969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254757, 33.386318, 13.803094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210456, -0.156007, -0.965075,
		-0.639322, -0.724863, 0.256594,
		-0.739578, 0.670996, 0.052813,
		38.032883, 33.587616, 13.818938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880905, 32.912323, 13.421714>,  <38.550587, 33.117920, 13.781969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880905, 32.912323, 13.421714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.854927, 33.311184, 13.437030>,  <37.839340, 33.550503, 13.446219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.854927, 33.311184, 13.437030>,  <37.880905, 32.912323, 13.421714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854927, 33.311184, 13.437030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329677, 0.014777, -0.943978,
		-0.941858, -0.073928, 0.327779,
		-0.064943, 0.997154, 0.038291,
		37.835445, 33.610329, 13.448517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813713, 32.139233, 13.486996>,  <37.880905, 32.912323, 13.421714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813713, 32.139233, 13.486996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.833965, 31.744490, 13.425621>,  <37.846115, 31.507643, 13.388796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.833965, 31.744490, 13.425621>,  <37.813713, 32.139233, 13.486996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833965, 31.744490, 13.425621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205748, -0.140032, 0.968534,
		-0.977295, -0.080603, 0.195956,
		0.050626, -0.986861, -0.153436,
		37.849152, 31.448431, 13.379590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424156, 31.739313, 14.026097>,  <37.813713, 32.139233, 13.486996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424156, 31.739313, 14.026097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723988, 31.503296, 13.906110>,  <37.903889, 31.361687, 13.834118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723988, 31.503296, 13.906110>,  <37.424156, 31.739313, 14.026097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723988, 31.503296, 13.906110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172673, -0.263181, 0.949168,
		-0.638995, -0.763274, -0.095391,
		0.749580, -0.590041, -0.299968,
		37.948860, 31.326284, 13.816119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341316, 31.190859, 14.317644>,  <37.424156, 31.739313, 14.026097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341316, 31.190859, 14.317644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735241, 31.162205, 14.254375>,  <37.971596, 31.145012, 14.216414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735241, 31.162205, 14.254375>,  <37.341316, 31.190859, 14.317644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735241, 31.162205, 14.254375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118918, -0.385510, 0.915009,
		-0.126522, -0.919919, -0.371135,
		0.984810, -0.071634, -0.158171,
		38.030685, 31.140715, 14.206924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533825, 30.424276, 14.411957>,  <37.341316, 31.190859, 14.317644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533825, 30.424276, 14.411957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863895, 30.644505, 14.462487>,  <38.061935, 30.776642, 14.492805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863895, 30.644505, 14.462487>,  <37.533825, 30.424276, 14.411957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863895, 30.644505, 14.462487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118693, -0.387638, 0.914138,
		0.552267, -0.739329, -0.385218,
		0.825174, 0.550571, 0.126326,
		38.111446, 30.809675, 14.500385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902481, 30.021826, 14.864271>,  <37.533825, 30.424276, 14.411957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902481, 30.021826, 14.864271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103668, 30.366484, 14.891386>,  <38.224380, 30.573278, 14.907655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103668, 30.366484, 14.891386>,  <37.902481, 30.021826, 14.864271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103668, 30.366484, 14.891386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120888, -0.147791, 0.981603,
		0.855811, -0.485516, -0.178496,
		0.502964, 0.861645, 0.067788,
		38.254559, 30.624977, 14.911722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550842, 29.843752, 15.238312>,  <37.902481, 30.021826, 14.864271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550842, 29.843752, 15.238312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.481052, 30.234221, 15.289930>,  <38.439178, 30.468502, 15.320901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.481052, 30.234221, 15.289930>,  <38.550842, 29.843752, 15.238312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481052, 30.234221, 15.289930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123930, -0.108244, 0.986369,
		0.976832, 0.188086, -0.102091,
		-0.174471, 0.976169, 0.129045,
		38.428711, 30.527071, 15.328644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161388, 30.108501, 15.733735>,  <38.550842, 29.843752, 15.238312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161388, 30.108501, 15.733735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.868855, 30.380838, 15.749765>,  <38.693333, 30.544241, 15.759383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.868855, 30.380838, 15.749765>,  <39.161388, 30.108501, 15.733735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868855, 30.380838, 15.749765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010913, -0.047071, 0.998832,
		0.681933, 0.730916, 0.026995,
		-0.731333, 0.680842, 0.040076,
		38.649456, 30.585091, 15.761788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304592, 30.725719, 16.248123>,  <39.161388, 30.108501, 15.733735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304592, 30.725719, 16.248123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.908451, 30.715775, 16.193581>,  <38.670769, 30.709808, 16.160856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.908451, 30.715775, 16.193581>,  <39.304592, 30.725719, 16.248123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908451, 30.715775, 16.193581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137786, 0.069956, 0.987988,
		-0.015023, 0.997240, -0.072706,
		-0.990348, -0.024861, -0.136355,
		38.611347, 30.708317, 16.152674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055485, 31.324209, 16.621264>,  <39.304592, 30.725719, 16.248123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055485, 31.324209, 16.621264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750198, 31.066603, 16.600300>,  <38.567028, 30.912039, 16.587723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750198, 31.066603, 16.600300>,  <39.055485, 31.324209, 16.621264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750198, 31.066603, 16.600300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012467, -0.095771, 0.995325,
		-0.646025, 0.758994, 0.081123,
		-0.763215, -0.644016, -0.052408,
		38.521233, 30.873398, 16.584578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508511, 31.562460, 17.159304>,  <39.055485, 31.324209, 16.621264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508511, 31.562460, 17.159304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.397869, 31.192146, 17.056223>,  <38.331482, 30.969957, 16.994375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.397869, 31.192146, 17.056223>,  <38.508511, 31.562460, 17.159304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397869, 31.192146, 17.056223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517367, -0.082519, 0.851776,
		-0.809827, 0.368934, -0.456145,
		-0.276608, -0.925785, -0.257700,
		38.314888, 30.914412, 16.978912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738232, 31.468916, 17.118248>,  <38.508511, 31.562460, 17.159304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738232, 31.468916, 17.118248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.865761, 31.094713, 17.179153>,  <37.942276, 30.870192, 17.215696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.865761, 31.094713, 17.179153>,  <37.738232, 31.468916, 17.118248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865761, 31.094713, 17.179153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556160, -0.054564, 0.829282,
		-0.767490, -0.349073, -0.537687,
		0.318818, -0.935505, 0.152263,
		37.961407, 30.814062, 17.224833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270638, 31.095985, 17.529808>,  <37.738232, 31.468916, 17.118248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270638, 31.095985, 17.529808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591667, 30.864994, 17.589674>,  <37.784283, 30.726400, 17.625593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591667, 30.864994, 17.589674>,  <37.270638, 31.095985, 17.529808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591667, 30.864994, 17.589674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339070, -0.235161, 0.910896,
		-0.490826, -0.781805, -0.384539,
		0.802572, -0.577477, 0.149664,
		37.832439, 30.691751, 17.634573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024822, 30.560392, 17.906153>,  <37.270638, 31.095985, 17.529808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024822, 30.560392, 17.906153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.415928, 30.521307, 17.980379>,  <37.650589, 30.497856, 18.024916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.415928, 30.521307, 17.980379>,  <37.024822, 30.560392, 17.906153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415928, 30.521307, 17.980379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206909, -0.305045, 0.929589,
		-0.034227, -0.947312, -0.318479,
		0.977761, -0.097713, 0.185567,
		37.709255, 30.491993, 18.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155094, 29.900305, 18.317736>,  <37.024822, 30.560392, 17.906153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155094, 29.900305, 18.317736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457268, 30.149092, 18.400171>,  <37.638573, 30.298365, 18.449633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457268, 30.149092, 18.400171>,  <37.155094, 29.900305, 18.317736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457268, 30.149092, 18.400171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247059, -0.020929, 0.968774,
		0.606862, -0.782762, 0.137853,
		0.755434, 0.621970, 0.206089,
		37.683899, 30.335682, 18.461998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793072, 29.291555, 18.367167>,  <37.155094, 29.900305, 18.317736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793072, 29.291555, 18.367167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507046, 29.024992, 18.451622>,  <36.335430, 28.865053, 18.502296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507046, 29.024992, 18.451622>,  <36.793072, 29.291555, 18.367167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507046, 29.024992, 18.451622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240008, -0.049638, -0.969501,
		0.656566, -0.743931, -0.124449,
		-0.715064, -0.666411, 0.211140,
		36.292526, 28.825069, 18.514965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916195, 28.702368, 18.008810>,  <36.793072, 29.291555, 18.367167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916195, 28.702368, 18.008810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524311, 28.709621, 18.088650>,  <36.289181, 28.713974, 18.136553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524311, 28.709621, 18.088650>,  <36.916195, 28.702368, 18.008810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524311, 28.709621, 18.088650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200416, -0.082794, -0.976206,
		-0.001174, -0.996402, 0.084748,
		-0.979710, 0.018131, 0.199598,
		36.230396, 28.715061, 18.148529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719536, 28.216648, 17.625557>,  <36.916195, 28.702368, 18.008810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719536, 28.216648, 17.625557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387112, 28.424221, 17.705608>,  <36.187656, 28.548765, 17.753639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387112, 28.424221, 17.705608>,  <36.719536, 28.216648, 17.625557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387112, 28.424221, 17.705608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313504, -0.139848, -0.939233,
		-0.459410, -0.843299, 0.278909,
		-0.831058, 0.518932, 0.200130,
		36.137794, 28.579901, 17.765648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133331, 27.871725, 17.386982>,  <36.719536, 28.216648, 17.625557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133331, 27.871725, 17.386982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046810, 28.261841, 17.368992>,  <35.994896, 28.495911, 17.358198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046810, 28.261841, 17.368992>,  <36.133331, 27.871725, 17.386982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046810, 28.261841, 17.368992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188253, -0.086862, -0.978272,
		-0.958006, -0.203136, 0.202389,
		-0.216302, 0.975290, -0.044974,
		35.981918, 28.554428, 17.355499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545216, 27.878010, 16.866186>,  <36.133331, 27.871725, 17.386982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545216, 27.878010, 16.866186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.632286, 28.263662, 16.926937>,  <35.684528, 28.495054, 16.963388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.632286, 28.263662, 16.926937>,  <35.545216, 27.878010, 16.866186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632286, 28.263662, 16.926937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291347, 0.212701, -0.932671,
		-0.931523, 0.158768, 0.327196,
		0.217673, 0.964132, 0.151879,
		35.697590, 28.552902, 16.972500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032463, 28.183334, 16.568451>,  <35.545216, 27.878010, 16.866186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032463, 28.183334, 16.568451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.332779, 28.447496, 16.573786>,  <35.512970, 28.605993, 16.576986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.332779, 28.447496, 16.573786>,  <35.032463, 28.183334, 16.568451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332779, 28.447496, 16.573786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213618, 0.261865, -0.941166,
		-0.625045, 0.703769, 0.337681,
		0.750790, 0.660406, 0.013339,
		35.558018, 28.645618, 16.577787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743050, 28.780003, 16.250570>,  <35.032463, 28.183334, 16.568451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743050, 28.780003, 16.250570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136524, 28.847757, 16.226360>,  <35.372608, 28.888411, 16.211834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136524, 28.847757, 16.226360>,  <34.743050, 28.780003, 16.250570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136524, 28.847757, 16.226360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104437, 0.263874, -0.958886,
		-0.146450, 0.949568, 0.277260,
		0.983690, 0.169385, -0.060526,
		35.431633, 28.898573, 16.208202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229919, 29.221224, 16.578350>,  <34.743050, 28.780003, 16.250570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229919, 29.221224, 16.578350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864578, 29.382784, 16.598944>,  <33.645374, 29.479721, 16.611300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864578, 29.382784, 16.598944>,  <34.229919, 29.221224, 16.578350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864578, 29.382784, 16.598944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082945, -0.308365, 0.947645,
		0.398631, 0.861264, 0.315148,
		-0.913353, 0.403901, 0.051486,
		33.590572, 29.503954, 16.614389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166107, 29.523464, 17.248163>,  <34.229919, 29.221224, 16.578350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166107, 29.523464, 17.248163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781479, 29.547331, 17.140961>,  <33.550701, 29.561651, 17.076639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781479, 29.547331, 17.140961>,  <34.166107, 29.523464, 17.248163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781479, 29.547331, 17.140961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274564, -0.204004, 0.939679,
		0.001394, 0.977150, 0.212547,
		-0.961568, 0.059668, -0.268006,
		33.493008, 29.565231, 17.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820484, 30.015394, 17.688528>,  <34.166107, 29.523464, 17.248163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820484, 30.015394, 17.688528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544155, 29.757294, 17.558043>,  <33.378357, 29.602434, 17.479752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544155, 29.757294, 17.558043>,  <33.820484, 30.015394, 17.688528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544155, 29.757294, 17.558043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272718, -0.185312, 0.944079,
		-0.669618, 0.741155, -0.047953,
		-0.690823, -0.645250, -0.326215,
		33.336906, 29.563719, 17.460178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302231, 30.168291, 18.017887>,  <33.820484, 30.015394, 17.688528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302231, 30.168291, 18.017887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.211342, 29.802206, 17.884769>,  <33.156807, 29.582554, 17.804899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.211342, 29.802206, 17.884769>,  <33.302231, 30.168291, 18.017887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211342, 29.802206, 17.884769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289849, -0.262688, 0.920316,
		-0.929708, 0.305578, -0.205585,
		-0.227224, -0.915214, -0.332795,
		33.143173, 29.527641, 17.784931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701988, 30.029377, 18.305593>,  <33.302231, 30.168291, 18.017887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701988, 30.029377, 18.305593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887794, 29.685066, 18.222364>,  <32.999279, 29.478479, 18.172426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887794, 29.685066, 18.222364>,  <32.701988, 30.029377, 18.305593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887794, 29.685066, 18.222364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263316, -0.358585, 0.895590,
		-0.845513, -0.361223, -0.393223,
		0.464512, -0.860775, -0.208073,
		33.027149, 29.426834, 18.159943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363564, 29.599787, 18.696077>,  <32.701988, 30.029377, 18.305593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363564, 29.599787, 18.696077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694214, 29.387829, 18.620285>,  <32.892605, 29.260654, 18.574810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694214, 29.387829, 18.620285>,  <32.363564, 29.599787, 18.696077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694214, 29.387829, 18.620285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010343, -0.322343, 0.946567,
		-0.562661, -0.784414, -0.260975,
		0.826624, -0.529896, -0.189483,
		32.942200, 29.228861, 18.563440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250191, 28.825172, 18.767979>,  <32.363564, 29.599787, 18.696077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250191, 28.825172, 18.767979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627045, 28.940641, 18.836163>,  <32.853157, 29.009924, 18.877073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627045, 28.940641, 18.836163>,  <32.250191, 28.825172, 18.767979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627045, 28.940641, 18.836163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140764, -0.120846, 0.982640,
		0.304262, -0.949770, -0.073218,
		0.942131, 0.288674, 0.170462,
		32.909683, 29.027245, 18.887300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.675655, 34.630016, 14.156476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.048019, 34.497559, 14.218133>,  <35.271439, 34.418083, 14.255127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.048019, 34.497559, 14.218133>,  <34.675655, 34.630016, 14.156476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048019, 34.497559, 14.218133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067858, 0.257872, 0.963793,
		-0.358902, -0.907660, 0.217584,
		0.930905, -0.331143, 0.154143,
		35.327290, 34.398216, 14.264376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735893, 34.029522, 14.699392>,  <34.675655, 34.630016, 14.156476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735893, 34.029522, 14.699392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.055374, 34.269310, 14.678569>,  <35.247063, 34.413181, 14.666075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.055374, 34.269310, 14.678569>,  <34.735893, 34.029522, 14.699392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055374, 34.269310, 14.678569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250507, 0.409927, 0.877044,
		0.547102, -0.687456, 0.477581,
		0.798703, 0.599470, -0.052060,
		35.294987, 34.449150, 14.662951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082554, 33.817627, 15.216668>,  <34.735893, 34.029522, 14.699392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082554, 33.817627, 15.216668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.168217, 34.196045, 15.119397>,  <35.219616, 34.423096, 15.061035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.168217, 34.196045, 15.119397>,  <35.082554, 33.817627, 15.216668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168217, 34.196045, 15.119397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394417, 0.311505, 0.864523,
		0.893629, -0.089230, 0.439847,
		0.214156, 0.946046, -0.243177,
		35.232464, 34.479858, 15.046444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325386, 34.095535, 15.840607>,  <35.082554, 33.817627, 15.216668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325386, 34.095535, 15.840607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.261036, 34.430351, 15.631424>,  <35.222424, 34.631241, 15.505914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.261036, 34.430351, 15.631424>,  <35.325386, 34.095535, 15.840607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261036, 34.430351, 15.631424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143112, 0.504476, 0.851483,
		0.976543, 0.211827, 0.038631,
		-0.160878, 0.837038, -0.522958,
		35.212772, 34.681461, 15.474537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786751, 34.654789, 16.212151>,  <35.325386, 34.095535, 15.840607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786751, 34.654789, 16.212151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.518669, 34.852100, 15.990341>,  <35.357819, 34.970490, 15.857255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.518669, 34.852100, 15.990341>,  <35.786751, 34.654789, 16.212151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518669, 34.852100, 15.990341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410443, 0.376164, 0.830684,
		0.618353, 0.784330, -0.049643,
		-0.670205, 0.493281, -0.554526,
		35.317608, 35.000084, 15.823983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726601, 35.315521, 16.535187>,  <35.786751, 34.654789, 16.212151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726601, 35.315521, 16.535187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.396900, 35.293041, 16.309814>,  <35.199081, 35.279552, 16.174591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.396900, 35.293041, 16.309814>,  <35.726601, 35.315521, 16.535187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396900, 35.293041, 16.309814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529629, 0.428458, 0.732063,
		0.200261, 0.901812, -0.382924,
		-0.824250, -0.056205, -0.563429,
		35.149624, 35.276180, 16.140785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354843, 35.947392, 16.697258>,  <35.726601, 35.315521, 16.535187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354843, 35.947392, 16.697258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080914, 35.693668, 16.553780>,  <34.916557, 35.541435, 16.467691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080914, 35.693668, 16.553780>,  <35.354843, 35.947392, 16.697258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080914, 35.693668, 16.553780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635661, 0.279318, 0.719664,
		-0.356301, 0.720854, -0.594491,
		-0.684824, -0.634312, -0.358697,
		34.875465, 35.503376, 16.446171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709415, 36.367920, 16.547136>,  <35.354843, 35.947392, 16.697258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709415, 36.367920, 16.547136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.623760, 35.981792, 16.606874>,  <34.572365, 35.750114, 16.642717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.623760, 35.981792, 16.606874>,  <34.709415, 36.367920, 16.547136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623760, 35.981792, 16.606874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679724, 0.257064, 0.686946,
		-0.701513, 0.045590, -0.711197,
		-0.214141, -0.965319, 0.149345,
		34.559517, 35.692196, 16.651678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106236, 36.399384, 16.905806>,  <34.709415, 36.367920, 16.547136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106236, 36.399384, 16.905806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.164680, 36.005653, 16.945299>,  <34.199749, 35.769413, 16.968994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.164680, 36.005653, 16.945299>,  <34.106236, 36.399384, 16.905806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164680, 36.005653, 16.945299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512241, 0.010101, 0.858782,
		-0.846321, -0.176057, -0.502738,
		0.146117, -0.984328, 0.098732,
		34.208515, 35.710354, 16.974918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411068, 36.014130, 17.092680>,  <34.106236, 36.399384, 16.905806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411068, 36.014130, 17.092680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725227, 35.800335, 17.217562>,  <33.913723, 35.672058, 17.292492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.725227, 35.800335, 17.217562>,  <33.411068, 36.014130, 17.092680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725227, 35.800335, 17.217562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402559, -0.057910, 0.913560,
		-0.470205, -0.843191, -0.260644,
		0.785400, -0.534485, 0.312205,
		33.960846, 35.639988, 17.311224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137665, 35.520252, 17.526098>,  <33.411068, 36.014130, 17.092680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137665, 35.520252, 17.526098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525833, 35.501698, 17.620874>,  <33.758732, 35.490566, 17.677740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525833, 35.501698, 17.620874>,  <33.137665, 35.520252, 17.526098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525833, 35.501698, 17.620874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241358, -0.211294, 0.947154,
		0.006133, -0.976321, -0.216238,
		0.970417, -0.046382, 0.236939,
		33.816959, 35.487782, 17.691956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257618, 34.832172, 18.028229>,  <33.137665, 35.520252, 17.526098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257618, 34.832172, 18.028229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560402, 35.086906, 18.086815>,  <33.742073, 35.239746, 18.121967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560402, 35.086906, 18.086815>,  <33.257618, 34.832172, 18.028229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560402, 35.086906, 18.086815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212354, 0.027756, 0.976799,
		0.617993, -0.770502, 0.156244,
		0.756962, 0.636833, 0.146466,
		33.787491, 35.277958, 18.130754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340633, 34.045322, 18.013128>,  <33.257618, 34.832172, 18.028229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340633, 34.045322, 18.013128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943371, 34.000229, 18.025299>,  <32.705013, 33.973171, 18.032602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943371, 34.000229, 18.025299>,  <33.340633, 34.045322, 18.013128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943371, 34.000229, 18.025299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048583, 0.161996, -0.985595,
		0.106181, -0.980331, -0.166364,
		-0.993159, -0.112734, 0.030427,
		32.645424, 33.966408, 18.034428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021706, 33.433723, 17.630884>,  <33.340633, 34.045322, 18.013128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021706, 33.433723, 17.630884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.744961, 33.722115, 17.646446>,  <32.578915, 33.895149, 17.655785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.744961, 33.722115, 17.646446>,  <33.021706, 33.433723, 17.630884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744961, 33.722115, 17.646446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111900, -0.053834, -0.992260,
		-0.713308, -0.690859, 0.117924,
		-0.691860, 0.720983, 0.038907,
		32.537403, 33.938408, 17.658119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488876, 33.179390, 17.134735>,  <33.021706, 33.433723, 17.630884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488876, 33.179390, 17.134735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.427639, 33.570961, 17.188784>,  <32.390896, 33.805904, 17.221212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.427639, 33.570961, 17.188784>,  <32.488876, 33.179390, 17.134735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427639, 33.570961, 17.188784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409823, 0.061525, -0.910088,
		-0.899226, -0.194703, 0.391769,
		-0.153093, 0.978931, 0.135119,
		32.381710, 33.864639, 17.229319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874340, 33.316109, 16.740580>,  <32.488876, 33.179390, 17.134735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874340, 33.316109, 16.740580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041630, 33.671497, 16.816162>,  <32.142002, 33.884731, 16.861511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041630, 33.671497, 16.816162>,  <31.874340, 33.316109, 16.740580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041630, 33.671497, 16.816162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173554, 0.282349, -0.943482,
		-0.891611, 0.361791, 0.272283,
		0.418222, 0.888474, 0.188955,
		32.167095, 33.938038, 16.872849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457911, 33.921921, 16.408812>,  <31.874340, 33.316109, 16.740580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457911, 33.921921, 16.408812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.829899, 34.062550, 16.451803>,  <32.053093, 34.146927, 16.477598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.829899, 34.062550, 16.451803>,  <31.457911, 33.921921, 16.408812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829899, 34.062550, 16.451803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018622, 0.337026, -0.941311,
		-0.367158, 0.873392, 0.319972,
		0.929972, 0.351569, 0.107478,
		32.108891, 34.168018, 16.484047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463823, 34.413498, 15.812582>,  <31.457911, 33.921921, 16.408812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463823, 34.413498, 15.812582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.838421, 34.373367, 15.946993>,  <32.063179, 34.349289, 16.027639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.838421, 34.373367, 15.946993>,  <31.463823, 34.413498, 15.812582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838421, 34.373367, 15.946993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348017, 0.147883, -0.925751,
		0.043188, 0.983902, 0.173409,
		0.936493, -0.100330, 0.336028,
		32.119370, 34.343269, 16.047802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961584, 34.946873, 15.457021>,  <31.463823, 34.413498, 15.812582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961584, 34.946873, 15.457021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.172867, 34.633400, 15.587770>,  <32.299637, 34.445316, 15.666221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.172867, 34.633400, 15.587770>,  <31.961584, 34.946873, 15.457021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172867, 34.633400, 15.587770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398274, -0.111325, -0.910486,
		0.749917, 0.611110, 0.253316,
		0.528207, -0.783678, 0.326874,
		32.331329, 34.398296, 15.685833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504082, 34.947315, 15.048633>,  <31.961584, 34.946873, 15.457021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504082, 34.947315, 15.048633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.534946, 34.575539, 15.192960>,  <32.553467, 34.352474, 15.279556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.534946, 34.575539, 15.192960>,  <32.504082, 34.947315, 15.048633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534946, 34.575539, 15.192960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469264, -0.285450, -0.835650,
		0.879680, 0.233800, 0.414125,
		0.077163, -0.929438, 0.360819,
		32.558094, 34.296707, 15.301206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109722, 34.712826, 14.830497>,  <32.504082, 34.947315, 15.048633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109722, 34.712826, 14.830497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945641, 34.368950, 14.952262>,  <32.847191, 34.162624, 15.025321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945641, 34.368950, 14.952262>,  <33.109722, 34.712826, 14.830497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945641, 34.368950, 14.952262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531023, -0.496519, -0.686647,
		0.741449, -0.120016, 0.660189,
		-0.410205, -0.859689, 0.304412,
		32.822578, 34.111042, 15.043586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680004, 34.197533, 15.019449>,  <33.109722, 34.712826, 14.830497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680004, 34.197533, 15.019449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356007, 33.979061, 14.934025>,  <33.161610, 33.847980, 14.882771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356007, 33.979061, 14.934025>,  <33.680004, 34.197533, 15.019449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356007, 33.979061, 14.934025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549137, -0.578574, -0.603076,
		0.205824, -0.605760, 0.768565,
		-0.809991, -0.546175, -0.213561,
		33.113010, 33.815208, 14.869957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952015, 33.556335, 14.969769>,  <33.680004, 34.197533, 15.019449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952015, 33.556335, 14.969769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.609035, 33.516369, 14.767859>,  <33.403248, 33.492390, 14.646713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.609035, 33.516369, 14.767859>,  <33.952015, 33.556335, 14.969769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609035, 33.516369, 14.767859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461668, -0.582620, -0.668893,
		-0.227256, -0.806579, 0.545696,
		-0.857448, -0.099921, -0.504775,
		33.351803, 33.486393, 14.616426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985432, 32.817566, 14.844136>,  <33.952015, 33.556335, 14.969769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985432, 32.817566, 14.844136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.714649, 32.971092, 14.592925>,  <33.552181, 33.063210, 14.442198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.714649, 32.971092, 14.592925>,  <33.985432, 32.817566, 14.844136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714649, 32.971092, 14.592925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328209, -0.606322, -0.724329,
		-0.658798, -0.696460, 0.284478,
		-0.676952, 0.383818, -0.628029,
		33.511562, 33.086239, 14.404516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593456, 32.248432, 14.652295>,  <33.985432, 32.817566, 14.844136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593456, 32.248432, 14.652295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591007, 32.539818, 14.378274>,  <33.589539, 32.714649, 14.213861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591007, 32.539818, 14.378274>,  <33.593456, 32.248432, 14.652295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591007, 32.539818, 14.378274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315614, -0.648640, -0.692571,
		-0.948868, -0.220454, -0.225942,
		-0.006125, 0.728468, -0.685052,
		33.589169, 32.758358, 14.172758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144714, 31.994953, 14.164321>,  <33.593456, 32.248432, 14.652295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144714, 31.994953, 14.164321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.444683, 32.229340, 14.041514>,  <33.624664, 32.369972, 13.967831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.444683, 32.229340, 14.041514>,  <33.144714, 31.994953, 14.164321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444683, 32.229340, 14.041514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341974, -0.740671, -0.578326,
		-0.566279, 0.328708, -0.755831,
		0.749922, 0.585968, -0.307017,
		33.669659, 32.405128, 13.949409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706078, 31.821604, 14.641673>,  <33.144714, 31.994953, 14.164321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706078, 31.821604, 14.641673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.722084, 31.444326, 14.509745>,  <32.731686, 31.217960, 14.430588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.722084, 31.444326, 14.509745>,  <32.706078, 31.821604, 14.641673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722084, 31.444326, 14.509745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318526, -0.300824, 0.898914,
		-0.947070, -0.141023, 0.288395,
		0.040012, -0.943195, -0.329821,
		32.734089, 31.161367, 14.410798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354416, 31.386095, 15.158325>,  <32.706078, 31.821604, 14.641673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354416, 31.386095, 15.158325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614403, 31.168364, 14.946196>,  <32.770397, 31.037725, 14.818917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614403, 31.168364, 14.946196>,  <32.354416, 31.386095, 15.158325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614403, 31.168364, 14.946196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222415, -0.531028, 0.817644,
		-0.726684, -0.649397, -0.224086,
		0.649971, -0.544328, -0.530324,
		32.809395, 31.005066, 14.787098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235916, 30.651962, 15.320913>,  <32.354416, 31.386095, 15.158325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235916, 30.651962, 15.320913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.605934, 30.671713, 15.170257>,  <32.827946, 30.683563, 15.079863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.605934, 30.671713, 15.170257>,  <32.235916, 30.651962, 15.320913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605934, 30.671713, 15.170257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318771, -0.640157, 0.698987,
		-0.206594, -0.766655, -0.607913,
		0.925042, 0.049378, -0.376641,
		32.883446, 30.686527, 15.057264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405735, 29.949507, 15.051551>,  <32.235916, 30.651962, 15.320913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405735, 29.949507, 15.051551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.742943, 30.151537, 15.125546>,  <32.945267, 30.272755, 15.169944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.742943, 30.151537, 15.125546>,  <32.405735, 29.949507, 15.051551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742943, 30.151537, 15.125546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241758, -0.663012, 0.708497,
		0.480493, -0.552553, -0.681037,
		0.843018, 0.505074, 0.184988,
		32.995850, 30.303059, 15.181043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844269, 29.390512, 15.287546>,  <32.405735, 29.949507, 15.051551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844269, 29.390512, 15.287546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033237, 29.720528, 15.411569>,  <33.146618, 29.918537, 15.485982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033237, 29.720528, 15.411569>,  <32.844269, 29.390512, 15.287546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033237, 29.720528, 15.411569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241209, -0.459381, 0.854861,
		0.847726, -0.329064, -0.416026,
		0.472419, 0.825037, 0.310056,
		33.174965, 29.968039, 15.504585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528477, 29.154234, 15.485016>,  <32.844269, 29.390512, 15.287546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528477, 29.154234, 15.485016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462856, 29.493504, 15.686485>,  <33.423485, 29.697065, 15.807367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462856, 29.493504, 15.686485>,  <33.528477, 29.154234, 15.485016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462856, 29.493504, 15.686485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339874, -0.430729, 0.836037,
		0.926052, 0.308338, -0.217611,
		-0.164051, 0.848174, 0.503674,
		33.413639, 29.747955, 15.837587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040558, 29.273340, 15.898343>,  <33.528477, 29.154234, 15.485016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040558, 29.273340, 15.898343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.770424, 29.509813, 16.074718>,  <33.608345, 29.651697, 16.180544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.770424, 29.509813, 16.074718>,  <34.040558, 29.273340, 15.898343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770424, 29.509813, 16.074718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342031, -0.278635, 0.897428,
		0.653405, 0.756879, -0.014031,
		-0.675335, 0.591182, 0.440938,
		33.567825, 29.687168, 16.207001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846413, 29.420271, 15.898584>,  <34.040558, 29.273340, 15.898343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846413, 29.420271, 15.898584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.209015, 29.256680, 15.856674>,  <35.426579, 29.158525, 15.831528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.209015, 29.256680, 15.856674>,  <34.846413, 29.420271, 15.898584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209015, 29.256680, 15.856674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057221, 0.364905, -0.929285,
		0.418289, 0.836410, 0.354192,
		0.906510, -0.408977, -0.104776,
		35.480968, 29.133987, 15.825241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293705, 29.992172, 15.745897>,  <34.846413, 29.420271, 15.898584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293705, 29.992172, 15.745897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.475353, 29.654121, 15.633092>,  <35.584343, 29.451290, 15.565409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.475353, 29.654121, 15.633092>,  <35.293705, 29.992172, 15.745897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475353, 29.654121, 15.633092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132995, 0.377293, -0.916495,
		0.880957, 0.378694, 0.283735,
		0.454123, -0.845128, -0.282014,
		35.611591, 29.400583, 15.548488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719044, 30.241970, 15.198051>,  <35.293705, 29.992172, 15.745897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719044, 30.241970, 15.198051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.698734, 29.844385, 15.159144>,  <35.686546, 29.605835, 15.135800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.698734, 29.844385, 15.159144>,  <35.719044, 30.241970, 15.198051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698734, 29.844385, 15.159144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151463, 0.088603, -0.984484,
		0.987158, -0.064722, 0.146049,
		-0.050778, -0.993962, -0.097269,
		35.683502, 29.546196, 15.129964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449203, 30.021873, 14.936712>,  <35.719044, 30.241970, 15.198051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449203, 30.021873, 14.936712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191891, 29.735992, 14.826878>,  <36.037502, 29.564465, 14.760977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191891, 29.735992, 14.826878>,  <36.449203, 30.021873, 14.936712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191891, 29.735992, 14.826878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120609, 0.259569, -0.958164,
		0.756074, -0.649482, -0.080775,
		-0.643277, -0.714700, -0.274587,
		35.998909, 29.521582, 14.744502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793560, 29.844778, 14.317513>,  <36.449203, 30.021873, 14.936712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793560, 29.844778, 14.317513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428322, 29.681936, 14.308331>,  <36.209179, 29.584230, 14.302821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428322, 29.681936, 14.308331>,  <36.793560, 29.844778, 14.317513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428322, 29.681936, 14.308331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009641, 0.077837, -0.996920,
		0.407637, -0.910059, -0.074997,
		-0.913093, -0.407105, -0.022955,
		36.154392, 29.559805, 14.301444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934902, 29.278425, 13.852480>,  <36.793560, 29.844778, 14.317513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934902, 29.278425, 13.852480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542782, 29.357397, 13.854692>,  <36.307510, 29.404779, 13.856020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542782, 29.357397, 13.854692>,  <36.934902, 29.278425, 13.852480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542782, 29.357397, 13.854692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001223, 0.021938, -0.999759,
		-0.197504, -0.980072, -0.021264,
		-0.980301, 0.197430, 0.005532,
		36.248692, 29.416626, 13.856352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655254, 28.925201, 13.367434>,  <36.934902, 29.278425, 13.852480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655254, 28.925201, 13.367434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.364124, 29.198345, 13.392664>,  <36.189445, 29.362232, 13.407803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.364124, 29.198345, 13.392664>,  <36.655254, 28.925201, 13.367434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364124, 29.198345, 13.392664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000569, 0.091377, -0.995816,
		-0.685767, -0.724811, -0.066117,
		-0.727820, 0.682861, 0.063076,
		36.145779, 29.403204, 13.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084614, 28.796791, 12.859678>,  <36.655254, 28.925201, 13.367434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084614, 28.796791, 12.859678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021255, 29.183699, 12.938974>,  <35.983238, 29.415844, 12.986552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.021255, 29.183699, 12.938974>,  <36.084614, 28.796791, 12.859678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021255, 29.183699, 12.938974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193353, 0.166501, -0.966898,
		-0.968259, -0.191485, 0.160651,
		-0.158398, 0.967270, 0.198241,
		35.973736, 29.473879, 12.998446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474613, 29.000793, 12.350820>,  <36.084614, 28.796791, 12.859678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474613, 29.000793, 12.350820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.674370, 29.322798, 12.478925>,  <35.794224, 29.516001, 12.555788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.674370, 29.322798, 12.478925>,  <35.474613, 29.000793, 12.350820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674370, 29.322798, 12.478925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247164, 0.221918, -0.943219,
		-0.830373, 0.550192, -0.088146,
		0.499390, 0.805010, 0.320263,
		35.824188, 29.564301, 12.575004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.165890, 28.805393, 29.210917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249660, 29.179070, 29.095379>,  <36.299923, 29.403275, 29.026056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249660, 29.179070, 29.095379>,  <36.165890, 28.805393, 29.210917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249660, 29.179070, 29.095379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356812, -0.202014, -0.912072,
		-0.910399, 0.294074, 0.291023,
		0.209426, 0.934190, -0.288843,
		36.312489, 29.459326, 29.008726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638275, 29.061039, 28.854744>,  <36.165890, 28.805393, 29.210917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638275, 29.061039, 28.854744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895428, 29.333857, 28.715307>,  <36.049721, 29.497547, 28.631645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895428, 29.333857, 28.715307>,  <35.638275, 29.061039, 28.854744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895428, 29.333857, 28.715307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369572, -0.122424, -0.921102,
		-0.670910, 0.720989, 0.173362,
		0.642881, 0.682046, -0.348593,
		36.088291, 29.538471, 28.610729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249485, 29.527264, 28.386433>,  <35.638275, 29.061039, 28.854744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249485, 29.527264, 28.386433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638138, 29.543379, 28.293217>,  <35.871330, 29.553047, 28.237288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638138, 29.543379, 28.293217>,  <35.249485, 29.527264, 28.386433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638138, 29.543379, 28.293217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199987, -0.386020, -0.900552,
		-0.126238, 0.921610, -0.367012,
		0.971632, 0.040287, -0.233040,
		35.929626, 29.555466, 28.223305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211578, 29.836540, 27.739275>,  <35.249485, 29.527264, 28.386433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211578, 29.836540, 27.739275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577290, 29.675201, 27.754267>,  <35.796715, 29.578398, 27.763262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577290, 29.675201, 27.754267>,  <35.211578, 29.836540, 27.739275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577290, 29.675201, 27.754267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088303, -0.288746, -0.953325,
		0.395343, 0.868295, -0.299611,
		0.914279, -0.403347, 0.037481,
		35.851574, 29.554197, 27.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623905, 30.092884, 27.123337>,  <35.211578, 29.836540, 27.739275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623905, 30.092884, 27.123337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805660, 29.756313, 27.240324>,  <35.914711, 29.554371, 27.310516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805660, 29.756313, 27.240324>,  <35.623905, 30.092884, 27.123337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805660, 29.756313, 27.240324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053322, -0.302039, -0.951803,
		0.889208, 0.448080, -0.092376,
		0.454385, -0.841425, 0.292467,
		35.941975, 29.503885, 27.328064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160583, 29.993950, 26.688280>,  <35.623905, 30.092884, 27.123337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160583, 29.993950, 26.688280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066250, 29.634192, 26.835505>,  <36.009651, 29.418337, 26.923840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066250, 29.634192, 26.835505>,  <36.160583, 29.993950, 26.688280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066250, 29.634192, 26.835505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114980, -0.350260, -0.929569,
		0.964968, -0.261543, -0.020810,
		-0.235833, -0.899397, 0.368061,
		35.995499, 29.364372, 26.945923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710701, 29.594704, 26.368504>,  <36.160583, 29.993950, 26.688280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710701, 29.594704, 26.368504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424614, 29.338606, 26.480604>,  <36.252960, 29.184946, 26.547865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424614, 29.338606, 26.480604>,  <36.710701, 29.594704, 26.368504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424614, 29.338606, 26.480604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024263, -0.423497, -0.905572,
		0.698476, -0.640885, 0.318429,
		-0.715222, -0.640247, 0.280253,
		36.210049, 29.146532, 26.564680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053986, 29.000130, 26.302555>,  <36.710701, 29.594704, 26.368504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053986, 29.000130, 26.302555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657898, 28.961786, 26.262012>,  <36.420246, 28.938780, 26.237686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657898, 28.961786, 26.262012>,  <37.053986, 29.000130, 26.302555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657898, 28.961786, 26.262012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133476, -0.439669, -0.888186,
		0.040578, -0.893030, 0.448165,
		-0.990221, -0.095861, -0.101357,
		36.360832, 28.933029, 26.231606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008179, 28.348225, 26.011471>,  <37.053986, 29.000130, 26.302555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008179, 28.348225, 26.011471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653614, 28.523077, 25.950560>,  <36.440876, 28.627989, 25.914013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653614, 28.523077, 25.950560>,  <37.008179, 28.348225, 26.011471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653614, 28.523077, 25.950560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023166, -0.370452, -0.928563,
		-0.462315, -0.819562, 0.338500,
		-0.886413, 0.437130, -0.152279,
		36.387691, 28.654215, 25.904877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760693, 27.833399, 25.653269>,  <37.008179, 28.348225, 26.011471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760693, 27.833399, 25.653269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511620, 28.139532, 25.588123>,  <36.362175, 28.323212, 25.549036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511620, 28.139532, 25.588123>,  <36.760693, 27.833399, 25.653269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511620, 28.139532, 25.588123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111486, -0.292796, -0.949653,
		-0.774489, -0.573179, 0.267644,
		-0.622686, 0.765334, -0.162866,
		36.324814, 28.369133, 25.539263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166733, 27.537825, 25.395218>,  <36.760693, 27.833399, 25.653269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166733, 27.537825, 25.395218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189869, 27.919033, 25.276285>,  <36.203751, 28.147758, 25.204926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189869, 27.919033, 25.276285>,  <36.166733, 27.537825, 25.395218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189869, 27.919033, 25.276285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022555, -0.296508, -0.954764,
		-0.998071, 0.061928, 0.004346,
		0.057838, 0.953021, -0.297333,
		36.207222, 28.204939, 25.187086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728199, 27.551901, 24.794712>,  <36.166733, 27.537825, 25.395218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728199, 27.551901, 24.794712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961044, 27.873661, 24.747252>,  <36.100754, 28.066717, 24.718775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961044, 27.873661, 24.747252>,  <35.728199, 27.551901, 24.794712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961044, 27.873661, 24.747252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016631, -0.157671, -0.987352,
		-0.812936, 0.572780, -0.105160,
		0.582116, 0.804402, -0.118650,
		36.135677, 28.114983, 24.711657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988911, 28.017263, 24.812824>,  <35.728199, 27.551901, 24.794712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988911, 28.017263, 24.812824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604900, 28.086666, 24.724966>,  <34.374493, 28.128307, 24.672251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604900, 28.086666, 24.724966>,  <34.988911, 28.017263, 24.812824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604900, 28.086666, 24.724966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219780, 0.018691, 0.975370,
		0.173340, 0.984655, 0.020190,
		-0.960026, 0.173508, -0.219648,
		34.316891, 28.138718, 24.659071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813698, 28.628889, 25.227335>,  <34.988911, 28.017263, 24.812824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813698, 28.628889, 25.227335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458057, 28.470903, 25.134815>,  <34.244671, 28.376112, 25.079304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458057, 28.470903, 25.134815>,  <34.813698, 28.628889, 25.227335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458057, 28.470903, 25.134815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266283, 0.035337, 0.963247,
		-0.372274, 0.918017, -0.136591,
		-0.889104, -0.394963, -0.231298,
		34.191326, 28.352415, 25.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249428, 29.157309, 25.399158>,  <34.813698, 28.628889, 25.227335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249428, 29.157309, 25.399158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078247, 28.795813, 25.394997>,  <33.975540, 28.578915, 25.392500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078247, 28.795813, 25.394997>,  <34.249428, 29.157309, 25.399158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078247, 28.795813, 25.394997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496556, 0.225487, 0.838205,
		-0.755175, 0.363877, -0.545256,
		-0.427952, -0.903741, -0.010403,
		33.949860, 28.524691, 25.391876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443214, 29.284237, 25.579762>,  <34.249428, 29.157309, 25.399158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443214, 29.284237, 25.579762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523083, 28.900743, 25.660715>,  <33.571003, 28.670647, 25.709288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523083, 28.900743, 25.660715>,  <33.443214, 29.284237, 25.579762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523083, 28.900743, 25.660715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439411, 0.097001, 0.893033,
		-0.875813, -0.267245, -0.401910,
		0.199673, -0.958734, 0.202385,
		33.582985, 28.613123, 25.721430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896679, 29.087860, 25.965376>,  <33.443214, 29.284237, 25.579762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896679, 29.087860, 25.965376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167427, 28.802347, 26.037336>,  <33.329876, 28.631041, 26.080513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167427, 28.802347, 26.037336>,  <32.896679, 29.087860, 25.965376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167427, 28.802347, 26.037336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335814, -0.081943, 0.938357,
		-0.655039, -0.695560, -0.295162,
		0.676870, -0.713780, 0.179902,
		33.370487, 28.588213, 26.091307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666485, 28.747591, 26.493492>,  <32.896679, 29.087860, 25.965376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666485, 28.747591, 26.493492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035870, 28.596594, 26.520941>,  <33.257500, 28.505995, 26.537411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035870, 28.596594, 26.520941>,  <32.666485, 28.747591, 26.493492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035870, 28.596594, 26.520941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123055, -0.121995, 0.984873,
		-0.363413, -0.917940, -0.159110,
		0.923465, -0.377495, 0.068622,
		33.312908, 28.483345, 26.541527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650810, 28.213036, 27.067389>,  <32.666485, 28.747591, 26.493492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650810, 28.213036, 27.067389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034744, 28.306156, 27.004744>,  <33.265102, 28.362028, 26.967155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034744, 28.306156, 27.004744>,  <32.650810, 28.213036, 27.067389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034744, 28.306156, 27.004744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184208, -0.101815, 0.977600,
		0.211644, -0.967179, -0.140610,
		0.959831, 0.232804, -0.156613,
		33.322693, 28.375998, 26.957760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115669, 27.684389, 27.298523>,  <32.650810, 28.213036, 27.067389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115669, 27.684389, 27.298523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326580, 28.023743, 27.317352>,  <33.453129, 28.227356, 27.328650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326580, 28.023743, 27.317352>,  <33.115669, 27.684389, 27.298523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326580, 28.023743, 27.317352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091840, -0.111980, 0.989457,
		0.844713, -0.517399, -0.136961,
		0.527281, 0.848386, 0.047073,
		33.484764, 28.278259, 27.331474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712833, 27.582933, 27.728897>,  <33.115669, 27.684389, 27.298523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712833, 27.582933, 27.728897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664265, 27.979900, 27.721222>,  <33.635124, 28.218081, 27.716618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664265, 27.979900, 27.721222>,  <33.712833, 27.582933, 27.728897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664265, 27.979900, 27.721222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025984, 0.022502, 0.999409,
		0.992260, 0.120855, -0.028519,
		-0.121426, 0.992415, -0.019188,
		33.627838, 28.277624, 27.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084961, 27.832396, 28.281363>,  <33.712833, 27.582933, 27.728897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084961, 27.832396, 28.281363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828587, 28.130919, 28.209564>,  <33.674763, 28.310032, 28.166485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828587, 28.130919, 28.209564>,  <34.084961, 27.832396, 28.281363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828587, 28.130919, 28.209564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040671, 0.266536, 0.962966,
		0.766512, 0.609903, -0.201187,
		-0.640940, 0.746308, -0.179498,
		33.636303, 28.354811, 28.155714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328678, 28.264164, 28.758457>,  <34.084961, 27.832396, 28.281363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328678, 28.264164, 28.758457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966007, 28.402115, 28.661306>,  <33.748405, 28.484886, 28.603016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966007, 28.402115, 28.661306>,  <34.328678, 28.264164, 28.758457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966007, 28.402115, 28.661306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171673, 0.224241, 0.959294,
		0.385301, 0.911469, -0.144109,
		-0.906682, 0.344877, -0.242875,
		33.694004, 28.505579, 28.588444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358822, 28.862486, 29.100935>,  <34.328678, 28.264164, 28.758457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358822, 28.862486, 29.100935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963398, 28.825756, 29.053070>,  <33.726143, 28.803719, 29.024351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963398, 28.825756, 29.053070>,  <34.358822, 28.862486, 29.100935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963398, 28.825756, 29.053070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146117, 0.386195, 0.910771,
		-0.037417, 0.917836, -0.395194,
		-0.988560, -0.091823, -0.119661,
		33.666832, 28.798208, 29.017172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085732, 29.372122, 29.473108>,  <34.358822, 28.862486, 29.100935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085732, 29.372122, 29.473108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768269, 29.132818, 29.428944>,  <33.577789, 28.989237, 29.402445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.768269, 29.132818, 29.428944>,  <34.085732, 29.372122, 29.473108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768269, 29.132818, 29.428944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366751, 0.325713, 0.871438,
		-0.485383, 0.732119, -0.477917,
		-0.793660, -0.598258, -0.110410,
		33.530170, 28.953341, 29.395821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480846, 29.811316, 29.595695>,  <34.085732, 29.372122, 29.473108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480846, 29.811316, 29.595695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404900, 29.426546, 29.674334>,  <33.359329, 29.195684, 29.721518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404900, 29.426546, 29.674334>,  <33.480846, 29.811316, 29.595695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404900, 29.426546, 29.674334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358227, 0.254308, 0.898332,
		-0.914124, 0.100140, -0.392872,
		-0.189870, -0.961925, 0.196597,
		33.347939, 29.137968, 29.733313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625076, 29.986000, 28.852261>,  <33.480846, 29.811316, 29.595695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625076, 29.986000, 28.852261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406513, 30.312637, 28.926674>,  <33.275375, 30.508619, 28.971321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406513, 30.312637, 28.926674>,  <33.625076, 29.986000, 28.852261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406513, 30.312637, 28.926674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396141, -0.056285, -0.916463,
		-0.737908, -0.574460, 0.354241,
		-0.546410, 0.816595, 0.186033,
		33.242592, 30.557615, 28.982485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922153, 29.953951, 28.676563>,  <33.625076, 29.986000, 28.852261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922153, 29.953951, 28.676563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008205, 30.342951, 28.640869>,  <33.059837, 30.576351, 28.619452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008205, 30.342951, 28.640869>,  <32.922153, 29.953951, 28.676563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008205, 30.342951, 28.640869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344590, -0.009906, -0.938701,
		-0.913769, 0.232697, 0.332983,
		0.215134, 0.972499, -0.089237,
		33.072746, 30.634701, 28.614098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324440, 30.250191, 28.305998>,  <32.922153, 29.953951, 28.676563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324440, 30.250191, 28.305998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647358, 30.485046, 28.282185>,  <32.841110, 30.625959, 28.267897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647358, 30.485046, 28.282185>,  <32.324440, 30.250191, 28.305998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647358, 30.485046, 28.282185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171364, 0.136692, -0.975679,
		-0.564722, 0.797862, 0.210965,
		0.807294, 0.587139, -0.059532,
		32.889545, 30.661188, 28.264324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092628, 30.833147, 27.974493>,  <32.324440, 30.250191, 28.305998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092628, 30.833147, 27.974493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483864, 30.884624, 27.909039>,  <32.718605, 30.915512, 27.869766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483864, 30.884624, 27.909039>,  <32.092628, 30.833147, 27.974493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483864, 30.884624, 27.909039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196404, 0.309825, -0.930287,
		-0.069025, 0.942043, 0.328313,
		0.978091, 0.128695, -0.163635,
		32.777290, 30.923233, 27.859947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236492, 31.531168, 27.790991>,  <32.092628, 30.833147, 27.974493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236492, 31.531168, 27.790991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521355, 31.320696, 27.605104>,  <32.692272, 31.194412, 27.493572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521355, 31.320696, 27.605104>,  <32.236492, 31.531168, 27.790991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521355, 31.320696, 27.605104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174276, 0.508739, -0.843097,
		0.680041, 0.681408, 0.270603,
		0.712160, -0.526182, -0.464716,
		32.735004, 31.162842, 27.465689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413437, 31.979231, 27.213333>,  <32.236492, 31.531168, 27.790991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413437, 31.979231, 27.213333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574257, 31.633982, 27.091103>,  <32.670750, 31.426832, 27.017765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574257, 31.633982, 27.091103>,  <32.413437, 31.979231, 27.213333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574257, 31.633982, 27.091103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046337, 0.314130, -0.948249,
		0.914445, 0.395402, 0.086301,
		0.402049, -0.863122, -0.305576,
		32.694870, 31.375046, 26.999430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881104, 32.259007, 26.765177>,  <32.413437, 31.979231, 27.213333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881104, 32.259007, 26.765177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849316, 31.869732, 26.678833>,  <32.830242, 31.636168, 26.627028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849316, 31.869732, 26.678833>,  <32.881104, 32.259007, 26.765177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849316, 31.869732, 26.678833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011770, 0.215613, -0.976408,
		0.996768, -0.080133, -0.005680,
		-0.079467, -0.973185, -0.215860,
		32.825474, 31.577776, 26.614075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352272, 32.120533, 26.302702>,  <32.881104, 32.259007, 26.765177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352272, 32.120533, 26.302702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073326, 31.839329, 26.246916>,  <32.905956, 31.670607, 26.213444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073326, 31.839329, 26.246916>,  <33.352272, 32.120533, 26.302702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073326, 31.839329, 26.246916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083702, 0.273148, -0.958324,
		0.711809, -0.656631, -0.249328,
		-0.697368, -0.703012, -0.139468,
		32.864117, 31.628426, 26.205076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500854, 31.824703, 25.659637>,  <33.352272, 32.120533, 26.302702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500854, 31.824703, 25.659637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127541, 31.686655, 25.699371>,  <32.903553, 31.603827, 25.723211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127541, 31.686655, 25.699371>,  <33.500854, 31.824703, 25.659637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127541, 31.686655, 25.699371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149837, 0.122825, -0.981052,
		0.326383, -0.930486, -0.166343,
		-0.933286, -0.345123, 0.099333,
		32.847553, 31.583118, 25.729172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317566, 31.214355, 25.162041>,  <33.500854, 31.824703, 25.659637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317566, 31.214355, 25.162041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959202, 31.374001, 25.240067>,  <32.744183, 31.469788, 25.286882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959202, 31.374001, 25.240067>,  <33.317566, 31.214355, 25.162041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959202, 31.374001, 25.240067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188888, 0.055182, -0.980447,
		-0.402075, -0.915239, 0.025950,
		-0.895911, 0.399115, 0.195065,
		32.690430, 31.493734, 25.298586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987278, 30.954205, 24.622263>,  <33.317566, 31.214355, 25.162041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987278, 30.954205, 24.622263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738216, 31.237112, 24.756168>,  <32.588779, 31.406857, 24.836512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738216, 31.237112, 24.756168>,  <32.987278, 30.954205, 24.622263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738216, 31.237112, 24.756168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274307, 0.203379, -0.939890,
		-0.732840, -0.677057, 0.067374,
		-0.622656, 0.707270, 0.334765,
		32.551418, 31.449293, 24.856598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283081, 30.694643, 24.428488>,  <32.987278, 30.954205, 24.622263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283081, 30.694643, 24.428488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272373, 31.093552, 24.455994>,  <32.265949, 31.332897, 24.472496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272373, 31.093552, 24.455994>,  <32.283081, 30.694643, 24.428488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272373, 31.093552, 24.455994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383589, 0.053274, -0.921966,
		-0.923116, -0.051056, 0.381117,
		-0.026769, 0.997274, 0.068762,
		32.264343, 31.392735, 24.476622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662880, 30.908737, 24.089840>,  <32.283081, 30.694643, 24.428488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662880, 30.908737, 24.089840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880558, 31.244320, 24.090715>,  <32.011166, 31.445669, 24.091240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880558, 31.244320, 24.090715>,  <31.662880, 30.908737, 24.089840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880558, 31.244320, 24.090715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288711, 0.189723, -0.938430,
		-0.787716, 0.510058, 0.345462,
		0.544196, 0.838955, 0.002189,
		32.043816, 31.496006, 24.091372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283594, 31.592787, 23.771301>,  <31.662880, 30.908737, 24.089840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283594, 31.592787, 23.771301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677750, 31.649206, 23.733122>,  <31.914244, 31.683058, 23.710215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677750, 31.649206, 23.733122>,  <31.283594, 31.592787, 23.771301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677750, 31.649206, 23.733122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143407, 0.384871, -0.911762,
		-0.091868, 0.912129, 0.399476,
		0.985391, 0.141049, -0.095448,
		31.973368, 31.691521, 23.704487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298697, 32.299591, 23.603474>,  <31.283594, 31.592787, 23.771301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298697, 32.299591, 23.603474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634880, 32.114887, 23.490047>,  <31.836590, 32.004066, 23.421991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634880, 32.114887, 23.490047>,  <31.298697, 32.299591, 23.603474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634880, 32.114887, 23.490047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028468, 0.484950, -0.874078,
		0.541129, 0.742698, 0.394435,
		0.840458, -0.461760, -0.283564,
		31.887018, 31.976358, 23.404978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531073, 32.853661, 23.256516>,  <31.298697, 32.299591, 23.603474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531073, 32.853661, 23.256516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774876, 32.560165, 23.136429>,  <31.921158, 32.384068, 23.064377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774876, 32.560165, 23.136429>,  <31.531073, 32.853661, 23.256516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774876, 32.560165, 23.136429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106911, 0.451301, -0.885944,
		0.785540, 0.507892, 0.353515,
		0.609506, -0.733739, -0.300216,
		31.957727, 32.340042, 23.046364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235748, 33.169662, 22.905514>,  <31.531073, 32.853661, 23.256516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235748, 33.169662, 22.905514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185699, 32.796711, 22.769854>,  <32.155670, 32.572941, 22.688457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185699, 32.796711, 22.769854>,  <32.235748, 33.169662, 22.905514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185699, 32.796711, 22.769854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191225, 0.312763, -0.930383,
		0.973539, -0.181261, 0.139162,
		-0.125118, -0.932376, -0.339149,
		32.148163, 32.516998, 22.668110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780090, 32.993107, 22.482088>,  <32.235748, 33.169662, 22.905514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780090, 32.993107, 22.482088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443890, 32.790462, 22.405241>,  <32.242168, 32.668877, 22.359133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443890, 32.790462, 22.405241>,  <32.780090, 32.993107, 22.482088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443890, 32.790462, 22.405241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041536, 0.293296, -0.955119,
		0.540221, -0.810755, -0.225472,
		-0.840498, -0.506610, -0.192120,
		32.191742, 32.638481, 22.347605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008839, 32.638805, 21.906775>,  <32.780090, 32.993107, 22.482088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008839, 32.638805, 21.906775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609100, 32.624325, 21.906971>,  <32.369259, 32.615639, 21.907089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609100, 32.624325, 21.906971>,  <33.008839, 32.638805, 21.906775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609100, 32.624325, 21.906971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001800, 0.036158, -0.999345,
		0.036158, -0.998690, -0.036199,
		0.999345, 0.036199, -0.000490,
		32.309296, 32.613464, 21.907118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833576, 32.179527, 21.289959>,  <33.008839, 32.638805, 21.906775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833576, 32.179527, 21.289959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478645, 32.341637, 21.377966>,  <32.265686, 32.438900, 21.430771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478645, 32.341637, 21.377966>,  <32.833576, 32.179527, 21.289959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478645, 32.341637, 21.377966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099343, 0.297917, -0.949409,
		-0.450314, -0.864293, -0.224089,
		-0.887327, 0.405270, 0.220017,
		32.212448, 32.463219, 21.443972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470055, 32.042332, 20.709841>,  <32.833576, 32.179527, 21.289959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470055, 32.042332, 20.709841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.260288, 32.348804, 20.858410>,  <32.134430, 32.532688, 20.947552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.260288, 32.348804, 20.858410>,  <32.470055, 32.042332, 20.709841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260288, 32.348804, 20.858410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072272, 0.474694, -0.877178,
		-0.848391, -0.433161, -0.304310,
		-0.524413, 0.766183, 0.371421,
		32.102962, 32.578659, 20.969835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901669, 32.204029, 20.211481>,  <32.470055, 32.042332, 20.709841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901669, 32.204029, 20.211481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.949129, 32.538910, 20.425030>,  <31.977606, 32.739838, 20.553160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.949129, 32.538910, 20.425030>,  <31.901669, 32.204029, 20.211481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949129, 32.538910, 20.425030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004874, 0.537174, -0.843457,
		-0.992924, 0.102678, 0.059655,
		0.118649, 0.837199, 0.533873,
		31.984724, 32.790070, 20.585192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564491, 32.698009, 19.839405>,  <31.901669, 32.204029, 20.211481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564491, 32.698009, 19.839405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757854, 32.958897, 20.072962>,  <31.873873, 33.115429, 20.213095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757854, 32.958897, 20.072962>,  <31.564491, 32.698009, 19.839405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757854, 32.958897, 20.072962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229525, 0.549232, -0.803531,
		-0.844770, 0.522450, 0.115802,
		0.483407, 0.652220, 0.583890,
		31.902876, 33.154564, 20.248129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198515, 33.350273, 19.715771>,  <31.564491, 32.698009, 19.839405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198515, 33.350273, 19.715771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570574, 33.419346, 19.845388>,  <31.793810, 33.460789, 19.923159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570574, 33.419346, 19.845388>,  <31.198515, 33.350273, 19.715771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570574, 33.419346, 19.845388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217842, 0.450905, -0.865581,
		-0.295581, 0.875710, 0.381792,
		0.930149, 0.172678, 0.324045,
		31.849619, 33.471149, 19.942602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308773, 34.113422, 19.616343>,  <31.198515, 33.350273, 19.715771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308773, 34.113422, 19.616343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.666391, 33.934956, 19.600256>,  <31.880962, 33.827877, 19.590605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.666391, 33.934956, 19.600256>,  <31.308773, 34.113422, 19.616343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666391, 33.934956, 19.600256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212551, 0.501510, -0.838636,
		0.394340, 0.741230, 0.543206,
		0.894046, -0.446167, -0.040216,
		31.934605, 33.801105, 19.588192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869997, 34.642220, 19.404587>,  <31.308773, 34.113422, 19.616343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869997, 34.642220, 19.404587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024929, 34.282269, 19.324396>,  <32.117889, 34.066296, 19.276281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024929, 34.282269, 19.324396>,  <31.869997, 34.642220, 19.404587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024929, 34.282269, 19.324396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378251, 0.353417, -0.855583,
		0.840775, 0.255562, 0.477270,
		0.387330, -0.899880, -0.200477,
		32.141129, 34.012306, 19.264254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548225, 34.751686, 19.092434>,  <31.869997, 34.642220, 19.404587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548225, 34.751686, 19.092434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443672, 34.379566, 18.989502>,  <32.380939, 34.156296, 18.927742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443672, 34.379566, 18.989502>,  <32.548225, 34.751686, 19.092434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443672, 34.379566, 18.989502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272811, 0.184527, -0.944206,
		0.925880, -0.317001, 0.205565,
		-0.261382, -0.930301, -0.257331,
		32.365257, 34.100475, 18.912302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086620, 34.502266, 18.762388>,  <32.548225, 34.751686, 19.092434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086620, 34.502266, 18.762388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765530, 34.298923, 18.637678>,  <32.572876, 34.176918, 18.562853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765530, 34.298923, 18.637678>,  <33.086620, 34.502266, 18.762388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765530, 34.298923, 18.637678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233845, 0.212607, -0.948744,
		0.548583, -0.834491, -0.051790,
		-0.802729, -0.508353, -0.311774,
		32.524712, 34.146416, 18.544146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853416, 34.363689, 18.673534>,  <33.086620, 34.502266, 18.762388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853416, 34.363689, 18.673534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945320, 34.752361, 18.651443>,  <34.000462, 34.985565, 18.638189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945320, 34.752361, 18.651443>,  <33.853416, 34.363689, 18.673534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945320, 34.752361, 18.651443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012635, 0.059719, 0.998135,
		0.973165, -0.228636, 0.025998,
		0.229762, 0.971679, -0.055228,
		34.014248, 35.043865, 18.634874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530540, 34.506889, 18.933458>,  <33.853416, 34.363689, 18.673534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530540, 34.506889, 18.933458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316898, 34.842232, 18.977076>,  <34.188713, 35.043438, 19.003246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316898, 34.842232, 18.977076>,  <34.530540, 34.506889, 18.933458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316898, 34.842232, 18.977076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117485, -0.054127, 0.991599,
		0.837216, 0.542427, -0.069585,
		-0.534104, 0.838357, 0.109043,
		34.156666, 35.093739, 19.009789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821930, 34.879681, 19.496237>,  <34.530540, 34.506889, 18.933458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821930, 34.879681, 19.496237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474251, 35.073647, 19.457550>,  <34.265644, 35.190025, 19.434338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474251, 35.073647, 19.457550>,  <34.821930, 34.879681, 19.496237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474251, 35.073647, 19.457550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040123, 0.264121, 0.963655,
		0.492838, 0.833724, -0.249029,
		-0.869195, 0.484917, -0.096717,
		34.213493, 35.219120, 19.428535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930233, 35.518539, 19.978977>,  <34.821930, 34.879681, 19.496237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930233, 35.518539, 19.978977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547695, 35.430141, 19.902487>,  <34.318172, 35.377102, 19.856592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547695, 35.430141, 19.902487>,  <34.930233, 35.518539, 19.978977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547695, 35.430141, 19.902487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237717, 0.207654, 0.948878,
		-0.169985, 0.952912, -0.251123,
		-0.956345, -0.220992, -0.191225,
		34.260792, 35.363846, 19.845119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545563, 36.118397, 20.233734>,  <34.930233, 35.518539, 19.978977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545563, 36.118397, 20.233734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312389, 35.794121, 20.211931>,  <34.172485, 35.599556, 20.198849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312389, 35.794121, 20.211931>,  <34.545563, 36.118397, 20.233734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312389, 35.794121, 20.211931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240714, 0.108234, 0.964543,
		-0.776043, 0.575388, -0.258238,
		-0.582936, -0.810688, -0.054509,
		34.137508, 35.550915, 20.195578>
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
