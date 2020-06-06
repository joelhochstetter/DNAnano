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
	<24.045805, 35.406006, 35.119717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224495, 35.067482, 35.003647>,  <24.331709, 34.864368, 34.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224495, 35.067482, 35.003647>,  <24.045805, 35.406006, 35.119717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224495, 35.067482, 35.003647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887953, 0.459076, 0.028092,
		0.109439, -0.270213, 0.956560,
		0.446725, -0.846306, -0.290178,
		24.358513, 34.813591, 34.916592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510622, 35.065212, 35.705925>,  <24.045805, 35.406006, 35.119717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510622, 35.065212, 35.705925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594292, 35.008636, 35.318886>,  <24.644493, 34.974689, 35.086662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594292, 35.008636, 35.318886>,  <24.510622, 35.065212, 35.705925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594292, 35.008636, 35.318886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854651, 0.507285, 0.110603,
		0.475203, -0.850092, 0.226993,
		0.209173, -0.141441, -0.967595,
		24.657043, 34.966206, 35.028606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202726, 34.799385, 35.436726>,  <24.510622, 35.065212, 35.705925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202726, 34.799385, 35.436726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043344, 35.068321, 35.187183>,  <24.947716, 35.229683, 35.037460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043344, 35.068321, 35.187183>,  <25.202726, 34.799385, 35.436726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043344, 35.068321, 35.187183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873840, 0.484914, -0.035522,
		0.278632, -0.559302, -0.780734,
		-0.398457, 0.672339, -0.623853,
		24.923807, 35.270023, 35.000027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584238, 34.880165, 34.727757>,  <25.202726, 34.799385, 35.436726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584238, 34.880165, 34.727757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411230, 35.224350, 34.835484>,  <25.307425, 35.430859, 34.900120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411230, 35.224350, 34.835484>,  <25.584238, 34.880165, 34.727757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411230, 35.224350, 34.835484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899670, 0.431536, 0.066120,
		-0.059328, 0.270899, -0.960778,
		-0.432522, 0.860460, 0.269322,
		25.281473, 35.482487, 34.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928247, 35.348179, 34.390366>,  <25.584238, 34.880165, 34.727757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928247, 35.348179, 34.390366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792763, 35.541180, 34.713467>,  <25.711472, 35.656979, 34.907330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792763, 35.541180, 34.713467>,  <25.928247, 35.348179, 34.390366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792763, 35.541180, 34.713467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888532, 0.446421, 0.105920,
		-0.309494, 0.753594, -0.579922,
		-0.338710, 0.482498, 0.807757,
		25.691149, 35.685928, 34.955795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802206, 36.009804, 34.545280>,  <25.928247, 35.348179, 34.390366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802206, 36.009804, 34.545280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465055, 36.110840, 34.735336>,  <25.262766, 36.171463, 34.849369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465055, 36.110840, 34.735336>,  <25.802206, 36.009804, 34.545280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465055, 36.110840, 34.735336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210169, 0.658323, -0.722800,
		-0.495371, -0.709090, -0.501796,
		-0.842874, 0.252592, 0.475143,
		25.212193, 36.186619, 34.877880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345755, 35.974129, 34.029266>,  <25.802206, 36.009804, 34.545280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345755, 35.974129, 34.029266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253002, 36.223072, 34.328304>,  <25.197350, 36.372440, 34.507725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253002, 36.223072, 34.328304>,  <25.345755, 35.974129, 34.029266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253002, 36.223072, 34.328304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137991, 0.781814, -0.608051,
		-0.962907, -0.037835, -0.267169,
		-0.231882, 0.622363, 0.747593,
		25.183437, 36.409782, 34.552582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881800, 36.478916, 33.820301>,  <25.345755, 35.974129, 34.029266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881800, 36.478916, 33.820301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084808, 36.640930, 34.124504>,  <25.206614, 36.738140, 34.307026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084808, 36.640930, 34.124504>,  <24.881800, 36.478916, 33.820301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084808, 36.640930, 34.124504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170446, 0.817989, -0.549401,
		-0.844612, 0.408458, 0.346110,
		0.507522, 0.405038, 0.760504,
		25.237064, 36.762440, 34.352654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628561, 37.195061, 33.975834>,  <24.881800, 36.478916, 33.820301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628561, 37.195061, 33.975834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014391, 37.146240, 34.069382>,  <25.245890, 37.116947, 34.125511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014391, 37.146240, 34.069382>,  <24.628561, 37.195061, 33.975834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014391, 37.146240, 34.069382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221356, 0.856729, -0.465851,
		-0.143504, 0.501117, 0.853398,
		0.964577, -0.122053, 0.233869,
		25.303764, 37.109623, 34.139542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829069, 37.850517, 33.837757>,  <24.628561, 37.195061, 33.975834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829069, 37.850517, 33.837757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186060, 37.684578, 33.908627>,  <25.400253, 37.585014, 33.951149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186060, 37.684578, 33.908627>,  <24.829069, 37.850517, 33.837757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186060, 37.684578, 33.908627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449920, 0.790292, -0.415946,
		0.032534, 0.450936, 0.891963,
		0.892476, -0.414844, 0.177174,
		25.453802, 37.560123, 33.961781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256905, 38.390377, 34.091290>,  <24.829069, 37.850517, 33.837757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256905, 38.390377, 34.091290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502586, 38.117538, 33.932549>,  <25.649996, 37.953835, 33.837303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502586, 38.117538, 33.932549>,  <25.256905, 38.390377, 34.091290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502586, 38.117538, 33.932549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584439, 0.731089, -0.352051,
		0.530266, -0.015702, 0.847686,
		0.614206, -0.682101, -0.396849,
		25.686848, 37.912907, 33.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933418, 38.581215, 34.274284>,  <25.256905, 38.390377, 34.091290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933418, 38.581215, 34.274284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964056, 38.340584, 33.956230>,  <25.982439, 38.196205, 33.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964056, 38.340584, 33.956230>,  <25.933418, 38.581215, 34.274284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964056, 38.340584, 33.956230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677119, 0.616759, -0.401395,
		0.731877, -0.507656, 0.454578,
		0.076594, -0.601575, -0.795136,
		25.987034, 38.160110, 33.717690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581402, 38.808887, 34.090111>,  <25.933418, 38.581215, 34.274284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581402, 38.808887, 34.090111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443737, 38.567825, 33.802120>,  <26.361139, 38.423187, 33.629326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443737, 38.567825, 33.802120>,  <26.581402, 38.808887, 34.090111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443737, 38.567825, 33.802120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648705, 0.401735, -0.646367,
		0.678775, -0.689503, 0.252685,
		-0.344160, -0.602656, -0.719972,
		26.340488, 38.387028, 33.586128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109344, 38.370701, 33.820694>,  <26.581402, 38.808887, 34.090111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109344, 38.370701, 33.820694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840874, 38.447643, 33.534332>,  <26.679790, 38.493809, 33.362514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840874, 38.447643, 33.534332>,  <27.109344, 38.370701, 33.820694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840874, 38.447643, 33.534332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727653, 0.355392, -0.586701,
		0.141575, -0.914712, -0.378496,
		-0.671176, 0.192352, -0.715907,
		26.639521, 38.505348, 33.319561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383810, 38.149048, 33.104931>,  <27.109344, 38.370701, 33.820694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383810, 38.149048, 33.104931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091307, 38.412212, 33.032921>,  <26.915804, 38.570110, 32.989716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091307, 38.412212, 33.032921>,  <27.383810, 38.149048, 33.104931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091307, 38.412212, 33.032921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544624, 0.404275, -0.734811,
		-0.410664, -0.635382, -0.653945,
		-0.731259, 0.657914, -0.180023,
		26.871929, 38.609585, 32.978912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502350, 38.298729, 32.375648>,  <27.383810, 38.149048, 33.104931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502350, 38.298729, 32.375648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257542, 38.584942, 32.510380>,  <27.110657, 38.756668, 32.591217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257542, 38.584942, 32.510380>,  <27.502350, 38.298729, 32.375648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257542, 38.584942, 32.510380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399735, 0.647383, -0.648928,
		-0.682380, -0.262518, -0.682234,
		-0.612021, 0.715528, 0.336824,
		27.073935, 38.799599, 32.611427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288967, 38.639790, 31.786837>,  <27.502350, 38.298729, 32.375648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288967, 38.639790, 31.786837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188671, 38.898022, 32.075378>,  <27.128494, 39.052959, 32.248505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188671, 38.898022, 32.075378>,  <27.288967, 38.639790, 31.786837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188671, 38.898022, 32.075378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422832, 0.743357, -0.518299,
		-0.870829, 0.175055, -0.459360,
		-0.250738, 0.645582, 0.721356,
		27.113449, 39.091698, 32.291786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972151, 39.213173, 31.404207>,  <27.288967, 38.639790, 31.786837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972151, 39.213173, 31.404207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062563, 39.355537, 31.766916>,  <27.116810, 39.440956, 31.984541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062563, 39.355537, 31.766916>,  <26.972151, 39.213173, 31.404207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062563, 39.355537, 31.766916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338088, 0.844338, -0.415680,
		-0.913568, 0.400526, 0.070519,
		0.226033, 0.355910, 0.906773,
		27.130373, 39.462311, 32.038948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930267, 39.851650, 31.291712>,  <26.972151, 39.213173, 31.404207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930267, 39.851650, 31.291712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133146, 39.870899, 31.635906>,  <27.254873, 39.882446, 31.842422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133146, 39.870899, 31.635906>,  <26.930267, 39.851650, 31.291712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133146, 39.870899, 31.635906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343983, 0.904161, -0.253316,
		-0.790205, 0.424474, 0.442038,
		0.507200, 0.048118, 0.860484,
		27.285307, 39.885334, 31.894051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862116, 40.617054, 31.499931>,  <26.930267, 39.851650, 31.291712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862116, 40.617054, 31.499931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175297, 40.444458, 31.679174>,  <27.363205, 40.340900, 31.786720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175297, 40.444458, 31.679174>,  <26.862116, 40.617054, 31.499931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175297, 40.444458, 31.679174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597332, 0.722630, -0.347850,
		-0.173721, 0.540019, 0.823529,
		0.782953, -0.431492, 0.448107,
		27.410183, 40.315010, 31.813606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234886, 41.214771, 31.679911>,  <26.862116, 40.617054, 31.499931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234886, 41.214771, 31.679911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501814, 40.916931, 31.686230>,  <27.661970, 40.738228, 31.690022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501814, 40.916931, 31.686230>,  <27.234886, 41.214771, 31.679911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501814, 40.916931, 31.686230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714317, 0.633885, -0.296547,
		0.210796, 0.209176, 0.954888,
		0.667320, -0.744604, 0.015797,
		27.702009, 40.693550, 31.690969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730040, 41.387276, 32.274364>,  <27.234886, 41.214771, 31.679911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730040, 41.387276, 32.274364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896679, 41.160954, 31.989744>,  <27.996662, 41.025158, 31.818972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896679, 41.160954, 31.989744>,  <27.730040, 41.387276, 32.274364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896679, 41.160954, 31.989744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661529, 0.725548, -0.189630,
		0.623559, -0.391712, 0.676561,
		0.416598, -0.565810, -0.711551,
		28.021658, 40.991211, 31.776279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442516, 41.451012, 32.357285>,  <27.730040, 41.387276, 32.274364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442516, 41.451012, 32.357285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401003, 41.336124, 31.976393>,  <28.376095, 41.267193, 31.747858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401003, 41.336124, 31.976393>,  <28.442516, 41.451012, 32.357285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401003, 41.336124, 31.976393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581862, 0.758932, -0.292334,
		0.806638, -0.584404, 0.088357,
		-0.103784, -0.287219, -0.952226,
		28.369867, 41.249958, 31.690725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191137, 41.413082, 32.032471>,  <28.442516, 41.451012, 32.357285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191137, 41.413082, 32.032471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918835, 41.439396, 31.740650>,  <28.755453, 41.455185, 31.565559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918835, 41.439396, 31.740650>,  <29.191137, 41.413082, 32.032471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918835, 41.439396, 31.740650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341010, 0.909913, -0.236158,
		0.648290, -0.409549, -0.641864,
		-0.680758, 0.065783, -0.729548,
		28.714607, 41.459129, 31.521786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568428, 41.460911, 31.245888>,  <29.191137, 41.413082, 32.032471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568428, 41.460911, 31.245888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206205, 41.627972, 31.275639>,  <28.988871, 41.728207, 31.293489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206205, 41.627972, 31.275639>,  <29.568428, 41.460911, 31.245888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206205, 41.627972, 31.275639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376643, 0.872215, -0.312061,
		-0.195204, -0.254576, -0.947146,
		-0.905558, 0.417651, 0.074375,
		28.934538, 41.753265, 31.297951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437136, 41.841766, 30.614218>,  <29.568428, 41.460911, 31.245888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437136, 41.841766, 30.614218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216610, 42.011829, 30.901354>,  <29.084295, 42.113869, 31.073635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216610, 42.011829, 30.901354>,  <29.437136, 41.841766, 30.614218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216610, 42.011829, 30.901354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339854, 0.900234, -0.272173,
		-0.761939, 0.093907, -0.640804,
		-0.551315, 0.425159, 0.717838,
		29.051216, 42.139378, 31.116705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305983, 42.449409, 30.313225>,  <29.437136, 41.841766, 30.614218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305983, 42.449409, 30.313225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210947, 42.501831, 30.698219>,  <29.153925, 42.533283, 30.929216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210947, 42.501831, 30.698219>,  <29.305983, 42.449409, 30.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210947, 42.501831, 30.698219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281395, 0.957656, -0.060931,
		-0.929714, 0.256362, -0.264406,
		-0.237589, 0.131051, 0.962485,
		29.139669, 42.541145, 30.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837486, 43.053082, 30.438566>,  <29.305983, 42.449409, 30.313225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837486, 43.053082, 30.438566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032011, 43.043560, 30.787951>,  <29.148726, 43.037849, 30.997581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032011, 43.043560, 30.787951>,  <28.837486, 43.053082, 30.438566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032011, 43.043560, 30.787951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185307, 0.979700, -0.076478,
		-0.853910, 0.199051, 0.480850,
		0.486312, -0.023799, 0.873461,
		29.177904, 43.036419, 31.049990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588978, 43.651417, 30.808147>,  <28.837486, 43.053082, 30.438566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588978, 43.651417, 30.808147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954123, 43.585258, 30.957455>,  <29.173208, 43.545563, 31.047039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954123, 43.585258, 30.957455>,  <28.588978, 43.651417, 30.808147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954123, 43.585258, 30.957455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188760, 0.981662, -0.026644,
		-0.362016, 0.094781, 0.927341,
		0.912860, -0.165399, 0.373268,
		29.227982, 43.535637, 31.069435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732882, 44.316044, 30.947981>,  <28.588978, 43.651417, 30.808147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732882, 44.316044, 30.947981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074411, 44.128628, 31.038719>,  <29.279329, 44.016178, 31.093163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074411, 44.128628, 31.038719>,  <28.732882, 44.316044, 30.947981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074411, 44.128628, 31.038719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443273, 0.882868, 0.155089,
		-0.272939, -0.031864, 0.961503,
		0.853823, -0.468538, 0.226845,
		29.330559, 43.988068, 31.106773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987617, 44.314346, 31.620186>,  <28.732882, 44.316044, 30.947981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987617, 44.314346, 31.620186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291574, 44.322018, 31.360279>,  <29.473948, 44.326618, 31.204334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291574, 44.322018, 31.360279>,  <28.987617, 44.314346, 31.620186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291574, 44.322018, 31.360279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156416, 0.964803, 0.211398,
		0.630951, -0.262273, 0.730146,
		0.759891, 0.019175, -0.649767,
		29.519543, 44.327770, 31.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501055, 44.668514, 31.911955>,  <28.987617, 44.314346, 31.620186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501055, 44.668514, 31.911955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546072, 44.746475, 31.522217>,  <29.573082, 44.793251, 31.288374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546072, 44.746475, 31.522217>,  <29.501055, 44.668514, 31.911955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546072, 44.746475, 31.522217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179814, 0.960391, 0.212877,
		0.977242, -0.199158, 0.073038,
		0.112541, 0.194899, -0.974345,
		29.579834, 44.804943, 31.229914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217203, 44.947330, 31.754883>,  <29.501055, 44.668514, 31.911955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217203, 44.947330, 31.754883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946110, 45.071239, 31.488134>,  <29.783453, 45.145584, 31.328085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946110, 45.071239, 31.488134>,  <30.217203, 44.947330, 31.754883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946110, 45.071239, 31.488134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250245, 0.949961, 0.186954,
		0.691415, -0.040176, -0.721340,
		-0.677734, 0.309774, -0.666871,
		29.742790, 45.164173, 31.288073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611673, 45.577835, 31.885187>,  <30.217203, 44.947330, 31.754883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611673, 45.577835, 31.885187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887955, 45.499035, 32.163502>,  <31.053724, 45.451756, 32.330490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887955, 45.499035, 32.163502>,  <30.611673, 45.577835, 31.885187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887955, 45.499035, 32.163502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456909, -0.864672, 0.208750,
		0.560503, -0.462096, -0.687244,
		0.690703, -0.197003, 0.695787,
		31.095165, 45.439934, 32.372238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028214, 44.891239, 31.903349>,  <30.611673, 45.577835, 31.885187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028214, 44.891239, 31.903349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981762, 44.998188, 32.285976>,  <30.953890, 45.062359, 32.515553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981762, 44.998188, 32.285976>,  <31.028214, 44.891239, 31.903349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981762, 44.998188, 32.285976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419573, -0.886142, 0.196749,
		0.900262, -0.378503, 0.215090,
		-0.116130, 0.267372, 0.956570,
		30.946922, 45.078400, 32.572948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143578, 44.309055, 32.381866>,  <31.028214, 44.891239, 31.903349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143578, 44.309055, 32.381866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950016, 44.570099, 32.615082>,  <30.833879, 44.726727, 32.755013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950016, 44.570099, 32.615082>,  <31.143578, 44.309055, 32.381866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950016, 44.570099, 32.615082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447841, -0.757061, 0.475707,
		0.751848, -0.030912, 0.658611,
		-0.483904, 0.652613, 0.583038,
		30.804846, 44.765884, 32.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295376, 44.104942, 33.010960>,  <31.143578, 44.309055, 32.381866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295376, 44.104942, 33.010960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968384, 44.327332, 33.071121>,  <30.772188, 44.460766, 33.107220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968384, 44.327332, 33.071121>,  <31.295376, 44.104942, 33.010960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968384, 44.327332, 33.071121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372292, -0.709325, 0.598545,
		0.439460, 0.433304, 0.786843,
		-0.817480, 0.555972, 0.150405,
		30.723141, 44.494122, 33.116241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178289, 44.069344, 33.736153>,  <31.295376, 44.104942, 33.010960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178289, 44.069344, 33.736153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820560, 44.163128, 33.583725>,  <30.605923, 44.219398, 33.492268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820560, 44.163128, 33.583725>,  <31.178289, 44.069344, 33.736153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820560, 44.163128, 33.583725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438583, -0.627849, 0.643002,
		-0.088493, 0.742181, 0.664331,
		-0.894323, 0.234463, -0.381068,
		30.552263, 44.233467, 33.469406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642843, 44.272045, 34.347984>,  <31.178289, 44.069344, 33.736153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642843, 44.272045, 34.347984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387810, 44.189594, 34.051067>,  <30.234789, 44.140125, 33.872917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387810, 44.189594, 34.051067>,  <30.642843, 44.272045, 34.347984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387810, 44.189594, 34.051067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597076, -0.476656, 0.645213,
		-0.486814, 0.854582, 0.180834,
		-0.637583, -0.206127, -0.742293,
		30.196535, 44.127758, 33.828381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955826, 44.550762, 34.602928>,  <30.642843, 44.272045, 34.347984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955826, 44.550762, 34.602928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926155, 44.260151, 34.329681>,  <29.908354, 44.085785, 34.165733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926155, 44.260151, 34.329681>,  <29.955826, 44.550762, 34.602928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926155, 44.260151, 34.329681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619121, -0.503455, 0.602679,
		-0.781785, 0.467636, -0.412467,
		-0.074176, -0.726533, -0.683116,
		29.903902, 44.042191, 34.124748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360600, 44.438915, 34.633553>,  <29.955826, 44.550762, 34.602928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360600, 44.438915, 34.633553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460825, 44.103657, 34.439758>,  <29.520960, 43.902500, 34.323483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460825, 44.103657, 34.439758>,  <29.360600, 44.438915, 34.633553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460825, 44.103657, 34.439758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617740, -0.523746, 0.586589,
		-0.745396, 0.152307, -0.648990,
		0.250564, -0.838148, -0.484485,
		29.535994, 43.852211, 34.294415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798901, 44.059311, 34.287868>,  <29.360600, 44.438915, 34.633553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798901, 44.059311, 34.287868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092936, 43.801865, 34.373100>,  <29.269356, 43.647396, 34.424240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092936, 43.801865, 34.373100>,  <28.798901, 44.059311, 34.287868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092936, 43.801865, 34.373100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649197, -0.577630, 0.494860,
		-0.195419, -0.502096, -0.842444,
		0.735088, -0.643617, 0.213079,
		29.313461, 43.608780, 34.437023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422562, 43.478748, 34.271645>,  <28.798901, 44.059311, 34.287868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422562, 43.478748, 34.271645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762278, 43.354012, 34.442036>,  <28.966108, 43.279171, 34.544270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762278, 43.354012, 34.442036>,  <28.422562, 43.478748, 34.271645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762278, 43.354012, 34.442036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489487, -0.767394, 0.414136,
		0.197750, -0.560234, -0.804383,
		0.849292, -0.311840, 0.425980,
		29.017065, 43.260460, 34.569828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536911, 42.696922, 34.061432>,  <28.422562, 43.478748, 34.271645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536911, 42.696922, 34.061432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736599, 42.770584, 34.400105>,  <28.856413, 42.814781, 34.603306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736599, 42.770584, 34.400105>,  <28.536911, 42.696922, 34.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736599, 42.770584, 34.400105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421887, -0.801841, 0.423158,
		0.756829, -0.568452, -0.322602,
		0.499221, 0.184157, 0.846679,
		28.886366, 42.825832, 34.654110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627329, 42.041668, 34.277119>,  <28.536911, 42.696922, 34.061432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627329, 42.041668, 34.277119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735596, 42.249958, 34.600990>,  <28.800556, 42.374931, 34.795315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735596, 42.249958, 34.600990>,  <28.627329, 42.041668, 34.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735596, 42.249958, 34.600990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257465, -0.771284, 0.582094,
		0.927605, -0.366019, -0.074693,
		0.270666, 0.520723, 0.809684,
		28.816795, 42.406174, 34.843895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155462, 41.661106, 34.647392>,  <28.627329, 42.041668, 34.277119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155462, 41.661106, 34.647392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962694, 41.900246, 34.903622>,  <28.847033, 42.043728, 35.057358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962694, 41.900246, 34.903622>,  <29.155462, 41.661106, 34.647392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962694, 41.900246, 34.903622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301022, -0.799534, 0.519741,
		0.822884, 0.057649, 0.565278,
		-0.481921, 0.597848, 0.640570,
		28.818117, 42.079601, 35.095791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372379, 41.480888, 35.262890>,  <29.155462, 41.661106, 34.647392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372379, 41.480888, 35.262890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018908, 41.652721, 35.337257>,  <28.806824, 41.755821, 35.381878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018908, 41.652721, 35.337257>,  <29.372379, 41.480888, 35.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018908, 41.652721, 35.337257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275952, -0.798920, 0.534395,
		0.378100, 0.420930, 0.824535,
		-0.883680, 0.429587, 0.185915,
		28.753803, 41.781597, 35.393032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209648, 41.179897, 35.884266>,  <29.372379, 41.480888, 35.262890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209648, 41.179897, 35.884266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866899, 41.319092, 35.732117>,  <28.661251, 41.402607, 35.640827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866899, 41.319092, 35.732117>,  <29.209648, 41.179897, 35.884266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866899, 41.319092, 35.732117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511332, -0.667659, 0.541083,
		-0.065670, 0.658133, 0.750032,
		-0.856870, 0.347983, -0.380370,
		28.609838, 41.423485, 35.618008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772879, 41.098122, 36.462193>,  <29.209648, 41.179897, 35.884266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772879, 41.098122, 36.462193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494305, 41.125263, 36.176430>,  <28.327160, 41.141548, 36.004974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494305, 41.125263, 36.176430>,  <28.772879, 41.098122, 36.462193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494305, 41.125263, 36.176430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528363, -0.722136, 0.446489,
		-0.485600, 0.688415, 0.538773,
		-0.696437, 0.067853, -0.714403,
		28.285374, 41.145618, 35.962109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115576, 40.962128, 36.796635>,  <28.772879, 41.098122, 36.462193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115576, 40.962128, 36.796635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031662, 40.886364, 36.412945>,  <27.981314, 40.840904, 36.182732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031662, 40.886364, 36.412945>,  <28.115576, 40.962128, 36.796635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031662, 40.886364, 36.412945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629329, -0.724663, 0.280729,
		-0.748288, 0.662561, 0.032824,
		-0.209787, -0.189408, -0.959226,
		27.968725, 40.829540, 36.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384628, 40.789532, 36.736679>,  <28.115576, 40.962128, 36.796635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384628, 40.789532, 36.736679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520395, 40.660889, 36.383099>,  <27.601856, 40.583702, 36.170952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520395, 40.660889, 36.383099>,  <27.384628, 40.789532, 36.736679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520395, 40.660889, 36.383099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623656, -0.780433, 0.044476,
		-0.704165, 0.536183, -0.465467,
		0.339418, -0.321610, -0.883947,
		27.622221, 40.564407, 36.117916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771526, 40.542805, 36.300499>,  <27.384628, 40.789532, 36.736679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771526, 40.542805, 36.300499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110466, 40.349224, 36.213051>,  <27.313829, 40.233074, 36.160583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110466, 40.349224, 36.213051>,  <26.771526, 40.542805, 36.300499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110466, 40.349224, 36.213051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491363, -0.870655, 0.022866,
		-0.201409, 0.088046, -0.975542,
		0.847347, -0.483951, -0.218620,
		27.364670, 40.204041, 36.147465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457853, 40.024128, 35.892616>,  <26.771526, 40.542805, 36.300499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457853, 40.024128, 35.892616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825085, 39.904789, 35.997017>,  <27.045424, 39.833187, 36.059658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825085, 39.904789, 35.997017>,  <26.457853, 40.024128, 35.892616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825085, 39.904789, 35.997017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305835, -0.952003, -0.012446,
		0.252188, -0.068397, -0.965258,
		0.918077, -0.298348, 0.261002,
		27.100508, 39.815285, 36.075317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459589, 39.315353, 35.680119>,  <26.457853, 40.024128, 35.892616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459589, 39.315353, 35.680119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790277, 39.345234, 35.903172>,  <26.988689, 39.363163, 36.037003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790277, 39.345234, 35.903172>,  <26.459589, 39.315353, 35.680119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790277, 39.345234, 35.903172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069458, -0.970011, 0.232926,
		0.558310, -0.231296, -0.796738,
		0.826720, 0.074705, 0.557632,
		27.038294, 39.367645, 36.070461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031639, 38.842896, 35.417080>,  <26.459589, 39.315353, 35.680119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031639, 38.842896, 35.417080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114004, 38.913891, 35.802017>,  <27.163424, 38.956490, 36.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114004, 38.913891, 35.802017>,  <27.031639, 38.842896, 35.417080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114004, 38.913891, 35.802017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015655, -0.982691, 0.184590,
		0.978446, -0.053075, -0.199568,
		0.205911, 0.177487, 0.962340,
		27.175777, 38.967136, 36.090721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748384, 38.555000, 35.527851>,  <27.031639, 38.842896, 35.417080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748384, 38.555000, 35.527851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546635, 38.585770, 35.871872>,  <27.425585, 38.604233, 36.078285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546635, 38.585770, 35.871872>,  <27.748384, 38.555000, 35.527851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546635, 38.585770, 35.871872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061795, -0.990255, 0.124807,
		0.861270, 0.116096, 0.494707,
		-0.504376, 0.076922, 0.860051,
		27.395323, 38.608845, 36.129887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926798, 37.991219, 35.920135>,  <27.748384, 38.555000, 35.527851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926798, 37.991219, 35.920135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614721, 38.111801, 36.139378>,  <27.427475, 38.184151, 36.270924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614721, 38.111801, 36.139378>,  <27.926798, 37.991219, 35.920135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614721, 38.111801, 36.139378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221142, -0.952556, 0.209123,
		0.585147, 0.041946, 0.809842,
		-0.780192, 0.301458, 0.548109,
		27.380663, 38.202240, 36.303810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025303, 37.682339, 36.529610>,  <27.926798, 37.991219, 35.920135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025303, 37.682339, 36.529610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637556, 37.759834, 36.469219>,  <27.404909, 37.806332, 36.432983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637556, 37.759834, 36.469219>,  <28.025303, 37.682339, 36.529610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637556, 37.759834, 36.469219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222906, -0.952075, 0.209445,
		-0.103166, 0.236683, 0.966094,
		-0.969366, 0.193740, -0.150980,
		27.346746, 37.817955, 36.423923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028330, 37.960960, 37.272861>,  <28.025303, 37.682339, 36.529610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028330, 37.960960, 37.272861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231915, 38.188831, 37.014736>,  <28.354065, 38.325554, 36.859863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231915, 38.188831, 37.014736>,  <28.028330, 37.960960, 37.272861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231915, 38.188831, 37.014736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784360, 0.001893, 0.620303,
		0.354596, -0.821864, -0.445871,
		0.508961, 0.569680, -0.645309,
		28.384604, 38.359734, 36.821144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698168, 37.670971, 37.092861>,  <28.028330, 37.960960, 37.272861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698168, 37.670971, 37.092861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726646, 38.068851, 37.063213>,  <28.743734, 38.307579, 37.045425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726646, 38.068851, 37.063213>,  <28.698168, 37.670971, 37.092861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726646, 38.068851, 37.063213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740926, -0.002992, 0.671580,
		0.667802, -0.102730, -0.737216,
		0.071197, 0.994705, -0.074118,
		28.748005, 38.367264, 37.040977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444048, 37.818069, 36.923977>,  <28.698168, 37.670971, 37.092861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444048, 37.818069, 36.923977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279766, 38.140308, 37.094784>,  <29.181198, 38.333652, 37.197266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279766, 38.140308, 37.094784>,  <29.444048, 37.818069, 36.923977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279766, 38.140308, 37.094784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827457, 0.132626, 0.545641,
		0.382932, 0.577432, -0.721065,
		-0.410703, 0.805594, 0.427014,
		29.156555, 38.381989, 37.222889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882624, 38.439087, 37.016830>,  <29.444048, 37.818069, 36.923977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882624, 38.439087, 37.016830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601889, 38.474747, 37.299526>,  <29.433447, 38.496143, 37.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601889, 38.474747, 37.299526>,  <29.882624, 38.439087, 37.016830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601889, 38.474747, 37.299526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706017, 0.218926, 0.673507,
		-0.094678, 0.971660, -0.216593,
		-0.701837, 0.089152, 0.706736,
		29.391338, 38.501492, 37.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832705, 39.103401, 37.291618>,  <29.882624, 38.439087, 37.016830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832705, 39.103401, 37.291618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730045, 38.852180, 37.585472>,  <29.668449, 38.701450, 37.761784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730045, 38.852180, 37.585472>,  <29.832705, 39.103401, 37.291618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730045, 38.852180, 37.585472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712269, 0.390875, 0.583000,
		-0.653302, 0.672884, 0.347021,
		-0.256650, -0.628047, 0.734634,
		29.653051, 38.663765, 37.805862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831144, 39.536903, 37.938408>,  <29.832705, 39.103401, 37.291618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831144, 39.536903, 37.938408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885235, 39.145828, 38.002697>,  <29.917690, 38.911182, 38.041271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885235, 39.145828, 38.002697>,  <29.831144, 39.536903, 37.938408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885235, 39.145828, 38.002697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741024, 0.207476, 0.638621,
		-0.657721, 0.032739, 0.752550,
		0.135229, -0.977692, 0.160721,
		29.925804, 38.852520, 38.050915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820719, 39.528393, 38.618454>,  <29.831144, 39.536903, 37.938408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820719, 39.528393, 38.618454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005121, 39.198769, 38.486755>,  <30.115763, 39.000996, 38.407738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005121, 39.198769, 38.486755>,  <29.820719, 39.528393, 38.618454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005121, 39.198769, 38.486755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736697, 0.148554, 0.659704,
		-0.494722, -0.546683, 0.675564,
		0.461007, -0.824056, -0.329247,
		30.143423, 38.951553, 38.387981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183573, 39.392799, 39.165054>,  <29.820719, 39.528393, 38.618454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183573, 39.392799, 39.165054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354641, 39.171539, 38.879086>,  <30.457283, 39.038784, 38.707504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354641, 39.171539, 38.879086>,  <30.183573, 39.392799, 39.165054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354641, 39.171539, 38.879086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841277, -0.045762, 0.538664,
		-0.330680, -0.831821, 0.445784,
		0.427672, -0.553154, -0.714925,
		30.482943, 39.005592, 38.664608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558554, 38.957294, 39.543644>,  <30.183573, 39.392799, 39.165054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558554, 38.957294, 39.543644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716053, 38.971985, 39.176250>,  <30.810553, 38.980801, 38.955814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716053, 38.971985, 39.176250>,  <30.558554, 38.957294, 39.543644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716053, 38.971985, 39.176250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919206, -0.010489, 0.393636,
		0.004824, -0.999270, -0.037894,
		0.393746, 0.036731, -0.918485,
		30.834177, 38.983002, 38.900703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033335, 38.437050, 39.504169>,  <30.558554, 38.957294, 39.543644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033335, 38.437050, 39.504169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164207, 38.689095, 39.222485>,  <31.242731, 38.840321, 39.053474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164207, 38.689095, 39.222485>,  <31.033335, 38.437050, 39.504169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164207, 38.689095, 39.222485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936984, -0.119706, 0.328224,
		0.122521, -0.767221, -0.629572,
		0.327184, 0.630113, -0.704207,
		31.262363, 38.878128, 39.011223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673702, 38.116058, 39.227684>,  <31.033335, 38.437050, 39.504169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673702, 38.116058, 39.227684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697529, 38.507679, 39.149811>,  <31.711824, 38.742653, 39.103085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697529, 38.507679, 39.149811>,  <31.673702, 38.116058, 39.227684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697529, 38.507679, 39.149811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915686, 0.024062, 0.401173,
		0.397455, -0.202169, -0.895074,
		0.059567, 0.979055, -0.194687,
		31.715399, 38.801395, 39.091404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278732, 38.142342, 38.988632>,  <31.673702, 38.116058, 39.227684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278732, 38.142342, 38.988632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210278, 38.525738, 39.079861>,  <32.169205, 38.755775, 39.134598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210278, 38.525738, 39.079861>,  <32.278732, 38.142342, 38.988632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210278, 38.525738, 39.079861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843585, 0.022962, 0.536504,
		0.508996, 0.284209, -0.812496,
		-0.171136, 0.958488, 0.228067,
		32.158936, 38.813286, 39.148281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891399, 38.391823, 38.926220>,  <32.278732, 38.142342, 38.988632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891399, 38.391823, 38.926220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726311, 38.667961, 39.163902>,  <32.627258, 38.833645, 39.306511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726311, 38.667961, 39.163902>,  <32.891399, 38.391823, 38.926220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726311, 38.667961, 39.163902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782810, -0.064695, 0.618888,
		0.465688, 0.720583, -0.513707,
		-0.412726, 0.690344, 0.594208,
		32.602493, 38.875065, 39.342163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437397, 38.854862, 39.075993>,  <32.891399, 38.391823, 38.926220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437397, 38.854862, 39.075993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178574, 38.928738, 39.371887>,  <33.023281, 38.973064, 39.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178574, 38.928738, 39.371887>,  <33.437397, 38.854862, 39.075993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178574, 38.928738, 39.371887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723299, -0.158184, 0.672173,
		0.241156, 0.969984, -0.031231,
		-0.647057, 0.184688, 0.739735,
		32.984455, 38.984142, 39.593807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817986, 39.348236, 39.439060>,  <33.437397, 38.854862, 39.075993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817986, 39.348236, 39.439060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530243, 39.195549, 39.671204>,  <33.357597, 39.103939, 39.810490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530243, 39.195549, 39.671204>,  <33.817986, 39.348236, 39.439060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530243, 39.195549, 39.671204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626390, 0.004683, 0.779496,
		-0.300261, 0.924269, 0.235732,
		-0.719360, -0.381713, 0.580359,
		33.314434, 39.081036, 39.845310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047028, 39.654636, 40.058556>,  <33.817986, 39.348236, 39.439060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047028, 39.654636, 40.058556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798092, 39.353024, 40.142586>,  <33.648731, 39.172054, 40.193005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798092, 39.353024, 40.142586>,  <34.047028, 39.654636, 40.058556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798092, 39.353024, 40.142586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596019, -0.282519, 0.751627,
		-0.507403, 0.592973, 0.625241,
		-0.622337, -0.754033, 0.210072,
		33.611389, 39.126812, 40.205608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888199, 39.718178, 40.724400>,  <34.047028, 39.654636, 40.058556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888199, 39.718178, 40.724400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791245, 39.338207, 40.645519>,  <33.733070, 39.110226, 40.598190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791245, 39.338207, 40.645519>,  <33.888199, 39.718178, 40.724400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791245, 39.338207, 40.645519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438473, -0.288576, 0.851156,
		-0.865442, 0.119843, 0.486464,
		-0.242387, -0.949927, -0.197198,
		33.718529, 39.053230, 40.586361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663029, 39.458298, 41.431240>,  <33.888199, 39.718178, 40.724400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663029, 39.458298, 41.431240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780205, 39.174374, 41.175003>,  <33.850510, 39.004021, 41.021259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780205, 39.174374, 41.175003>,  <33.663029, 39.458298, 41.431240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780205, 39.174374, 41.175003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511784, -0.449521, 0.732126,
		-0.807629, -0.542312, 0.231587,
		0.292938, -0.709809, -0.640593,
		33.868088, 38.961430, 40.982826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426266, 38.752270, 41.615528>,  <33.663029, 39.458298, 41.431240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426266, 38.752270, 41.615528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768753, 38.695820, 41.416740>,  <33.974243, 38.661949, 41.297466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768753, 38.695820, 41.416740>,  <33.426266, 38.752270, 41.615528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768753, 38.695820, 41.416740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303825, -0.640469, 0.705330,
		-0.417832, -0.754906, -0.505502,
		0.856216, -0.141125, -0.496968,
		34.025620, 38.653481, 41.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553596, 37.973492, 41.428463>,  <33.426266, 38.752270, 41.615528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553596, 37.973492, 41.428463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897636, 38.175152, 41.459610>,  <34.104061, 38.296146, 41.478298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897636, 38.175152, 41.459610>,  <33.553596, 37.973492, 41.428463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897636, 38.175152, 41.459610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278157, -0.591438, 0.756855,
		0.427620, -0.629312, -0.648928,
		0.860099, 0.504151, 0.077863,
		34.155666, 38.326397, 41.482967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140385, 37.433949, 41.389488>,  <33.553596, 37.973492, 41.428463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140385, 37.433949, 41.389488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277645, 37.759926, 41.576298>,  <34.360001, 37.955513, 41.688385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277645, 37.759926, 41.576298>,  <34.140385, 37.433949, 41.389488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277645, 37.759926, 41.576298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298290, -0.566028, 0.768528,
		0.890658, -0.124410, -0.437322,
		0.343149, 0.814944, 0.467027,
		34.380589, 38.004410, 41.716408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773575, 37.209156, 41.733383>,  <34.140385, 37.433949, 41.389488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773575, 37.209156, 41.733383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659058, 37.540756, 41.925545>,  <34.590347, 37.739716, 42.040844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659058, 37.540756, 41.925545>,  <34.773575, 37.209156, 41.733383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659058, 37.540756, 41.925545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234057, -0.425695, 0.874071,
		0.929114, 0.362685, -0.072160,
		-0.286294, 0.829001, 0.480408,
		34.573170, 37.789455, 42.069668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262737, 37.329212, 42.251644>,  <34.773575, 37.209156, 41.733383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262737, 37.329212, 42.251644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940029, 37.536980, 42.364296>,  <34.746403, 37.661640, 42.431889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940029, 37.536980, 42.364296>,  <35.262737, 37.329212, 42.251644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940029, 37.536980, 42.364296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073845, -0.384270, 0.920263,
		0.586227, 0.763242, 0.271662,
		-0.806775, 0.519422, 0.281630,
		34.697998, 37.692806, 42.448784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526081, 37.728363, 42.852364>,  <35.262737, 37.329212, 42.251644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526081, 37.728363, 42.852364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128109, 37.688210, 42.849873>,  <34.889324, 37.664116, 42.848377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128109, 37.688210, 42.849873>,  <35.526081, 37.728363, 42.852364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128109, 37.688210, 42.849873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033147, -0.385747, 0.922009,
		-0.094958, 0.917127, 0.387119,
		-0.994929, -0.100384, -0.006230,
		34.829632, 37.658092, 42.848003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327190, 37.913017, 43.589725>,  <35.526081, 37.728363, 42.852364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327190, 37.913017, 43.589725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988155, 37.752243, 43.451138>,  <34.784733, 37.655781, 43.367985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988155, 37.752243, 43.451138>,  <35.327190, 37.913017, 43.589725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988155, 37.752243, 43.451138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195514, -0.370441, 0.908046,
		-0.493319, 0.837391, 0.235399,
		-0.847591, -0.401933, -0.346467,
		34.733879, 37.631664, 43.347198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724297, 38.142258, 43.949841>,  <35.327190, 37.913017, 43.589725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724297, 38.142258, 43.949841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579922, 37.804741, 43.790974>,  <34.493298, 37.602230, 43.695656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579922, 37.804741, 43.790974>,  <34.724297, 38.142258, 43.949841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579922, 37.804741, 43.790974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269157, -0.313496, 0.910645,
		-0.892905, 0.435583, -0.113961,
		-0.360935, -0.843794, -0.397163,
		34.471642, 37.551601, 43.671825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066376, 37.918549, 44.253201>,  <34.724297, 38.142258, 43.949841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066376, 37.918549, 44.253201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200066, 37.570293, 44.108822>,  <34.280277, 37.361340, 44.022194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200066, 37.570293, 44.108822>,  <34.066376, 37.918549, 44.253201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200066, 37.570293, 44.108822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282563, -0.457911, 0.842897,
		-0.899141, -0.179724, -0.399054,
		0.334220, -0.870641, -0.360944,
		34.300331, 37.309101, 44.000538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577858, 37.380829, 44.487854>,  <34.066376, 37.918549, 44.253201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577858, 37.380829, 44.487854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919830, 37.204121, 44.379089>,  <34.125011, 37.098095, 44.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919830, 37.204121, 44.379089>,  <33.577858, 37.380829, 44.487854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919830, 37.204121, 44.379089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022703, -0.555538, 0.831181,
		-0.518246, -0.704429, -0.484975,
		0.854930, -0.441767, -0.271913,
		34.176308, 37.071590, 44.297516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447144, 36.705616, 44.683662>,  <33.577858, 37.380829, 44.487854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447144, 36.705616, 44.683662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845745, 36.727924, 44.658764>,  <34.084904, 36.741310, 44.643826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845745, 36.727924, 44.658764>,  <33.447144, 36.705616, 44.683662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845745, 36.727924, 44.658764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082690, -0.549565, 0.831349,
		0.012154, -0.833587, -0.552254,
		0.996501, 0.055770, -0.062249,
		34.144695, 36.744656, 44.640087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653965, 36.000412, 44.764603>,  <33.447144, 36.705616, 44.683662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653965, 36.000412, 44.764603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962620, 36.239742, 44.850941>,  <34.147812, 36.383339, 44.902744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962620, 36.239742, 44.850941>,  <33.653965, 36.000412, 44.764603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962620, 36.239742, 44.850941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168416, -0.519425, 0.837755,
		0.613367, -0.610087, -0.501573,
		0.771633, 0.598324, 0.215850,
		34.194111, 36.419239, 44.915695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211483, 35.536026, 44.862869>,  <33.653965, 36.000412, 44.764603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211483, 35.536026, 44.862869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348389, 35.856857, 45.058636>,  <34.430531, 36.049355, 45.176094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348389, 35.856857, 45.058636>,  <34.211483, 35.536026, 44.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348389, 35.856857, 45.058636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406465, -0.596003, 0.692508,
		0.847138, -0.038090, -0.530006,
		0.342263, 0.802079, 0.489414,
		34.451069, 36.097481, 45.205460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857090, 35.290020, 45.102139>,  <34.211483, 35.536026, 44.862869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857090, 35.290020, 45.102139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778030, 35.604752, 45.336006>,  <34.730595, 35.793591, 45.476326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778030, 35.604752, 45.336006>,  <34.857090, 35.290020, 45.102139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778030, 35.604752, 45.336006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275242, -0.527900, 0.803470,
		0.940838, 0.319733, -0.112228,
		-0.197651, 0.786824, 0.584672,
		34.718735, 35.840797, 45.511406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489849, 35.455063, 45.456955>,  <34.857090, 35.290020, 45.102139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489849, 35.455063, 45.456955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191048, 35.616398, 45.668350>,  <35.011765, 35.713200, 45.795189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191048, 35.616398, 45.668350>,  <35.489849, 35.455063, 45.456955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191048, 35.616398, 45.668350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372012, -0.405237, 0.835099,
		0.550987, 0.820429, 0.152671,
		-0.747008, 0.403334, 0.528490,
		34.966946, 35.737396, 45.826897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798653, 35.568436, 46.064793>,  <35.489849, 35.455063, 45.456955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798653, 35.568436, 46.064793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408985, 35.604717, 46.147514>,  <35.175186, 35.626488, 46.197147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408985, 35.604717, 46.147514>,  <35.798653, 35.568436, 46.064793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408985, 35.604717, 46.147514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171408, -0.299214, 0.938664,
		0.147023, 0.949865, 0.275936,
		-0.974168, 0.090707, 0.206805,
		35.116734, 35.631931, 46.209557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708748, 36.015770, 46.730495>,  <35.798653, 35.568436, 46.064793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708748, 36.015770, 46.730495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360565, 35.820354, 46.706371>,  <35.151657, 35.703106, 46.691898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360565, 35.820354, 46.706371>,  <35.708748, 36.015770, 46.730495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360565, 35.820354, 46.706371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100355, -0.296070, 0.949880,
		-0.481911, 0.820774, 0.306743,
		-0.870454, -0.488541, -0.060310,
		35.099430, 35.673794, 46.688278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275101, 36.224747, 47.280380>,  <35.708748, 36.015770, 46.730495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275101, 36.224747, 47.280380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152195, 35.854691, 47.191208>,  <35.078453, 35.632656, 47.137707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152195, 35.854691, 47.191208>,  <35.275101, 36.224747, 47.280380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152195, 35.854691, 47.191208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048180, -0.249082, 0.967283,
		-0.950404, 0.286471, 0.121108,
		-0.307264, -0.925145, -0.222926,
		35.060017, 35.577148, 47.124329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758152, 36.094734, 47.808601>,  <35.275101, 36.224747, 47.280380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758152, 36.094734, 47.808601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886612, 35.761585, 47.628292>,  <34.963688, 35.561695, 47.520107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886612, 35.761585, 47.628292>,  <34.758152, 36.094734, 47.808601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886612, 35.761585, 47.628292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197172, -0.406753, 0.892006,
		-0.926277, -0.375344, 0.033591,
		0.321145, -0.832868, -0.450773,
		34.982956, 35.511726, 47.493061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445755, 35.486973, 48.151344>,  <34.758152, 36.094734, 47.808601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445755, 35.486973, 48.151344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775745, 35.367081, 47.959690>,  <34.973740, 35.295147, 47.844696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775745, 35.367081, 47.959690>,  <34.445755, 35.486973, 48.151344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775745, 35.367081, 47.959690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268196, -0.538629, 0.798718,
		-0.497469, -0.787430, -0.363975,
		0.824982, -0.299720, -0.479137,
		35.023239, 35.277164, 47.815948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486511, 34.817181, 48.305550>,  <34.445755, 35.486973, 48.151344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486511, 34.817181, 48.305550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857849, 34.919250, 48.197430>,  <35.080650, 34.980492, 48.132557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857849, 34.919250, 48.197430>,  <34.486511, 34.817181, 48.305550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857849, 34.919250, 48.197430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353980, -0.384933, 0.852364,
		0.113456, -0.886968, -0.447678,
		0.928346, 0.255175, -0.270296,
		35.136353, 34.995804, 48.116341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872757, 34.126804, 48.210167>,  <34.486511, 34.817181, 48.305550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872757, 34.126804, 48.210167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141911, 34.413746, 48.282425>,  <35.303402, 34.585911, 48.325779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141911, 34.413746, 48.282425>,  <34.872757, 34.126804, 48.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141911, 34.413746, 48.282425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294064, -0.483460, 0.824495,
		0.678785, -0.501672, -0.536261,
		0.672887, 0.717350, 0.180642,
		35.343777, 34.628952, 48.336617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580971, 33.809669, 48.169388>,  <34.872757, 34.126804, 48.210167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580971, 33.809669, 48.169388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566845, 34.131878, 48.405994>,  <35.558369, 34.325203, 48.547958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566845, 34.131878, 48.405994>,  <35.580971, 33.809669, 48.169388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566845, 34.131878, 48.405994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445287, -0.517201, 0.730905,
		0.894691, 0.289209, -0.340420,
		-0.035319, 0.805519, 0.591516,
		35.556248, 34.373535, 48.583450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041950, 33.588734, 48.701187>,  <35.580971, 33.809669, 48.169388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041950, 33.588734, 48.701187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856018, 33.912861, 48.843918>,  <35.744461, 34.107338, 48.929554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856018, 33.912861, 48.843918>,  <36.041950, 33.588734, 48.701187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856018, 33.912861, 48.843918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325298, -0.218528, 0.920015,
		0.823478, 0.543723, -0.162015,
		-0.464828, 0.810315, 0.356825,
		35.716568, 34.155956, 48.950966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442837, 33.818970, 49.306400>,  <36.041950, 33.588734, 48.701187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442837, 33.818970, 49.306400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086048, 33.993980, 49.351921>,  <35.871975, 34.098988, 49.379234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086048, 33.993980, 49.351921>,  <36.442837, 33.818970, 49.306400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086048, 33.993980, 49.351921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115579, -0.022666, 0.993040,
		0.437063, 0.898919, -0.030352,
		-0.891974, 0.437529, 0.113803,
		35.818455, 34.125240, 49.386063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548195, 34.415684, 49.742828>,  <36.442837, 33.818970, 49.306400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548195, 34.415684, 49.742828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155560, 34.341862, 49.762531>,  <35.919979, 34.297569, 49.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155560, 34.341862, 49.762531>,  <36.548195, 34.415684, 49.742828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155560, 34.341862, 49.762531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048353, 0.009379, 0.998786,
		-0.184789, 0.982778, -0.000283,
		-0.981588, -0.184551, 0.049254,
		35.861084, 34.286495, 49.777306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310371, 34.836563, 50.218437>,  <36.548195, 34.415684, 49.742828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310371, 34.836563, 50.218437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006767, 34.576466, 50.205238>,  <35.824604, 34.420406, 50.197319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006767, 34.576466, 50.205238>,  <36.310371, 34.836563, 50.218437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006767, 34.576466, 50.205238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020848, -0.074930, 0.996971,
		-0.650745, 0.756023, 0.070429,
		-0.759010, -0.650242, -0.032998,
		35.779064, 34.381393, 50.195339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891434, 35.039188, 50.817810>,  <36.310371, 34.836563, 50.218437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891434, 35.039188, 50.817810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803375, 34.668079, 50.697300>,  <35.750542, 34.445412, 50.624992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803375, 34.668079, 50.697300>,  <35.891434, 35.039188, 50.817810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803375, 34.668079, 50.697300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093299, -0.327464, 0.940246,
		-0.970996, 0.178879, 0.158649,
		-0.220142, -0.927777, -0.301277,
		35.737331, 34.389748, 50.606918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195885, 34.821346, 51.033310>,  <35.891434, 35.039188, 50.817810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195885, 34.821346, 51.033310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412781, 34.487919, 50.991089>,  <35.542919, 34.287865, 50.965755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412781, 34.487919, 50.991089>,  <35.195885, 34.821346, 51.033310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412781, 34.487919, 50.991089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091418, -0.183407, 0.978777,
		-0.835234, -0.521085, -0.175654,
		0.542243, -0.833566, -0.105552,
		35.575455, 34.237850, 50.959423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843647, 34.204842, 51.240269>,  <35.195885, 34.821346, 51.033310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843647, 34.204842, 51.240269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231640, 34.108913, 51.256329>,  <35.464436, 34.051357, 51.265965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231640, 34.108913, 51.256329>,  <34.843647, 34.204842, 51.240269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231640, 34.108913, 51.256329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110850, -0.289170, 0.950838,
		-0.216420, -0.926751, -0.307075,
		0.969987, -0.239820, 0.040148,
		35.522636, 34.036968, 51.268372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804672, 33.959732, 51.981289>,  <34.843647, 34.204842, 51.240269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804672, 33.959732, 51.981289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957546, 33.888115, 52.343918>,  <35.049271, 33.845146, 52.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957546, 33.888115, 52.343918>,  <34.804672, 33.959732, 51.981289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957546, 33.888115, 52.343918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524804, -0.765436, -0.372409,
		0.760604, 0.618103, -0.198573,
		0.382182, -0.179044, 0.906576,
		35.072201, 33.834400, 52.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448158, 33.861038, 51.856930>,  <34.804672, 33.959732, 51.981289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448158, 33.861038, 51.856930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337574, 33.684212, 52.198257>,  <35.271225, 33.578117, 52.403053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337574, 33.684212, 52.198257>,  <35.448158, 33.861038, 51.856930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337574, 33.684212, 52.198257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360325, -0.870828, -0.334401,
		0.890918, 0.215022, 0.400038,
		-0.276461, -0.442067, 0.853315,
		35.254635, 33.551590, 52.454250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966381, 33.409401, 51.891605>,  <35.448158, 33.861038, 51.856930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966381, 33.409401, 51.891605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701176, 33.262203, 52.152370>,  <35.542053, 33.173885, 52.308830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701176, 33.262203, 52.152370>,  <35.966381, 33.409401, 51.891605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701176, 33.262203, 52.152370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245690, -0.929564, -0.274857,
		0.707139, -0.022067, 0.706730,
		-0.663016, -0.367999, 0.651910,
		35.502270, 33.151802, 52.347942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235229, 32.772812, 52.142258>,  <35.966381, 33.409401, 51.891605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235229, 32.772812, 52.142258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836971, 32.781635, 52.178482>,  <35.598015, 32.786930, 52.200214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836971, 32.781635, 52.178482>,  <36.235229, 32.772812, 52.142258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836971, 32.781635, 52.178482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052491, -0.935576, -0.349201,
		0.077021, -0.352435, 0.932661,
		-0.995646, 0.022060, 0.090559,
		35.538277, 32.788254, 52.205650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185143, 32.088459, 52.317360>,  <36.235229, 32.772812, 52.142258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185143, 32.088459, 52.317360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820705, 32.221748, 52.220299>,  <35.602043, 32.301720, 52.162064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820705, 32.221748, 52.220299>,  <36.185143, 32.088459, 52.317360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820705, 32.221748, 52.220299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331702, -0.942144, -0.048351,
		-0.244723, 0.036435, 0.968908,
		-0.911090, 0.333221, -0.242650,
		35.547379, 32.321716, 52.147503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707523, 31.757187, 52.727798>,  <36.185143, 32.088459, 52.317360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707523, 31.757187, 52.727798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549500, 31.875141, 52.379784>,  <35.454685, 31.945913, 52.170975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549500, 31.875141, 52.379784>,  <35.707523, 31.757187, 52.727798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549500, 31.875141, 52.379784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117805, -0.955523, -0.270367,
		-0.911072, -0.004316, 0.412226,
		-0.395058, 0.294886, -0.870041,
		35.430981, 31.963608, 52.118771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079826, 31.425749, 52.489101>,  <35.707523, 31.757187, 52.727798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079826, 31.425749, 52.489101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296673, 31.532976, 52.170540>,  <35.426781, 31.597313, 51.979404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296673, 31.532976, 52.170540>,  <35.079826, 31.425749, 52.489101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296673, 31.532976, 52.170540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125404, -0.962946, -0.238766,
		-0.830896, 0.029566, -0.555642,
		0.542113, 0.268069, -0.796400,
		35.459305, 31.613398, 51.931622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934380, 31.025942, 51.928181>,  <35.079826, 31.425749, 52.489101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934380, 31.025942, 51.928181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321037, 31.113895, 51.875660>,  <35.553032, 31.166668, 51.844147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321037, 31.113895, 51.875660>,  <34.934380, 31.025942, 51.928181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321037, 31.113895, 51.875660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207182, -0.972782, -0.103785,
		-0.150550, 0.073120, -0.985895,
		0.966649, 0.219884, -0.131304,
		35.611031, 31.179861, 51.836269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143085, 30.727425, 51.378334>,  <34.934380, 31.025942, 51.928181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143085, 30.727425, 51.378334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489574, 30.787718, 51.568886>,  <35.697468, 30.823895, 51.683216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489574, 30.787718, 51.568886>,  <35.143085, 30.727425, 51.378334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489574, 30.787718, 51.568886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233610, -0.964965, -0.119456,
		0.441682, 0.214762, -0.871088,
		0.866224, 0.150734, 0.476378,
		35.749443, 30.832937, 51.711800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534111, 31.090223, 51.111553>,  <35.143085, 30.727425, 51.378334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534111, 31.090223, 51.111553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760269, 31.415115, 51.054138>,  <34.895966, 31.610050, 51.019688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760269, 31.415115, 51.054138>,  <34.534111, 31.090223, 51.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760269, 31.415115, 51.054138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004155, -0.176831, -0.984233,
		-0.824807, 0.555889, -0.103354,
		0.565400, 0.812231, -0.143542,
		34.929890, 31.658785, 51.011074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183876, 31.506918, 50.550880>,  <34.534111, 31.090223, 51.111553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183876, 31.506918, 50.550880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574509, 31.582720, 50.591625>,  <34.808887, 31.628201, 50.616070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574509, 31.582720, 50.591625>,  <34.183876, 31.506918, 50.550880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574509, 31.582720, 50.591625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165987, -0.362437, -0.917108,
		-0.136878, 0.912539, -0.385404,
		0.976582, 0.189504, 0.101860,
		34.867485, 31.639570, 50.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334766, 31.863741, 50.048267>,  <34.183876, 31.506918, 50.550880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334766, 31.863741, 50.048267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700665, 31.747335, 50.160374>,  <34.920204, 31.677492, 50.227638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700665, 31.747335, 50.160374>,  <34.334766, 31.863741, 50.048267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700665, 31.747335, 50.160374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199365, -0.278239, -0.939594,
		0.351418, 0.915365, -0.196500,
		0.914746, -0.291015, 0.280270,
		34.975090, 31.660030, 50.244453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796410, 32.323025, 49.693390>,  <34.334766, 31.863741, 50.048267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796410, 32.323025, 49.693390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974121, 31.978123, 49.790665>,  <35.080750, 31.771183, 49.849030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974121, 31.978123, 49.790665>,  <34.796410, 32.323025, 49.693390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974121, 31.978123, 49.790665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240447, -0.146721, -0.959509,
		0.863018, 0.484764, 0.142140,
		0.444281, -0.862251, 0.243183,
		35.107407, 31.719448, 49.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443829, 32.326237, 49.340950>,  <34.796410, 32.323025, 49.693390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443829, 32.326237, 49.340950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409595, 31.944561, 49.455624>,  <35.389053, 31.715555, 49.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409595, 31.944561, 49.455624>,  <35.443829, 32.326237, 49.340950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409595, 31.944561, 49.455624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162371, -0.297253, -0.940891,
		0.983011, -0.033978, 0.180374,
		-0.085586, -0.954194, 0.286686,
		35.383919, 31.658302, 49.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056175, 31.991673, 49.035419>,  <35.443829, 32.326237, 49.340950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056175, 31.991673, 49.035419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790672, 31.704805, 49.120369>,  <35.631371, 31.532684, 49.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790672, 31.704805, 49.120369>,  <36.056175, 31.991673, 49.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790672, 31.704805, 49.120369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108349, -0.373136, -0.921428,
		0.740062, -0.588591, 0.325375,
		-0.663753, -0.717168, 0.212371,
		35.591545, 31.489655, 49.184078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359200, 31.332401, 48.982418>,  <36.056175, 31.991673, 49.035419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359200, 31.332401, 48.982418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967617, 31.285425, 48.915657>,  <35.732670, 31.257238, 48.875599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967617, 31.285425, 48.915657>,  <36.359200, 31.332401, 48.982418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967617, 31.285425, 48.915657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203173, -0.483838, -0.851247,
		0.019219, -0.867241, 0.497517,
		-0.978954, -0.117442, -0.166901,
		35.673931, 31.250193, 48.865585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319702, 31.072966, 48.287830>,  <36.359200, 31.332401, 48.982418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319702, 31.072966, 48.287830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923828, 31.064100, 48.344456>,  <35.686306, 31.058781, 48.378429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923828, 31.064100, 48.344456>,  <36.319702, 31.072966, 48.287830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923828, 31.064100, 48.344456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132674, -0.231381, -0.963774,
		0.054116, -0.972611, 0.226053,
		-0.989682, -0.022164, 0.141562,
		35.626923, 31.057451, 48.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118496, 30.465364, 48.035843>,  <36.319702, 31.072966, 48.287830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118496, 30.465364, 48.035843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821133, 30.732750, 48.044827>,  <35.642715, 30.893181, 48.050217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821133, 30.732750, 48.044827>,  <36.118496, 30.465364, 48.035843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821133, 30.732750, 48.044827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224316, -0.217543, -0.949925,
		-0.630103, -0.711219, 0.311669,
		-0.743407, 0.668463, 0.022463,
		35.598110, 30.933289, 48.051567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585670, 30.009033, 47.737297>,  <36.118496, 30.465364, 48.035843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585670, 30.009033, 47.737297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474075, 30.386747, 47.667446>,  <35.407116, 30.613375, 47.625538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474075, 30.386747, 47.667446>,  <35.585670, 30.009033, 47.737297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474075, 30.386747, 47.667446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282120, -0.254416, -0.925030,
		-0.917918, -0.208810, 0.337381,
		-0.278991, 0.944283, -0.174623,
		35.390377, 30.670033, 47.615059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053009, 29.931768, 47.220776>,  <35.585670, 30.009033, 47.737297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053009, 29.931768, 47.220776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201679, 30.302919, 47.232746>,  <35.290882, 30.525610, 47.239929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201679, 30.302919, 47.232746>,  <35.053009, 29.931768, 47.220776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201679, 30.302919, 47.232746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169756, 0.099622, -0.980438,
		-0.912709, 0.359326, 0.194541,
		0.371678, 0.927879, 0.029928,
		35.313183, 30.581284, 47.241726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666027, 30.338396, 46.824402>,  <35.053009, 29.931768, 47.220776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666027, 30.338396, 46.824402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982910, 30.580881, 46.852448>,  <35.173038, 30.726372, 46.869274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982910, 30.580881, 46.852448>,  <34.666027, 30.338396, 46.824402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982910, 30.580881, 46.852448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162370, 0.320139, -0.933352,
		-0.588256, 0.728023, 0.352047,
		0.792206, 0.606212, 0.070115,
		35.220573, 30.762745, 46.873482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422382, 31.084146, 46.852222>,  <34.666027, 30.338396, 46.824402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422382, 31.084146, 46.852222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791039, 31.067427, 46.697903>,  <35.012230, 31.057394, 46.605312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791039, 31.067427, 46.697903>,  <34.422382, 31.084146, 46.852222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791039, 31.067427, 46.697903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303570, 0.541630, -0.783889,
		0.241725, 0.839577, 0.486497,
		0.921637, -0.041800, -0.385796,
		35.067528, 31.054886, 46.582165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593342, 31.774654, 46.568218>,  <34.422382, 31.084146, 46.852222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593342, 31.774654, 46.568218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889435, 31.565586, 46.399044>,  <35.067089, 31.440145, 46.297539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889435, 31.565586, 46.399044>,  <34.593342, 31.774654, 46.568218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889435, 31.565586, 46.399044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037871, 0.595622, -0.802372,
		0.671283, 0.609959, 0.421105,
		0.740233, -0.522671, -0.422931,
		35.111504, 31.408785, 46.272163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956951, 32.260742, 46.390400>,  <34.593342, 31.774654, 46.568218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956951, 32.260742, 46.390400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056164, 31.948376, 46.161087>,  <35.115692, 31.760956, 46.023499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056164, 31.948376, 46.161087>,  <34.956951, 32.260742, 46.390400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056164, 31.948376, 46.161087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053898, 0.579738, -0.813019,
		0.967252, 0.232550, 0.101701,
		0.248027, -0.780913, -0.573287,
		35.130573, 31.714102, 45.989101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532131, 32.548695, 45.900158>,  <34.956951, 32.260742, 46.390400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532131, 32.548695, 45.900158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349621, 32.226185, 45.749569>,  <35.240116, 32.032677, 45.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349621, 32.226185, 45.749569>,  <35.532131, 32.548695, 45.900158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349621, 32.226185, 45.749569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227708, 0.514784, -0.826527,
		0.860210, -0.291399, -0.418480,
		-0.456276, -0.806278, -0.376468,
		35.212738, 31.984301, 45.636627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800838, 32.418907, 45.186024>,  <35.532131, 32.548695, 45.900158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800838, 32.418907, 45.186024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441849, 32.244110, 45.209923>,  <35.226456, 32.139233, 45.224262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441849, 32.244110, 45.209923>,  <35.800838, 32.418907, 45.186024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441849, 32.244110, 45.209923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293764, 0.491205, -0.820013,
		0.328989, -0.753496, -0.569218,
		-0.897480, -0.436991, 0.059749,
		35.172604, 32.113014, 45.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628895, 32.375595, 44.441097>,  <35.800838, 32.418907, 45.186024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628895, 32.375595, 44.441097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289658, 32.306068, 44.641308>,  <35.086117, 32.264351, 44.761436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289658, 32.306068, 44.641308>,  <35.628895, 32.375595, 44.441097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289658, 32.306068, 44.641308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522208, 0.434096, -0.734071,
		-0.089683, -0.883939, -0.458922,
		-0.848090, -0.173819, 0.500531,
		35.035233, 32.253922, 44.791466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070309, 32.126259, 43.939747>,  <35.628895, 32.375595, 44.441097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070309, 32.126259, 43.939747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879879, 32.241180, 44.272209>,  <34.765621, 32.310131, 44.471687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879879, 32.241180, 44.272209>,  <35.070309, 32.126259, 43.939747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879879, 32.241180, 44.272209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771417, 0.317345, -0.551551,
		-0.422223, -0.903742, 0.070550,
		-0.476071, 0.287301, 0.831152,
		34.737057, 32.327370, 44.521557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356899, 31.922394, 43.884392>,  <35.070309, 32.126259, 43.939747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356899, 31.922394, 43.884392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356976, 32.228317, 44.142094>,  <34.357021, 32.411873, 44.296715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356976, 32.228317, 44.142094>,  <34.356899, 31.922394, 43.884392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356976, 32.228317, 44.142094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772056, 0.409571, -0.485984,
		-0.635554, -0.497310, 0.590553,
		0.000189, 0.764810, 0.644256,
		34.357033, 32.457760, 44.335369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667236, 32.011589, 44.070751>,  <34.356899, 31.922394, 43.884392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667236, 32.011589, 44.070751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805996, 32.370586, 44.179691>,  <33.889252, 32.585983, 44.245056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805996, 32.370586, 44.179691>,  <33.667236, 32.011589, 44.070751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805996, 32.370586, 44.179691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794011, 0.435581, -0.424047,
		-0.499207, -0.069147, 0.863719,
		0.346898, 0.897490, 0.272349,
		33.910065, 32.639832, 44.261395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082634, 32.419716, 44.115250>,  <33.667236, 32.011589, 44.070751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082634, 32.419716, 44.115250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375061, 32.692524, 44.107353>,  <33.550518, 32.856209, 44.102615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375061, 32.692524, 44.107353>,  <33.082634, 32.419716, 44.115250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375061, 32.692524, 44.107353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599583, 0.628363, -0.495642,
		-0.325632, 0.374186, 0.868303,
		0.731071, 0.682016, -0.019740,
		33.594383, 32.897129, 44.101433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691292, 32.916321, 44.195690>,  <33.082634, 32.419716, 44.115250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691292, 32.916321, 44.195690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034176, 33.050545, 44.039444>,  <33.239906, 33.131081, 43.945694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034176, 33.050545, 44.039444>,  <32.691292, 32.916321, 44.195690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034176, 33.050545, 44.039444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513185, 0.619600, -0.593917,
		0.042730, 0.709573, 0.703335,
		0.857214, 0.335562, -0.390618,
		33.291340, 33.151215, 43.922260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813652, 33.761974, 44.286282>,  <32.691292, 32.916321, 44.195690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813652, 33.761974, 44.286282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999111, 33.602081, 43.969990>,  <33.110386, 33.506145, 43.780216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999111, 33.602081, 43.969990>,  <32.813652, 33.761974, 44.286282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999111, 33.602081, 43.969990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439006, 0.671555, -0.596898,
		0.769616, 0.623882, 0.135878,
		0.463644, -0.399731, -0.790727,
		33.138203, 33.482162, 43.732773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901154, 34.362259, 43.813240>,  <32.813652, 33.761974, 44.286282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901154, 34.362259, 43.813240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010288, 34.064693, 43.569225>,  <33.075771, 33.886154, 43.422817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010288, 34.064693, 43.569225>,  <32.901154, 34.362259, 43.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010288, 34.064693, 43.569225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294671, 0.539000, -0.789081,
		0.915820, 0.395053, -0.072150,
		0.272840, -0.743917, -0.610038,
		33.092140, 33.841518, 43.386215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309620, 34.698586, 43.312786>,  <32.901154, 34.362259, 43.813240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309620, 34.698586, 43.312786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207973, 34.354877, 43.135212>,  <33.146984, 34.148651, 43.028667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207973, 34.354877, 43.135212>,  <33.309620, 34.698586, 43.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207973, 34.354877, 43.135212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146349, 0.487883, -0.860553,
		0.956036, -0.153713, -0.249734,
		-0.254119, -0.859268, -0.443938,
		33.131737, 34.097095, 43.002029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372822, 34.880905, 42.677475>,  <33.309620, 34.698586, 43.312786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372822, 34.880905, 42.677475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161186, 34.544491, 42.632355>,  <33.034206, 34.342644, 42.605282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161186, 34.544491, 42.632355>,  <33.372822, 34.880905, 42.677475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161186, 34.544491, 42.632355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402444, 0.365732, -0.839213,
		0.747065, -0.398619, -0.531974,
		-0.529086, -0.841037, -0.112804,
		33.002460, 34.292179, 42.598515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395592, 34.626259, 41.952496>,  <33.372822, 34.880905, 42.677475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395592, 34.626259, 41.952496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060635, 34.462070, 42.096878>,  <32.859661, 34.363556, 42.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060635, 34.462070, 42.096878>,  <33.395592, 34.626259, 41.952496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060635, 34.462070, 42.096878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445808, 0.130768, -0.885525,
		0.316284, -0.902446, -0.292497,
		-0.837388, -0.410475, 0.360958,
		32.809418, 34.338928, 42.205166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194710, 34.269707, 41.373260>,  <33.395592, 34.626259, 41.952496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194710, 34.269707, 41.373260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862831, 34.283123, 41.596142>,  <32.663704, 34.291172, 41.729870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862831, 34.283123, 41.596142>,  <33.194710, 34.269707, 41.373260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862831, 34.283123, 41.596142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543475, 0.179313, -0.820050,
		-0.127423, -0.983220, -0.130545,
		-0.829698, 0.033545, 0.557205,
		32.613922, 34.293186, 41.763302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606689, 33.833572, 40.944893>,  <33.194710, 34.269707, 41.373260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606689, 33.833572, 40.944893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445580, 34.085876, 41.210197>,  <32.348915, 34.237259, 41.369381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445580, 34.085876, 41.210197>,  <32.606689, 33.833572, 40.944893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445580, 34.085876, 41.210197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605827, 0.359474, -0.709755,
		-0.686110, -0.687692, 0.237345,
		-0.402773, 0.630761, 0.663261,
		32.324749, 34.275105, 41.409176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865623, 33.728203, 40.885735>,  <32.606689, 33.833572, 40.944893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865623, 33.728203, 40.885735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893208, 34.090973, 41.051975>,  <31.909758, 34.308636, 41.151718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893208, 34.090973, 41.051975>,  <31.865623, 33.728203, 40.885735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893208, 34.090973, 41.051975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706997, 0.338345, -0.621030,
		-0.703847, -0.251003, 0.664528,
		0.068959, 0.906929, 0.415601,
		31.913895, 34.363052, 41.176655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132439, 34.050228, 40.866772>,  <31.865623, 33.728203, 40.885735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132439, 34.050228, 40.866772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361938, 34.372517, 40.925598>,  <31.499638, 34.565891, 40.960896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361938, 34.372517, 40.925598>,  <31.132439, 34.050228, 40.866772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361938, 34.372517, 40.925598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545705, 0.509961, -0.664941,
		-0.610754, 0.301254, 0.732275,
		0.573748, 0.805721, 0.147065,
		31.534063, 34.614231, 40.969719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744385, 34.605350, 41.116398>,  <31.132439, 34.050228, 40.866772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744385, 34.605350, 41.116398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054155, 34.797905, 40.952190>,  <31.240017, 34.913437, 40.853664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054155, 34.797905, 40.952190>,  <30.744385, 34.605350, 41.116398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054155, 34.797905, 40.952190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632295, 0.566748, -0.528205,
		-0.021611, 0.668625, 0.743285,
		0.774426, 0.481391, -0.410520,
		31.286484, 34.942322, 40.829033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585098, 35.383923, 41.161865>,  <30.744385, 34.605350, 41.116398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585098, 35.383923, 41.161865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861025, 35.327019, 40.877918>,  <31.026581, 35.292877, 40.707550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861025, 35.327019, 40.877918>,  <30.585098, 35.383923, 41.161865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861025, 35.327019, 40.877918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588487, 0.460949, -0.664235,
		0.421710, 0.875950, 0.234251,
		0.689814, -0.142261, -0.709872,
		31.067968, 35.284340, 40.664955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581285, 35.996803, 40.720127>,  <30.585098, 35.383923, 41.161865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581285, 35.996803, 40.720127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789024, 35.744934, 40.489029>,  <30.913668, 35.593811, 40.350368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789024, 35.744934, 40.489029>,  <30.581285, 35.996803, 40.720127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789024, 35.744934, 40.489029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434736, 0.387377, -0.812985,
		0.735720, 0.673388, -0.072559,
		0.519346, -0.629673, -0.577747,
		30.944828, 35.556030, 40.315704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863136, 36.340321, 40.156666>,  <30.581285, 35.996803, 40.720127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863136, 36.340321, 40.156666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883732, 35.965637, 40.018139>,  <30.896090, 35.740829, 39.935024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883732, 35.965637, 40.018139>,  <30.863136, 36.340321, 40.156666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883732, 35.965637, 40.018139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318199, 0.313313, -0.894754,
		0.946625, 0.156268, -0.281925,
		0.051490, -0.936704, -0.346314,
		30.899179, 35.684628, 39.914246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299416, 36.328739, 39.524574>,  <30.863136, 36.340321, 40.156666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299416, 36.328739, 39.524574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061680, 36.008137, 39.498215>,  <30.919039, 35.815773, 39.482399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061680, 36.008137, 39.498215>,  <31.299416, 36.328739, 39.524574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061680, 36.008137, 39.498215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398196, 0.364483, -0.841779,
		0.698713, -0.474062, -0.535785,
		-0.594340, -0.801509, -0.065899,
		30.883377, 35.767685, 39.478443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185148, 36.289986, 38.734299>,  <31.299416, 36.328739, 39.524574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185148, 36.289986, 38.734299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921066, 36.046444, 38.910221>,  <30.762617, 35.900318, 39.015774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921066, 36.046444, 38.910221>,  <31.185148, 36.289986, 38.734299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921066, 36.046444, 38.910221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693967, 0.270500, -0.667263,
		0.287312, -0.745727, -0.601119,
		-0.660198, -0.608869, 0.439792,
		30.723005, 35.863789, 39.042160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970106, 35.833405, 38.239716>,  <31.185148, 36.289986, 38.734299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970106, 35.833405, 38.239716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691744, 35.906506, 38.517513>,  <30.524727, 35.950367, 38.684193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691744, 35.906506, 38.517513>,  <30.970106, 35.833405, 38.239716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691744, 35.906506, 38.517513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638027, 0.286517, -0.714723,
		-0.329601, -0.940484, -0.082788,
		-0.695906, 0.182753, 0.694490,
		30.482971, 35.961330, 38.725861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656885, 36.041401, 38.003170>,  <30.970106, 35.833405, 38.239716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656885, 36.041401, 38.003170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824999, 35.887074, 37.674656>,  <31.925867, 35.794476, 37.477547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824999, 35.887074, 37.674656>,  <31.656885, 36.041401, 38.003170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824999, 35.887074, 37.674656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382032, -0.745735, 0.545831,
		-0.823052, -0.543159, -0.166022,
		0.420282, -0.385821, -0.821283,
		31.951084, 35.771328, 37.428272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567177, 35.369907, 38.026508>,  <31.656885, 36.041401, 38.003170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567177, 35.369907, 38.026508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870293, 35.380173, 37.765709>,  <32.052162, 35.386330, 37.609230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870293, 35.380173, 37.765709>,  <31.567177, 35.369907, 38.026508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870293, 35.380173, 37.765709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534799, -0.596896, 0.598085,
		-0.373826, -0.801908, -0.466044,
		0.757789, 0.025660, -0.651995,
		32.097630, 35.387871, 37.570110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780540, 34.618084, 37.892834>,  <31.567177, 35.369907, 38.026508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780540, 34.618084, 37.892834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092972, 34.842804, 37.783798>,  <32.280430, 34.977634, 37.718376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092972, 34.842804, 37.783798>,  <31.780540, 34.618084, 37.892834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092972, 34.842804, 37.783798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599004, -0.550797, 0.581220,
		0.176388, -0.617258, -0.766734,
		0.781077, 0.561797, -0.272586,
		32.327293, 35.011341, 37.702023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431450, 34.146118, 37.778229>,  <31.780540, 34.618084, 37.892834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431450, 34.146118, 37.778229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601124, 34.502785, 37.841476>,  <32.702930, 34.716785, 37.879425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601124, 34.502785, 37.841476>,  <32.431450, 34.146118, 37.778229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601124, 34.502785, 37.841476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689239, -0.431149, 0.582289,
		0.587380, -0.138015, -0.797456,
		0.424187, 0.891663, 0.158123,
		32.728378, 34.770283, 37.888912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040226, 33.965481, 37.666424>,  <32.431450, 34.146118, 37.778229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040226, 33.965481, 37.666424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046314, 34.306305, 37.875710>,  <33.049969, 34.510799, 38.001282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046314, 34.306305, 37.875710>,  <33.040226, 33.965481, 37.666424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046314, 34.306305, 37.875710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656412, -0.403242, 0.637588,
		0.754249, 0.333741, -0.565443,
		0.015221, 0.852064, 0.523217,
		33.050880, 34.561924, 38.032673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761539, 34.241913, 37.724998>,  <33.040226, 33.965481, 37.666424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761539, 34.241913, 37.724998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557816, 34.396027, 38.032806>,  <33.435581, 34.488495, 38.217491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557816, 34.396027, 38.032806>,  <33.761539, 34.241913, 37.724998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557816, 34.396027, 38.032806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684675, -0.360307, 0.633561,
		0.521365, 0.849549, -0.080288,
		-0.509312, 0.385287, 0.769516,
		33.405022, 34.511612, 38.263660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259140, 34.379753, 38.256790>,  <33.761539, 34.241913, 37.724998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259140, 34.379753, 38.256790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906479, 34.401257, 38.444321>,  <33.694881, 34.414158, 38.556839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906479, 34.401257, 38.444321>,  <34.259140, 34.379753, 38.256790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906479, 34.401257, 38.444321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369016, -0.540707, 0.755952,
		0.294140, 0.839491, 0.456876,
		-0.881651, 0.053761, 0.468830,
		33.641983, 34.417385, 38.584969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490467, 34.577145, 38.880039>,  <34.259140, 34.379753, 38.256790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490467, 34.577145, 38.880039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122803, 34.427135, 38.928219>,  <33.902203, 34.337132, 38.957127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122803, 34.427135, 38.928219>,  <34.490467, 34.577145, 38.880039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122803, 34.427135, 38.928219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243153, -0.299670, 0.922537,
		-0.309875, 0.877245, 0.366631,
		-0.919159, -0.375019, 0.120445,
		33.847054, 34.314629, 38.964352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260590, 34.771294, 39.570900>,  <34.490467, 34.577145, 38.880039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260590, 34.771294, 39.570900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035263, 34.447460, 39.504879>,  <33.900066, 34.253159, 39.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035263, 34.447460, 39.504879>,  <34.260590, 34.771294, 39.570900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035263, 34.447460, 39.504879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176118, -0.312832, 0.933338,
		-0.807251, 0.496697, 0.318806,
		-0.563319, -0.809585, -0.165057,
		33.866268, 34.204586, 39.455360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949974, 34.643665, 40.195354>,  <34.260590, 34.771294, 39.570900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949974, 34.643665, 40.195354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894360, 34.292923, 40.011269>,  <33.860989, 34.082478, 39.900818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894360, 34.292923, 40.011269>,  <33.949974, 34.643665, 40.195354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894360, 34.292923, 40.011269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337814, -0.478848, 0.810300,
		-0.930887, -0.042804, 0.362791,
		-0.139038, -0.876853, -0.460213,
		33.852650, 34.029865, 39.873203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592731, 34.159901, 40.700806>,  <33.949974, 34.643665, 40.195354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592731, 34.159901, 40.700806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765522, 33.926754, 40.425514>,  <33.869198, 33.786865, 40.260338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765522, 33.926754, 40.425514>,  <33.592731, 34.159901, 40.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765522, 33.926754, 40.425514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357830, -0.589705, 0.724021,
		-0.827860, -0.559031, -0.046172,
		0.431978, -0.582866, -0.688231,
		33.895115, 33.751896, 40.219044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501366, 33.465588, 40.957867>,  <33.592731, 34.159901, 40.700806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501366, 33.465588, 40.957867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817974, 33.426300, 40.716587>,  <34.007938, 33.402729, 40.571819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817974, 33.426300, 40.716587>,  <33.501366, 33.465588, 40.957867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817974, 33.426300, 40.716587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464930, -0.543830, 0.698634,
		-0.396652, -0.833429, -0.384791,
		0.791523, -0.098214, -0.603197,
		34.055431, 33.396835, 40.535629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715561, 32.688499, 40.919079>,  <33.501366, 33.465588, 40.957867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715561, 32.688499, 40.919079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021942, 32.909683, 40.787899>,  <34.205772, 33.042393, 40.709190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021942, 32.909683, 40.787899>,  <33.715561, 32.688499, 40.919079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021942, 32.909683, 40.787899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642121, -0.632990, 0.432440,
		0.031530, -0.541814, -0.839907,
		0.765955, 0.552956, -0.327952,
		34.251728, 33.075569, 40.689514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197887, 32.202816, 40.686012>,  <33.715561, 32.688499, 40.919079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197887, 32.202816, 40.686012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401028, 32.540573, 40.754230>,  <34.522911, 32.743229, 40.795162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401028, 32.540573, 40.754230>,  <34.197887, 32.202816, 40.686012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401028, 32.540573, 40.754230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695268, -0.518654, 0.497595,
		0.508621, -0.134129, -0.850479,
		0.507846, 0.844398, 0.170543,
		34.553383, 32.793892, 40.805393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803123, 32.078308, 40.288441>,  <34.197887, 32.202816, 40.686012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803123, 32.078308, 40.288441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825832, 32.340462, 40.589703>,  <34.839458, 32.497753, 40.770462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825832, 32.340462, 40.589703>,  <34.803123, 32.078308, 40.288441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825832, 32.340462, 40.589703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647580, -0.598334, 0.471844,
		0.759879, 0.460940, -0.458387,
		0.056777, 0.655386, 0.753157,
		34.842865, 32.537079, 40.815651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387703, 31.988045, 40.503952>,  <34.803123, 32.078308, 40.288441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387703, 31.988045, 40.503952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274693, 32.219593, 40.809917>,  <35.206886, 32.358521, 40.993496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274693, 32.219593, 40.809917>,  <35.387703, 31.988045, 40.503952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274693, 32.219593, 40.809917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474303, -0.608806, 0.635918,
		0.833796, 0.542463, -0.102557,
		-0.282524, 0.578869, 0.764912,
		35.189934, 32.393253, 41.039391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002155, 32.155121, 40.840900>,  <35.387703, 31.988045, 40.503952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002155, 32.155121, 40.840900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710991, 32.202293, 41.111084>,  <35.536293, 32.230598, 41.273193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710991, 32.202293, 41.111084>,  <36.002155, 32.155121, 40.840900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710991, 32.202293, 41.111084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564821, -0.455380, 0.688191,
		0.388750, 0.882452, 0.264863,
		-0.727908, 0.117935, 0.675456,
		35.492619, 32.237675, 41.313721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375278, 32.036232, 41.379440>,  <36.002155, 32.155121, 40.840900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375278, 32.036232, 41.379440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008865, 32.021301, 41.539181>,  <35.789017, 32.012341, 41.635025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008865, 32.021301, 41.539181>,  <36.375278, 32.036232, 41.379440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008865, 32.021301, 41.539181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355471, -0.536754, 0.765203,
		0.185791, 0.842912, 0.504956,
		-0.916036, -0.037329, 0.399355,
		35.734055, 32.010101, 41.658989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424545, 32.208256, 42.061390>,  <36.375278, 32.036232, 41.379440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424545, 32.208256, 42.061390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084232, 31.998100, 42.056683>,  <35.880043, 31.872007, 42.053856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084232, 31.998100, 42.056683>,  <36.424545, 32.208256, 42.061390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084232, 31.998100, 42.056683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295681, -0.497083, 0.815770,
		-0.434447, 0.690561, 0.578256,
		-0.850781, -0.525389, -0.011770,
		35.828999, 31.840483, 42.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271450, 32.222591, 42.741493>,  <36.424545, 32.208256, 42.061390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271450, 32.222591, 42.741493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068588, 31.917995, 42.580036>,  <35.946873, 31.735237, 42.483162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068588, 31.917995, 42.580036>,  <36.271450, 32.222591, 42.741493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068588, 31.917995, 42.580036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283161, -0.589563, 0.756463,
		-0.814011, 0.269349, 0.514624,
		-0.507155, -0.761490, -0.403641,
		35.916443, 31.689548, 42.458942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011105, 31.834887, 43.284634>,  <36.271450, 32.222591, 42.741493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011105, 31.834887, 43.284634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961357, 31.556540, 43.001705>,  <35.931511, 31.389530, 42.831947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961357, 31.556540, 43.001705>,  <36.011105, 31.834887, 43.284634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961357, 31.556540, 43.001705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223949, -0.714144, 0.663208,
		-0.966633, -0.075922, 0.244655,
		-0.124367, -0.695869, -0.707318,
		35.924046, 31.347778, 42.789509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548603, 31.423208, 43.537182>,  <36.011105, 31.834887, 43.284634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548603, 31.423208, 43.537182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746933, 31.206923, 43.265362>,  <35.865932, 31.077150, 43.102272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746933, 31.206923, 43.265362>,  <35.548603, 31.423208, 43.537182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746933, 31.206923, 43.265362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274761, -0.644632, 0.713412,
		-0.823810, -0.540441, -0.171057,
		0.495826, -0.540716, -0.679546,
		35.895679, 31.044708, 43.061497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294563, 30.711088, 43.632820>,  <35.548603, 31.423208, 43.537182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294563, 30.711088, 43.632820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659431, 30.732862, 43.470348>,  <35.878353, 30.745928, 43.372864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659431, 30.732862, 43.470348>,  <35.294563, 30.711088, 43.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659431, 30.732862, 43.470348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349553, -0.620710, 0.701806,
		-0.213917, -0.782148, -0.585221,
		0.912169, 0.054437, -0.406183,
		35.933083, 30.749193, 43.348492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591881, 30.040405, 43.676220>,  <35.294563, 30.711088, 43.632820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591881, 30.040405, 43.676220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917629, 30.253897, 43.585064>,  <36.113079, 30.381990, 43.530369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917629, 30.253897, 43.585064>,  <35.591881, 30.040405, 43.676220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917629, 30.253897, 43.585064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546435, -0.572940, 0.610859,
		0.195465, -0.621994, -0.758233,
		0.814372, 0.533726, -0.227890,
		36.161942, 30.414015, 43.516697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185028, 29.529530, 43.638775>,  <35.591881, 30.040405, 43.676220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185028, 29.529530, 43.638775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341946, 29.890123, 43.711906>,  <36.436096, 30.106480, 43.755783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341946, 29.890123, 43.711906>,  <36.185028, 29.529530, 43.638775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341946, 29.890123, 43.711906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397310, -0.345327, 0.850232,
		0.829607, -0.260904, -0.493640,
		0.392297, 0.901486, 0.182826,
		36.459633, 30.160570, 43.766754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838634, 29.408281, 43.993969>,  <36.185028, 29.529530, 43.638775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838634, 29.408281, 43.993969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780807, 29.794968, 44.078407>,  <36.746113, 30.026979, 44.129070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780807, 29.794968, 44.078407>,  <36.838634, 29.408281, 43.993969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780807, 29.794968, 44.078407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505320, -0.111295, 0.855725,
		0.850736, 0.230383, -0.472411,
		-0.144568, 0.966714, 0.211100,
		36.737438, 30.084982, 44.141739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562431, 29.788141, 44.179268>,  <36.838634, 29.408281, 43.993969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562431, 29.788141, 44.179268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241344, 29.942488, 44.361149>,  <37.048691, 30.035095, 44.470276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241344, 29.942488, 44.361149>,  <37.562431, 29.788141, 44.179268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241344, 29.942488, 44.361149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459882, -0.084900, 0.883912,
		0.379674, 0.918641, -0.109301,
		-0.802718, 0.385864, 0.454700,
		37.000530, 30.058247, 44.497559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890350, 30.045921, 44.959221>,  <37.562431, 29.788141, 44.179268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890350, 30.045921, 44.959221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501434, 30.122223, 45.013290>,  <37.268085, 30.168003, 45.045731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501434, 30.122223, 45.013290>,  <37.890350, 30.045921, 44.959221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501434, 30.122223, 45.013290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164720, 0.148639, 0.975076,
		0.165906, 0.970320, -0.175940,
		-0.972287, 0.190752, 0.135171,
		37.209747, 30.179449, 45.053841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879242, 30.583178, 45.449497>,  <37.890350, 30.045921, 44.959221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879242, 30.583178, 45.449497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529671, 30.392151, 45.485687>,  <37.319927, 30.277534, 45.507401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529671, 30.392151, 45.485687>,  <37.879242, 30.583178, 45.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529671, 30.392151, 45.485687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136327, -0.062158, 0.988712,
		-0.466551, 0.876394, 0.119427,
		-0.873925, -0.477566, 0.090476,
		37.267494, 30.248880, 45.512829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495514, 30.976122, 45.903481>,  <37.879242, 30.583178, 45.449497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495514, 30.976122, 45.903481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336353, 30.609594, 45.921520>,  <37.240856, 30.389677, 45.932343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336353, 30.609594, 45.921520>,  <37.495514, 30.976122, 45.903481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336353, 30.609594, 45.921520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037861, 0.065518, 0.997133,
		-0.916648, 0.395051, -0.060763,
		-0.397899, -0.916320, 0.045100,
		37.216984, 30.334698, 45.935051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104980, 30.988108, 46.552471>,  <37.495514, 30.976122, 45.903481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104980, 30.988108, 46.552471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131794, 30.598530, 46.465805>,  <37.147881, 30.364784, 46.413807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131794, 30.598530, 46.465805>,  <37.104980, 30.988108, 46.552471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131794, 30.598530, 46.465805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256508, -0.226672, 0.939587,
		-0.964215, -0.007407, -0.265019,
		0.067032, -0.973943, -0.216661,
		37.151905, 30.306347, 46.400806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518459, 30.636358, 46.937233>,  <37.104980, 30.988108, 46.552471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518459, 30.636358, 46.937233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814186, 30.381487, 46.850132>,  <36.991623, 30.228563, 46.797871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814186, 30.381487, 46.850132>,  <36.518459, 30.636358, 46.937233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814186, 30.381487, 46.850132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078227, -0.239915, 0.967637,
		-0.668799, -0.732423, -0.127528,
		0.739316, -0.637179, -0.217750,
		37.035980, 30.190332, 46.784805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389076, 29.960146, 47.316441>,  <36.518459, 30.636358, 46.937233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389076, 29.960146, 47.316441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782864, 29.965693, 47.246426>,  <37.019135, 29.969021, 47.204414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782864, 29.965693, 47.246426>,  <36.389076, 29.960146, 47.316441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782864, 29.965693, 47.246426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168945, -0.346426, 0.922739,
		-0.047841, -0.937975, -0.343387,
		0.984464, 0.013868, -0.175040,
		37.078201, 29.969852, 47.193913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642078, 29.284716, 47.607059>,  <36.389076, 29.960146, 47.316441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642078, 29.284716, 47.607059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950291, 29.535343, 47.560242>,  <37.135216, 29.685719, 47.532150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950291, 29.535343, 47.560242>,  <36.642078, 29.284716, 47.607059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950291, 29.535343, 47.560242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353555, -0.267332, 0.896400,
		0.530364, -0.732084, -0.427513,
		0.770528, 0.626567, -0.117048,
		37.181450, 29.723314, 47.525127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164055, 29.025517, 48.171494>,  <36.642078, 29.284716, 47.607059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164055, 29.025517, 48.171494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343700, 29.364479, 48.058212>,  <37.451488, 29.567856, 47.990242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343700, 29.364479, 48.058212>,  <37.164055, 29.025517, 48.171494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343700, 29.364479, 48.058212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297550, 0.157022, 0.941705,
		0.842475, -0.507196, -0.181625,
		0.449110, 0.847405, -0.283203,
		37.478432, 29.618700, 47.973251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943748, 28.969189, 48.422916>,  <37.164055, 29.025517, 48.171494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943748, 28.969189, 48.422916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800335, 29.340435, 48.382809>,  <37.714287, 29.563183, 48.358746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800335, 29.340435, 48.382809>,  <37.943748, 28.969189, 48.422916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800335, 29.340435, 48.382809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290326, 0.212943, 0.932934,
		0.887221, 0.305382, -0.345804,
		-0.358538, 0.928115, -0.100267,
		37.692772, 29.618870, 48.352730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508682, 29.489437, 48.639290>,  <37.943748, 28.969189, 48.422916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508682, 29.489437, 48.639290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176441, 29.711548, 48.656067>,  <37.977097, 29.844814, 48.666134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176441, 29.711548, 48.656067>,  <38.508682, 29.489437, 48.639290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176441, 29.711548, 48.656067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184346, 0.203108, 0.961646,
		0.525461, 0.806482, -0.271066,
		-0.830607, 0.555278, 0.041946,
		37.927258, 29.878132, 48.668652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733974, 30.042469, 49.031521>,  <38.508682, 29.489437, 48.639290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733974, 30.042469, 49.031521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338722, 30.101828, 49.047356>,  <38.101570, 30.137444, 49.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338722, 30.101828, 49.047356>,  <38.733974, 30.042469, 49.031521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338722, 30.101828, 49.047356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078163, 0.264039, 0.961340,
		0.132209, 0.953028, -0.272506,
		-0.988135, 0.148398, 0.039583,
		38.042282, 30.146347, 49.059231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551403, 30.795242, 49.067204>,  <38.733974, 30.042469, 49.031521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551403, 30.795242, 49.067204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315693, 30.521244, 49.238564>,  <38.174267, 30.356844, 49.341381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315693, 30.521244, 49.238564>,  <38.551403, 30.795242, 49.067204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315693, 30.521244, 49.238564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291383, 0.314374, 0.903474,
		-0.753555, 0.657228, 0.014342,
		-0.589279, -0.684996, 0.428403,
		38.138908, 30.315744, 49.367085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514702, 31.473421, 49.439884>,  <38.551403, 30.795242, 49.067204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514702, 31.473421, 49.439884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592358, 31.812761, 49.636909>,  <38.638950, 32.016365, 49.755123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592358, 31.812761, 49.636909>,  <38.514702, 31.473421, 49.439884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592358, 31.812761, 49.636909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750015, 0.451998, -0.482881,
		-0.632288, -0.275682, 0.724024,
		0.194136, 0.848349, 0.492559,
		38.650597, 32.067265, 49.784676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830574, 31.784401, 49.810688>,  <38.514702, 31.473421, 49.439884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830574, 31.784401, 49.810688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105068, 32.069187, 49.751102>,  <38.269764, 32.240059, 49.715351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105068, 32.069187, 49.751102>,  <37.830574, 31.784401, 49.810688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105068, 32.069187, 49.751102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588767, 0.423425, -0.688524,
		-0.427128, 0.560195, 0.709749,
		0.686233, 0.711964, -0.148968,
		38.310940, 32.282776, 49.706413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388298, 32.371525, 49.749168>,  <37.830574, 31.784401, 49.810688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388298, 32.371525, 49.749168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743202, 32.448929, 49.581680>,  <37.956142, 32.495373, 49.481186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743202, 32.448929, 49.581680>,  <37.388298, 32.371525, 49.749168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743202, 32.448929, 49.581680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453847, 0.528499, -0.717434,
		0.082461, 0.826584, 0.556740,
		0.887256, 0.193514, -0.418724,
		38.009380, 32.506985, 49.456062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259872, 32.973846, 49.408916>,  <37.388298, 32.371525, 49.749168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259872, 32.973846, 49.408916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589863, 32.837517, 49.228580>,  <37.787857, 32.755718, 49.120380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589863, 32.837517, 49.228580>,  <37.259872, 32.973846, 49.408916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589863, 32.837517, 49.228580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271757, 0.460212, -0.845194,
		0.495546, 0.819781, 0.287041,
		0.824974, -0.340828, -0.450838,
		37.837357, 32.735268, 49.093330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311188, 33.549164, 48.972919>,  <37.259872, 32.973846, 49.408916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311188, 33.549164, 48.972919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573711, 33.282249, 48.832069>,  <37.731224, 33.122101, 48.747559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573711, 33.282249, 48.832069>,  <37.311188, 33.549164, 48.972919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573711, 33.282249, 48.832069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123457, 0.365434, -0.922614,
		0.744326, 0.648989, 0.157455,
		0.656306, -0.667287, -0.352124,
		37.770603, 33.082062, 48.726433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909954, 33.919144, 48.674870>,  <37.311188, 33.549164, 48.972919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909954, 33.919144, 48.674870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855892, 33.565777, 48.495399>,  <37.823456, 33.353756, 48.387718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855892, 33.565777, 48.495399>,  <37.909954, 33.919144, 48.674870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855892, 33.565777, 48.495399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044609, 0.457792, -0.887939,
		0.989820, -0.099990, -0.101279,
		-0.135150, -0.883419, -0.448671,
		37.815346, 33.300751, 48.360798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356380, 34.006081, 48.096497>,  <37.909954, 33.919144, 48.674870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356380, 34.006081, 48.096497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150803, 33.673882, 48.010582>,  <38.027454, 33.474564, 47.959034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150803, 33.673882, 48.010582>,  <38.356380, 34.006081, 48.096497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150803, 33.673882, 48.010582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023036, 0.263656, -0.964341,
		0.857512, -0.490673, -0.154637,
		-0.513947, -0.830497, -0.214785,
		37.996616, 33.424732, 47.946148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569881, 33.725250, 47.420116>,  <38.356380, 34.006081, 48.096497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569881, 33.725250, 47.420116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203018, 33.583614, 47.493267>,  <37.982899, 33.498634, 47.537159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203018, 33.583614, 47.493267>,  <38.569881, 33.725250, 47.420116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203018, 33.583614, 47.493267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182873, -0.033783, -0.982556,
		0.354091, -0.934601, -0.033770,
		-0.917157, -0.354090, 0.182876,
		37.927872, 33.477386, 47.548130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425327, 33.349155, 46.773724>,  <38.569881, 33.725250, 47.420116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425327, 33.349155, 46.773724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074734, 33.393478, 46.961124>,  <37.864376, 33.420071, 47.073566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074734, 33.393478, 46.961124>,  <38.425327, 33.349155, 46.773724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074734, 33.393478, 46.961124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472610, -0.012654, -0.881181,
		-0.091712, -0.993761, 0.063460,
		-0.876486, 0.110807, 0.468501,
		37.811787, 33.426720, 47.101673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999557, 32.924927, 46.361107>,  <38.425327, 33.349155, 46.773724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999557, 32.924927, 46.361107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777718, 33.185963, 46.567619>,  <37.644615, 33.342587, 46.691525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777718, 33.185963, 46.567619>,  <37.999557, 32.924927, 46.361107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777718, 33.185963, 46.567619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482962, 0.252799, -0.838356,
		-0.677619, -0.714295, 0.174975,
		-0.554600, 0.652592, 0.516279,
		37.611340, 33.381741, 46.722504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365299, 32.856228, 46.088249>,  <37.999557, 32.924927, 46.361107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365299, 32.856228, 46.088249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330574, 33.207027, 46.277283>,  <37.309738, 33.417507, 46.390705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330574, 33.207027, 46.277283>,  <37.365299, 32.856228, 46.088249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330574, 33.207027, 46.277283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533446, 0.359718, -0.765531,
		-0.841367, -0.318557, 0.436604,
		-0.086811, 0.876998, 0.472588,
		37.304531, 33.470127, 46.419060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602699, 32.970577, 46.206589>,  <37.365299, 32.856228, 46.088249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602699, 32.970577, 46.206589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782574, 33.326912, 46.232506>,  <36.890499, 33.540710, 46.248055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782574, 33.326912, 46.232506>,  <36.602699, 32.970577, 46.206589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782574, 33.326912, 46.232506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581771, 0.347170, -0.735538,
		-0.677734, 0.293070, 0.674379,
		0.449688, 0.890833, 0.064789,
		36.917480, 33.594162, 46.251942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055103, 33.474812, 46.056000>,  <36.602699, 32.970577, 46.206589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055103, 33.474812, 46.056000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421196, 33.612980, 45.973011>,  <36.640850, 33.695881, 45.923218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421196, 33.612980, 45.973011>,  <36.055103, 33.474812, 46.056000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421196, 33.612980, 45.973011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359201, 0.466121, -0.808520,
		-0.182574, 0.814503, 0.550683,
		0.915227, 0.345421, -0.207469,
		36.695763, 33.716606, 45.910770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969917, 34.185349, 46.090488>,  <36.055103, 33.474812, 46.056000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969917, 34.185349, 46.090488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315948, 34.150719, 45.892841>,  <36.523567, 34.129940, 45.774254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315948, 34.150719, 45.892841>,  <35.969917, 34.185349, 46.090488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315948, 34.150719, 45.892841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365415, 0.566085, -0.738932,
		0.343681, 0.819789, 0.458072,
		0.865075, -0.086571, -0.494116,
		36.575470, 34.124748, 45.744606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147377, 34.859226, 45.693035>,  <35.969917, 34.185349, 46.090488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147377, 34.859226, 45.693035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368690, 34.585587, 45.502926>,  <36.501480, 34.421402, 45.388859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368690, 34.585587, 45.502926>,  <36.147377, 34.859226, 45.693035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368690, 34.585587, 45.502926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175710, 0.461876, -0.869366,
		0.814251, 0.564515, 0.135345,
		0.553283, -0.684100, -0.475274,
		36.534676, 34.380356, 45.360344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630871, 35.223488, 45.276871>,  <36.147377, 34.859226, 45.693035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630871, 35.223488, 45.276871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598225, 34.854549, 45.125816>,  <36.578636, 34.633186, 45.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598225, 34.854549, 45.125816>,  <36.630871, 35.223488, 45.276871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598225, 34.854549, 45.125816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197990, 0.386354, -0.900850,
		0.976800, 0.001243, -0.214149,
		-0.081617, -0.922350, -0.377637,
		36.573738, 34.577843, 45.012524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019073, 35.236271, 44.609097>,  <36.630871, 35.223488, 45.276871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019073, 35.236271, 44.609097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765842, 34.926861, 44.597260>,  <36.613903, 34.741215, 44.590157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765842, 34.926861, 44.597260>,  <37.019073, 35.236271, 44.609097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765842, 34.926861, 44.597260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223771, 0.219468, -0.949611,
		0.741042, -0.594552, -0.312032,
		-0.633074, -0.773525, -0.029592,
		36.575920, 34.694805, 44.588383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175175, 35.002388, 43.861668>,  <37.019073, 35.236271, 44.609097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175175, 35.002388, 43.861668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835644, 34.819820, 43.968388>,  <36.631927, 34.710281, 44.032417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835644, 34.819820, 43.968388>,  <37.175175, 35.002388, 43.861668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835644, 34.819820, 43.968388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418605, 0.272005, -0.866477,
		0.322913, -0.847165, -0.421946,
		-0.848821, -0.456425, 0.266794,
		36.580997, 34.682896, 44.048428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999821, 34.607693, 43.278511>,  <37.175175, 35.002388, 43.861668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999821, 34.607693, 43.278511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661152, 34.637817, 43.489216>,  <36.457951, 34.655891, 43.615639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661152, 34.637817, 43.489216>,  <36.999821, 34.607693, 43.278511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661152, 34.637817, 43.489216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524942, 0.043775, -0.850012,
		-0.087079, -0.996198, 0.002475,
		-0.846672, 0.075317, 0.526758,
		36.407150, 34.660412, 43.647243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543690, 34.207752, 42.960712>,  <36.999821, 34.607693, 43.278511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543690, 34.207752, 42.960712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320843, 34.453342, 43.184376>,  <36.187134, 34.600697, 43.318573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320843, 34.453342, 43.184376>,  <36.543690, 34.207752, 42.960712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320843, 34.453342, 43.184376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530271, 0.255167, -0.808519,
		-0.639089, -0.746943, 0.183416,
		-0.557116, 0.613976, 0.559156,
		36.153709, 34.637535, 43.352123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872181, 33.991661, 42.899815>,  <36.543690, 34.207752, 42.960712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872181, 33.991661, 42.899815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901375, 34.380432, 42.989288>,  <35.918892, 34.613693, 43.042973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901375, 34.380432, 42.989288>,  <35.872181, 33.991661, 42.899815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901375, 34.380432, 42.989288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649453, 0.216522, -0.728923,
		-0.756891, -0.092072, 0.647023,
		0.072981, 0.971926, 0.223680,
		35.923267, 34.672009, 43.056393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232571, 34.155102, 42.686314>,  <35.872181, 33.991661, 42.899815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232571, 34.155102, 42.686314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423580, 34.505207, 42.716980>,  <35.538185, 34.715271, 42.735382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423580, 34.505207, 42.716980>,  <35.232571, 34.155102, 42.686314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423580, 34.505207, 42.716980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316739, 0.252882, -0.914181,
		-0.819541, 0.412259, 0.397989,
		0.477524, 0.875267, 0.076668,
		35.566837, 34.767788, 42.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732803, 34.637478, 42.492104>,  <35.232571, 34.155102, 42.686314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732803, 34.637478, 42.492104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068703, 34.853226, 42.467125>,  <35.270245, 34.982674, 42.452137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068703, 34.853226, 42.467125>,  <34.732803, 34.637478, 42.492104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068703, 34.853226, 42.467125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266744, 0.309631, -0.912675,
		-0.472934, 0.783077, 0.403886,
		0.839751, 0.539369, -0.062446,
		35.320629, 35.015038, 42.448391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533348, 35.323433, 42.206146>,  <34.732803, 34.637478, 42.492104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533348, 35.323433, 42.206146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926956, 35.287006, 42.144955>,  <35.163120, 35.265152, 42.108238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926956, 35.287006, 42.144955>,  <34.533348, 35.323433, 42.206146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926956, 35.287006, 42.144955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087960, 0.498415, -0.862465,
		0.154787, 0.862143, 0.482442,
		0.984024, -0.091062, -0.152983,
		35.222164, 35.259689, 42.099060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799976, 35.940945, 41.883610>,  <34.533348, 35.323433, 42.206146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799976, 35.940945, 41.883610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075623, 35.670597, 41.779053>,  <35.241009, 35.508389, 41.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075623, 35.670597, 41.779053>,  <34.799976, 35.940945, 41.883610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075623, 35.670597, 41.779053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146561, 0.483244, -0.863131,
		0.709679, 0.556484, 0.432066,
		0.689112, -0.675870, -0.261389,
		35.282356, 35.467834, 41.700638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283756, 36.312408, 41.390709>,  <34.799976, 35.940945, 41.883610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283756, 36.312408, 41.390709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398712, 35.930840, 41.356216>,  <35.467686, 35.701897, 41.335522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398712, 35.930840, 41.356216>,  <35.283756, 36.312408, 41.390709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398712, 35.930840, 41.356216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487782, 0.223247, -0.843937,
		0.824302, 0.200479, 0.529466,
		0.287393, -0.953923, -0.086233,
		35.484928, 35.644661, 41.330345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964039, 36.255672, 41.152084>,  <35.283756, 36.312408, 41.390709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964039, 36.255672, 41.152084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821575, 35.901966, 41.031265>,  <35.736099, 35.689743, 40.958775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821575, 35.901966, 41.031265>,  <35.964039, 36.255672, 41.152084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821575, 35.901966, 41.031265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571220, 0.049779, -0.819286,
		0.739499, -0.464330, 0.487379,
		-0.356157, -0.884262, -0.302046,
		35.714729, 35.636688, 40.940651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496204, 35.798145, 40.889973>,  <35.964039, 36.255672, 41.152084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496204, 35.798145, 40.889973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166698, 35.651932, 40.716633>,  <35.968994, 35.564205, 40.612629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166698, 35.651932, 40.716633>,  <36.496204, 35.798145, 40.889973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166698, 35.651932, 40.716633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511508, -0.149584, -0.846158,
		0.244477, -0.918700, 0.310196,
		-0.823766, -0.365534, -0.433353,
		35.919567, 35.542271, 40.586628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684982, 35.263237, 40.529305>,  <36.496204, 35.798145, 40.889973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684982, 35.263237, 40.529305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335529, 35.368740, 40.365746>,  <36.125858, 35.432041, 40.267609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335529, 35.368740, 40.365746>,  <36.684982, 35.263237, 40.529305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335529, 35.368740, 40.365746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381189, -0.151311, -0.912030,
		-0.302423, -0.952648, 0.031650,
		-0.873633, 0.263755, -0.408899,
		36.073441, 35.447868, 40.243076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517151, 34.786404, 39.941357>,  <36.684982, 35.263237, 40.529305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517151, 34.786404, 39.941357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304802, 35.120560, 39.884365>,  <36.177395, 35.321053, 39.850170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304802, 35.120560, 39.884365>,  <36.517151, 34.786404, 39.941357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304802, 35.120560, 39.884365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318167, 0.040649, -0.947163,
		-0.785460, -0.548152, -0.287373,
		-0.530870, 0.835390, -0.142476,
		36.145542, 35.371178, 39.841621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579201, 34.808739, 39.237400>,  <36.517151, 34.786404, 39.941357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579201, 34.808739, 39.237400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408714, 35.164452, 39.303757>,  <36.306423, 35.377880, 39.343571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408714, 35.164452, 39.303757>,  <36.579201, 34.808739, 39.237400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408714, 35.164452, 39.303757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478144, 0.377136, -0.793188,
		-0.767931, -0.258748, -0.585945,
		-0.426217, 0.889279, 0.165896,
		36.280849, 35.431236, 39.353527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243050, 35.008186, 38.580582>,  <36.579201, 34.808739, 39.237400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243050, 35.008186, 38.580582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320778, 35.347763, 38.777168>,  <36.367416, 35.551510, 38.895119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320778, 35.347763, 38.777168>,  <36.243050, 35.008186, 38.580582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320778, 35.347763, 38.777168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445983, 0.369780, -0.815084,
		-0.873692, 0.377575, -0.306756,
		0.194323, 0.848940, 0.491466,
		36.379074, 35.602444, 38.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274822, 35.539116, 38.071926>,  <36.243050, 35.008186, 38.580582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274822, 35.539116, 38.071926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468124, 35.714420, 38.375080>,  <36.584106, 35.819603, 38.556973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468124, 35.714420, 38.375080>,  <36.274822, 35.539116, 38.071926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468124, 35.714420, 38.375080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594036, 0.471760, -0.651586,
		-0.643103, 0.765096, -0.032360,
		0.483259, 0.438260, 0.757884,
		36.613102, 35.845898, 38.602444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229305, 36.365597, 38.013302>,  <36.274822, 35.539116, 38.071926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229305, 36.365597, 38.013302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553139, 36.253010, 38.219349>,  <36.747440, 36.185455, 38.342976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553139, 36.253010, 38.219349>,  <36.229305, 36.365597, 38.013302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553139, 36.253010, 38.219349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585899, 0.333736, -0.738473,
		0.035946, 0.899664, 0.435101,
		0.809586, -0.281471, 0.515116,
		36.796013, 36.168568, 38.373882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804848, 36.797237, 37.688015>,  <36.229305, 36.365597, 38.013302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804848, 36.797237, 37.688015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018303, 36.563137, 37.932217>,  <37.146378, 36.422676, 38.078735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018303, 36.563137, 37.932217>,  <36.804848, 36.797237, 37.688015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018303, 36.563137, 37.932217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839674, 0.280548, -0.465016,
		0.100876, 0.760772, 0.641132,
		0.533640, -0.585251, 0.610500,
		37.178394, 36.387562, 38.115368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465687, 37.160408, 38.051949>,  <36.804848, 36.797237, 37.688015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465687, 37.160408, 38.051949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499966, 36.769020, 37.976849>,  <37.520531, 36.534187, 37.931789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499966, 36.769020, 37.976849>,  <37.465687, 37.160408, 38.051949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499966, 36.769020, 37.976849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840799, 0.172120, -0.513256,
		0.534522, -0.113875, 0.837448,
		0.085695, -0.978472, -0.187748,
		37.525673, 36.475479, 37.920525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245632, 37.055248, 38.153133>,  <37.465687, 37.160408, 38.051949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245632, 37.055248, 38.153133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113678, 36.747864, 37.933811>,  <38.034504, 36.563431, 37.802219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113678, 36.747864, 37.933811>,  <38.245632, 37.055248, 38.153133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113678, 36.747864, 37.933811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870451, -0.022815, -0.491726,
		0.365366, -0.639484, 0.676438,
		-0.329884, -0.768466, -0.548303,
		38.014713, 36.517323, 37.769321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847710, 36.595619, 38.317574>,  <38.245632, 37.055248, 38.153133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847710, 36.595619, 38.317574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636143, 36.452114, 38.009930>,  <38.509201, 36.366013, 37.825344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636143, 36.452114, 38.009930>,  <38.847710, 36.595619, 38.317574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636143, 36.452114, 38.009930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839098, -0.085322, -0.537248,
		0.127122, -0.929521, 0.346164,
		-0.528919, -0.358762, -0.769113,
		38.477467, 36.344486, 37.779194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322342, 36.017937, 38.031715>,  <38.847710, 36.595619, 38.317574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322342, 36.017937, 38.031715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079407, 36.107395, 37.726788>,  <38.933647, 36.161072, 37.543831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079407, 36.107395, 37.726788>,  <39.322342, 36.017937, 38.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079407, 36.107395, 37.726788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780990, -0.007788, -0.624495,
		-0.145606, -0.974638, -0.169939,
		-0.607333, 0.223651, -0.762316,
		38.897205, 36.174492, 37.498093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362083, 35.503788, 37.548317>,  <39.322342, 36.017937, 38.031715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362083, 35.503788, 37.548317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241135, 35.831139, 37.352833>,  <39.168564, 36.027550, 37.235542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241135, 35.831139, 37.352833>,  <39.362083, 35.503788, 37.548317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241135, 35.831139, 37.352833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832056, -0.023523, -0.554193,
		-0.465032, -0.574207, -0.673819,
		-0.302371, 0.818372, -0.488711,
		39.150425, 36.076649, 37.206219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474010, 35.296322, 36.918198>,  <39.362083, 35.503788, 37.548317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474010, 35.296322, 36.918198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503517, 35.694004, 36.949463>,  <39.521221, 35.932613, 36.968220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503517, 35.694004, 36.949463>,  <39.474010, 35.296322, 36.918198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503517, 35.694004, 36.949463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827584, -0.017294, -0.561075,
		-0.556474, 0.106073, -0.824066,
		0.073767, 0.994208, 0.078161,
		39.525646, 35.992268, 36.972912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456398, 35.731571, 36.245926>,  <39.474010, 35.296322, 36.918198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456398, 35.731571, 36.245926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713444, 35.810299, 36.542118>,  <39.867672, 35.857536, 36.719833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713444, 35.810299, 36.542118>,  <39.456398, 35.731571, 36.245926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713444, 35.810299, 36.542118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751804, 0.024439, -0.658934,
		-0.147790, 0.980135, -0.132267,
		0.642611, 0.196822, 0.740481,
		39.906227, 35.869347, 36.764263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676922, 36.347168, 36.125149>,  <39.456398, 35.731571, 36.245926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676922, 36.347168, 36.125149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961452, 36.112877, 36.280548>,  <40.132172, 35.972301, 36.373787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961452, 36.112877, 36.280548>,  <39.676922, 36.347168, 36.125149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961452, 36.112877, 36.280548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482439, 0.004916, -0.875916,
		0.511142, 0.810490, 0.286077,
		0.711328, -0.585731, 0.388499,
		40.174850, 35.937157, 36.397099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384659, 36.671005, 35.958397>,  <39.676922, 36.347168, 36.125149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384659, 36.671005, 35.958397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372276, 36.271244, 35.952206>,  <40.364849, 36.031387, 35.948490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372276, 36.271244, 35.952206>,  <40.384659, 36.671005, 35.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372276, 36.271244, 35.952206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310099, 0.005119, -0.950690,
		0.950200, -0.034227, 0.309755,
		-0.030953, -0.999401, -0.015478,
		40.362991, 35.971424, 35.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034431, 36.373234, 35.545269>,  <40.384659, 36.671005, 35.958397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034431, 36.373234, 35.545269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743317, 36.099102, 35.555428>,  <40.568645, 35.934624, 35.561523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743317, 36.099102, 35.555428>,  <41.034431, 36.373234, 35.545269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743317, 36.099102, 35.555428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119097, -0.162767, -0.979450,
		0.675379, -0.709810, 0.200081,
		-0.727791, -0.685329, 0.025393,
		40.524979, 35.893505, 35.563046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320461, 35.697025, 35.328033>,  <41.034431, 36.373234, 35.545269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320461, 35.697025, 35.328033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932514, 35.739693, 35.240421>,  <40.699745, 35.765293, 35.187855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932514, 35.739693, 35.240421>,  <41.320461, 35.697025, 35.328033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932514, 35.739693, 35.240421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169510, -0.350274, -0.921181,
		-0.174979, -0.930554, 0.321639,
		-0.969871, 0.106666, -0.219028,
		40.641552, 35.771694, 35.174713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653339, 35.316185, 35.670437>,  <41.320461, 35.697025, 35.328033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653339, 35.316185, 35.670437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442753, 35.436291, 35.352272>,  <40.316402, 35.508354, 35.161373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442753, 35.436291, 35.352272>,  <40.653339, 35.316185, 35.670437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442753, 35.436291, 35.352272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116998, 0.952245, 0.282031,
		0.842108, 0.055418, -0.536455,
		-0.526466, 0.300264, -0.795409,
		40.284813, 35.526371, 35.113651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891079, 35.201942, 34.934944>,  <40.653339, 35.316185, 35.670437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891079, 35.201942, 34.934944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290165, 35.188114, 34.958168>,  <41.529617, 35.179817, 34.972103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290165, 35.188114, 34.958168>,  <40.891079, 35.201942, 34.934944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290165, 35.188114, 34.958168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067509, 0.547401, -0.834143,
		-0.002945, 0.836156, 0.548483,
		0.997714, -0.034570, 0.058060,
		41.589478, 35.177742, 34.975586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078773, 35.742390, 34.548489>,  <40.891079, 35.201942, 34.934944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078773, 35.742390, 34.548489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443539, 35.581944, 34.583187>,  <41.662395, 35.485676, 34.604008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443539, 35.581944, 34.583187>,  <41.078773, 35.742390, 34.548489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443539, 35.581944, 34.583187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278218, 0.448851, -0.849192,
		0.301689, 0.798522, 0.520909,
		0.911909, -0.401118, 0.086750,
		41.717110, 35.461609, 34.609211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639359, 36.225525, 34.461895>,  <41.078773, 35.742390, 34.548489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639359, 36.225525, 34.461895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817394, 35.881039, 34.363747>,  <41.924217, 35.674347, 34.304859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817394, 35.881039, 34.363747>,  <41.639359, 36.225525, 34.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817394, 35.881039, 34.363747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426397, 0.444775, -0.787630,
		0.787453, 0.245939, 0.565183,
		0.445088, -0.861214, -0.245372,
		41.950920, 35.622673, 34.290134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159912, 36.358437, 34.016785>,  <41.639359, 36.225525, 34.461895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159912, 36.358437, 34.016785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208065, 35.962696, 33.984062>,  <42.236958, 35.725250, 33.964428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208065, 35.962696, 33.984062>,  <42.159912, 36.358437, 34.016785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208065, 35.962696, 33.984062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345490, 0.119008, -0.930846,
		0.930669, 0.083794, 0.356138,
		0.120383, -0.989351, -0.081807,
		42.244179, 35.665890, 33.959518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861309, 36.162846, 33.760006>,  <42.159912, 36.358437, 34.016785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861309, 36.162846, 33.760006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596085, 35.893627, 33.628941>,  <42.436951, 35.732098, 33.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596085, 35.893627, 33.628941>,  <42.861309, 36.162846, 33.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596085, 35.893627, 33.628941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327974, 0.132274, -0.935381,
		0.672892, -0.727680, 0.133035,
		-0.663061, -0.673042, -0.327666,
		42.397167, 35.691715, 33.530640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213478, 35.837650, 33.226566>,  <42.861309, 36.162846, 33.760006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213478, 35.837650, 33.226566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840710, 35.712605, 33.153038>,  <42.617050, 35.637577, 33.108921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840710, 35.712605, 33.153038>,  <43.213478, 35.837650, 33.226566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840710, 35.712605, 33.153038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210233, -0.052681, -0.976231,
		0.295505, -0.948417, 0.114818,
		-0.931922, -0.312620, -0.183821,
		42.561134, 35.618820, 33.097893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227955, 35.405289, 32.654587>,  <43.213478, 35.837650, 33.226566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227955, 35.405289, 32.654587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848557, 35.531891, 32.659962>,  <42.620918, 35.607853, 32.663185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848557, 35.531891, 32.659962>,  <43.227955, 35.405289, 32.654587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848557, 35.531891, 32.659962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027570, 0.124722, -0.991809,
		-0.315592, -0.940355, -0.127024,
		-0.948495, 0.316509, 0.013436,
		42.564007, 35.626842, 32.663994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907875, 35.078594, 32.014957>,  <43.227955, 35.405289, 32.654587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907875, 35.078594, 32.014957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669327, 35.385998, 32.107685>,  <42.526199, 35.570438, 32.163322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669327, 35.385998, 32.107685>,  <42.907875, 35.078594, 32.014957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669327, 35.385998, 32.107685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057102, 0.247443, -0.967218,
		-0.800678, -0.590055, -0.103684,
		-0.596368, 0.768509, 0.231815,
		42.490417, 35.616550, 32.177231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376705, 35.035660, 31.442474>,  <42.907875, 35.078594, 32.014957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376705, 35.035660, 31.442474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383408, 35.398365, 31.610994>,  <42.387428, 35.615990, 31.712107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383408, 35.398365, 31.610994>,  <42.376705, 35.035660, 31.442474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383408, 35.398365, 31.610994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044499, 0.421616, -0.905682,
		-0.998869, -0.003576, 0.047413,
		0.016752, 0.906767, 0.421299,
		42.388432, 35.670395, 31.737385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875252, 35.425919, 31.008869>,  <42.376705, 35.035660, 31.442474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875252, 35.425919, 31.008869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100372, 35.704845, 31.186413>,  <42.235443, 35.872200, 31.292938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100372, 35.704845, 31.186413>,  <41.875252, 35.425919, 31.008869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100372, 35.704845, 31.186413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039432, 0.513711, -0.857057,
		-0.825654, 0.499852, 0.261618,
		0.562797, 0.697316, 0.443858,
		42.269211, 35.914040, 31.319571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602917, 36.015217, 30.716486>,  <41.875252, 35.425919, 31.008869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602917, 36.015217, 30.716486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945675, 36.136673, 30.883116>,  <42.151329, 36.209549, 30.983093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945675, 36.136673, 30.883116>,  <41.602917, 36.015217, 30.716486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945675, 36.136673, 30.883116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074789, 0.726328, -0.683267,
		-0.510039, 0.616643, 0.599677,
		0.856894, 0.303644, 0.416574,
		42.202744, 36.227768, 31.008087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540966, 36.756229, 30.786346>,  <41.602917, 36.015217, 30.716486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540966, 36.756229, 30.786346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931248, 36.674168, 30.817101>,  <42.165417, 36.624931, 30.835554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931248, 36.674168, 30.817101>,  <41.540966, 36.756229, 30.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931248, 36.674168, 30.817101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211211, 0.787502, -0.578991,
		0.058237, 0.581164, 0.811700,
		0.975704, -0.205159, 0.076886,
		42.223957, 36.612621, 30.840166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863121, 37.323513, 30.930376>,  <41.540966, 36.756229, 30.786346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863121, 37.323513, 30.930376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129688, 37.086800, 30.748968>,  <42.289627, 36.944771, 30.640123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129688, 37.086800, 30.748968>,  <41.863121, 37.323513, 30.930376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129688, 37.086800, 30.748968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187332, 0.721664, -0.666414,
		0.721664, 0.359148, 0.591788,
		0.666414, -0.591788, -0.453519,
		42.329613, 36.909264, 30.612913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467148, 37.698914, 30.908556>,  <41.863121, 37.323513, 30.930376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467148, 37.698914, 30.908556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453506, 37.440735, 30.603338>,  <42.445320, 37.285828, 30.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453506, 37.440735, 30.603338>,  <42.467148, 37.698914, 30.908556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453506, 37.440735, 30.603338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274342, 0.728113, -0.628162,
		0.961027, -0.230758, 0.152242,
		-0.034104, -0.645447, -0.763043,
		42.443275, 37.247101, 30.374426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857998, 38.024128, 30.468805>,  <42.467148, 37.698914, 30.908556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857998, 38.024128, 30.468805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752357, 37.724297, 30.226027>,  <42.688972, 37.544399, 30.080360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752357, 37.724297, 30.226027>,  <42.857998, 38.024128, 30.468805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752357, 37.724297, 30.226027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358938, 0.507703, -0.783199,
		0.895217, -0.424701, 0.134967,
		-0.264102, -0.749577, -0.606946,
		42.673126, 37.499424, 30.043943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443596, 37.848965, 30.001860>,  <42.857998, 38.024128, 30.468805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443596, 37.848965, 30.001860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127510, 37.706631, 29.802282>,  <42.937859, 37.621231, 29.682537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127510, 37.706631, 29.802282>,  <43.443596, 37.848965, 30.001860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127510, 37.706631, 29.802282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402391, 0.312790, -0.860374,
		0.462219, -0.880648, -0.103984,
		-0.790212, -0.355839, -0.498942,
		42.890446, 37.599880, 29.652599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696941, 37.504620, 29.439329>,  <43.443596, 37.848965, 30.001860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696941, 37.504620, 29.439329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322540, 37.573917, 29.316767>,  <43.097900, 37.615494, 29.243229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322540, 37.573917, 29.316767>,  <43.696941, 37.504620, 29.439329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322540, 37.573917, 29.316767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351907, 0.441477, -0.825385,
		-0.007721, -0.880389, -0.474189,
		-0.936003, 0.173243, -0.306406,
		43.041740, 37.625889, 29.224844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597889, 37.356712, 28.766937>,  <43.696941, 37.504620, 29.439329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597889, 37.356712, 28.766937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304531, 37.624218, 28.815742>,  <43.128517, 37.784721, 28.845026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304531, 37.624218, 28.815742>,  <43.597889, 37.356712, 28.766937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304531, 37.624218, 28.815742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339872, 0.516156, -0.786174,
		-0.588740, -0.535110, -0.605841,
		-0.733398, 0.668761, 0.122012,
		43.084511, 37.824844, 28.852346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516922, 37.606903, 28.174072>,  <43.597889, 37.356712, 28.766937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516922, 37.606903, 28.174072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334167, 37.890736, 28.388643>,  <43.224514, 38.061035, 28.517385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334167, 37.890736, 28.388643>,  <43.516922, 37.606903, 28.174072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334167, 37.890736, 28.388643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308397, 0.692004, -0.652704,
		-0.834353, -0.132781, -0.535000,
		-0.456888, 0.709577, 0.536426,
		43.197102, 38.103607, 28.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072830, 38.007111, 27.690702>,  <43.516922, 37.606903, 28.174072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072830, 38.007111, 27.690702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144264, 38.247753, 28.002132>,  <43.187126, 38.392139, 28.188990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144264, 38.247753, 28.002132>,  <43.072830, 38.007111, 27.690702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144264, 38.247753, 28.002132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263893, 0.733017, -0.626934,
		-0.947875, 0.317423, -0.027851,
		0.178588, 0.601605, 0.778574,
		43.197842, 38.428234, 28.235704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711773, 38.703495, 27.739098>,  <43.072830, 38.007111, 27.690702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711773, 38.703495, 27.739098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072960, 38.736343, 27.907812>,  <43.289673, 38.756054, 28.009041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072960, 38.736343, 27.907812>,  <42.711773, 38.703495, 27.739098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072960, 38.736343, 27.907812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170587, 0.832397, -0.527272,
		-0.394395, 0.548061, 0.737619,
		0.902969, 0.082125, 0.421785,
		43.343849, 38.760983, 28.034348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508408, 39.414261, 27.635077>,  <42.711773, 38.703495, 27.739098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508408, 39.414261, 27.635077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320553, 39.272434, 27.958490>,  <42.207840, 39.187340, 28.152538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320553, 39.272434, 27.958490>,  <42.508408, 39.414261, 27.635077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320553, 39.272434, 27.958490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561543, 0.826649, 0.036339,
		-0.681258, -0.436960, -0.587328,
		-0.469636, -0.354566, 0.808533,
		42.179661, 39.166065, 28.201050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232250, 39.537418, 27.541143>,  <42.508408, 39.414261, 27.635077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232250, 39.537418, 27.541143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272175, 39.743889, 27.881401>,  <43.296131, 39.867771, 28.085556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272175, 39.743889, 27.881401>,  <43.232250, 39.537418, 27.541143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272175, 39.743889, 27.881401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133722, -0.840199, 0.525531,
		0.985980, -0.166204, -0.014837,
		0.099811, 0.516179, 0.850645,
		43.302116, 39.898743, 28.136595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826565, 39.603897, 27.867834>,  <43.232250, 39.537418, 27.541143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826565, 39.603897, 27.867834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169243, 39.806210, 27.827320>,  <44.374847, 39.927597, 27.803011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169243, 39.806210, 27.827320>,  <43.826565, 39.603897, 27.867834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169243, 39.806210, 27.827320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284184, 0.298922, -0.910980,
		-0.430483, 0.809214, 0.399821,
		0.856693, 0.505785, -0.101285,
		44.426250, 39.957947, 27.796934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680725, 40.346790, 27.928366>,  <43.826565, 39.603897, 27.867834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680725, 40.346790, 27.928366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429184, 40.641121, 28.028849>,  <43.278259, 40.817719, 28.089138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429184, 40.641121, 28.028849>,  <43.680725, 40.346790, 27.928366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429184, 40.641121, 28.028849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011028, -0.331493, 0.943393,
		0.777448, 0.590483, 0.216574,
		-0.628851, 0.735827, 0.251207,
		43.240528, 40.861870, 28.104210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093285, 40.762562, 28.407581>,  <43.680725, 40.346790, 27.928366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093285, 40.762562, 28.407581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698235, 40.798100, 28.459274>,  <43.461205, 40.819424, 28.490290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698235, 40.798100, 28.459274>,  <44.093285, 40.762562, 28.407581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698235, 40.798100, 28.459274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133201, 0.040248, 0.990271,
		0.082779, 0.995232, -0.051584,
		-0.987626, 0.088845, 0.129234,
		43.401947, 40.824753, 28.498045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865398, 41.498806, 28.376753>,  <44.093285, 40.762562, 28.407581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865398, 41.498806, 28.376753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682789, 41.265171, 28.645206>,  <43.573223, 41.124989, 28.806278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682789, 41.265171, 28.645206>,  <43.865398, 41.498806, 28.376753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682789, 41.265171, 28.645206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532758, 0.424675, 0.731997,
		-0.712567, 0.691728, 0.117304,
		-0.456527, -0.584092, 0.671134,
		43.545830, 41.089943, 28.846546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069717, 41.155994, 29.009474>,  <43.865398, 41.498806, 28.376753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069717, 41.155994, 29.009474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782787, 41.425095, 29.081974>,  <43.610630, 41.586555, 29.125473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782787, 41.425095, 29.081974>,  <44.069717, 41.155994, 29.009474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782787, 41.425095, 29.081974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265300, 0.504274, -0.821781,
		-0.644256, -0.541396, -0.540208,
		-0.717322, 0.672754, 0.181249,
		43.567593, 41.626923, 29.136349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387878, 41.857262, 29.362083>,  <44.069717, 41.155994, 29.009474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387878, 41.857262, 29.362083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627148, 42.042412, 29.623751>,  <44.770710, 42.153500, 29.780750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627148, 42.042412, 29.623751>,  <44.387878, 41.857262, 29.362083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627148, 42.042412, 29.623751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262449, -0.658141, 0.705670,
		0.757170, -0.593801, -0.272204,
		0.598177, 0.462873, 0.654167,
		44.806602, 42.181274, 29.820002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856606, 41.300415, 29.517963>,  <44.387878, 41.857262, 29.362083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856606, 41.300415, 29.517963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824970, 41.581615, 29.800674>,  <44.805988, 41.750336, 29.970301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824970, 41.581615, 29.800674>,  <44.856606, 41.300415, 29.517963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824970, 41.581615, 29.800674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099762, -0.711019, 0.696060,
		0.991863, -0.015458, 0.126367,
		-0.079090, 0.703003, 0.706775,
		44.801243, 41.792515, 30.012707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241676, 41.159203, 30.058268>,  <44.856606, 41.300415, 29.517963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241676, 41.159203, 30.058268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950340, 41.388317, 30.208698>,  <44.775539, 41.525784, 30.298958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950340, 41.388317, 30.208698>,  <45.241676, 41.159203, 30.058268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950340, 41.388317, 30.208698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090027, -0.624083, 0.776154,
		0.679273, 0.531449, 0.506113,
		-0.728343, 0.572784, 0.376078,
		44.731838, 41.560154, 30.321522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487030, 41.324047, 30.729759>,  <45.241676, 41.159203, 30.058268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487030, 41.324047, 30.729759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089390, 41.333092, 30.687328>,  <44.850807, 41.338520, 30.661869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089390, 41.333092, 30.687328>,  <45.487030, 41.324047, 30.729759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089390, 41.333092, 30.687328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090346, -0.713771, 0.694528,
		-0.060011, 0.700014, 0.711603,
		-0.994101, 0.022611, -0.106077,
		44.791161, 41.339874, 30.655506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183449, 41.343533, 31.473150>,  <45.487030, 41.324047, 30.729759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183449, 41.343533, 31.473150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888763, 41.199230, 31.244377>,  <44.711952, 41.112648, 31.107113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888763, 41.199230, 31.244377>,  <45.183449, 41.343533, 31.473150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888763, 41.199230, 31.244377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147182, -0.739975, 0.656335,
		-0.659993, 0.567709, 0.492053,
		-0.736714, -0.360755, -0.571934,
		44.667747, 41.091003, 31.072798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492569, 41.184322, 31.914639>,  <45.183449, 41.343533, 31.473150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492569, 41.184322, 31.914639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459221, 40.980362, 31.572166>,  <44.439213, 40.857986, 31.366682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459221, 40.980362, 31.572166>,  <44.492569, 41.184322, 31.914639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459221, 40.980362, 31.572166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239365, -0.823773, 0.513910,
		-0.967344, 0.247785, -0.053374,
		-0.083371, -0.509903, -0.856182,
		44.434208, 40.827393, 31.315311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869617, 40.790001, 31.850697>,  <44.492569, 41.184322, 31.914639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869617, 40.790001, 31.850697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142494, 40.609196, 31.620810>,  <44.306221, 40.500713, 31.482878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142494, 40.609196, 31.620810>,  <43.869617, 40.790001, 31.850697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142494, 40.609196, 31.620810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138983, -0.851852, 0.505007,
		-0.717842, -0.264636, -0.643949,
		0.682192, -0.452013, -0.574716,
		44.347153, 40.473591, 31.448395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557026, 40.187054, 31.608356>,  <43.869617, 40.790001, 31.850697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557026, 40.187054, 31.608356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944042, 40.103504, 31.551455>,  <44.176250, 40.053375, 31.517313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944042, 40.103504, 31.551455>,  <43.557026, 40.187054, 31.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944042, 40.103504, 31.551455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085012, -0.799119, 0.595132,
		-0.237985, -0.563722, -0.790937,
		0.967542, -0.208872, -0.142256,
		44.234306, 40.040844, 31.508778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599617, 39.412914, 31.447157>,  <43.557026, 40.187054, 31.608356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599617, 39.412914, 31.447157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991238, 39.450642, 31.519342>,  <44.226208, 39.473278, 31.562654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991238, 39.450642, 31.519342>,  <43.599617, 39.412914, 31.447157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991238, 39.450642, 31.519342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006087, -0.872307, 0.488920,
		0.203534, -0.479775, -0.853458,
		0.979049, 0.094317, 0.180465,
		44.284954, 39.478935, 31.573483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008133, 38.766788, 31.228415>,  <43.599617, 39.412914, 31.447157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008133, 38.766788, 31.228415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209106, 38.973549, 31.505651>,  <44.329689, 39.097603, 31.671993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209106, 38.973549, 31.505651>,  <44.008133, 38.766788, 31.228415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209106, 38.973549, 31.505651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085732, -0.827453, 0.554952,
		0.860356, -0.219406, -0.460053,
		0.502432, 0.516898, 0.693093,
		44.359837, 39.128616, 31.713579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498119, 38.293690, 31.579279>,  <44.008133, 38.766788, 31.228415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498119, 38.293690, 31.579279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463642, 38.587364, 31.848663>,  <44.442955, 38.763569, 32.010292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463642, 38.587364, 31.848663>,  <44.498119, 38.293690, 31.579279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463642, 38.587364, 31.848663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063160, -0.678642, 0.731748,
		0.994275, 0.020533, 0.104862,
		-0.086189, 0.734182, 0.673460,
		44.437786, 38.807617, 32.050701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071449, 38.213264, 31.952368>,  <44.498119, 38.293690, 31.579279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071449, 38.213264, 31.952368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806458, 38.408779, 32.179420>,  <44.647461, 38.526089, 32.315651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806458, 38.408779, 32.179420>,  <45.071449, 38.213264, 31.952368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806458, 38.408779, 32.179420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226036, -0.592008, 0.773586,
		0.714160, 0.640792, 0.281711,
		-0.662482, 0.488787, 0.567630,
		44.607712, 38.555416, 32.349709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275673, 37.989151, 32.494934>,  <45.071449, 38.213264, 31.952368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275673, 37.989151, 32.494934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940628, 38.164536, 32.625263>,  <44.739601, 38.269764, 32.703461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940628, 38.164536, 32.625263>,  <45.275673, 37.989151, 32.494934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940628, 38.164536, 32.625263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056297, -0.523993, 0.849860,
		0.543357, 0.730196, 0.414218,
		-0.837612, 0.438458, 0.325823,
		44.689346, 38.296074, 32.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417782, 38.287483, 33.135174>,  <45.275673, 37.989151, 32.494934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417782, 38.287483, 33.135174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030228, 38.191746, 33.109932>,  <44.797695, 38.134304, 33.094788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030228, 38.191746, 33.109932>,  <45.417782, 38.287483, 33.135174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030228, 38.191746, 33.109932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062312, -0.482594, 0.873625,
		-0.239548, 0.842508, 0.482491,
		-0.968883, -0.239340, -0.063106,
		44.739563, 38.119946, 33.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164646, 38.411606, 33.761585>,  <45.417782, 38.287483, 33.135174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164646, 38.411606, 33.761585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902229, 38.163563, 33.589504>,  <44.744781, 38.014736, 33.486256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902229, 38.163563, 33.589504>,  <45.164646, 38.411606, 33.761585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902229, 38.163563, 33.589504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118764, -0.478089, 0.870245,
		-0.745325, 0.622006, 0.239997,
		-0.656038, -0.620112, -0.430204,
		44.705418, 37.977528, 33.460442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622417, 38.404110, 34.240437>,  <45.164646, 38.411606, 33.761585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622417, 38.404110, 34.240437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561184, 38.084053, 34.008457>,  <44.524445, 37.892017, 33.869270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561184, 38.084053, 34.008457>,  <44.622417, 38.404110, 34.240437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561184, 38.084053, 34.008457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132790, -0.564886, 0.814414,
		-0.979251, 0.201683, -0.019777,
		-0.153082, -0.800142, -0.579946,
		44.515259, 37.844009, 33.834473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025612, 37.995754, 34.448048>,  <44.622417, 38.404110, 34.240437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025612, 37.995754, 34.448048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228428, 37.741291, 34.215424>,  <44.350117, 37.588615, 34.075848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228428, 37.741291, 34.215424>,  <44.025612, 37.995754, 34.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228428, 37.741291, 34.215424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162259, -0.733113, 0.660467,
		-0.846510, -0.240522, -0.474942,
		0.507043, -0.636156, -0.581561,
		44.380539, 37.550446, 34.040955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529011, 37.408077, 34.366383>,  <44.025612, 37.995754, 34.448048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529011, 37.408077, 34.366383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905685, 37.294525, 34.294109>,  <44.131691, 37.226395, 34.250744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905685, 37.294525, 34.294109>,  <43.529011, 37.408077, 34.366383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905685, 37.294525, 34.294109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146590, -0.829396, 0.539086,
		-0.302893, -0.481161, -0.822642,
		0.941683, -0.283876, -0.180685,
		44.188190, 37.209362, 34.239902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463177, 36.718098, 34.452309>,  <43.529011, 37.408077, 34.366383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463177, 36.718098, 34.452309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862568, 36.735283, 34.438450>,  <44.102203, 36.745594, 34.430134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862568, 36.735283, 34.438450>,  <43.463177, 36.718098, 34.452309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862568, 36.735283, 34.438450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055193, -0.778595, 0.625095,
		-0.000123, -0.626055, -0.779779,
		0.998476, 0.042961, -0.034650,
		44.162109, 36.748173, 34.428055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635731, 36.023754, 34.351608>,  <43.463177, 36.718098, 34.452309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635731, 36.023754, 34.351608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957485, 36.212910, 34.495464>,  <44.150539, 36.326401, 34.581779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957485, 36.212910, 34.495464>,  <43.635731, 36.023754, 34.351608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957485, 36.212910, 34.495464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101545, -0.705872, 0.701023,
		0.585365, -0.527374, -0.615813,
		0.804386, 0.472887, 0.359640,
		44.198803, 36.354774, 34.603355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132431, 35.498875, 34.256344>,  <43.635731, 36.023754, 34.351608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132431, 35.498875, 34.256344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269287, 35.750183, 34.535835>,  <44.351398, 35.900967, 34.703529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269287, 35.750183, 34.535835>,  <44.132431, 35.498875, 34.256344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269287, 35.750183, 34.535835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338073, -0.776114, 0.532310,
		0.876726, 0.054097, -0.477938,
		0.342138, 0.628268, 0.698728,
		44.371929, 35.938663, 34.745453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785992, 35.267578, 34.431156>,  <44.132431, 35.498875, 34.256344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785992, 35.267578, 34.431156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655678, 35.502884, 34.727211>,  <44.577488, 35.644066, 34.904846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655678, 35.502884, 34.727211>,  <44.785992, 35.267578, 34.431156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655678, 35.502884, 34.727211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273840, -0.690580, 0.669411,
		0.904917, 0.420765, 0.063893,
		-0.325788, 0.588265, 0.740140,
		44.557941, 35.679363, 34.949253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330463, 35.260719, 34.996284>,  <44.785992, 35.267578, 34.431156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330463, 35.260719, 34.996284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.997993, 35.369057, 35.190517>,  <44.798512, 35.434059, 35.307056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.997993, 35.369057, 35.190517>,  <45.330463, 35.260719, 34.996284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997993, 35.369057, 35.190517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136784, -0.746892, 0.650725,
		0.538926, 0.607285, 0.583749,
		-0.831173, 0.270845, 0.485586,
		44.748642, 35.450310, 35.336193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568920, 35.129803, 35.734764>,  <45.330463, 35.260719, 34.996284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568920, 35.129803, 35.734764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171780, 35.132767, 35.687119>,  <44.933495, 35.134544, 35.658531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171780, 35.132767, 35.687119>,  <45.568920, 35.129803, 35.734764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171780, 35.132767, 35.687119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049705, -0.933067, 0.356252,
		-0.108505, 0.359627, 0.926766,
		-0.992853, 0.007410, -0.119117,
		44.873924, 35.134991, 35.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315014, 35.209202, 35.874062>,  <45.568920, 35.129803, 35.734764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315014, 35.209202, 35.874062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571674, 35.455612, 35.691284>,  <46.725670, 35.603458, 35.581619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571674, 35.455612, 35.691284>,  <46.315014, 35.209202, 35.874062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571674, 35.455612, 35.691284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516592, -0.787465, -0.336201,
		-0.566936, -0.020331, -0.823511,
		0.641651, 0.616024, -0.456945,
		46.764168, 35.640419, 35.554199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374836, 35.191570, 35.093060>,  <46.315014, 35.209202, 35.874062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374836, 35.191570, 35.093060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707115, 35.276573, 35.298889>,  <46.906483, 35.327576, 35.422386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707115, 35.276573, 35.298889>,  <46.374836, 35.191570, 35.093060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707115, 35.276573, 35.298889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402694, -0.867580, -0.291791,
		0.384429, 0.449606, -0.806268,
		0.830693, 0.212506, 0.514577,
		46.956322, 35.340324, 35.453262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951431, 35.328850, 34.704189>,  <46.374836, 35.191570, 35.093060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951431, 35.328850, 34.704189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117054, 35.203743, 35.046124>,  <47.216427, 35.128677, 35.251282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117054, 35.203743, 35.046124>,  <46.951431, 35.328850, 34.704189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.117054, 35.203743, 35.046124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431432, -0.759496, -0.486859,
		0.801514, 0.570388, -0.179535,
		0.414054, -0.312767, 0.854831,
		47.241272, 35.109913, 35.302574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.709373, 35.238121, 34.756260>,  <46.951431, 35.328850, 34.704189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.709373, 35.238121, 34.756260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593788, 34.941284, 34.998184>,  <47.524437, 34.763184, 35.143341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593788, 34.941284, 34.998184>,  <47.709373, 35.238121, 34.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593788, 34.941284, 34.998184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646516, -0.617207, -0.448411,
		0.706057, 0.261446, 0.658125,
		-0.288964, -0.742092, 0.604813,
		47.507099, 34.718655, 35.179626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.504799, 38.928459, 45.161663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108463, 38.881699, 45.188694>,  <36.870663, 38.853642, 45.204910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108463, 38.881699, 45.188694>,  <37.504799, 38.928459, 45.161663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108463, 38.881699, 45.188694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094043, 0.238378, -0.966608,
		0.096887, -0.964111, -0.247189,
		-0.990843, -0.116898, 0.067573,
		36.811211, 38.846630, 45.208965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228214, 38.470486, 44.631039>,  <37.504799, 38.928459, 45.161663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228214, 38.470486, 44.631039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924843, 38.709320, 44.735550>,  <36.742821, 38.852623, 44.798256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924843, 38.709320, 44.735550>,  <37.228214, 38.470486, 44.631039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924843, 38.709320, 44.735550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132550, 0.251192, -0.958819,
		-0.638131, -0.761831, -0.111368,
		-0.758433, 0.597089, 0.261274,
		36.697311, 38.888447, 44.813931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756695, 38.320869, 44.172817>,  <37.228214, 38.470486, 44.631039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756695, 38.320869, 44.172817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597336, 38.660694, 44.311108>,  <36.501720, 38.864590, 44.394081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597336, 38.660694, 44.311108>,  <36.756695, 38.320869, 44.172817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597336, 38.660694, 44.311108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362572, 0.200363, -0.910163,
		-0.842509, -0.487956, 0.228203,
		-0.398396, 0.849560, 0.345727,
		36.477818, 38.915562, 44.414825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099655, 38.308037, 43.894604>,  <36.756695, 38.320869, 44.172817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099655, 38.308037, 43.894604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152374, 38.694397, 43.983742>,  <36.184006, 38.926212, 44.037224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152374, 38.694397, 43.983742>,  <36.099655, 38.308037, 43.894604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152374, 38.694397, 43.983742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481547, 0.258886, -0.837312,
		-0.866454, 0.003042, 0.499247,
		0.131796, 0.965903, 0.222848,
		36.191914, 38.984169, 44.050594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521244, 38.605404, 43.569866>,  <36.099655, 38.308037, 43.894604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521244, 38.605404, 43.569866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763172, 38.915134, 43.644283>,  <35.908329, 39.100971, 43.688934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763172, 38.915134, 43.644283>,  <35.521244, 38.605404, 43.569866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763172, 38.915134, 43.644283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280084, 0.425525, -0.860512,
		-0.745483, 0.468348, 0.474242,
		0.604821, 0.774325, 0.186044,
		35.944618, 39.147430, 43.700096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051201, 39.193470, 43.504581>,  <35.521244, 38.605404, 43.569866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051201, 39.193470, 43.504581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439297, 39.264301, 43.438507>,  <35.672153, 39.306801, 43.398861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439297, 39.264301, 43.438507>,  <35.051201, 39.193470, 43.504581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439297, 39.264301, 43.438507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218029, 0.341921, -0.914086,
		-0.105383, 0.922894, 0.370352,
		0.970236, 0.177077, -0.165185,
		35.730366, 39.317425, 43.388950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043842, 39.851387, 43.052479>,  <35.051201, 39.193470, 43.504581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043842, 39.851387, 43.052479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406494, 39.690613, 43.001148>,  <35.624084, 39.594147, 42.970352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406494, 39.690613, 43.001148>,  <35.043842, 39.851387, 43.052479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406494, 39.690613, 43.001148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092733, 0.106875, -0.989939,
		0.411605, 0.909410, 0.059624,
		0.906632, -0.401935, -0.128322,
		35.678482, 39.570034, 42.962650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488125, 40.363693, 42.604828>,  <35.043842, 39.851387, 43.052479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488125, 40.363693, 42.604828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.626270, 39.989548, 42.574337>,  <35.709160, 39.765060, 42.556042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.626270, 39.989548, 42.574337>,  <35.488125, 40.363693, 42.604828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626270, 39.989548, 42.574337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064708, 0.057295, -0.996258,
		0.936234, 0.349007, -0.040738,
		0.345367, -0.935367, -0.076225,
		35.729881, 39.708939, 42.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801830, 40.336121, 42.030624>,  <35.488125, 40.363693, 42.604828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801830, 40.336121, 42.030624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795898, 39.940357, 42.088383>,  <35.792339, 39.702900, 42.123035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795898, 39.940357, 42.088383>,  <35.801830, 40.336121, 42.030624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795898, 39.940357, 42.088383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179874, -0.144690, -0.972990,
		0.983578, 0.011548, 0.180114,
		-0.014825, -0.989410, 0.144391,
		35.791451, 39.643536, 42.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369293, 40.120415, 41.712269>,  <35.801830, 40.336121, 42.030624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369293, 40.120415, 41.712269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136890, 39.795368, 41.730568>,  <35.997448, 39.600342, 41.741547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136890, 39.795368, 41.730568>,  <36.369293, 40.120415, 41.712269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136890, 39.795368, 41.730568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333056, -0.288668, -0.897633,
		0.742635, -0.506291, 0.438363,
		-0.581005, -0.812613, 0.045751,
		35.962589, 39.551586, 41.744293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724251, 39.492496, 41.690216>,  <36.369293, 40.120415, 41.712269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724251, 39.492496, 41.690216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370270, 39.407970, 41.524223>,  <36.157883, 39.357254, 41.424625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370270, 39.407970, 41.524223>,  <36.724251, 39.492496, 41.690216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370270, 39.407970, 41.524223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465124, -0.444859, -0.765350,
		-0.022881, -0.870315, 0.491964,
		-0.884950, -0.211312, -0.414983,
		36.104786, 39.344578, 41.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978306, 39.210094, 41.111725>,  <36.724251, 39.492496, 41.690216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978306, 39.210094, 41.111725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584396, 39.159363, 41.064171>,  <36.348049, 39.128925, 41.035637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584396, 39.159363, 41.064171>,  <36.978306, 39.210094, 41.111725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584396, 39.159363, 41.064171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167198, -0.503886, -0.847434,
		0.047571, -0.854409, 0.517419,
		-0.984775, -0.126825, -0.118885,
		36.288963, 39.121315, 41.028503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830715, 38.416584, 40.979305>,  <36.978306, 39.210094, 41.111725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830715, 38.416584, 40.979305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562080, 38.673008, 40.830704>,  <36.400898, 38.826862, 40.741543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562080, 38.673008, 40.830704>,  <36.830715, 38.416584, 40.979305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562080, 38.673008, 40.830704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273746, -0.251239, -0.928408,
		-0.688499, -0.725206, -0.006758,
		-0.671589, 0.641058, -0.371500,
		36.360603, 38.865326, 40.719254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517284, 38.059113, 40.477810>,  <36.830715, 38.416584, 40.979305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517284, 38.059113, 40.477810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437225, 38.439548, 40.383694>,  <36.389191, 38.667812, 40.327225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437225, 38.439548, 40.383694>,  <36.517284, 38.059113, 40.477810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437225, 38.439548, 40.383694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324593, -0.162223, -0.931839,
		-0.924436, -0.262878, -0.276250,
		-0.200146, 0.951094, -0.235293,
		36.377182, 38.724876, 40.313107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998093, 38.017670, 39.912300>,  <36.517284, 38.059113, 40.477810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998093, 38.017670, 39.912300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145306, 38.389076, 39.892647>,  <36.233631, 38.611919, 39.880856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145306, 38.389076, 39.892647>,  <35.998093, 38.017670, 39.912300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145306, 38.389076, 39.892647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172049, -0.119934, -0.977760,
		-0.913758, 0.351391, -0.203890,
		0.368029, 0.928515, -0.049134,
		36.255714, 38.667629, 39.877907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649216, 38.268982, 39.368114>,  <35.998093, 38.017670, 39.912300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649216, 38.268982, 39.368114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954082, 38.525063, 39.406578>,  <36.137005, 38.678711, 39.429657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954082, 38.525063, 39.406578>,  <35.649216, 38.268982, 39.368114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954082, 38.525063, 39.406578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122751, 0.002923, -0.992433,
		-0.635634, 0.768205, -0.076357,
		0.762169, 0.640197, 0.096156,
		36.182732, 38.717121, 39.435425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499435, 38.675018, 38.926403>,  <35.649216, 38.268982, 39.368114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499435, 38.675018, 38.926403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889854, 38.715965, 39.003189>,  <36.124107, 38.740532, 39.049263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889854, 38.715965, 39.003189>,  <35.499435, 38.675018, 38.926403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889854, 38.715965, 39.003189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188716, 0.040643, -0.981190,
		-0.108245, 0.993916, 0.020351,
		0.976048, 0.102369, 0.191967,
		36.182671, 38.746677, 39.060780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738708, 39.172661, 38.429031>,  <35.499435, 38.675018, 38.926403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738708, 39.172661, 38.429031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081219, 38.985912, 38.517418>,  <36.286724, 38.873863, 38.570450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081219, 38.985912, 38.517418>,  <35.738708, 39.172661, 38.429031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081219, 38.985912, 38.517418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225972, -0.046079, -0.973043,
		0.464470, 0.883123, 0.066044,
		0.856273, -0.466873, 0.220964,
		36.338100, 38.845852, 38.583706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260151, 39.581997, 38.264290>,  <35.738708, 39.172661, 38.429031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260151, 39.581997, 38.264290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406483, 39.209763, 38.258984>,  <36.494282, 38.986423, 38.255798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406483, 39.209763, 38.258984>,  <36.260151, 39.581997, 38.264290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406483, 39.209763, 38.258984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139453, 0.068908, -0.987828,
		0.920173, 0.359531, 0.154981,
		0.365834, -0.930586, -0.013270,
		36.516232, 38.930588, 38.255001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002106, 39.519958, 37.912468>,  <36.260151, 39.581997, 38.264290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002106, 39.519958, 37.912468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853653, 39.148865, 37.896614>,  <36.764580, 38.926208, 37.887100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853653, 39.148865, 37.896614>,  <37.002106, 39.519958, 37.912468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853653, 39.148865, 37.896614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291004, -0.075669, -0.953725,
		0.881804, -0.365492, 0.298057,
		-0.371132, -0.927734, -0.039634,
		36.742313, 38.870544, 37.884724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524860, 39.116646, 37.605530>,  <37.002106, 39.519958, 37.912468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524860, 39.116646, 37.605530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179867, 38.931522, 37.523617>,  <36.972870, 38.820450, 37.474468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179867, 38.931522, 37.523617>,  <37.524860, 39.116646, 37.605530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179867, 38.931522, 37.523617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297350, -0.135981, -0.945036,
		0.409524, -0.875967, 0.254897,
		-0.862481, -0.462809, -0.204782,
		36.921124, 38.792679, 37.462181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726204, 38.525963, 37.197586>,  <37.524860, 39.116646, 37.605530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726204, 38.525963, 37.197586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340237, 38.593460, 37.117123>,  <37.108658, 38.633957, 37.068844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340237, 38.593460, 37.117123>,  <37.726204, 38.525963, 37.197586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340237, 38.593460, 37.117123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177854, -0.143527, -0.973534,
		-0.193151, -0.975154, 0.108479,
		-0.964915, 0.168746, -0.201158,
		37.050762, 38.644081, 37.056774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114128, 37.876186, 36.956997>,  <37.726204, 38.525963, 37.197586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114128, 37.876186, 36.956997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508202, 37.851685, 36.892925>,  <38.744648, 37.836983, 36.854481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508202, 37.851685, 36.892925>,  <38.114128, 37.876186, 36.956997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508202, 37.851685, 36.892925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171307, 0.394890, 0.902616,
		0.007963, -0.916684, 0.399534,
		0.985185, -0.061255, -0.160178,
		38.803757, 37.833309, 36.844872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462315, 37.422691, 37.478321>,  <38.114128, 37.876186, 36.956997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462315, 37.422691, 37.478321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752655, 37.667625, 37.352985>,  <38.926861, 37.814587, 37.277782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752655, 37.667625, 37.352985>,  <38.462315, 37.422691, 37.478321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752655, 37.667625, 37.352985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107602, 0.348849, 0.930981,
		0.679380, -0.709473, 0.187325,
		0.725854, 0.612334, -0.313341,
		38.970413, 37.851326, 37.258984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112724, 37.234596, 37.880604>,  <38.462315, 37.422691, 37.478321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112724, 37.234596, 37.880604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116955, 37.615055, 37.757179>,  <39.119495, 37.843330, 37.683125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116955, 37.615055, 37.757179>,  <39.112724, 37.234596, 37.880604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116955, 37.615055, 37.757179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275651, 0.293845, 0.915244,
		0.961200, -0.094736, -0.259076,
		0.010579, 0.951147, -0.308558,
		39.120129, 37.900398, 37.664612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593777, 37.610050, 38.428364>,  <39.112724, 37.234596, 37.880604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593777, 37.610050, 38.428364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431992, 37.909218, 38.217834>,  <39.334919, 38.088718, 38.091515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431992, 37.909218, 38.217834>,  <39.593777, 37.610050, 38.428364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431992, 37.909218, 38.217834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167899, 0.626444, 0.761168,
		0.899009, 0.219497, -0.378951,
		-0.404466, 0.747923, -0.526326,
		39.310654, 38.133595, 38.059937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140366, 38.064877, 38.337040>,  <39.593777, 37.610050, 38.428364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140366, 38.064877, 38.337040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785675, 38.249538, 38.346687>,  <39.572861, 38.360336, 38.352474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785675, 38.249538, 38.346687>,  <40.140366, 38.064877, 38.337040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785675, 38.249538, 38.346687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313690, 0.562558, 0.764936,
		0.339570, 0.685858, -0.643654,
		-0.886730, 0.461657, 0.024119,
		39.519657, 38.388035, 38.353924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256493, 38.772545, 38.365070>,  <40.140366, 38.064877, 38.337040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256493, 38.772545, 38.365070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874268, 38.744789, 38.479679>,  <39.644932, 38.728134, 38.548443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874268, 38.744789, 38.479679>,  <40.256493, 38.772545, 38.365070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874268, 38.744789, 38.479679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200494, 0.559561, 0.804173,
		-0.216127, 0.825879, -0.520781,
		-0.955558, -0.069391, 0.286520,
		39.587601, 38.723972, 38.565636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103798, 39.351658, 38.790192>,  <40.256493, 38.772545, 38.365070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103798, 39.351658, 38.790192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790340, 39.120014, 38.880116>,  <39.602264, 38.981030, 38.934071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790340, 39.120014, 38.880116>,  <40.103798, 39.351658, 38.790192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790340, 39.120014, 38.880116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191688, 0.118802, 0.974239,
		-0.590898, 0.806547, 0.017910,
		-0.783642, -0.579109, 0.224805,
		39.555248, 38.946281, 38.947556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687397, 39.812405, 39.209423>,  <40.103798, 39.351658, 38.790192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687397, 39.812405, 39.209423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587090, 39.431858, 39.280991>,  <39.526905, 39.203529, 39.323933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587090, 39.431858, 39.280991>,  <39.687397, 39.812405, 39.209423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587090, 39.431858, 39.280991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023008, 0.190632, 0.981392,
		-0.967774, 0.241985, -0.069693,
		-0.250768, -0.951369, 0.178921,
		39.511860, 39.146446, 39.334667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066021, 39.938187, 39.615746>,  <39.687397, 39.812405, 39.209423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066021, 39.938187, 39.615746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192650, 39.563614, 39.676250>,  <39.268627, 39.338871, 39.712551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192650, 39.563614, 39.676250>,  <39.066021, 39.938187, 39.615746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192650, 39.563614, 39.676250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119197, 0.118925, 0.985722,
		-0.941049, -0.330082, -0.073971,
		0.316572, -0.936431, 0.151259,
		39.287621, 39.282684, 39.721630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606983, 39.680695, 40.104122>,  <39.066021, 39.938187, 39.615746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606983, 39.680695, 40.104122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928867, 39.443687, 40.118866>,  <39.121998, 39.301483, 40.127712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928867, 39.443687, 40.118866>,  <38.606983, 39.680695, 40.104122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928867, 39.443687, 40.118866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113547, -0.092666, 0.989202,
		-0.582706, -0.800208, -0.141848,
		0.804711, -0.592520, 0.036864,
		39.170280, 39.265930, 40.129925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361145, 39.063049, 40.431755>,  <38.606983, 39.680695, 40.104122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361145, 39.063049, 40.431755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755508, 39.102325, 40.485924>,  <38.992126, 39.125889, 40.518425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755508, 39.102325, 40.485924>,  <38.361145, 39.063049, 40.431755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755508, 39.102325, 40.485924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113953, -0.198437, 0.973467,
		0.122457, -0.975183, -0.184452,
		0.985910, 0.098189, 0.135425,
		39.051281, 39.131783, 40.526550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538250, 38.486069, 40.890553>,  <38.361145, 39.063049, 40.431755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538250, 38.486069, 40.890553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821434, 38.767654, 40.913296>,  <38.991344, 38.936604, 40.926941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821434, 38.767654, 40.913296>,  <38.538250, 38.486069, 40.890553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821434, 38.767654, 40.913296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115281, -0.194605, 0.974084,
		0.696782, -0.683056, -0.218925,
		0.707958, 0.703962, 0.056854,
		39.033821, 38.978844, 40.930351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975643, 38.095978, 41.351898>,  <38.538250, 38.486069, 40.890553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975643, 38.095978, 41.351898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083015, 38.480888, 41.369614>,  <39.147438, 38.711838, 41.380245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083015, 38.480888, 41.369614>,  <38.975643, 38.095978, 41.351898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083015, 38.480888, 41.369614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224897, -0.107312, 0.968455,
		0.936680, -0.249998, -0.245219,
		0.268427, 0.962281, 0.044293,
		39.163544, 38.769573, 41.382900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606899, 38.125824, 41.717766>,  <38.975643, 38.095978, 41.351898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606899, 38.125824, 41.717766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441589, 38.487827, 41.758087>,  <39.342403, 38.705029, 41.782280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441589, 38.487827, 41.758087>,  <39.606899, 38.125824, 41.717766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441589, 38.487827, 41.758087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137333, -0.047486, 0.989386,
		0.900190, 0.422733, -0.104663,
		-0.413276, 0.905009, 0.100802,
		39.317608, 38.759331, 41.788326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960011, 38.519344, 42.217125>,  <39.606899, 38.125824, 41.717766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960011, 38.519344, 42.217125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608017, 38.709084, 42.207142>,  <39.396820, 38.822929, 42.201153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608017, 38.709084, 42.207142>,  <39.960011, 38.519344, 42.217125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608017, 38.709084, 42.207142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070155, -0.077824, 0.994496,
		0.469799, 0.876889, 0.101761,
		-0.879981, 0.474352, -0.024956,
		39.344021, 38.851391, 42.199654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020573, 39.034336, 42.661961>,  <39.960011, 38.519344, 42.217125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020573, 39.034336, 42.661961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622002, 39.011021, 42.637547>,  <39.382858, 38.997032, 42.622898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622002, 39.011021, 42.637547>,  <40.020573, 39.034336, 42.661961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622002, 39.011021, 42.637547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061934, 0.013657, 0.997987,
		-0.057336, 0.998206, -0.017218,
		-0.996432, -0.058287, -0.061039,
		39.323071, 38.993534, 42.619236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785187, 39.535507, 43.074074>,  <40.020573, 39.034336, 42.661961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785187, 39.535507, 43.074074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.460590, 39.302723, 43.052898>,  <39.265831, 39.163052, 43.040195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.460590, 39.302723, 43.052898>,  <39.785187, 39.535507, 43.074074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460590, 39.302723, 43.052898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100731, 0.050077, 0.993653,
		-0.575615, 0.811674, -0.099259,
		-0.811493, -0.581960, -0.052936,
		39.217144, 39.128136, 43.037018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283901, 39.837654, 43.559635>,  <39.785187, 39.535507, 43.074074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283901, 39.837654, 43.559635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183792, 39.454891, 43.500732>,  <39.123726, 39.225231, 43.465389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183792, 39.454891, 43.500732>,  <39.283901, 39.837654, 43.559635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183792, 39.454891, 43.500732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150269, -0.111860, 0.982296,
		-0.956443, 0.267968, -0.115799,
		-0.250271, -0.956912, -0.147256,
		39.108711, 39.167816, 43.456554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.690933, 39.806763, 43.980907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814117, 39.434895, 43.900047>,  <38.888027, 39.211773, 43.851532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.814117, 39.434895, 43.900047>,  <38.690933, 39.806763, 43.980907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814117, 39.434895, 43.900047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140564, -0.254609, 0.956774,
		-0.940957, -0.266236, -0.209089,
		0.307963, -0.929673, -0.202153,
		38.906506, 39.155994, 43.839401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181530, 39.320930, 44.284592>,  <38.690933, 39.806763, 43.980907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181530, 39.320930, 44.284592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491383, 39.073532, 44.231808>,  <38.677292, 38.925095, 44.200138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491383, 39.073532, 44.231808>,  <38.181530, 39.320930, 44.284592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491383, 39.073532, 44.231808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077395, -0.114385, 0.990417,
		-0.627663, -0.777419, -0.040737,
		0.774629, -0.618495, -0.131964,
		38.723770, 38.887985, 44.192219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059853, 38.686687, 44.775246>,  <38.181530, 39.320930, 44.284592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059853, 38.686687, 44.775246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.449368, 38.658672, 44.688679>,  <38.683075, 38.641865, 44.636738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.449368, 38.658672, 44.688679>,  <38.059853, 38.686687, 44.775246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449368, 38.658672, 44.688679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180995, -0.337689, 0.923692,
		-0.137771, -0.938649, -0.316161,
		0.973787, -0.070035, -0.216414,
		38.741505, 38.637661, 44.623753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268311, 38.038261, 45.053493>,  <38.059853, 38.686687, 44.775246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268311, 38.038261, 45.053493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598034, 38.256752, 44.993965>,  <38.795868, 38.387848, 44.958248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598034, 38.256752, 44.993965>,  <38.268311, 38.038261, 45.053493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598034, 38.256752, 44.993965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273891, -0.154705, 0.949236,
		0.495475, -0.823227, -0.277131,
		0.824311, 0.546227, -0.148822,
		38.845325, 38.420620, 44.949318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849560, 37.675556, 45.279102>,  <38.268311, 38.038261, 45.053493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849560, 37.675556, 45.279102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986221, 38.050774, 45.302273>,  <39.068218, 38.275902, 45.316174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986221, 38.050774, 45.302273>,  <38.849560, 37.675556, 45.279102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986221, 38.050774, 45.302273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405333, -0.202675, 0.891419,
		0.847926, -0.281079, -0.449463,
		0.341654, 0.938039, 0.057923,
		39.088718, 38.332184, 45.319649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423199, 37.596184, 45.567196>,  <38.849560, 37.675556, 45.279102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423199, 37.596184, 45.567196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354912, 37.985798, 45.626667>,  <39.313938, 38.219566, 45.662350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354912, 37.985798, 45.626667>,  <39.423199, 37.596184, 45.567196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354912, 37.985798, 45.626667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434740, -0.060947, 0.898491,
		0.884227, 0.218021, -0.413049,
		-0.170716, 0.974039, 0.148674,
		39.303696, 38.278011, 45.671268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080273, 37.807968, 45.843327>,  <39.423199, 37.596184, 45.567196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080273, 37.807968, 45.843327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819153, 38.093388, 45.945076>,  <39.662479, 38.264637, 46.006126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819153, 38.093388, 45.945076>,  <40.080273, 37.807968, 45.843327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819153, 38.093388, 45.945076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359807, -0.003438, 0.933021,
		0.666627, 0.700601, -0.254494,
		-0.652800, 0.713545, 0.254373,
		39.623314, 38.307449, 46.021389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484119, 38.313660, 46.335476>,  <40.080273, 37.807968, 45.843327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484119, 38.313660, 46.335476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095200, 38.352806, 46.420376>,  <39.861847, 38.376293, 46.471317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095200, 38.352806, 46.420376>,  <40.484119, 38.313660, 46.335476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095200, 38.352806, 46.420376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215044, 0.018837, 0.976423,
		0.091561, 0.995021, -0.039361,
		-0.972303, 0.097867, 0.212249,
		39.803509, 38.382168, 46.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330849, 38.824394, 46.946915>,  <40.484119, 38.313660, 46.335476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330849, 38.824394, 46.946915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004623, 38.592995, 46.952663>,  <39.808887, 38.454155, 46.956112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004623, 38.592995, 46.952663>,  <40.330849, 38.824394, 46.946915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004623, 38.592995, 46.952663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197921, -0.255525, 0.946327,
		-0.543774, 0.774629, 0.322893,
		-0.815559, -0.578495, 0.014367,
		39.759956, 38.419445, 46.956974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125431, 38.854671, 47.596199>,  <40.330849, 38.824394, 46.946915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125431, 38.854671, 47.596199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910744, 38.536030, 47.484951>,  <39.781929, 38.344845, 47.418201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910744, 38.536030, 47.484951>,  <40.125431, 38.854671, 47.596199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910744, 38.536030, 47.484951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196362, -0.438500, 0.877017,
		-0.820591, 0.416103, 0.391776,
		-0.536723, -0.796603, -0.278123,
		39.749725, 38.297050, 47.401516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793270, 38.700977, 48.274651>,  <40.125431, 38.854671, 47.596199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793270, 38.700977, 48.274651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776814, 38.379669, 48.036976>,  <39.766941, 38.186882, 47.894371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776814, 38.379669, 48.036976>,  <39.793270, 38.700977, 48.274651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776814, 38.379669, 48.036976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094557, -0.595150, 0.798032,
		-0.994669, -0.023354, 0.100439,
		-0.041139, -0.803275, -0.594186,
		39.764473, 38.138687, 47.858719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324333, 38.332603, 48.560532>,  <39.793270, 38.700977, 48.274651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324333, 38.332603, 48.560532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548454, 38.081490, 48.344398>,  <39.682926, 37.930820, 48.214718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548454, 38.081490, 48.344398>,  <39.324333, 38.332603, 48.560532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548454, 38.081490, 48.344398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190583, -0.537128, 0.821688,
		-0.806065, -0.563370, -0.181309,
		0.560301, -0.627780, -0.540329,
		39.716545, 37.893154, 48.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018929, 37.623646, 48.550114>,  <39.324333, 38.332603, 48.560532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018929, 37.623646, 48.550114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408813, 37.570015, 48.478603>,  <39.642742, 37.537834, 48.435696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408813, 37.570015, 48.478603>,  <39.018929, 37.623646, 48.550114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408813, 37.570015, 48.478603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063513, -0.600804, 0.796869,
		-0.214256, -0.788072, -0.577094,
		0.974711, -0.134081, -0.178778,
		39.701225, 37.529789, 48.424969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098862, 37.005634, 48.650070>,  <39.018929, 37.623646, 48.550114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098862, 37.005634, 48.650070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474930, 37.140896, 48.666702>,  <39.700573, 37.222054, 48.676682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474930, 37.140896, 48.666702>,  <39.098862, 37.005634, 48.650070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474930, 37.140896, 48.666702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208081, -0.666548, 0.715832,
		0.269776, -0.664354, -0.697033,
		0.940172, 0.338153, 0.041579,
		39.756981, 37.242340, 48.679176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516361, 36.362335, 48.648518>,  <39.098862, 37.005634, 48.650070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516361, 36.362335, 48.648518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.746666, 36.666004, 48.769951>,  <39.884850, 36.848206, 48.842812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.746666, 36.666004, 48.769951>,  <39.516361, 36.362335, 48.648518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746666, 36.666004, 48.769951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265550, -0.524802, 0.808744,
		0.773295, -0.385025, -0.503757,
		0.575759, 0.759170, 0.303583,
		39.919395, 36.893757, 48.861027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111309, 36.082340, 48.854706>,  <39.516361, 36.362335, 48.648518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111309, 36.082340, 48.854706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102745, 36.434574, 49.044067>,  <40.097607, 36.645916, 49.157684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102745, 36.434574, 49.044067>,  <40.111309, 36.082340, 48.854706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102745, 36.434574, 49.044067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332322, -0.440323, 0.834073,
		0.942923, 0.175179, -0.283211,
		-0.021408, 0.880584, 0.473407,
		40.096321, 36.698750, 49.186089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706318, 36.048752, 49.282063>,  <40.111309, 36.082340, 48.854706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706318, 36.048752, 49.282063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511482, 36.348740, 49.461075>,  <40.394581, 36.528732, 49.568481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511482, 36.348740, 49.461075>,  <40.706318, 36.048752, 49.282063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511482, 36.348740, 49.461075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132657, -0.442953, 0.886676,
		0.863221, 0.491256, 0.116266,
		-0.487085, 0.749974, 0.447535,
		40.365356, 36.573730, 49.595337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080673, 36.246571, 49.830845>,  <40.706318, 36.048752, 49.282063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080673, 36.246571, 49.830845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720387, 36.392448, 49.925259>,  <40.504215, 36.479973, 49.981907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720387, 36.392448, 49.925259>,  <41.080673, 36.246571, 49.830845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720387, 36.392448, 49.925259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080912, -0.392994, 0.915974,
		0.426809, 0.844130, 0.324468,
		-0.900715, 0.364693, 0.236033,
		40.450172, 36.501858, 49.996067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088455, 36.562523, 50.469822>,  <41.080673, 36.246571, 49.830845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088455, 36.562523, 50.469822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693573, 36.498913, 50.465137>,  <40.456642, 36.460747, 50.462326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693573, 36.498913, 50.465137>,  <41.088455, 36.562523, 50.469822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693573, 36.498913, 50.465137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025766, -0.231584, 0.972474,
		-0.157363, 0.959729, 0.232718,
		-0.987205, -0.159028, -0.011714,
		40.397411, 36.451206, 50.461624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931225, 36.992523, 51.064007>,  <41.088455, 36.562523, 50.469822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931225, 36.992523, 51.064007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.660027, 36.720585, 50.952194>,  <40.497307, 36.557423, 50.885109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.660027, 36.720585, 50.952194>,  <40.931225, 36.992523, 51.064007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660027, 36.720585, 50.952194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035234, -0.349781, 0.936168,
		-0.734220, 0.644568, 0.213197,
		-0.677996, -0.679842, -0.279527,
		40.456627, 36.516632, 50.868336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249458, 37.156334, 51.408714>,  <40.931225, 36.992523, 51.064007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249458, 37.156334, 51.408714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218792, 36.769714, 51.310814>,  <40.200390, 36.537743, 51.252075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218792, 36.769714, 51.310814>,  <40.249458, 37.156334, 51.408714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218792, 36.769714, 51.310814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263730, -0.217073, 0.939854,
		-0.961545, 0.136606, -0.238265,
		-0.076669, -0.966550, -0.244752,
		40.195793, 36.479748, 51.237389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634113, 36.863533, 51.691154>,  <40.249458, 37.156334, 51.408714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634113, 36.863533, 51.691154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.866165, 36.538002, 51.677673>,  <40.005394, 36.342682, 51.669582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.866165, 36.538002, 51.677673>,  <39.634113, 36.863533, 51.691154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866165, 36.538002, 51.677673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126096, -0.130614, 0.983382,
		-0.804706, -0.566236, -0.178393,
		0.580127, -0.813828, -0.033706,
		40.040203, 36.293854, 51.667561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223202, 36.258949, 51.957428>,  <39.634113, 36.863533, 51.691154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223202, 36.258949, 51.957428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617287, 36.208927, 52.004284>,  <39.853737, 36.178913, 52.032398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617287, 36.208927, 52.004284>,  <39.223202, 36.258949, 51.957428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617287, 36.208927, 52.004284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138251, -0.176270, 0.974585,
		-0.101230, -0.976366, -0.190952,
		0.985210, -0.125057, 0.117140,
		39.912849, 36.171410, 52.039425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986855, 35.667942, 51.698807>,  <39.223202, 36.258949, 51.957428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986855, 35.667942, 51.698807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799736, 35.322033, 51.771828>,  <38.687466, 35.114487, 51.815639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799736, 35.322033, 51.771828>,  <38.986855, 35.667942, 51.698807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799736, 35.322033, 51.771828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747158, 0.276597, -0.604358,
		0.472143, -0.419110, -0.775518,
		-0.467799, -0.864778, 0.182548,
		38.659397, 35.062599, 51.826591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946884, 35.235039, 51.114410>,  <38.986855, 35.667942, 51.698807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946884, 35.235039, 51.114410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636021, 35.168118, 51.357071>,  <38.449501, 35.127964, 51.502666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636021, 35.168118, 51.357071>,  <38.946884, 35.235039, 51.114410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636021, 35.168118, 51.357071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628759, 0.166439, -0.759579,
		0.026110, -0.971755, -0.234545,
		-0.777162, -0.167305, 0.606654,
		38.402874, 35.117928, 51.539066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438179, 34.739956, 50.793369>,  <38.946884, 35.235039, 51.114410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438179, 34.739956, 50.793369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218124, 34.952759, 51.050842>,  <38.086094, 35.080441, 51.205326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218124, 34.952759, 51.050842>,  <38.438179, 34.739956, 50.793369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218124, 34.952759, 51.050842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605061, 0.277307, -0.746326,
		-0.575546, -0.800045, 0.169339,
		-0.550135, 0.532005, 0.643679,
		38.053085, 35.112362, 51.243946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739502, 34.591854, 50.733856>,  <38.438179, 34.739956, 50.793369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739502, 34.591854, 50.733856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777927, 34.955708, 50.895519>,  <37.800983, 35.174019, 50.992519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777927, 34.955708, 50.895519>,  <37.739502, 34.591854, 50.733856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777927, 34.955708, 50.895519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382140, 0.408627, -0.828851,
		-0.919098, -0.074823, 0.386860,
		0.096064, 0.909629, 0.404161,
		37.806747, 35.228596, 51.016769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018009, 34.754593, 50.762177>,  <37.739502, 34.591854, 50.733856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018009, 34.754593, 50.762177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230232, 35.091599, 50.799446>,  <37.357567, 35.293800, 50.821808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230232, 35.091599, 50.799446>,  <37.018009, 34.754593, 50.762177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230232, 35.091599, 50.799446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507013, 0.403517, -0.761651,
		-0.679298, 0.356859, 0.641254,
		0.530558, 0.842512, 0.093176,
		37.389400, 35.344353, 50.827400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567337, 35.346657, 50.657280>,  <37.018009, 34.754593, 50.762177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567337, 35.346657, 50.657280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933468, 35.489922, 50.583633>,  <37.153145, 35.575882, 50.539444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933468, 35.489922, 50.583633>,  <36.567337, 35.346657, 50.657280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933468, 35.489922, 50.583633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345668, 0.464156, -0.815520,
		-0.206631, 0.810109, 0.548659,
		0.915324, 0.358165, -0.184119,
		37.208065, 35.597370, 50.528397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392319, 35.959156, 50.541370>,  <36.567337, 35.346657, 50.657280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392319, 35.959156, 50.541370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758255, 35.915665, 50.385811>,  <36.977818, 35.889572, 50.292477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758255, 35.915665, 50.385811>,  <36.392319, 35.959156, 50.541370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758255, 35.915665, 50.385811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301999, 0.455103, -0.837662,
		0.268064, 0.883776, 0.383513,
		0.914843, -0.108727, -0.388896,
		37.032707, 35.883045, 50.269142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625183, 36.630390, 50.343681>,  <36.392319, 35.959156, 50.541370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625183, 36.630390, 50.343681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855251, 36.383644, 50.128773>,  <36.993290, 36.235596, 49.999828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855251, 36.383644, 50.128773>,  <36.625183, 36.630390, 50.343681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855251, 36.383644, 50.128773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167963, 0.553732, -0.815579,
		0.800608, 0.559335, 0.214877,
		0.575166, -0.616868, -0.537269,
		37.027802, 36.198586, 49.967590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870010, 37.031948, 49.906837>,  <36.625183, 36.630390, 50.343681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870010, 37.031948, 49.906837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988358, 36.691082, 49.734203>,  <37.059368, 36.486561, 49.630623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988358, 36.691082, 49.734203>,  <36.870010, 37.031948, 49.906837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988358, 36.691082, 49.734203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079570, 0.428261, -0.900145,
		0.951908, 0.300667, 0.058903,
		0.295870, -0.852169, -0.431589,
		37.077118, 36.435432, 49.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366367, 37.212025, 49.445751>,  <36.870010, 37.031948, 49.906837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366367, 37.212025, 49.445751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214806, 36.864033, 49.319534>,  <37.123871, 36.655239, 49.243805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214806, 36.864033, 49.319534>,  <37.366367, 37.212025, 49.445751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214806, 36.864033, 49.319534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079100, 0.370164, -0.925592,
		0.922051, -0.325747, -0.209071,
		-0.378900, -0.869981, -0.315544,
		37.101135, 36.603039, 49.224873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737518, 36.994125, 48.893593>,  <37.366367, 37.212025, 49.445751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737518, 36.994125, 48.893593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.368355, 36.842258, 48.867992>,  <37.146858, 36.751141, 48.852631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.368355, 36.842258, 48.867992>,  <37.737518, 36.994125, 48.893593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368355, 36.842258, 48.867992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099387, 0.395521, -0.913064,
		0.371963, -0.836316, -0.402764,
		-0.922912, -0.379655, -0.064000,
		37.091484, 36.728359, 48.848793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706299, 36.667469, 48.283730>,  <37.737518, 36.994125, 48.893593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706299, 36.667469, 48.283730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322964, 36.739933, 48.372074>,  <37.092964, 36.783409, 48.425079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322964, 36.739933, 48.372074>,  <37.706299, 36.667469, 48.283730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322964, 36.739933, 48.372074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123094, 0.435803, -0.891585,
		-0.257767, -0.881622, -0.395346,
		-0.958334, 0.181156, 0.220858,
		37.035465, 36.794281, 48.438332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385330, 36.413296, 47.732410>,  <37.706299, 36.667469, 48.283730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385330, 36.413296, 47.732410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124668, 36.658447, 47.911175>,  <36.968273, 36.805538, 48.018433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124668, 36.658447, 47.911175>,  <37.385330, 36.413296, 47.732410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124668, 36.658447, 47.911175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097819, 0.516366, -0.850763,
		-0.752183, -0.598118, -0.276541,
		-0.651653, 0.612879, 0.446909,
		36.929173, 36.842312, 48.045246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890224, 36.546078, 47.243084>,  <37.385330, 36.413296, 47.732410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890224, 36.546078, 47.243084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797752, 36.832333, 47.506725>,  <36.742268, 37.004086, 47.664909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797752, 36.832333, 47.506725>,  <36.890224, 36.546078, 47.243084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797752, 36.832333, 47.506725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015771, 0.680122, -0.732930,
		-0.972783, -0.159044, -0.168517,
		-0.231180, 0.715639, 0.659103,
		36.728397, 37.047024, 47.704456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322132, 36.773155, 46.953671>,  <36.890224, 36.546078, 47.243084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322132, 36.773155, 46.953671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479359, 37.053265, 47.192039>,  <36.573696, 37.221329, 47.335060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479359, 37.053265, 47.192039>,  <36.322132, 36.773155, 46.953671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479359, 37.053265, 47.192039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012797, 0.643855, -0.765040,
		-0.919420, 0.308339, 0.244119,
		0.393069, 0.700269, 0.595919,
		36.597279, 37.263344, 47.370815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027180, 37.400467, 46.668812>,  <36.322132, 36.773155, 46.953671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027180, 37.400467, 46.668812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.335869, 37.495178, 46.904907>,  <36.521084, 37.552006, 47.046562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.335869, 37.495178, 46.904907>,  <36.027180, 37.400467, 46.668812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335869, 37.495178, 46.904907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111378, 0.863439, -0.492004,
		-0.626130, 0.445430, 0.639963,
		0.771723, 0.236781, 0.590236,
		36.567387, 37.566212, 47.081978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924896, 38.054005, 46.873001>,  <36.027180, 37.400467, 46.668812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924896, 38.054005, 46.873001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317604, 38.043198, 46.948257>,  <36.553230, 38.036713, 46.993412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317604, 38.043198, 46.948257>,  <35.924896, 38.054005, 46.873001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317604, 38.043198, 46.948257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110358, 0.886948, -0.448492,
		-0.154752, 0.461079, 0.873761,
		0.981770, -0.027022, 0.188140,
		36.612137, 38.035091, 47.004700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058079, 38.678097, 47.093857>,  <35.924896, 38.054005, 46.873001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058079, 38.678097, 47.093857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404469, 38.551193, 46.939228>,  <36.612301, 38.475052, 46.846451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404469, 38.551193, 46.939228>,  <36.058079, 38.678097, 47.093857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404469, 38.551193, 46.939228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018478, 0.792776, -0.609233,
		0.499746, 0.520437, 0.692386,
		0.865975, -0.317256, -0.386570,
		36.664261, 38.456017, 46.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395313, 39.321594, 46.933041>,  <36.058079, 38.678097, 47.093857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395313, 39.321594, 46.933041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569965, 39.028801, 46.723831>,  <36.674755, 38.853127, 46.598305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569965, 39.028801, 46.723831>,  <36.395313, 39.321594, 46.933041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569965, 39.028801, 46.723831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027742, 0.592047, -0.805426,
		0.899214, 0.337162, 0.278812,
		0.436629, -0.731985, -0.523023,
		36.700954, 38.809204, 46.566925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752026, 39.636002, 46.419853>,  <36.395313, 39.321594, 46.933041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752026, 39.636002, 46.419853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701393, 39.270710, 46.264935>,  <36.671013, 39.051537, 46.171986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701393, 39.270710, 46.264935>,  <36.752026, 39.636002, 46.419853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701393, 39.270710, 46.264935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127680, 0.402185, -0.906612,
		0.983705, -0.065311, -0.167510,
		-0.126582, -0.913226, -0.387292,
		36.663418, 38.996742, 46.148746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253639, 39.624237, 45.867081>,  <36.752026, 39.636002, 46.419853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253639, 39.624237, 45.867081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977509, 39.340031, 45.812508>,  <36.811829, 39.169506, 45.779766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977509, 39.340031, 45.812508>,  <37.253639, 39.624237, 45.867081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977509, 39.340031, 45.812508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174496, 0.346514, -0.921672,
		0.702135, -0.612453, -0.363191,
		-0.690331, -0.710514, -0.136429,
		36.770409, 39.126877, 45.771580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.033928, 38.979168, 28.947367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745205, 38.976227, 28.670544>,  <43.571972, 38.974461, 28.504450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745205, 38.976227, 28.670544>,  <44.033928, 38.979168, 28.947367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745205, 38.976227, 28.670544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516758, -0.659443, 0.545981,
		-0.460386, 0.751718, 0.472191,
		-0.721807, -0.007354, -0.692055,
		43.528664, 38.974022, 28.462927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403286, 39.277435, 29.228794>,  <44.033928, 38.979168, 28.947367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403286, 39.277435, 29.228794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347321, 39.006699, 28.939711>,  <43.313740, 38.844257, 28.766260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347321, 39.006699, 28.939711>,  <43.403286, 39.277435, 29.228794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347321, 39.006699, 28.939711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477691, -0.593193, 0.648023,
		-0.867315, 0.435898, -0.240326,
		-0.139912, -0.676841, -0.722710,
		43.305347, 38.803646, 28.722897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680511, 39.042610, 29.300703>,  <43.403286, 39.277435, 29.228794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680511, 39.042610, 29.300703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854610, 38.770248, 29.065098>,  <42.959068, 38.606831, 28.923735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854610, 38.770248, 29.065098>,  <42.680511, 39.042610, 29.300703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854610, 38.770248, 29.065098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343902, -0.730357, 0.590178,
		-0.832043, -0.054309, -0.552047,
		0.435243, -0.680903, -0.589011,
		42.985184, 38.565979, 28.888395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097958, 38.605240, 29.113934>,  <42.680511, 39.042610, 29.300703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097958, 38.605240, 29.113934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422985, 38.383671, 29.041368>,  <42.618000, 38.250729, 28.997829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422985, 38.383671, 29.041368>,  <42.097958, 38.605240, 29.113934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422985, 38.383671, 29.041368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412097, -0.766068, 0.493270,
		-0.412207, -0.326055, -0.850749,
		0.812565, -0.553920, -0.181412,
		42.666756, 38.217495, 28.986944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834217, 37.971790, 28.962456>,  <42.097958, 38.605240, 29.113934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834217, 37.971790, 28.962456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.208004, 37.873299, 29.065327>,  <42.432278, 37.814201, 29.127050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.208004, 37.873299, 29.065327>,  <41.834217, 37.971790, 28.962456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208004, 37.873299, 29.065327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352296, -0.744058, 0.567684,
		0.051573, -0.621085, -0.782045,
		0.934466, -0.246234, 0.257179,
		42.488342, 37.799427, 29.142481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842503, 37.177032, 28.963001>,  <41.834217, 37.971790, 28.962456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842503, 37.177032, 28.963001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139549, 37.329624, 29.183182>,  <42.317776, 37.421181, 29.315290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139549, 37.329624, 29.183182>,  <41.842503, 37.177032, 28.963001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139549, 37.329624, 29.183182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197533, -0.660581, 0.724302,
		0.639926, -0.646609, -0.415201,
		0.742613, 0.381484, 0.550450,
		42.362335, 37.444069, 29.348316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191254, 36.550240, 29.333887>,  <41.842503, 37.177032, 28.963001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191254, 36.550240, 29.333887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379295, 36.830334, 29.548803>,  <42.492119, 36.998390, 29.677753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379295, 36.830334, 29.548803>,  <42.191254, 36.550240, 29.333887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379295, 36.830334, 29.548803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009115, -0.612569, 0.790364,
		0.882566, -0.366653, -0.294352,
		0.470100, 0.700232, 0.537291,
		42.520325, 37.040401, 29.709991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680473, 36.250023, 29.710350>,  <42.191254, 36.550240, 29.333887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680473, 36.250023, 29.710350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630970, 36.589607, 29.915852>,  <42.601269, 36.793358, 30.039152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630970, 36.589607, 29.915852>,  <42.680473, 36.250023, 29.710350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630970, 36.589607, 29.915852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056927, -0.522957, 0.850456,
		0.990678, 0.076007, 0.113050,
		-0.123761, 0.848963, 0.513755,
		42.593842, 36.844296, 30.069979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353500, 36.279507, 30.126318>,  <42.680473, 36.250023, 29.710350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353500, 36.279507, 30.126318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026794, 36.463871, 30.265144>,  <42.830772, 36.574490, 30.348440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026794, 36.463871, 30.265144>,  <43.353500, 36.279507, 30.126318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026794, 36.463871, 30.265144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039853, -0.555031, 0.830874,
		0.575592, 0.692461, 0.434962,
		-0.816765, 0.460910, 0.347068,
		42.781765, 36.602142, 30.369265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527267, 36.314320, 30.774462>,  <43.353500, 36.279507, 30.126318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527267, 36.314320, 30.774462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140202, 36.412121, 30.799282>,  <42.907963, 36.470802, 30.814175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140202, 36.412121, 30.799282>,  <43.527267, 36.314320, 30.774462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140202, 36.412121, 30.799282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078052, -0.524129, 0.848055,
		0.239873, 0.815787, 0.526263,
		-0.967661, 0.244502, 0.062051,
		42.849903, 36.485470, 30.817898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401012, 36.407932, 31.455339>,  <43.527267, 36.314320, 30.774462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401012, 36.407932, 31.455339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.029671, 36.375595, 31.310215>,  <42.806866, 36.356194, 31.223141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.029671, 36.375595, 31.310215>,  <43.401012, 36.407932, 31.455339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029671, 36.375595, 31.310215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299193, -0.416667, 0.858413,
		-0.220567, 0.905457, 0.362625,
		-0.928350, -0.080843, -0.362810,
		42.751167, 36.351341, 31.201372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015610, 36.762783, 31.927496>,  <43.401012, 36.407932, 31.455339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015610, 36.762783, 31.927496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795822, 36.485443, 31.741014>,  <42.663952, 36.319038, 31.629126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795822, 36.485443, 31.741014>,  <43.015610, 36.762783, 31.927496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795822, 36.485443, 31.741014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355199, -0.311205, 0.881467,
		-0.756255, 0.649932, -0.075282,
		-0.549466, -0.693354, -0.466206,
		42.630981, 36.277435, 31.601152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272179, 36.915302, 32.071918>,  <43.015610, 36.762783, 31.927496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272179, 36.915302, 32.071918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.323334, 36.524685, 32.002617>,  <42.354027, 36.290314, 31.961037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.323334, 36.524685, 32.002617>,  <42.272179, 36.915302, 32.071918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323334, 36.524685, 32.002617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304846, -0.204936, 0.930091,
		-0.943776, -0.066130, -0.323903,
		0.127887, -0.976539, -0.173255,
		42.361698, 36.231724, 31.950640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834679, 36.658504, 32.488297>,  <42.272179, 36.915302, 32.071918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834679, 36.658504, 32.488297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002781, 36.309071, 32.390118>,  <42.103642, 36.099411, 32.331211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002781, 36.309071, 32.390118>,  <41.834679, 36.658504, 32.488297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002781, 36.309071, 32.390118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296875, -0.387974, 0.872549,
		-0.857469, -0.293824, -0.422391,
		0.420253, -0.873581, -0.245446,
		42.128857, 36.046997, 32.316483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349823, 36.054108, 32.708126>,  <41.834679, 36.658504, 32.488297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349823, 36.054108, 32.708126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.723148, 35.911293, 32.692883>,  <41.947144, 35.825603, 32.683739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.723148, 35.911293, 32.692883>,  <41.349823, 36.054108, 32.708126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723148, 35.911293, 32.692883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134400, -0.445786, 0.884993,
		-0.332958, -0.820855, -0.464043,
		0.933314, -0.357033, -0.038105,
		42.003143, 35.804184, 32.681450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320919, 35.400120, 32.815605>,  <41.349823, 36.054108, 32.708126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320919, 35.400120, 32.815605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705299, 35.457371, 32.910336>,  <41.935928, 35.491722, 32.967175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705299, 35.457371, 32.910336>,  <41.320919, 35.400120, 32.815605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705299, 35.457371, 32.910336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167819, -0.379059, 0.910028,
		0.220024, -0.914236, -0.340237,
		0.960950, 0.143130, 0.236828,
		41.993584, 35.500309, 32.981384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580940, 34.830231, 33.214821>,  <41.320919, 35.400120, 32.815605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580940, 34.830231, 33.214821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.838680, 35.122158, 33.306190>,  <41.993324, 35.297314, 33.361012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.838680, 35.122158, 33.306190>,  <41.580940, 34.830231, 33.214821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838680, 35.122158, 33.306190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086044, -0.227615, 0.969942,
		0.759875, -0.644637, -0.083867,
		0.644350, 0.729819, 0.228426,
		42.031986, 35.341103, 33.374718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056454, 34.515545, 33.618488>,  <41.580940, 34.830231, 33.214821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056454, 34.515545, 33.618488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093307, 34.900425, 33.720997>,  <42.115421, 35.131355, 33.782501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093307, 34.900425, 33.720997>,  <42.056454, 34.515545, 33.618488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093307, 34.900425, 33.720997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182853, -0.269341, 0.945526,
		0.978814, -0.040254, -0.200757,
		0.092133, 0.962203, 0.256274,
		42.120949, 35.189087, 33.797878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529922, 34.509605, 34.063622>,  <42.056454, 34.515545, 33.618488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529922, 34.509605, 34.063622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321686, 34.845818, 34.123611>,  <42.196743, 35.047546, 34.159607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321686, 34.845818, 34.123611>,  <42.529922, 34.509605, 34.063622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321686, 34.845818, 34.123611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143703, -0.259406, 0.955017,
		0.841625, 0.475624, 0.255831,
		-0.520593, 0.840530, 0.149974,
		42.165508, 35.097977, 34.168602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842133, 34.786320, 34.642967>,  <42.529922, 34.509605, 34.063622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842133, 34.786320, 34.642967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508526, 35.007004, 34.640457>,  <42.308361, 35.139416, 34.638950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508526, 35.007004, 34.640457>,  <42.842133, 34.786320, 34.642967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508526, 35.007004, 34.640457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128601, -0.183323, 0.974605,
		0.536550, 0.813639, 0.223844,
		-0.834012, 0.551710, -0.006273,
		42.258324, 35.172516, 34.638577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890606, 35.329323, 35.156666>,  <42.842133, 34.786320, 34.642967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890606, 35.329323, 35.156666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500710, 35.266273, 35.093369>,  <42.266773, 35.228443, 35.055389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500710, 35.266273, 35.093369>,  <42.890606, 35.329323, 35.156666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500710, 35.266273, 35.093369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118956, -0.233273, 0.965108,
		-0.189036, 0.959551, 0.208630,
		-0.974738, -0.157622, -0.158242,
		42.208286, 35.218987, 35.045895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540596, 35.197063, 35.652424>,  <42.890606, 35.329323, 35.156666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540596, 35.197063, 35.652424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939072, 35.210484, 35.684612>,  <44.178158, 35.218536, 35.703926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939072, 35.210484, 35.684612>,  <43.540596, 35.197063, 35.652424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939072, 35.210484, 35.684612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018741, 0.818986, -0.573508,
		-0.085144, 0.572832, 0.815238,
		0.996192, 0.033553, 0.080467,
		44.237930, 35.220551, 35.708752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745316, 35.862072, 35.951836>,  <43.540596, 35.197063, 35.652424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745316, 35.862072, 35.951836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043514, 35.709190, 35.733418>,  <44.222431, 35.617462, 35.602367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043514, 35.709190, 35.733418>,  <43.745316, 35.862072, 35.951836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043514, 35.709190, 35.733418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005066, 0.822479, -0.568773,
		0.666494, 0.421250, 0.615089,
		0.745493, -0.382200, -0.546043,
		44.267162, 35.594532, 35.569603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158016, 36.494858, 35.875511>,  <43.745316, 35.862072, 35.951836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158016, 36.494858, 35.875511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292923, 36.241467, 35.596954>,  <44.373867, 36.089432, 35.429821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292923, 36.241467, 35.596954>,  <44.158016, 36.494858, 35.875511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292923, 36.241467, 35.596954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361204, 0.770192, -0.525676,
		0.869358, -0.074246, 0.488573,
		0.337266, -0.633476, -0.696391,
		44.394104, 36.051422, 35.388039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877361, 36.677002, 35.625504>,  <44.158016, 36.494858, 35.875511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877361, 36.677002, 35.625504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756916, 36.453583, 35.316349>,  <44.684647, 36.319530, 35.130856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756916, 36.453583, 35.316349>,  <44.877361, 36.677002, 35.625504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756916, 36.453583, 35.316349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366933, 0.680231, -0.634544,
		0.880165, -0.474669, 0.000121,
		-0.301116, -0.558547, -0.772887,
		44.666580, 36.286018, 35.084484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330906, 36.827824, 35.167103>,  <44.877361, 36.677002, 35.625504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330906, 36.827824, 35.167103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999825, 36.683903, 34.994846>,  <44.801174, 36.597549, 34.891495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999825, 36.683903, 34.994846>,  <45.330906, 36.827824, 35.167103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999825, 36.683903, 34.994846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115427, 0.641829, -0.758111,
		0.549163, -0.677200, -0.489715,
		-0.827706, -0.359799, -0.430636,
		44.751514, 36.575962, 34.865654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454105, 36.674881, 34.390060>,  <45.330906, 36.827824, 35.167103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454105, 36.674881, 34.390060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057880, 36.719524, 34.421890>,  <44.820145, 36.746311, 34.440990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057880, 36.719524, 34.421890>,  <45.454105, 36.674881, 34.390060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057880, 36.719524, 34.421890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017291, 0.474172, -0.880262,
		-0.135977, -0.873330, -0.467767,
		-0.990561, 0.111607, 0.079577,
		44.760712, 36.753006, 34.445763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384495, 36.841125, 33.756332>,  <45.454105, 36.674881, 34.390060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384495, 36.841125, 33.756332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.023521, 36.925556, 33.906563>,  <44.806938, 36.976215, 33.996700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.023521, 36.925556, 33.906563>,  <45.384495, 36.841125, 33.756332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023521, 36.925556, 33.906563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180734, 0.605862, -0.774768,
		-0.391081, -0.767058, -0.508604,
		-0.902436, 0.211075, 0.375574,
		44.752792, 36.988880, 34.019234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982330, 36.744835, 33.193653>,  <45.384495, 36.841125, 33.756332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982330, 36.744835, 33.193653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800858, 36.970592, 33.469517>,  <44.691975, 37.106049, 33.635036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800858, 36.970592, 33.469517>,  <44.982330, 36.744835, 33.193653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800858, 36.970592, 33.469517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241661, 0.666971, -0.704805,
		-0.857772, -0.486420, -0.166199,
		-0.453681, 0.564398, 0.689658,
		44.664753, 37.139912, 33.676414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277508, 36.859818, 33.018890>,  <44.982330, 36.744835, 33.193653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277508, 36.859818, 33.018890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346210, 37.154160, 33.280888>,  <44.387432, 37.330765, 33.438087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346210, 37.154160, 33.280888>,  <44.277508, 36.859818, 33.018890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346210, 37.154160, 33.280888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173157, 0.677077, -0.715251,
		-0.969802, 0.009433, 0.243711,
		0.171758, 0.735852, 0.654997,
		44.397739, 37.374916, 33.477386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709332, 37.269772, 33.090809>,  <44.277508, 36.859818, 33.018890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709332, 37.269772, 33.090809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003815, 37.505836, 33.223301>,  <44.180504, 37.647476, 33.302795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003815, 37.505836, 33.223301>,  <43.709332, 37.269772, 33.090809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003815, 37.505836, 33.223301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256263, 0.696091, -0.670661,
		-0.626360, 0.408865, 0.663704,
		0.736208, 0.590158, 0.331227,
		44.224678, 37.682884, 33.322670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466888, 38.022018, 33.119087>,  <43.709332, 37.269772, 33.090809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466888, 38.022018, 33.119087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865719, 38.032200, 33.090267>,  <44.105019, 38.038307, 33.072975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865719, 38.032200, 33.090267>,  <43.466888, 38.022018, 33.119087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865719, 38.032200, 33.090267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067271, 0.739604, -0.669672,
		0.036248, 0.672561, 0.739153,
		0.997076, 0.025449, -0.072053,
		44.164841, 38.039833, 33.068649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551849, 38.730721, 33.106106>,  <43.466888, 38.022018, 33.119087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551849, 38.730721, 33.106106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905724, 38.591965, 32.981529>,  <44.118050, 38.508713, 32.906784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905724, 38.591965, 32.981529>,  <43.551849, 38.730721, 33.106106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905724, 38.591965, 32.981529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078435, 0.769298, -0.634057,
		0.459540, 0.536514, 0.707797,
		0.884687, -0.346891, -0.311441,
		44.171131, 38.487896, 32.888096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037910, 39.264858, 33.236534>,  <43.551849, 38.730721, 33.106106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037910, 39.264858, 33.236534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187885, 39.042664, 32.939655>,  <44.277870, 38.909348, 32.761528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187885, 39.042664, 32.939655>,  <44.037910, 39.264858, 33.236534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187885, 39.042664, 32.939655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199220, 0.830174, -0.520694,
		0.905392, 0.047366, 0.421925,
		0.374935, -0.555488, -0.742197,
		44.300365, 38.876019, 32.716995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442993, 39.772411, 32.935345>,  <44.037910, 39.264858, 33.236534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442993, 39.772411, 32.935345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416370, 39.478817, 32.664986>,  <44.400398, 39.302662, 32.502769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416370, 39.478817, 32.664986>,  <44.442993, 39.772411, 32.935345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416370, 39.478817, 32.664986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323917, 0.624820, -0.710407,
		0.943742, -0.266216, 0.196165,
		-0.066554, -0.733982, -0.675900,
		44.396404, 39.258621, 32.462215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122818, 39.751343, 32.592648>,  <44.442993, 39.772411, 32.935345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122818, 39.751343, 32.592648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871269, 39.563580, 32.344719>,  <44.720341, 39.450920, 32.195961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871269, 39.563580, 32.344719>,  <45.122818, 39.751343, 32.592648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871269, 39.563580, 32.344719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240463, 0.640677, -0.729184,
		0.739389, -0.607608, -0.290029,
		-0.628873, -0.469410, -0.619817,
		44.682606, 39.422756, 32.158775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404102, 39.926441, 31.969662>,  <45.122818, 39.751343, 32.592648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404102, 39.926441, 31.969662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052876, 39.781158, 31.845032>,  <44.842140, 39.693989, 31.770254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052876, 39.781158, 31.845032>,  <45.404102, 39.926441, 31.969662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052876, 39.781158, 31.845032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009399, 0.637884, -0.770076,
		0.478447, -0.679106, -0.556690,
		-0.878066, -0.363208, -0.311577,
		44.789455, 39.672195, 31.751558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460094, 39.768620, 31.288744>,  <45.404102, 39.926441, 31.969662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460094, 39.768620, 31.288744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077633, 39.862549, 31.358755>,  <44.848156, 39.918907, 31.400763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077633, 39.862549, 31.358755>,  <45.460094, 39.768620, 31.288744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077633, 39.862549, 31.358755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014105, 0.633837, -0.773338,
		-0.292540, -0.736957, -0.609355,
		-0.956149, 0.234827, 0.175028,
		44.790787, 39.932999, 31.411264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018959, 39.798515, 30.589071>,  <45.460094, 39.768620, 31.288744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018959, 39.798515, 30.589071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789089, 40.019573, 30.830511>,  <44.651169, 40.152210, 30.975374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789089, 40.019573, 30.830511>,  <45.018959, 39.798515, 30.589071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789089, 40.019573, 30.830511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132628, 0.664909, -0.735055,
		-0.807566, -0.502469, -0.308808,
		-0.574671, 0.552649, 0.603599,
		44.616688, 40.185368, 31.011591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428230, 40.114891, 30.213314>,  <45.018959, 39.798515, 30.589071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428230, 40.114891, 30.213314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441177, 40.330997, 30.549662>,  <44.448944, 40.460663, 30.751471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441177, 40.330997, 30.549662>,  <44.428230, 40.114891, 30.213314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441177, 40.330997, 30.549662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219784, 0.824564, -0.521335,
		-0.975011, -0.167936, 0.145431,
		0.032366, 0.540271, 0.840869,
		44.450886, 40.493080, 30.801922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788548, 40.613564, 30.292089>,  <44.428230, 40.114891, 30.213314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788548, 40.613564, 30.292089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078392, 40.760414, 30.525383>,  <44.252296, 40.848522, 30.665359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078392, 40.760414, 30.525383>,  <43.788548, 40.613564, 30.292089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078392, 40.760414, 30.525383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167905, 0.914841, -0.367252,
		-0.668393, 0.168186, 0.724544,
		0.724609, 0.367123, 0.583234,
		44.295776, 40.870552, 30.700354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523155, 41.162247, 30.513109>,  <43.788548, 40.613564, 30.292089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523155, 41.162247, 30.513109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919334, 41.209621, 30.541357>,  <44.157043, 41.238045, 30.558306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919334, 41.209621, 30.541357>,  <43.523155, 41.162247, 30.513109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919334, 41.209621, 30.541357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080386, 0.912030, -0.402169,
		-0.112039, 0.392650, 0.912838,
		0.990447, 0.118438, 0.070619,
		44.216469, 41.245152, 30.562542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.104618, 39.707146, 41.095604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767185, 39.497650, 41.048157>,  <39.564724, 39.371952, 41.019688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767185, 39.497650, 41.048157>,  <40.104618, 39.707146, 41.095604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767185, 39.497650, 41.048157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212923, -0.123438, -0.969241,
		0.492983, -0.842891, 0.215645,
		-0.843583, -0.523735, -0.118618,
		39.514111, 39.340530, 41.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326420, 39.175694, 40.753609>,  <40.104618, 39.707146, 41.095604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326420, 39.175694, 40.753609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933365, 39.163086, 40.680466>,  <39.697533, 39.155521, 40.636581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933365, 39.163086, 40.680466>,  <40.326420, 39.175694, 40.753609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933365, 39.163086, 40.680466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185242, -0.223623, -0.956911,
		-0.010727, -0.974166, 0.225579,
		-0.982634, -0.031522, -0.182856,
		39.638573, 39.153629, 40.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182217, 38.498711, 40.394520>,  <40.326420, 39.175694, 40.753609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182217, 38.498711, 40.394520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890930, 38.760479, 40.313107>,  <39.716156, 38.917542, 40.264259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890930, 38.760479, 40.313107>,  <40.182217, 38.498711, 40.394520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890930, 38.760479, 40.313107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040780, -0.255076, -0.966061,
		-0.684129, -0.711804, 0.159065,
		-0.728220, 0.654424, -0.203532,
		39.672462, 38.956806, 40.252048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835121, 38.087437, 39.916042>,  <40.182217, 38.498711, 40.394520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835121, 38.087437, 39.916042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662506, 38.444233, 39.862202>,  <39.558937, 38.658310, 39.829899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662506, 38.444233, 39.862202>,  <39.835121, 38.087437, 39.916042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662506, 38.444233, 39.862202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266302, -0.268525, -0.925731,
		-0.861891, -0.363646, 0.353420,
		-0.431540, 0.891995, -0.134600,
		39.533043, 38.711830, 39.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235134, 37.902027, 39.599773>,  <39.835121, 38.087437, 39.916042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235134, 37.902027, 39.599773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301674, 38.289139, 39.524166>,  <39.341599, 38.521408, 39.478802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301674, 38.289139, 39.524166>,  <39.235134, 37.902027, 39.599773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301674, 38.289139, 39.524166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294567, -0.134167, -0.946166,
		-0.941041, 0.213071, 0.262758,
		0.166347, 0.967781, -0.189021,
		39.351578, 38.579472, 39.467461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556927, 38.173355, 39.251438>,  <39.235134, 37.902027, 39.599773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556927, 38.173355, 39.251438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863277, 38.405884, 39.141525>,  <39.047089, 38.545399, 39.075577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863277, 38.405884, 39.141525>,  <38.556927, 38.173355, 39.251438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863277, 38.405884, 39.141525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279924, -0.083293, -0.956402,
		-0.578861, 0.809402, 0.098933,
		0.765873, 0.581317, -0.274787,
		39.093040, 38.580280, 39.059090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317383, 38.649017, 38.781403>,  <38.556927, 38.173355, 39.251438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317383, 38.649017, 38.781403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712559, 38.652725, 38.719585>,  <38.949665, 38.654949, 38.682495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712559, 38.652725, 38.719585>,  <38.317383, 38.649017, 38.781403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712559, 38.652725, 38.719585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154380, -0.016487, -0.987874,
		-0.011708, 0.999821, -0.014856,
		0.987942, 0.009272, -0.154545,
		39.008942, 38.655506, 38.673222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350140, 38.901657, 38.022202>,  <38.317383, 38.649017, 38.781403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350140, 38.901657, 38.022202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707561, 38.757786, 38.129669>,  <38.922016, 38.671463, 38.194149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707561, 38.757786, 38.129669>,  <38.350140, 38.901657, 38.022202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707561, 38.757786, 38.129669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205220, -0.205016, -0.957002,
		0.399297, 0.910273, -0.109380,
		0.893558, -0.359682, 0.268669,
		38.975628, 38.649879, 38.210270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754807, 39.153278, 37.462490>,  <38.350140, 38.901657, 38.022202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754807, 39.153278, 37.462490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932514, 38.838829, 37.634365>,  <39.039139, 38.650158, 37.737492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932514, 38.838829, 37.634365>,  <38.754807, 39.153278, 37.462490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932514, 38.838829, 37.634365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240268, -0.357504, -0.902475,
		0.863072, 0.504186, 0.030051,
		0.444272, -0.786122, 0.429692,
		39.065796, 38.602993, 37.763271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300446, 39.080868, 37.055073>,  <38.754807, 39.153278, 37.462490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300446, 39.080868, 37.055073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275341, 38.735416, 37.255157>,  <39.260281, 38.528145, 37.375206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275341, 38.735416, 37.255157>,  <39.300446, 39.080868, 37.055073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275341, 38.735416, 37.255157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077699, -0.503902, -0.860259,
		0.995000, -0.015121, 0.098727,
		-0.062757, -0.863628, 0.500208,
		39.256516, 38.476330, 37.405220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787601, 38.628174, 36.735847>,  <39.300446, 39.080868, 37.055073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787601, 38.628174, 36.735847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547207, 38.363655, 36.915401>,  <39.402969, 38.204945, 37.023132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547207, 38.363655, 36.915401>,  <39.787601, 38.628174, 36.735847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547207, 38.363655, 36.915401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054466, -0.526437, -0.848468,
		0.797400, -0.534368, 0.280365,
		-0.600988, -0.661298, 0.448885,
		39.366909, 38.165264, 37.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089417, 37.920765, 36.759102>,  <39.787601, 38.628174, 36.735847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089417, 37.920765, 36.759102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690617, 37.892143, 36.770935>,  <39.451336, 37.874969, 36.778034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690617, 37.892143, 36.770935>,  <40.089417, 37.920765, 36.759102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690617, 37.892143, 36.770935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015018, -0.553565, -0.832670,
		0.075960, -0.829726, 0.552978,
		-0.996998, -0.071555, 0.029588,
		39.391518, 37.870678, 36.779812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850395, 37.192535, 36.818302>,  <40.089417, 37.920765, 36.759102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850395, 37.192535, 36.818302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646477, 37.456181, 36.597149>,  <39.524124, 37.614368, 36.464458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646477, 37.456181, 36.597149>,  <39.850395, 37.192535, 36.818302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646477, 37.456181, 36.597149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290966, -0.472693, -0.831806,
		-0.809597, -0.584921, 0.049198,
		-0.509796, 0.659112, -0.552883,
		39.493538, 37.653915, 36.431286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196285, 37.236130, 37.109608>,  <39.850395, 37.192535, 36.818302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196285, 37.236130, 37.109608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231327, 36.897274, 36.899967>,  <39.252354, 36.693962, 36.774181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231327, 36.897274, 36.899967>,  <39.196285, 37.236130, 37.109608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231327, 36.897274, 36.899967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941343, -0.242518, 0.234645,
		-0.325881, 0.472807, -0.818691,
		0.087606, -0.847136, -0.524105,
		39.257610, 36.643135, 36.742737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637703, 37.088844, 36.594746>,  <39.196285, 37.236130, 37.109608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637703, 37.088844, 36.594746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782646, 36.756046, 36.762787>,  <38.869614, 36.556370, 36.863609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782646, 36.756046, 36.762787>,  <38.637703, 37.088844, 36.594746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782646, 36.756046, 36.762787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907539, -0.212295, 0.362359,
		-0.212295, -0.512563, -0.831992,
		-0.362359, 0.831992, -0.420101,
		38.891354, 36.506447, 36.888817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087055, 36.556046, 36.532120>,  <38.637703, 37.088844, 36.594746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087055, 36.556046, 36.532120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323929, 36.433067, 36.830055>,  <38.466053, 36.359280, 37.008816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323929, 36.433067, 36.830055>,  <38.087055, 36.556046, 36.532120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323929, 36.433067, 36.830055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804379, -0.280413, 0.523777,
		0.047829, -0.909310, -0.413363,
		0.592188, -0.307449, 0.744841,
		38.501587, 36.340832, 37.053509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902317, 35.824852, 36.699059>,  <38.087055, 36.556046, 36.532120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902317, 35.824852, 36.699059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052597, 35.981289, 37.035130>,  <38.142765, 36.075153, 37.236771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052597, 35.981289, 37.035130>,  <37.902317, 35.824852, 36.699059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052597, 35.981289, 37.035130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794816, -0.330227, 0.509134,
		0.476569, -0.859066, 0.186782,
		0.375700, 0.391095, 0.840175,
		38.165306, 36.098618, 37.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714165, 35.357277, 37.264793>,  <37.902317, 35.824852, 36.699059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714165, 35.357277, 37.264793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819027, 35.708771, 37.424343>,  <37.881947, 35.919666, 37.520073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819027, 35.708771, 37.424343>,  <37.714165, 35.357277, 37.264793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819027, 35.708771, 37.424343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658593, -0.139199, 0.739512,
		0.705357, -0.456566, 0.542235,
		0.262158, 0.878733, 0.398876,
		37.897675, 35.972389, 37.544006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898174, 35.279938, 38.004150>,  <37.714165, 35.357277, 37.264793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898174, 35.279938, 38.004150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792202, 35.664639, 37.976303>,  <37.728619, 35.895458, 37.959595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792202, 35.664639, 37.976303>,  <37.898174, 35.279938, 38.004150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792202, 35.664639, 37.976303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628664, -0.117530, 0.768745,
		0.731158, 0.247436, 0.635755,
		-0.264935, 0.961750, -0.069621,
		37.712723, 35.953163, 37.955418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870190, 35.406719, 38.648335>,  <37.898174, 35.279938, 38.004150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870190, 35.406719, 38.648335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666573, 35.721325, 38.508461>,  <37.544403, 35.910088, 38.424538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666573, 35.721325, 38.508461>,  <37.870190, 35.406719, 38.648335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666573, 35.721325, 38.508461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577062, -0.010407, 0.816634,
		0.638654, 0.617486, 0.459165,
		-0.509038, 0.786513, -0.349681,
		37.513863, 35.957279, 38.403557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798714, 35.942623, 39.145252>,  <37.870190, 35.406719, 38.648335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798714, 35.942623, 39.145252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483189, 36.007271, 38.908051>,  <37.293873, 36.046059, 38.765728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483189, 36.007271, 38.908051>,  <37.798714, 35.942623, 39.145252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483189, 36.007271, 38.908051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608509, -0.069475, 0.790500,
		0.086561, 0.984404, 0.153150,
		-0.788812, 0.161619, -0.593005,
		37.246544, 36.055756, 38.730148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326931, 36.304394, 39.585152>,  <37.798714, 35.942623, 39.145252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326931, 36.304394, 39.585152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093014, 36.156609, 39.296288>,  <36.952663, 36.067936, 39.122971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093014, 36.156609, 39.296288>,  <37.326931, 36.304394, 39.585152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093014, 36.156609, 39.296288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702159, -0.215227, 0.678712,
		-0.406187, 0.903977, -0.133558,
		-0.584795, -0.369463, -0.722158,
		36.917576, 36.045769, 39.079639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649223, 36.586060, 39.734573>,  <37.326931, 36.304394, 39.585152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649223, 36.586060, 39.734573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585827, 36.267536, 39.501072>,  <36.547791, 36.076424, 39.360970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585827, 36.267536, 39.501072>,  <36.649223, 36.586060, 39.734573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585827, 36.267536, 39.501072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861129, -0.177770, 0.476293,
		-0.483051, 0.578177, -0.657551,
		-0.158489, -0.796310, -0.583757,
		36.538280, 36.028645, 39.325943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968735, 36.670750, 39.635323>,  <36.649223, 36.586060, 39.734573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968735, 36.670750, 39.635323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058647, 36.286724, 39.568691>,  <36.112595, 36.056309, 39.528713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058647, 36.286724, 39.568691>,  <35.968735, 36.670750, 39.635323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058647, 36.286724, 39.568691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706156, -0.278298, 0.651071,
		-0.671429, -0.028720, -0.740512,
		0.224782, -0.960065, -0.166576,
		36.126083, 35.998703, 39.518719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292778, 36.313702, 39.589401>,  <35.968735, 36.670750, 39.635323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292778, 36.313702, 39.589401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562679, 36.032402, 39.678978>,  <35.724621, 35.863625, 39.732723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562679, 36.032402, 39.678978>,  <35.292778, 36.313702, 39.589401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562679, 36.032402, 39.678978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587531, -0.328196, 0.739659,
		-0.446667, -0.630660, -0.634631,
		0.674757, -0.703247, 0.223938,
		35.765106, 35.821426, 39.746159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928150, 35.763371, 39.724373>,  <35.292778, 36.313702, 39.589401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928150, 35.763371, 39.724373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285213, 35.685261, 39.886871>,  <35.499451, 35.638393, 39.984371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285213, 35.685261, 39.886871>,  <34.928150, 35.763371, 39.724373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285213, 35.685261, 39.886871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444988, -0.238249, 0.863263,
		-0.071787, -0.951370, -0.299569,
		0.892655, -0.195275, 0.406245,
		35.553009, 35.626678, 40.008743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881332, 35.043274, 40.044342>,  <34.928150, 35.763371, 39.724373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881332, 35.043274, 40.044342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185905, 35.242207, 40.210659>,  <35.368649, 35.361565, 40.310452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185905, 35.242207, 40.210659>,  <34.881332, 35.043274, 40.044342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185905, 35.242207, 40.210659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306595, -0.288855, 0.906952,
		0.571157, -0.818064, -0.067466,
		0.761432, 0.497327, 0.415795,
		35.414337, 35.391403, 40.335396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146343, 34.577404, 40.462734>,  <34.881332, 35.043274, 40.044342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146343, 34.577404, 40.462734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320786, 34.901077, 40.620228>,  <35.425453, 35.095284, 40.714725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320786, 34.901077, 40.620228>,  <35.146343, 34.577404, 40.462734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320786, 34.901077, 40.620228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001305, -0.436965, 0.899478,
		0.899893, -0.392785, -0.189508,
		0.436110, 0.809186, 0.393734,
		35.451618, 35.143833, 40.738350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225483, 33.849415, 40.318478>,  <35.146343, 34.577404, 40.462734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225483, 33.849415, 40.318478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956272, 33.568119, 40.410110>,  <34.794746, 33.399342, 40.465092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956272, 33.568119, 40.410110>,  <35.225483, 33.849415, 40.318478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956272, 33.568119, 40.410110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561824, 0.284665, -0.776736,
		0.481023, -0.651472, -0.586687,
		-0.673031, -0.703243, 0.229082,
		34.754364, 33.357147, 40.478836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070534, 33.478504, 39.723759>,  <35.225483, 33.849415, 40.318478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070534, 33.478504, 39.723759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756470, 33.447308, 39.969505>,  <34.568031, 33.428589, 40.116955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756470, 33.447308, 39.969505>,  <35.070534, 33.478504, 39.723759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756470, 33.447308, 39.969505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582124, 0.431471, -0.689177,
		-0.211333, -0.898750, -0.384171,
		-0.785157, -0.077989, 0.614368,
		34.520924, 33.423912, 40.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539932, 33.062042, 39.337364>,  <35.070534, 33.478504, 39.723759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539932, 33.062042, 39.337364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327518, 33.268948, 39.605824>,  <34.200069, 33.393093, 39.766899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327518, 33.268948, 39.605824>,  <34.539932, 33.062042, 39.337364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327518, 33.268948, 39.605824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640516, 0.273499, -0.717591,
		-0.554744, -0.810946, 0.186080,
		-0.531035, 0.517267, 0.671146,
		34.168209, 33.424126, 39.807167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776581, 32.812820, 39.438896>,  <34.539932, 33.062042, 39.337364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776581, 32.812820, 39.438896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809063, 33.200352, 39.532513>,  <33.828552, 33.432869, 39.588684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809063, 33.200352, 39.532513>,  <33.776581, 32.812820, 39.438896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809063, 33.200352, 39.532513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529834, 0.240850, -0.813183,
		-0.844205, -0.057968, 0.532877,
		0.081205, 0.968830, 0.234041,
		33.833424, 33.491001, 39.602726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136944, 33.177589, 39.180992>,  <33.776581, 32.812820, 39.438896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136944, 33.177589, 39.180992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366562, 33.493122, 39.268822>,  <33.504333, 33.682442, 39.321518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366562, 33.493122, 39.268822>,  <33.136944, 33.177589, 39.180992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366562, 33.493122, 39.268822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557580, 0.572959, -0.600685,
		-0.599648, 0.222388, 0.768742,
		0.574043, 0.788835, 0.219574,
		33.538776, 33.729774, 39.334694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705082, 33.679165, 39.170509>,  <33.136944, 33.177589, 39.180992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705082, 33.679165, 39.170509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052971, 33.868755, 39.115467>,  <33.261703, 33.982510, 39.082439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052971, 33.868755, 39.115467>,  <32.705082, 33.679165, 39.170509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052971, 33.868755, 39.115467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433045, 0.599090, -0.673471,
		-0.236767, 0.645322, 0.726293,
		0.869720, 0.473974, -0.137609,
		33.313889, 34.010948, 39.074184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533142, 34.403282, 39.211140>,  <32.705082, 33.679165, 39.170509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533142, 34.403282, 39.211140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887283, 34.411743, 39.025364>,  <33.099766, 34.416821, 38.913898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887283, 34.411743, 39.025364>,  <32.533142, 34.403282, 39.211140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887283, 34.411743, 39.025364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338813, 0.713424, -0.613377,
		0.318373, 0.700413, 0.638796,
		0.885350, 0.021150, -0.464444,
		33.152889, 34.418087, 38.886032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614292, 35.077915, 39.192890>,  <32.533142, 34.403282, 39.211140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614292, 35.077915, 39.192890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854931, 34.914345, 38.918415>,  <32.999313, 34.816204, 38.753731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854931, 34.914345, 38.918415>,  <32.614292, 35.077915, 39.192890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854931, 34.914345, 38.918415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377289, 0.611708, -0.695318,
		0.704080, 0.677196, 0.213721,
		0.601601, -0.408925, -0.686190,
		33.035412, 34.791668, 38.712559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935467, 35.588306, 38.750957>,  <32.614292, 35.077915, 39.192890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935467, 35.588306, 38.750957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947025, 35.259907, 38.522877>,  <32.953960, 35.062866, 38.386028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947025, 35.259907, 38.522877>,  <32.935467, 35.588306, 38.750957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947025, 35.259907, 38.522877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257531, 0.545064, -0.797861,
		0.965838, 0.169898, -0.195683,
		0.028895, -0.820999, -0.570198,
		32.955692, 35.013607, 38.351818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100952, 35.943527, 38.198105>,  <32.935467, 35.588306, 38.750957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100952, 35.943527, 38.198105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022419, 35.568146, 38.084438>,  <32.975300, 35.342915, 38.016239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022419, 35.568146, 38.084438>,  <33.100952, 35.943527, 38.198105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022419, 35.568146, 38.084438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502332, 0.345152, -0.792801,
		0.842089, -0.012912, -0.539184,
		-0.196337, -0.938458, -0.284162,
		32.963516, 35.286610, 37.999191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341846, 35.812290, 37.530460>,  <33.100952, 35.943527, 38.198105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341846, 35.812290, 37.530460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035858, 35.557770, 37.570335>,  <32.852264, 35.405060, 37.594261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035858, 35.557770, 37.570335>,  <33.341846, 35.812290, 37.530460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035858, 35.557770, 37.570335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438577, 0.401283, -0.804128,
		0.471662, -0.658860, -0.586037,
		-0.764974, -0.636299, 0.099691,
		32.806366, 35.366882, 37.600243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101780, 35.450096, 36.845165>,  <33.341846, 35.812290, 37.530460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101780, 35.450096, 36.845165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785961, 35.469398, 37.089882>,  <32.596470, 35.480980, 37.236710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785961, 35.469398, 37.089882>,  <33.101780, 35.450096, 36.845165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785961, 35.469398, 37.089882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487999, 0.555120, -0.673572,
		-0.372118, -0.830369, -0.414747,
		-0.789548, 0.048252, 0.611790,
		32.549095, 35.483875, 37.273418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.597343, 30.446842, 42.151207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.367603, 30.613083, 42.433311>,  <36.229759, 30.712828, 42.602573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.367603, 30.613083, 42.433311>,  <36.597343, 30.446842, 42.151207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367603, 30.613083, 42.433311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566930, 0.419535, -0.708929,
		-0.590515, -0.807009, -0.005343,
		-0.574354, 0.415604, 0.705260,
		36.195297, 30.737764, 42.644890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979733, 30.536539, 41.789593>,  <36.597343, 30.446842, 42.151207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979733, 30.536539, 41.789593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941669, 30.776794, 42.107128>,  <35.918831, 30.920948, 42.297649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941669, 30.776794, 42.107128>,  <35.979733, 30.536539, 41.789593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941669, 30.776794, 42.107128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534003, 0.642207, -0.549919,
		-0.840111, -0.476240, 0.259633,
		-0.095155, 0.600638, 0.793839,
		35.913124, 30.956985, 42.345280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252422, 30.653215, 41.909027>,  <35.979733, 30.536539, 41.789593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252422, 30.653215, 41.909027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445747, 30.966806, 42.064865>,  <35.561745, 31.154961, 42.158367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445747, 30.966806, 42.064865>,  <35.252422, 30.653215, 41.909027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445747, 30.966806, 42.064865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473640, 0.608431, -0.636770,
		-0.736254, 0.123236, 0.665389,
		0.483317, 0.783980, 0.389590,
		35.590744, 31.202000, 42.181744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728065, 31.200138, 41.977493>,  <35.252422, 30.653215, 41.909027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728065, 31.200138, 41.977493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.077415, 31.394833, 41.984554>,  <35.287025, 31.511648, 41.988789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.077415, 31.394833, 41.984554>,  <34.728065, 31.200138, 41.977493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077415, 31.394833, 41.984554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412932, 0.759186, -0.503114,
		-0.258282, 0.432117, 0.864040,
		0.873371, 0.486736, 0.017649,
		35.339428, 31.540854, 41.989849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568031, 31.871605, 42.207520>,  <34.728065, 31.200138, 41.977493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568031, 31.871605, 42.207520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924847, 31.929594, 42.036285>,  <35.138935, 31.964388, 41.933544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924847, 31.929594, 42.036285>,  <34.568031, 31.871605, 42.207520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924847, 31.929594, 42.036285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369967, 0.778274, -0.507361,
		0.259615, 0.610961, 0.747882,
		0.892034, 0.144973, -0.428087,
		35.192455, 31.973085, 41.907860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609184, 32.553574, 42.223576>,  <34.568031, 31.871605, 42.207520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609184, 32.553574, 42.223576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881176, 32.443226, 41.951832>,  <35.044369, 32.377018, 41.788784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881176, 32.443226, 41.951832>,  <34.609184, 32.553574, 42.223576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881176, 32.443226, 41.951832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270677, 0.766644, -0.582229,
		0.681445, 0.579789, 0.446628,
		0.679975, -0.275866, -0.679362,
		35.085167, 32.360466, 41.748024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042072, 33.102497, 42.109440>,  <34.609184, 32.553574, 42.223576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042072, 33.102497, 42.109440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.065289, 32.883713, 41.775383>,  <35.079220, 32.752441, 41.574947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.065289, 32.883713, 41.775383>,  <35.042072, 33.102497, 42.109440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065289, 32.883713, 41.775383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299550, 0.788467, -0.537206,
		0.952313, 0.281348, -0.118079,
		0.058041, -0.546959, -0.835145,
		35.082699, 32.719624, 41.524841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898434, 33.601170, 41.687756>,  <35.042072, 33.102497, 42.109440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898434, 33.601170, 41.687756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905693, 33.288891, 41.437901>,  <34.910049, 33.101524, 41.287987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905693, 33.288891, 41.437901>,  <34.898434, 33.601170, 41.687756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905693, 33.288891, 41.437901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363681, 0.576795, -0.731467,
		0.931347, 0.240446, -0.273457,
		0.018150, -0.780700, -0.624642,
		34.911137, 33.054680, 41.250507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245995, 33.855598, 41.156925>,  <34.898434, 33.601170, 41.687756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245995, 33.855598, 41.156925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036793, 33.542866, 41.021160>,  <34.911270, 33.355225, 40.939701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036793, 33.542866, 41.021160>,  <35.245995, 33.855598, 41.156925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036793, 33.542866, 41.021160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341746, 0.557164, -0.756821,
		0.780815, -0.279832, -0.558590,
		-0.523009, -0.781833, -0.339410,
		34.879890, 33.308315, 40.919338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689728, 34.344002, 40.948978>,  <35.245995, 33.855598, 41.156925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689728, 34.344002, 40.948978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627251, 34.724567, 41.055122>,  <35.589764, 34.952908, 41.118809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627251, 34.724567, 41.055122>,  <35.689728, 34.344002, 40.948978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627251, 34.724567, 41.055122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226897, -0.226916, 0.947115,
		0.961313, 0.208139, -0.180431,
		-0.156189, 0.951413, 0.265363,
		35.580395, 35.009991, 41.134731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256577, 34.623569, 41.468109>,  <35.689728, 34.344002, 40.948978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256577, 34.623569, 41.468109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956245, 34.882423, 41.520996>,  <35.776047, 35.037735, 41.552727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956245, 34.882423, 41.520996>,  <36.256577, 34.623569, 41.468109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956245, 34.882423, 41.520996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231491, 0.070344, 0.970291,
		0.618606, 0.759125, -0.202622,
		-0.750825, 0.647133, 0.132215,
		35.730999, 35.076565, 41.560661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460541, 35.114201, 41.896160>,  <36.256577, 34.623569, 41.468109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460541, 35.114201, 41.896160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067371, 35.159328, 41.954319>,  <35.831470, 35.186405, 41.989212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067371, 35.159328, 41.954319>,  <36.460541, 35.114201, 41.896160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067371, 35.159328, 41.954319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130538, -0.129488, 0.982951,
		0.129719, 0.985142, 0.112550,
		-0.982921, 0.112816, 0.145395,
		35.772495, 35.193172, 41.997936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417305, 35.662090, 42.426311>,  <36.460541, 35.114201, 41.896160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417305, 35.662090, 42.426311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.069717, 35.464352, 42.417278>,  <35.861164, 35.345707, 42.411858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.069717, 35.464352, 42.417278>,  <36.417305, 35.662090, 42.426311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069717, 35.464352, 42.417278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077804, -0.181540, 0.980301,
		-0.488708, 0.850096, 0.196216,
		-0.868971, -0.494347, -0.022579,
		35.809025, 35.316048, 42.410503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052383, 35.938038, 42.915432>,  <36.417305, 35.662090, 42.426311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052383, 35.938038, 42.915432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930206, 35.559212, 42.875866>,  <35.856899, 35.331917, 42.852127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930206, 35.559212, 42.875866>,  <36.052383, 35.938038, 42.915432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930206, 35.559212, 42.875866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090134, -0.132164, 0.987121,
		-0.947936, 0.292589, 0.125731,
		-0.305438, -0.947061, -0.098911,
		35.838573, 35.275093, 42.846191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551678, 35.803417, 43.447632>,  <36.052383, 35.938038, 42.915432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551678, 35.803417, 43.447632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684559, 35.445351, 43.328754>,  <35.764286, 35.230511, 43.257427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684559, 35.445351, 43.328754>,  <35.551678, 35.803417, 43.447632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684559, 35.445351, 43.328754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122322, -0.271541, 0.954622,
		-0.935242, -0.353483, 0.019291,
		0.332204, -0.895162, -0.297195,
		35.784222, 35.176804, 43.239597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485405, 35.544590, 44.044945>,  <35.551678, 35.803417, 43.447632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485405, 35.544590, 44.044945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671032, 35.259472, 43.834587>,  <35.782406, 35.088402, 43.708374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671032, 35.259472, 43.834587>,  <35.485405, 35.544590, 44.044945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671032, 35.259472, 43.834587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171722, -0.510033, 0.842839,
		-0.868997, -0.481439, -0.114285,
		0.464065, -0.712799, -0.525891,
		35.810253, 35.045631, 43.676819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243889, 34.845058, 44.292152>,  <35.485405, 35.544590, 44.044945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243889, 34.845058, 44.292152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593410, 34.784672, 44.107250>,  <35.803123, 34.748440, 43.996307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593410, 34.784672, 44.107250>,  <35.243889, 34.845058, 44.292152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593410, 34.784672, 44.107250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373515, -0.400319, 0.836798,
		-0.311379, -0.903855, -0.293410,
		0.873802, -0.150968, -0.462255,
		35.855549, 34.739380, 43.968575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402534, 34.098480, 44.417515>,  <35.243889, 34.845058, 44.292152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402534, 34.098480, 44.417515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753082, 34.277409, 44.346092>,  <35.963409, 34.384766, 44.303238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753082, 34.277409, 44.346092>,  <35.402534, 34.098480, 44.417515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753082, 34.277409, 44.346092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412903, -0.506897, 0.756681,
		0.247970, -0.736858, -0.628929,
		0.876369, 0.447321, -0.178555,
		36.015991, 34.411606, 44.292526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932049, 33.564129, 44.468781>,  <35.402534, 34.098480, 44.417515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932049, 33.564129, 44.468781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115871, 33.916912, 44.510643>,  <36.226166, 34.128582, 44.535763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115871, 33.916912, 44.510643>,  <35.932049, 33.564129, 44.468781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115871, 33.916912, 44.510643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543645, -0.372522, 0.752115,
		0.702325, -0.288740, -0.650668,
		0.459554, 0.881962, 0.104659,
		36.253738, 34.181499, 44.542042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547718, 33.323761, 44.599346>,  <35.932049, 33.564129, 44.468781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547718, 33.323761, 44.599346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533150, 33.708824, 44.706646>,  <36.524410, 33.939861, 44.771027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533150, 33.708824, 44.706646>,  <36.547718, 33.323761, 44.599346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533150, 33.708824, 44.706646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368248, -0.236611, 0.899115,
		0.929014, 0.131530, -0.345880,
		-0.036422, 0.962661, 0.268251,
		36.522224, 33.997623, 44.787121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177399, 33.450787, 44.783981>,  <36.547718, 33.323761, 44.599346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177399, 33.450787, 44.783981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001976, 33.765934, 44.956924>,  <36.896721, 33.955021, 45.060692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001976, 33.765934, 44.956924>,  <37.177399, 33.450787, 44.783981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001976, 33.765934, 44.956924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447175, -0.226003, 0.865423,
		0.779552, 0.572877, -0.253199,
		-0.438558, 0.787867, 0.432357,
		36.870407, 34.002293, 45.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706985, 33.979031, 45.012596>,  <37.177399, 33.450787, 44.783981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706985, 33.979031, 45.012596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372471, 33.990284, 45.231621>,  <37.171761, 33.997036, 45.363037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372471, 33.990284, 45.231621>,  <37.706985, 33.979031, 45.012596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372471, 33.990284, 45.231621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502280, -0.361130, 0.785684,
		0.219849, 0.932091, 0.287877,
		-0.836290, 0.028137, 0.547565,
		37.121582, 33.998726, 45.395889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838383, 34.264397, 45.625526>,  <37.706985, 33.979031, 45.012596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838383, 34.264397, 45.625526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484768, 34.090515, 45.694248>,  <37.272598, 33.986187, 45.735481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484768, 34.090515, 45.694248>,  <37.838383, 34.264397, 45.625526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484768, 34.090515, 45.694248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351115, -0.374945, 0.857983,
		-0.308552, 0.818809, 0.484095,
		-0.884033, -0.434705, 0.171806,
		37.219559, 33.960102, 45.745789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.137455, 36.434471, 46.543655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374691, 36.207825, 46.314854>,  <34.517033, 36.071838, 46.177570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374691, 36.207825, 46.314854>,  <34.137455, 36.434471, 46.543655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374691, 36.207825, 46.314854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117492, 0.641935, -0.757704,
		0.796517, 0.516593, 0.314152,
		0.593090, -0.566614, -0.572008,
		34.552616, 36.037842, 46.143250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373741, 36.931797, 46.141850>,  <34.137455, 36.434471, 46.543655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373741, 36.931797, 46.141850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489094, 36.595291, 45.958935>,  <34.558308, 36.393387, 45.849186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489094, 36.595291, 45.958935>,  <34.373741, 36.931797, 46.141850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489094, 36.595291, 45.958935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185618, 0.419404, -0.888620,
		0.939351, 0.341145, -0.035204,
		0.288383, -0.841261, -0.457290,
		34.575607, 36.342915, 45.821747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845482, 37.145649, 45.812973>,  <34.373741, 36.931797, 46.141850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845482, 37.145649, 45.812973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.723473, 36.817955, 45.618729>,  <34.650265, 36.621338, 45.502182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.723473, 36.817955, 45.618729>,  <34.845482, 37.145649, 45.812973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723473, 36.817955, 45.618729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062899, 0.526124, -0.848079,
		0.950265, -0.228141, -0.212010,
		-0.305025, -0.819235, -0.485607,
		34.631966, 36.572186, 45.473045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243454, 37.185379, 45.136047>,  <34.845482, 37.145649, 45.812973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243454, 37.185379, 45.136047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951889, 36.920891, 45.065071>,  <34.776951, 36.762199, 45.022484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951889, 36.920891, 45.065071>,  <35.243454, 37.185379, 45.136047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951889, 36.920891, 45.065071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006745, 0.252242, -0.967641,
		0.684579, -0.706518, -0.179401,
		-0.728908, -0.661216, -0.177444,
		34.733215, 36.722527, 45.011837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396252, 36.789639, 44.531441>,  <35.243454, 37.185379, 45.136047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396252, 36.789639, 44.531441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998104, 36.766445, 44.562099>,  <34.759216, 36.752529, 44.580494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998104, 36.766445, 44.562099>,  <35.396252, 36.789639, 44.531441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998104, 36.766445, 44.562099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087313, 0.212225, -0.973312,
		0.040170, -0.975499, -0.216305,
		-0.995371, -0.057984, 0.076648,
		34.699493, 36.749050, 44.585094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194698, 36.360065, 43.951775>,  <35.396252, 36.789639, 44.531441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194698, 36.360065, 43.951775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874126, 36.575157, 44.056503>,  <34.681782, 36.704212, 44.119339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874126, 36.575157, 44.056503>,  <35.194698, 36.360065, 43.951775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874126, 36.575157, 44.056503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039954, 0.388652, -0.920518,
		-0.596749, -0.748194, -0.289994,
		-0.801433, 0.537732, 0.261821,
		34.633698, 36.736477, 44.135048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737614, 36.212254, 43.445179>,  <35.194698, 36.360065, 43.951775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737614, 36.212254, 43.445179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625401, 36.556591, 43.615002>,  <34.558071, 36.763195, 43.716896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625401, 36.556591, 43.615002>,  <34.737614, 36.212254, 43.445179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625401, 36.556591, 43.615002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189896, 0.383798, -0.903681,
		-0.940872, -0.334136, 0.055802,
		-0.280535, 0.860844, 0.424556,
		34.541241, 36.814846, 43.742367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035877, 36.455025, 43.292744>,  <34.737614, 36.212254, 43.445179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035877, 36.455025, 43.292744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230648, 36.789871, 43.392445>,  <34.347511, 36.990780, 43.452267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230648, 36.789871, 43.392445>,  <34.035877, 36.455025, 43.292744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230648, 36.789871, 43.392445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233656, 0.399814, -0.886315,
		-0.841609, 0.373332, 0.390279,
		0.486929, 0.837121, 0.249256,
		34.376728, 37.041008, 43.467220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702328, 37.006264, 42.921333>,  <34.035877, 36.455025, 43.292744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702328, 37.006264, 42.921333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028961, 37.193672, 43.056202>,  <34.224941, 37.306118, 43.137123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028961, 37.193672, 43.056202>,  <33.702328, 37.006264, 42.921333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028961, 37.193672, 43.056202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039000, 0.537996, -0.842045,
		-0.575914, 0.700746, 0.421044,
		0.816580, 0.468525, 0.337168,
		34.273933, 37.334229, 43.157352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569130, 37.677998, 42.961040>,  <33.702328, 37.006264, 42.921333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569130, 37.677998, 42.961040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967880, 37.670635, 42.930294>,  <34.207130, 37.666218, 42.911846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967880, 37.670635, 42.930294>,  <33.569130, 37.677998, 42.961040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967880, 37.670635, 42.930294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044196, 0.676449, -0.735162,
		0.065531, 0.736259, 0.673520,
		0.996871, -0.018409, -0.076868,
		34.266941, 37.665112, 42.907234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713219, 38.417206, 42.870701>,  <33.569130, 37.677998, 42.961040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713219, 38.417206, 42.870701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031548, 38.213005, 42.740433>,  <34.222546, 38.090485, 42.662273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031548, 38.213005, 42.740433>,  <33.713219, 38.417206, 42.870701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031548, 38.213005, 42.740433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111211, 0.651891, -0.750113,
		0.595233, 0.560737, 0.575561,
		0.795820, -0.510501, -0.325667,
		34.270294, 38.059856, 42.642731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230289, 38.924854, 42.679420>,  <33.713219, 38.417206, 42.870701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230289, 38.924854, 42.679420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357582, 38.593952, 42.494217>,  <34.433956, 38.395412, 42.383095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357582, 38.593952, 42.494217>,  <34.230289, 38.924854, 42.679420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357582, 38.593952, 42.494217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156268, 0.527495, -0.835063,
		0.935045, 0.193389, 0.297138,
		0.318231, -0.827255, -0.463011,
		34.453053, 38.345776, 42.355312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781654, 39.159225, 42.242138>,  <34.230289, 38.924854, 42.679420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781654, 39.159225, 42.242138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677982, 38.802238, 42.094448>,  <34.615780, 38.588047, 42.005833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677982, 38.802238, 42.094448>,  <34.781654, 39.159225, 42.242138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677982, 38.802238, 42.094448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169480, 0.334334, -0.927091,
		0.950843, -0.302859, 0.064603,
		-0.259179, -0.892467, -0.369228,
		34.600227, 38.534500, 41.983681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182228, 39.055370, 41.688404>,  <34.781654, 39.159225, 42.242138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182228, 39.055370, 41.688404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863888, 38.825954, 41.610764>,  <34.672886, 38.688305, 41.564178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863888, 38.825954, 41.610764>,  <35.182228, 39.055370, 41.688404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863888, 38.825954, 41.610764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068693, 0.232970, -0.970055,
		0.601586, -0.785350, -0.146011,
		-0.795849, -0.573542, -0.194099,
		34.625134, 38.653893, 41.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304459, 38.432972, 41.860214>,  <35.182228, 39.055370, 41.688404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304459, 38.432972, 41.860214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534798, 38.757462, 41.819565>,  <35.673000, 38.952156, 41.795174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534798, 38.757462, 41.819565>,  <35.304459, 38.432972, 41.860214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534798, 38.757462, 41.819565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064809, 0.169205, 0.983448,
		0.814988, -0.559725, 0.150009,
		0.575842, 0.811220, -0.101625,
		35.707550, 39.000828, 41.789078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967640, 38.373756, 42.199696>,  <35.304459, 38.432972, 41.860214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967640, 38.373756, 42.199696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877399, 38.763401, 42.193924>,  <35.823254, 38.997189, 42.190460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877399, 38.763401, 42.193924>,  <35.967640, 38.373756, 42.199696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877399, 38.763401, 42.193924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284898, 0.080134, 0.955203,
		0.931630, 0.211387, -0.295601,
		-0.225606, 0.974112, -0.014431,
		35.809719, 39.055634, 42.189594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458176, 38.641926, 42.549160>,  <35.967640, 38.373756, 42.199696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458176, 38.641926, 42.549160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.217213, 38.961193, 42.546898>,  <36.072636, 39.152752, 42.545540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.217213, 38.961193, 42.546898>,  <36.458176, 38.641926, 42.549160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217213, 38.961193, 42.546898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277018, 0.215706, 0.936340,
		0.748574, 0.562494, -0.351050,
		-0.602410, 0.798167, -0.005651,
		36.036491, 39.200642, 42.545204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856941, 39.030060, 42.794277>,  <36.458176, 38.641926, 42.549160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856941, 39.030060, 42.794277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497974, 39.194950, 42.857159>,  <36.282593, 39.293884, 42.894886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497974, 39.194950, 42.857159>,  <36.856941, 39.030060, 42.794277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497974, 39.194950, 42.857159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238938, 0.154587, 0.958651,
		0.370878, 0.897872, -0.237226,
		-0.897417, 0.412225, 0.157203,
		36.228748, 39.318619, 42.904320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995209, 39.650173, 43.272038>,  <36.856941, 39.030060, 42.794277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995209, 39.650173, 43.272038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611458, 39.542446, 43.305641>,  <36.381207, 39.477810, 43.325802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611458, 39.542446, 43.305641>,  <36.995209, 39.650173, 43.272038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611458, 39.542446, 43.305641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043550, 0.152836, 0.987292,
		-0.278738, 0.950846, -0.134899,
		-0.959379, -0.269321, 0.084010,
		36.323643, 39.461651, 43.330845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830490, 40.038979, 43.882717>,  <36.995209, 39.650173, 43.272038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830490, 40.038979, 43.882717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531757, 39.778252, 43.829987>,  <36.352516, 39.621815, 43.798347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531757, 39.778252, 43.829987>,  <36.830490, 40.038979, 43.882717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531757, 39.778252, 43.829987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017706, -0.217648, 0.975867,
		-0.664774, 0.726477, 0.174088,
		-0.746834, -0.651813, -0.131824,
		36.307709, 39.582706, 43.790440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332523, 40.277393, 44.369114>,  <36.830490, 40.038979, 43.882717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332523, 40.277393, 44.369114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295811, 39.888798, 44.281673>,  <36.273781, 39.655640, 44.229210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295811, 39.888798, 44.281673>,  <36.332523, 40.277393, 44.369114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295811, 39.888798, 44.281673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057167, -0.224311, 0.972839,
		-0.994136, 0.076796, 0.076126,
		-0.091786, -0.971487, -0.218606,
		36.268276, 39.597351, 44.216091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917709, 40.002686, 44.850521>,  <36.332523, 40.277393, 44.369114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917709, 40.002686, 44.850521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087486, 39.662132, 44.727234>,  <36.189354, 39.457802, 44.653263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087486, 39.662132, 44.727234>,  <35.917709, 40.002686, 44.850521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087486, 39.662132, 44.727234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151790, -0.268675, 0.951196,
		-0.892639, -0.450516, 0.015193,
		0.424447, -0.851381, -0.308213,
		36.214821, 39.406719, 44.634769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569111, 39.437752, 45.140327>,  <35.917709, 40.002686, 44.850521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569111, 39.437752, 45.140327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933540, 39.302650, 45.045780>,  <36.152199, 39.221588, 44.989052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933540, 39.302650, 45.045780>,  <35.569111, 39.437752, 45.140327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933540, 39.302650, 45.045780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078526, -0.420682, 0.903803,
		-0.404702, -0.841990, -0.356748,
		0.911071, -0.337758, -0.236369,
		36.206863, 39.201324, 44.974869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527431, 38.697994, 45.375576>,  <35.569111, 39.437752, 45.140327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527431, 38.697994, 45.375576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913422, 38.797115, 45.341141>,  <36.145016, 38.856586, 45.320480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913422, 38.797115, 45.341141>,  <35.527431, 38.697994, 45.375576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913422, 38.797115, 45.341141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185344, -0.411786, 0.892233,
		0.185645, -0.876942, -0.443293,
		0.964978, 0.247800, -0.086090,
		36.202915, 38.871456, 45.315315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873291, 38.163723, 45.627781>,  <35.527431, 38.697994, 45.375576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873291, 38.163723, 45.627781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125252, 38.471523, 45.669926>,  <36.276428, 38.656204, 45.695213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125252, 38.471523, 45.669926>,  <35.873291, 38.163723, 45.627781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125252, 38.471523, 45.669926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386238, -0.428041, 0.817069,
		0.673830, -0.473977, -0.566832,
		0.629899, 0.769498, 0.105359,
		36.314220, 38.702374, 45.701534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502964, 37.707031, 45.733650>,  <35.873291, 38.163723, 45.627781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502964, 37.707031, 45.733650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554836, 38.087021, 45.847301>,  <36.585960, 38.315014, 45.915493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554836, 38.087021, 45.847301>,  <36.502964, 37.707031, 45.733650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554836, 38.087021, 45.847301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502079, -0.310006, 0.807349,
		0.855044, 0.037956, -0.517165,
		0.129681, 0.949977, 0.284126,
		36.593739, 38.372013, 45.932541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232502, 37.865078, 45.899754>,  <36.502964, 37.707031, 45.733650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232502, 37.865078, 45.899754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048233, 38.143044, 46.120613>,  <36.937672, 38.309822, 46.253128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048233, 38.143044, 46.120613>,  <37.232502, 37.865078, 45.899754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048233, 38.143044, 46.120613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410034, -0.385101, 0.826782,
		0.787178, 0.607279, -0.107532,
		-0.460677, 0.694917, 0.552148,
		36.910030, 38.351517, 46.286259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811291, 38.075096, 46.438499>,  <37.232502, 37.865078, 45.899754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811291, 38.075096, 46.438499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453686, 38.190136, 46.575924>,  <37.239124, 38.259159, 46.658379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453686, 38.190136, 46.575924>,  <37.811291, 38.075096, 46.438499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453686, 38.190136, 46.575924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118896, -0.587023, 0.800792,
		0.431981, 0.756765, 0.490611,
		-0.894011, 0.287595, 0.343559,
		37.185482, 38.276413, 46.678993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522694, 38.450130, 46.695431>,  <37.811291, 38.075096, 46.438499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522694, 38.450130, 46.695431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.916077, 38.424072, 46.627827>,  <39.152107, 38.408436, 46.587265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.916077, 38.424072, 46.627827>,  <38.522694, 38.450130, 46.695431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916077, 38.424072, 46.627827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144686, 0.278833, -0.949378,
		0.108978, 0.958127, 0.264795,
		0.983458, -0.065149, -0.169015,
		39.211113, 38.404526, 46.577122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676643, 39.094189, 46.380207>,  <38.522694, 38.450130, 46.695431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676643, 39.094189, 46.380207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984634, 38.861195, 46.276012>,  <39.169430, 38.721397, 46.213497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984634, 38.861195, 46.276012>,  <38.676643, 39.094189, 46.380207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984634, 38.861195, 46.276012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044221, 0.358541, -0.932466,
		0.636542, 0.729493, 0.250309,
		0.769973, -0.582484, -0.260486,
		39.215626, 38.686451, 46.197868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984436, 39.552998, 45.866962>,  <38.676643, 39.094189, 46.380207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984436, 39.552998, 45.866962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096222, 39.171654, 45.821339>,  <39.163292, 38.942848, 45.793964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096222, 39.171654, 45.821339>,  <38.984436, 39.552998, 45.866962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096222, 39.171654, 45.821339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155296, 0.072351, -0.985215,
		0.947515, 0.293042, -0.127834,
		0.279461, -0.953358, -0.114062,
		39.180061, 38.885647, 45.787121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487049, 39.560226, 45.337837>,  <38.984436, 39.552998, 45.866962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487049, 39.560226, 45.337837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.332123, 39.191727, 45.352165>,  <39.239166, 38.970627, 45.360764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.332123, 39.191727, 45.352165>,  <39.487049, 39.560226, 45.337837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332123, 39.191727, 45.352165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065413, -0.011296, -0.997794,
		0.919623, -0.388806, -0.055887,
		-0.387317, -0.921250, 0.035821,
		39.215927, 38.915352, 45.362911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866802, 39.313377, 44.882767>,  <39.487049, 39.560226, 45.337837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866802, 39.313377, 44.882767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562317, 39.055607, 44.911816>,  <39.379627, 38.900944, 44.929245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562317, 39.055607, 44.911816>,  <39.866802, 39.313377, 44.882767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562317, 39.055607, 44.911816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069886, -0.029812, -0.997109,
		0.644726, -0.764087, -0.022343,
		-0.761213, -0.644424, 0.072619,
		39.333954, 38.862278, 44.933601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989498, 38.814034, 44.334866>,  <39.866802, 39.313377, 44.882767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989498, 38.814034, 44.334866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608505, 38.740021, 44.431652>,  <39.379910, 38.695614, 44.489723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608505, 38.740021, 44.431652>,  <39.989498, 38.814034, 44.334866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608505, 38.740021, 44.431652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207030, -0.189440, -0.959818,
		0.223435, -0.964300, 0.142131,
		-0.952479, -0.185032, 0.241967,
		39.322762, 38.684513, 44.504242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770779, 38.115463, 44.144665>,  <39.989498, 38.814034, 44.334866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770779, 38.115463, 44.144665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449127, 38.353241, 44.145447>,  <39.256134, 38.495907, 44.145916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449127, 38.353241, 44.145447>,  <39.770779, 38.115463, 44.144665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449127, 38.353241, 44.145447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087313, -0.114863, -0.989537,
		-0.588004, -0.795888, 0.144268,
		-0.804132, 0.594448, 0.001951,
		39.207886, 38.531574, 44.146030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312351, 37.900986, 43.681763>,  <39.770779, 38.115463, 44.144665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312351, 37.900986, 43.681763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.191734, 38.279041, 43.732021>,  <39.119362, 38.505875, 43.762177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.191734, 38.279041, 43.732021>,  <39.312351, 37.900986, 43.681763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191734, 38.279041, 43.732021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310926, 0.027097, -0.950048,
		-0.901330, -0.325551, 0.285696,
		-0.301547, 0.945136, 0.125646,
		39.101269, 38.562584, 43.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585464, 37.938614, 43.331318>,  <39.312351, 37.900986, 43.681763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585464, 37.938614, 43.331318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734234, 38.309372, 43.351433>,  <38.823498, 38.531826, 43.363503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734234, 38.309372, 43.351433>,  <38.585464, 37.938614, 43.331318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734234, 38.309372, 43.351433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309224, 0.174792, -0.934788,
		-0.875243, 0.332125, 0.351630,
		0.371928, 0.926898, 0.050285,
		38.845814, 38.587440, 43.366520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213627, 38.311516, 42.815060>,  <38.585464, 37.938614, 43.331318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213627, 38.311516, 42.815060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523052, 38.548141, 42.905972>,  <38.708706, 38.690117, 42.960518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523052, 38.548141, 42.905972>,  <38.213627, 38.311516, 42.815060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523052, 38.548141, 42.905972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065775, 0.281762, -0.957227,
		-0.630301, 0.755422, 0.179050,
		0.773559, 0.591564, 0.227283,
		38.755119, 38.725613, 42.974155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053764, 38.988091, 42.565079>,  <38.213627, 38.311516, 42.815060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053764, 38.988091, 42.565079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452751, 39.007759, 42.585602>,  <38.692142, 39.019562, 42.597916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452751, 39.007759, 42.585602>,  <38.053764, 38.988091, 42.565079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452751, 39.007759, 42.585602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036680, 0.262160, -0.964327,
		-0.060869, 0.963771, 0.259693,
		0.997472, 0.049173, 0.051309,
		38.751991, 39.022511, 42.600994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238056, 39.572887, 42.164753>,  <38.053764, 38.988091, 42.565079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238056, 39.572887, 42.164753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.564213, 39.341667, 42.177383>,  <38.759907, 39.202934, 42.184959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.564213, 39.341667, 42.177383>,  <38.238056, 39.572887, 42.164753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564213, 39.341667, 42.177383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291842, 0.363338, -0.884768,
		0.499970, 0.730644, 0.464961,
		0.815388, -0.578053, 0.031574,
		38.808830, 39.168251, 42.186855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808029, 39.952236, 41.849491>,  <38.238056, 39.572887, 42.164753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808029, 39.952236, 41.849491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958794, 39.582100, 41.833042>,  <39.049252, 39.360020, 41.823174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958794, 39.582100, 41.833042>,  <38.808029, 39.952236, 41.849491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958794, 39.582100, 41.833042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525955, 0.250356, -0.812831,
		0.762438, 0.284733, 0.581047,
		0.376908, -0.925337, -0.041124,
		39.071865, 39.304501, 41.820705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450317, 39.976551, 41.502686>,  <38.808029, 39.952236, 41.849491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450317, 39.976551, 41.502686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322109, 39.598564, 41.476452>,  <39.245182, 39.371773, 41.460712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322109, 39.598564, 41.476452>,  <39.450317, 39.976551, 41.502686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322109, 39.598564, 41.476452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493643, -0.107544, -0.862990,
		0.808444, -0.308983, 0.500947,
		-0.320523, -0.944968, -0.065584,
		39.225952, 39.315075, 41.456776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.805952, 42.053078, 30.964298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184048, 41.926193, 30.995022>,  <28.410906, 41.850063, 31.013456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184048, 41.926193, 30.995022>,  <27.805952, 42.053078, 30.964298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184048, 41.926193, 30.995022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326341, -0.915226, 0.236352,
		-0.004673, -0.248476, -0.968627,
		0.945241, -0.317207, 0.076811,
		28.467621, 41.831032, 31.018064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917212, 41.490482, 30.467749>,  <27.805952, 42.053078, 30.964298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917212, 41.490482, 30.467749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179995, 41.477943, 30.769058>,  <28.337664, 41.470421, 30.949844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179995, 41.477943, 30.769058>,  <27.917212, 41.490482, 30.467749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179995, 41.477943, 30.769058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294402, -0.930478, 0.218031,
		0.694070, -0.365003, -0.620515,
		0.656958, -0.031352, 0.753275,
		28.377083, 41.468536, 30.995041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137617, 40.783627, 30.509018>,  <27.917212, 41.490482, 30.467749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137617, 40.783627, 30.509018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242374, 40.921444, 30.869619>,  <28.305229, 41.004135, 31.085979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242374, 40.921444, 30.869619>,  <28.137617, 40.783627, 30.509018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242374, 40.921444, 30.869619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261347, -0.873884, 0.409908,
		0.929038, -0.342956, -0.138818,
		0.261891, 0.344540, 0.901502,
		28.320942, 41.024807, 31.140070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558264, 40.280560, 30.857044>,  <28.137617, 40.783627, 30.509018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558264, 40.280560, 30.857044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394205, 40.505707, 31.144087>,  <28.295771, 40.640797, 31.316313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394205, 40.505707, 31.144087>,  <28.558264, 40.280560, 30.857044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394205, 40.505707, 31.144087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360038, -0.822853, 0.439642,
		0.837946, -0.078049, 0.540143,
		-0.410145, 0.562869, 0.717607,
		28.271162, 40.674568, 31.359369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569761, 39.819664, 31.557930>,  <28.558264, 40.280560, 30.857044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569761, 39.819664, 31.557930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296986, 40.105202, 31.621660>,  <28.133320, 40.276524, 31.659899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296986, 40.105202, 31.621660>,  <28.569761, 39.819664, 31.557930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296986, 40.105202, 31.621660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549579, -0.643841, 0.532383,
		0.482619, 0.275490, 0.831374,
		-0.681939, 0.713844, 0.159327,
		28.092403, 40.319355, 31.669458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506578, 39.720612, 32.259682>,  <28.569761, 39.819664, 31.557930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506578, 39.720612, 32.259682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173738, 39.904613, 32.135746>,  <27.974035, 40.015015, 32.061382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173738, 39.904613, 32.135746>,  <28.506578, 39.720612, 32.259682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173738, 39.904613, 32.135746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552590, -0.639782, 0.534157,
		0.047484, 0.615688, 0.786558,
		-0.832100, 0.460008, -0.309843,
		27.924109, 40.042614, 32.042793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160078, 39.832577, 32.873306>,  <28.506578, 39.720612, 32.259682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160078, 39.832577, 32.873306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878973, 39.859837, 32.590046>,  <27.710310, 39.876194, 32.420090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878973, 39.859837, 32.590046>,  <28.160078, 39.832577, 32.873306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878973, 39.859837, 32.590046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610182, -0.569544, 0.550725,
		-0.365790, 0.819131, 0.441840,
		-0.702763, 0.068153, -0.708152,
		27.668144, 39.880283, 32.377602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426575, 39.786598, 33.268486>,  <28.160078, 39.832577, 32.873306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426575, 39.786598, 33.268486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342051, 39.698181, 32.887650>,  <27.291336, 39.645130, 32.659145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342051, 39.698181, 32.887650>,  <27.426575, 39.786598, 33.268486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342051, 39.698181, 32.887650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743164, -0.596369, 0.303399,
		-0.634866, 0.771674, -0.038254,
		-0.211312, -0.221047, -0.952095,
		27.278658, 39.631866, 32.602020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710707, 39.931618, 33.126637>,  <27.426575, 39.786598, 33.268486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710707, 39.931618, 33.126637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.835381, 39.663521, 32.857227>,  <26.910185, 39.502663, 32.695583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.835381, 39.663521, 32.857227>,  <26.710707, 39.931618, 33.126637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835381, 39.663521, 32.857227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766111, -0.596567, 0.239127,
		-0.562074, 0.441460, -0.699419,
		0.311685, -0.670239, -0.673522,
		26.928886, 39.462448, 32.655170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141008, 39.703064, 32.831509>,  <26.710707, 39.931618, 33.126637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141008, 39.703064, 32.831509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418911, 39.422215, 32.769115>,  <26.585653, 39.253704, 32.731678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418911, 39.422215, 32.769115>,  <26.141008, 39.703064, 32.831509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418911, 39.422215, 32.769115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662814, -0.709216, 0.240189,
		-0.279268, -0.063486, -0.958112,
		0.694757, -0.702127, -0.155982,
		26.627338, 39.211575, 32.722321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821003, 39.229649, 32.540283>,  <26.141008, 39.703064, 32.831509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821003, 39.229649, 32.540283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.147633, 39.042789, 32.675919>,  <26.343611, 38.930676, 32.757301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.147633, 39.042789, 32.675919>,  <25.821003, 39.229649, 32.540283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147633, 39.042789, 32.675919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554150, -0.798885, 0.233882,
		0.161634, -0.378887, -0.911218,
		0.816574, -0.467148, 0.339088,
		26.392605, 38.902645, 32.777645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730389, 38.558357, 32.415363>,  <25.821003, 39.229649, 32.540283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730389, 38.558357, 32.415363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.019703, 38.545918, 32.691303>,  <26.193291, 38.538452, 32.856865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.019703, 38.545918, 32.691303>,  <25.730389, 38.558357, 32.415363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019703, 38.545918, 32.691303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472344, -0.751010, 0.461383,
		0.503734, -0.659557, -0.557885,
		0.723286, -0.031099, 0.689848,
		26.236689, 38.536587, 32.898258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582096, 37.866322, 32.640987>,  <25.730389, 38.558357, 32.415363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582096, 37.866322, 32.640987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818735, 38.011707, 32.928852>,  <25.960718, 38.098938, 33.101570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818735, 38.011707, 32.928852>,  <25.582096, 37.866322, 32.640987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818735, 38.011707, 32.928852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274608, -0.748406, 0.603721,
		0.758027, -0.554783, -0.342944,
		0.591596, 0.363462, 0.719660,
		25.996214, 38.120747, 33.144749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010273, 37.240913, 32.773422>,  <25.582096, 37.866322, 32.640987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010273, 37.240913, 32.773422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023468, 37.510330, 33.068787>,  <26.031385, 37.671982, 33.246006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023468, 37.510330, 33.068787>,  <26.010273, 37.240913, 32.773422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023468, 37.510330, 33.068787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298831, -0.698369, 0.650369,
		0.953736, -0.242113, 0.178239,
		0.032986, 0.673544, 0.738411,
		26.033363, 37.712395, 33.290310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497665, 36.971230, 33.276268>,  <26.010273, 37.240913, 32.773422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497665, 36.971230, 33.276268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247269, 37.232841, 33.446148>,  <26.097031, 37.389809, 33.548077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247269, 37.232841, 33.446148>,  <26.497665, 36.971230, 33.276268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247269, 37.232841, 33.446148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214264, -0.667901, 0.712740,
		0.749815, 0.355172, 0.558238,
		-0.625993, 0.654034, 0.424702,
		26.059471, 37.429050, 33.573559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593538, 36.979656, 34.060081>,  <26.497665, 36.971230, 33.276268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593538, 36.979656, 34.060081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231075, 37.141228, 34.009926>,  <26.013597, 37.238171, 33.979832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231075, 37.141228, 34.009926>,  <26.593538, 36.979656, 34.060081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231075, 37.141228, 34.009926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344815, -0.533871, 0.772065,
		0.244913, 0.742850, 0.623051,
		-0.906157, 0.403926, -0.125394,
		25.959229, 37.262405, 33.972309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433529, 37.041988, 34.723843>,  <26.593538, 36.979656, 34.060081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433529, 37.041988, 34.723843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.078972, 37.068333, 34.540550>,  <25.866238, 37.084141, 34.430576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.078972, 37.068333, 34.540550>,  <26.433529, 37.041988, 34.723843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078972, 37.068333, 34.540550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420463, -0.528710, 0.737344,
		-0.193706, 0.846243, 0.496337,
		-0.886391, 0.065864, -0.458228,
		25.813055, 37.088093, 34.403080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976080, 37.268677, 35.313602>,  <26.433529, 37.041988, 34.723843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976080, 37.268677, 35.313602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776634, 37.104465, 35.008224>,  <25.656967, 37.005939, 34.824997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776634, 37.104465, 35.008224>,  <25.976080, 37.268677, 35.313602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776634, 37.104465, 35.008224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275839, -0.759814, 0.588724,
		-0.821765, 0.504134, 0.265615,
		-0.498614, -0.410526, -0.763448,
		25.627050, 36.981308, 34.779190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252096, 37.756020, 35.815319>,  <25.976080, 37.268677, 35.313602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252096, 37.756020, 35.815319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.509453, 37.672131, 36.109818>,  <26.663866, 37.621796, 36.286518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.509453, 37.672131, 36.109818>,  <26.252096, 37.756020, 35.815319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509453, 37.672131, 36.109818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182852, 0.976006, 0.118229,
		-0.743379, 0.058557, 0.666302,
		0.643391, -0.209723, 0.736250,
		26.702471, 37.609215, 36.330692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033926, 38.243065, 36.320297>,  <26.252096, 37.756020, 35.815319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033926, 38.243065, 36.320297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.404392, 38.113403, 36.397388>,  <26.626671, 38.035606, 36.443642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.404392, 38.113403, 36.397388>,  <26.033926, 38.243065, 36.320297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404392, 38.113403, 36.397388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262248, 0.920850, 0.288551,
		-0.271008, -0.216703, 0.937867,
		0.926165, -0.324153, 0.192728,
		26.682241, 38.016159, 36.455208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288935, 38.530281, 36.920528>,  <26.033926, 38.243065, 36.320297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288935, 38.530281, 36.920528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.626657, 38.432884, 36.729591>,  <26.829292, 38.374447, 36.615028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.626657, 38.432884, 36.729591>,  <26.288935, 38.530281, 36.920528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626657, 38.432884, 36.729591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391925, 0.888082, 0.240218,
		0.365428, -0.389900, 0.845245,
		0.844308, -0.243491, -0.477342,
		26.879950, 38.359837, 36.586388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804983, 38.868916, 37.300861>,  <26.288935, 38.530281, 36.920528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804983, 38.868916, 37.300861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974243, 38.769257, 36.952408>,  <27.075798, 38.709461, 36.743336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974243, 38.769257, 36.952408>,  <26.804983, 38.868916, 37.300861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974243, 38.769257, 36.952408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459226, 0.887784, -0.030841,
		0.781062, -0.386996, 0.490078,
		0.423148, -0.249145, -0.871133,
		27.101187, 38.694511, 36.691067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545582, 39.139194, 37.311001>,  <26.804983, 38.868916, 37.300861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545582, 39.139194, 37.311001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454163, 39.086098, 36.925224>,  <27.399311, 39.054241, 36.693760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454163, 39.086098, 36.925224>,  <27.545582, 39.139194, 37.311001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454163, 39.086098, 36.925224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280117, 0.939800, -0.195728,
		0.932363, -0.314889, -0.177606,
		-0.228547, -0.132739, -0.964441,
		27.385599, 39.046276, 36.635891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071791, 39.351307, 36.944225>,  <27.545582, 39.139194, 37.311001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071791, 39.351307, 36.944225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772875, 39.359287, 36.678547>,  <27.593525, 39.364075, 36.519138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772875, 39.359287, 36.678547>,  <28.071791, 39.351307, 36.944225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772875, 39.359287, 36.678547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296111, 0.904816, -0.305982,
		0.594873, -0.425334, -0.682068,
		-0.747291, 0.019947, -0.664197,
		27.548687, 39.365273, 36.479286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369993, 39.496162, 36.301449>,  <28.071791, 39.351307, 36.944225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369993, 39.496162, 36.301449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986609, 39.588509, 36.234451>,  <27.756578, 39.643917, 36.194252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986609, 39.588509, 36.234451>,  <28.369993, 39.496162, 36.301449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986609, 39.588509, 36.234451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283873, 0.829198, -0.481505,
		0.027723, -0.509050, -0.860290,
		-0.958461, 0.230864, -0.167493,
		27.699070, 39.657768, 36.184204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455053, 39.623043, 35.642235>,  <28.369993, 39.496162, 36.301449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455053, 39.623043, 35.642235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123840, 39.792183, 35.789509>,  <27.925112, 39.893665, 35.877872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123840, 39.792183, 35.789509>,  <28.455053, 39.623043, 35.642235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123840, 39.792183, 35.789509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273883, 0.878049, -0.392451,
		-0.489233, -0.224122, -0.842865,
		-0.828033, 0.422846, 0.368187,
		27.875431, 39.919037, 35.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210867, 39.992638, 35.125790>,  <28.455053, 39.623043, 35.642235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210867, 39.992638, 35.125790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018450, 40.159798, 35.434063>,  <27.903000, 40.260094, 35.619026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018450, 40.159798, 35.434063>,  <28.210867, 39.992638, 35.125790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018450, 40.159798, 35.434063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275905, 0.906575, -0.319373,
		-0.832150, 0.059003, -0.551403,
		-0.481044, 0.417901, 0.770685,
		27.874136, 40.285168, 35.665268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850834, 40.561222, 34.796627>,  <28.210867, 39.992638, 35.125790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850834, 40.561222, 34.796627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887564, 40.640106, 35.187046>,  <27.909601, 40.687435, 35.421299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887564, 40.640106, 35.187046>,  <27.850834, 40.561222, 34.796627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887564, 40.640106, 35.187046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167994, 0.963074, -0.210394,
		-0.981502, 0.183291, 0.055305,
		0.091827, 0.197211, 0.976051,
		27.915112, 40.699268, 35.479862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470409, 41.188118, 34.942169>,  <27.850834, 40.561222, 34.796627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470409, 41.188118, 34.942169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731859, 41.195053, 35.244820>,  <27.888729, 41.199215, 35.426411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731859, 41.195053, 35.244820>,  <27.470409, 41.188118, 34.942169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731859, 41.195053, 35.244820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250619, 0.938372, -0.238009,
		-0.714121, 0.345192, 0.608995,
		0.653622, 0.017341, 0.756622,
		27.927946, 41.200256, 35.471806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470013, 41.854065, 35.224098>,  <27.470409, 41.188118, 34.942169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470013, 41.854065, 35.224098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822992, 41.722237, 35.358364>,  <28.034781, 41.643139, 35.438923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822992, 41.722237, 35.358364>,  <27.470013, 41.854065, 35.224098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822992, 41.722237, 35.358364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409356, 0.889553, -0.202786,
		-0.231761, 0.316355, 0.919895,
		0.882448, -0.329567, 0.335666,
		28.087727, 41.623367, 35.459064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739408, 42.429111, 35.803024>,  <27.470013, 41.854065, 35.224098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739408, 42.429111, 35.803024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065342, 42.237190, 35.672897>,  <28.260902, 42.122036, 35.594822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065342, 42.237190, 35.672897>,  <27.739408, 42.429111, 35.803024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065342, 42.237190, 35.672897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471871, 0.874961, -0.108542,
		0.336723, -0.065066, 0.939353,
		0.814835, -0.479802, -0.325322,
		28.309792, 42.093250, 35.575302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260330, 42.869762, 35.999035>,  <27.739408, 42.429111, 35.803024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260330, 42.869762, 35.999035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413771, 42.619755, 35.727093>,  <28.505835, 42.469749, 35.563927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413771, 42.619755, 35.727093>,  <28.260330, 42.869762, 35.999035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413771, 42.619755, 35.727093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627444, 0.716555, -0.304735,
		0.677618, -0.309673, 0.667036,
		0.383600, -0.625021, -0.679853,
		28.528851, 42.432247, 35.523136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018473, 42.967564, 36.031109>,  <28.260330, 42.869762, 35.999035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018473, 42.967564, 36.031109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935406, 42.827976, 35.665573>,  <28.885565, 42.744225, 35.446251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935406, 42.827976, 35.665573>,  <29.018473, 42.967564, 36.031109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935406, 42.827976, 35.665573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717712, 0.580403, -0.384736,
		0.664653, -0.735769, 0.129926,
		-0.207667, -0.348966, -0.913837,
		28.873106, 42.723286, 35.391422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673733, 42.954823, 35.692951>,  <29.018473, 42.967564, 36.031109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673733, 42.954823, 35.692951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422766, 42.907188, 35.385143>,  <29.272186, 42.878609, 35.200459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422766, 42.907188, 35.385143>,  <29.673733, 42.954823, 35.692951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422766, 42.907188, 35.385143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512365, 0.681036, -0.523137,
		0.586371, -0.722502, -0.366279,
		-0.627417, -0.119084, -0.769524,
		29.234541, 42.871464, 35.154285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124718, 42.883080, 35.124428>,  <29.673733, 42.954823, 35.692951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124718, 42.883080, 35.124428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.776323, 42.985416, 34.956654>,  <29.567287, 43.046818, 34.855988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.776323, 42.985416, 34.956654>,  <30.124718, 42.883080, 35.124428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776323, 42.985416, 34.956654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491310, 0.454958, -0.742716,
		0.000807, -0.852969, -0.521961,
		-0.870984, 0.255845, -0.419439,
		29.515028, 43.062168, 34.830822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233225, 42.699596, 34.546543>,  <30.124718, 42.883080, 35.124428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233225, 42.699596, 34.546543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943024, 42.972473, 34.510185>,  <29.768904, 43.136200, 34.488369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943024, 42.972473, 34.510185>,  <30.233225, 42.699596, 34.546543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943024, 42.972473, 34.510185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446395, 0.365935, -0.816593,
		-0.523809, -0.633016, -0.570013,
		-0.725504, 0.682190, -0.090895,
		29.725372, 43.177132, 34.482918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084532, 42.809204, 33.789906>,  <30.233225, 42.699596, 34.546543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084532, 42.809204, 33.789906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898336, 43.120514, 33.958481>,  <29.786619, 43.307301, 34.059624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898336, 43.120514, 33.958481>,  <30.084532, 42.809204, 33.789906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898336, 43.120514, 33.958481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171889, 0.546598, -0.819564,
		-0.868202, -0.309057, -0.388212,
		-0.465488, 0.778277, 0.421434,
		29.758690, 43.353996, 34.084911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800844, 43.165527, 33.162510>,  <30.084532, 42.809204, 33.789906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800844, 43.165527, 33.162510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818174, 43.443027, 33.450073>,  <29.828571, 43.609528, 33.622612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818174, 43.443027, 33.450073>,  <29.800844, 43.165527, 33.162510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818174, 43.443027, 33.450073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329526, 0.669394, -0.665826,
		-0.943152, 0.265746, -0.199608,
		0.043325, 0.693751, 0.718910,
		29.831171, 43.651154, 33.665745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497787, 43.825378, 32.790447>,  <29.800844, 43.165527, 33.162510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497787, 43.825378, 32.790447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707397, 43.936131, 33.112625>,  <29.833164, 44.002583, 33.305931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707397, 43.936131, 33.112625>,  <29.497787, 43.825378, 32.790447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707397, 43.936131, 33.112625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519111, 0.645894, -0.559772,
		-0.675219, 0.711448, 0.194732,
		0.524025, 0.276881, 0.805441,
		29.864605, 44.019196, 33.354256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474543, 44.544449, 32.909054>,  <29.497787, 43.825378, 32.790447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474543, 44.544449, 32.909054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808821, 44.429657, 33.096352>,  <30.009388, 44.360783, 33.208733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808821, 44.429657, 33.096352>,  <29.474543, 44.544449, 32.909054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808821, 44.429657, 33.096352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505994, 0.733805, -0.453322,
		-0.213507, 0.615769, 0.758448,
		0.835694, -0.286983, 0.468248,
		30.059528, 44.343563, 33.236824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633915, 45.145824, 33.125771>,  <29.474543, 44.544449, 32.909054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633915, 45.145824, 33.125771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977528, 44.941143, 33.119846>,  <30.183695, 44.818333, 33.116291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977528, 44.941143, 33.119846>,  <29.633915, 45.145824, 33.125771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977528, 44.941143, 33.119846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494441, 0.836849, -0.234973,
		0.132628, 0.194528, 0.971889,
		0.859033, -0.511706, -0.014807,
		30.235237, 44.787632, 33.115406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059860, 45.652985, 33.404549>,  <29.633915, 45.145824, 33.125771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059860, 45.652985, 33.404549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295801, 45.380787, 33.230652>,  <30.437365, 45.217468, 33.126312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295801, 45.380787, 33.230652>,  <30.059860, 45.652985, 33.404549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295801, 45.380787, 33.230652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627558, 0.725107, -0.283532,
		0.508179, -0.105586, 0.854755,
		0.589851, -0.680494, -0.434745,
		30.472757, 45.176640, 33.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.601215, 34.648746, 46.256710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391941, 34.309376, 46.224602>,  <37.266376, 34.105751, 46.205338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391941, 34.309376, 46.224602>,  <37.601215, 34.648746, 46.256710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391941, 34.309376, 46.224602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246622, -0.240886, 0.938697,
		-0.815755, 0.471316, 0.335270,
		-0.523184, -0.848431, -0.080267,
		37.234985, 34.054848, 46.200523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122295, 34.639626, 46.884907>,  <37.601215, 34.648746, 46.256710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122295, 34.639626, 46.884907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198021, 34.270187, 46.751568>,  <37.243458, 34.048523, 46.671562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198021, 34.270187, 46.751568>,  <37.122295, 34.639626, 46.884907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198021, 34.270187, 46.751568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181013, -0.300846, 0.936337,
		-0.965088, -0.237602, 0.110230,
		0.189314, -0.923600, -0.333352,
		37.254814, 33.993107, 46.651562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797520, 34.234840, 47.280106>,  <37.122295, 34.639626, 46.884907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797520, 34.234840, 47.280106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045620, 33.963501, 47.122559>,  <37.194481, 33.800697, 47.028030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045620, 33.963501, 47.122559>,  <36.797520, 34.234840, 47.280106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045620, 33.963501, 47.122559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187554, -0.359303, 0.914180,
		-0.761650, -0.640894, -0.095631,
		0.620252, -0.678349, -0.393865,
		37.231697, 33.759995, 47.004398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600254, 33.597717, 47.496773>,  <36.797520, 34.234840, 47.280106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600254, 33.597717, 47.496773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979343, 33.535553, 47.385292>,  <37.206795, 33.498257, 47.318405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979343, 33.535553, 47.385292>,  <36.600254, 33.597717, 47.496773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979343, 33.535553, 47.385292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218869, -0.318981, 0.922143,
		-0.232207, -0.934933, -0.268291,
		0.947722, -0.155407, -0.278697,
		37.263660, 33.488930, 47.301682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778858, 32.903416, 47.748787>,  <36.600254, 33.597717, 47.496773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778858, 32.903416, 47.748787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130802, 33.084061, 47.689613>,  <37.341969, 33.192448, 47.654110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130802, 33.084061, 47.689613>,  <36.778858, 32.903416, 47.748787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130802, 33.084061, 47.689613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332699, -0.363085, 0.870333,
		0.339343, -0.814992, -0.469717,
		0.879862, 0.451616, -0.147937,
		37.394760, 33.219547, 47.645233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210300, 32.420170, 47.677647>,  <36.778858, 32.903416, 47.748787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210300, 32.420170, 47.677647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439079, 32.730972, 47.782825>,  <37.576347, 32.917454, 47.845932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439079, 32.730972, 47.782825>,  <37.210300, 32.420170, 47.677647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439079, 32.730972, 47.782825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462063, -0.570031, 0.679384,
		0.677775, -0.267070, -0.685051,
		0.571943, 0.777006, 0.262950,
		37.610661, 32.964073, 47.861710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852703, 32.076515, 47.883583>,  <37.210300, 32.420170, 47.677647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852703, 32.076515, 47.883583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834393, 32.446953, 48.033386>,  <37.823406, 32.669216, 48.123268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834393, 32.446953, 48.033386>,  <37.852703, 32.076515, 47.883583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834393, 32.446953, 48.033386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480532, -0.308266, 0.821012,
		0.875782, 0.217547, -0.430906,
		-0.045775, 0.926092, 0.374512,
		37.820660, 32.724781, 48.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463863, 32.213505, 48.034859>,  <37.852703, 32.076515, 47.883583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463863, 32.213505, 48.034859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249428, 32.470207, 48.254223>,  <38.120766, 32.624229, 48.385841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249428, 32.470207, 48.254223>,  <38.463863, 32.213505, 48.034859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249428, 32.470207, 48.254223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526971, -0.253108, 0.811319,
		0.659478, 0.723936, -0.202499,
		-0.536089, 0.641757, 0.548412,
		38.088600, 32.662735, 48.418747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911793, 32.418056, 48.510704>,  <38.463863, 32.213505, 48.034859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911793, 32.418056, 48.510704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569794, 32.546581, 48.673550>,  <38.364594, 32.623695, 48.771255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569794, 32.546581, 48.673550>,  <38.911793, 32.418056, 48.510704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569794, 32.546581, 48.673550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369090, -0.174504, 0.912864,
		0.364358, 0.930756, 0.030606,
		-0.854994, 0.321313, 0.407115,
		38.313297, 32.642975, 48.795685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154991, 32.822784, 48.935806>,  <38.911793, 32.418056, 48.510704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154991, 32.822784, 48.935806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801575, 32.712605, 49.087322>,  <38.589523, 32.646496, 49.178230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801575, 32.712605, 49.087322>,  <39.154991, 32.822784, 48.935806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801575, 32.712605, 49.087322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442081, -0.223440, 0.868699,
		-0.154650, 0.934986, 0.319192,
		-0.883542, -0.275453, 0.378785,
		38.536510, 32.629967, 49.200958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087006, 33.287994, 49.459999>,  <39.154991, 32.822784, 48.935806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087006, 33.287994, 49.459999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864956, 32.969250, 49.555374>,  <38.731728, 32.778004, 49.612598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864956, 32.969250, 49.555374>,  <39.087006, 33.287994, 49.459999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864956, 32.969250, 49.555374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539041, -0.126335, 0.832751,
		-0.633464, 0.590806, 0.499672,
		-0.555120, -0.796862, 0.238440,
		38.698421, 32.730190, 49.626907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454506, 33.776817, 49.624512>,  <39.087006, 33.287994, 49.459999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454506, 33.776817, 49.624512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.582802, 33.808529, 50.002048>,  <38.659779, 33.827557, 50.228573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.582802, 33.808529, 50.002048>,  <38.454506, 33.776817, 49.624512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582802, 33.808529, 50.002048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699618, 0.651905, -0.292499,
		-0.638485, 0.754146, 0.153625,
		0.320736, 0.079278, 0.943845,
		38.679024, 33.832314, 50.285202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524029, 34.505436, 49.767269>,  <38.454506, 33.776817, 49.624512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524029, 34.505436, 49.767269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748608, 34.279293, 50.008980>,  <38.883354, 34.143608, 50.154007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748608, 34.279293, 50.008980>,  <38.524029, 34.505436, 49.767269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748608, 34.279293, 50.008980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767324, 0.629083, -0.124375,
		-0.309821, 0.533504, 0.787010,
		0.561449, -0.565357, 0.604273,
		38.917042, 34.109684, 50.190262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050613, 35.003033, 50.079288>,  <38.524029, 34.505436, 49.767269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050613, 35.003033, 50.079288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.144260, 34.614239, 50.087624>,  <39.200447, 34.380962, 50.092625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.144260, 34.614239, 50.087624>,  <39.050613, 35.003033, 50.079288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144260, 34.614239, 50.087624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968597, 0.231345, -0.091099,
		0.083726, 0.041512, 0.995624,
		0.234115, -0.971986, 0.020839,
		39.214497, 34.322643, 50.093876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526142, 34.864040, 50.624470>,  <39.050613, 35.003033, 50.079288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526142, 34.864040, 50.624470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580845, 34.617241, 50.314472>,  <39.613667, 34.469162, 50.128475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580845, 34.617241, 50.314472>,  <39.526142, 34.864040, 50.624470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580845, 34.617241, 50.314472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970641, 0.239734, -0.019573,
		0.197869, -0.749563, 0.631667,
		0.136761, -0.616995, -0.774992,
		39.621872, 34.432144, 50.081974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083981, 35.299477, 50.731213>,  <39.526142, 34.864040, 50.624470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083981, 35.299477, 50.731213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.095844, 35.657722, 50.908749>,  <40.102962, 35.872669, 51.015270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.095844, 35.657722, 50.908749>,  <40.083981, 35.299477, 50.731213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095844, 35.657722, 50.908749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158009, 0.442650, -0.882663,
		-0.986992, -0.043951, 0.154645,
		0.029659, 0.895617, 0.443837,
		40.104740, 35.926407, 51.041901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505440, 35.666302, 50.486538>,  <40.083981, 35.299477, 50.731213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505440, 35.666302, 50.486538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799454, 35.917233, 50.589439>,  <39.975864, 36.067791, 50.651180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799454, 35.917233, 50.589439>,  <39.505440, 35.666302, 50.486538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799454, 35.917233, 50.589439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065221, 0.443071, -0.894111,
		-0.674882, 0.640427, 0.366589,
		0.735038, 0.627328, 0.257252,
		40.019966, 36.105431, 50.666615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150105, 36.335911, 50.404579>,  <39.505440, 35.666302, 50.486538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150105, 36.335911, 50.404579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547878, 36.376865, 50.414494>,  <39.786541, 36.401440, 50.420441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547878, 36.376865, 50.414494>,  <39.150105, 36.335911, 50.404579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547878, 36.376865, 50.414494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028417, 0.487277, -0.872785,
		-0.101439, 0.867224, 0.487475,
		0.994436, 0.102387, 0.024785,
		39.846210, 36.407581, 50.421928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195427, 36.923290, 50.093342>,  <39.150105, 36.335911, 50.404579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195427, 36.923290, 50.093342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.570938, 36.788860, 50.062992>,  <39.796246, 36.708202, 50.044785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.570938, 36.788860, 50.062992>,  <39.195427, 36.923290, 50.093342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570938, 36.788860, 50.062992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125476, 0.538589, -0.833173,
		0.320874, 0.772640, 0.547783,
		0.938773, -0.336077, -0.075872,
		39.852570, 36.688038, 50.040230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543407, 37.457363, 49.989094>,  <39.195427, 36.923290, 50.093342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543407, 37.457363, 49.989094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793068, 37.171036, 49.863850>,  <39.942863, 36.999241, 49.788704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793068, 37.171036, 49.863850>,  <39.543407, 37.457363, 49.989094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793068, 37.171036, 49.863850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169774, 0.515438, -0.839941,
		0.762633, 0.471095, 0.443239,
		0.624154, -0.715817, -0.313110,
		39.980312, 36.956291, 49.769917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079441, 37.842735, 49.761452>,  <39.543407, 37.457363, 49.989094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079441, 37.842735, 49.761452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.081383, 37.482201, 49.588211>,  <40.082550, 37.265881, 49.484268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.081383, 37.482201, 49.588211>,  <40.079441, 37.842735, 49.761452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081383, 37.482201, 49.588211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223449, 0.423129, -0.878084,
		0.974703, -0.092509, 0.203458,
		0.004858, -0.901334, -0.433097,
		40.082840, 37.211800, 49.458282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633171, 37.886742, 49.301468>,  <40.079441, 37.842735, 49.761452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633171, 37.886742, 49.301468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.407860, 37.584713, 49.167252>,  <40.272675, 37.403496, 49.086720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.407860, 37.584713, 49.167252>,  <40.633171, 37.886742, 49.301468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407860, 37.584713, 49.167252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032061, 0.425764, -0.904266,
		0.825646, -0.498594, -0.264031,
		-0.563277, -0.755069, -0.335544,
		40.238876, 37.358192, 49.066589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001549, 37.615078, 48.659428>,  <40.633171, 37.886742, 49.301468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001549, 37.615078, 48.659428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614563, 37.513927, 48.662537>,  <40.382370, 37.453236, 48.664402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614563, 37.513927, 48.662537>,  <41.001549, 37.615078, 48.659428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614563, 37.513927, 48.662537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115358, 0.413598, -0.903122,
		0.225162, -0.874638, -0.429314,
		-0.967468, -0.252874, 0.007770,
		40.324322, 37.438065, 48.664867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941971, 37.289452, 48.103039>,  <41.001549, 37.615078, 48.659428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941971, 37.289452, 48.103039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559246, 37.354923, 48.199142>,  <40.329613, 37.394207, 48.256805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559246, 37.354923, 48.199142>,  <40.941971, 37.289452, 48.103039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559246, 37.354923, 48.199142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157990, 0.401011, -0.902347,
		-0.244040, -0.901333, -0.357832,
		-0.956809, 0.163675, 0.240264,
		40.272202, 37.404026, 48.271221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451778, 37.042038, 47.508747>,  <40.941971, 37.289452, 48.103039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451778, 37.042038, 47.508747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.230316, 37.311344, 47.704781>,  <40.097439, 37.472927, 47.822399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.230316, 37.311344, 47.704781>,  <40.451778, 37.042038, 47.508747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230316, 37.311344, 47.704781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414776, 0.287364, -0.863356,
		-0.722102, -0.681272, 0.120156,
		-0.553652, 0.673268, 0.490081,
		40.064220, 37.513325, 47.851807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823238, 37.125393, 47.058376>,  <40.451778, 37.042038, 47.508747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823238, 37.125393, 47.058376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.819378, 37.433811, 47.313057>,  <39.817062, 37.618862, 47.465866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.819378, 37.433811, 47.313057>,  <39.823238, 37.125393, 47.058376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819378, 37.433811, 47.313057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532656, 0.534913, -0.655854,
		-0.846277, -0.345477, 0.405539,
		-0.009654, 0.771047, 0.636705,
		39.816483, 37.665127, 47.504070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113209, 37.244884, 47.113644>,  <39.823238, 37.125393, 47.058376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113209, 37.244884, 47.113644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302166, 37.584103, 47.209702>,  <39.415539, 37.787632, 47.267334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302166, 37.584103, 47.209702>,  <39.113209, 37.244884, 47.113644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302166, 37.584103, 47.209702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382096, 0.442567, -0.811257,
		-0.794259, 0.291475, 0.533100,
		0.472393, 0.848043, 0.240141,
		39.443886, 37.838516, 47.281742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694733, 37.671070, 46.967430>,  <39.113209, 37.244884, 47.113644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694733, 37.671070, 46.967430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.009274, 37.917889, 46.979401>,  <39.197998, 38.065979, 46.986584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.009274, 37.917889, 46.979401>,  <38.694733, 37.671070, 46.967430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009274, 37.917889, 46.979401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318497, 0.446445, -0.836209,
		-0.529343, 0.648026, 0.547593,
		0.786356, 0.617048, 0.029928,
		39.245182, 38.103004, 46.988380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888000, 37.835506, 47.139996>,  <38.694733, 37.671070, 46.967430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888000, 37.835506, 47.139996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497509, 37.883068, 47.067509>,  <37.263214, 37.911606, 47.024017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497509, 37.883068, 47.067509>,  <37.888000, 37.835506, 47.139996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497509, 37.883068, 47.067509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213895, -0.663633, 0.716827,
		-0.035031, 0.738548, 0.673290,
		-0.976228, 0.118902, -0.181219,
		37.204639, 37.918739, 47.013142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580826, 38.086952, 47.770512>,  <37.888000, 37.835506, 47.139996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580826, 38.086952, 47.770512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276634, 37.927944, 47.565125>,  <37.094120, 37.832539, 47.441891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276634, 37.927944, 47.565125>,  <37.580826, 38.086952, 47.770512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276634, 37.927944, 47.565125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133830, -0.677802, 0.722962,
		-0.635424, 0.618514, 0.462252,
		-0.760478, -0.397524, -0.513467,
		37.048492, 37.808685, 47.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963688, 38.250057, 48.184372>,  <37.580826, 38.086952, 47.770512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963688, 38.250057, 48.184372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846779, 37.944595, 47.954102>,  <36.776634, 37.761318, 47.815941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846779, 37.944595, 47.954102>,  <36.963688, 38.250057, 48.184372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846779, 37.944595, 47.954102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283128, -0.505879, 0.814816,
		-0.913462, 0.401142, -0.068356,
		-0.292277, -0.763657, -0.575675,
		36.759094, 37.715500, 47.781399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347111, 38.075592, 48.293602>,  <36.963688, 38.250057, 48.184372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347111, 38.075592, 48.293602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459686, 37.733322, 48.119881>,  <36.527229, 37.527962, 48.015648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459686, 37.733322, 48.119881>,  <36.347111, 38.075592, 48.293602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459686, 37.733322, 48.119881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301490, -0.508529, 0.806537,
		-0.910987, -0.096050, -0.401095,
		0.281436, -0.855671, -0.434305,
		36.544117, 37.476620, 47.989590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960094, 37.639717, 48.600388>,  <36.347111, 38.075592, 48.293602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960094, 37.639717, 48.600388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259167, 37.416237, 48.456814>,  <36.438610, 37.282150, 48.370670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259167, 37.416237, 48.456814>,  <35.960094, 37.639717, 48.600388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259167, 37.416237, 48.456814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096044, -0.625812, 0.774038,
		-0.657081, -0.544256, -0.521564,
		0.747676, -0.558699, -0.358938,
		36.483471, 37.248627, 48.349133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816780, 36.956924, 48.745750>,  <35.960094, 37.639717, 48.600388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816780, 36.956924, 48.745750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200802, 36.900276, 48.649220>,  <36.431217, 36.866287, 48.591301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200802, 36.900276, 48.649220>,  <35.816780, 36.956924, 48.745750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200802, 36.900276, 48.649220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131346, -0.533443, 0.835576,
		-0.247062, -0.833897, -0.493535,
		0.960057, -0.141615, -0.241323,
		36.488819, 36.857792, 48.576824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944618, 36.178066, 48.776608>,  <35.816780, 36.956924, 48.745750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944618, 36.178066, 48.776608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280155, 36.390240, 48.825573>,  <36.481476, 36.517544, 48.854950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280155, 36.390240, 48.825573>,  <35.944618, 36.178066, 48.776608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280155, 36.390240, 48.825573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198290, -0.507142, 0.838742,
		0.506975, -0.679300, -0.530592,
		0.838843, 0.530432, 0.122410,
		36.531807, 36.549370, 48.862297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165352, 35.608208, 48.304104>,  <35.944618, 36.178066, 48.776608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165352, 35.608208, 48.304104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944580, 35.275318, 48.325176>,  <35.812119, 35.075584, 48.337818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944580, 35.275318, 48.325176>,  <36.165352, 35.608208, 48.304104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944580, 35.275318, 48.325176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289347, 0.131880, -0.948096,
		0.782082, -0.538524, -0.313590,
		-0.551929, -0.832225, 0.052680,
		35.779003, 35.025650, 48.340981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295933, 35.185947, 47.633610>,  <36.165352, 35.608208, 48.304104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295933, 35.185947, 47.633610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936737, 35.095531, 47.784618>,  <35.721218, 35.041283, 47.875221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936737, 35.095531, 47.784618>,  <36.295933, 35.185947, 47.633610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936737, 35.095531, 47.784618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422066, 0.199937, -0.884243,
		0.124395, -0.953379, -0.274945,
		-0.897990, -0.226041, 0.377518,
		35.667339, 35.027718, 47.897873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997585, 34.689068, 47.218330>,  <36.295933, 35.185947, 47.633610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997585, 34.689068, 47.218330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692764, 34.883408, 47.389553>,  <35.509872, 35.000011, 47.492287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692764, 34.883408, 47.389553>,  <35.997585, 34.689068, 47.218330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692764, 34.883408, 47.389553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416422, 0.138518, -0.898557,
		-0.495857, -0.862997, 0.096761,
		-0.762049, 0.485849, 0.428056,
		35.464149, 35.029163, 47.517971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371166, 34.436573, 46.857090>,  <35.997585, 34.689068, 47.218330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371166, 34.436573, 46.857090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248848, 34.762146, 47.054680>,  <35.175457, 34.957489, 47.173233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248848, 34.762146, 47.054680>,  <35.371166, 34.436573, 46.857090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248848, 34.762146, 47.054680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480938, 0.315712, -0.817939,
		-0.821697, -0.487695, 0.294904,
		-0.305800, 0.813929, 0.493971,
		35.157108, 35.006325, 47.202869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640179, 34.453018, 46.703953>,  <35.371166, 34.436573, 46.857090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640179, 34.453018, 46.703953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776031, 34.807766, 46.829239>,  <34.857544, 35.020615, 46.904411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776031, 34.807766, 46.829239>,  <34.640179, 34.453018, 46.703953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776031, 34.807766, 46.829239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415519, 0.440234, -0.795951,
		-0.843796, 0.140185, 0.518032,
		0.339636, 0.886872, 0.313218,
		34.877922, 35.073826, 46.923203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075657, 34.919403, 46.529823>,  <34.640179, 34.453018, 46.703953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075657, 34.919403, 46.529823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394070, 35.156620, 46.578220>,  <34.585117, 35.298950, 46.607258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394070, 35.156620, 46.578220>,  <34.075657, 34.919403, 46.529823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394070, 35.156620, 46.578220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218583, 0.468082, -0.856224,
		-0.564411, 0.655133, 0.502236,
		0.796029, 0.593043, 0.120990,
		34.632877, 35.334534, 46.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816284, 35.610981, 46.511185>,  <34.075657, 34.919403, 46.529823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816284, 35.610981, 46.511185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202312, 35.608089, 46.406422>,  <34.433929, 35.606354, 46.343563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202312, 35.608089, 46.406422>,  <33.816284, 35.610981, 46.511185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202312, 35.608089, 46.406422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216845, 0.539003, -0.813913,
		0.147050, 0.842273, 0.518607,
		0.965067, -0.007229, -0.261903,
		34.491833, 35.605919, 46.327850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.222649, 30.718538, 49.413506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.434460, 30.576403, 49.721619>,  <36.561546, 30.491121, 49.906487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.434460, 30.576403, 49.721619>,  <36.222649, 30.718538, 49.413506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434460, 30.576403, 49.721619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105668, 0.873335, 0.475520,
		-0.841688, -0.333193, 0.424904,
		0.529524, -0.355341, 0.770284,
		36.593315, 30.469801, 49.952705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821091, 30.355717, 49.306015>,  <36.222649, 30.718538, 49.413506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821091, 30.355717, 49.306015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.203110, 30.276014, 49.218220>,  <37.432323, 30.228193, 49.165543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.203110, 30.276014, 49.218220>,  <36.821091, 30.355717, 49.306015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203110, 30.276014, 49.218220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199899, 0.113848, -0.973180,
		0.218899, 0.973312, 0.068900,
		0.955051, -0.199255, -0.219486,
		37.489624, 30.216238, 49.152374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908947, 30.642517, 48.684669>,  <36.821091, 30.355717, 49.306015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908947, 30.642517, 48.684669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.241417, 30.420164, 48.679970>,  <37.440899, 30.286753, 48.677151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.241417, 30.420164, 48.679970>,  <36.908947, 30.642517, 48.684669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241417, 30.420164, 48.679970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091907, -0.116528, -0.988926,
		0.548358, 0.823053, -0.147945,
		0.831178, -0.555883, -0.011745,
		37.490768, 30.253399, 48.676445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360695, 30.899849, 48.159172>,  <36.908947, 30.642517, 48.684669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360695, 30.899849, 48.159172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.462456, 30.518141, 48.221966>,  <37.523510, 30.289116, 48.259644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.462456, 30.518141, 48.221966>,  <37.360695, 30.899849, 48.159172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462456, 30.518141, 48.221966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055271, -0.147715, -0.987484,
		0.965518, 0.259893, 0.015165,
		0.254400, -0.954272, 0.156986,
		37.538776, 30.231859, 48.269062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962021, 30.840084, 47.765617>,  <37.360695, 30.899849, 48.159172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962021, 30.840084, 47.765617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.813210, 30.470846, 47.804581>,  <37.723923, 30.249304, 47.827961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.813210, 30.470846, 47.804581>,  <37.962021, 30.840084, 47.765617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813210, 30.470846, 47.804581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016663, -0.098286, -0.995019,
		0.928071, -0.371800, 0.021184,
		-0.372030, -0.923095, 0.097412,
		37.701599, 30.193918, 47.833805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273636, 30.450352, 47.260242>,  <37.962021, 30.840084, 47.765617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273636, 30.450352, 47.260242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.945980, 30.243399, 47.359303>,  <37.749386, 30.119226, 47.418739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.945980, 30.243399, 47.359303>,  <38.273636, 30.450352, 47.260242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945980, 30.243399, 47.359303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207070, -0.135901, -0.968841,
		0.534920, -0.844892, 0.004186,
		-0.819135, -0.517385, 0.247648,
		37.700241, 30.088182, 47.433598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328712, 29.941568, 46.883644>,  <38.273636, 30.450352, 47.260242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328712, 29.941568, 46.883644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938286, 29.951517, 46.970062>,  <37.704029, 29.957487, 47.021912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938286, 29.951517, 46.970062>,  <38.328712, 29.941568, 46.883644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938286, 29.951517, 46.970062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217413, -0.135051, -0.966692,
		0.005136, -0.990526, 0.137226,
		-0.976066, 0.024869, 0.216047,
		37.645466, 29.958979, 47.034878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965992, 29.376610, 46.542690>,  <38.328712, 29.941568, 46.883644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965992, 29.376610, 46.542690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.668129, 29.631701, 46.621468>,  <37.489410, 29.784754, 46.668732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.668129, 29.631701, 46.621468>,  <37.965992, 29.376610, 46.542690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668129, 29.631701, 46.621468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312837, -0.072842, -0.947010,
		-0.589586, -0.766812, 0.253746,
		-0.744662, 0.637725, 0.196941,
		37.444729, 29.823017, 46.680550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305145, 29.029694, 46.204178>,  <37.965992, 29.376610, 46.542690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305145, 29.029694, 46.204178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.277645, 29.424772, 46.260361>,  <37.261147, 29.661819, 46.294071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.277645, 29.424772, 46.260361>,  <37.305145, 29.029694, 46.204178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277645, 29.424772, 46.260361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356632, 0.107157, -0.928079,
		-0.931712, -0.113898, 0.344877,
		-0.068750, 0.987697, 0.140459,
		37.257019, 29.721081, 46.302498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700356, 29.128572, 45.854160>,  <37.305145, 29.029694, 46.204178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700356, 29.128572, 45.854160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.857216, 29.494982, 45.887924>,  <36.951332, 29.714827, 45.908180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.857216, 29.494982, 45.887924>,  <36.700356, 29.128572, 45.854160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857216, 29.494982, 45.887924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408343, 0.255559, -0.876325,
		-0.824304, 0.309181, 0.474267,
		0.392147, 0.916022, 0.084406,
		36.974861, 29.769789, 45.913246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121456, 29.603621, 45.589096>,  <36.700356, 29.128572, 45.854160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121456, 29.603621, 45.589096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.475708, 29.787901, 45.565739>,  <36.688259, 29.898468, 45.551723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.475708, 29.787901, 45.565739>,  <36.121456, 29.603621, 45.589096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475708, 29.787901, 45.565739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248187, 0.363276, -0.898017,
		-0.392502, 0.809806, 0.436069,
		0.885633, 0.460700, -0.058397,
		36.741398, 29.926111, 45.548218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958054, 30.256979, 45.283974>,  <36.121456, 29.603621, 45.589096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958054, 30.256979, 45.283974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349850, 30.236866, 45.205936>,  <36.584927, 30.224798, 45.159115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349850, 30.236866, 45.205936>,  <35.958054, 30.256979, 45.283974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349850, 30.236866, 45.205936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178052, 0.237108, -0.955028,
		0.094280, 0.970181, 0.223293,
		0.979494, -0.050282, -0.195097,
		36.643700, 30.221781, 45.147408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150375, 30.982748, 45.701294>,  <35.958054, 30.256979, 45.283974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150375, 30.982748, 45.701294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809715, 31.079285, 45.887390>,  <35.605320, 31.137207, 45.999050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809715, 31.079285, 45.887390>,  <36.150375, 30.982748, 45.701294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809715, 31.079285, 45.887390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367257, -0.358512, 0.858249,
		0.373926, 0.901789, 0.216692,
		-0.851647, 0.241340, 0.465245,
		35.554222, 31.151686, 46.026962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345314, 31.222322, 46.309196>,  <36.150375, 30.982748, 45.701294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345314, 31.222322, 46.309196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966587, 31.111666, 46.374939>,  <35.739353, 31.045271, 46.414383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966587, 31.111666, 46.374939>,  <36.345314, 31.222322, 46.309196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966587, 31.111666, 46.374939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265794, -0.384460, 0.884050,
		-0.181378, 0.880715, 0.437542,
		-0.946813, -0.276644, 0.164356,
		35.682545, 31.028673, 46.424244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262066, 31.540003, 46.956646>,  <36.345314, 31.222322, 46.309196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262066, 31.540003, 46.956646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.949562, 31.295963, 46.903866>,  <35.762058, 31.149540, 46.872196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.949562, 31.295963, 46.903866>,  <36.262066, 31.540003, 46.956646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949562, 31.295963, 46.903866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100456, -0.085748, 0.991240,
		-0.616069, 0.787671, 0.005703,
		-0.781260, -0.610099, -0.131953,
		35.715183, 31.112934, 46.864281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721592, 31.824827, 47.348125>,  <36.262066, 31.540003, 46.956646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721592, 31.824827, 47.348125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.612236, 31.441519, 47.314724>,  <35.546623, 31.211535, 47.294682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.612236, 31.441519, 47.314724>,  <35.721592, 31.824827, 47.348125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612236, 31.441519, 47.314724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373388, 0.025717, 0.927319,
		-0.886476, 0.284700, -0.364838,
		-0.273391, -0.958272, -0.083506,
		35.530220, 31.154037, 47.289673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002480, 31.905548, 47.428246>,  <35.721592, 31.824827, 47.348125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002480, 31.905548, 47.428246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142105, 31.540916, 47.515125>,  <35.225880, 31.322138, 47.567253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142105, 31.540916, 47.515125>,  <35.002480, 31.905548, 47.428246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142105, 31.540916, 47.515125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314494, 0.104376, 0.943504,
		-0.882748, -0.397655, -0.250252,
		0.349068, -0.911579, 0.217198,
		35.246826, 31.267443, 47.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494755, 31.619596, 47.837955>,  <35.002480, 31.905548, 47.428246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494755, 31.619596, 47.837955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.827831, 31.408730, 47.905750>,  <35.027676, 31.282209, 47.946426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.827831, 31.408730, 47.905750>,  <34.494755, 31.619596, 47.837955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827831, 31.408730, 47.905750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197902, 0.002553, 0.980219,
		-0.517171, -0.849758, -0.102202,
		0.832687, -0.527167, 0.169489,
		35.077637, 31.250580, 47.956596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334053, 31.183147, 48.259819>,  <34.494755, 31.619596, 47.837955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334053, 31.183147, 48.259819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727028, 31.159473, 48.330593>,  <34.962814, 31.145269, 48.373058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727028, 31.159473, 48.330593>,  <34.334053, 31.183147, 48.259819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727028, 31.159473, 48.330593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179915, -0.049403, 0.982441,
		-0.049403, -0.997024, -0.059184,
		-0.982441, 0.059184, -0.176939,
		35.021759, 31.141718, 48.383675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396309, 30.877291, 48.969360>,  <34.334053, 31.183147, 48.259819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396309, 30.877291, 48.969360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.770874, 31.004156, 48.909313>,  <34.995613, 31.080276, 48.873283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.770874, 31.004156, 48.909313>,  <34.396309, 30.877291, 48.969360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770874, 31.004156, 48.909313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106050, 0.152005, 0.982674,
		0.334489, -0.936109, 0.108704,
		0.936414, 0.317165, -0.150119,
		35.051800, 31.099306, 48.864277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802883, 30.470598, 49.437450>,  <34.396309, 30.877291, 48.969360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802883, 30.470598, 49.437450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034950, 30.781658, 49.340561>,  <35.174191, 30.968294, 49.282429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034950, 30.781658, 49.340561>,  <34.802883, 30.470598, 49.437450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034950, 30.781658, 49.340561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150690, 0.189774, 0.970195,
		0.800438, -0.599373, -0.007084,
		0.580165, 0.777649, -0.242222,
		35.209000, 31.014954, 49.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315372, 30.435732, 49.908306>,  <34.802883, 30.470598, 49.437450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315372, 30.435732, 49.908306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.359047, 30.815512, 49.790581>,  <35.385254, 31.043381, 49.719944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.359047, 30.815512, 49.790581>,  <35.315372, 30.435732, 49.908306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359047, 30.815512, 49.790581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278442, 0.255018, 0.925978,
		0.954226, -0.183056, -0.236522,
		0.109188, 0.949451, -0.294315,
		35.391804, 31.100348, 49.702286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947666, 30.728445, 50.158054>,  <35.315372, 30.435732, 49.908306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947666, 30.728445, 50.158054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.677208, 31.013618, 50.083702>,  <35.514931, 31.184723, 50.039093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.677208, 31.013618, 50.083702>,  <35.947666, 30.728445, 50.158054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677208, 31.013618, 50.083702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127148, 0.361416, 0.923695,
		0.725711, 0.600921, -0.335019,
		-0.676149, 0.712932, -0.185877,
		35.474361, 31.227499, 50.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134212, 31.319651, 50.598866>,  <35.947666, 30.728445, 50.158054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134212, 31.319651, 50.598866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.763245, 31.429140, 50.496902>,  <35.540665, 31.494833, 50.435726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.763245, 31.429140, 50.496902>,  <36.134212, 31.319651, 50.598866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763245, 31.429140, 50.496902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118580, 0.431177, 0.894441,
		0.354739, 0.859745, -0.367422,
		-0.927415, 0.273724, -0.254904,
		35.485020, 31.511257, 50.420433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114765, 32.000629, 50.784985>,  <36.134212, 31.319651, 50.598866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114765, 32.000629, 50.784985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731209, 31.896017, 50.740936>,  <35.501076, 31.833250, 50.714508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731209, 31.896017, 50.740936>,  <36.114765, 32.000629, 50.784985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731209, 31.896017, 50.740936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203607, 0.363802, 0.908951,
		-0.197656, 0.894008, -0.402096,
		-0.958893, -0.261529, -0.110119,
		35.443542, 31.817558, 50.707901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743206, 32.503189, 50.616840>,  <36.114765, 32.000629, 50.784985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743206, 32.503189, 50.616840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519444, 32.240662, 50.819347>,  <35.385185, 32.083145, 50.940849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519444, 32.240662, 50.819347>,  <35.743206, 32.503189, 50.616840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519444, 32.240662, 50.819347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071897, 0.646890, 0.759186,
		-0.825767, 0.388298, -0.409065,
		-0.559411, -0.656321, 0.506263,
		35.351620, 32.043766, 50.971226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094856, 33.093044, 50.551952>,  <35.743206, 32.503189, 50.616840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094856, 33.093044, 50.551952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.860821, 33.375473, 50.711517>,  <35.720398, 33.544930, 50.807255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.860821, 33.375473, 50.711517>,  <36.094856, 33.093044, 50.551952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860821, 33.375473, 50.711517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139678, 0.396804, -0.907214,
		-0.798851, -0.586518, -0.133542,
		-0.585087, 0.706076, 0.398911,
		35.685295, 33.587296, 50.831192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468685, 33.147728, 50.321617>,  <36.094856, 33.093044, 50.551952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468685, 33.147728, 50.321617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.513123, 33.532154, 50.422817>,  <35.539787, 33.762810, 50.483536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.513123, 33.532154, 50.422817>,  <35.468685, 33.147728, 50.321617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513123, 33.532154, 50.422817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418700, 0.276140, -0.865123,
		-0.901303, -0.009817, 0.433077,
		0.111097, 0.961068, 0.252996,
		35.546452, 33.820473, 50.498714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865791, 33.437702, 50.151730>,  <35.468685, 33.147728, 50.321617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865791, 33.437702, 50.151730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139561, 33.728561, 50.172993>,  <35.303822, 33.903076, 50.185749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139561, 33.728561, 50.172993>,  <34.865791, 33.437702, 50.151730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139561, 33.728561, 50.172993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221865, 0.277168, -0.934855,
		-0.694510, 0.628041, 0.351028,
		0.684421, 0.727147, 0.053155,
		35.344887, 33.946705, 50.188938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607761, 33.973053, 49.821030>,  <34.865791, 33.437702, 50.151730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607761, 33.973053, 49.821030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989456, 34.092331, 49.811916>,  <35.218472, 34.163898, 49.806450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989456, 34.092331, 49.811916>,  <34.607761, 33.973053, 49.821030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989456, 34.092331, 49.811916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141640, 0.383543, -0.912597,
		-0.263392, 0.874058, 0.408226,
		0.954234, 0.298192, -0.022779,
		35.275726, 34.181789, 49.805084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679947, 34.724571, 49.732178>,  <34.607761, 33.973053, 49.821030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679947, 34.724571, 49.732178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.008034, 34.540680, 49.596001>,  <35.204887, 34.430347, 49.514294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.008034, 34.540680, 49.596001>,  <34.679947, 34.724571, 49.732178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008034, 34.540680, 49.596001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158902, 0.388599, -0.907602,
		0.549541, 0.798526, 0.245684,
		0.820216, -0.459725, -0.340439,
		35.254097, 34.402763, 49.493870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178059, 35.217922, 49.540062>,  <34.679947, 34.724571, 49.732178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178059, 35.217922, 49.540062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.294998, 34.886822, 49.348492>,  <35.365162, 34.688164, 49.233551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.294998, 34.886822, 49.348492>,  <35.178059, 35.217922, 49.540062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294998, 34.886822, 49.348492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017207, 0.496167, -0.868057,
		0.956156, 0.262019, 0.130812,
		0.292352, -0.827747, -0.478921,
		35.382706, 34.638496, 49.204815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796875, 35.318150, 49.213779>,  <35.178059, 35.217922, 49.540062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796875, 35.318150, 49.213779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611015, 35.049557, 48.982880>,  <35.499500, 34.888401, 48.844341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611015, 35.049557, 48.982880>,  <35.796875, 35.318150, 49.213779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611015, 35.049557, 48.982880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203743, 0.553330, -0.807660,
		0.861739, -0.492886, -0.120291,
		-0.464645, -0.671484, -0.577248,
		35.471622, 34.848110, 48.809704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562759, 35.437458, 48.912277>,  <35.796875, 35.318150, 49.213779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562759, 35.437458, 48.912277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.728821, 35.793900, 48.985584>,  <36.828457, 36.007763, 49.029568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.728821, 35.793900, 48.985584>,  <36.562759, 35.437458, 48.912277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728821, 35.793900, 48.985584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417584, -0.365622, 0.831832,
		0.808252, -0.268811, -0.523899,
		0.415154, 0.891101, 0.183264,
		36.853367, 36.061230, 49.040562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284634, 35.306091, 49.005135>,  <36.562759, 35.437458, 48.912277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284634, 35.306091, 49.005135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214973, 35.654232, 49.189377>,  <37.173176, 35.863117, 49.299923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214973, 35.654232, 49.189377>,  <37.284634, 35.306091, 49.005135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214973, 35.654232, 49.189377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410889, -0.360859, 0.837228,
		0.894898, 0.335061, -0.294775,
		-0.174151, 0.870353, 0.460605,
		37.162727, 35.915337, 49.327557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874218, 35.359165, 49.412403>,  <37.284634, 35.306091, 49.005135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874218, 35.359165, 49.412403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.634441, 35.640789, 49.564697>,  <37.490574, 35.809765, 49.656075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.634441, 35.640789, 49.564697>,  <37.874218, 35.359165, 49.412403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634441, 35.640789, 49.564697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471200, -0.074109, 0.878908,
		0.647023, 0.706260, -0.287331,
		-0.599443, 0.704063, 0.380740,
		37.454609, 35.852009, 49.678921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336563, 35.791916, 49.798965>,  <37.874218, 35.359165, 49.412403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336563, 35.791916, 49.798965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.959312, 35.804489, 49.931343>,  <37.732960, 35.812031, 50.010769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.959312, 35.804489, 49.931343>,  <38.336563, 35.791916, 49.798965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959312, 35.804489, 49.931343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326841, -0.094093, 0.940384,
		0.060694, 0.995067, 0.078469,
		-0.943128, 0.031429, 0.330940,
		37.676373, 35.813919, 50.030624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333553, 36.229168, 50.429096>,  <38.336563, 35.791916, 49.798965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333553, 36.229168, 50.429096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.988609, 36.027985, 50.452324>,  <37.781643, 35.907276, 50.466259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.988609, 36.027985, 50.452324>,  <38.333553, 36.229168, 50.429096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988609, 36.027985, 50.452324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144590, -0.134736, 0.980275,
		-0.485215, 0.853744, 0.188913,
		-0.862357, -0.502959, 0.058067,
		37.729900, 35.877098, 50.469746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036312, 36.429401, 51.050045>,  <38.333553, 36.229168, 50.429096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036312, 36.429401, 51.050045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.841824, 36.088203, 50.974167>,  <37.725128, 35.883484, 50.928638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.841824, 36.088203, 50.974167>,  <38.036312, 36.429401, 51.050045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841824, 36.088203, 50.974167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082973, -0.261172, 0.961720,
		-0.869886, 0.451871, 0.197764,
		-0.486223, -0.852996, -0.189697,
		37.695957, 35.832306, 50.917259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524006, 36.349213, 51.541256>,  <38.036312, 36.429401, 51.050045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524006, 36.349213, 51.541256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.602558, 35.985718, 51.393940>,  <37.649689, 35.767620, 51.305550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.602558, 35.985718, 51.393940>,  <37.524006, 36.349213, 51.541256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602558, 35.985718, 51.393940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179057, -0.336053, 0.924666,
		-0.964040, -0.247531, 0.096721,
		0.196380, -0.908734, -0.368291,
		37.661472, 35.713097, 51.283451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339516, 35.913078, 52.052189>,  <37.524006, 36.349213, 51.541256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339516, 35.913078, 52.052189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553497, 35.673332, 51.813999>,  <37.681885, 35.529484, 51.671085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553497, 35.673332, 51.813999>,  <37.339516, 35.913078, 52.052189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553497, 35.673332, 51.813999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261813, -0.552514, 0.791317,
		-0.803294, -0.579220, -0.138647,
		0.534951, -0.599361, -0.595478,
		37.713982, 35.493523, 51.635357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428871, 35.189503, 52.432941>,  <37.339516, 35.913078, 52.052189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428871, 35.189503, 52.432941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.708652, 35.168026, 52.147881>,  <37.876522, 35.155140, 51.976845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.708652, 35.168026, 52.147881>,  <37.428871, 35.189503, 52.432941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708652, 35.168026, 52.147881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599840, -0.498003, 0.626247,
		-0.388528, -0.865512, -0.316127,
		0.699456, -0.053689, -0.712656,
		37.918488, 35.151920, 51.934082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.727699, 38.663090, 37.010220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124908, 38.617149, 37.020855>,  <36.363235, 38.589584, 37.027237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124908, 38.617149, 37.020855>,  <35.727699, 38.663090, 37.010220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124908, 38.617149, 37.020855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035057, -0.072320, 0.996765,
		-0.112564, -0.990746, -0.075842,
		0.993026, -0.114859, 0.026592,
		36.422817, 38.582695, 37.028831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872318, 38.023003, 37.299358>,  <35.727699, 38.663090, 37.010220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872318, 38.023003, 37.299358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178616, 38.276295, 37.344349>,  <36.362392, 38.428272, 37.371342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178616, 38.276295, 37.344349>,  <35.872318, 38.023003, 37.299358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178616, 38.276295, 37.344349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102774, -0.052161, 0.993336,
		0.634882, -0.772200, 0.025138,
		0.765743, 0.633235, 0.112478,
		36.408337, 38.466267, 37.378094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392635, 37.670502, 37.827538>,  <35.872318, 38.023003, 37.299358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392635, 37.670502, 37.827538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488270, 38.058640, 37.841732>,  <36.545650, 38.291523, 37.850246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488270, 38.058640, 37.841732>,  <36.392635, 37.670502, 37.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488270, 38.058640, 37.841732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085464, -0.015371, 0.996223,
		0.967229, -0.241219, 0.079254,
		0.239090, 0.970349, 0.035483,
		36.559998, 38.349743, 37.852375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992443, 37.734196, 38.269985>,  <36.392635, 37.670502, 37.827538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992443, 37.734196, 38.269985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852398, 38.108871, 38.272381>,  <36.768372, 38.333675, 38.273819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852398, 38.108871, 38.272381>,  <36.992443, 37.734196, 38.269985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852398, 38.108871, 38.272381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124325, 0.040134, 0.991430,
		0.928420, 0.347857, -0.130506,
		-0.350113, 0.936688, 0.005986,
		36.747364, 38.389877, 38.274178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369526, 38.114433, 38.809135>,  <36.992443, 37.734196, 38.269985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369526, 38.114433, 38.809135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052910, 38.351524, 38.749626>,  <36.862938, 38.493778, 38.713921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052910, 38.351524, 38.749626>,  <37.369526, 38.114433, 38.809135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052910, 38.351524, 38.749626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061461, 0.165000, 0.984377,
		0.608013, 0.788322, -0.094175,
		-0.791545, 0.592725, -0.148773,
		36.815445, 38.529343, 38.704994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480995, 38.766064, 39.195496>,  <37.369526, 38.114433, 38.809135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480995, 38.766064, 39.195496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082676, 38.762535, 39.159050>,  <36.843685, 38.760418, 39.137184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082676, 38.762535, 39.159050>,  <37.480995, 38.766064, 39.195496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082676, 38.762535, 39.159050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087714, 0.376627, 0.922203,
		0.026175, 0.926323, -0.375820,
		-0.995802, -0.008826, -0.091109,
		36.783936, 38.759888, 39.131718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286415, 39.342968, 39.593151>,  <37.480995, 38.766064, 39.195496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286415, 39.342968, 39.593151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933933, 39.160141, 39.544861>,  <36.722446, 39.050446, 39.515884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933933, 39.160141, 39.544861>,  <37.286415, 39.342968, 39.593151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933933, 39.160141, 39.544861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319689, 0.388017, 0.864431,
		-0.348255, 0.800334, -0.488040,
		-0.881202, -0.457064, -0.120729,
		36.669571, 39.023022, 39.508640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768108, 39.828724, 39.734066>,  <37.286415, 39.342968, 39.593151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768108, 39.828724, 39.734066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590225, 39.473103, 39.777561>,  <36.483494, 39.259731, 39.803658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590225, 39.473103, 39.777561>,  <36.768108, 39.828724, 39.734066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590225, 39.473103, 39.777561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423892, 0.315856, 0.848852,
		-0.789019, 0.331398, -0.517325,
		-0.444708, -0.889050, 0.108739,
		36.456814, 39.206387, 39.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070301, 39.946941, 39.989189>,  <36.768108, 39.828724, 39.734066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070301, 39.946941, 39.989189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151001, 39.566372, 40.082222>,  <36.199421, 39.338032, 40.138042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151001, 39.566372, 40.082222>,  <36.070301, 39.946941, 39.989189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151001, 39.566372, 40.082222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432242, 0.126604, 0.892826,
		-0.878900, -0.280660, -0.385702,
		0.201749, -0.951421, 0.232585,
		36.211525, 39.280945, 40.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487007, 39.683197, 40.246605>,  <36.070301, 39.946941, 39.989189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487007, 39.683197, 40.246605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755707, 39.430702, 40.401676>,  <35.916927, 39.279205, 40.494717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755707, 39.430702, 40.401676>,  <35.487007, 39.683197, 40.246605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755707, 39.430702, 40.401676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523166, -0.033754, 0.851562,
		-0.524455, -0.774852, -0.352918,
		0.671746, -0.631241, 0.387674,
		35.957230, 39.241329, 40.517979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058853, 39.261967, 40.625488>,  <35.487007, 39.683197, 40.246605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058853, 39.261967, 40.625488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433010, 39.201412, 40.753315>,  <35.657505, 39.165081, 40.830009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433010, 39.201412, 40.753315>,  <35.058853, 39.261967, 40.625488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433010, 39.201412, 40.753315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312127, 0.071215, 0.947367,
		-0.166177, -0.985906, 0.019362,
		0.935394, -0.151388, 0.319562,
		35.713627, 39.155994, 40.849182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062374, 38.707039, 41.071232>,  <35.058853, 39.261967, 40.625488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062374, 38.707039, 41.071232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373821, 38.944630, 41.152164>,  <35.560692, 39.087185, 41.200726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373821, 38.944630, 41.152164>,  <35.062374, 38.707039, 41.071232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373821, 38.944630, 41.152164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289373, 0.053778, 0.955705,
		0.556786, -0.802682, 0.213754,
		0.778622, 0.593977, 0.202332,
		35.607407, 39.122822, 41.212864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885563, 38.408001, 40.354683>,  <35.062374, 38.707039, 41.071232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885563, 38.408001, 40.354683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616138, 38.463474, 40.645084>,  <34.454483, 38.496758, 40.819324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616138, 38.463474, 40.645084>,  <34.885563, 38.408001, 40.354683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616138, 38.463474, 40.645084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665901, 0.312396, -0.677484,
		-0.320757, -0.939774, -0.118068,
		-0.673566, 0.138686, 0.726000,
		34.414070, 38.505081, 40.862885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322258, 38.034744, 40.191929>,  <34.885563, 38.408001, 40.354683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322258, 38.034744, 40.191929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163719, 38.302494, 40.443275>,  <34.068596, 38.463142, 40.594086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163719, 38.302494, 40.443275>,  <34.322258, 38.034744, 40.191929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163719, 38.302494, 40.443275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735934, 0.177574, -0.653352,
		-0.548919, -0.721392, 0.422234,
		-0.396345, 0.669374, 0.628370,
		34.044815, 38.503307, 40.631786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599255, 37.820087, 40.210762>,  <34.322258, 38.034744, 40.191929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599255, 37.820087, 40.210762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627472, 38.205063, 40.315636>,  <33.644402, 38.436047, 40.378559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627472, 38.205063, 40.315636>,  <33.599255, 37.820087, 40.210762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627472, 38.205063, 40.315636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891900, 0.178558, -0.415490,
		-0.446698, -0.204538, 0.870991,
		0.070539, 0.962435, 0.262189,
		33.648632, 38.493793, 40.394291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991680, 38.017765, 40.379955>,  <33.599255, 37.820087, 40.210762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991680, 38.017765, 40.379955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167309, 38.374466, 40.336143>,  <33.272686, 38.588486, 40.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167309, 38.374466, 40.336143>,  <32.991680, 38.017765, 40.379955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167309, 38.374466, 40.336143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822679, 0.350040, -0.447964,
		-0.361132, 0.286797, 0.887317,
		0.439071, 0.891751, -0.109531,
		33.299030, 38.641991, 40.303284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452194, 38.561626, 40.660431>,  <32.991680, 38.017765, 40.379955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452194, 38.561626, 40.660431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718349, 38.745594, 40.425236>,  <32.878044, 38.855972, 40.284119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718349, 38.745594, 40.425236>,  <32.452194, 38.561626, 40.660431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718349, 38.745594, 40.425236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745686, 0.446167, -0.494861,
		0.034748, 0.767732, 0.639828,
		0.665391, 0.459916, -0.587990,
		32.917965, 38.883568, 40.248840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141861, 39.240681, 40.487022>,  <32.452194, 38.561626, 40.660431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141861, 39.240681, 40.487022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431820, 39.185062, 40.217152>,  <32.605797, 39.151691, 40.055229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431820, 39.185062, 40.217152>,  <32.141861, 39.240681, 40.487022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431820, 39.185062, 40.217152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595541, 0.365723, -0.715246,
		0.346195, 0.920279, 0.182306,
		0.724900, -0.139044, -0.674676,
		32.649288, 39.143349, 40.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157669, 39.860939, 39.997444>,  <32.141861, 39.240681, 40.487022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157669, 39.860939, 39.997444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278084, 39.537777, 39.794792>,  <32.350334, 39.343880, 39.673203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278084, 39.537777, 39.794792>,  <32.157669, 39.860939, 39.997444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278084, 39.537777, 39.794792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744852, 0.132531, -0.653935,
		0.595459, 0.574220, -0.561871,
		0.301038, -0.807903, -0.506626,
		32.368397, 39.295406, 39.642803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830231, 40.047516, 39.455956>,  <32.157669, 39.860939, 39.997444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830231, 40.047516, 39.455956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939234, 39.673698, 39.364426>,  <32.004635, 39.449406, 39.309505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939234, 39.673698, 39.364426>,  <31.830231, 40.047516, 39.455956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939234, 39.673698, 39.364426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647659, -0.002292, -0.761927,
		0.711532, 0.355831, -0.605893,
		0.272506, -0.934547, -0.228826,
		32.020985, 39.393333, 39.295776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739109, 40.047291, 38.808624>,  <31.830231, 40.047516, 39.455956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739109, 40.047291, 38.808624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706701, 39.661575, 38.909485>,  <31.687258, 39.430145, 38.970001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706701, 39.661575, 38.909485>,  <31.739109, 40.047291, 38.808624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706701, 39.661575, 38.909485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637363, -0.144377, -0.756918,
		0.766293, -0.222036, -0.602905,
		-0.081017, -0.964290, 0.252152,
		31.682396, 39.372288, 38.985130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663330, 39.766327, 38.181229>,  <31.739109, 40.047291, 38.808624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663330, 39.766327, 38.181229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520769, 39.489979, 38.432838>,  <31.435232, 39.324169, 38.583805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520769, 39.489979, 38.432838>,  <31.663330, 39.766327, 38.181229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520769, 39.489979, 38.432838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689827, -0.259504, -0.675867,
		0.630171, -0.674801, -0.384093,
		-0.356403, -0.690870, 0.629028,
		31.413849, 39.282719, 38.621548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410582, 39.218975, 37.744133>,  <31.663330, 39.766327, 38.181229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410582, 39.218975, 37.744133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244690, 39.134163, 38.098091>,  <31.145155, 39.083275, 38.310467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244690, 39.134163, 38.098091>,  <31.410582, 39.218975, 37.744133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244690, 39.134163, 38.098091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805623, -0.366562, -0.465407,
		0.423050, -0.905912, -0.018792,
		-0.414729, -0.212029, 0.884897,
		31.120272, 39.070553, 38.363560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259655, 38.503880, 37.806541>,  <31.410582, 39.218975, 37.744133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259655, 38.503880, 37.806541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009567, 38.693966, 38.054176>,  <30.859514, 38.808018, 38.202759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009567, 38.693966, 38.054176>,  <31.259655, 38.503880, 37.806541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009567, 38.693966, 38.054176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776817, -0.455351, -0.434983,
		0.075191, -0.752878, 0.653851,
		-0.625221, 0.475217, 0.619087,
		30.822001, 38.836533, 38.239902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736898, 37.972301, 37.728935>,  <31.259655, 38.503880, 37.806541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736898, 37.972301, 37.728935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540773, 38.242340, 37.949421>,  <30.423098, 38.404362, 38.081711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540773, 38.242340, 37.949421>,  <30.736898, 37.972301, 37.728935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540773, 38.242340, 37.949421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867636, -0.318254, -0.381997,
		-0.082459, -0.665552, 0.741782,
		-0.490314, 0.675096, 0.551214,
		30.393679, 38.444870, 38.114784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279821, 37.581554, 38.238327>,  <30.736898, 37.972301, 37.728935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279821, 37.581554, 38.238327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162991, 37.959488, 38.179024>,  <30.092892, 38.186249, 38.143440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162991, 37.959488, 38.179024>,  <30.279821, 37.581554, 38.238327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162991, 37.959488, 38.179024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840940, -0.327552, -0.430732,
		-0.455533, -0.001127, 0.890218,
		-0.292078, 0.944832, -0.148263,
		30.075367, 38.242939, 38.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540012, 37.573933, 38.314854>,  <30.279821, 37.581554, 38.238327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540012, 37.573933, 38.314854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649759, 37.897758, 38.107269>,  <29.715607, 38.092056, 37.982719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649759, 37.897758, 38.107269>,  <29.540012, 37.573933, 38.314854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649759, 37.897758, 38.107269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703202, -0.199201, -0.682515,
		-0.655919, 0.552197, 0.514635,
		0.274367, 0.809567, -0.518965,
		29.732069, 38.140629, 37.951580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237614, 36.765762, 38.376675>,  <29.540012, 37.573933, 38.314854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237614, 36.765762, 38.376675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067478, 36.530121, 38.651497>,  <28.965397, 36.388737, 38.816391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067478, 36.530121, 38.651497>,  <29.237614, 36.765762, 38.376675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067478, 36.530121, 38.651497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524654, -0.779072, -0.343200,
		0.737446, 0.214491, 0.640443,
		-0.425338, -0.589102, 0.687056,
		28.939877, 36.353390, 38.857613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624695, 36.406349, 39.035774>,  <29.237614, 36.765762, 38.376675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624695, 36.406349, 39.035774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378630, 36.161301, 38.837273>,  <29.230989, 36.014271, 38.718174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378630, 36.161301, 38.837273>,  <29.624695, 36.406349, 39.035774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378630, 36.161301, 38.837273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710927, -0.703141, -0.013255,
		-0.340815, -0.360952, 0.868078,
		-0.615165, -0.612623, -0.496251,
		29.194080, 35.977512, 38.688396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670616, 36.049828, 39.667412>,  <29.624695, 36.406349, 39.035774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670616, 36.049828, 39.667412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880505, 35.959011, 39.339237>,  <30.006437, 35.904522, 39.142330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880505, 35.959011, 39.339237>,  <29.670616, 36.049828, 39.667412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880505, 35.959011, 39.339237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533358, -0.663475, 0.524720,
		-0.663475, -0.712919, -0.227043,
		-0.524720, 0.227043, 0.820439,
		30.037920, 35.890900, 39.093105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692560, 35.297611, 39.620499>,  <29.670616, 36.049828, 39.667412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692560, 35.297611, 39.620499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008373, 35.455643, 39.432644>,  <30.197861, 35.550461, 39.319931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008373, 35.455643, 39.432644>,  <29.692560, 35.297611, 39.620499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008373, 35.455643, 39.432644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613192, -0.539284, 0.577207,
		-0.025225, -0.743699, -0.668039,
		0.789531, 0.395076, -0.469634,
		30.245232, 35.574165, 39.291752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142181, 34.674397, 39.528282>,  <29.692560, 35.297611, 39.620499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142181, 34.674397, 39.528282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367924, 35.002415, 39.490269>,  <30.503368, 35.199226, 39.467461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367924, 35.002415, 39.490269>,  <30.142181, 34.674397, 39.528282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367924, 35.002415, 39.490269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712207, -0.425436, 0.558360,
		0.417450, -0.382795, -0.824138,
		0.564355, 0.820045, -0.095031,
		30.537230, 35.248428, 39.461758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844969, 34.480053, 39.458527>,  <30.142181, 34.674397, 39.528282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844969, 34.480053, 39.458527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854492, 34.848495, 39.613960>,  <30.860207, 35.069561, 39.707222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854492, 34.848495, 39.613960>,  <30.844969, 34.480053, 39.458527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854492, 34.848495, 39.613960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722470, -0.284514, 0.630150,
		0.690992, 0.265736, -0.672246,
		0.023810, 0.921106, 0.388584,
		30.861635, 35.124828, 39.730534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576403, 34.795830, 39.409603>,  <30.844969, 34.480053, 39.458527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576403, 34.795830, 39.409603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385588, 34.981991, 39.707821>,  <31.271099, 35.093689, 39.886749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385588, 34.981991, 39.707821>,  <31.576403, 34.795830, 39.409603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385588, 34.981991, 39.707821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828568, -0.044750, 0.558097,
		0.293104, 0.883966, -0.364273,
		-0.477037, 0.465405, 0.745542,
		31.242477, 35.121613, 39.931484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047752, 35.127838, 39.837563>,  <31.576403, 34.795830, 39.409603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047752, 35.127838, 39.837563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738394, 35.172626, 40.087143>,  <31.552778, 35.199501, 40.236893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738394, 35.172626, 40.087143>,  <32.047752, 35.127838, 39.837563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738394, 35.172626, 40.087143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619709, -0.073699, 0.781364,
		0.133477, 0.990974, -0.012393,
		-0.773398, 0.111974, 0.623953,
		31.506374, 35.206219, 40.274330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368217, 35.509285, 40.346531>,  <32.047752, 35.127838, 39.837563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368217, 35.509285, 40.346531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040134, 35.331764, 40.490917>,  <31.843285, 35.225250, 40.577549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040134, 35.331764, 40.490917>,  <32.368217, 35.509285, 40.346531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040134, 35.331764, 40.490917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485384, -0.205949, 0.849699,
		-0.302758, 0.872137, 0.384336,
		-0.820207, -0.443804, 0.360968,
		31.794073, 35.198624, 40.599209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420074, 35.575882, 40.991035>,  <32.368217, 35.509285, 40.346531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420074, 35.575882, 40.991035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140865, 35.289600, 41.000259>,  <31.973341, 35.117832, 41.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140865, 35.289600, 41.000259>,  <32.420074, 35.575882, 40.991035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140865, 35.289600, 41.000259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384971, -0.347910, 0.854842,
		-0.603792, 0.605576, 0.518375,
		-0.698020, -0.715706, 0.023064,
		31.931459, 35.074890, 41.007179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079063, 35.566456, 41.676411>,  <32.420074, 35.575882, 40.991035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079063, 35.566456, 41.676411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046890, 35.208836, 41.500137>,  <32.027588, 34.994263, 41.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046890, 35.208836, 41.500137>,  <32.079063, 35.566456, 41.676411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046890, 35.208836, 41.500137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415831, -0.431900, 0.800341,
		-0.905878, -0.118879, 0.406512,
		-0.080429, -0.894053, -0.440683,
		32.022762, 34.940620, 41.367931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912939, 35.111828, 42.253094>,  <32.079063, 35.566456, 41.676411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912939, 35.111828, 42.253094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026604, 34.852318, 41.970722>,  <32.094803, 34.696613, 41.801300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026604, 34.852318, 41.970722>,  <31.912939, 35.111828, 42.253094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026604, 34.852318, 41.970722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541020, -0.499363, 0.676709,
		-0.791550, -0.574217, 0.209102,
		0.284160, -0.648777, -0.705933,
		32.111851, 34.657684, 41.758942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752497, 34.541183, 42.667973>,  <31.912939, 35.111828, 42.253094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752497, 34.541183, 42.667973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013409, 34.464203, 42.374718>,  <32.169956, 34.418015, 42.198765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013409, 34.464203, 42.374718>,  <31.752497, 34.541183, 42.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013409, 34.464203, 42.374718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500531, -0.616985, 0.607288,
		-0.569208, -0.763081, -0.306121,
		0.652282, -0.192450, -0.733139,
		32.209091, 34.406467, 42.154778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780895, 33.910542, 42.788460>,  <31.752497, 34.541183, 42.667973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780895, 33.910542, 42.788460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097752, 34.044346, 42.584259>,  <32.287865, 34.124630, 42.461739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097752, 34.044346, 42.584259>,  <31.780895, 33.910542, 42.788460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097752, 34.044346, 42.584259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602144, -0.564901, 0.564189,
		-0.099656, -0.754314, -0.648905,
		0.792143, 0.334510, -0.510502,
		32.335396, 34.144699, 42.431107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149414, 33.280037, 42.520233>,  <31.780895, 33.910542, 42.788460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149414, 33.280037, 42.520233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405300, 33.582554, 42.575066>,  <32.558830, 33.764065, 42.607964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405300, 33.582554, 42.575066>,  <32.149414, 33.280037, 42.520233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405300, 33.582554, 42.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574946, -0.589216, 0.567680,
		0.510098, -0.284343, -0.811757,
		0.639716, 0.756289, 0.137076,
		32.597214, 33.809441, 42.616188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732033, 33.040073, 42.456726>,  <32.149414, 33.280037, 42.520233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732033, 33.040073, 42.456726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859455, 33.365723, 42.650932>,  <32.935909, 33.561111, 42.767456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859455, 33.365723, 42.650932>,  <32.732033, 33.040073, 42.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859455, 33.365723, 42.650932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555864, -0.575329, 0.600010,
		0.767811, 0.078740, -0.635819,
		0.318560, 0.814123, 0.485513,
		32.955025, 33.609959, 42.796585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423599, 32.907394, 42.557228>,  <32.732033, 33.040073, 42.456726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423599, 32.907394, 42.557228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324234, 33.190281, 42.821995>,  <33.264614, 33.360012, 42.980854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324234, 33.190281, 42.821995>,  <33.423599, 32.907394, 42.557228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324234, 33.190281, 42.821995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562391, -0.451069, 0.693003,
		0.788675, 0.544404, -0.285684,
		-0.248411, 0.707220, 0.661915,
		33.249710, 33.402447, 43.020569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953472, 33.229191, 42.797176>,  <33.423599, 32.907394, 42.557228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953472, 33.229191, 42.797176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704136, 33.316196, 43.097614>,  <33.554535, 33.368401, 43.277878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704136, 33.316196, 43.097614>,  <33.953472, 33.229191, 42.797176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704136, 33.316196, 43.097614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708559, -0.249166, 0.660197,
		0.330748, 0.943718, 0.001194,
		-0.623337, 0.217513, 0.751092,
		33.517136, 33.381451, 43.322941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352795, 33.563599, 43.322994>,  <33.953472, 33.229191, 42.797176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352795, 33.563599, 43.322994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026489, 33.427284, 43.509930>,  <33.830708, 33.345497, 43.622089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026489, 33.427284, 43.509930>,  <34.352795, 33.563599, 43.322994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026489, 33.427284, 43.509930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533914, -0.132965, 0.835018,
		-0.222423, 0.930691, 0.290418,
		-0.815760, -0.340785, 0.467335,
		33.781761, 33.325050, 43.650131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465870, 33.791615, 43.947273>,  <34.352795, 33.563599, 43.322994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465870, 33.791615, 43.947273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195869, 33.499760, 43.991108>,  <34.033871, 33.324646, 44.017410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195869, 33.499760, 43.991108>,  <34.465870, 33.791615, 43.947273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195869, 33.499760, 43.991108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535367, -0.382143, 0.753226,
		-0.507700, 0.567098, 0.648568,
		-0.674999, -0.729635, 0.109591,
		33.993370, 33.280869, 44.023987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390636, 33.747772, 44.640038>,  <34.465870, 33.791615, 43.947273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390636, 33.747772, 44.640038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265457, 33.395901, 44.496803>,  <34.190350, 33.184776, 44.410862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265457, 33.395901, 44.496803>,  <34.390636, 33.747772, 44.640038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265457, 33.395901, 44.496803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500937, -0.473201, 0.724668,
		-0.806923, 0.047405, 0.588752,
		-0.312950, -0.879678, -0.358090,
		34.171574, 33.131996, 44.389378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362576, 33.362091, 45.239815>,  <34.390636, 33.747772, 44.640038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362576, 33.362091, 45.239815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349094, 33.076096, 44.960487>,  <34.341007, 32.904499, 44.792889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349094, 33.076096, 44.960487>,  <34.362576, 33.362091, 45.239815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349094, 33.076096, 44.960487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436306, -0.639146, 0.633349,
		-0.899167, -0.283338, 0.333493,
		-0.033699, -0.714991, -0.698321,
		34.338985, 32.861599, 44.750992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118568, 32.835697, 45.582104>,  <34.362576, 33.362091, 45.239815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118568, 32.835697, 45.582104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300632, 32.678181, 45.262665>,  <34.409870, 32.583672, 45.070999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300632, 32.678181, 45.262665>,  <34.118568, 32.835697, 45.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300632, 32.678181, 45.262665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265910, -0.795848, 0.543983,
		-0.849779, -0.459954, -0.257524,
		0.455157, -0.393787, -0.798601,
		34.437180, 32.560043, 45.023083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895691, 32.158386, 45.432125>,  <34.118568, 32.835697, 45.582104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895691, 32.158386, 45.432125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259113, 32.175987, 45.265949>,  <34.477169, 32.186546, 45.166245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259113, 32.175987, 45.265949>,  <33.895691, 32.158386, 45.432125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259113, 32.175987, 45.265949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209159, -0.908732, 0.361189,
		-0.361628, -0.415054, -0.834839,
		0.908558, 0.043998, -0.415435,
		34.531681, 32.189186, 45.141319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101669, 31.447002, 45.123455>,  <33.895691, 32.158386, 45.432125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101669, 31.447002, 45.123455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437630, 31.657871, 45.175079>,  <34.639206, 31.784391, 45.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437630, 31.657871, 45.175079>,  <34.101669, 31.447002, 45.123455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437630, 31.657871, 45.175079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413826, -0.775892, 0.476172,
		0.351158, -0.346531, -0.869830,
		0.839902, 0.527170, 0.129058,
		34.689602, 31.816023, 45.213795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671909, 31.028278, 44.974422>,  <34.101669, 31.447002, 45.123455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671909, 31.028278, 44.974422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806793, 31.309225, 45.225174>,  <34.887722, 31.477793, 45.375626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806793, 31.309225, 45.225174>,  <34.671909, 31.028278, 44.974422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806793, 31.309225, 45.225174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461102, -0.703758, 0.540472,
		0.820778, 0.106804, -0.561174,
		0.337206, 0.702366, 0.626876,
		34.907955, 31.519936, 45.413239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331242, 30.721556, 45.178783>,  <34.671909, 31.028278, 44.974422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331242, 30.721556, 45.178783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253563, 31.014256, 45.440113>,  <35.206955, 31.189877, 45.596909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253563, 31.014256, 45.440113>,  <35.331242, 30.721556, 45.178783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253563, 31.014256, 45.440113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474426, -0.512872, 0.715459,
		0.858608, 0.448891, -0.247564,
		-0.194195, 0.731750, 0.653322,
		35.195305, 31.233780, 45.636108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030430, 30.850195, 44.876488>,  <35.331242, 30.721556, 45.178783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030430, 30.850195, 44.876488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353294, 30.635994, 44.777107>,  <36.547012, 30.507473, 44.717480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353294, 30.635994, 44.777107>,  <36.030430, 30.850195, 44.876488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353294, 30.635994, 44.777107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111192, 0.275417, -0.954873,
		0.579762, 0.798363, 0.162763,
		0.807163, -0.535501, -0.248448,
		36.595444, 30.475344, 44.702572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489441, 31.319723, 44.452259>,  <36.030430, 30.850195, 44.876488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489441, 31.319723, 44.452259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565449, 30.939457, 44.354176>,  <36.611053, 30.711298, 44.295326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565449, 30.939457, 44.354176>,  <36.489441, 31.319723, 44.452259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565449, 30.939457, 44.354176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373732, 0.160917, -0.913471,
		0.907864, 0.265221, -0.324717,
		0.190020, -0.950665, -0.245212,
		36.622456, 30.654257, 44.280613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976498, 31.356976, 43.863602>,  <36.489441, 31.319723, 44.452259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976498, 31.356976, 43.863602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807896, 30.994728, 43.844872>,  <36.706734, 30.777380, 43.833633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807896, 30.994728, 43.844872>,  <36.976498, 31.356976, 43.863602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807896, 30.994728, 43.844872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186541, 0.137126, -0.972831,
		0.887434, -0.401314, -0.226733,
		-0.421501, -0.905618, -0.046829,
		36.681446, 30.723043, 43.830822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271111, 31.099957, 43.253960>,  <36.976498, 31.356976, 43.863602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271111, 31.099957, 43.253960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944408, 30.884123, 43.335701>,  <36.748386, 30.754623, 43.384747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944408, 30.884123, 43.335701>,  <37.271111, 31.099957, 43.253960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944408, 30.884123, 43.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356167, 0.192862, -0.914303,
		0.453931, -0.819545, -0.349703,
		-0.816757, -0.539583, 0.204349,
		36.699383, 30.722248, 43.397007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151894, 30.713587, 42.689972>,  <37.271111, 31.099957, 43.253960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151894, 30.713587, 42.689972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796551, 30.719355, 42.873543>,  <36.583344, 30.722815, 42.983685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796551, 30.719355, 42.873543>,  <37.151894, 30.713587, 42.689972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796551, 30.719355, 42.873543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446810, 0.203046, -0.871282,
		-0.105748, -0.979063, -0.173934,
		-0.888357, 0.014421, 0.458927,
		36.530045, 30.723680, 43.011223>
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
