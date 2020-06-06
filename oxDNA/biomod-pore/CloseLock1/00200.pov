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
	<24.218357, 34.859009, 35.231216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199314, 34.953403, 34.842979>,  <24.187889, 35.010040, 34.610039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199314, 34.953403, 34.842979>,  <24.218357, 34.859009, 35.231216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199314, 34.953403, 34.842979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994846, -0.075884, -0.067248,
		-0.089521, -0.968788, -0.231161,
		-0.047607, 0.235990, -0.970589,
		24.185032, 35.024200, 34.551804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509911, 34.313114, 34.657200>,  <24.218357, 34.859009, 35.231216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509911, 34.313114, 34.657200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548555, 34.692547, 34.536625>,  <24.571741, 34.920204, 34.464279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548555, 34.692547, 34.536625>,  <24.509911, 34.313114, 34.657200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548555, 34.692547, 34.536625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985232, -0.134153, -0.106397,
		-0.141365, -0.286707, -0.947531,
		0.096610, 0.948579, -0.301438,
		24.577538, 34.977119, 34.446194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928663, 34.270721, 34.144062>,  <24.509911, 34.313114, 34.657200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928663, 34.270721, 34.144062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953714, 34.651165, 34.265034>,  <24.968744, 34.879433, 34.337616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953714, 34.651165, 34.265034>,  <24.928663, 34.270721, 34.144062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.953714, 34.651165, 34.265034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983808, -0.007847, -0.179054,
		-0.167927, 0.308744, -0.936204,
		0.062628, 0.951113, 0.302427,
		24.972504, 34.936501, 34.355762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868807, 33.547443, 33.848824>,  <24.928663, 34.270721, 34.144062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868807, 33.547443, 33.848824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099493, 33.327183, 34.090214>,  <25.237906, 33.195026, 34.235046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099493, 33.327183, 34.090214>,  <24.868807, 33.547443, 33.848824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099493, 33.327183, 34.090214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187932, -0.629465, -0.753960,
		0.795033, 0.548235, -0.259539,
		0.576718, -0.550647, 0.603477,
		25.272509, 33.161987, 34.271255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609304, 33.485401, 33.752937>,  <24.868807, 33.547443, 33.848824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609304, 33.485401, 33.752937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450016, 33.135750, 33.864162>,  <25.354443, 32.925961, 33.930897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450016, 33.135750, 33.864162>,  <25.609304, 33.485401, 33.752937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450016, 33.135750, 33.864162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141764, -0.358146, -0.922840,
		0.906268, -0.328077, 0.266542,
		-0.398223, -0.874126, 0.278066,
		25.330549, 32.873512, 33.947582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333414, 33.330364, 33.808182>,  <25.609304, 33.485401, 33.752937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333414, 33.330364, 33.808182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699562, 33.198845, 33.715240>,  <26.919250, 33.119934, 33.659477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699562, 33.198845, 33.715240>,  <26.333414, 33.330364, 33.808182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699562, 33.198845, 33.715240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208847, -0.105616, 0.972228,
		-0.344210, -0.938475, -0.028009,
		0.915370, -0.328801, -0.232352,
		26.974173, 33.100204, 33.645535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326181, 32.721256, 34.168438>,  <26.333414, 33.330364, 33.808182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326181, 32.721256, 34.168438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684128, 32.892857, 34.119171>,  <26.898895, 32.995815, 34.089611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684128, 32.892857, 34.119171>,  <26.326181, 32.721256, 34.168438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684128, 32.892857, 34.119171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236827, -0.222473, 0.945737,
		0.378321, -0.875479, -0.300683,
		0.894866, 0.429002, -0.123171,
		26.952587, 33.021557, 34.082218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786877, 32.251255, 34.455353>,  <26.326181, 32.721256, 34.168438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786877, 32.251255, 34.455353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954895, 32.613960, 34.470028>,  <27.055706, 32.831581, 34.478832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954895, 32.613960, 34.470028>,  <26.786877, 32.251255, 34.455353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954895, 32.613960, 34.470028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300692, -0.177209, 0.937113,
		0.856239, -0.382598, -0.347092,
		0.420045, 0.906761, 0.036689,
		27.080908, 32.885990, 34.481033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398079, 32.144245, 34.726528>,  <26.786877, 32.251255, 34.455353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398079, 32.144245, 34.726528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366632, 32.537292, 34.793800>,  <27.347765, 32.773121, 34.834164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366632, 32.537292, 34.793800>,  <27.398079, 32.144245, 34.726528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366632, 32.537292, 34.793800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355123, -0.130031, 0.925732,
		0.931508, 0.132502, -0.338727,
		-0.078617, 0.982616, 0.168179,
		27.343048, 32.832077, 34.844254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075642, 32.349152, 35.007896>,  <27.398079, 32.144245, 34.726528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075642, 32.349152, 35.007896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823895, 32.632607, 35.135475>,  <27.672846, 32.802681, 35.212025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823895, 32.632607, 35.135475>,  <28.075642, 32.349152, 35.007896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823895, 32.632607, 35.135475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454752, 0.003028, 0.890613,
		0.630156, 0.705566, -0.324160,
		-0.629368, 0.708638, 0.318949,
		27.635084, 32.845200, 35.231159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530991, 32.906086, 35.209770>,  <28.075642, 32.349152, 35.007896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530991, 32.906086, 35.209770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181978, 32.962921, 35.396748>,  <27.972570, 32.997021, 35.508934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181978, 32.962921, 35.396748>,  <28.530991, 32.906086, 35.209770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181978, 32.962921, 35.396748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465802, -0.046672, 0.883657,
		0.147374, 0.988753, -0.025463,
		-0.872530, 0.142088, 0.467442,
		27.920219, 33.005547, 35.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743753, 33.355988, 35.812180>,  <28.530991, 32.906086, 35.209770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743753, 33.355988, 35.812180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384560, 33.195568, 35.884605>,  <28.169043, 33.099316, 35.928062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384560, 33.195568, 35.884605>,  <28.743753, 33.355988, 35.812180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384560, 33.195568, 35.884605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233336, -0.085129, 0.968663,
		-0.373066, 0.912093, 0.170024,
		-0.897985, -0.401048, 0.181065,
		28.115164, 33.075253, 35.938927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566099, 33.615887, 36.437138>,  <28.743753, 33.355988, 35.812180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566099, 33.615887, 36.437138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296419, 33.322479, 36.402710>,  <28.134611, 33.146435, 36.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296419, 33.322479, 36.402710>,  <28.566099, 33.615887, 36.437138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296419, 33.322479, 36.402710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067883, -0.177595, 0.981759,
		-0.735423, 0.656058, 0.169528,
		-0.674199, -0.733517, -0.086073,
		28.094160, 33.102425, 36.376888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172468, 33.789055, 37.033958>,  <28.566099, 33.615887, 36.437138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172468, 33.789055, 37.033958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108753, 33.405029, 36.941959>,  <28.070524, 33.174614, 36.886761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108753, 33.405029, 36.941959>,  <28.172468, 33.789055, 37.033958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108753, 33.405029, 36.941959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115850, -0.249538, 0.961410,
		-0.980411, 0.126498, 0.150973,
		-0.159290, -0.960067, -0.229995,
		28.060966, 33.117008, 36.872959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486544, 33.557384, 37.468761>,  <28.172468, 33.789055, 37.033958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486544, 33.557384, 37.468761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714849, 33.243732, 37.371292>,  <27.851833, 33.055542, 37.312809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714849, 33.243732, 37.371292>,  <27.486544, 33.557384, 37.468761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714849, 33.243732, 37.371292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003003, -0.294762, 0.955566,
		-0.821109, -0.546133, -0.165885,
		0.570763, -0.784126, -0.243672,
		27.886078, 33.008495, 37.298191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175486, 33.000881, 37.688652>,  <27.486544, 33.557384, 37.468761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175486, 33.000881, 37.688652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553442, 32.870483, 37.676582>,  <27.780216, 32.792244, 37.669342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553442, 32.870483, 37.676582>,  <27.175486, 33.000881, 37.688652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553442, 32.870483, 37.676582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156383, -0.530403, 0.833197,
		-0.287620, -0.782561, -0.552153,
		0.944891, -0.325991, -0.030175,
		27.836910, 32.772686, 37.667530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133217, 32.275246, 37.826653>,  <27.175486, 33.000881, 37.688652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133217, 32.275246, 37.826653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514526, 32.355064, 37.917381>,  <27.743313, 32.402958, 37.971821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514526, 32.355064, 37.917381>,  <27.133217, 32.275246, 37.826653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514526, 32.355064, 37.917381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044880, -0.648934, 0.759520,
		0.298755, -0.734211, -0.609656,
		0.953274, 0.199549, 0.226824,
		27.800508, 32.414928, 37.985428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384571, 31.768299, 38.124104>,  <27.133217, 32.275246, 37.826653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384571, 31.768299, 38.124104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672045, 32.019680, 38.243122>,  <27.844530, 32.170509, 38.314533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672045, 32.019680, 38.243122>,  <27.384571, 31.768299, 38.124104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672045, 32.019680, 38.243122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013872, -0.440797, 0.897500,
		0.695196, -0.640893, -0.325513,
		0.718687, 0.628454, 0.297550,
		27.887651, 32.208218, 38.332386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715744, 31.348799, 38.642963>,  <27.384571, 31.768299, 38.124104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715744, 31.348799, 38.642963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851011, 31.720308, 38.703659>,  <27.932171, 31.943214, 38.740078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851011, 31.720308, 38.703659>,  <27.715744, 31.348799, 38.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851011, 31.720308, 38.703659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027169, -0.170810, 0.984929,
		0.940694, -0.328948, -0.082997,
		0.338167, 0.928772, 0.151743,
		27.952461, 31.998940, 38.749184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225620, 31.289944, 39.169487>,  <27.715744, 31.348799, 38.642963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225620, 31.289944, 39.169487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111568, 31.673317, 39.173618>,  <28.043137, 31.903341, 39.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111568, 31.673317, 39.173618>,  <28.225620, 31.289944, 39.169487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111568, 31.673317, 39.173618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036639, -0.021669, 0.999094,
		0.957788, 0.284495, 0.041295,
		-0.285132, 0.958433, 0.010331,
		28.026030, 31.960846, 39.176716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660208, 31.609800, 39.579594>,  <28.225620, 31.289944, 39.169487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660208, 31.609800, 39.579594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342293, 31.852533, 39.576183>,  <28.151545, 31.998173, 39.574139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342293, 31.852533, 39.576183>,  <28.660208, 31.609800, 39.579594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342293, 31.852533, 39.576183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048650, 0.077701, 0.995789,
		0.604937, 0.791025, -0.091278,
		-0.794786, 0.606830, -0.008521,
		28.103857, 32.034584, 39.573627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819675, 32.119522, 40.105892>,  <28.660208, 31.609800, 39.579594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819675, 32.119522, 40.105892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428125, 32.183113, 40.054466>,  <28.193195, 32.221268, 40.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428125, 32.183113, 40.054466>,  <28.819675, 32.119522, 40.105892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428125, 32.183113, 40.054466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107424, 0.135105, 0.984991,
		0.173960, 0.977994, -0.115173,
		-0.978876, 0.158977, -0.128563,
		28.134462, 32.230804, 40.015896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647327, 32.644386, 40.541336>,  <28.819675, 32.119522, 40.105892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647327, 32.644386, 40.541336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288584, 32.479534, 40.477093>,  <28.073338, 32.380623, 40.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288584, 32.479534, 40.477093>,  <28.647327, 32.644386, 40.541336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288584, 32.479534, 40.477093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197248, 0.047651, 0.979195,
		-0.395905, 0.909877, -0.124029,
		-0.896857, -0.412132, -0.160606,
		28.019527, 32.355896, 40.428909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174200, 33.021946, 40.982613>,  <28.647327, 32.644386, 40.541336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174200, 33.021946, 40.982613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977228, 32.687420, 40.886208>,  <27.859045, 32.486702, 40.828365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977228, 32.687420, 40.886208>,  <28.174200, 33.021946, 40.982613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977228, 32.687420, 40.886208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331888, -0.075556, 0.940288,
		-0.804589, 0.543014, -0.240358,
		-0.492429, -0.836317, -0.241011,
		27.829500, 32.436523, 40.813904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378466, 33.123455, 41.187580>,  <28.174200, 33.021946, 40.982613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378466, 33.123455, 41.187580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490221, 32.739605, 41.174503>,  <27.557274, 32.509296, 41.166656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490221, 32.739605, 41.174503>,  <27.378466, 33.123455, 41.187580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490221, 32.739605, 41.174503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359288, -0.136058, 0.923255,
		-0.890424, -0.246200, -0.382794,
		0.279388, -0.959622, -0.032693,
		27.574038, 32.451717, 41.164696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858608, 32.625500, 41.464973>,  <27.378466, 33.123455, 41.187580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858608, 32.625500, 41.464973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227978, 32.482162, 41.519939>,  <27.449598, 32.396160, 41.552917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227978, 32.482162, 41.519939>,  <26.858608, 32.625500, 41.464973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227978, 32.482162, 41.519939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186972, -0.107359, 0.976481,
		-0.335161, -0.927397, -0.166137,
		0.923422, -0.358341, 0.137414,
		27.505005, 32.374660, 41.561165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867945, 32.067867, 41.989376>,  <26.858608, 32.625500, 41.464973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867945, 32.067867, 41.989376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233084, 32.231121, 41.984669>,  <27.452168, 32.329071, 41.981846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233084, 32.231121, 41.984669>,  <26.867945, 32.067867, 41.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233084, 32.231121, 41.984669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023706, -0.024209, 0.999426,
		0.407612, -0.912602, -0.031774,
		0.912848, 0.408131, -0.011766,
		27.506939, 32.353561, 41.981140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322836, 31.569170, 42.382702>,  <26.867945, 32.067867, 41.989376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322836, 31.569170, 42.382702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430470, 31.953150, 42.413925>,  <27.495050, 32.183537, 42.432659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430470, 31.953150, 42.413925>,  <27.322836, 31.569170, 42.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430470, 31.953150, 42.413925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290488, -0.158162, 0.943717,
		0.918265, -0.231265, -0.321412,
		0.269084, 0.959949, 0.078055,
		27.511194, 32.241135, 42.437344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021784, 31.501209, 42.734798>,  <27.322836, 31.569170, 42.382702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021784, 31.501209, 42.734798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929621, 31.887854, 42.689945>,  <27.874323, 32.119839, 42.663033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929621, 31.887854, 42.689945>,  <28.021784, 31.501209, 42.734798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929621, 31.887854, 42.689945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438325, 0.205979, 0.874896,
		0.868782, 0.152431, -0.471150,
		-0.230408, 0.966611, -0.112136,
		27.860498, 32.177837, 42.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725840, 31.899612, 42.736061>,  <28.021784, 31.501209, 42.734798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725840, 31.899612, 42.736061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398951, 32.110550, 42.829063>,  <28.202818, 32.237114, 42.884865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398951, 32.110550, 42.829063>,  <28.725840, 31.899612, 42.736061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398951, 32.110550, 42.829063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332036, 0.101070, 0.937836,
		0.471062, 0.843620, -0.257694,
		-0.817223, 0.527343, 0.232501,
		28.153784, 32.268753, 42.898815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785149, 32.661690, 42.953297>,  <28.725840, 31.899612, 42.736061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785149, 32.661690, 42.953297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466261, 32.494308, 43.127350>,  <28.274929, 32.393879, 43.231781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466261, 32.494308, 43.127350>,  <28.785149, 32.661690, 42.953297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466261, 32.494308, 43.127350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392899, 0.187599, 0.900243,
		-0.458339, 0.888654, 0.014852,
		-0.797218, -0.418452, 0.435135,
		28.227095, 32.368774, 43.257889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399855, 33.208130, 43.446896>,  <28.785149, 32.661690, 42.953297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399855, 33.208130, 43.446896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312881, 32.833767, 43.557743>,  <28.260698, 32.609150, 43.624252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312881, 32.833767, 43.557743>,  <28.399855, 33.208130, 43.446896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312881, 32.833767, 43.557743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387654, 0.177757, 0.904504,
		-0.895794, 0.304095, 0.324159,
		-0.217433, -0.935911, 0.277117,
		28.247652, 32.552994, 43.640877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915121, 33.739468, 43.734741>,  <28.399855, 33.208130, 43.446896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915121, 33.739468, 43.734741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162567, 33.989769, 43.924793>,  <29.311035, 34.139950, 44.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162567, 33.989769, 43.924793>,  <28.915121, 33.739468, 43.734741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162567, 33.989769, 43.924793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513538, 0.135648, -0.847277,
		-0.594639, 0.768134, -0.237436,
		0.618614, 0.625756, 0.475128,
		29.348152, 34.177494, 44.067333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034290, 34.309769, 43.233875>,  <28.915121, 33.739468, 43.734741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034290, 34.309769, 43.233875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338902, 34.263905, 43.489037>,  <29.521669, 34.236385, 43.642136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338902, 34.263905, 43.489037>,  <29.034290, 34.309769, 43.233875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338902, 34.263905, 43.489037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639431, -0.027800, -0.768346,
		0.105835, 0.993015, 0.052149,
		0.761530, -0.114664, 0.637907,
		29.567360, 34.229504, 43.680408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531021, 34.935806, 43.216236>,  <29.034290, 34.309769, 43.233875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531021, 34.935806, 43.216236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720144, 34.589909, 43.283970>,  <29.833618, 34.382370, 43.324612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720144, 34.589909, 43.283970>,  <29.531021, 34.935806, 43.216236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720144, 34.589909, 43.283970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538957, 0.131763, -0.831964,
		0.697122, 0.484624, 0.528357,
		0.472808, -0.864742, 0.169336,
		29.861986, 34.330486, 43.334770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326363, 34.885822, 43.013756>,  <29.531021, 34.935806, 43.216236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326363, 34.885822, 43.013756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143475, 34.535404, 42.952454>,  <30.033741, 34.325153, 42.915672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143475, 34.535404, 42.952454>,  <30.326363, 34.885822, 43.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143475, 34.535404, 42.952454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262398, 0.031770, -0.964437,
		0.849762, -0.481176, 0.215347,
		-0.457222, -0.876048, -0.153256,
		30.006308, 34.272591, 42.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625265, 34.692398, 42.521484>,  <30.326363, 34.885822, 43.013756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625265, 34.692398, 42.521484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287788, 34.479008, 42.497536>,  <30.085302, 34.350971, 42.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287788, 34.479008, 42.497536>,  <30.625265, 34.692398, 42.521484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287788, 34.479008, 42.497536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143362, -0.116427, -0.982798,
		0.517333, -0.837761, 0.174709,
		-0.843690, -0.533481, -0.059871,
		30.034681, 34.318962, 42.479576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745760, 34.052200, 42.153877>,  <30.625265, 34.692398, 42.521484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745760, 34.052200, 42.153877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345833, 34.056305, 42.147396>,  <30.105877, 34.058769, 42.143509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345833, 34.056305, 42.147396>,  <30.745760, 34.052200, 42.153877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345833, 34.056305, 42.147396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013209, -0.244088, -0.969663,
		-0.013909, -0.969699, 0.243908,
		-0.999816, 0.010265, -0.016204,
		30.045889, 34.059383, 42.142536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515495, 33.423801, 41.910992>,  <30.745760, 34.052200, 42.153877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515495, 33.423801, 41.910992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224535, 33.689667, 41.842743>,  <30.049959, 33.849186, 41.801792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224535, 33.689667, 41.842743>,  <30.515495, 33.423801, 41.910992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224535, 33.689667, 41.842743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060100, -0.185987, -0.980713,
		-0.683575, -0.723627, 0.095341,
		-0.727402, 0.664660, -0.170626,
		30.006313, 33.889065, 41.791553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858074, 33.134254, 41.496071>,  <30.515495, 33.423801, 41.910992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858074, 33.134254, 41.496071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871975, 33.528919, 41.432468>,  <29.880316, 33.765720, 41.394306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871975, 33.528919, 41.432468>,  <29.858074, 33.134254, 41.496071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871975, 33.528919, 41.432468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027178, -0.158113, -0.987047,
		-0.999026, 0.038624, 0.021321,
		0.034753, 0.986665, -0.159009,
		29.882401, 33.824921, 41.384766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342142, 33.237934, 40.996861>,  <29.858074, 33.134254, 41.496071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342142, 33.237934, 40.996861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578043, 33.560955, 40.993965>,  <29.719584, 33.754768, 40.992229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578043, 33.560955, 40.993965>,  <29.342142, 33.237934, 40.996861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578043, 33.560955, 40.993965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062911, 0.037003, -0.997333,
		-0.805129, 0.588636, 0.072626,
		0.589754, 0.807551, -0.007239,
		29.754969, 33.803219, 40.991795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951462, 33.667736, 40.523899>,  <29.342142, 33.237934, 40.996861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951462, 33.667736, 40.523899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322027, 33.817696, 40.537796>,  <29.544367, 33.907673, 40.546135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322027, 33.817696, 40.537796>,  <28.951462, 33.667736, 40.523899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322027, 33.817696, 40.537796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026520, 0.157030, -0.987238,
		-0.375572, 0.913669, 0.155417,
		0.926414, 0.374901, 0.034745,
		29.599951, 33.930164, 40.548218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827204, 34.353275, 40.227062>,  <28.951462, 33.667736, 40.523899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827204, 34.353275, 40.227062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214415, 34.254974, 40.206955>,  <29.446741, 34.195995, 40.194889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214415, 34.254974, 40.206955>,  <28.827204, 34.353275, 40.227062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214415, 34.254974, 40.206955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044645, 0.366005, -0.929541,
		0.246833, 0.897579, 0.365275,
		0.968029, -0.245750, -0.050270,
		29.504824, 34.181248, 40.191875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153694, 34.908493, 39.976616>,  <28.827204, 34.353275, 40.227062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153694, 34.908493, 39.976616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432035, 34.628468, 39.912487>,  <29.599041, 34.460453, 39.874012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432035, 34.628468, 39.912487>,  <29.153694, 34.908493, 39.976616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432035, 34.628468, 39.912487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147529, 0.357803, -0.922070,
		0.702867, 0.617974, 0.352258,
		0.695854, -0.700061, -0.160319,
		29.640791, 34.418449, 39.864391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729170, 35.263165, 39.662567>,  <29.153694, 34.908493, 39.976616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729170, 35.263165, 39.662567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814444, 34.884560, 39.565678>,  <29.865608, 34.657398, 39.507542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814444, 34.884560, 39.565678>,  <29.729170, 35.263165, 39.662567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814444, 34.884560, 39.565678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347123, 0.305128, -0.886794,
		0.913268, 0.104966, 0.393603,
		0.213182, -0.946509, -0.242228,
		29.878399, 34.600609, 39.493008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321329, 35.316467, 39.272362>,  <29.729170, 35.263165, 39.662567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321329, 35.316467, 39.272362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152458, 34.967312, 39.174522>,  <30.051136, 34.757820, 39.115818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152458, 34.967312, 39.174522>,  <30.321329, 35.316467, 39.272362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152458, 34.967312, 39.174522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258580, 0.142660, -0.955397,
		0.868852, -0.466596, 0.165485,
		-0.422177, -0.872890, -0.244603,
		30.025805, 34.705444, 39.101143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758522, 35.088665, 38.627903>,  <30.321329, 35.316467, 39.272362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758522, 35.088665, 38.627903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421814, 34.872898, 38.636387>,  <30.219790, 34.743439, 38.641479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421814, 34.872898, 38.636387>,  <30.758522, 35.088665, 38.627903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421814, 34.872898, 38.636387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012846, -0.019271, -0.999732,
		0.539685, -0.841816, 0.009292,
		-0.841769, -0.539421, 0.021214,
		30.169283, 34.711071, 38.642750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873690, 34.423428, 38.214970>,  <30.758522, 35.088665, 38.627903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873690, 34.423428, 38.214970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481949, 34.504280, 38.213566>,  <30.246904, 34.552792, 38.212723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481949, 34.504280, 38.213566>,  <30.873690, 34.423428, 38.214970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481949, 34.504280, 38.213566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014643, 0.053619, -0.998454,
		-0.201628, -0.977890, -0.055471,
		-0.979353, 0.202129, -0.003509,
		30.188143, 34.564919, 38.212513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546661, 34.048119, 37.645935>,  <30.873690, 34.423428, 38.214970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546661, 34.048119, 37.645935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267107, 34.327000, 37.709763>,  <30.099375, 34.494328, 37.748058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267107, 34.327000, 37.709763>,  <30.546661, 34.048119, 37.645935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267107, 34.327000, 37.709763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103852, 0.121814, -0.987105,
		-0.707655, -0.706444, -0.012727,
		-0.698885, 0.697208, 0.159568,
		30.057442, 34.536163, 37.757633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034952, 33.886745, 37.080376>,  <30.546661, 34.048119, 37.645935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034952, 33.886745, 37.080376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984211, 34.264503, 37.201717>,  <29.953766, 34.491158, 37.274521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984211, 34.264503, 37.201717>,  <30.034952, 33.886745, 37.080376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984211, 34.264503, 37.201717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289457, 0.257267, -0.921970,
		-0.948748, -0.204761, 0.240728,
		-0.126852, 0.944398, 0.303351,
		29.946156, 34.547821, 37.292721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396961, 33.953873, 36.855103>,  <30.034952, 33.886745, 37.080376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396961, 33.953873, 36.855103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566401, 34.314293, 36.892345>,  <29.668064, 34.530544, 36.914692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566401, 34.314293, 36.892345>,  <29.396961, 33.953873, 36.855103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566401, 34.314293, 36.892345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211736, 0.198426, -0.956972,
		-0.880757, 0.385657, 0.274838,
		0.423598, 0.901053, 0.093108,
		29.693480, 34.584610, 36.920277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891611, 34.460026, 36.466522>,  <29.396961, 33.953873, 36.855103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891611, 34.460026, 36.466522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247601, 34.639862, 36.497025>,  <29.461195, 34.747765, 36.515327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247601, 34.639862, 36.497025>,  <28.891611, 34.460026, 36.466522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247601, 34.639862, 36.497025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001558, 0.164230, -0.986421,
		-0.456008, 0.878008, 0.145460,
		0.889974, 0.449589, 0.076258,
		29.514593, 34.774738, 36.519901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875172, 35.008415, 35.956524>,  <28.891611, 34.460026, 36.466522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875172, 35.008415, 35.956524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263189, 34.966763, 36.044315>,  <29.496000, 34.941772, 36.096992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263189, 34.966763, 36.044315>,  <28.875172, 35.008415, 35.956524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263189, 34.966763, 36.044315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233867, 0.155796, -0.959705,
		0.065738, 0.982286, 0.175481,
		0.970044, -0.104129, 0.219482,
		29.554203, 34.935524, 36.110161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261299, 35.706486, 35.821621>,  <28.875172, 35.008415, 35.956524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261299, 35.706486, 35.821621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511324, 35.394833, 35.802666>,  <29.661339, 35.207840, 35.791294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511324, 35.394833, 35.802666>,  <29.261299, 35.706486, 35.821621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511324, 35.394833, 35.802666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152594, 0.181501, -0.971479,
		0.765513, 0.600006, 0.232341,
		0.625064, -0.779134, -0.047384,
		29.698843, 35.161091, 35.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779886, 35.906532, 35.278347>,  <29.261299, 35.706486, 35.821621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779886, 35.906532, 35.278347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858717, 35.515568, 35.308876>,  <29.906015, 35.280991, 35.327194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858717, 35.515568, 35.308876>,  <29.779886, 35.906532, 35.278347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858717, 35.515568, 35.308876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246518, -0.025948, -0.968791,
		0.948889, 0.209741, 0.235836,
		0.197076, -0.977413, 0.076326,
		29.917839, 35.222343, 35.331776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451891, 35.786999, 34.979305>,  <29.779886, 35.906532, 35.278347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451891, 35.786999, 34.979305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256506, 35.438049, 34.971561>,  <30.139275, 35.228680, 34.966915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256506, 35.438049, 34.971561>,  <30.451891, 35.786999, 34.979305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256506, 35.438049, 34.971561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228679, -0.106567, -0.967651,
		0.842086, -0.477090, 0.251547,
		-0.488464, -0.872369, -0.019362,
		30.109966, 35.176338, 34.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919952, 35.270542, 34.542145>,  <30.451891, 35.786999, 34.979305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919952, 35.270542, 34.542145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545156, 35.131962, 34.524143>,  <30.320280, 35.048813, 34.513344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545156, 35.131962, 34.524143>,  <30.919952, 35.270542, 34.542145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545156, 35.131962, 34.524143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094378, -0.126996, -0.987403,
		0.336372, -0.929432, 0.151691,
		-0.936988, -0.346451, -0.045000,
		30.264061, 35.028027, 34.510643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929188, 34.515068, 34.286125>,  <30.919952, 35.270542, 34.542145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929188, 34.515068, 34.286125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616100, 34.759338, 34.238079>,  <30.428247, 34.905899, 34.209251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616100, 34.759338, 34.238079>,  <30.929188, 34.515068, 34.286125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616100, 34.759338, 34.238079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086090, -0.084907, -0.992663,
		-0.616391, -0.787318, 0.013886,
		-0.782720, 0.610673, -0.120116,
		30.381285, 34.942539, 34.202045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458887, 34.191422, 34.115894>,  <30.929188, 34.515068, 34.286125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458887, 34.191422, 34.115894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512516, 34.579716, 34.036198>,  <31.544693, 34.812691, 33.988380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512516, 34.579716, 34.036198>,  <31.458887, 34.191422, 34.115894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512516, 34.579716, 34.036198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838003, -0.003747, 0.545653,
		0.528938, -0.240118, -0.813982,
		0.134071, 0.970736, -0.199238,
		31.552738, 34.870937, 33.976425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141220, 34.369408, 33.753822>,  <31.458887, 34.191422, 34.115894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141220, 34.369408, 33.753822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019695, 34.658611, 34.002003>,  <31.946779, 34.832134, 34.150909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019695, 34.658611, 34.002003>,  <32.141220, 34.369408, 33.753822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019695, 34.658611, 34.002003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893588, -0.009627, 0.448785,
		0.330448, 0.690773, -0.643146,
		-0.303817, 0.723008, 0.620447,
		31.928551, 34.875515, 34.188137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752159, 34.575172, 34.094612>,  <32.141220, 34.369408, 33.753822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752159, 34.575172, 34.094612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463985, 34.749962, 34.310032>,  <32.291080, 34.854836, 34.439285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463985, 34.749962, 34.310032>,  <32.752159, 34.575172, 34.094612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463985, 34.749962, 34.310032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654133, 0.170149, 0.736993,
		0.230410, 0.883237, -0.408417,
		-0.720431, 0.436970, 0.538551,
		32.247856, 34.881054, 34.471596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144276, 35.203781, 34.425724>,  <32.752159, 34.575172, 34.094612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144276, 35.203781, 34.425724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841045, 35.031639, 34.621727>,  <32.659107, 34.928352, 34.739330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841045, 35.031639, 34.621727>,  <33.144276, 35.203781, 34.425724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841045, 35.031639, 34.621727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531723, 0.027183, 0.846482,
		-0.377608, 0.902250, 0.208223,
		-0.758078, -0.430355, 0.490012,
		32.613621, 34.902531, 34.768730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796844, 35.601307, 35.005455>,  <33.144276, 35.203781, 34.425724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796844, 35.601307, 35.005455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792488, 35.207817, 35.077202>,  <32.789875, 34.971725, 35.120251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792488, 35.207817, 35.077202>,  <32.796844, 35.601307, 35.005455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792488, 35.207817, 35.077202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472391, 0.153038, 0.868001,
		-0.881322, 0.094190, 0.463034,
		-0.010895, -0.983721, 0.179370,
		32.789219, 34.912701, 35.131012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529209, 35.443989, 35.617519>,  <32.796844, 35.601307, 35.005455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529209, 35.443989, 35.617519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781067, 35.143780, 35.537251>,  <32.932182, 34.963654, 35.489090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781067, 35.143780, 35.537251>,  <32.529209, 35.443989, 35.617519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781067, 35.143780, 35.537251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466221, 0.158417, 0.870369,
		-0.621441, -0.641577, 0.449655,
		0.629642, -0.750521, -0.200670,
		32.969959, 34.918625, 35.477051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530930, 35.023075, 36.176212>,  <32.529209, 35.443989, 35.617519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530930, 35.023075, 36.176212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879742, 34.994904, 35.982468>,  <33.089027, 34.978001, 35.866222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879742, 34.994904, 35.982468>,  <32.530930, 35.023075, 36.176212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879742, 34.994904, 35.982468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478672, -0.083870, 0.873979,
		-0.102199, -0.993983, -0.039413,
		0.872026, -0.070454, -0.484363,
		33.141350, 34.973774, 35.837158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888794, 34.462132, 36.540302>,  <32.530930, 35.023075, 36.176212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888794, 34.462132, 36.540302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160244, 34.673504, 36.336254>,  <33.323116, 34.800327, 36.213825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160244, 34.673504, 36.336254>,  <32.888794, 34.462132, 36.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160244, 34.673504, 36.336254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624381, -0.049297, 0.779563,
		0.386797, -0.847544, -0.363396,
		0.678628, 0.528430, -0.510122,
		33.363834, 34.832031, 36.183216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459599, 34.137329, 36.818295>,  <32.888794, 34.462132, 36.540302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459599, 34.137329, 36.818295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574394, 34.469311, 36.626953>,  <33.643272, 34.668499, 36.512150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574394, 34.469311, 36.626953>,  <33.459599, 34.137329, 36.818295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574394, 34.469311, 36.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668614, 0.184053, 0.720472,
		0.685998, -0.526599, -0.502095,
		0.286988, 0.829950, -0.478352,
		33.660492, 34.718296, 36.483448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195770, 34.076298, 36.769661>,  <33.459599, 34.137329, 36.818295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195770, 34.076298, 36.769661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127834, 34.466167, 36.711460>,  <34.087070, 34.700089, 36.676540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127834, 34.466167, 36.711460>,  <34.195770, 34.076298, 36.769661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127834, 34.466167, 36.711460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724990, 0.223588, 0.651459,
		0.667491, 0.005154, -0.744600,
		-0.169842, 0.974670, -0.145506,
		34.076881, 34.758568, 36.667809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866177, 34.452061, 36.758224>,  <34.195770, 34.076298, 36.769661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866177, 34.452061, 36.758224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602345, 34.737553, 36.852489>,  <34.444046, 34.908848, 36.909050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602345, 34.737553, 36.852489>,  <34.866177, 34.452061, 36.758224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602345, 34.737553, 36.852489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576089, 0.278662, 0.768420,
		0.482775, 0.642600, -0.594974,
		-0.659583, 0.713732, 0.235664,
		34.404469, 34.951672, 36.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268738, 35.009621, 36.947540>,  <34.866177, 34.452061, 36.758224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268738, 35.009621, 36.947540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910259, 35.063099, 37.116753>,  <34.695171, 35.095184, 37.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910259, 35.063099, 37.116753>,  <35.268738, 35.009621, 36.947540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910259, 35.063099, 37.116753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443580, 0.287880, 0.848741,
		-0.008312, 0.948288, -0.317301,
		-0.896196, 0.133694, 0.423035,
		34.641399, 35.103207, 37.243664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339169, 35.526409, 37.445427>,  <35.268738, 35.009621, 36.947540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339169, 35.526409, 37.445427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006718, 35.374504, 37.607914>,  <34.807247, 35.283363, 37.705406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006718, 35.374504, 37.607914>,  <35.339169, 35.526409, 37.445427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006718, 35.374504, 37.607914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353810, 0.202434, 0.913148,
		-0.429008, 0.902665, -0.033886,
		-0.831126, -0.379758, 0.406217,
		34.757381, 35.260578, 37.729778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147697, 35.931629, 38.012402>,  <35.339169, 35.526409, 37.445427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147697, 35.931629, 38.012402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973366, 35.576942, 38.074097>,  <34.868767, 35.364132, 38.111115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973366, 35.576942, 38.074097>,  <35.147697, 35.931629, 38.012402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973366, 35.576942, 38.074097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392662, -0.033126, 0.919086,
		-0.809856, 0.461132, 0.362616,
		-0.435832, -0.886713, 0.154242,
		34.842617, 35.310928, 38.120369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903748, 35.962738, 38.737381>,  <35.147697, 35.931629, 38.012402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903748, 35.962738, 38.737381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901451, 35.571983, 38.651913>,  <34.900074, 35.337528, 38.600632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901451, 35.571983, 38.651913>,  <34.903748, 35.962738, 38.737381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901451, 35.571983, 38.651913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336359, -0.203110, 0.919570,
		-0.941716, -0.066587, 0.329752,
		-0.005745, -0.976889, -0.213669,
		34.899727, 35.278915, 38.587811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570942, 35.785385, 39.365479>,  <34.903748, 35.962738, 38.737381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570942, 35.785385, 39.365479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727158, 35.466755, 39.180893>,  <34.820889, 35.275578, 39.070141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727158, 35.466755, 39.180893>,  <34.570942, 35.785385, 39.365479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727158, 35.466755, 39.180893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138532, -0.444711, 0.884896,
		-0.910102, -0.409516, -0.063327,
		0.390541, -0.796573, -0.461464,
		34.844318, 35.227783, 39.042454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177124, 35.239742, 39.619011>,  <34.570942, 35.785385, 39.365479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177124, 35.239742, 39.619011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518745, 35.086010, 39.478798>,  <34.723721, 34.993771, 39.394669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518745, 35.086010, 39.478798>,  <34.177124, 35.239742, 39.619011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518745, 35.086010, 39.478798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038377, -0.625481, 0.779295,
		-0.518762, -0.679014, -0.519447,
		0.854057, -0.384334, -0.350535,
		34.774963, 34.970711, 39.373638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092617, 34.458946, 39.473774>,  <34.177124, 35.239742, 39.619011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092617, 34.458946, 39.473774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449913, 34.584438, 39.602581>,  <34.664291, 34.659733, 39.679867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449913, 34.584438, 39.602581>,  <34.092617, 34.458946, 39.473774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449913, 34.584438, 39.602581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057865, -0.790531, 0.609682,
		0.445845, -0.525958, -0.724286,
		0.893238, 0.313734, 0.322020,
		34.717884, 34.678558, 39.699188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410664, 33.992126, 39.805202>,  <34.092617, 34.458946, 39.473774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410664, 33.992126, 39.805202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710911, 34.237934, 39.902317>,  <34.891060, 34.385418, 39.960587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710911, 34.237934, 39.902317>,  <34.410664, 33.992126, 39.805202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710911, 34.237934, 39.902317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215489, -0.575024, 0.789247,
		0.624616, -0.540103, -0.564043,
		0.750613, 0.614521, 0.242783,
		34.936096, 34.422291, 39.975151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858242, 33.575119, 40.105404>,  <34.410664, 33.992126, 39.805202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858242, 33.575119, 40.105404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030117, 33.919254, 40.215088>,  <35.133240, 34.125736, 40.280899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030117, 33.919254, 40.215088>,  <34.858242, 33.575119, 40.105404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030117, 33.919254, 40.215088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471087, -0.472654, 0.744765,
		0.770356, -0.190837, -0.608386,
		0.429685, 0.860337, 0.274211,
		35.159023, 34.177357, 40.297352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532990, 33.374264, 40.387280>,  <34.858242, 33.575119, 40.105404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532990, 33.374264, 40.387280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441711, 33.736141, 40.531200>,  <35.386944, 33.953266, 40.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441711, 33.736141, 40.531200>,  <35.532990, 33.374264, 40.387280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441711, 33.736141, 40.531200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267917, -0.296938, 0.916542,
		0.936028, 0.305547, -0.174623,
		-0.228194, 0.904693, 0.359803,
		35.373253, 34.007549, 40.639141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071426, 33.609901, 40.878906>,  <35.532990, 33.374264, 40.387280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071426, 33.609901, 40.878906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751133, 33.826931, 40.980450>,  <35.558956, 33.957150, 41.041378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751133, 33.826931, 40.980450>,  <36.071426, 33.609901, 40.878906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751133, 33.826931, 40.980450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179411, -0.187116, 0.965815,
		0.571526, 0.818903, 0.052486,
		-0.800731, 0.542572, 0.253862,
		35.510914, 33.989704, 41.056606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288284, 33.976574, 41.464565>,  <36.071426, 33.609901, 40.878906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288284, 33.976574, 41.464565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888840, 33.991718, 41.479252>,  <35.649174, 34.000805, 41.488064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888840, 33.991718, 41.479252>,  <36.288284, 33.976574, 41.464565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888840, 33.991718, 41.479252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029497, -0.176090, 0.983932,
		0.043718, 0.983646, 0.174728,
		-0.998608, 0.037862, 0.036713,
		35.589256, 34.003078, 41.490265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053982, 34.510143, 41.872910>,  <36.288284, 33.976574, 41.464565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053982, 34.510143, 41.872910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771793, 34.226650, 41.872540>,  <35.602478, 34.056553, 41.872318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771793, 34.226650, 41.872540>,  <36.053982, 34.510143, 41.872910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771793, 34.226650, 41.872540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010868, -0.012126, 0.999867,
		-0.708652, 0.705371, 0.016257,
		-0.705475, -0.708735, -0.000927,
		35.560150, 34.014030, 41.872261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582191, 34.738567, 42.341816>,  <36.053982, 34.510143, 41.872910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582191, 34.738567, 42.341816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500130, 34.347870, 42.316879>,  <35.450893, 34.113453, 42.301918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500130, 34.347870, 42.316879>,  <35.582191, 34.738567, 42.341816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500130, 34.347870, 42.316879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137351, -0.034332, 0.989928,
		-0.969043, 0.211654, -0.127113,
		-0.205158, -0.976741, -0.062340,
		35.438583, 34.054848, 42.298176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990971, 34.622372, 42.844784>,  <35.582191, 34.738567, 42.341816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990971, 34.622372, 42.844784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101288, 34.245621, 42.768040>,  <35.167477, 34.019569, 42.721992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101288, 34.245621, 42.768040>,  <34.990971, 34.622372, 42.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101288, 34.245621, 42.768040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050767, -0.213597, 0.975602,
		-0.959876, -0.259322, -0.106724,
		0.275791, -0.941875, -0.191862,
		35.184025, 33.963058, 42.710480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538925, 34.184162, 43.278000>,  <34.990971, 34.622372, 42.844784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538925, 34.184162, 43.278000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888027, 34.008797, 43.192131>,  <35.097488, 33.903576, 43.140610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888027, 34.008797, 43.192131>,  <34.538925, 34.184162, 43.278000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888027, 34.008797, 43.192131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142479, -0.191828, 0.971031,
		-0.466896, -0.878062, -0.104955,
		0.872759, -0.438417, -0.214669,
		35.149857, 33.877274, 43.127731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498558, 33.571918, 43.740635>,  <34.538925, 34.184162, 43.278000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498558, 33.571918, 43.740635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877247, 33.603367, 43.615707>,  <35.104458, 33.622234, 43.540749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877247, 33.603367, 43.615707>,  <34.498558, 33.571918, 43.740635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877247, 33.603367, 43.615707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321771, -0.272390, 0.906790,
		-0.013784, -0.958970, -0.283174,
		0.946718, 0.078618, -0.312323,
		35.161263, 33.626953, 43.522011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824451, 32.902729, 43.892269>,  <34.498558, 33.571918, 43.740635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824451, 32.902729, 43.892269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086945, 33.204494, 43.886292>,  <35.244442, 33.385551, 43.882706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086945, 33.204494, 43.886292>,  <34.824451, 32.902729, 43.892269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086945, 33.204494, 43.886292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248552, -0.197417, 0.948287,
		0.712446, -0.626013, -0.317062,
		0.656233, 0.754410, -0.014947,
		35.283813, 33.430817, 43.881805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300072, 32.605991, 44.229801>,  <34.824451, 32.902729, 43.892269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300072, 32.605991, 44.229801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393719, 32.994759, 44.239353>,  <35.449909, 33.228020, 44.245083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393719, 32.994759, 44.239353>,  <35.300072, 32.605991, 44.229801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393719, 32.994759, 44.239353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265117, -0.087452, 0.960242,
		0.935361, -0.218483, -0.278145,
		0.234122, 0.971914, 0.023876,
		35.463955, 33.286331, 44.246517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036659, 32.586548, 44.473389>,  <35.300072, 32.605991, 44.229801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036659, 32.586548, 44.473389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886143, 32.949623, 44.547691>,  <35.795834, 33.167469, 44.592274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886143, 32.949623, 44.547691>,  <36.036659, 32.586548, 44.473389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886143, 32.949623, 44.547691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211937, -0.110843, 0.970977,
		0.901934, 0.404741, -0.150663,
		-0.376295, 0.907689, 0.185752,
		35.773254, 33.221931, 44.603416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551987, 33.012646, 44.828289>,  <36.036659, 32.586548, 44.473389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551987, 33.012646, 44.828289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200367, 33.172405, 44.932415>,  <35.989395, 33.268261, 44.994888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200367, 33.172405, 44.932415>,  <36.551987, 33.012646, 44.828289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200367, 33.172405, 44.932415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222721, -0.138729, 0.964961,
		0.421515, 0.906221, 0.032995,
		-0.879045, 0.399397, 0.260311,
		35.936653, 33.292225, 45.010509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698250, 33.157661, 45.428928>,  <36.551987, 33.012646, 44.828289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698250, 33.157661, 45.428928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304920, 33.225956, 45.453995>,  <36.068924, 33.266933, 45.469032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304920, 33.225956, 45.453995>,  <36.698250, 33.157661, 45.428928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304920, 33.225956, 45.453995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072208, 0.050281, 0.996121,
		0.166926, 0.984033, -0.061771,
		-0.983322, 0.170739, 0.062661,
		36.009922, 33.277176, 45.472794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451397, 33.841763, 45.662632>,  <36.698250, 33.157661, 45.428928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451397, 33.841763, 45.662632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142746, 33.602142, 45.748169>,  <35.957554, 33.458370, 45.799492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142746, 33.602142, 45.748169>,  <36.451397, 33.841763, 45.662632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142746, 33.602142, 45.748169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076356, 0.246520, 0.966125,
		-0.631470, 0.761821, -0.144482,
		-0.771632, -0.599047, 0.213839,
		35.911255, 33.422428, 45.812321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009735, 34.250278, 46.056507>,  <36.451397, 33.841763, 45.662632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009735, 34.250278, 46.056507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911938, 33.871632, 46.140533>,  <35.853260, 33.644444, 46.190948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911938, 33.871632, 46.140533>,  <36.009735, 34.250278, 46.056507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911938, 33.871632, 46.140533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128295, 0.183159, 0.974676,
		-0.961125, 0.265256, 0.076665,
		-0.244497, -0.946622, 0.210069,
		35.838589, 33.587646, 46.203556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659634, 34.218586, 46.721745>,  <36.009735, 34.250278, 46.056507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659634, 34.218586, 46.721745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729805, 33.825184, 46.704113>,  <35.771908, 33.589142, 46.693535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729805, 33.825184, 46.704113>,  <35.659634, 34.218586, 46.721745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729805, 33.825184, 46.704113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039340, -0.037736, 0.998513,
		-0.983705, -0.176905, 0.032071,
		0.175432, -0.983504, -0.044081,
		35.782436, 33.530132, 46.690887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254932, 33.942822, 47.266865>,  <35.659634, 34.218586, 46.721745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254932, 33.942822, 47.266865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529804, 33.673035, 47.158878>,  <35.694729, 33.511162, 47.094086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529804, 33.673035, 47.158878>,  <35.254932, 33.942822, 47.266865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529804, 33.673035, 47.158878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157873, -0.224089, 0.961696,
		-0.709127, -0.703478, -0.047509,
		0.687179, -0.674465, -0.269968,
		35.735958, 33.470695, 47.077888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984016, 33.278133, 47.529919>,  <35.254932, 33.942822, 47.266865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984016, 33.278133, 47.529919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378674, 33.245735, 47.473396>,  <35.615471, 33.226295, 47.439484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378674, 33.245735, 47.473396>,  <34.984016, 33.278133, 47.529919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378674, 33.245735, 47.473396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115180, -0.266401, 0.956956,
		-0.115152, -0.960453, -0.253515,
		0.986648, -0.080995, -0.141301,
		35.674667, 33.221436, 47.431007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146595, 32.641930, 47.829693>,  <34.984016, 33.278133, 47.529919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146595, 32.641930, 47.829693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504539, 32.820320, 47.836941>,  <35.719307, 32.927357, 47.841290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504539, 32.820320, 47.836941>,  <35.146595, 32.641930, 47.829693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504539, 32.820320, 47.836941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264895, -0.563313, 0.782630,
		0.359247, -0.695542, -0.622224,
		0.894859, 0.445981, 0.018123,
		35.772999, 32.954113, 47.842377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676792, 32.121433, 47.962666>,  <35.146595, 32.641930, 47.829693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676792, 32.121433, 47.962666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859100, 32.465191, 48.055367>,  <35.968483, 32.671448, 48.110989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859100, 32.465191, 48.055367>,  <35.676792, 32.121433, 47.962666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859100, 32.465191, 48.055367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405845, -0.432372, 0.805198,
		0.792191, -0.272926, -0.545844,
		0.455767, 0.859398, 0.231756,
		35.995831, 32.723011, 48.124893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462128, 32.116409, 47.999939>,  <35.676792, 32.121433, 47.962666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462128, 32.116409, 47.999939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333488, 32.412376, 48.236279>,  <36.256306, 32.589958, 48.378082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333488, 32.412376, 48.236279>,  <36.462128, 32.116409, 47.999939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333488, 32.412376, 48.236279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584373, -0.335891, 0.738705,
		0.745040, 0.582838, -0.324367,
		-0.321594, 0.739917, 0.590847,
		36.237011, 32.634350, 48.413532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840668, 32.114399, 48.561481>,  <36.462128, 32.116409, 47.999939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840668, 32.114399, 48.561481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575089, 32.373524, 48.710892>,  <36.415741, 32.528999, 48.800537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575089, 32.373524, 48.710892>,  <36.840668, 32.114399, 48.561481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575089, 32.373524, 48.710892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176712, -0.349442, 0.920143,
		0.726602, 0.676930, 0.117534,
		-0.663944, 0.647809, 0.373527,
		36.375904, 32.567867, 48.822948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142738, 32.323139, 49.145012>,  <36.840668, 32.114399, 48.561481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142738, 32.323139, 49.145012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753860, 32.400181, 49.198284>,  <36.520535, 32.446404, 49.230247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753860, 32.400181, 49.198284>,  <37.142738, 32.323139, 49.145012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753860, 32.400181, 49.198284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048183, -0.392040, 0.918686,
		0.229153, 0.899561, 0.371860,
		-0.972197, 0.192602, 0.133180,
		36.462200, 32.457962, 49.238239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095619, 32.548626, 49.774025>,  <37.142738, 32.323139, 49.145012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095619, 32.548626, 49.774025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715618, 32.441799, 49.709312>,  <36.487617, 32.377705, 49.670483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715618, 32.441799, 49.709312>,  <37.095619, 32.548626, 49.774025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715618, 32.441799, 49.709312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067593, -0.329951, 0.941575,
		-0.304842, 0.905433, 0.295402,
		-0.950001, -0.267064, -0.161784,
		36.430618, 32.361679, 49.660778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759647, 32.605309, 50.352180>,  <37.095619, 32.548626, 49.774025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759647, 32.605309, 50.352180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520302, 32.339405, 50.173271>,  <36.376694, 32.179863, 50.065926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520302, 32.339405, 50.173271>,  <36.759647, 32.605309, 50.352180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520302, 32.339405, 50.173271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235278, -0.387840, 0.891193,
		-0.765899, 0.638493, 0.075668,
		-0.598368, -0.664760, -0.447269,
		36.340790, 32.139977, 50.039089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186428, 32.484226, 50.877411>,  <36.759647, 32.605309, 50.352180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186428, 32.484226, 50.877411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136585, 32.188435, 50.612793>,  <36.106678, 32.010960, 50.454021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136585, 32.188435, 50.612793>,  <36.186428, 32.484226, 50.877411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136585, 32.188435, 50.612793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287892, -0.611114, 0.737332,
		-0.949521, 0.282332, -0.136739,
		-0.124609, -0.739479, -0.661546,
		36.099201, 31.966591, 50.414330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534458, 32.237846, 50.978168>,  <36.186428, 32.484226, 50.877411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534458, 32.237846, 50.978168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734066, 31.938841, 50.802807>,  <35.853828, 31.759436, 50.697590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734066, 31.938841, 50.802807>,  <35.534458, 32.237846, 50.978168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734066, 31.938841, 50.802807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386804, -0.644837, 0.659218,
		-0.775478, -0.159383, -0.610927,
		0.499016, -0.747518, -0.438406,
		35.883770, 31.714586, 50.671284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090492, 31.631851, 50.903046>,  <35.534458, 32.237846, 50.978168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090492, 31.631851, 50.903046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464607, 31.490656, 50.913200>,  <35.689075, 31.405939, 50.919292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464607, 31.490656, 50.913200>,  <35.090492, 31.631851, 50.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464607, 31.490656, 50.913200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269816, -0.664820, 0.696573,
		-0.229006, -0.658342, -0.717037,
		0.935284, -0.352988, 0.025384,
		35.745193, 31.384760, 50.920815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068615, 30.907864, 51.004459>,  <35.090492, 31.631851, 50.903046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068615, 30.907864, 51.004459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450516, 30.980347, 51.098785>,  <35.679657, 31.023836, 51.155380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450516, 30.980347, 51.098785>,  <35.068615, 30.907864, 51.004459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450516, 30.980347, 51.098785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017902, -0.756474, 0.653778,
		0.296857, -0.628419, -0.719003,
		0.954754, 0.181207, 0.235815,
		35.736942, 31.034708, 51.169529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561260, 30.220343, 50.968357>,  <35.068615, 30.907864, 51.004459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561260, 30.220343, 50.968357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690441, 30.467686, 51.254948>,  <35.767948, 30.616091, 51.426903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690441, 30.467686, 51.254948>,  <35.561260, 30.220343, 50.968357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690441, 30.467686, 51.254948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102775, -0.729650, 0.676053,
		0.940820, -0.291966, -0.172087,
		0.322948, 0.618358, 0.716476,
		35.787327, 30.653193, 51.469891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168629, 29.846487, 51.429058>,  <35.561260, 30.220343, 50.968357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168629, 29.846487, 51.429058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931683, 30.124435, 51.592155>,  <35.789513, 30.291204, 51.690014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931683, 30.124435, 51.592155>,  <36.168629, 29.846487, 51.429058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931683, 30.124435, 51.592155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310182, -0.663781, 0.680574,
		0.743563, 0.276676, 0.608740,
		-0.592369, 0.694870, 0.407743,
		35.753971, 30.332897, 51.714478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392467, 30.043859, 52.037006>,  <36.168629, 29.846487, 51.429058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392467, 30.043859, 52.037006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995583, 30.081972, 52.004921>,  <35.757450, 30.104839, 51.985668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995583, 30.081972, 52.004921>,  <36.392467, 30.043859, 52.037006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995583, 30.081972, 52.004921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119390, -0.544162, 0.830442,
		0.035477, 0.833552, 0.551301,
		-0.992213, 0.095282, -0.080213,
		35.697918, 30.110558, 51.980858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830242, 30.613897, 51.946011>,  <36.392467, 30.043859, 52.037006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830242, 30.613897, 51.946011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206383, 30.482113, 51.979958>,  <37.432068, 30.403042, 52.000324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206383, 30.482113, 51.979958>,  <36.830242, 30.613897, 51.946011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206383, 30.482113, 51.979958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052173, -0.386144, -0.920962,
		0.336192, 0.861596, -0.380299,
		0.940347, -0.329461, 0.084866,
		37.488487, 30.383274, 52.005417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983921, 30.583466, 51.254616>,  <36.830242, 30.613897, 51.946011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983921, 30.583466, 51.254616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246735, 30.342388, 51.435753>,  <37.404423, 30.197742, 51.544434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246735, 30.342388, 51.435753>,  <36.983921, 30.583466, 51.254616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246735, 30.342388, 51.435753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168095, -0.468442, -0.867356,
		0.734878, 0.646005, -0.206474,
		0.657038, -0.602693, 0.452838,
		37.443848, 30.161581, 51.571606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552509, 30.610117, 50.865566>,  <36.983921, 30.583466, 51.254616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552509, 30.610117, 50.865566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531845, 30.273064, 51.079967>,  <37.519447, 30.070831, 51.208611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531845, 30.273064, 51.079967>,  <37.552509, 30.610117, 50.865566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531845, 30.273064, 51.079967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183303, -0.535604, -0.824335,
		0.981698, 0.055666, 0.182126,
		-0.051660, -0.842633, 0.536005,
		37.516346, 30.020273, 51.240768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155064, 29.959047, 50.818108>,  <37.552509, 30.610117, 50.865566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155064, 29.959047, 50.818108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790497, 29.813755, 50.895451>,  <37.571758, 29.726580, 50.941856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790497, 29.813755, 50.895451>,  <38.155064, 29.959047, 50.818108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790497, 29.813755, 50.895451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083253, -0.622955, -0.777815,
		0.402983, -0.692813, 0.598009,
		-0.911413, -0.363232, 0.193361,
		37.517075, 29.704786, 50.953461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115475, 29.266356, 50.794041>,  <38.155064, 29.959047, 50.818108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115475, 29.266356, 50.794041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745407, 29.393293, 50.710762>,  <37.523365, 29.469456, 50.660793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745407, 29.393293, 50.710762>,  <38.115475, 29.266356, 50.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745407, 29.393293, 50.710762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047772, -0.446816, -0.893349,
		-0.376526, -0.836449, 0.398222,
		-0.925173, 0.317346, -0.208197,
		37.467854, 29.488497, 50.648304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043343, 28.833557, 50.148457>,  <38.115475, 29.266356, 50.794041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043343, 28.833557, 50.148457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749390, 29.104826, 50.150570>,  <37.573017, 29.267588, 50.151840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749390, 29.104826, 50.150570>,  <38.043343, 28.833557, 50.148457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749390, 29.104826, 50.150570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103780, -0.104747, -0.989069,
		-0.670205, -0.727400, 0.147358,
		-0.734884, 0.678172, 0.005288,
		37.528923, 29.308277, 50.152157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408127, 28.535900, 49.908031>,  <38.043343, 28.833557, 50.148457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408127, 28.535900, 49.908031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465389, 28.924137, 49.830620>,  <37.499748, 29.157080, 49.784172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465389, 28.924137, 49.830620>,  <37.408127, 28.535900, 49.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465389, 28.924137, 49.830620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010561, -0.194034, -0.980938,
		-0.989644, 0.142471, -0.017527,
		0.143156, 0.970594, -0.193529,
		37.508335, 29.215315, 49.772560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887695, 28.750101, 49.457600>,  <37.408127, 28.535900, 49.908031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887695, 28.750101, 49.457600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188335, 29.006989, 49.397392>,  <37.368717, 29.161121, 49.361267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188335, 29.006989, 49.397392>,  <36.887695, 28.750101, 49.457600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188335, 29.006989, 49.397392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057482, -0.163549, -0.984859,
		-0.657112, 0.748870, -0.086007,
		0.751598, 0.642219, -0.150517,
		37.413815, 29.199654, 49.352238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626305, 29.171698, 48.956146>,  <36.887695, 28.750101, 49.457600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626305, 29.171698, 48.956146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023338, 29.217913, 48.941017>,  <37.261559, 29.245642, 48.931942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023338, 29.217913, 48.941017>,  <36.626305, 29.171698, 48.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023338, 29.217913, 48.941017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050717, 0.110816, -0.992546,
		-0.110488, 0.987102, 0.115854,
		0.992583, 0.115540, -0.037819,
		37.321114, 29.252575, 48.929672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839432, 29.901394, 48.670067>,  <36.626305, 29.171698, 48.956146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839432, 29.901394, 48.670067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134029, 29.637201, 48.611626>,  <37.310787, 29.478685, 48.576561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134029, 29.637201, 48.611626>,  <36.839432, 29.901394, 48.670067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134029, 29.637201, 48.611626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009204, 0.206184, -0.978470,
		0.676385, 0.721979, 0.145774,
		0.736490, -0.660481, -0.146105,
		37.354977, 29.439056, 48.567795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283489, 30.273088, 48.293861>,  <36.839432, 29.901394, 48.670067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283489, 30.273088, 48.293861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409725, 29.901714, 48.215469>,  <37.485466, 29.678890, 48.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409725, 29.901714, 48.215469>,  <37.283489, 30.273088, 48.293861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409725, 29.901714, 48.215469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093048, 0.235816, -0.967333,
		0.944323, 0.287044, 0.160810,
		0.315589, -0.928438, -0.195977,
		37.504402, 29.623182, 48.156677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913658, 30.326263, 47.938244>,  <37.283489, 30.273088, 48.293861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913658, 30.326263, 47.938244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751842, 29.968950, 47.859863>,  <37.654755, 29.754562, 47.812836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751842, 29.968950, 47.859863>,  <37.913658, 30.326263, 47.938244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751842, 29.968950, 47.859863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280549, 0.082715, -0.956269,
		0.870425, -0.441822, 0.217147,
		-0.404540, -0.893281, -0.195950,
		37.630482, 29.700966, 47.801079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396675, 30.019213, 47.470078>,  <37.913658, 30.326263, 47.938244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396675, 30.019213, 47.470078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052341, 29.821783, 47.420525>,  <37.845741, 29.703325, 47.390793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052341, 29.821783, 47.420525>,  <38.396675, 30.019213, 47.470078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052341, 29.821783, 47.420525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169443, -0.048457, -0.984348,
		0.479844, -0.868354, 0.125346,
		-0.860836, -0.493572, -0.123884,
		37.794090, 29.673712, 47.383358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493191, 29.713032, 46.932430>,  <38.396675, 30.019213, 47.470078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493191, 29.713032, 46.932430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101044, 29.634756, 46.942028>,  <37.865753, 29.587791, 46.947784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101044, 29.634756, 46.942028>,  <38.493191, 29.713032, 46.932430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101044, 29.634756, 46.942028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043116, 0.094066, -0.994632,
		0.192383, -0.976144, -0.100658,
		-0.980372, -0.195691, 0.023991,
		37.806931, 29.576050, 46.949226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315826, 29.053749, 46.520721>,  <38.493191, 29.713032, 46.932430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315826, 29.053749, 46.520721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990654, 29.286459, 46.531185>,  <37.795551, 29.426085, 46.537464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990654, 29.286459, 46.531185>,  <38.315826, 29.053749, 46.520721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990654, 29.286459, 46.531185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026714, 0.082123, -0.996264,
		-0.581751, -0.809192, -0.082302,
		-0.812928, 0.581776, 0.026158,
		37.746777, 29.460991, 46.539032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801121, 28.812353, 45.971729>,  <38.315826, 29.053749, 46.520721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801121, 28.812353, 45.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658089, 29.178579, 46.045353>,  <37.572269, 29.398315, 46.089527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658089, 29.178579, 46.045353>,  <37.801121, 28.812353, 45.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658089, 29.178579, 46.045353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376046, 0.039242, -0.925770,
		-0.854825, -0.400251, 0.330262,
		-0.357580, 0.915565, 0.184058,
		37.550816, 29.453249, 46.100571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189491, 28.863890, 45.632374>,  <37.801121, 28.812353, 45.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189491, 28.863890, 45.632374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268147, 29.247776, 45.712650>,  <37.315338, 29.478107, 45.760815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268147, 29.247776, 45.712650>,  <37.189491, 28.863890, 45.632374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268147, 29.247776, 45.712650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437512, 0.269063, -0.858014,
		-0.877449, 0.080916, 0.472796,
		0.196639, 0.959718, 0.200687,
		37.327137, 29.535692, 45.772858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618065, 29.231382, 45.319286>,  <37.189491, 28.863890, 45.632374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618065, 29.231382, 45.319286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933956, 29.472494, 45.364872>,  <37.123489, 29.617161, 45.392223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933956, 29.472494, 45.364872>,  <36.618065, 29.231382, 45.319286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933956, 29.472494, 45.364872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188881, 0.415671, -0.889686,
		-0.583658, 0.681082, 0.442120,
		0.789726, 0.602780, 0.113966,
		37.170876, 29.653328, 45.399063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402134, 29.894175, 44.998409>,  <36.618065, 29.231382, 45.319286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402134, 29.894175, 44.998409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800598, 29.887922, 45.032879>,  <37.039677, 29.884171, 45.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800598, 29.887922, 45.032879>,  <36.402134, 29.894175, 44.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800598, 29.887922, 45.032879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085718, 0.375967, -0.922660,
		-0.017980, 0.926501, 0.375862,
		0.996157, -0.015629, 0.086178,
		37.099445, 29.883234, 45.058731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692490, 30.560999, 44.687946>,  <36.402134, 29.894175, 44.998409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692490, 30.560999, 44.687946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968845, 30.273170, 44.659992>,  <37.134659, 30.100473, 44.643219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968845, 30.273170, 44.659992>,  <36.692490, 30.560999, 44.687946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968845, 30.273170, 44.659992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152909, 0.239920, -0.958675,
		0.706600, 0.651657, 0.275788,
		0.690894, -0.719570, -0.069884,
		37.176113, 30.057299, 44.639027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209881, 30.954145, 44.522331>,  <36.692490, 30.560999, 44.687946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209881, 30.954145, 44.522331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258293, 30.572495, 44.412788>,  <37.287338, 30.343504, 44.347061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258293, 30.572495, 44.412788>,  <37.209881, 30.954145, 44.522331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258293, 30.572495, 44.412788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029282, 0.272333, -0.961757,
		0.992217, 0.124420, 0.005021,
		0.121029, -0.954125, -0.273857,
		37.294601, 30.286257, 44.330631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406738, 31.041954, 43.909698>,  <37.209881, 30.954145, 44.522331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406738, 31.041954, 43.909698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343342, 30.647928, 43.882782>,  <37.305305, 30.411512, 43.866634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343342, 30.647928, 43.882782>,  <37.406738, 31.041954, 43.909698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343342, 30.647928, 43.882782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185649, 0.096666, -0.977850,
		0.969750, -0.142487, -0.198197,
		-0.158489, -0.985065, -0.067289,
		37.295795, 30.352409, 43.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883102, 30.773554, 43.387115>,  <37.406738, 31.041954, 43.909698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883102, 30.773554, 43.387115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564823, 30.533449, 43.419491>,  <37.373856, 30.389387, 43.438915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564823, 30.533449, 43.419491>,  <37.883102, 30.773554, 43.387115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564823, 30.533449, 43.419491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125010, 0.031995, -0.991640,
		0.592653, -0.799164, -0.100497,
		-0.795698, -0.600262, 0.080941,
		37.326115, 30.353371, 43.443771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850170, 30.280352, 42.767220>,  <37.883102, 30.773554, 43.387115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850170, 30.280352, 42.767220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479927, 30.293823, 42.918007>,  <37.257782, 30.301907, 43.008480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479927, 30.293823, 42.918007>,  <37.850170, 30.280352, 42.767220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479927, 30.293823, 42.918007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371931, 0.103457, -0.922477,
		-0.070070, -0.994063, -0.083234,
		-0.925612, 0.033681, 0.376972,
		37.202244, 30.303926, 43.031097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413921, 29.791702, 42.296009>,  <37.850170, 30.280352, 42.767220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413921, 29.791702, 42.296009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166370, 30.037064, 42.492264>,  <37.017841, 30.184280, 42.610016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166370, 30.037064, 42.492264>,  <37.413921, 29.791702, 42.296009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166370, 30.037064, 42.492264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601423, 0.031742, -0.798300,
		-0.505252, -0.789133, 0.349269,
		-0.618879, 0.613401, 0.490641,
		36.980705, 30.221085, 42.639458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806377, 29.438961, 42.183975>,  <37.413921, 29.791702, 42.296009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806377, 29.438961, 42.183975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741867, 29.824678, 42.268005>,  <36.703159, 30.056108, 42.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741867, 29.824678, 42.268005>,  <36.806377, 29.438961, 42.183975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741867, 29.824678, 42.268005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346991, 0.143869, -0.926768,
		-0.923898, -0.222358, 0.311398,
		-0.161274, 0.964292, 0.210076,
		36.693485, 30.113966, 42.331028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345142, 29.610964, 41.703621>,  <36.806377, 29.438961, 42.183975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345142, 29.610964, 41.703621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439522, 29.976948, 41.834572>,  <36.496151, 30.196539, 41.913143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439522, 29.976948, 41.834572>,  <36.345142, 29.610964, 41.703621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439522, 29.976948, 41.834572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429261, 0.400375, -0.809589,
		-0.871817, 0.050488, 0.487224,
		0.235947, 0.914960, 0.327381,
		36.510307, 30.251436, 41.932785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734097, 30.148981, 41.640141>,  <36.345142, 29.610964, 41.703621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734097, 30.148981, 41.640141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083923, 30.342773, 41.648251>,  <36.293819, 30.459049, 41.653118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083923, 30.342773, 41.648251>,  <35.734097, 30.148981, 41.640141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083923, 30.342773, 41.648251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278060, 0.535326, -0.797564,
		-0.397258, 0.691886, 0.602893,
		0.874568, 0.484479, 0.020277,
		36.346294, 30.488117, 41.654335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587597, 30.755529, 41.363831>,  <35.734097, 30.148981, 41.640141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587597, 30.755529, 41.363831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984901, 30.798056, 41.345337>,  <36.223282, 30.823572, 41.334240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984901, 30.798056, 41.345337>,  <35.587597, 30.755529, 41.363831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984901, 30.798056, 41.345337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104908, 0.654488, -0.748759,
		-0.049347, 0.748560, 0.661228,
		0.993257, 0.106317, -0.046233,
		36.282879, 30.829950, 41.331467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610950, 31.441872, 41.320496>,  <35.587597, 30.755529, 41.363831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610950, 31.441872, 41.320496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950771, 31.279636, 41.185585>,  <36.154663, 31.182295, 41.104637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950771, 31.279636, 41.185585>,  <35.610950, 31.441872, 41.320496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950771, 31.279636, 41.185585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063948, 0.555484, -0.829065,
		0.523612, 0.725903, 0.445976,
		0.849553, -0.405589, -0.337278,
		36.205639, 31.157959, 41.084400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917961, 31.951967, 40.998848>,  <35.610950, 31.441872, 41.320496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917961, 31.951967, 40.998848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118912, 31.636908, 40.856174>,  <36.239483, 31.447872, 40.770569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118912, 31.636908, 40.856174>,  <35.917961, 31.951967, 40.998848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118912, 31.636908, 40.856174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019012, 0.402359, -0.915284,
		0.864441, 0.466597, 0.187160,
		0.502375, -0.787651, -0.356687,
		36.269623, 31.400612, 40.749168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540890, 32.218922, 40.662743>,  <35.917961, 31.951967, 40.998848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540890, 32.218922, 40.662743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445229, 31.872269, 40.487579>,  <36.387833, 31.664278, 40.382481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445229, 31.872269, 40.487579>,  <36.540890, 32.218922, 40.662743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445229, 31.872269, 40.487579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217862, 0.391603, -0.893971,
		0.946226, -0.309197, 0.095153,
		-0.239151, -0.866628, -0.437907,
		36.373482, 31.612280, 40.356209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952625, 32.147392, 40.112244>,  <36.540890, 32.218922, 40.662743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952625, 32.147392, 40.112244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688152, 31.861582, 40.020771>,  <36.529469, 31.690096, 39.965889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688152, 31.861582, 40.020771>,  <36.952625, 32.147392, 40.112244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688152, 31.861582, 40.020771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002496, 0.306910, -0.951735,
		0.750225, -0.628696, -0.204706,
		-0.661178, -0.714526, -0.228683,
		36.489799, 31.647224, 39.952168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251545, 31.675970, 39.620941>,  <36.952625, 32.147392, 40.112244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251545, 31.675970, 39.620941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853275, 31.695368, 39.589226>,  <36.614315, 31.707006, 39.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853275, 31.695368, 39.589226>,  <37.251545, 31.675970, 39.620941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853275, 31.695368, 39.589226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086608, 0.174502, -0.980840,
		-0.033730, -0.983462, -0.177947,
		-0.995671, 0.048495, -0.079290,
		36.554573, 31.709915, 39.565437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107002, 31.429789, 38.976055>,  <37.251545, 31.675970, 39.620941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107002, 31.429789, 38.976055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744904, 31.588715, 39.036274>,  <36.527645, 31.684071, 39.072407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744904, 31.588715, 39.036274>,  <37.107002, 31.429789, 38.976055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744904, 31.588715, 39.036274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012978, 0.328303, -0.944483,
		-0.424681, -0.856948, -0.292040,
		-0.905250, 0.397313, 0.150546,
		36.473328, 31.707909, 39.081436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631439, 31.106699, 38.491707>,  <37.107002, 31.429789, 38.976055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631439, 31.106699, 38.491707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453220, 31.442039, 38.617344>,  <36.346291, 31.643244, 38.692726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453220, 31.442039, 38.617344>,  <36.631439, 31.106699, 38.491707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453220, 31.442039, 38.617344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120354, 0.291564, -0.948950,
		-0.887132, -0.460603, -0.029006,
		-0.445546, 0.838353, 0.314091,
		36.319557, 31.693544, 38.711571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996937, 31.157419, 38.155003>,  <36.631439, 31.106699, 38.491707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996937, 31.157419, 38.155003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050591, 31.532301, 38.283787>,  <36.082783, 31.757229, 38.361057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050591, 31.532301, 38.283787>,  <35.996937, 31.157419, 38.155003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050591, 31.532301, 38.283787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253024, 0.346518, -0.903274,
		-0.958116, 0.039700, 0.283616,
		0.134138, 0.937203, 0.321959,
		36.090832, 31.813461, 38.380375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349186, 31.589899, 37.955761>,  <35.996937, 31.157419, 38.155003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349186, 31.589899, 37.955761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649666, 31.847672, 38.012905>,  <35.829952, 32.002335, 38.047192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649666, 31.847672, 38.012905>,  <35.349186, 31.589899, 37.955761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649666, 31.847672, 38.012905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169276, 0.397264, -0.901957,
		-0.638002, 0.653367, 0.407511,
		0.751199, 0.644432, 0.142856,
		35.875027, 32.041000, 38.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083115, 32.255741, 37.703587>,  <35.349186, 31.589899, 37.955761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083115, 32.255741, 37.703587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480721, 32.299309, 37.707047>,  <35.719284, 32.325451, 37.709122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480721, 32.299309, 37.707047>,  <35.083115, 32.255741, 37.703587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480721, 32.299309, 37.707047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052359, 0.544323, -0.837240,
		-0.095904, 0.831774, 0.546767,
		0.994013, 0.108923, 0.008652,
		35.778923, 32.331985, 37.709641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194019, 32.939915, 37.629295>,  <35.083115, 32.255741, 37.703587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194019, 32.939915, 37.629295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521046, 32.755043, 37.491898>,  <35.717262, 32.644119, 37.409458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521046, 32.755043, 37.491898>,  <35.194019, 32.939915, 37.629295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521046, 32.755043, 37.491898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080650, 0.498721, -0.863002,
		0.570164, 0.733261, 0.370461,
		0.817563, -0.462175, -0.343490,
		35.766315, 32.616390, 37.388851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591110, 33.458202, 37.293186>,  <35.194019, 32.939915, 37.629295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591110, 33.458202, 37.293186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720032, 33.107571, 37.150234>,  <35.797386, 32.897190, 37.064461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720032, 33.107571, 37.150234>,  <35.591110, 33.458202, 37.293186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720032, 33.107571, 37.150234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205156, 0.433237, -0.877620,
		0.924138, 0.209541, 0.319471,
		0.322304, -0.876583, -0.357382,
		35.816723, 32.844597, 37.043018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264709, 33.617741, 36.936462>,  <35.591110, 33.458202, 37.293186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264709, 33.617741, 36.936462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125603, 33.270542, 36.794674>,  <36.042137, 33.062225, 36.709602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125603, 33.270542, 36.794674>,  <36.264709, 33.617741, 36.936462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125603, 33.270542, 36.794674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225608, 0.289487, -0.930214,
		0.910033, -0.403467, 0.095152,
		-0.347766, -0.867993, -0.354468,
		36.021275, 33.010143, 36.688335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685379, 33.449715, 36.436668>,  <36.264709, 33.617741, 36.936462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685379, 33.449715, 36.436668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396019, 33.188488, 36.347057>,  <36.222401, 33.031750, 36.293293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396019, 33.188488, 36.347057>,  <36.685379, 33.449715, 36.436668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396019, 33.188488, 36.347057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197947, 0.114670, -0.973482,
		0.661441, -0.748565, 0.046321,
		-0.723403, -0.653070, -0.224024,
		36.178997, 32.992565, 36.279850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904083, 33.053268, 35.821091>,  <36.685379, 33.449715, 36.436668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904083, 33.053268, 35.821091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513252, 32.968147, 35.823540>,  <36.278755, 32.917076, 35.825008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513252, 32.968147, 35.823540>,  <36.904083, 33.053268, 35.821091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513252, 32.968147, 35.823540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005977, -0.001309, -0.999981,
		0.212807, -0.977094, 0.000007,
		-0.977076, -0.212803, 0.006119,
		36.220131, 32.904308, 35.825375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883137, 32.480186, 35.321594>,  <36.904083, 33.053268, 35.821091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883137, 32.480186, 35.321594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533573, 32.673817, 35.339245>,  <36.323833, 32.789993, 35.349834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533573, 32.673817, 35.339245>,  <36.883137, 32.480186, 35.321594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533573, 32.673817, 35.339245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054291, -0.006995, -0.998501,
		-0.483040, -0.874998, 0.032394,
		-0.873913, 0.484075, 0.044125,
		36.271400, 32.819038, 35.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113228, 31.930300, 35.609371>,  <36.883137, 32.480186, 35.321594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113228, 31.930300, 35.609371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445000, 31.921284, 35.386108>,  <37.644062, 31.915874, 35.252151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445000, 31.921284, 35.386108>,  <37.113228, 31.930300, 35.609371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445000, 31.921284, 35.386108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516732, -0.348609, 0.781959,
		-0.212202, -0.936997, -0.277500,
		0.829432, -0.022540, -0.558152,
		37.693829, 31.914522, 35.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531437, 31.259142, 35.785667>,  <37.113228, 31.930300, 35.609371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531437, 31.259142, 35.785667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794949, 31.503080, 35.609440>,  <37.953056, 31.649443, 35.503704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794949, 31.503080, 35.609440>,  <37.531437, 31.259142, 35.785667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794949, 31.503080, 35.609440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666734, -0.201947, 0.717415,
		0.348542, -0.766358, -0.539643,
		0.658776, 0.609847, -0.440570,
		37.992580, 31.686035, 35.477268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069569, 30.899576, 35.622246>,  <37.531437, 31.259142, 35.785667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069569, 30.899576, 35.622246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222374, 31.268772, 35.640797>,  <38.314056, 31.490290, 35.651928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222374, 31.268772, 35.640797>,  <38.069569, 30.899576, 35.622246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222374, 31.268772, 35.640797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660260, -0.307698, 0.685112,
		0.646623, -0.231101, -0.726960,
		0.382014, 0.922992, 0.046378,
		38.336979, 31.545670, 35.654709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796021, 30.788326, 35.622669>,  <38.069569, 30.899576, 35.622246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796021, 30.788326, 35.622669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708176, 31.143293, 35.784786>,  <38.655468, 31.356274, 35.882057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708176, 31.143293, 35.784786>,  <38.796021, 30.788326, 35.622669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708176, 31.143293, 35.784786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555103, -0.227961, 0.799934,
		0.802266, 0.400652, -0.442546,
		-0.219612, 0.887418, 0.405289,
		38.642292, 31.409519, 35.906372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417835, 30.986006, 35.877922>,  <38.796021, 30.788326, 35.622669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417835, 30.986006, 35.877922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145741, 31.207497, 36.070034>,  <38.982483, 31.340391, 36.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145741, 31.207497, 36.070034>,  <39.417835, 30.986006, 35.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145741, 31.207497, 36.070034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485127, -0.151085, 0.861293,
		0.549485, 0.818876, -0.165855,
		-0.680234, 0.553728, 0.480278,
		38.941669, 31.373615, 36.214119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843971, 31.420181, 36.342148>,  <39.417835, 30.986006, 35.877922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843971, 31.420181, 36.342148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472469, 31.392904, 36.487896>,  <39.249569, 31.376537, 36.575344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472469, 31.392904, 36.487896>,  <39.843971, 31.420181, 36.342148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472469, 31.392904, 36.487896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369505, -0.249122, 0.895212,
		0.029725, 0.966068, 0.256571,
		-0.928753, -0.068194, 0.364372,
		39.193844, 31.372446, 36.597206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939941, 31.657330, 37.000164>,  <39.843971, 31.420181, 36.342148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939941, 31.657330, 37.000164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605934, 31.437241, 37.001106>,  <39.405529, 31.305187, 37.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605934, 31.437241, 37.001106>,  <39.939941, 31.657330, 37.000164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605934, 31.437241, 37.001106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219360, -0.328972, 0.918509,
		-0.504608, 0.767486, 0.395393,
		-0.835016, -0.550221, 0.002354,
		39.355431, 31.272175, 37.001812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498260, 31.893143, 37.517506>,  <39.939941, 31.657330, 37.000164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498260, 31.893143, 37.517506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418980, 31.506504, 37.452507>,  <39.371410, 31.274521, 37.413509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418980, 31.506504, 37.452507>,  <39.498260, 31.893143, 37.517506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418980, 31.506504, 37.452507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302299, -0.217987, 0.927953,
		-0.932379, 0.134802, 0.335407,
		-0.198205, -0.966597, -0.162496,
		39.359520, 31.216524, 37.403759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132919, 31.760393, 38.136097>,  <39.498260, 31.893143, 37.517506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132919, 31.760393, 38.136097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205746, 31.393242, 37.995045>,  <39.249443, 31.172951, 37.910412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205746, 31.393242, 37.995045>,  <39.132919, 31.760393, 38.136097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205746, 31.393242, 37.995045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152263, -0.327981, 0.932333,
		-0.971426, -0.223437, 0.080046,
		0.182064, -0.917880, -0.352631,
		39.260365, 31.117878, 37.889256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778366, 31.339760, 38.510765>,  <39.132919, 31.760393, 38.136097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778366, 31.339760, 38.510765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039387, 31.074228, 38.364613>,  <39.195999, 30.914909, 38.276920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039387, 31.074228, 38.364613>,  <38.778366, 31.339760, 38.510765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039387, 31.074228, 38.364613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073191, -0.424727, 0.902358,
		-0.754199, -0.615581, -0.228571,
		0.652554, -0.663828, -0.365384,
		39.235153, 30.875080, 38.254997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612251, 30.591482, 38.702805>,  <38.778366, 31.339760, 38.510765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612251, 30.591482, 38.702805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996304, 30.562916, 38.594696>,  <39.226734, 30.545776, 38.529831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996304, 30.562916, 38.594696>,  <38.612251, 30.591482, 38.702805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996304, 30.562916, 38.594696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196684, -0.514447, 0.834662,
		-0.198644, -0.854544, -0.479892,
		0.960133, -0.071413, -0.270267,
		39.284344, 30.541492, 38.513615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735615, 29.969315, 38.842133>,  <38.612251, 30.591482, 38.702805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735615, 29.969315, 38.842133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097343, 30.138332, 38.817970>,  <39.314381, 30.239744, 38.803474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097343, 30.138332, 38.817970>,  <38.735615, 29.969315, 38.842133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097343, 30.138332, 38.817970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258035, -0.428451, 0.865938,
		0.340018, -0.798677, -0.496491,
		0.904326, 0.422547, -0.060405,
		39.368641, 30.265097, 38.799850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227844, 29.441664, 38.875149>,  <38.735615, 29.969315, 38.842133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227844, 29.441664, 38.875149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442848, 29.762739, 38.978516>,  <39.571850, 29.955383, 39.040535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442848, 29.762739, 38.978516>,  <39.227844, 29.441664, 38.875149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442848, 29.762739, 38.978516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307529, -0.471937, 0.826257,
		0.785183, -0.364649, -0.500519,
		0.537508, 0.802687, 0.258417,
		39.604099, 30.003546, 39.056042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841976, 29.218962, 39.012718>,  <39.227844, 29.441664, 38.875149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841976, 29.218962, 39.012718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829086, 29.567169, 39.209148>,  <39.821354, 29.776094, 39.327007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829086, 29.567169, 39.209148>,  <39.841976, 29.218962, 39.012718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829086, 29.567169, 39.209148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273652, -0.464874, 0.842025,
		0.961289, 0.161520, -0.223238,
		-0.032226, 0.870519, 0.491079,
		39.819420, 29.828325, 39.356472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539551, 29.305983, 39.488972>,  <39.841976, 29.218962, 39.012718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539551, 29.305983, 39.488972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250416, 29.549154, 39.620384>,  <40.076935, 29.695057, 39.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250416, 29.549154, 39.620384>,  <40.539551, 29.305983, 39.488972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250416, 29.549154, 39.620384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160257, -0.314996, 0.935465,
		0.672182, 0.728836, 0.130265,
		-0.722834, 0.607927, 0.328535,
		40.033566, 29.731533, 39.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868675, 29.699270, 40.050125>,  <40.539551, 29.305983, 39.488972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868675, 29.699270, 40.050125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474243, 29.730516, 40.108833>,  <40.237583, 29.749264, 40.144058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474243, 29.730516, 40.108833>,  <40.868675, 29.699270, 40.050125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474243, 29.730516, 40.108833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119815, -0.278146, 0.953037,
		0.115268, 0.957357, 0.264916,
		-0.986082, 0.078114, 0.146767,
		40.178417, 29.753950, 40.152863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828148, 30.241049, 40.605839>,  <40.868675, 29.699270, 40.050125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828148, 30.241049, 40.605839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502342, 30.008993, 40.606873>,  <40.306858, 29.869761, 40.607491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502342, 30.008993, 40.606873>,  <40.828148, 30.241049, 40.605839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502342, 30.008993, 40.606873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040818, -0.052867, 0.997767,
		-0.578705, 0.812801, 0.066741,
		-0.814515, -0.580137, 0.002582,
		40.257988, 29.834951, 40.607647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346447, 30.593660, 41.112762>,  <40.828148, 30.241049, 40.605839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346447, 30.593660, 41.112762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208050, 30.221586, 41.063709>,  <40.125011, 29.998341, 41.034279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208050, 30.221586, 41.063709>,  <40.346447, 30.593660, 41.112762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208050, 30.221586, 41.063709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215571, -0.048390, 0.975288,
		-0.913135, 0.363882, -0.183779,
		-0.345997, -0.930187, -0.122629,
		40.104252, 29.942530, 41.026920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663364, 30.508575, 41.538105>,  <40.346447, 30.593660, 41.112762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663364, 30.508575, 41.538105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787880, 30.130020, 41.503590>,  <39.862591, 29.902887, 41.482880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787880, 30.130020, 41.503590>,  <39.663364, 30.508575, 41.538105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787880, 30.130020, 41.503590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259155, -0.171898, 0.950415,
		-0.914296, -0.273493, -0.298772,
		0.311290, -0.946389, -0.086288,
		39.881268, 29.846104, 41.477703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163174, 30.110857, 41.963745>,  <39.663364, 30.508575, 41.538105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163174, 30.110857, 41.963745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467899, 29.857573, 41.909073>,  <39.650734, 29.705603, 41.876270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467899, 29.857573, 41.909073>,  <39.163174, 30.110857, 41.963745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467899, 29.857573, 41.909073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162030, -0.390550, 0.906210,
		-0.627204, -0.668217, -0.400126,
		0.761815, -0.633211, -0.136684,
		39.696445, 29.667610, 41.868069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968708, 29.547009, 42.234131>,  <39.163174, 30.110857, 41.963745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968708, 29.547009, 42.234131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360367, 29.465891, 42.229183>,  <39.595360, 29.417221, 42.226215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360367, 29.465891, 42.229183>,  <38.968708, 29.547009, 42.234131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360367, 29.465891, 42.229183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045840, -0.279821, 0.958957,
		-0.197929, -0.938390, -0.283281,
		0.979144, -0.202791, -0.012368,
		39.654110, 29.405052, 42.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068481, 28.875504, 42.498993>,  <38.968708, 29.547009, 42.234131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068481, 28.875504, 42.498993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408638, 29.074747, 42.566784>,  <39.612732, 29.194292, 42.607456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408638, 29.074747, 42.566784>,  <39.068481, 28.875504, 42.498993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408638, 29.074747, 42.566784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060212, -0.227855, 0.971832,
		0.522692, -0.836643, -0.163774,
		0.850393, 0.498107, 0.169474,
		39.663757, 29.224178, 42.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452808, 28.513540, 42.983437>,  <39.068481, 28.875504, 42.498993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452808, 28.513540, 42.983437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567966, 28.896408, 42.995743>,  <39.637062, 29.126129, 43.003124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567966, 28.896408, 42.995743>,  <39.452808, 28.513540, 42.983437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567966, 28.896408, 42.995743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013938, -0.027931, 0.999513,
		0.957561, -0.288183, 0.005300,
		0.287895, 0.957168, 0.030763,
		39.654335, 29.183558, 43.004971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963955, 28.470903, 43.499962>,  <39.452808, 28.513540, 42.983437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963955, 28.470903, 43.499962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854267, 28.854486, 43.471107>,  <39.788456, 29.084637, 43.453796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854267, 28.854486, 43.471107>,  <39.963955, 28.470903, 43.499962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854267, 28.854486, 43.471107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015215, 0.079327, 0.996733,
		0.961546, 0.272227, -0.036344,
		-0.274221, 0.958957, -0.072134,
		39.771999, 29.142174, 43.449467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359570, 28.839306, 43.964794>,  <39.963955, 28.470903, 43.499962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359570, 28.839306, 43.964794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067707, 29.101612, 43.887260>,  <39.892590, 29.258995, 43.840740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067707, 29.101612, 43.887260>,  <40.359570, 28.839306, 43.964794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067707, 29.101612, 43.887260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010261, 0.293932, 0.955771,
		0.683736, 0.695396, -0.221198,
		-0.729657, 0.655765, -0.193837,
		39.848808, 29.298342, 43.829109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615376, 29.478848, 44.256168>,  <40.359570, 28.839306, 43.964794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615376, 29.478848, 44.256168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217133, 29.506847, 44.231274>,  <39.978188, 29.523647, 44.216339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217133, 29.506847, 44.231274>,  <40.615376, 29.478848, 44.256168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217133, 29.506847, 44.231274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029637, 0.394857, 0.918264,
		0.088853, 0.916072, -0.391047,
		-0.995604, 0.070001, -0.062234,
		39.918453, 29.527847, 44.212605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516087, 30.124170, 44.508991>,  <40.615376, 29.478848, 44.256168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516087, 30.124170, 44.508991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180038, 29.910406, 44.546078>,  <39.978409, 29.782148, 44.568329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180038, 29.910406, 44.546078>,  <40.516087, 30.124170, 44.508991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180038, 29.910406, 44.546078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000405, 0.170315, 0.985390,
		-0.542393, 0.827888, -0.142869,
		-0.840125, -0.534410, 0.092713,
		39.928001, 29.750084, 44.573891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154606, 30.548183, 44.873970>,  <40.516087, 30.124170, 44.508991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154606, 30.548183, 44.873970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975929, 30.195152, 44.932659>,  <39.868725, 29.983334, 44.967873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975929, 30.195152, 44.932659>,  <40.154606, 30.548183, 44.873970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975929, 30.195152, 44.932659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042211, 0.184599, 0.981907,
		-0.893692, 0.432415, -0.119714,
		-0.446691, -0.882576, 0.146722,
		39.841923, 29.930380, 44.976677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599087, 30.683535, 45.393372>,  <40.154606, 30.548183, 44.873970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599087, 30.683535, 45.393372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636856, 30.285416, 45.401993>,  <39.659519, 30.046543, 45.407166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636856, 30.285416, 45.401993>,  <39.599087, 30.683535, 45.393372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636856, 30.285416, 45.401993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081325, 0.013861, 0.996591,
		-0.992205, -0.095853, -0.079634,
		0.094422, -0.995299, 0.021548,
		39.665184, 29.986826, 45.408459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139496, 30.425581, 45.926262>,  <39.599087, 30.683535, 45.393372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139496, 30.425581, 45.926262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434162, 30.160030, 45.874744>,  <39.610962, 30.000700, 45.843834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434162, 30.160030, 45.874744>,  <39.139496, 30.425581, 45.926262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434162, 30.160030, 45.874744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165584, -0.007574, 0.986167,
		-0.655667, -0.747805, 0.104347,
		0.736670, -0.663875, -0.128791,
		39.655163, 29.960867, 45.836109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105236, 30.115396, 46.477585>,  <39.139496, 30.425581, 45.926262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105236, 30.115396, 46.477585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459877, 29.988195, 46.343231>,  <39.672661, 29.911875, 46.262619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459877, 29.988195, 46.343231>,  <39.105236, 30.115396, 46.477585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459877, 29.988195, 46.343231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299038, -0.159906, 0.940748,
		-0.352873, -0.934507, -0.046677,
		0.886598, -0.318006, -0.335880,
		39.725857, 29.892794, 46.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264549, 29.512117, 46.907875>,  <39.105236, 30.115396, 46.477585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264549, 29.512117, 46.907875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613541, 29.658184, 46.777992>,  <39.822937, 29.745825, 46.700062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613541, 29.658184, 46.777992>,  <39.264549, 29.512117, 46.907875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613541, 29.658184, 46.777992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421042, -0.224556, 0.878805,
		0.247996, -0.903453, -0.349671,
		0.872480, 0.365167, -0.324703,
		39.875286, 29.767735, 46.680580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769676, 29.012077, 46.954403>,  <39.264549, 29.512117, 46.907875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769676, 29.012077, 46.954403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946354, 29.370199, 46.977520>,  <40.052361, 29.585072, 46.991390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946354, 29.370199, 46.977520>,  <39.769676, 29.012077, 46.954403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946354, 29.370199, 46.977520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346892, -0.229835, 0.909308,
		0.827390, -0.381585, -0.412090,
		0.441691, 0.895304, 0.057794,
		40.078861, 29.638790, 46.994858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300621, 28.840740, 47.440212>,  <39.769676, 29.012077, 46.954403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300621, 28.840740, 47.440212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325188, 29.238766, 47.409023>,  <40.339928, 29.477581, 47.390308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325188, 29.238766, 47.409023>,  <40.300621, 28.840740, 47.440212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325188, 29.238766, 47.409023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401556, 0.046889, 0.914633,
		0.913773, -0.087484, -0.396694,
		0.061415, 0.995062, -0.077976,
		40.343613, 29.537285, 47.385632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960819, 28.990561, 47.797955>,  <40.300621, 28.840740, 47.440212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960819, 28.990561, 47.797955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740463, 29.323792, 47.777931>,  <40.608250, 29.523729, 47.765919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740463, 29.323792, 47.777931>,  <40.960819, 28.990561, 47.797955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740463, 29.323792, 47.777931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232206, 0.210612, 0.949591,
		0.801624, 0.511496, -0.309469,
		-0.550889, 0.833076, -0.050059,
		40.575195, 29.573713, 47.762913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286987, 29.443172, 48.192165>,  <40.960819, 28.990561, 47.797955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286987, 29.443172, 48.192165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903297, 29.556126, 48.187466>,  <40.673084, 29.623898, 48.184647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903297, 29.556126, 48.187466>,  <41.286987, 29.443172, 48.192165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903297, 29.556126, 48.187466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003608, 0.053807, 0.998545,
		0.282606, 0.957791, -0.052632,
		-0.959229, 0.282385, -0.011751,
		40.615528, 29.640841, 48.183941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319485, 30.060225, 48.610523>,  <41.286987, 29.443172, 48.192165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319485, 30.060225, 48.610523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950825, 29.905033, 48.612953>,  <40.729630, 29.811918, 48.614410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950825, 29.905033, 48.612953>,  <41.319485, 30.060225, 48.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950825, 29.905033, 48.612953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023719, 0.071964, 0.997125,
		-0.387303, 0.918854, -0.075528,
		-0.921647, -0.387981, 0.006078,
		40.674332, 29.788639, 48.614777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892498, 30.535713, 49.032616>,  <41.319485, 30.060225, 48.610523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892498, 30.535713, 49.032616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669956, 30.203470, 49.023113>,  <40.536430, 30.004124, 49.017410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669956, 30.203470, 49.023113>,  <40.892498, 30.535713, 49.032616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669956, 30.203470, 49.023113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064953, 0.014971, 0.997776,
		-0.828404, 0.556658, -0.062280,
		-0.556353, -0.830607, -0.023755,
		40.503052, 29.954288, 49.015987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087082, 31.203388, 49.365955>,  <40.892498, 30.535713, 49.032616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087082, 31.203388, 49.365955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176620, 31.582666, 49.456131>,  <41.230343, 31.810232, 49.510235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176620, 31.582666, 49.456131>,  <41.087082, 31.203388, 49.365955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176620, 31.582666, 49.456131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233823, 0.276797, -0.932046,
		-0.946160, 0.155926, 0.283670,
		0.223849, 0.948193, 0.225435,
		41.243774, 31.867125, 49.523762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558189, 31.576286, 49.105827>,  <41.087082, 31.203388, 49.365955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558189, 31.576286, 49.105827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842636, 31.851437, 49.163979>,  <41.013306, 32.016525, 49.198872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842636, 31.851437, 49.163979>,  <40.558189, 31.576286, 49.105827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842636, 31.851437, 49.163979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195401, 0.392002, -0.898973,
		-0.675370, 0.610871, 0.413173,
		0.711121, 0.687874, 0.145382,
		41.055973, 32.057800, 49.207592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248356, 32.183121, 48.927868>,  <40.558189, 31.576286, 49.105827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248356, 32.183121, 48.927868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639824, 32.255016, 48.888062>,  <40.874702, 32.298153, 48.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639824, 32.255016, 48.888062>,  <40.248356, 32.183121, 48.927868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639824, 32.255016, 48.888062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169401, 0.431921, -0.885860,
		-0.116240, 0.883820, 0.453155,
		0.978668, 0.179738, -0.099513,
		40.933426, 32.308937, 48.858208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395309, 32.906879, 48.596371>,  <40.248356, 32.183121, 48.927868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395309, 32.906879, 48.596371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693356, 32.645012, 48.545444>,  <40.872185, 32.487892, 48.514889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693356, 32.645012, 48.545444>,  <40.395309, 32.906879, 48.596371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693356, 32.645012, 48.545444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023119, 0.216142, -0.976088,
		0.666533, 0.724357, 0.176186,
		0.745117, -0.654668, -0.127320,
		40.916889, 32.448612, 48.507248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855431, 33.316898, 48.065998>,  <40.395309, 32.906879, 48.596371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855431, 33.316898, 48.065998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954041, 32.930161, 48.039330>,  <41.013206, 32.698120, 48.023331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954041, 32.930161, 48.039330>,  <40.855431, 33.316898, 48.065998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954041, 32.930161, 48.039330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213279, 0.121230, -0.969441,
		0.945377, 0.224773, 0.236093,
		0.246526, -0.966841, -0.066669,
		41.028000, 32.640110, 48.019329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474834, 33.366074, 47.676430>,  <40.855431, 33.316898, 48.065998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474834, 33.366074, 47.676430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339363, 32.992458, 47.631065>,  <41.258080, 32.768288, 47.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339363, 32.992458, 47.631065>,  <41.474834, 33.366074, 47.676430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339363, 32.992458, 47.631065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228559, 0.035250, -0.972892,
		0.912720, -0.355419, 0.201545,
		-0.338679, -0.934042, -0.113408,
		41.237759, 32.712246, 47.597042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993050, 32.986607, 47.211239>,  <41.474834, 33.366074, 47.676430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993050, 32.986607, 47.211239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676666, 32.743443, 47.183437>,  <41.486835, 32.597542, 47.166756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676666, 32.743443, 47.183437>,  <41.993050, 32.986607, 47.211239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676666, 32.743443, 47.183437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100121, -0.016520, -0.994838,
		0.603629, -0.793831, 0.073931,
		-0.790954, -0.607915, -0.069507,
		41.439381, 32.561069, 47.162586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120129, 32.379642, 46.729218>,  <41.993050, 32.986607, 47.211239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120129, 32.379642, 46.729218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725994, 32.447201, 46.738987>,  <41.489513, 32.487736, 46.744850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725994, 32.447201, 46.738987>,  <42.120129, 32.379642, 46.729218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725994, 32.447201, 46.738987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052272, -0.162448, -0.985332,
		-0.162448, -0.972155, 0.168893,
		0.985332, -0.168893, -0.024427,
		41.430393, 32.497868, 46.746315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862762, 31.750360, 46.361656>,  <42.120129, 32.379642, 46.729218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862762, 31.750360, 46.361656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590820, 32.043568, 46.352825>,  <41.427654, 32.219490, 46.347527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590820, 32.043568, 46.352825>,  <41.862762, 31.750360, 46.361656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590820, 32.043568, 46.352825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305674, -0.310615, -0.900046,
		-0.666606, -0.605149, 0.435236,
		-0.679853, 0.733016, -0.022080,
		41.386864, 32.263474, 46.346203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293499, 31.501238, 45.962685>,  <41.862762, 31.750360, 46.361656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293499, 31.501238, 45.962685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231529, 31.896154, 45.948505>,  <41.194347, 32.133102, 45.939999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231529, 31.896154, 45.948505>,  <41.293499, 31.501238, 45.962685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231529, 31.896154, 45.948505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281327, -0.078484, -0.956397,
		-0.947024, -0.138194, 0.289910,
		-0.154922, 0.987291, -0.035449,
		41.185051, 32.192341, 45.937870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736893, 31.594755, 45.625294>,  <41.293499, 31.501238, 45.962685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736893, 31.594755, 45.625294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876362, 31.966171, 45.574326>,  <40.960045, 32.189022, 45.543747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876362, 31.966171, 45.574326>,  <40.736893, 31.594755, 45.625294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876362, 31.966171, 45.574326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331076, -0.005159, -0.943590,
		-0.876820, 0.371193, 0.305619,
		0.348677, 0.928541, -0.127416,
		40.980965, 32.244732, 45.536102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252026, 31.970757, 45.173882>,  <40.736893, 31.594755, 45.625294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252026, 31.970757, 45.173882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582825, 32.195518, 45.166466>,  <40.781303, 32.330376, 45.162018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582825, 32.195518, 45.166466>,  <40.252026, 31.970757, 45.173882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582825, 32.195518, 45.166466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077948, 0.081946, -0.993584,
		-0.556782, 0.823132, 0.111568,
		0.826993, 0.561906, -0.018535,
		40.830921, 32.364090, 45.160904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116978, 32.698360, 44.922993>,  <40.252026, 31.970757, 45.173882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116978, 32.698360, 44.922993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507160, 32.652523, 44.847786>,  <40.741272, 32.625019, 44.802662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507160, 32.652523, 44.847786>,  <40.116978, 32.698360, 44.922993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507160, 32.652523, 44.847786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152023, 0.267192, -0.951576,
		0.159280, 0.956806, 0.243213,
		0.975458, -0.114593, -0.188015,
		40.799797, 32.618145, 44.791382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316296, 33.308514, 44.461216>,  <40.116978, 32.698360, 44.922993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316296, 33.308514, 44.461216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586842, 33.017113, 44.417740>,  <40.749168, 32.842270, 44.391655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586842, 33.017113, 44.417740>,  <40.316296, 33.308514, 44.461216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586842, 33.017113, 44.417740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022013, 0.167487, -0.985629,
		0.736240, 0.664250, 0.129319,
		0.676363, -0.728505, -0.108689,
		40.789749, 32.798561, 44.385132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789730, 33.643143, 43.964886>,  <40.316296, 33.308514, 44.461216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789730, 33.643143, 43.964886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882301, 33.254475, 43.945747>,  <40.937843, 33.021271, 43.934265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882301, 33.254475, 43.945747>,  <40.789730, 33.643143, 43.964886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882301, 33.254475, 43.945747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007787, 0.051025, -0.998667,
		0.972821, 0.230747, 0.019375,
		0.231428, -0.971675, -0.047842,
		40.951729, 32.962971, 43.931396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228916, 33.524479, 43.386246>,  <40.789730, 33.643143, 43.964886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228916, 33.524479, 43.386246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083870, 33.156174, 43.443817>,  <40.996841, 32.935192, 43.478359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083870, 33.156174, 43.443817>,  <41.228916, 33.524479, 43.386246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083870, 33.156174, 43.443817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065015, -0.179054, -0.981689,
		0.929669, -0.346617, 0.124791,
		-0.362614, -0.920759, 0.143925,
		40.975086, 32.879948, 43.486996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668411, 33.182877, 43.065395>,  <41.228916, 33.524479, 43.386246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668411, 33.182877, 43.065395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362778, 32.926403, 43.093838>,  <41.179398, 32.772518, 43.110905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362778, 32.926403, 43.093838>,  <41.668411, 33.182877, 43.065395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362778, 32.926403, 43.093838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125891, -0.256303, -0.958363,
		0.632715, -0.723318, 0.276556,
		-0.764083, -0.641187, 0.071107,
		41.133553, 32.734047, 43.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949364, 32.660500, 42.681606>,  <41.668411, 33.182877, 43.065395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949364, 32.660500, 42.681606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555439, 32.604851, 42.723145>,  <41.319084, 32.571461, 42.748066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555439, 32.604851, 42.723145>,  <41.949364, 32.660500, 42.681606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555439, 32.604851, 42.723145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040452, -0.397793, -0.916583,
		0.168826, -0.906866, 0.386125,
		-0.984815, -0.139123, 0.103843,
		41.259995, 32.563114, 42.754299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751480, 32.054375, 42.347229>,  <41.949364, 32.660500, 42.681606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751480, 32.054375, 42.347229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391823, 32.227558, 42.372780>,  <41.176029, 32.331467, 42.388111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391823, 32.227558, 42.372780>,  <41.751480, 32.054375, 42.347229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391823, 32.227558, 42.372780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216713, -0.313673, -0.924470,
		-0.380224, -0.845077, 0.375867,
		-0.899147, 0.432961, 0.063873,
		41.122078, 32.357445, 42.391941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238132, 31.560791, 42.087677>,  <41.751480, 32.054375, 42.347229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238132, 31.560791, 42.087677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073154, 31.921364, 42.035057>,  <40.974167, 32.137707, 42.003487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073154, 31.921364, 42.035057>,  <41.238132, 31.560791, 42.087677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073154, 31.921364, 42.035057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240769, -0.247135, -0.938592,
		-0.878588, -0.355447, 0.318968,
		-0.412448, 0.901433, -0.131549,
		40.949421, 32.191795, 41.995594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697754, 31.456047, 41.666901>,  <41.238132, 31.560791, 42.087677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697754, 31.456047, 41.666901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804512, 31.839506, 41.627388>,  <40.868568, 32.069580, 41.603680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804512, 31.839506, 41.627388>,  <40.697754, 31.456047, 41.666901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804512, 31.839506, 41.627388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058856, -0.086096, -0.994547,
		-0.961926, 0.271257, 0.033444,
		0.266898, 0.958649, -0.098783,
		40.884583, 32.127102, 41.597752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241611, 31.770382, 41.166550>,  <40.697754, 31.456047, 41.666901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241611, 31.770382, 41.166550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554306, 32.019665, 41.175537>,  <40.741920, 32.169235, 41.180931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554306, 32.019665, 41.175537>,  <40.241611, 31.770382, 41.166550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554306, 32.019665, 41.175537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030882, 0.074678, -0.996729,
		-0.622848, 0.778483, 0.077624,
		0.781733, 0.623208, 0.022472,
		40.788826, 32.206627, 41.182278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923264, 32.339619, 40.774277>,  <40.241611, 31.770382, 41.166550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923264, 32.339619, 40.774277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320992, 32.381596, 40.767082>,  <40.559628, 32.406780, 40.762764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320992, 32.381596, 40.767082>,  <39.923264, 32.339619, 40.774277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320992, 32.381596, 40.767082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030885, 0.122588, -0.991977,
		-0.101897, 0.986894, 0.125132,
		0.994316, 0.104944, -0.017989,
		40.619286, 32.413078, 40.761684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103775, 32.938484, 40.382774>,  <39.923264, 32.339619, 40.774277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103775, 32.938484, 40.382774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446682, 32.733120, 40.367283>,  <40.652428, 32.609901, 40.357986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446682, 32.733120, 40.367283>,  <40.103775, 32.938484, 40.382774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446682, 32.733120, 40.367283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076717, 0.201759, -0.976426,
		0.509124, 0.834086, 0.212349,
		0.857267, -0.513413, -0.038732,
		40.703861, 32.579098, 40.355663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514957, 33.323208, 39.965313>,  <40.103775, 32.938484, 40.382774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514957, 33.323208, 39.965313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708965, 32.973450, 39.970737>,  <40.825371, 32.763596, 39.973991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708965, 32.973450, 39.970737>,  <40.514957, 33.323208, 39.965313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708965, 32.973450, 39.970737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298178, 0.150778, -0.942526,
		0.822098, 0.461189, 0.333857,
		0.485021, -0.874397, 0.013562,
		40.854473, 32.711132, 39.974808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259212, 33.420902, 39.769482>,  <40.514957, 33.323208, 39.965313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259212, 33.420902, 39.769482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150547, 33.042751, 39.697407>,  <41.085346, 32.815861, 39.654163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150547, 33.042751, 39.697407>,  <41.259212, 33.420902, 39.769482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150547, 33.042751, 39.697407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210494, 0.124322, -0.969658,
		0.939090, -0.301351, 0.165222,
		-0.271667, -0.945374, -0.180183,
		41.069046, 32.759140, 39.643353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763783, 33.275333, 39.344635>,  <41.259212, 33.420902, 39.769482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763783, 33.275333, 39.344635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506382, 32.977016, 39.275703>,  <41.351940, 32.798027, 39.234344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506382, 32.977016, 39.275703>,  <41.763783, 33.275333, 39.344635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506382, 32.977016, 39.275703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177754, 0.073383, -0.981335,
		0.744521, -0.662121, 0.085346,
		-0.643500, -0.745795, -0.172330,
		41.313332, 32.753277, 39.224003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087433, 32.924801, 38.866180>,  <41.763783, 33.275333, 39.344635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087433, 32.924801, 38.866180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718861, 32.773884, 38.829052>,  <41.497719, 32.683334, 38.806774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718861, 32.773884, 38.829052>,  <42.087433, 32.924801, 38.866180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718861, 32.773884, 38.829052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086580, 0.033516, -0.995681,
		0.378776, -0.925487, 0.001783,
		-0.921429, -0.377295, -0.092823,
		41.442432, 32.660694, 38.801205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162788, 32.388260, 38.353565>,  <42.087433, 32.924801, 38.866180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162788, 32.388260, 38.353565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778111, 32.495564, 38.376141>,  <41.547306, 32.559944, 38.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778111, 32.495564, 38.376141>,  <42.162788, 32.388260, 38.353565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778111, 32.495564, 38.376141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069487, -0.039388, -0.996805,
		-0.265180, -0.962541, 0.056520,
		-0.961692, 0.268261, 0.056440,
		41.489601, 32.576042, 38.393074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675434, 31.853661, 37.960560>,  <42.162788, 32.388260, 38.353565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675434, 31.853661, 37.960560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476883, 32.200577, 37.975601>,  <41.357750, 32.408726, 37.984627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476883, 32.200577, 37.975601>,  <41.675434, 31.853661, 37.960560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476883, 32.200577, 37.975601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161504, -0.049696, -0.985620,
		-0.852949, -0.495318, 0.164739,
		-0.496382, 0.867290, 0.037607,
		41.327969, 32.460762, 37.986885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221230, 31.749063, 37.486526>,  <41.675434, 31.853661, 37.960560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221230, 31.749063, 37.486526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205070, 32.146446, 37.529251>,  <41.195377, 32.384876, 37.554886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205070, 32.146446, 37.529251>,  <41.221230, 31.749063, 37.486526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205070, 32.146446, 37.529251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227976, 0.094911, -0.969030,
		-0.972828, -0.063492, 0.222651,
		-0.040394, 0.993459, 0.106807,
		41.192951, 32.444485, 37.561295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529411, 32.002895, 37.227840>,  <41.221230, 31.749063, 37.486526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529411, 32.002895, 37.227840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782578, 32.312233, 37.213100>,  <40.934475, 32.497837, 37.204254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782578, 32.312233, 37.213100>,  <40.529411, 32.002895, 37.227840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782578, 32.312233, 37.213100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308845, 0.208539, -0.927969,
		-0.709957, 0.598704, 0.370830,
		0.632911, 0.773347, -0.036853,
		40.972450, 32.544235, 37.202045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218895, 32.534309, 36.762196>,  <40.529411, 32.002895, 37.227840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218895, 32.534309, 36.762196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590714, 32.681229, 36.775074>,  <40.813805, 32.769379, 36.782799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590714, 32.681229, 36.775074>,  <40.218895, 32.534309, 36.762196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590714, 32.681229, 36.775074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102666, 0.341706, -0.934182,
		-0.354121, 0.865061, 0.355340,
		0.929547, 0.367295, 0.032193,
		40.869579, 32.791416, 36.784733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154942, 33.203575, 36.567585>,  <40.218895, 32.534309, 36.762196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154942, 33.203575, 36.567585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532230, 33.090199, 36.498318>,  <40.758606, 33.022175, 36.456757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532230, 33.090199, 36.498318>,  <40.154942, 33.203575, 36.567585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532230, 33.090199, 36.498318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089414, 0.285444, -0.954215,
		0.319893, 0.915524, 0.243895,
		0.943225, -0.283439, -0.173172,
		40.815197, 33.005165, 36.446365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423641, 33.669994, 36.152485>,  <40.154942, 33.203575, 36.567585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423641, 33.669994, 36.152485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685596, 33.373245, 36.094872>,  <40.842770, 33.195198, 36.060303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685596, 33.373245, 36.094872>,  <40.423641, 33.669994, 36.152485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685596, 33.373245, 36.094872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008786, 0.183105, -0.983054,
		0.755673, 0.645058, 0.113395,
		0.654890, -0.741871, -0.144035,
		40.882065, 33.150684, 36.051662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894154, 33.963310, 35.722973>,  <40.423641, 33.669994, 36.152485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894154, 33.963310, 35.722973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926231, 33.570072, 35.657131>,  <40.945477, 33.334129, 35.617626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926231, 33.570072, 35.657131>,  <40.894154, 33.963310, 35.722973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926231, 33.570072, 35.657131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071981, 0.170416, -0.982740,
		0.994177, 0.066959, 0.084430,
		0.080192, -0.983095, -0.164604,
		40.950291, 33.275143, 35.607750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539581, 33.905499, 35.291233>,  <40.894154, 33.963310, 35.722973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539581, 33.905499, 35.291233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319836, 33.576839, 35.230446>,  <41.187988, 33.379642, 35.193974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319836, 33.576839, 35.230446>,  <41.539581, 33.905499, 35.291233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319836, 33.576839, 35.230446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048933, 0.149918, -0.987486,
		0.834150, -0.549924, -0.042154,
		-0.549363, -0.821649, -0.151964,
		41.155025, 33.330345, 35.184856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843044, 33.578312, 34.795303>,  <41.539581, 33.905499, 35.291233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843044, 33.578312, 34.795303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470474, 33.433662, 34.778919>,  <41.246933, 33.346870, 34.769089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470474, 33.433662, 34.778919>,  <41.843044, 33.578312, 34.795303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470474, 33.433662, 34.778919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037177, 0.017413, -0.999157,
		0.362036, -0.932160, -0.002775,
		-0.931423, -0.361627, -0.040959,
		41.191048, 33.325172, 34.766632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812103, 33.317192, 34.107979>,  <41.843044, 33.578312, 34.795303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812103, 33.317192, 34.107979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432049, 33.288349, 34.229336>,  <41.204018, 33.271042, 34.302151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432049, 33.288349, 34.229336>,  <41.812103, 33.317192, 34.107979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432049, 33.288349, 34.229336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311510, 0.264272, -0.912755,
		-0.014362, -0.961749, -0.273556,
		-0.950134, -0.072107, 0.303390,
		41.147007, 33.266716, 34.320354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502415, 32.894493, 33.585117>,  <41.812103, 33.317192, 34.107979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502415, 32.894493, 33.585117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201080, 33.102932, 33.745590>,  <41.020279, 33.227997, 33.841873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201080, 33.102932, 33.745590>,  <41.502415, 32.894493, 33.585117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201080, 33.102932, 33.745590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526035, -0.111359, -0.843141,
		-0.394684, -0.846201, 0.358007,
		-0.753333, 0.521098, 0.401180,
		40.975079, 33.259262, 33.865944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743080, 32.478706, 33.513191>,  <41.502415, 32.894493, 33.585117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743080, 32.478706, 33.513191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803783, 32.873730, 33.496704>,  <40.840206, 33.110744, 33.486813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803783, 32.873730, 33.496704>,  <40.743080, 32.478706, 33.513191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803783, 32.873730, 33.496704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377417, 0.019361, -0.925841,
		-0.913523, 0.156062, 0.375660,
		0.151762, 0.987557, -0.041214,
		40.849312, 33.169998, 33.484341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155128, 32.795113, 33.247688>,  <40.743080, 32.478706, 33.513191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155128, 32.795113, 33.247688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478008, 33.002014, 33.133930>,  <40.671738, 33.126156, 33.065674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478008, 33.002014, 33.133930>,  <40.155128, 32.795113, 33.247688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478008, 33.002014, 33.133930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354967, 0.040411, -0.934005,
		-0.471625, 0.854878, 0.216227,
		0.807198, 0.517254, -0.284394,
		40.720169, 33.157188, 33.048611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033222, 33.515297, 32.973129>,  <40.155128, 32.795113, 33.247688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033222, 33.515297, 32.973129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365963, 33.351868, 32.822884>,  <40.565609, 33.253811, 32.732735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365963, 33.351868, 32.822884>,  <40.033222, 33.515297, 32.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365963, 33.351868, 32.822884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386698, 0.058774, -0.920331,
		0.398097, 0.910832, -0.109102,
		0.831855, -0.408571, -0.375615,
		40.615520, 33.229298, 32.710197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720203, 33.816101, 32.770599>,  <40.033222, 33.515297, 32.973129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720203, 33.816101, 32.770599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968262, 34.098400, 32.907619>,  <41.117096, 34.267780, 32.989830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968262, 34.098400, 32.907619>,  <40.720203, 33.816101, 32.770599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968262, 34.098400, 32.907619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646275, -0.707129, 0.286876,
		0.444686, 0.043473, -0.894631,
		0.620148, 0.705747, 0.342546,
		41.154305, 34.310123, 33.010384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422699, 33.663651, 32.580917>,  <40.720203, 33.816101, 32.770599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422699, 33.663651, 32.580917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201546, 33.343456, 32.488354>,  <41.068855, 33.151340, 32.432816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201546, 33.343456, 32.488354>,  <41.422699, 33.663651, 32.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201546, 33.343456, 32.488354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822921, 0.568156, 0.000766,
		0.130863, 0.190854, -0.972856,
		-0.552880, -0.800484, -0.231409,
		41.035683, 33.103310, 32.418930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088474, 33.913132, 32.449738>,  <41.422699, 33.663651, 32.580917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088474, 33.913132, 32.449738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433849, 33.884903, 32.649536>,  <42.641075, 33.867966, 32.769417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433849, 33.884903, 32.649536>,  <42.088474, 33.913132, 32.449738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433849, 33.884903, 32.649536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186972, 0.874873, 0.446810,
		-0.468531, -0.479184, 0.742201,
		0.863435, -0.070573, 0.499499,
		42.692879, 33.863731, 32.799385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847641, 34.255058, 32.969860>,  <42.088474, 33.913132, 32.449738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847641, 34.255058, 32.969860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247501, 34.247063, 32.962845>,  <42.487415, 34.242268, 32.958637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247501, 34.247063, 32.962845>,  <41.847641, 34.255058, 32.969860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247501, 34.247063, 32.962845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024678, 0.942915, 0.332118,
		0.009898, -0.332433, 0.943075,
		0.999646, -0.019986, -0.017536,
		42.547394, 34.241066, 32.957584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079411, 34.398685, 33.598125>,  <41.847641, 34.255058, 32.969860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079411, 34.398685, 33.598125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359688, 34.520576, 33.340080>,  <42.527855, 34.593712, 33.185253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359688, 34.520576, 33.340080>,  <42.079411, 34.398685, 33.598125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359688, 34.520576, 33.340080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112520, 0.940081, 0.321849,
		0.704534, -0.152929, 0.692997,
		0.700693, 0.304729, -0.645111,
		42.569897, 34.611996, 33.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436916, 35.007107, 33.872856>,  <42.079411, 34.398685, 33.598125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436916, 35.007107, 33.872856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502033, 35.043869, 33.479908>,  <42.541103, 35.065926, 33.244141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502033, 35.043869, 33.479908>,  <42.436916, 35.007107, 33.872856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502033, 35.043869, 33.479908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052633, 0.995044, 0.084368,
		0.985256, 0.037970, 0.166820,
		0.162790, 0.091904, -0.982371,
		42.550869, 35.071442, 33.185196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910431, 35.625774, 33.778763>,  <42.436916, 35.007107, 33.872856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910431, 35.625774, 33.778763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759357, 35.547531, 33.416748>,  <42.668713, 35.500584, 33.199539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759357, 35.547531, 33.416748>,  <42.910431, 35.625774, 33.778763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759357, 35.547531, 33.416748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026119, 0.974791, -0.221587,
		0.925566, -0.107329, -0.363054,
		-0.377684, -0.195611, -0.905037,
		42.646053, 35.488850, 33.145237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312599, 35.998550, 33.342003>,  <42.910431, 35.625774, 33.778763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312599, 35.998550, 33.342003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985569, 35.933060, 33.121181>,  <42.789352, 35.893764, 32.988689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985569, 35.933060, 33.121181>,  <43.312599, 35.998550, 33.342003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985569, 35.933060, 33.121181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042344, 0.973223, -0.225929,
		0.574266, -0.161337, -0.802614,
		-0.817573, -0.163729, -0.552057,
		42.740295, 35.883942, 32.955563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544487, 36.256447, 32.679424>,  <43.312599, 35.998550, 33.342003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544487, 36.256447, 32.679424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144566, 36.254047, 32.686962>,  <42.904613, 36.252609, 32.691483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144566, 36.254047, 32.686962>,  <43.544487, 36.256447, 32.679424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144566, 36.254047, 32.686962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012618, 0.927120, -0.374552,
		-0.015224, -0.374716, -0.927014,
		-0.999804, -0.005995, 0.018843,
		42.844624, 36.252251, 32.692616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277374, 36.431408, 32.008656>,  <43.544487, 36.256447, 32.679424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277374, 36.431408, 32.008656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987476, 36.531422, 32.265476>,  <42.813538, 36.591431, 32.419567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987476, 36.531422, 32.265476>,  <43.277374, 36.431408, 32.008656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987476, 36.531422, 32.265476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048544, 0.948049, -0.314399,
		-0.687305, -0.196692, -0.699232,
		-0.724745, 0.250031, 0.642050,
		42.770054, 36.606430, 32.458092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035496, 37.000618, 31.643259>,  <43.277374, 36.431408, 32.008656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035496, 37.000618, 31.643259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874332, 37.021812, 32.008739>,  <42.777634, 37.034531, 32.228027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874332, 37.021812, 32.008739>,  <43.035496, 37.000618, 31.643259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874332, 37.021812, 32.008739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031465, 0.998534, -0.044035,
		-0.914698, 0.011007, -0.403989,
		-0.402912, 0.052990, 0.913703,
		42.753460, 37.037708, 32.282852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452156, 37.492439, 31.564049>,  <43.035496, 37.000618, 31.643259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452156, 37.492439, 31.564049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522987, 37.484093, 31.957638>,  <42.565487, 37.479084, 32.193790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522987, 37.484093, 31.957638>,  <42.452156, 37.492439, 31.564049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522987, 37.484093, 31.957638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036544, 0.998946, 0.027764,
		-0.983518, -0.040875, 0.176132,
		0.177081, -0.020870, 0.983975,
		42.576111, 37.477833, 32.252831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985260, 37.930202, 31.872675>,  <42.452156, 37.492439, 31.564049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985260, 37.930202, 31.872675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261189, 37.892601, 32.159817>,  <42.426746, 37.870041, 32.332100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261189, 37.892601, 32.159817>,  <41.985260, 37.930202, 31.872675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261189, 37.892601, 32.159817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051042, 0.995382, 0.081292,
		-0.722179, -0.019436, 0.691433,
		0.689820, -0.094000, 0.717852,
		42.468136, 37.864403, 32.375172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771648, 38.295536, 32.503517>,  <41.985260, 37.930202, 31.872675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771648, 38.295536, 32.503517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170238, 38.276001, 32.530788>,  <42.409393, 38.264278, 32.547150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170238, 38.276001, 32.530788>,  <41.771648, 38.295536, 32.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170238, 38.276001, 32.530788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035163, 0.981340, 0.189038,
		-0.076139, -0.185975, 0.979600,
		0.996477, -0.048838, 0.068179,
		42.469181, 38.261349, 32.551243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993561, 38.676270, 33.241291>,  <41.771648, 38.295536, 32.503517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993561, 38.676270, 33.241291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293472, 38.664654, 32.976871>,  <42.473419, 38.657684, 32.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293472, 38.664654, 32.976871>,  <41.993561, 38.676270, 33.241291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293472, 38.664654, 32.976871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157226, 0.978242, 0.135361,
		0.642733, -0.205425, 0.738034,
		0.749783, -0.029037, -0.661047,
		42.518406, 38.655941, 32.778557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595577, 38.996872, 33.517075>,  <41.993561, 38.676270, 33.241291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595577, 38.996872, 33.517075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634651, 39.035633, 33.120880>,  <42.658096, 39.058891, 32.883163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634651, 39.035633, 33.120880>,  <42.595577, 38.996872, 33.517075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634651, 39.035633, 33.120880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206359, 0.971646, 0.115414,
		0.973588, -0.215670, 0.074918,
		0.097685, 0.096905, -0.990488,
		42.663956, 39.064705, 32.823734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040203, 39.476490, 33.484001>,  <42.595577, 38.996872, 33.517075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040203, 39.476490, 33.484001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942650, 39.485081, 33.096172>,  <42.884117, 39.490234, 32.863476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942650, 39.485081, 33.096172>,  <43.040203, 39.476490, 33.484001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942650, 39.485081, 33.096172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189032, 0.981632, -0.025804,
		0.951204, -0.189572, -0.243461,
		-0.243881, 0.021477, -0.969567,
		42.869484, 39.491524, 32.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591743, 39.708015, 33.064476>,  <43.040203, 39.476490, 33.484001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591743, 39.708015, 33.064476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273003, 39.767139, 32.830151>,  <43.081757, 39.802612, 32.689556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273003, 39.767139, 32.830151>,  <43.591743, 39.708015, 33.064476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273003, 39.767139, 32.830151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295915, 0.940831, -0.165140,
		0.526738, -0.304943, -0.793446,
		-0.796857, 0.147807, -0.585809,
		43.033947, 39.811481, 32.654408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841927, 40.219246, 32.472122>,  <43.591743, 39.708015, 33.064476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841927, 40.219246, 32.472122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442226, 40.231941, 32.480923>,  <43.202404, 40.239559, 32.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442226, 40.231941, 32.480923>,  <43.841927, 40.219246, 32.472122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442226, 40.231941, 32.480923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024172, 0.958343, -0.284593,
		-0.030119, -0.283849, -0.958396,
		-0.999254, 0.031738, 0.022003,
		43.142448, 40.241463, 32.487522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638824, 40.697445, 31.884455>,  <43.841927, 40.219246, 32.472122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638824, 40.697445, 31.884455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304581, 40.668652, 32.102291>,  <43.104034, 40.651375, 32.232994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304581, 40.668652, 32.102291>,  <43.638824, 40.697445, 31.884455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304581, 40.668652, 32.102291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178129, 0.973315, -0.144669,
		-0.519645, -0.217893, -0.826131,
		-0.835607, -0.071981, 0.544591,
		43.053898, 40.647057, 32.265667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078766, 40.976391, 31.443422>,  <43.638824, 40.697445, 31.884455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078766, 40.976391, 31.443422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946087, 41.010803, 31.819204>,  <42.866478, 41.031448, 32.044674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946087, 41.010803, 31.819204>,  <43.078766, 40.976391, 31.443422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946087, 41.010803, 31.819204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242568, 0.954574, -0.173058,
		-0.911667, -0.285285, -0.295762,
		-0.331698, 0.086029, 0.939455,
		42.846577, 41.036613, 32.101040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274548, 41.145260, 31.399290>,  <43.078766, 40.976391, 31.443422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274548, 41.145260, 31.399290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436852, 41.280334, 31.739014>,  <42.534233, 41.361382, 31.942848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436852, 41.280334, 31.739014>,  <42.274548, 41.145260, 31.399290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436852, 41.280334, 31.739014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041788, 0.935125, -0.351846,
		-0.913025, 0.107273, 0.393546,
		0.405758, 0.337689, 0.849309,
		42.558578, 41.381641, 31.993807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864513, 41.784576, 31.597837>,  <42.274548, 41.145260, 31.399290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864513, 41.784576, 31.597837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200844, 41.815792, 31.812096>,  <42.402641, 41.834522, 31.940651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200844, 41.815792, 31.812096>,  <41.864513, 41.784576, 31.597837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200844, 41.815792, 31.812096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046377, 0.996300, -0.072355,
		-0.539310, 0.035997, 0.841338,
		0.840830, 0.078041, 0.535645,
		42.453094, 41.839203, 31.972790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633190, 42.274845, 32.209339>,  <41.864513, 41.784576, 31.597837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633190, 42.274845, 32.209339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030125, 42.271675, 32.160011>,  <42.268284, 42.269772, 32.130413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030125, 42.271675, 32.160011>,  <41.633190, 42.274845, 32.209339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030125, 42.271675, 32.160011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010682, 0.988700, -0.149528,
		0.123111, 0.149699, 0.981037,
		0.992335, -0.007929, -0.123319,
		42.327824, 42.269295, 32.123016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770733, 42.798435, 32.530544>,  <41.633190, 42.274845, 32.209339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770733, 42.798435, 32.530544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101234, 42.733116, 32.314903>,  <42.299538, 42.693924, 32.185520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101234, 42.733116, 32.314903>,  <41.770733, 42.798435, 32.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101234, 42.733116, 32.314903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118302, 0.986018, -0.117358,
		0.550729, 0.033191, 0.834024,
		0.826258, -0.163299, -0.539102,
		42.349113, 42.684128, 32.153172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278061, 43.193451, 32.844501>,  <41.770733, 42.798435, 32.530544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278061, 43.193451, 32.844501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327030, 43.130611, 32.452515>,  <42.356411, 43.092907, 32.217323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327030, 43.130611, 32.452515>,  <42.278061, 43.193451, 32.844501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327030, 43.130611, 32.452515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025611, 0.987564, -0.155120,
		0.992148, -0.006108, 0.124922,
		0.122421, -0.157101, -0.979965,
		42.363758, 43.083481, 32.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757622, 43.796093, 32.598030>,  <42.278061, 43.193451, 32.844501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757622, 43.796093, 32.598030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677902, 43.630753, 32.242634>,  <42.630070, 43.531548, 32.029396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677902, 43.630753, 32.242634>,  <42.757622, 43.796093, 32.598030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677902, 43.630753, 32.242634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403799, 0.791487, -0.458797,
		0.892875, -0.450211, 0.009168,
		-0.199299, -0.413351, -0.888494,
		42.618111, 43.506748, 31.976086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312115, 44.069725, 32.892925>,  <42.757622, 43.796093, 32.598030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312115, 44.069725, 32.892925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583015, 43.943172, 33.158627>,  <43.745556, 43.867241, 33.318047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583015, 43.943172, 33.158627>,  <43.312115, 44.069725, 32.892925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583015, 43.943172, 33.158627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723656, 0.123394, -0.679041,
		0.132871, 0.940572, 0.312520,
		0.677250, -0.316382, 0.664255,
		43.786190, 43.848259, 33.357903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912590, 44.568523, 33.077156>,  <43.312115, 44.069725, 32.892925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912590, 44.568523, 33.077156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004642, 44.179901, 33.099525>,  <44.059875, 43.946728, 33.112946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004642, 44.179901, 33.099525>,  <43.912590, 44.568523, 33.077156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004642, 44.179901, 33.099525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666133, 0.115372, -0.736856,
		0.709442, 0.206825, 0.673733,
		0.230130, -0.971552, 0.055923,
		44.073681, 43.888435, 33.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799389, 44.863777, 32.448963>,  <43.912590, 44.568523, 33.077156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799389, 44.863777, 32.448963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140030, 44.977715, 32.272942>,  <44.344414, 45.046078, 32.167328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140030, 44.977715, 32.272942>,  <43.799389, 44.863777, 32.448963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140030, 44.977715, 32.272942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440944, -0.843206, 0.307526,
		-0.283456, -0.455926, -0.843673,
		0.851599, 0.284843, -0.440049,
		44.395508, 45.063168, 32.140926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059383, 44.329727, 31.919788>,  <43.799389, 44.863777, 32.448963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059383, 44.329727, 31.919788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336086, 44.546192, 32.111046>,  <44.502106, 44.676071, 32.225800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336086, 44.546192, 32.111046>,  <44.059383, 44.329727, 31.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336086, 44.546192, 32.111046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386760, -0.836796, 0.387544,
		0.609831, -0.083159, -0.788156,
		0.691753, 0.541164, 0.478142,
		44.543613, 44.708542, 32.254490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798893, 44.124756, 31.692265>,  <44.059383, 44.329727, 31.919788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798893, 44.124756, 31.692265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766846, 44.237083, 32.074829>,  <44.747616, 44.304482, 32.304367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766846, 44.237083, 32.074829>,  <44.798893, 44.124756, 31.692265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766846, 44.237083, 32.074829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160424, -0.943353, 0.290428,
		0.983791, 0.176700, 0.030532,
		-0.080122, 0.280823, 0.956410,
		44.742809, 44.321331, 32.361752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807331, 43.425991, 31.933220>,  <44.798893, 44.124756, 31.692265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807331, 43.425991, 31.933220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799065, 43.656342, 32.260128>,  <44.794106, 43.794552, 32.456272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799065, 43.656342, 32.260128>,  <44.807331, 43.425991, 31.933220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799065, 43.656342, 32.260128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268852, -0.784136, 0.559330,
		0.962960, 0.231285, -0.138621,
		-0.020667, 0.575881, 0.817272,
		44.792866, 43.829105, 32.505310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516556, 43.488846, 32.377003>,  <44.807331, 43.425991, 31.933220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516556, 43.488846, 32.377003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199734, 43.541569, 32.615425>,  <45.009640, 43.573200, 32.758480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199734, 43.541569, 32.615425>,  <45.516556, 43.488846, 32.377003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199734, 43.541569, 32.615425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146234, -0.907018, 0.394884,
		0.592682, 0.399932, 0.699130,
		-0.792050, 0.131804, 0.596057,
		44.962120, 43.581108, 32.794243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676834, 43.202816, 33.063442>,  <45.516556, 43.488846, 32.377003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676834, 43.202816, 33.063442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278461, 43.230366, 33.040218>,  <45.039436, 43.246895, 33.026283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278461, 43.230366, 33.040218>,  <45.676834, 43.202816, 33.063442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278461, 43.230366, 33.040218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089146, -0.846073, 0.525561,
		-0.012928, 0.528600, 0.848773,
		-0.995935, 0.068871, -0.058061,
		44.979683, 43.251026, 33.022800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403835, 43.209652, 33.695293>,  <45.676834, 43.202816, 33.063442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403835, 43.209652, 33.695293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166550, 43.021275, 33.434124>,  <45.024178, 42.908249, 33.277424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166550, 43.021275, 33.434124>,  <45.403835, 43.209652, 33.695293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166550, 43.021275, 33.434124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025159, -0.821490, 0.569667,
		-0.804652, 0.321507, 0.499168,
		-0.593214, -0.470942, -0.652925,
		44.988586, 42.879993, 33.238247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084026, 42.764023, 34.124702>,  <45.403835, 43.209652, 33.695293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084026, 42.764023, 34.124702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038071, 42.592426, 33.766315>,  <45.010498, 42.489468, 33.551281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038071, 42.592426, 33.766315>,  <45.084026, 42.764023, 34.124702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038071, 42.592426, 33.766315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091438, -0.902682, 0.420481,
		-0.989161, -0.033616, 0.142937,
		-0.114892, -0.428994, -0.895971,
		45.003605, 42.463730, 33.497524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555588, 42.156567, 34.197609>,  <45.084026, 42.764023, 34.124702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555588, 42.156567, 34.197609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815567, 42.089828, 33.901035>,  <44.971554, 42.049786, 33.723091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815567, 42.089828, 33.901035>,  <44.555588, 42.156567, 34.197609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815567, 42.089828, 33.901035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111804, -0.943997, 0.310435,
		-0.751708, -0.284663, -0.594897,
		0.649950, -0.166845, -0.741436,
		45.010551, 42.039776, 33.678604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331203, 41.538937, 33.875187>,  <44.555588, 42.156567, 34.197609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331203, 41.538937, 33.875187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717014, 41.542572, 33.769661>,  <44.948502, 41.544754, 33.706345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717014, 41.542572, 33.769661>,  <44.331203, 41.538937, 33.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717014, 41.542572, 33.769661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069359, -0.973020, 0.220050,
		-0.254700, -0.230543, -0.939137,
		0.964529, 0.009091, -0.263819,
		45.006374, 41.545300, 33.690514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383320, 40.918140, 33.609623>,  <44.331203, 41.538937, 33.875187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383320, 40.918140, 33.609623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769550, 41.019302, 33.633961>,  <45.001289, 41.080002, 33.648563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769550, 41.019302, 33.633961>,  <44.383320, 40.918140, 33.609623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769550, 41.019302, 33.633961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226292, -0.932039, 0.283010,
		0.128282, -0.259500, -0.957185,
		0.965575, 0.252908, 0.060841,
		45.059223, 41.095177, 33.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797985, 40.558205, 33.091244>,  <44.383320, 40.918140, 33.609623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797985, 40.558205, 33.091244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043839, 40.663139, 33.388809>,  <45.191353, 40.726101, 33.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043839, 40.663139, 33.388809>,  <44.797985, 40.558205, 33.091244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043839, 40.663139, 33.388809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141158, -0.964435, 0.223472,
		0.776077, -0.032346, -0.629808,
		0.614637, 0.262334, 0.743910,
		45.228230, 40.741840, 33.611980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385139, 40.035889, 32.978603>,  <44.797985, 40.558205, 33.091244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385139, 40.035889, 32.978603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451851, 40.184380, 33.343979>,  <45.491879, 40.273476, 33.563206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451851, 40.184380, 33.343979>,  <45.385139, 40.035889, 32.978603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451851, 40.184380, 33.343979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274127, -0.907349, 0.318704,
		0.947122, 0.197246, -0.253089,
		0.166777, 0.371230, 0.913441,
		45.501884, 40.295750, 33.618011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102249, 39.972706, 33.285412>,  <45.385139, 40.035889, 32.978603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102249, 39.972706, 33.285412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867226, 40.006374, 33.607330>,  <45.726212, 40.026577, 33.800480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867226, 40.006374, 33.607330>,  <46.102249, 39.972706, 33.285412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867226, 40.006374, 33.607330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207602, -0.945604, 0.250466,
		0.782098, 0.314240, 0.538123,
		-0.587558, 0.084174, 0.804792,
		45.690960, 40.031628, 33.848766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421406, 39.634544, 33.837296>,  <46.102249, 39.972706, 33.285412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421406, 39.634544, 33.837296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033207, 39.654026, 33.931751>,  <45.800289, 39.665714, 33.988426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033207, 39.654026, 33.931751>,  <46.421406, 39.634544, 33.837296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033207, 39.654026, 33.931751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006588, -0.984376, 0.175955,
		0.241024, 0.169208, 0.955655,
		-0.970497, 0.048705, 0.236144,
		45.742058, 39.668636, 34.002594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359379, 39.235615, 34.401337>,  <46.421406, 39.634544, 33.837296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359379, 39.235615, 34.401337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974216, 39.256451, 34.295433>,  <45.743118, 39.268951, 34.231892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974216, 39.256451, 34.295433>,  <46.359379, 39.235615, 34.401337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974216, 39.256451, 34.295433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099201, -0.980817, 0.167800,
		-0.250943, 0.187841, 0.949602,
		-0.962905, 0.052093, -0.264763,
		45.685345, 39.272079, 34.216003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017628, 38.863693, 34.911736>,  <46.359379, 39.235615, 34.401337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017628, 38.863693, 34.911736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758503, 38.890457, 34.608192>,  <45.603027, 38.906517, 34.426067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758503, 38.890457, 34.608192>,  <46.017628, 38.863693, 34.911736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758503, 38.890457, 34.608192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243748, -0.961975, 0.123258,
		-0.721756, 0.264818, 0.639485,
		-0.647809, 0.066911, -0.758859,
		45.564159, 38.910530, 34.380535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344364, 38.426971, 35.113060>,  <46.017628, 38.863693, 34.911736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344364, 38.426971, 35.113060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360020, 38.462151, 34.714916>,  <45.369411, 38.483257, 34.476032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360020, 38.462151, 34.714916>,  <45.344364, 38.426971, 35.113060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360020, 38.462151, 34.714916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218821, -0.971186, -0.094419,
		-0.974980, 0.221500, -0.018763,
		0.039136, 0.087951, -0.995356,
		45.371761, 38.488537, 34.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899475, 37.970409, 34.941254>,  <45.344364, 38.426971, 35.113060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899475, 37.970409, 34.941254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068295, 38.006695, 34.580444>,  <45.169586, 38.028465, 34.363960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068295, 38.006695, 34.580444>,  <44.899475, 37.970409, 34.941254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068295, 38.006695, 34.580444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167709, -0.969995, -0.176022,
		-0.890927, 0.225567, -0.394169,
		0.422046, 0.090717, -0.902024,
		45.194908, 38.033909, 34.309837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412655, 37.578880, 34.445248>,  <44.899475, 37.970409, 34.941254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412655, 37.578880, 34.445248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770042, 37.599495, 34.266788>,  <44.984474, 37.611862, 34.159714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770042, 37.599495, 34.266788>,  <44.412655, 37.578880, 34.445248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770042, 37.599495, 34.266788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069501, -0.965564, -0.250710,
		-0.443706, 0.255011, -0.859124,
		0.893473, 0.051532, -0.446150,
		45.038086, 37.614956, 34.132942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343433, 37.160778, 33.872120>,  <44.412655, 37.578880, 34.445248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343433, 37.160778, 33.872120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741539, 37.194721, 33.891071>,  <44.980404, 37.215088, 33.902443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741539, 37.194721, 33.891071>,  <44.343433, 37.160778, 33.872120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741539, 37.194721, 33.891071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095305, -0.947667, -0.304704,
		0.019043, 0.307777, -0.951268,
		0.995266, 0.084858, 0.047379,
		45.040119, 37.220181, 33.905285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671497, 37.015461, 33.137810>,  <44.343433, 37.160778, 33.872120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671497, 37.015461, 33.137810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907856, 36.939308, 33.451397>,  <45.049671, 36.893616, 33.639549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907856, 36.939308, 33.451397>,  <44.671497, 37.015461, 33.137810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907856, 36.939308, 33.451397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161308, -0.924252, -0.346032,
		0.790459, 0.330927, -0.515423,
		0.590892, -0.190382, 0.783965,
		45.085125, 36.882195, 33.686588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001202, 36.543034, 32.820000>,  <44.671497, 37.015461, 33.137810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001202, 36.543034, 32.820000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172379, 36.515514, 33.180473>,  <45.275085, 36.499004, 33.396759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172379, 36.515514, 33.180473>,  <45.001202, 36.543034, 32.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172379, 36.515514, 33.180473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267970, -0.942607, -0.199207,
		0.863169, 0.326739, -0.384943,
		0.427938, -0.068797, 0.901186,
		45.300758, 36.494877, 33.450829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736916, 36.292664, 32.716248>,  <45.001202, 36.543034, 32.820000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736916, 36.292664, 32.716248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.599617, 36.198898, 33.080055>,  <45.517239, 36.142639, 33.298340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.599617, 36.198898, 33.080055>,  <45.736916, 36.292664, 32.716248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599617, 36.198898, 33.080055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261260, -0.953967, -0.147274,
		0.902179, 0.187071, 0.388687,
		-0.343244, -0.234416, 0.909523,
		45.496643, 36.128574, 33.352913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222500, 35.898724, 32.928539>,  <45.736916, 36.292664, 32.716248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222500, 35.898724, 32.928539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899323, 35.801369, 33.143200>,  <45.705418, 35.742958, 33.271996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899323, 35.801369, 33.143200>,  <46.222500, 35.898724, 32.928539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899323, 35.801369, 33.143200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170011, -0.968268, -0.183178,
		0.564203, -0.056761, 0.823682,
		-0.807942, -0.243384, 0.536650,
		45.656940, 35.728352, 33.304195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432961, 35.257950, 33.300377>,  <46.222500, 35.898724, 32.928539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432961, 35.257950, 33.300377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034039, 35.262714, 33.271416>,  <45.794685, 35.265572, 33.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034039, 35.262714, 33.271416>,  <46.432961, 35.257950, 33.300377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034039, 35.262714, 33.271416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003460, -0.978016, -0.208499,
		-0.073297, -0.208188, 0.975339,
		-0.997304, 0.011908, -0.072406,
		45.734848, 35.266285, 33.249695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259727, 34.711384, 33.607216>,  <46.432961, 35.257950, 33.300377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259727, 34.711384, 33.607216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981880, 34.810665, 33.337135>,  <45.815170, 34.870235, 33.175087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981880, 34.810665, 33.337135>,  <46.259727, 34.711384, 33.607216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981880, 34.810665, 33.337135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057107, -0.954655, -0.292185,
		-0.717107, -0.164399, 0.677297,
		-0.694620, 0.248206, -0.675201,
		45.773495, 34.885128, 33.134575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.343414, 34.718525, 34.427055>,  <46.259727, 34.711384, 33.607216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.343414, 34.718525, 34.427055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416073, 35.105015, 34.353943>,  <46.459667, 35.336910, 34.310078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416073, 35.105015, 34.353943>,  <46.343414, 34.718525, 34.427055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416073, 35.105015, 34.353943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767319, -0.023028, 0.640852,
		0.615000, -0.256659, -0.745588,
		0.181650, 0.966228, -0.182777,
		46.470570, 35.394882, 34.299110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075745, 34.734612, 34.296551>,  <46.343414, 34.718525, 34.427055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075745, 34.734612, 34.296551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950142, 35.107418, 34.368931>,  <46.874783, 35.331104, 34.412357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950142, 35.107418, 34.368931>,  <47.075745, 34.734612, 34.296551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950142, 35.107418, 34.368931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647222, 0.070691, 0.759017,
		0.694626, 0.355450, -0.625420,
		-0.314004, 0.932018, 0.180950,
		46.855942, 35.387024, 34.423218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615978, 35.388931, 34.217812>,  <47.075745, 34.734612, 34.296551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615978, 35.388931, 34.217812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336411, 35.388058, 34.503891>,  <47.168671, 35.387531, 34.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336411, 35.388058, 34.503891>,  <47.615978, 35.388931, 34.217812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336411, 35.388058, 34.503891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709410, -0.129083, 0.692874,
		0.090804, 0.991631, 0.091770,
		-0.698922, -0.002187, 0.715195,
		47.126736, 35.387402, 34.718449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.060349, 35.419765, 34.741814>,  <47.615978, 35.388931, 34.217812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.060349, 35.419765, 34.741814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799763, 35.134087, 34.844200>,  <47.643410, 34.962681, 34.905632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799763, 35.134087, 34.844200>,  <48.060349, 35.419765, 34.741814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799763, 35.134087, 34.844200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102914, 0.251076, 0.962481,
		-0.751666, 0.653366, -0.090066,
		-0.651466, -0.714195, 0.255965,
		47.604324, 34.919827, 34.920990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.326622, 35.349747, 44.358929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965591, 35.521637, 44.369431>,  <37.748974, 35.624771, 44.375732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965591, 35.521637, 44.369431>,  <38.326622, 35.349747, 44.358929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965591, 35.521637, 44.369431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214217, -0.395362, -0.893197,
		-0.373434, -0.811811, 0.448899,
		-0.902584, 0.429712, 0.026262,
		37.694817, 35.650555, 44.377308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911884, 34.872807, 43.987942>,  <38.326622, 35.349747, 44.358929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911884, 34.872807, 43.987942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670528, 35.190674, 44.014545>,  <37.525715, 35.381393, 44.030506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670528, 35.190674, 44.014545>,  <37.911884, 34.872807, 43.987942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670528, 35.190674, 44.014545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318435, -0.163640, -0.933713,
		-0.731112, -0.584567, 0.351790,
		-0.603385, 0.794672, 0.066508,
		37.489513, 35.429077, 44.034496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352291, 34.689938, 43.550522>,  <37.911884, 34.872807, 43.987942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352291, 34.689938, 43.550522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328167, 35.088612, 43.572376>,  <37.313694, 35.327816, 43.585487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328167, 35.088612, 43.572376>,  <37.352291, 34.689938, 43.550522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328167, 35.088612, 43.572376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253445, 0.037650, -0.966617,
		-0.965468, -0.072143, 0.250333,
		-0.060310, 0.996683, 0.054635,
		37.310074, 35.387615, 43.588768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654068, 34.960739, 43.322399>,  <37.352291, 34.689938, 43.550522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654068, 34.960739, 43.322399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884918, 35.284725, 43.280670>,  <37.023430, 35.479118, 43.255634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884918, 35.284725, 43.280670>,  <36.654068, 34.960739, 43.322399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884918, 35.284725, 43.280670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270905, 0.069370, -0.960103,
		-0.770412, 0.582362, 0.259459,
		0.577127, 0.809964, -0.104321,
		37.058056, 35.527714, 43.249374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319786, 35.453358, 43.044842>,  <36.654068, 34.960739, 43.322399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319786, 35.453358, 43.044842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682095, 35.590988, 42.945900>,  <36.899479, 35.673565, 42.886536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682095, 35.590988, 42.945900>,  <36.319786, 35.453358, 43.044842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682095, 35.590988, 42.945900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324138, 0.186576, -0.927429,
		-0.272958, 0.920218, 0.280525,
		0.905775, 0.344078, -0.247351,
		36.953827, 35.694210, 42.871696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210224, 35.905968, 42.557728>,  <36.319786, 35.453358, 43.044842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210224, 35.905968, 42.557728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604359, 35.891121, 42.491108>,  <36.840839, 35.882214, 42.451134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604359, 35.891121, 42.491108>,  <36.210224, 35.905968, 42.557728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604359, 35.891121, 42.491108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164464, 0.053616, -0.984925,
		0.045487, 0.997871, 0.046725,
		0.985334, -0.037117, -0.166553,
		36.899960, 35.879986, 42.441143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301449, 36.423546, 41.990543>,  <36.210224, 35.905968, 42.557728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301449, 36.423546, 41.990543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613121, 36.172970, 41.998978>,  <36.800125, 36.022625, 42.004040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613121, 36.172970, 41.998978>,  <36.301449, 36.423546, 41.990543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613121, 36.172970, 41.998978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005163, -0.027227, -0.999616,
		0.626773, 0.778994, -0.017980,
		0.779185, -0.626439, 0.021087,
		36.846878, 35.985039, 42.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832897, 36.699856, 41.589828>,  <36.301449, 36.423546, 41.990543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832897, 36.699856, 41.589828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922813, 36.310726, 41.612057>,  <36.976765, 36.077248, 41.625393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922813, 36.310726, 41.612057>,  <36.832897, 36.699856, 41.589828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922813, 36.310726, 41.612057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083717, -0.037537, -0.995782,
		0.970803, 0.228499, 0.073003,
		0.224795, -0.972820, 0.055570,
		36.990253, 36.018879, 41.628727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462914, 36.658695, 41.215416>,  <36.832897, 36.699856, 41.589828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462914, 36.658695, 41.215416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310127, 36.289303, 41.229721>,  <37.218456, 36.067665, 41.238304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310127, 36.289303, 41.229721>,  <37.462914, 36.658695, 41.215416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310127, 36.289303, 41.229721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376614, -0.190878, -0.906492,
		0.843959, -0.332776, 0.420706,
		-0.381963, -0.923485, 0.035765,
		37.195538, 36.012257, 41.240452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027462, 36.127628, 40.914501>,  <37.462914, 36.658695, 41.215416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027462, 36.127628, 40.914501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675457, 35.939041, 40.891548>,  <37.464252, 35.825890, 40.877777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675457, 35.939041, 40.891548>,  <38.027462, 36.127628, 40.914501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675457, 35.939041, 40.891548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226768, -0.310935, -0.922982,
		0.417314, -0.825250, 0.380541,
		-0.880014, -0.471468, -0.057383,
		37.411453, 35.797600, 40.874332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087399, 35.390724, 40.684025>,  <38.027462, 36.127628, 40.914501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087399, 35.390724, 40.684025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719212, 35.523281, 40.601151>,  <37.498299, 35.602814, 40.551426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719212, 35.523281, 40.601151>,  <38.087399, 35.390724, 40.684025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719212, 35.523281, 40.601151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091672, -0.332258, -0.938723,
		-0.379926, -0.883053, 0.275452,
		-0.920463, 0.331394, -0.207185,
		37.443073, 35.622700, 40.538994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046867, 35.112820, 40.125290>,  <38.087399, 35.390724, 40.684025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046867, 35.112820, 40.125290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713787, 35.334236, 40.119606>,  <37.513939, 35.467087, 40.116196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713787, 35.334236, 40.119606>,  <38.046867, 35.112820, 40.125290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713787, 35.334236, 40.119606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100918, -0.176939, -0.979034,
		-0.544449, -0.813809, 0.203200,
		-0.832701, 0.553541, -0.014206,
		37.463978, 35.500298, 40.115345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568226, 34.757511, 39.730099>,  <38.046867, 35.112820, 40.125290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568226, 34.757511, 39.730099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472603, 35.144154, 39.693165>,  <37.415230, 35.376141, 39.671005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472603, 35.144154, 39.693165>,  <37.568226, 34.757511, 39.730099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472603, 35.144154, 39.693165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039866, -0.085238, -0.995563,
		-0.970187, -0.241677, -0.018158,
		-0.239057, 0.966605, -0.092332,
		37.400887, 35.434135, 39.665466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155434, 34.755924, 39.222759>,  <37.568226, 34.757511, 39.730099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155434, 34.755924, 39.222759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261162, 35.141277, 39.240814>,  <37.324596, 35.372490, 39.251648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261162, 35.141277, 39.240814>,  <37.155434, 34.755924, 39.222759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261162, 35.141277, 39.240814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197047, 0.099761, -0.975305,
		-0.944092, 0.248895, 0.216200,
		0.264317, 0.963379, 0.045139,
		37.340458, 35.430290, 39.254356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657730, 35.173004, 38.911491>,  <37.155434, 34.755924, 39.222759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657730, 35.173004, 38.911491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000790, 35.373547, 38.865757>,  <37.206627, 35.493874, 38.838314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000790, 35.373547, 38.865757>,  <36.657730, 35.173004, 38.911491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000790, 35.373547, 38.865757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254401, 0.220443, -0.941639,
		-0.446892, 0.836688, 0.316610,
		0.857652, 0.501357, -0.114340,
		37.258087, 35.523952, 38.831455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392590, 35.785267, 38.496273>,  <36.657730, 35.173004, 38.911491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392590, 35.785267, 38.496273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791382, 35.763817, 38.473808>,  <37.030659, 35.750946, 38.460327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791382, 35.763817, 38.473808>,  <36.392590, 35.785267, 38.496273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791382, 35.763817, 38.473808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041483, 0.243614, -0.968985,
		0.065646, 0.968388, 0.240654,
		0.996980, -0.053626, -0.056164,
		37.090477, 35.747730, 38.456959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606197, 36.263939, 38.102909>,  <36.392590, 35.785267, 38.496273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606197, 36.263939, 38.102909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948925, 36.058331, 38.086700>,  <37.154560, 35.934963, 38.076977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948925, 36.058331, 38.086700>,  <36.606197, 36.263939, 38.102909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948925, 36.058331, 38.086700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015881, 0.104854, -0.994361,
		0.515375, 0.851343, 0.098004,
		0.856818, -0.514025, -0.040518,
		37.205971, 35.904121, 38.074543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977390, 36.543911, 37.622993>,  <36.606197, 36.263939, 38.102909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977390, 36.543911, 37.622993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148537, 36.183628, 37.653072>,  <37.251225, 35.967457, 37.671120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148537, 36.183628, 37.653072>,  <36.977390, 36.543911, 37.622993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148537, 36.183628, 37.653072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155548, -0.155339, -0.975538,
		0.890356, 0.405705, -0.206568,
		0.427869, -0.900707, 0.075201,
		37.276897, 35.913418, 37.675632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540287, 36.535995, 37.117142>,  <36.977390, 36.543911, 37.622993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540287, 36.535995, 37.117142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463318, 36.148800, 37.181610>,  <37.417137, 35.916485, 37.220291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463318, 36.148800, 37.181610>,  <37.540287, 36.535995, 37.117142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463318, 36.148800, 37.181610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094510, -0.145196, -0.984879,
		0.976750, -0.204748, -0.063545,
		-0.192425, -0.967986, 0.161171,
		37.405590, 35.858406, 37.229961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940056, 36.245731, 36.618336>,  <37.540287, 36.535995, 37.117142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940056, 36.245731, 36.618336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686989, 35.957390, 36.731548>,  <37.535149, 35.784386, 36.799477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686989, 35.957390, 36.731548>,  <37.940056, 36.245731, 36.618336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686989, 35.957390, 36.731548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143278, -0.250205, -0.957532,
		0.761054, -0.646351, 0.055015,
		-0.632667, -0.720851, 0.283028,
		37.497189, 35.741135, 36.816456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139332, 35.679188, 36.226814>,  <37.940056, 36.245731, 36.618336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139332, 35.679188, 36.226814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.756561, 35.601917, 36.313503>,  <37.526897, 35.555557, 36.365517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.756561, 35.601917, 36.313503>,  <38.139332, 35.679188, 36.226814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756561, 35.601917, 36.313503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159012, -0.275825, -0.947964,
		0.242899, -0.941597, 0.233228,
		-0.956930, -0.193174, 0.216723,
		37.469482, 35.543964, 36.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030472, 34.964417, 36.071499>,  <38.139332, 35.679188, 36.226814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030472, 34.964417, 36.071499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690178, 35.174232, 36.058151>,  <37.486004, 35.300121, 36.050140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690178, 35.174232, 36.058151>,  <38.030472, 34.964417, 36.071499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690178, 35.174232, 36.058151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009897, -0.079467, -0.996788,
		-0.525507, -0.847669, 0.072796,
		-0.850732, 0.524539, -0.033371,
		37.434959, 35.331593, 36.048141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718163, 35.222645, 36.064075>,  <38.030472, 34.964417, 36.071499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718163, 35.222645, 36.064075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092594, 35.272724, 35.932568>,  <39.317253, 35.302773, 35.853661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092594, 35.272724, 35.932568>,  <38.718163, 35.222645, 36.064075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092594, 35.272724, 35.932568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311073, 0.141927, 0.939729,
		0.164317, -0.981927, 0.093907,
		0.936073, 0.125202, -0.328773,
		39.373417, 35.310284, 35.833935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164528, 34.569202, 36.225380>,  <38.718163, 35.222645, 36.064075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164528, 34.569202, 36.225380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.423603, 34.873383, 36.206547>,  <39.579048, 35.055893, 36.195248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.423603, 34.873383, 36.206547>,  <39.164528, 34.569202, 36.225380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423603, 34.873383, 36.206547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285149, -0.184630, 0.940533,
		0.706537, -0.622595, -0.336424,
		0.647685, 0.760452, -0.047085,
		39.617908, 35.101517, 36.192421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809803, 34.381538, 36.527500>,  <39.164528, 34.569202, 36.225380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809803, 34.381538, 36.527500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872303, 34.776592, 36.522545>,  <39.909805, 35.013626, 36.519573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872303, 34.776592, 36.522545>,  <39.809803, 34.381538, 36.527500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872303, 34.776592, 36.522545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355808, -0.044586, 0.933495,
		0.921404, -0.150270, -0.358376,
		0.156255, 0.987639, -0.012385,
		39.919178, 35.072884, 36.518829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402298, 34.453411, 36.836395>,  <39.809803, 34.381538, 36.527500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402298, 34.453411, 36.836395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258278, 34.826561, 36.840492>,  <40.171864, 35.050449, 36.842949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258278, 34.826561, 36.840492>,  <40.402298, 34.453411, 36.836395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258278, 34.826561, 36.840492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304324, 0.107067, 0.946532,
		0.881901, 0.343917, -0.322446,
		-0.360052, 0.932876, 0.010240,
		40.150261, 35.106422, 36.843563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931347, 34.955135, 37.033878>,  <40.402298, 34.453411, 36.836395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931347, 34.955135, 37.033878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575993, 35.117306, 37.120045>,  <40.362782, 35.214607, 37.171745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575993, 35.117306, 37.120045>,  <40.931347, 34.955135, 37.033878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575993, 35.117306, 37.120045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276423, 0.097728, 0.956054,
		0.366557, 0.908889, -0.198889,
		-0.888384, 0.405426, 0.215415,
		40.309479, 35.238934, 37.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137554, 35.439827, 37.419746>,  <40.931347, 34.955135, 37.033878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137554, 35.439827, 37.419746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751247, 35.379238, 37.503986>,  <40.519463, 35.342884, 37.554531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751247, 35.379238, 37.503986>,  <41.137554, 35.439827, 37.419746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751247, 35.379238, 37.503986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193522, 0.119955, 0.973735,
		-0.172756, 0.981156, -0.086536,
		-0.965766, -0.151472, 0.210598,
		40.461517, 35.333797, 37.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061550, 35.829723, 38.075386>,  <41.137554, 35.439827, 37.419746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061550, 35.829723, 38.075386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.757355, 35.570065, 38.068851>,  <40.574837, 35.414268, 38.064930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.757355, 35.570065, 38.068851>,  <41.061550, 35.829723, 38.075386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757355, 35.570065, 38.068851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083262, -0.122436, 0.988978,
		-0.643996, 0.750741, 0.147160,
		-0.760484, -0.649151, -0.016340,
		40.529209, 35.375320, 38.063950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578789, 36.068546, 38.507950>,  <41.061550, 35.829723, 38.075386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578789, 36.068546, 38.507950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484097, 35.679924, 38.505505>,  <40.427280, 35.446751, 38.504036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484097, 35.679924, 38.505505>,  <40.578789, 36.068546, 38.507950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484097, 35.679924, 38.505505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069821, 0.010736, 0.997502,
		-0.969064, 0.236565, -0.070377,
		-0.236729, -0.971556, -0.006114,
		40.413078, 35.388458, 38.503670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871296, 36.066425, 38.801033>,  <40.578789, 36.068546, 38.507950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871296, 36.066425, 38.801033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064075, 35.718296, 38.841545>,  <40.179745, 35.509418, 38.865852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064075, 35.718296, 38.841545>,  <39.871296, 36.066425, 38.801033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064075, 35.718296, 38.841545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018948, 0.125912, 0.991860,
		-0.875995, -0.476106, 0.077174,
		0.481948, -0.870327, 0.101277,
		40.208660, 35.457199, 38.871929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610626, 35.884033, 39.370964>,  <39.871296, 36.066425, 38.801033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610626, 35.884033, 39.370964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901821, 35.612301, 39.334007>,  <40.076538, 35.449261, 39.311832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901821, 35.612301, 39.334007>,  <39.610626, 35.884033, 39.370964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901821, 35.612301, 39.334007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076588, -0.214498, 0.973717,
		-0.681298, -0.701779, -0.208180,
		0.727988, -0.679336, -0.092389,
		40.120216, 35.408501, 39.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412754, 35.328934, 39.696861>,  <39.610626, 35.884033, 39.370964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412754, 35.328934, 39.696861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811031, 35.291893, 39.695335>,  <40.049999, 35.269669, 39.694420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811031, 35.291893, 39.695335>,  <39.412754, 35.328934, 39.696861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811031, 35.291893, 39.695335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037937, -0.444770, 0.894841,
		-0.084557, -0.890845, -0.446369,
		0.995696, -0.092599, -0.003813,
		40.109741, 35.264114, 39.694191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529835, 34.777794, 40.088787>,  <39.412754, 35.328934, 39.696861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529835, 34.777794, 40.088787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891506, 34.948563, 40.094395>,  <40.108509, 35.051025, 40.097759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891506, 34.948563, 40.094395>,  <39.529835, 34.777794, 40.088787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891506, 34.948563, 40.094395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125739, -0.297384, 0.946442,
		0.408226, -0.853991, -0.322569,
		0.904180, 0.426922, 0.014020,
		40.162762, 35.076637, 40.098602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003304, 34.401257, 40.478138>,  <39.529835, 34.777794, 40.088787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003304, 34.401257, 40.478138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210491, 34.743240, 40.489037>,  <40.334805, 34.948433, 40.495575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210491, 34.743240, 40.489037>,  <40.003304, 34.401257, 40.478138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210491, 34.743240, 40.489037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080164, -0.080233, 0.993547,
		0.851633, -0.512446, -0.110096,
		0.517973, 0.854963, 0.027249,
		40.365883, 34.999729, 40.497211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708698, 34.264790, 40.926247>,  <40.003304, 34.401257, 40.478138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708698, 34.264790, 40.926247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577599, 34.641426, 40.895290>,  <40.498940, 34.867409, 40.876717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577599, 34.641426, 40.895290>,  <40.708698, 34.264790, 40.926247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577599, 34.641426, 40.895290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151985, 0.028305, 0.987977,
		0.932460, 0.335569, 0.133831,
		-0.327747, 0.941590, -0.077395,
		40.479275, 34.923904, 40.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972244, 34.565327, 41.470478>,  <40.708698, 34.264790, 40.926247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972244, 34.565327, 41.470478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.683533, 34.821831, 41.366306>,  <40.510307, 34.975735, 41.303802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.683533, 34.821831, 41.366306>,  <40.972244, 34.565327, 41.470478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683533, 34.821831, 41.366306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336191, 0.004073, 0.941785,
		0.604990, 0.767313, 0.212646,
		-0.721777, 0.641260, -0.260428,
		40.466999, 35.014210, 41.288177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072533, 35.138100, 41.840229>,  <40.972244, 34.565327, 41.470478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072533, 35.138100, 41.840229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.684727, 35.150993, 41.743069>,  <40.452042, 35.158730, 41.684772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.684727, 35.150993, 41.743069>,  <41.072533, 35.138100, 41.840229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684727, 35.150993, 41.743069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237199, 0.125214, 0.963358,
		0.061470, 0.991606, -0.113750,
		-0.969514, 0.032236, -0.242905,
		40.393871, 35.160664, 41.670197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879227, 35.608662, 42.250980>,  <41.072533, 35.138100, 41.840229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879227, 35.608662, 42.250980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532482, 35.437073, 42.149368>,  <40.324436, 35.334118, 42.088402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532482, 35.437073, 42.149368>,  <40.879227, 35.608662, 42.250980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532482, 35.437073, 42.149368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396076, 0.283117, 0.873481,
		-0.302780, 0.857803, -0.415330,
		-0.866861, -0.428975, -0.254032,
		40.272423, 35.308380, 42.073158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307247, 36.093445, 42.330662>,  <40.879227, 35.608662, 42.250980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307247, 36.093445, 42.330662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137741, 35.731136, 42.330639>,  <40.036037, 35.513752, 42.330627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137741, 35.731136, 42.330639>,  <40.307247, 36.093445, 42.330662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137741, 35.731136, 42.330639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355356, 0.166200, 0.919837,
		-0.833152, 0.389818, -0.392301,
		-0.423769, -0.905770, -0.000054,
		40.010609, 35.459404, 42.330624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.618786, 36.192032, 42.867798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722263, 35.808056, 42.824738>,  <39.784351, 35.577671, 42.798901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722263, 35.808056, 42.824738>,  <39.618786, 36.192032, 42.867798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722263, 35.808056, 42.824738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077094, -0.090576, 0.992901,
		-0.962878, -0.265158, 0.050574,
		0.258695, -0.959941, -0.107655,
		39.799873, 35.520073, 42.792442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109383, 35.824348, 43.284466>,  <39.618786, 36.192032, 42.867798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109383, 35.824348, 43.284466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418369, 35.576324, 43.229591>,  <39.603764, 35.427509, 43.196667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418369, 35.576324, 43.229591>,  <39.109383, 35.824348, 43.284466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418369, 35.576324, 43.229591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045330, -0.269313, 0.961985,
		-0.633433, -0.736885, -0.236144,
		0.772469, -0.620057, -0.137189,
		39.650108, 35.390308, 43.188435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935055, 35.197056, 43.644012>,  <39.109383, 35.824348, 43.284466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935055, 35.197056, 43.644012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334221, 35.187313, 43.620117>,  <39.573723, 35.181469, 43.605782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334221, 35.187313, 43.620117>,  <38.935055, 35.197056, 43.644012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334221, 35.187313, 43.620117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052850, -0.222296, 0.973546,
		-0.036987, -0.974675, -0.220546,
		0.997917, -0.024353, -0.059734,
		39.633595, 35.180008, 43.602196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210106, 34.588642, 43.842377>,  <38.935055, 35.197056, 43.644012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210106, 34.588642, 43.842377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524567, 34.831444, 43.888874>,  <39.713245, 34.977123, 43.916771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524567, 34.831444, 43.888874>,  <39.210106, 34.588642, 43.842377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524567, 34.831444, 43.888874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043635, -0.133096, 0.990142,
		0.616488, -0.783477, -0.078147,
		0.786154, 0.607001, 0.116239,
		39.760414, 35.013542, 43.923744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550022, 34.322636, 44.382256>,  <39.210106, 34.588642, 43.842377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550022, 34.322636, 44.382256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.710999, 34.687897, 44.356342>,  <39.807583, 34.907051, 44.340794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.710999, 34.687897, 44.356342>,  <39.550022, 34.322636, 44.382256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710999, 34.687897, 44.356342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274628, -0.052917, 0.960093,
		0.873282, -0.404172, -0.272073,
		0.402440, 0.913151, -0.064786,
		39.831730, 34.961842, 44.336906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109982, 34.298283, 44.798840>,  <39.550022, 34.322636, 44.382256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109982, 34.298283, 44.798840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993572, 34.677673, 44.748730>,  <39.923725, 34.905308, 44.718662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993572, 34.677673, 44.748730>,  <40.109982, 34.298283, 44.798840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993572, 34.677673, 44.748730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392292, 0.237736, 0.888588,
		0.872589, 0.209457, -0.441268,
		-0.291026, 0.948477, -0.125278,
		39.906265, 34.962215, 44.711147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665352, 34.721531, 45.165588>,  <40.109982, 34.298283, 44.798840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665352, 34.721531, 45.165588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351505, 34.966713, 45.128353>,  <40.163197, 35.113823, 45.106010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351505, 34.966713, 45.128353>,  <40.665352, 34.721531, 45.165588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351505, 34.966713, 45.128353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168307, 0.355091, 0.919556,
		0.596700, 0.705831, -0.381774,
		-0.784616, 0.612955, -0.093087,
		40.116119, 35.150600, 45.100426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892349, 35.320309, 45.477081>,  <40.665352, 34.721531, 45.165588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892349, 35.320309, 45.477081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500137, 35.398701, 45.481899>,  <40.264809, 35.445736, 45.484791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500137, 35.398701, 45.481899>,  <40.892349, 35.320309, 45.477081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500137, 35.398701, 45.481899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046709, 0.173245, 0.983771,
		0.190715, 0.965183, -0.179026,
		-0.980534, 0.195982, 0.012043,
		40.205978, 35.457497, 45.485512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685551, 36.059956, 45.749031>,  <40.892349, 35.320309, 45.477081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685551, 36.059956, 45.749031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.379093, 35.808319, 45.801598>,  <40.195221, 35.657337, 45.833138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.379093, 35.808319, 45.801598>,  <40.685551, 36.059956, 45.749031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379093, 35.808319, 45.801598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035534, 0.162704, 0.986035,
		-0.641691, 0.760110, -0.102300,
		-0.766140, -0.629095, 0.131416,
		40.149250, 35.619591, 45.841022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329201, 36.406818, 46.390076>,  <40.685551, 36.059956, 45.749031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329201, 36.406818, 46.390076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192642, 36.033131, 46.348747>,  <40.110706, 35.808918, 46.323952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192642, 36.033131, 46.348747>,  <40.329201, 36.406818, 46.390076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192642, 36.033131, 46.348747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088202, -0.077599, 0.993075,
		-0.935772, 0.348145, -0.055909,
		-0.341396, -0.934223, -0.103323,
		40.090225, 35.752865, 46.317749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684505, 36.331882, 46.871372>,  <40.329201, 36.406818, 46.390076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684505, 36.331882, 46.871372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.805191, 35.956577, 46.803688>,  <39.877602, 35.731396, 46.763077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.805191, 35.956577, 46.803688>,  <39.684505, 36.331882, 46.871372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805191, 35.956577, 46.803688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076270, -0.200666, 0.976686,
		-0.950342, -0.281776, -0.132105,
		0.301716, -0.938262, -0.169210,
		39.895706, 35.675098, 46.752926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365761, 35.909897, 47.357010>,  <39.684505, 36.331882, 46.871372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365761, 35.909897, 47.357010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641933, 35.655476, 47.219173>,  <39.807636, 35.502823, 47.136471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641933, 35.655476, 47.219173>,  <39.365761, 35.909897, 47.357010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641933, 35.655476, 47.219173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083160, -0.403410, 0.911232,
		-0.718606, -0.657796, -0.225631,
		0.690427, -0.636053, -0.344596,
		39.849060, 35.464661, 47.115795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175388, 35.151451, 47.594620>,  <39.365761, 35.909897, 47.357010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175388, 35.151451, 47.594620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569157, 35.185814, 47.533264>,  <39.805420, 35.206432, 47.496452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569157, 35.185814, 47.533264>,  <39.175388, 35.151451, 47.594620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569157, 35.185814, 47.533264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174657, -0.378409, 0.909011,
		0.020049, -0.921643, -0.387520,
		0.984425, 0.085908, -0.153384,
		39.864483, 35.211586, 47.487247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486637, 34.483341, 47.781284>,  <39.175388, 35.151451, 47.594620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486637, 34.483341, 47.781284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767818, 34.764748, 47.823086>,  <39.936527, 34.933590, 47.848167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767818, 34.764748, 47.823086>,  <39.486637, 34.483341, 47.781284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767818, 34.764748, 47.823086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070099, -0.214743, 0.974151,
		0.707771, -0.677459, -0.200271,
		0.702955, 0.703515, 0.104500,
		39.978706, 34.975803, 47.854435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765106, 34.375671, 48.358345>,  <39.486637, 34.483341, 47.781284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765106, 34.375671, 48.358345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960873, 34.722794, 48.323975>,  <40.078331, 34.931068, 48.303352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960873, 34.722794, 48.323975>,  <39.765106, 34.375671, 48.358345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960873, 34.722794, 48.323975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095147, 0.044803, 0.994454,
		0.866844, -0.494878, -0.060642,
		0.489416, 0.867807, -0.085924,
		40.107697, 34.983135, 48.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400070, 34.321594, 48.668041>,  <39.765106, 34.375671, 48.358345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400070, 34.321594, 48.668041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345490, 34.717834, 48.664265>,  <40.312740, 34.955578, 48.661999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345490, 34.717834, 48.664265>,  <40.400070, 34.321594, 48.668041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345490, 34.717834, 48.664265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227947, 0.040672, 0.972824,
		0.964064, 0.130595, -0.231354,
		-0.136456, 0.990601, -0.009442,
		40.304554, 35.015015, 48.661430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874596, 34.504936, 49.146797>,  <40.400070, 34.321594, 48.668041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874596, 34.504936, 49.146797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630375, 34.821438, 49.133327>,  <40.483841, 35.011341, 49.125244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630375, 34.821438, 49.133327>,  <40.874596, 34.504936, 49.146797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630375, 34.821438, 49.133327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134054, 0.145162, 0.980284,
		0.780547, 0.594002, -0.194701,
		-0.610554, 0.791259, -0.033677,
		40.447208, 35.058815, 49.123226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224884, 34.974854, 49.590992>,  <40.874596, 34.504936, 49.146797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224884, 34.974854, 49.590992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844547, 35.096581, 49.568081>,  <40.616344, 35.169617, 49.554337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844547, 35.096581, 49.568081>,  <41.224884, 34.974854, 49.590992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844547, 35.096581, 49.568081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058606, 0.004763, 0.998270,
		0.304068, 0.952557, 0.013306,
		-0.950846, 0.304322, -0.057274,
		40.559292, 35.187878, 49.550900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199299, 35.468014, 50.064259>,  <41.224884, 34.974854, 49.590992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199299, 35.468014, 50.064259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820061, 35.355556, 50.004822>,  <40.592518, 35.288082, 49.969158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820061, 35.355556, 50.004822>,  <41.199299, 35.468014, 50.064259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820061, 35.355556, 50.004822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105056, -0.164125, 0.980829,
		-0.300143, 0.945527, 0.126069,
		-0.948091, -0.281145, -0.148594,
		40.535633, 35.271214, 49.960243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845566, 35.735958, 50.648590>,  <41.199299, 35.468014, 50.064259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845566, 35.735958, 50.648590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.586090, 35.454628, 50.532288>,  <40.430405, 35.285831, 50.462505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.586090, 35.454628, 50.532288>,  <40.845566, 35.735958, 50.648590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586090, 35.454628, 50.532288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217581, -0.194714, 0.956423,
		-0.729290, 0.683683, -0.026722,
		-0.648687, -0.703324, -0.290759,
		40.391483, 35.243629, 50.445061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177101, 35.743225, 51.028679>,  <40.845566, 35.735958, 50.648590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177101, 35.743225, 51.028679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199646, 35.364113, 50.903122>,  <40.213173, 35.136646, 50.827789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199646, 35.364113, 50.903122>,  <40.177101, 35.743225, 51.028679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199646, 35.364113, 50.903122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187274, -0.318848, 0.929120,
		-0.980690, 0.006421, -0.195465,
		0.056358, -0.947784, -0.313894,
		40.216553, 35.079777, 50.808952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620564, 35.406792, 51.392483>,  <40.177101, 35.743225, 51.028679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620564, 35.406792, 51.392483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834240, 35.090538, 51.272789>,  <39.962444, 34.900787, 51.200974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834240, 35.090538, 51.272789>,  <39.620564, 35.406792, 51.392483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834240, 35.090538, 51.272789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298421, -0.507547, 0.808295,
		-0.790942, -0.342482, -0.507067,
		0.534187, -0.790634, -0.299236,
		39.994495, 34.853348, 51.183018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173962, 34.742958, 51.279606>,  <39.620564, 35.406792, 51.392483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173962, 34.742958, 51.279606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548462, 34.657711, 51.391327>,  <39.773163, 34.606564, 51.458359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548462, 34.657711, 51.391327>,  <39.173962, 34.742958, 51.279606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548462, 34.657711, 51.391327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351282, -0.581047, 0.734156,
		0.005825, -0.785470, -0.618872,
		0.936252, -0.213121, 0.279306,
		39.829338, 34.593773, 51.475121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251717, 34.126740, 51.427155>,  <39.173962, 34.742958, 51.279606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251717, 34.126740, 51.427155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560818, 34.230782, 51.658737>,  <39.746281, 34.293209, 51.797688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560818, 34.230782, 51.658737>,  <39.251717, 34.126740, 51.427155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560818, 34.230782, 51.658737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418409, -0.477143, 0.772832,
		0.477267, -0.839451, -0.259882,
		0.772755, 0.260110, 0.578958,
		39.792645, 34.308815, 51.832424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443470, 34.061680, 51.620773>,  <39.251717, 34.126740, 51.427155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443470, 34.061680, 51.620773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130848, 34.093979, 51.868210>,  <37.943275, 34.113358, 52.016670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130848, 34.093979, 51.868210>,  <38.443470, 34.061680, 51.620773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130848, 34.093979, 51.868210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586028, 0.244927, -0.772387,
		-0.213874, -0.966174, -0.144106,
		-0.781556, 0.080744, 0.618588,
		37.896381, 34.118202, 52.053787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981873, 33.636322, 51.410789>,  <38.443470, 34.061680, 51.620773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981873, 33.636322, 51.410789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881077, 33.983372, 51.582241>,  <37.820599, 34.191601, 51.685112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881077, 33.983372, 51.582241>,  <37.981873, 33.636322, 51.410789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881077, 33.983372, 51.582241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359630, 0.327248, -0.873828,
		-0.898426, -0.374342, 0.229562,
		-0.251987, 0.867627, 0.428633,
		37.805481, 34.243660, 51.710831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329548, 33.734943, 51.125484>,  <37.981873, 33.636322, 51.410789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329548, 33.734943, 51.125484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451252, 34.088142, 51.268448>,  <37.524273, 34.300060, 51.354225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451252, 34.088142, 51.268448>,  <37.329548, 33.734943, 51.125484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451252, 34.088142, 51.268448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195365, 0.425067, -0.883827,
		-0.932341, 0.199086, 0.301837,
		0.304259, 0.882997, 0.357413,
		37.542530, 34.353043, 51.375671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736130, 34.135525, 51.057858>,  <37.329548, 33.734943, 51.125484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736130, 34.135525, 51.057858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057354, 34.373478, 51.071712>,  <37.250088, 34.516251, 51.080025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057354, 34.373478, 51.071712>,  <36.736130, 34.135525, 51.057858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057354, 34.373478, 51.071712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213326, 0.341283, -0.915433,
		-0.556399, 0.727762, 0.400976,
		0.803064, 0.594885, 0.034639,
		37.298275, 34.551945, 51.082104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559589, 34.790745, 50.788456>,  <36.736130, 34.135525, 51.057858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559589, 34.790745, 50.788456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.954082, 34.745377, 50.740311>,  <37.190777, 34.718155, 50.711422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.954082, 34.745377, 50.740311>,  <36.559589, 34.790745, 50.788456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954082, 34.745377, 50.740311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088641, 0.251923, -0.963679,
		0.139628, 0.961077, 0.238399,
		0.986229, -0.113425, -0.120367,
		37.249950, 34.711349, 50.704201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856594, 35.281704, 50.369980>,  <36.559589, 34.790745, 50.788456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856594, 35.281704, 50.369980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160435, 35.024250, 50.332581>,  <37.342739, 34.869778, 50.310139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.160435, 35.024250, 50.332581>,  <36.856594, 35.281704, 50.369980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160435, 35.024250, 50.332581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031512, 0.180014, -0.983159,
		0.649626, 0.743861, 0.157021,
		0.759600, -0.643634, -0.093502,
		37.388313, 34.831161, 50.304531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234600, 35.578083, 49.847103>,  <36.856594, 35.281704, 50.369980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234600, 35.578083, 49.847103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385498, 35.208538, 49.872921>,  <37.476036, 34.986813, 49.888412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385498, 35.208538, 49.872921>,  <37.234600, 35.578083, 49.847103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385498, 35.208538, 49.872921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198492, 0.012582, -0.980022,
		0.904591, 0.382523, 0.188125,
		0.377248, -0.923860, 0.064546,
		37.498672, 34.931381, 49.892284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868973, 35.620441, 49.548046>,  <37.234600, 35.578083, 49.847103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868973, 35.620441, 49.548046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746391, 35.240005, 49.532463>,  <37.672840, 35.011745, 49.523113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746391, 35.240005, 49.532463>,  <37.868973, 35.620441, 49.548046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746391, 35.240005, 49.532463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234628, -0.035808, -0.971426,
		0.922515, -0.306840, 0.234126,
		-0.306456, -0.951087, -0.038960,
		37.654453, 34.954678, 49.520775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265625, 35.352612, 49.030396>,  <37.868973, 35.620441, 49.548046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265625, 35.352612, 49.030396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971691, 35.082787, 49.058613>,  <37.795330, 34.920891, 49.075542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971691, 35.082787, 49.058613>,  <38.265625, 35.352612, 49.030396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971691, 35.082787, 49.058613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079639, -0.189109, -0.978721,
		0.673550, -0.713584, 0.192686,
		-0.734839, -0.674563, 0.070545,
		37.751240, 34.880417, 49.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517838, 34.801205, 48.706429>,  <38.265625, 35.352612, 49.030396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517838, 34.801205, 48.706429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118114, 34.786419, 48.708405>,  <37.878281, 34.777550, 48.709591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118114, 34.786419, 48.708405>,  <38.517838, 34.801205, 48.706429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118114, 34.786419, 48.708405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001551, -0.091087, -0.995842,
		0.037256, -0.995157, 0.090966,
		-0.999305, -0.036960, 0.004937,
		37.818321, 34.775330, 48.709885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394699, 34.360580, 48.246174>,  <38.517838, 34.801205, 48.706429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394699, 34.360580, 48.246174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062359, 34.582058, 48.268452>,  <37.862953, 34.714947, 48.281818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062359, 34.582058, 48.268452>,  <38.394699, 34.360580, 48.246174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062359, 34.582058, 48.268452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055807, 0.182481, -0.981624,
		-0.553685, -0.812479, -0.182515,
		-0.830854, 0.553696, 0.055695,
		37.813103, 34.748165, 48.285160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046261, 34.200687, 47.648052>,  <38.394699, 34.360580, 48.246174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046261, 34.200687, 47.648052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857471, 34.536922, 47.754368>,  <37.744198, 34.738663, 47.818157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857471, 34.536922, 47.754368>,  <38.046261, 34.200687, 47.648052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857471, 34.536922, 47.754368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046969, 0.277081, -0.959698,
		-0.880360, -0.465437, -0.091294,
		-0.471974, 0.840592, 0.265793,
		37.715878, 34.789101, 47.834106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483204, 34.172157, 47.231579>,  <38.046261, 34.200687, 47.648052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483204, 34.172157, 47.231579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502388, 34.548428, 47.365932>,  <37.513901, 34.774189, 47.446545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502388, 34.548428, 47.365932>,  <37.483204, 34.172157, 47.231579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502388, 34.548428, 47.365932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172710, 0.339019, -0.924790,
		-0.983804, -0.013656, 0.178725,
		0.047962, 0.940681, 0.335887,
		37.516777, 34.830631, 47.466698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976818, 34.538189, 46.928616>,  <37.483204, 34.172157, 47.231579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976818, 34.538189, 46.928616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209869, 34.840458, 47.048290>,  <37.349701, 35.021820, 47.120094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209869, 34.840458, 47.048290>,  <36.976818, 34.538189, 46.928616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209869, 34.840458, 47.048290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142358, 0.457314, -0.877837,
		-0.800177, 0.468857, 0.374018,
		0.582624, 0.755670, 0.299187,
		37.384655, 35.067158, 47.138046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664738, 35.224136, 46.761684>,  <36.976818, 34.538189, 46.928616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664738, 35.224136, 46.761684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059853, 35.275291, 46.797276>,  <37.296921, 35.305984, 46.818630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059853, 35.275291, 46.797276>,  <36.664738, 35.224136, 46.761684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059853, 35.275291, 46.797276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001710, 0.562178, -0.827015,
		-0.155781, 0.817069, 0.555095,
		0.987790, 0.127884, 0.088974,
		37.356190, 35.313656, 46.823967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668976, 35.882984, 46.472095>,  <36.664738, 35.224136, 46.761684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668976, 35.882984, 46.472095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044903, 35.748302, 46.448875>,  <37.270458, 35.667496, 46.434944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044903, 35.748302, 46.448875>,  <36.668976, 35.882984, 46.472095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044903, 35.748302, 46.448875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081219, 0.385198, -0.919253,
		0.331875, 0.859217, 0.389364,
		0.939820, -0.336701, -0.058053,
		37.326847, 35.647293, 46.431461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023380, 36.424999, 46.097179>,  <36.668976, 35.882984, 46.472095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023380, 36.424999, 46.097179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298927, 36.137451, 46.059879>,  <37.464256, 35.964924, 46.037498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298927, 36.137451, 46.059879>,  <37.023380, 36.424999, 46.097179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298927, 36.137451, 46.059879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159529, 0.275829, -0.947876,
		0.707119, 0.638081, 0.304689,
		0.688863, -0.718868, -0.093252,
		37.505585, 35.921791, 46.031902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647583, 36.720917, 45.643463>,  <37.023380, 36.424999, 46.097179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647583, 36.720917, 45.643463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676456, 36.323643, 45.606876>,  <37.693779, 36.085278, 45.584923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676456, 36.323643, 45.606876>,  <37.647583, 36.720917, 45.643463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676456, 36.323643, 45.606876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070738, 0.086381, -0.993748,
		0.994880, 0.078200, -0.064022,
		0.072181, -0.993189, -0.091470,
		37.698112, 36.025684, 45.579433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256504, 36.544567, 45.154510>,  <37.647583, 36.720917, 45.643463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256504, 36.544567, 45.154510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014965, 36.225857, 45.163563>,  <37.870041, 36.034630, 45.168995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014965, 36.225857, 45.163563>,  <38.256504, 36.544567, 45.154510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014965, 36.225857, 45.163563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046695, 0.007023, -0.998885,
		0.795732, -0.604230, -0.041447,
		-0.603847, -0.796779, 0.022626,
		37.833813, 35.986824, 45.170349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504631, 36.064018, 44.620087>,  <38.256504, 36.544567, 45.154510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504631, 36.064018, 44.620087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127228, 35.965996, 44.709290>,  <37.900784, 35.907181, 44.762810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127228, 35.965996, 44.709290>,  <38.504631, 36.064018, 44.620087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127228, 35.965996, 44.709290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143540, -0.304306, -0.941697,
		0.298635, -0.920512, 0.251941,
		-0.943512, -0.245060, 0.223007,
		37.844173, 35.892479, 44.776192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.435665, 42.565319, 31.387794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137417, 42.607788, 31.650938>,  <42.958469, 42.633270, 31.808825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137417, 42.607788, 31.650938>,  <43.435665, 42.565319, 31.387794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137417, 42.607788, 31.650938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148186, -0.936088, 0.319030,
		0.649688, 0.335361, 0.682230,
		-0.745618, 0.106173, 0.657861,
		42.913731, 42.639641, 31.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609875, 42.402008, 32.067509>,  <43.435665, 42.565319, 31.387794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609875, 42.402008, 32.067509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213017, 42.358334, 32.091949>,  <42.974903, 42.332130, 32.106613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213017, 42.358334, 32.091949>,  <43.609875, 42.402008, 32.067509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213017, 42.358334, 32.091949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123323, -0.935776, 0.330324,
		0.021113, 0.335264, 0.941888,
		-0.992142, -0.109182, 0.061103,
		42.915375, 42.325581, 32.110279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482365, 41.939857, 32.681538>,  <43.609875, 42.402008, 32.067509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482365, 41.939857, 32.681538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151524, 41.917744, 32.457809>,  <42.953018, 41.904476, 32.323570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151524, 41.917744, 32.457809>,  <43.482365, 41.939857, 32.681538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151524, 41.917744, 32.457809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052051, -0.983341, 0.174159,
		-0.559632, 0.173161, 0.810449,
		-0.827105, -0.055280, -0.559322,
		42.903393, 41.901161, 32.290012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046413, 41.709217, 33.190147>,  <43.482365, 41.939857, 32.681538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046413, 41.709217, 33.190147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924183, 41.621025, 32.819633>,  <42.850845, 41.568111, 32.597324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924183, 41.621025, 32.819633>,  <43.046413, 41.709217, 33.190147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924183, 41.621025, 32.819633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149496, -0.949647, 0.275355,
		-0.940358, 0.222619, 0.257231,
		-0.305578, -0.220478, -0.926289,
		42.832508, 41.554882, 32.541748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446590, 41.229156, 33.283493>,  <43.046413, 41.709217, 33.190147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446590, 41.229156, 33.283493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597580, 41.156895, 32.920200>,  <42.688175, 41.113537, 32.702225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597580, 41.156895, 32.920200>,  <42.446590, 41.229156, 33.283493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597580, 41.156895, 32.920200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038781, -0.983010, 0.179411,
		-0.925207, -0.032502, -0.378068,
		0.377475, -0.180654, -0.908227,
		42.710823, 41.102699, 32.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036228, 40.619209, 33.054245>,  <42.446590, 41.229156, 33.283493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036228, 40.619209, 33.054245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347130, 40.642632, 32.803665>,  <42.533672, 40.656685, 32.653316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347130, 40.642632, 32.803665>,  <42.036228, 40.619209, 33.054245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347130, 40.642632, 32.803665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025099, -0.997752, -0.062128,
		-0.628684, 0.032566, -0.776979,
		0.777256, 0.058560, -0.626453,
		42.580307, 40.660198, 32.615730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837753, 40.339069, 32.457386>,  <42.036228, 40.619209, 33.054245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837753, 40.339069, 32.457386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235348, 40.305935, 32.486012>,  <42.473904, 40.286053, 32.503185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235348, 40.305935, 32.486012>,  <41.837753, 40.339069, 32.457386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235348, 40.305935, 32.486012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072465, -0.987906, -0.137077,
		0.082051, 0.131067, -0.987972,
		0.993990, -0.082841, 0.071561,
		42.533546, 40.281082, 32.507481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114227, 39.956505, 31.810038>,  <41.837753, 40.339069, 32.457386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114227, 39.956505, 31.810038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387806, 39.925789, 32.100231>,  <42.551952, 39.907360, 32.274345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387806, 39.925789, 32.100231>,  <42.114227, 39.956505, 31.810038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387806, 39.925789, 32.100231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100863, -0.974941, -0.198282,
		0.722529, 0.208788, -0.659060,
		0.683944, -0.076790, 0.725482,
		42.592991, 39.902752, 32.317875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634212, 39.486141, 31.535374>,  <42.114227, 39.956505, 31.810038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634212, 39.486141, 31.535374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697910, 39.482441, 31.930252>,  <42.736130, 39.480221, 32.167179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697910, 39.482441, 31.930252>,  <42.634212, 39.486141, 31.535374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697910, 39.482441, 31.930252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201133, -0.978679, -0.041617,
		0.966532, 0.205185, -0.153993,
		0.159249, -0.009252, 0.987195,
		42.745686, 39.479664, 32.226410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227631, 39.124603, 31.705008>,  <42.634212, 39.486141, 31.535374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227631, 39.124603, 31.705008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030575, 39.098392, 32.052113>,  <42.912342, 39.082664, 32.260376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030575, 39.098392, 32.052113>,  <43.227631, 39.124603, 31.705008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030575, 39.098392, 32.052113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350313, -0.927731, 0.128823,
		0.796607, 0.367451, 0.479996,
		-0.492644, -0.065528, 0.867761,
		42.882782, 39.078735, 32.312439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684479, 38.817600, 32.277924>,  <43.227631, 39.124603, 31.705008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684479, 38.817600, 32.277924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308971, 38.746231, 32.395821>,  <43.083668, 38.703411, 32.466560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308971, 38.746231, 32.395821>,  <43.684479, 38.817600, 32.277924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308971, 38.746231, 32.395821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214770, -0.971966, 0.095682,
		0.269409, 0.153126, 0.950774,
		-0.938772, -0.178421, 0.294743,
		43.027340, 38.692703, 32.484245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755711, 38.203201, 32.717098>,  <43.684479, 38.817600, 32.277924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755711, 38.203201, 32.717098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357780, 38.222771, 32.681480>,  <43.119022, 38.234512, 32.660110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357780, 38.222771, 32.681480>,  <43.755711, 38.203201, 32.717098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357780, 38.222771, 32.681480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046961, -0.998609, -0.023990,
		-0.090092, -0.019684, 0.995739,
		-0.994826, 0.048922, -0.089042,
		43.059334, 38.237446, 32.654766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501007, 37.674149, 33.148491>,  <43.755711, 38.203201, 32.717098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501007, 37.674149, 33.148491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189823, 37.730320, 32.903526>,  <43.003113, 37.764023, 32.756546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189823, 37.730320, 32.903526>,  <43.501007, 37.674149, 33.148491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189823, 37.730320, 32.903526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339075, -0.914418, 0.221061,
		-0.528962, 0.379632, 0.758999,
		-0.777964, 0.140425, -0.612416,
		42.956432, 37.772446, 32.719803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889271, 37.377113, 33.465305>,  <43.501007, 37.674149, 33.148491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889271, 37.377113, 33.465305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808990, 37.417828, 33.075565>,  <42.760822, 37.442257, 32.841721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808990, 37.417828, 33.075565>,  <42.889271, 37.377113, 33.465305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808990, 37.417828, 33.075565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383278, -0.923467, -0.017519,
		-0.901564, 0.369931, 0.224351,
		-0.200700, 0.101784, -0.974351,
		42.748779, 37.448364, 32.783260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170155, 37.179962, 33.456642>,  <42.889271, 37.377113, 33.465305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170155, 37.179962, 33.456642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349602, 37.129139, 33.102783>,  <42.457272, 37.098644, 32.890469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349602, 37.129139, 33.102783>,  <42.170155, 37.179962, 33.456642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349602, 37.129139, 33.102783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250954, -0.967928, 0.011752,
		-0.857766, 0.216733, -0.466117,
		0.448621, -0.127054, -0.884645,
		42.484188, 37.091022, 32.837391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749355, 36.734726, 33.171684>,  <42.170155, 37.179962, 33.456642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749355, 36.734726, 33.171684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072136, 36.708096, 32.936943>,  <42.265804, 36.692120, 32.796097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072136, 36.708096, 32.936943>,  <41.749355, 36.734726, 33.171684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072136, 36.708096, 32.936943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055125, -0.997779, 0.037386,
		-0.588039, 0.002181, -0.808830,
		0.806952, -0.066572, -0.586853,
		42.314220, 36.688126, 32.760887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518444, 36.196442, 32.669991>,  <41.749355, 36.734726, 33.171684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518444, 36.196442, 32.669991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918190, 36.210518, 32.667942>,  <42.158039, 36.218964, 32.666714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918190, 36.210518, 32.667942>,  <41.518444, 36.196442, 32.669991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918190, 36.210518, 32.667942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035535, -0.993966, 0.103769,
		-0.001435, -0.103885, -0.994588,
		0.999367, 0.035194, -0.005118,
		42.217999, 36.221077, 32.666409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699467, 35.693760, 32.207336>,  <41.518444, 36.196442, 32.669991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699467, 35.693760, 32.207336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.027409, 35.755901, 32.427773>,  <42.224174, 35.793186, 32.560036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.027409, 35.755901, 32.427773>,  <41.699467, 35.693760, 32.207336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027409, 35.755901, 32.427773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196632, -0.980344, -0.016173,
		0.537746, 0.121622, -0.834288,
		0.819857, 0.155350, 0.551091,
		42.273365, 35.802505, 32.593102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171894, 35.361519, 31.922449>,  <41.699467, 35.693760, 32.207336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171894, 35.361519, 31.922449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291157, 35.395275, 32.302761>,  <42.362717, 35.415531, 32.530949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291157, 35.395275, 32.302761>,  <42.171894, 35.361519, 31.922449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291157, 35.395275, 32.302761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293701, -0.955870, -0.007258,
		0.908207, 0.281409, -0.309788,
		0.298159, 0.084394, 0.950778,
		42.380604, 35.420593, 32.587994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793385, 35.096500, 31.897076>,  <42.171894, 35.361519, 31.922449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793385, 35.096500, 31.897076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686584, 35.088528, 32.282471>,  <42.622505, 35.083744, 32.513710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686584, 35.088528, 32.282471>,  <42.793385, 35.096500, 31.897076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686584, 35.088528, 32.282471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370480, -0.925077, 0.083527,
		0.889637, 0.379256, 0.254384,
		-0.267003, -0.019935, 0.963489,
		42.606483, 35.082546, 32.571518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494846, 34.993019, 32.195923>,  <42.793385, 35.096500, 31.897076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494846, 34.993019, 32.195923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199726, 34.887112, 32.444290>,  <43.022652, 34.823566, 32.593311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199726, 34.887112, 32.444290>,  <43.494846, 34.993019, 32.195923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199726, 34.887112, 32.444290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316133, -0.948280, -0.028716,
		0.596412, 0.175107, 0.783346,
		-0.737803, -0.264768, 0.620923,
		42.978386, 34.807682, 32.630566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053783, 35.257664, 32.804134>,  <43.494846, 34.993019, 32.195923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053783, 35.257664, 32.804134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.991901, 35.413200, 33.167423>,  <43.954773, 35.506523, 33.385395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.991901, 35.413200, 33.167423>,  <44.053783, 35.257664, 32.804134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991901, 35.413200, 33.167423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970186, 0.233388, 0.065337,
		-0.186562, 0.891251, -0.413359,
		-0.154704, 0.388846, 0.908221,
		43.945492, 35.529854, 33.439888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441414, 35.265900, 33.499458>,  <44.053783, 35.257664, 32.804134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441414, 35.265900, 33.499458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837120, 35.262352, 33.441113>,  <45.074543, 35.260223, 33.406105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837120, 35.262352, 33.441113>,  <44.441414, 35.265900, 33.499458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837120, 35.262352, 33.441113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078658, 0.873535, 0.480364,
		0.123154, -0.486680, 0.864856,
		0.989265, -0.008869, -0.145860,
		45.133900, 35.259693, 33.397354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737694, 35.493916, 34.128784>,  <44.441414, 35.265900, 33.499458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737694, 35.493916, 34.128784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006748, 35.565823, 33.841663>,  <45.168182, 35.608967, 33.669392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006748, 35.565823, 33.841663>,  <44.737694, 35.493916, 34.128784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006748, 35.565823, 33.841663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085040, 0.944835, 0.316314,
		0.735068, -0.273807, 0.620246,
		0.672639, 0.179766, -0.717803,
		45.208538, 35.619751, 33.626324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311275, 35.667652, 34.536961>,  <44.737694, 35.493916, 34.128784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311275, 35.667652, 34.536961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341034, 35.830593, 34.172867>,  <45.358891, 35.928356, 33.954411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341034, 35.830593, 34.172867>,  <45.311275, 35.667652, 34.536961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341034, 35.830593, 34.172867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214873, 0.884776, 0.413522,
		0.973804, -0.226351, -0.021702,
		0.074399, 0.407352, -0.910235,
		45.363354, 35.952797, 33.899796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592693, 36.329895, 34.703533>,  <45.311275, 35.667652, 34.536961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592693, 36.329895, 34.703533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522121, 36.380623, 34.313087>,  <45.479778, 36.411060, 34.078819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522121, 36.380623, 34.313087>,  <45.592693, 36.329895, 34.703533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522121, 36.380623, 34.313087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104604, 0.988466, 0.109515,
		0.978740, -0.082783, -0.187658,
		-0.176428, 0.126817, -0.976110,
		45.469193, 36.418667, 34.020256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043179, 36.751175, 34.535507>,  <45.592693, 36.329895, 34.703533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043179, 36.751175, 34.535507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738800, 36.793129, 34.279396>,  <45.556171, 36.818302, 34.125729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738800, 36.793129, 34.279396>,  <46.043179, 36.751175, 34.535507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738800, 36.793129, 34.279396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108178, 0.993543, 0.034194,
		0.639731, -0.043244, -0.767381,
		-0.760948, 0.104889, -0.640279,
		45.510517, 36.824596, 34.087311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329868, 37.146023, 33.998096>,  <46.043179, 36.751175, 34.535507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329868, 37.146023, 33.998096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932255, 37.188004, 33.986198>,  <45.693687, 37.213192, 33.979057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932255, 37.188004, 33.986198>,  <46.329868, 37.146023, 33.998096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932255, 37.188004, 33.986198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102228, 0.991393, 0.081790,
		0.038078, 0.078261, -0.996206,
		-0.994032, 0.104955, -0.029749,
		45.634045, 37.219490, 33.977272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207130, 37.742844, 33.558430>,  <46.329868, 37.146023, 33.998096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207130, 37.742844, 33.558430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840851, 37.725800, 33.718269>,  <45.621082, 37.715572, 33.814175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840851, 37.725800, 33.718269>,  <46.207130, 37.742844, 33.558430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840851, 37.725800, 33.718269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063583, 0.997200, -0.039366,
		-0.396806, -0.061455, -0.915843,
		-0.915698, -0.042611, 0.399602,
		45.566143, 37.713017, 33.838150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766121, 38.091347, 33.179073>,  <46.207130, 37.742844, 33.558430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766121, 38.091347, 33.179073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587231, 38.083164, 33.536747>,  <45.479897, 38.078255, 33.751350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587231, 38.083164, 33.536747>,  <45.766121, 38.091347, 33.179073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587231, 38.083164, 33.536747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168001, 0.983865, -0.061521,
		-0.878501, -0.177738, -0.443446,
		-0.447226, -0.020453, 0.894187,
		45.453064, 38.077026, 33.805004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191086, 38.549160, 33.125618>,  <45.766121, 38.091347, 33.179073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191086, 38.549160, 33.125618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254780, 38.534687, 33.520248>,  <45.292995, 38.526001, 33.757027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254780, 38.534687, 33.520248>,  <45.191086, 38.549160, 33.125618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254780, 38.534687, 33.520248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, 0.968516, 0.073892,
		-0.958190, -0.246308, 0.145619,
		0.159235, -0.036184, 0.986578,
		45.302551, 38.523830, 33.816223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694759, 39.056831, 33.403030>,  <45.191086, 38.549160, 33.125618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694759, 39.056831, 33.403030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.956821, 39.005074, 33.700764>,  <45.114059, 38.974018, 33.879402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.956821, 39.005074, 33.700764>,  <44.694759, 39.056831, 33.403030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956821, 39.005074, 33.700764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067687, 0.991315, 0.112750,
		-0.752458, -0.023487, 0.658221,
		0.655152, -0.129393, 0.744334,
		45.153366, 38.966255, 33.924065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391003, 39.328705, 34.007465>,  <44.694759, 39.056831, 33.403030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391003, 39.328705, 34.007465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786987, 39.311573, 34.061352>,  <45.024578, 39.301292, 34.093685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786987, 39.311573, 34.061352>,  <44.391003, 39.328705, 34.007465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786987, 39.311573, 34.061352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031329, 0.995770, 0.086370,
		-0.137849, -0.081282, 0.987112,
		0.989958, -0.042831, 0.134719,
		45.083973, 39.298725, 34.101768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542454, 39.794640, 34.570934>,  <44.391003, 39.328705, 34.007465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542454, 39.794640, 34.570934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894527, 39.761421, 34.384007>,  <45.105770, 39.741489, 34.271851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894527, 39.761421, 34.384007>,  <44.542454, 39.794640, 34.570934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894527, 39.761421, 34.384007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139053, 0.986491, 0.086600,
		0.453812, -0.141205, 0.879838,
		0.880181, -0.083044, -0.467317,
		45.158581, 39.736507, 34.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993805, 40.236736, 34.919739>,  <44.542454, 39.794640, 34.570934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993805, 40.236736, 34.919739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196552, 40.169498, 34.581547>,  <45.318199, 40.129154, 34.378632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196552, 40.169498, 34.581547>,  <44.993805, 40.236736, 34.919739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196552, 40.169498, 34.581547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186363, 0.978976, -0.082915,
		0.841639, -0.115539, 0.527537,
		0.506866, -0.168098, -0.845476,
		45.348614, 40.119068, 34.327904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504803, 40.703667, 34.894928>,  <44.993805, 40.236736, 34.919739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504803, 40.703667, 34.894928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540749, 40.612549, 34.507107>,  <45.562317, 40.557877, 34.274414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540749, 40.612549, 34.507107>,  <45.504803, 40.703667, 34.894928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540749, 40.612549, 34.507107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254159, 0.946505, -0.198825,
		0.962979, -0.228553, 0.142954,
		0.089865, -0.227797, -0.969553,
		45.567707, 40.544209, 34.216240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149387, 41.038746, 34.523476>,  <45.504803, 40.703667, 34.894928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149387, 41.038746, 34.523476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.902290, 40.939217, 34.225086>,  <45.754032, 40.879498, 34.046051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.902290, 40.939217, 34.225086>,  <46.149387, 41.038746, 34.523476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902290, 40.939217, 34.225086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148025, 0.968455, -0.200456,
		0.772323, -0.013407, -0.635088,
		-0.617742, -0.248826, -0.745976,
		45.716969, 40.864571, 34.001293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212273, 41.483929, 34.049244>,  <46.149387, 41.038746, 34.523476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212273, 41.483929, 34.049244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.861057, 41.361725, 33.901886>,  <45.650330, 41.288403, 33.813469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.861057, 41.361725, 33.901886>,  <46.212273, 41.483929, 34.049244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861057, 41.361725, 33.901886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146071, 0.904089, -0.401604,
		0.455756, -0.298811, -0.838450,
		-0.878037, -0.305506, -0.368397,
		45.597645, 41.270073, 33.791367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214745, 41.628704, 33.280586>,  <46.212273, 41.483929, 34.049244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214745, 41.628704, 33.280586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826424, 41.601070, 33.372478>,  <45.593433, 41.584492, 33.427616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826424, 41.601070, 33.372478>,  <46.214745, 41.628704, 33.280586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826424, 41.601070, 33.372478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180357, 0.841623, -0.509059,
		-0.158181, -0.535628, -0.829507,
		-0.970798, -0.069084, 0.229734,
		45.535183, 41.580345, 33.441399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748783, 41.760399, 32.677650>,  <46.214745, 41.628704, 33.280586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748783, 41.760399, 32.677650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513996, 41.839737, 32.991627>,  <45.373123, 41.887341, 33.180012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513996, 41.839737, 32.991627>,  <45.748783, 41.760399, 32.677650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513996, 41.839737, 32.991627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306373, 0.843009, -0.442122,
		-0.749407, -0.499994, -0.434046,
		-0.586963, 0.198349, 0.784941,
		45.337906, 41.899242, 33.227108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038246, 41.881058, 32.345577>,  <45.748783, 41.760399, 32.677650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038246, 41.881058, 32.345577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014225, 42.062313, 32.701344>,  <44.999813, 42.171066, 32.914803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014225, 42.062313, 32.701344>,  <45.038246, 41.881058, 32.345577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014225, 42.062313, 32.701344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510515, 0.751731, -0.417462,
		-0.857769, -0.479131, 0.186189,
		-0.060054, 0.453138, 0.889415,
		44.996208, 42.198254, 32.968166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370514, 42.147888, 32.346188>,  <45.038246, 41.881058, 32.345577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370514, 42.147888, 32.346188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563000, 42.365955, 32.620773>,  <44.678490, 42.496796, 32.785522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563000, 42.365955, 32.620773>,  <44.370514, 42.147888, 32.346188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563000, 42.365955, 32.620773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351440, 0.837383, -0.418665,
		-0.803072, -0.039783, 0.594552,
		0.481212, 0.545168, 0.686460,
		44.707363, 42.529507, 32.826710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.219460, 35.790688, 40.069946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885479, 35.571087, 40.085140>,  <40.685089, 35.439327, 40.094257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885479, 35.571087, 40.085140>,  <41.219460, 35.790688, 40.069946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885479, 35.571087, 40.085140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012113, -0.050666, -0.998642,
		0.550185, -0.834281, 0.035654,
		-0.834955, -0.549006, 0.037981,
		40.634991, 35.406384, 40.096535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390415, 35.082756, 39.703281>,  <41.219460, 35.790688, 40.069946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390415, 35.082756, 39.703281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993752, 35.134296, 39.703007>,  <40.755753, 35.165222, 39.702843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993752, 35.134296, 39.703007>,  <41.390415, 35.082756, 39.703281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993752, 35.134296, 39.703007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023276, -0.184392, -0.982577,
		-0.126730, -0.974370, 0.185854,
		-0.991664, 0.128848, -0.000689,
		40.696251, 35.172951, 39.702801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202278, 34.588493, 39.217392>,  <41.390415, 35.082756, 39.703281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202278, 34.588493, 39.217392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879147, 34.822708, 39.244423>,  <40.685268, 34.963238, 39.260643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879147, 34.822708, 39.244423>,  <41.202278, 34.588493, 39.217392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879147, 34.822708, 39.244423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184920, -0.142900, -0.972309,
		-0.559664, -0.797952, 0.223715,
		-0.807825, 0.585536, 0.067582,
		40.636799, 34.998367, 39.264698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742569, 34.163670, 38.781574>,  <41.202278, 34.588493, 39.217392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742569, 34.163670, 38.781574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607067, 34.536106, 38.835709>,  <40.525764, 34.759567, 38.868191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607067, 34.536106, 38.835709>,  <40.742569, 34.163670, 38.781574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607067, 34.536106, 38.835709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296508, 0.030870, -0.954531,
		-0.892932, -0.363481, 0.265619,
		-0.338755, 0.931090, 0.135340,
		40.505440, 34.815434, 38.876312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125210, 34.110508, 38.544830>,  <40.742569, 34.163670, 38.781574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125210, 34.110508, 38.544830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214901, 34.498806, 38.510464>,  <40.268715, 34.731785, 38.489845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214901, 34.498806, 38.510464>,  <40.125210, 34.110508, 38.544830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214901, 34.498806, 38.510464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280299, -0.020192, -0.959700,
		-0.933356, 0.239275, 0.267570,
		0.224230, 0.970742, -0.085915,
		40.282169, 34.790028, 38.484688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630653, 34.579361, 38.230377>,  <40.125210, 34.110508, 38.544830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630653, 34.579361, 38.230377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843578, 34.908165, 38.149445>,  <39.971333, 35.105450, 38.100887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843578, 34.908165, 38.149445>,  <39.630653, 34.579361, 38.230377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843578, 34.908165, 38.149445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383912, 0.021397, -0.923121,
		-0.754489, 0.569065, 0.326972,
		0.532313, 0.822014, -0.202327,
		40.003273, 35.154770, 38.088745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186478, 35.136433, 37.892494>,  <39.630653, 34.579361, 38.230377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186478, 35.136433, 37.892494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567017, 35.214458, 37.797092>,  <39.795341, 35.261272, 37.739849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567017, 35.214458, 37.797092>,  <39.186478, 35.136433, 37.892494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567017, 35.214458, 37.797092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266649, 0.133373, -0.954521,
		-0.154381, 0.971680, 0.178897,
		0.951349, 0.195063, -0.238507,
		39.852421, 35.272976, 37.725540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237541, 35.822464, 37.539310>,  <39.186478, 35.136433, 37.892494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237541, 35.822464, 37.539310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570026, 35.638176, 37.414845>,  <39.769516, 35.527603, 37.340164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570026, 35.638176, 37.414845>,  <39.237541, 35.822464, 37.539310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570026, 35.638176, 37.414845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161046, 0.336167, -0.927931,
		0.532120, 0.821419, 0.205229,
		0.831211, -0.460720, -0.311168,
		39.819389, 35.499962, 37.321495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454678, 36.197491, 36.965385>,  <39.237541, 35.822464, 37.539310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454678, 36.197491, 36.965385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665192, 35.858200, 36.941601>,  <39.791500, 35.654625, 36.927330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665192, 35.858200, 36.941601>,  <39.454678, 36.197491, 36.965385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665192, 35.858200, 36.941601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115764, -0.002192, -0.993274,
		0.842389, 0.529632, -0.099347,
		0.526288, -0.848225, -0.059465,
		39.823078, 35.603733, 36.923759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946384, 36.338699, 36.410957>,  <39.454678, 36.197491, 36.965385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946384, 36.338699, 36.410957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953239, 35.940449, 36.447712>,  <39.957352, 35.701500, 36.469765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953239, 35.940449, 36.447712>,  <39.946384, 36.338699, 36.410957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953239, 35.940449, 36.447712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003031, -0.091953, -0.995759,
		0.999849, 0.016784, -0.004594,
		0.017135, -0.995622, 0.091889,
		39.958382, 35.641762, 36.475277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416584, 36.131783, 35.918598>,  <39.946384, 36.338699, 36.410957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416584, 36.131783, 35.918598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196896, 35.802372, 35.975403>,  <40.065083, 35.604725, 36.009483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196896, 35.802372, 35.975403>,  <40.416584, 36.131783, 35.918598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196896, 35.802372, 35.975403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125700, -0.086589, -0.988282,
		0.826171, -0.560633, -0.055961,
		-0.549218, -0.823524, 0.142009,
		40.032131, 35.555313, 36.018005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619820, 35.608891, 35.436607>,  <40.416584, 36.131783, 35.918598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619820, 35.608891, 35.436607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245274, 35.522007, 35.546906>,  <40.020546, 35.469875, 35.613087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245274, 35.522007, 35.546906>,  <40.619820, 35.608891, 35.436607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245274, 35.522007, 35.546906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264373, -0.080388, -0.961064,
		0.230920, -0.972809, 0.017848,
		-0.936367, -0.217210, 0.275747,
		39.964363, 35.456844, 35.629631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327225, 34.973846, 35.042534>,  <40.619820, 35.608891, 35.436607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327225, 34.973846, 35.042534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043594, 35.225086, 35.170727>,  <39.873417, 35.375828, 35.247643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043594, 35.225086, 35.170727>,  <40.327225, 34.973846, 35.042534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043594, 35.225086, 35.170727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364566, 0.062486, -0.929079,
		-0.603576, -0.775623, 0.184675,
		-0.709076, 0.628096, 0.320481,
		39.830872, 35.413513, 35.266872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656441, 34.554352, 34.436340>,  <40.327225, 34.973846, 35.042534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656441, 34.554352, 34.436340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555630, 34.246956, 34.201088>,  <40.495144, 34.062519, 34.059937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555630, 34.246956, 34.201088>,  <40.656441, 34.554352, 34.436340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555630, 34.246956, 34.201088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213029, -0.636903, 0.740927,
		-0.943981, 0.061445, 0.324229,
		-0.252028, -0.768491, -0.588135,
		40.480022, 34.016407, 34.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137516, 34.083393, 34.590607>,  <40.656441, 34.554352, 34.436340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137516, 34.083393, 34.590607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352417, 33.835712, 34.361542>,  <40.481358, 33.687103, 34.224102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352417, 33.835712, 34.361542>,  <40.137516, 34.083393, 34.590607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352417, 33.835712, 34.361542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091523, -0.632167, 0.769408,
		-0.838442, -0.465777, -0.282960,
		0.537250, -0.619207, -0.572665,
		40.513592, 33.649952, 34.189743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907810, 33.355633, 34.561062>,  <40.137516, 34.083393, 34.590607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907810, 33.355633, 34.561062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300350, 33.330109, 34.488537>,  <40.535873, 33.314793, 34.445023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300350, 33.330109, 34.488537>,  <39.907810, 33.355633, 34.561062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300350, 33.330109, 34.488537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108789, -0.593288, 0.797605,
		-0.158468, -0.802457, -0.575283,
		0.981352, -0.063811, -0.181316,
		40.594757, 33.310966, 34.434143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109058, 32.628040, 34.743580>,  <39.907810, 33.355633, 34.561062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109058, 32.628040, 34.743580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447762, 32.840824, 34.745018>,  <40.650986, 32.968494, 34.745880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447762, 32.840824, 34.745018>,  <40.109058, 32.628040, 34.743580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447762, 32.840824, 34.745018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247156, -0.399389, 0.882838,
		0.471075, -0.746662, -0.469664,
		0.846760, 0.531963, 0.003600,
		40.701790, 33.000412, 34.746098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642700, 32.161854, 34.980751>,  <40.109058, 32.628040, 34.743580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642700, 32.161854, 34.980751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765453, 32.537670, 35.041538>,  <40.839104, 32.763161, 35.078011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765453, 32.537670, 35.041538>,  <40.642700, 32.161854, 34.980751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765453, 32.537670, 35.041538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331994, -0.255315, 0.908071,
		0.891965, -0.228221, -0.390273,
		0.306884, 0.939537, 0.151964,
		40.857517, 32.819530, 35.087128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040466, 32.014309, 35.481972>,  <40.642700, 32.161854, 34.980751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040466, 32.014309, 35.481972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031082, 32.412636, 35.517307>,  <41.025452, 32.651630, 35.538509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031082, 32.412636, 35.517307>,  <41.040466, 32.014309, 35.481972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031082, 32.412636, 35.517307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272498, -0.078646, 0.958937,
		0.961870, 0.046572, -0.269512,
		-0.023464, 0.995814, 0.088338,
		41.024044, 32.711380, 35.543808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799866, 32.270615, 35.684742>,  <41.040466, 32.014309, 35.481972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799866, 32.270615, 35.684742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510269, 32.507465, 35.826290>,  <41.336514, 32.649578, 35.911217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510269, 32.507465, 35.826290>,  <41.799866, 32.270615, 35.684742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510269, 32.507465, 35.826290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399335, -0.058519, 0.914936,
		0.562469, 0.803715, -0.194091,
		-0.723989, 0.592130, 0.353866,
		41.293072, 32.685104, 35.932449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064381, 32.540741, 36.245239>,  <41.799866, 32.270615, 35.684742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064381, 32.540741, 36.245239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703426, 32.705917, 36.294518>,  <41.486855, 32.805023, 36.324085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703426, 32.705917, 36.294518>,  <42.064381, 32.540741, 36.245239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703426, 32.705917, 36.294518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224626, 0.206771, 0.952255,
		0.367754, 0.886974, -0.279345,
		-0.902386, 0.412944, 0.123197,
		41.432713, 32.829800, 36.331478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125687, 33.164330, 36.688042>,  <42.064381, 32.540741, 36.245239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125687, 33.164330, 36.688042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740829, 33.065548, 36.734169>,  <41.509914, 33.006279, 36.761845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740829, 33.065548, 36.734169>,  <42.125687, 33.164330, 36.688042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740829, 33.065548, 36.734169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082843, 0.138114, 0.986946,
		-0.259654, 0.959135, -0.112427,
		-0.962142, -0.246951, 0.115319,
		41.452187, 32.991463, 36.768764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728634, 33.599583, 37.158527>,  <42.125687, 33.164330, 36.688042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728634, 33.599583, 37.158527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509258, 33.265110, 37.159851>,  <41.377632, 33.064426, 37.160645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509258, 33.265110, 37.159851>,  <41.728634, 33.599583, 37.158527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509258, 33.265110, 37.159851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022887, 0.018972, 0.999558,
		-0.835875, 0.548125, -0.029543,
		-0.548443, -0.836181, 0.003314,
		41.344727, 33.014256, 37.160847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206242, 33.751076, 37.712051>,  <41.728634, 33.599583, 37.158527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206242, 33.751076, 37.712051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179840, 33.355717, 37.657330>,  <41.163998, 33.118500, 37.624496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179840, 33.355717, 37.657330>,  <41.206242, 33.751076, 37.712051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179840, 33.355717, 37.657330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187385, -0.122388, 0.974632,
		-0.980066, 0.089970, -0.177132,
		-0.066008, -0.988396, -0.136807,
		41.160038, 33.059196, 37.616287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565136, 33.506271, 37.998058>,  <41.206242, 33.751076, 37.712051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565136, 33.506271, 37.998058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816422, 33.195084, 37.993885>,  <40.967194, 33.008369, 37.991379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816422, 33.195084, 37.993885>,  <40.565136, 33.506271, 37.998058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816422, 33.195084, 37.993885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240821, -0.207184, 0.948198,
		-0.739833, -0.593159, -0.317507,
		0.628214, -0.777970, -0.010436,
		41.004887, 32.961693, 37.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243938, 32.977703, 38.423660>,  <40.565136, 33.506271, 37.998058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243938, 32.977703, 38.423660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623539, 32.855656, 38.391907>,  <40.851299, 32.782425, 38.372852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623539, 32.855656, 38.391907>,  <40.243938, 32.977703, 38.423660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623539, 32.855656, 38.391907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012434, -0.215386, 0.976450,
		-0.315038, -0.927635, -0.200607,
		0.948997, -0.305125, -0.079389,
		40.908237, 32.764118, 38.368092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277828, 32.264801, 38.546654>,  <40.243938, 32.977703, 38.423660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277828, 32.264801, 38.546654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637566, 32.412861, 38.639748>,  <40.853409, 32.501698, 38.695606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637566, 32.412861, 38.639748>,  <40.277828, 32.264801, 38.546654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637566, 32.412861, 38.639748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132943, -0.275601, 0.952035,
		0.416539, -0.887149, -0.198651,
		0.899345, 0.370150, 0.232739,
		40.907368, 32.523907, 38.709568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539452, 31.716408, 39.020565>,  <40.277828, 32.264801, 38.546654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539452, 31.716408, 39.020565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770195, 32.040527, 39.061829>,  <40.908642, 32.235001, 39.086586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770195, 32.040527, 39.061829>,  <40.539452, 31.716408, 39.020565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770195, 32.040527, 39.061829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033429, -0.149600, 0.988181,
		0.816157, -0.566597, -0.113386,
		0.576863, 0.810302, 0.103157,
		40.943253, 32.283619, 39.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517380, 30.913023, 38.718727>,  <40.539452, 31.716408, 39.020565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517380, 30.913023, 38.718727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178326, 30.703503, 38.752533>,  <39.974892, 30.577789, 38.772816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178326, 30.703503, 38.752533>,  <40.517380, 30.913023, 38.718727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178326, 30.703503, 38.752533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276128, 0.299489, -0.913269,
		0.453063, -0.797456, -0.398494,
		-0.847636, -0.523804, 0.084513,
		39.924034, 30.546362, 38.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531780, 30.267748, 38.149868>,  <40.517380, 30.913023, 38.718727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531780, 30.267748, 38.149868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167080, 30.374630, 38.274651>,  <39.948261, 30.438759, 38.349518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167080, 30.374630, 38.274651>,  <40.531780, 30.267748, 38.149868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167080, 30.374630, 38.274651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189219, 0.400857, -0.896387,
		-0.364567, -0.876308, -0.314921,
		-0.911750, 0.267204, 0.311953,
		39.893555, 30.454792, 38.368237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203884, 30.115116, 37.504280>,  <40.531780, 30.267748, 38.149868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203884, 30.115116, 37.504280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960690, 30.333000, 37.735329>,  <39.814774, 30.463730, 37.873959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960690, 30.333000, 37.735329>,  <40.203884, 30.115116, 37.504280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960690, 30.333000, 37.735329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455606, 0.356455, -0.815698,
		-0.650216, -0.759098, 0.031455,
		-0.607983, 0.544711, 0.577623,
		39.778294, 30.496414, 37.908615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528481, 29.895452, 37.430271>,  <40.203884, 30.115116, 37.504280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528481, 29.895452, 37.430271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489174, 30.272385, 37.558247>,  <39.465591, 30.498543, 37.635033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489174, 30.272385, 37.558247>,  <39.528481, 29.895452, 37.430271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489174, 30.272385, 37.558247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417376, 0.252826, -0.872855,
		-0.903405, -0.219307, 0.368461,
		-0.098267, 0.942329, 0.319937,
		39.459694, 30.555084, 37.654228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841412, 30.067175, 37.335361>,  <39.528481, 29.895452, 37.430271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841412, 30.067175, 37.335361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031811, 30.418793, 37.346024>,  <39.146049, 30.629763, 37.352421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031811, 30.418793, 37.346024>,  <38.841412, 30.067175, 37.335361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031811, 30.418793, 37.346024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629285, 0.361610, -0.687924,
		-0.614354, 0.310675, 0.725294,
		0.475994, 0.879045, 0.026653,
		39.174610, 30.682507, 37.354019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275913, 30.535248, 37.071819>,  <38.841412, 30.067175, 37.335361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275913, 30.535248, 37.071819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594772, 30.776705, 37.066654>,  <38.786087, 30.921579, 37.063557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594772, 30.776705, 37.066654>,  <38.275913, 30.535248, 37.071819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594772, 30.776705, 37.066654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408948, 0.524068, -0.747071,
		-0.444196, 0.600809, 0.664619,
		0.797152, 0.603640, -0.012910,
		38.833920, 30.957796, 37.062782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995655, 31.236284, 37.106617>,  <38.275913, 30.535248, 37.071819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995655, 31.236284, 37.106617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357597, 31.275160, 36.940823>,  <38.574760, 31.298485, 36.841347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357597, 31.275160, 36.940823>,  <37.995655, 31.236284, 37.106617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357597, 31.275160, 36.940823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385316, 0.600976, -0.700257,
		0.181037, 0.793336, 0.581243,
		0.904852, 0.097190, -0.414484,
		38.629051, 31.304317, 36.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014404, 32.015747, 36.866787>,  <37.995655, 31.236284, 37.106617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014404, 32.015747, 36.866787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295414, 31.813696, 36.666264>,  <38.464020, 31.692467, 36.545948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295414, 31.813696, 36.666264>,  <38.014404, 32.015747, 36.866787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295414, 31.813696, 36.666264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290105, 0.439965, -0.849864,
		0.649845, 0.742482, 0.162547,
		0.702524, -0.505124, -0.501307,
		38.506172, 31.662159, 36.515873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357750, 32.535835, 36.486553>,  <38.014404, 32.015747, 36.866787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357750, 32.535835, 36.486553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457935, 32.193207, 36.306084>,  <38.518047, 31.987629, 36.197803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457935, 32.193207, 36.306084>,  <38.357750, 32.535835, 36.486553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457935, 32.193207, 36.306084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302333, 0.373515, -0.876973,
		0.919708, 0.356052, -0.165418,
		0.250462, -0.856571, -0.451171,
		38.533073, 31.936235, 36.170731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766518, 32.759583, 35.880398>,  <38.357750, 32.535835, 36.486553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766518, 32.759583, 35.880398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655209, 32.387291, 35.785477>,  <38.588425, 32.163918, 35.728523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655209, 32.387291, 35.785477>,  <38.766518, 32.759583, 35.880398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655209, 32.387291, 35.785477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354034, 0.329053, -0.875433,
		0.892874, -0.159596, -0.421075,
		-0.278271, -0.930727, -0.237301,
		38.571728, 32.108074, 35.714287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010914, 32.603828, 35.179672>,  <38.766518, 32.759583, 35.880398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010914, 32.603828, 35.179672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703499, 32.361111, 35.260818>,  <38.519051, 32.215481, 35.309505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703499, 32.361111, 35.260818>,  <39.010914, 32.603828, 35.179672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703499, 32.361111, 35.260818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380553, 0.178647, -0.907339,
		0.514329, -0.774522, -0.368215,
		-0.768534, -0.606796, 0.202863,
		38.472939, 32.179073, 35.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897209, 32.079910, 34.544788>,  <39.010914, 32.603828, 35.179672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897209, 32.079910, 34.544788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566555, 32.153454, 34.757530>,  <38.368160, 32.197578, 34.885174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566555, 32.153454, 34.757530>,  <38.897209, 32.079910, 34.544788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566555, 32.153454, 34.757530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542174, -0.007075, -0.840236,
		-0.150723, -0.982927, 0.105533,
		-0.826637, 0.183860, 0.531851,
		38.318565, 32.208611, 34.917088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.952877, 29.339752, 42.219814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553776, 29.342541, 42.246475>,  <40.314316, 29.344213, 42.262470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553776, 29.342541, 42.246475>,  <40.952877, 29.339752, 42.219814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553776, 29.342541, 42.246475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066877, -0.167553, -0.983592,
		0.004310, -0.985838, 0.167643,
		-0.997752, 0.006972, 0.066652,
		40.254452, 29.344633, 42.266472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739399, 28.923037, 41.753822>,  <40.952877, 29.339752, 42.219814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739399, 28.923037, 41.753822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396412, 29.126768, 41.783024>,  <40.190620, 29.249006, 41.800545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396412, 29.126768, 41.783024>,  <40.739399, 28.923037, 41.753822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396412, 29.126768, 41.783024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078672, 0.010438, -0.996846,
		-0.508485, -0.860508, 0.031120,
		-0.857469, 0.509330, 0.073005,
		40.139172, 29.279568, 41.804924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223118, 28.642641, 41.260582>,  <40.739399, 28.923037, 41.753822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223118, 28.642641, 41.260582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116539, 29.022387, 41.327175>,  <40.052589, 29.250233, 41.367130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116539, 29.022387, 41.327175>,  <40.223118, 28.642641, 41.260582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116539, 29.022387, 41.327175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026833, 0.179966, -0.983307,
		-0.963475, -0.257536, -0.073426,
		-0.266452, 0.949361, 0.166482,
		40.036602, 29.307196, 41.377121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668232, 28.770414, 40.769939>,  <40.223118, 28.642641, 41.260582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668232, 28.770414, 40.769939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789005, 29.136810, 40.875618>,  <39.861469, 29.356647, 40.939026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789005, 29.136810, 40.875618>,  <39.668232, 28.770414, 40.769939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789005, 29.136810, 40.875618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030957, 0.286402, -0.957609,
		-0.952827, 0.280954, 0.114831,
		0.301932, 0.915991, 0.264194,
		39.879585, 29.411608, 40.954876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061489, 29.275547, 40.608017>,  <39.668232, 28.770414, 40.769939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061489, 29.275547, 40.608017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415901, 29.460901, 40.614059>,  <39.628548, 29.572113, 40.617683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415901, 29.460901, 40.614059>,  <39.061489, 29.275547, 40.608017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415901, 29.460901, 40.614059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198586, 0.408743, -0.890782,
		-0.418948, 0.786259, 0.454180,
		0.886028, 0.463385, 0.015102,
		39.681709, 29.599916, 40.618591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942459, 29.927351, 40.387581>,  <39.061489, 29.275547, 40.608017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942459, 29.927351, 40.387581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332909, 29.859695, 40.333069>,  <39.567177, 29.819101, 40.300362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332909, 29.859695, 40.333069>,  <38.942459, 29.927351, 40.387581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332909, 29.859695, 40.333069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061332, 0.387257, -0.919930,
		0.208373, 0.906325, 0.367637,
		0.976125, -0.169140, -0.136281,
		39.625748, 29.808954, 40.292183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293201, 30.622032, 40.230953>,  <38.942459, 29.927351, 40.387581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293201, 30.622032, 40.230953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503944, 30.325697, 40.064301>,  <39.630390, 30.147896, 39.964310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503944, 30.325697, 40.064301>,  <39.293201, 30.622032, 40.230953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503944, 30.325697, 40.064301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025962, 0.475927, -0.879102,
		0.849557, 0.473979, 0.231512,
		0.526859, -0.740836, -0.416632,
		39.662003, 30.103447, 39.939312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794403, 30.984577, 39.864628>,  <39.293201, 30.622032, 40.230953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794403, 30.984577, 39.864628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824833, 30.612509, 39.720963>,  <39.843090, 30.389269, 39.634766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824833, 30.612509, 39.720963>,  <39.794403, 30.984577, 39.864628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824833, 30.612509, 39.720963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113176, 0.349822, -0.929955,
		0.990658, 0.111396, -0.078660,
		0.076076, -0.930170, -0.359162,
		39.847656, 30.333458, 39.613213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371830, 30.991884, 39.432934>,  <39.794403, 30.984577, 39.864628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371830, 30.991884, 39.432934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.100204, 30.718843, 39.324909>,  <39.937229, 30.555019, 39.260094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.100204, 30.718843, 39.324909>,  <40.371830, 30.991884, 39.432934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100204, 30.718843, 39.324909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106771, 0.272138, -0.956316,
		0.726277, -0.678231, -0.111915,
		-0.679060, -0.682601, -0.270063,
		39.896488, 30.514063, 39.243889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848545, 31.504124, 39.634712>,  <40.371830, 30.991884, 39.432934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848545, 31.504124, 39.634712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.908028, 31.899118, 39.613708>,  <40.943718, 32.136116, 39.601109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.908028, 31.899118, 39.613708>,  <40.848545, 31.504124, 39.634712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908028, 31.899118, 39.613708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095587, 0.038494, 0.994677,
		0.984250, -0.152936, -0.088667,
		0.148708, 0.987486, -0.052507,
		40.952641, 32.195366, 39.597958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360771, 31.489017, 40.032379>,  <40.848545, 31.504124, 39.634712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360771, 31.489017, 40.032379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.222095, 31.862637, 39.998047>,  <41.138889, 32.086807, 39.977448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.222095, 31.862637, 39.998047>,  <41.360771, 31.489017, 40.032379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222095, 31.862637, 39.998047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044416, 0.107751, 0.993185,
		0.936929, 0.340512, -0.078843,
		-0.346687, 0.934046, -0.085831,
		41.118088, 32.142849, 39.972298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760307, 31.860140, 40.426540>,  <41.360771, 31.489017, 40.032379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760307, 31.860140, 40.426540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.435982, 32.092056, 40.394485>,  <41.241386, 32.231205, 40.375252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.435982, 32.092056, 40.394485>,  <41.760307, 31.860140, 40.426540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435982, 32.092056, 40.394485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040372, 0.191993, 0.980566,
		0.583909, 0.791821, -0.179078,
		-0.810814, 0.579791, -0.080139,
		41.192738, 32.265995, 40.370445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939312, 32.498970, 40.693165>,  <41.760307, 31.860140, 40.426540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939312, 32.498970, 40.693165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540195, 32.503307, 40.719372>,  <41.300724, 32.505909, 40.735096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540195, 32.503307, 40.719372>,  <41.939312, 32.498970, 40.693165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540195, 32.503307, 40.719372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066138, 0.251438, 0.965611,
		-0.006005, 0.967813, -0.251600,
		-0.997792, 0.010841, 0.065519,
		41.240856, 32.506561, 40.739029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684883, 33.130363, 41.037407>,  <41.939312, 32.498970, 40.693165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684883, 33.130363, 41.037407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403728, 32.850277, 41.087448>,  <41.235035, 32.682224, 41.117474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403728, 32.850277, 41.087448>,  <41.684883, 33.130363, 41.037407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403728, 32.850277, 41.087448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104237, 0.072584, 0.991900,
		-0.703626, 0.710231, 0.021970,
		-0.702884, -0.700217, 0.125104,
		41.192863, 32.640213, 41.124981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172157, 33.400074, 41.564575>,  <41.684883, 33.130363, 41.037407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172157, 33.400074, 41.564575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.038937, 33.022926, 41.561188>,  <40.959003, 32.796638, 41.559155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.038937, 33.022926, 41.561188>,  <41.172157, 33.400074, 41.564575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038937, 33.022926, 41.561188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222947, 0.070019, 0.972313,
		-0.916171, 0.325721, -0.233530,
		-0.333054, -0.942870, -0.008469,
		40.939022, 32.740067, 41.558647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442043, 33.382736, 41.856319>,  <41.172157, 33.400074, 41.564575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442043, 33.382736, 41.856319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592972, 33.016808, 41.913902>,  <40.683529, 32.797249, 41.948452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592972, 33.016808, 41.913902>,  <40.442043, 33.382736, 41.856319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592972, 33.016808, 41.913902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066509, 0.128273, 0.989506,
		-0.923692, -0.382935, -0.012444,
		0.377320, -0.914826, 0.143953,
		40.706169, 32.742359, 41.957088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086681, 33.115700, 42.457397>,  <40.442043, 33.382736, 41.856319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086681, 33.115700, 42.457397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405048, 32.874756, 42.433147>,  <40.596069, 32.730190, 42.418598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405048, 32.874756, 42.433147>,  <40.086681, 33.115700, 42.457397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405048, 32.874756, 42.433147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062522, -0.017825, 0.997884,
		-0.602167, -0.798024, 0.023474,
		0.795918, -0.602361, -0.060628,
		40.643826, 32.694046, 42.414959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910599, 32.518940, 42.885990>,  <40.086681, 33.115700, 42.457397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910599, 32.518940, 42.885990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.305759, 32.501297, 42.826515>,  <40.542854, 32.490711, 42.790829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.305759, 32.501297, 42.826515>,  <39.910599, 32.518940, 42.885990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305759, 32.501297, 42.826515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142205, -0.125040, 0.981908,
		-0.061900, -0.991171, -0.117255,
		0.987900, -0.044106, -0.148690,
		40.602131, 32.488064, 42.781910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074261, 31.961403, 43.258518>,  <39.910599, 32.518940, 42.885990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074261, 31.961403, 43.258518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396561, 32.193626, 43.211658>,  <40.589939, 32.332962, 43.183540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396561, 32.193626, 43.211658>,  <40.074261, 31.961403, 43.258518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396561, 32.193626, 43.211658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189786, -0.065720, 0.979623,
		0.561029, -0.811562, -0.163135,
		0.805746, 0.580558, -0.117153,
		40.638283, 32.367794, 43.176514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490967, 31.693420, 43.747593>,  <40.074261, 31.961403, 43.258518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490967, 31.693420, 43.747593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647423, 32.052822, 43.667892>,  <40.741295, 32.268463, 43.620071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647423, 32.052822, 43.667892>,  <40.490967, 31.693420, 43.747593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647423, 32.052822, 43.667892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197957, 0.129300, 0.971645,
		0.898790, -0.419491, -0.127291,
		0.391138, 0.898504, -0.199255,
		40.764763, 32.322372, 43.608116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088642, 31.653557, 43.981899>,  <40.490967, 31.693420, 43.747593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088642, 31.653557, 43.981899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.050354, 32.051296, 43.963516>,  <41.027382, 32.289940, 43.952484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.050354, 32.051296, 43.963516>,  <41.088642, 31.653557, 43.981899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050354, 32.051296, 43.963516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295635, 0.072487, 0.952546,
		0.950493, 0.077592, -0.300903,
		-0.095722, 0.994347, -0.045960,
		41.021637, 32.349602, 43.949730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692780, 31.912651, 44.210430>,  <41.088642, 31.653557, 43.981899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692780, 31.912651, 44.210430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.441528, 32.218090, 44.270256>,  <41.290775, 32.401352, 44.306152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.441528, 32.218090, 44.270256>,  <41.692780, 31.912651, 44.210430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441528, 32.218090, 44.270256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311949, 0.071033, 0.947440,
		0.712840, 0.641772, -0.282822,
		-0.628130, 0.763599, 0.149565,
		41.253090, 32.447170, 44.315125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084267, 32.456612, 44.515038>,  <41.692780, 31.912651, 44.210430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084267, 32.456612, 44.515038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.691666, 32.471622, 44.590130>,  <41.456104, 32.480629, 44.635185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.691666, 32.471622, 44.590130>,  <42.084267, 32.456612, 44.515038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691666, 32.471622, 44.590130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191400, 0.212676, 0.958193,
		-0.003968, 0.976402, -0.215925,
		-0.981504, 0.037526, 0.187727,
		41.397213, 32.482880, 44.646446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.681324, 33.457912, 45.645321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070133, 33.408302, 45.565533>,  <35.303417, 33.378536, 45.517662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.070133, 33.408302, 45.565533>,  <34.681324, 33.457912, 45.645321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070133, 33.408302, 45.565533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191621, 0.072397, -0.978795,
		0.135835, 0.989635, 0.046606,
		0.972024, -0.124024, -0.199468,
		35.361740, 33.371094, 45.505692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813057, 33.928886, 45.151802>,  <34.681324, 33.457912, 45.645321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813057, 33.928886, 45.151802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.160881, 33.733181, 45.125000>,  <35.369576, 33.615757, 45.108921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.160881, 33.733181, 45.125000>,  <34.813057, 33.928886, 45.151802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160881, 33.733181, 45.125000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076658, 0.267769, -0.960429,
		0.487845, 0.830012, 0.270347,
		0.869558, -0.489265, -0.067003,
		35.421749, 33.586403, 45.104900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257706, 34.455975, 44.813179>,  <34.813057, 33.928886, 45.151802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257706, 34.455975, 44.813179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.424839, 34.096897, 44.757225>,  <35.525120, 33.881451, 44.723652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.424839, 34.096897, 44.757225>,  <35.257706, 34.455975, 44.813179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424839, 34.096897, 44.757225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115676, 0.205276, -0.971844,
		0.901131, 0.389885, 0.189612,
		0.417831, -0.897692, -0.139880,
		35.550190, 33.827591, 44.715260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833248, 34.574928, 44.313908>,  <35.257706, 34.455975, 44.813179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833248, 34.574928, 44.313908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730732, 34.188702, 44.296028>,  <35.669224, 33.956966, 44.285301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730732, 34.188702, 44.296028>,  <35.833248, 34.574928, 44.313908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730732, 34.188702, 44.296028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035472, 0.055606, -0.997822,
		0.965948, -0.254148, -0.048501,
		-0.256292, -0.965565, -0.044697,
		35.653843, 33.899033, 44.282619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191730, 34.360703, 43.736771>,  <35.833248, 34.574928, 44.313908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191730, 34.360703, 43.736771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.911999, 34.080582, 43.794048>,  <35.744160, 33.912510, 43.828415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.911999, 34.080582, 43.794048>,  <36.191730, 34.360703, 43.736771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911999, 34.080582, 43.794048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087070, -0.115379, -0.989498,
		0.709473, -0.704457, 0.019713,
		-0.699334, -0.700305, 0.143196,
		35.702198, 33.870491, 43.837006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378742, 33.827995, 43.277298>,  <36.191730, 34.360703, 43.736771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378742, 33.827995, 43.277298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989975, 33.752983, 43.334167>,  <35.756714, 33.707973, 43.368290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989975, 33.752983, 43.334167>,  <36.378742, 33.827995, 43.277298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989975, 33.752983, 43.334167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132695, -0.062249, -0.989200,
		0.194360, -0.980283, 0.035616,
		-0.971914, -0.187535, 0.142177,
		35.698402, 33.696724, 43.376820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235603, 33.139248, 42.927780>,  <36.378742, 33.827995, 43.277298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235603, 33.139248, 42.927780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.903263, 33.359898, 42.957161>,  <35.703857, 33.492287, 42.974789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.903263, 33.359898, 42.957161>,  <36.235603, 33.139248, 42.927780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903263, 33.359898, 42.957161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050832, 0.056217, -0.997124,
		-0.554169, -0.832195, -0.018668,
		-0.830851, 0.551626, 0.073456,
		35.654007, 33.525387, 42.979198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794350, 32.871891, 42.434067>,  <36.235603, 33.139248, 42.927780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794350, 32.871891, 42.434067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610367, 33.213715, 42.530544>,  <35.499977, 33.418808, 42.588428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610367, 33.213715, 42.530544>,  <35.794350, 32.871891, 42.434067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610367, 33.213715, 42.530544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322261, 0.092453, -0.942125,
		-0.827397, -0.511066, 0.232865,
		-0.459959, 0.854555, 0.241192,
		35.472378, 33.470081, 42.602901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117970, 32.849159, 41.992046>,  <35.794350, 32.871891, 42.434067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117970, 32.849159, 41.992046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206379, 33.222309, 42.105804>,  <35.259426, 33.446201, 42.174061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206379, 33.222309, 42.105804>,  <35.117970, 32.849159, 41.992046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206379, 33.222309, 42.105804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387852, 0.351639, -0.852010,
		-0.894828, 0.078013, 0.439541,
		0.221028, 0.932879, 0.284399,
		35.272686, 33.502174, 42.191124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442184, 33.316410, 41.918640>,  <35.117970, 32.849159, 41.992046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442184, 33.316410, 41.918640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788448, 33.514462, 41.889027>,  <34.996208, 33.633293, 41.871258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788448, 33.514462, 41.889027>,  <34.442184, 33.316410, 41.918640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788448, 33.514462, 41.889027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276115, 0.348836, -0.895586,
		-0.417605, 0.795714, 0.438686,
		0.865660, 0.495129, -0.074032,
		35.048145, 33.663002, 41.866817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321426, 33.849838, 41.461403>,  <34.442184, 33.316410, 41.918640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321426, 33.849838, 41.461403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717602, 33.905022, 41.462090>,  <34.955307, 33.938129, 41.462502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717602, 33.905022, 41.462090>,  <34.321426, 33.849838, 41.461403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717602, 33.905022, 41.462090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067896, 0.498216, -0.864391,
		-0.120105, 0.856008, 0.502818,
		0.990437, 0.137957, 0.001719,
		35.014732, 33.946407, 41.462605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483616, 34.558311, 41.486332>,  <34.321426, 33.849838, 41.461403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483616, 34.558311, 41.486332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821041, 34.408543, 41.332336>,  <35.023495, 34.318680, 41.239941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821041, 34.408543, 41.332336>,  <34.483616, 34.558311, 41.486332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821041, 34.408543, 41.332336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116383, 0.572382, -0.811686,
		0.524271, 0.729512, 0.439263,
		0.843561, -0.374421, -0.384986,
		35.074108, 34.296215, 41.216839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926304, 35.097027, 41.193802>,  <34.483616, 34.558311, 41.486332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926304, 35.097027, 41.193802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057560, 34.763634, 41.015976>,  <35.136314, 34.563599, 40.909283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057560, 34.763634, 41.015976>,  <34.926304, 35.097027, 41.193802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057560, 34.763634, 41.015976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102830, 0.436305, -0.893903,
		0.939016, 0.339037, 0.057462,
		0.328138, -0.833481, -0.444561,
		35.156002, 34.513588, 40.882607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540855, 35.323341, 40.757751>,  <34.926304, 35.097027, 41.193802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540855, 35.323341, 40.757751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421471, 34.969707, 40.613911>,  <35.349838, 34.757526, 40.527607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421471, 34.969707, 40.613911>,  <35.540855, 35.323341, 40.757751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421471, 34.969707, 40.613911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149003, 0.415314, -0.897392,
		0.942719, -0.214256, -0.255687,
		-0.298462, -0.884086, -0.359600,
		35.331932, 34.704483, 40.506031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247383, 35.249695, 40.936054>,  <35.540855, 35.323341, 40.757751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247383, 35.249695, 40.936054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.620495, 35.391968, 40.912689>,  <36.844360, 35.477333, 40.898670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.620495, 35.391968, 40.912689>,  <36.247383, 35.249695, 40.936054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620495, 35.391968, 40.912689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130462, -0.182094, 0.974588,
		0.336010, -0.916695, -0.216256,
		0.932779, 0.355685, -0.058408,
		36.900330, 35.498672, 40.895168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706287, 34.798855, 41.343830>,  <36.247383, 35.249695, 40.936054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706287, 34.798855, 41.343830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868973, 35.161163, 41.296223>,  <36.966583, 35.378548, 41.267658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868973, 35.161163, 41.296223>,  <36.706287, 34.798855, 41.343830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868973, 35.161163, 41.296223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233256, 0.023006, 0.972143,
		0.883277, -0.423143, -0.201919,
		0.406710, 0.905771, -0.119021,
		36.990986, 35.432896, 41.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328442, 34.772484, 41.684830>,  <36.706287, 34.798855, 41.343830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328442, 34.772484, 41.684830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236794, 35.161049, 41.659969>,  <37.181805, 35.394188, 41.645054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236794, 35.161049, 41.659969>,  <37.328442, 34.772484, 41.684830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236794, 35.161049, 41.659969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261497, 0.122932, 0.957343,
		0.937615, 0.203095, -0.282188,
		-0.229122, 0.971411, -0.062154,
		37.168056, 35.452473, 41.641323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854923, 35.137062, 42.060993>,  <37.328442, 34.772484, 41.684830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854923, 35.137062, 42.060993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.566242, 35.412159, 42.029621>,  <37.393032, 35.577217, 42.010796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.566242, 35.412159, 42.029621>,  <37.854923, 35.137062, 42.060993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566242, 35.412159, 42.029621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274395, 0.388276, 0.879744,
		0.635491, 0.613394, -0.468934,
		-0.721705, 0.687743, -0.078434,
		37.349731, 35.618481, 42.006092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172726, 35.776058, 42.248711>,  <37.854923, 35.137062, 42.060993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172726, 35.776058, 42.248711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780872, 35.829380, 42.308773>,  <37.545761, 35.861374, 42.344810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780872, 35.829380, 42.308773>,  <38.172726, 35.776058, 42.248711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780872, 35.829380, 42.308773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172459, 0.175563, 0.969245,
		0.102845, 0.975401, -0.194978,
		-0.979633, 0.133307, 0.150161,
		37.486984, 35.869373, 42.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068390, 36.369282, 42.765388>,  <38.172726, 35.776058, 42.248711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068390, 36.369282, 42.765388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739136, 36.142597, 42.779678>,  <37.541584, 36.006584, 42.788254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739136, 36.142597, 42.779678>,  <38.068390, 36.369282, 42.765388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739136, 36.142597, 42.779678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061918, 0.152124, 0.986420,
		-0.564454, 0.809748, -0.160309,
		-0.823139, -0.566715, 0.035729,
		37.492195, 35.972584, 42.790398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744530, 36.621674, 43.342476>,  <38.068390, 36.369282, 42.765388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744530, 36.621674, 43.342476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518600, 36.296349, 43.286633>,  <37.383041, 36.101154, 43.253124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.518600, 36.296349, 43.286633>,  <37.744530, 36.621674, 43.342476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518600, 36.296349, 43.286633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182256, -0.042056, 0.982351,
		-0.804832, 0.580302, -0.124477,
		-0.564826, -0.813314, -0.139612,
		37.349152, 36.052353, 43.244747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131351, 36.668148, 43.599976>,  <37.744530, 36.621674, 43.342476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131351, 36.668148, 43.599976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182793, 36.271561, 43.608471>,  <37.213657, 36.033607, 43.613567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182793, 36.271561, 43.608471>,  <37.131351, 36.668148, 43.599976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182793, 36.271561, 43.608471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297021, -0.018078, 0.954700,
		-0.946172, -0.129082, -0.296812,
		0.128600, -0.991469, 0.021235,
		37.221375, 35.974121, 43.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644543, 36.401985, 44.060509>,  <37.131351, 36.668148, 43.599976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644543, 36.401985, 44.060509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911499, 36.104202, 44.052795>,  <37.071671, 35.925533, 44.048168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911499, 36.104202, 44.052795>,  <36.644543, 36.401985, 44.060509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911499, 36.104202, 44.052795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009759, -0.034633, 0.999352,
		-0.744647, -0.666767, -0.030379,
		0.667387, -0.744461, -0.019282,
		37.111713, 35.880863, 44.047012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518982, 36.064274, 44.563587>,  <36.644543, 36.401985, 44.060509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518982, 36.064274, 44.563587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.890583, 35.927425, 44.507141>,  <37.113544, 35.845318, 44.473274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.890583, 35.927425, 44.507141>,  <36.518982, 36.064274, 44.563587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890583, 35.927425, 44.507141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128060, -0.060581, 0.989914,
		-0.347218, -0.937701, -0.012468,
		0.928999, -0.342120, -0.141117,
		37.169285, 35.824791, 44.464806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604301, 35.575283, 45.094704>,  <36.518982, 36.064274, 44.563587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604301, 35.575283, 45.094704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976974, 35.659401, 44.976219>,  <37.200577, 35.709873, 44.905128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976974, 35.659401, 44.976219>,  <36.604301, 35.575283, 45.094704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976974, 35.659401, 44.976219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339335, -0.212715, 0.916299,
		0.129687, -0.954215, -0.269544,
		0.931683, 0.210298, -0.296212,
		37.256481, 35.722492, 44.887356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008057, 34.978428, 45.229206>,  <36.604301, 35.575283, 45.094704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008057, 34.978428, 45.229206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.254951, 35.292381, 45.207382>,  <37.403088, 35.480755, 45.194290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.254951, 35.292381, 45.207382>,  <37.008057, 34.978428, 45.229206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254951, 35.292381, 45.207382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355907, -0.216696, 0.909051,
		0.701679, -0.580513, -0.413099,
		0.617233, 0.784887, -0.054558,
		37.440121, 35.527847, 45.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602371, 34.704681, 45.475060>,  <37.008057, 34.978428, 45.229206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602371, 34.704681, 45.475060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.655022, 35.100166, 45.503681>,  <37.686611, 35.337460, 45.520855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.655022, 35.100166, 45.503681>,  <37.602371, 34.704681, 45.475060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655022, 35.100166, 45.503681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257081, -0.103756, 0.960804,
		0.957385, -0.108068, -0.267836,
		0.131622, 0.988714, 0.071552,
		37.694508, 35.396782, 45.525146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349174, 34.989662, 45.747860>,  <37.602371, 34.704681, 45.475060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349174, 34.989662, 45.747860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059761, 35.242352, 45.859161>,  <37.886112, 35.393967, 45.925941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059761, 35.242352, 45.859161>,  <38.349174, 34.989662, 45.747860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059761, 35.242352, 45.859161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309774, -0.063086, 0.948715,
		0.616882, 0.772620, -0.150048,
		-0.723530, 0.631726, 0.278255,
		37.842701, 35.431870, 45.942638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909676, 35.562355, 45.452255>,  <38.349174, 34.989662, 45.747860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909676, 35.562355, 45.452255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308308, 35.532104, 45.465538>,  <39.547489, 35.513954, 45.473507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308308, 35.532104, 45.465538>,  <38.909676, 35.562355, 45.452255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308308, 35.532104, 45.465538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037004, 0.049387, -0.998094,
		0.073844, 0.995912, 0.052017,
		0.996583, -0.075629, 0.033206,
		39.607281, 35.509415, 45.475498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262627, 36.101616, 45.071575>,  <38.909676, 35.562355, 45.452255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262627, 36.101616, 45.071575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.535744, 35.809555, 45.061165>,  <39.699615, 35.634319, 45.054916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.535744, 35.809555, 45.061165>,  <39.262627, 36.101616, 45.071575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535744, 35.809555, 45.061165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021971, 0.015090, -0.999645,
		0.730282, 0.683122, -0.005739,
		0.682792, -0.730149, -0.026028,
		39.740582, 35.590511, 45.053356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839745, 36.237713, 44.688988>,  <39.262627, 36.101616, 45.071575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839745, 36.237713, 44.688988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.817276, 35.839031, 44.665588>,  <39.803795, 35.599823, 44.651550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.817276, 35.839031, 44.665588>,  <39.839745, 36.237713, 44.688988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817276, 35.839031, 44.665588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224965, 0.044450, -0.973352,
		0.972747, -0.067831, 0.221727,
		-0.056167, -0.996706, -0.058498,
		39.800426, 35.540020, 44.648041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481037, 36.065369, 44.403004>,  <39.839745, 36.237713, 44.688988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481037, 36.065369, 44.403004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297443, 35.712658, 44.359550>,  <40.187286, 35.501030, 44.333481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297443, 35.712658, 44.359550>,  <40.481037, 36.065369, 44.403004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297443, 35.712658, 44.359550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064493, 0.088880, -0.993952,
		0.886100, -0.463216, 0.016074,
		-0.458986, -0.881777, -0.108631,
		40.159748, 35.448124, 44.326962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828377, 35.758278, 43.934414>,  <40.481037, 36.065369, 44.403004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828377, 35.758278, 43.934414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489418, 35.545902, 43.936199>,  <40.286041, 35.418476, 43.937271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489418, 35.545902, 43.936199>,  <40.828377, 35.758278, 43.934414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489418, 35.545902, 43.936199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040282, -0.072676, -0.996542,
		0.529425, -0.844290, 0.082972,
		-0.847400, -0.530936, 0.004467,
		40.235199, 35.386623, 43.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886955, 35.251587, 43.528526>,  <40.828377, 35.758278, 43.934414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886955, 35.251587, 43.528526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.487453, 35.262825, 43.545010>,  <40.247753, 35.269569, 43.554897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.487453, 35.262825, 43.545010>,  <40.886955, 35.251587, 43.528526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487453, 35.262825, 43.545010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044334, -0.121774, -0.991567,
		-0.022841, -0.992160, 0.122868,
		-0.998755, 0.028096, 0.041205,
		40.187828, 35.271255, 43.557373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701466, 34.611034, 43.128284>,  <40.886955, 35.251587, 43.528526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701466, 34.611034, 43.128284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.399891, 34.873318, 43.144413>,  <40.218945, 35.030685, 43.154091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.399891, 34.873318, 43.144413>,  <40.701466, 34.611034, 43.128284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399891, 34.873318, 43.144413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145260, -0.106536, -0.983641,
		-0.640681, -0.747464, 0.175569,
		-0.753941, 0.655704, 0.040321,
		40.173710, 35.070030, 43.156509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152149, 34.296810, 42.853691>,  <40.701466, 34.611034, 43.128284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152149, 34.296810, 42.853691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073769, 34.687519, 42.819004>,  <40.026741, 34.921944, 42.798191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073769, 34.687519, 42.819004>,  <40.152149, 34.296810, 42.853691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073769, 34.687519, 42.819004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107106, -0.109221, -0.988230,
		-0.974747, -0.184355, 0.126020,
		-0.195949, 0.976772, -0.086718,
		40.014984, 34.980553, 42.792988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492165, 34.281971, 42.423569>,  <40.152149, 34.296810, 42.853691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492165, 34.281971, 42.423569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659657, 34.644684, 42.403896>,  <39.760151, 34.862312, 42.392094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659657, 34.644684, 42.403896>,  <39.492165, 34.281971, 42.423569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659657, 34.644684, 42.403896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010114, -0.049494, -0.998723,
		-0.908054, 0.418693, -0.011553,
		0.418730, 0.906778, -0.049178,
		39.785275, 34.916718, 42.389141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166145, 34.708225, 41.881763>,  <39.492165, 34.281971, 42.423569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166145, 34.708225, 41.881763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.523312, 34.882206, 41.928272>,  <39.737610, 34.986595, 41.956177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.523312, 34.882206, 41.928272>,  <39.166145, 34.708225, 41.881763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523312, 34.882206, 41.928272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132264, -0.006555, -0.991193,
		-0.430355, 0.900432, -0.063381,
		0.892917, 0.434948, 0.116273,
		39.791187, 35.012691, 41.963154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152836, 35.394081, 41.448048>,  <39.166145, 34.708225, 41.881763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152836, 35.394081, 41.448048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.527393, 35.281826, 41.532345>,  <39.752129, 35.214474, 41.582924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.527393, 35.281826, 41.532345>,  <39.152836, 35.394081, 41.448048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527393, 35.281826, 41.532345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255774, 0.134522, -0.957331,
		0.240310, 0.950341, 0.197744,
		0.936392, -0.280634, 0.210746,
		39.808311, 35.197636, 41.595570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606880, 35.932438, 41.160606>,  <39.152836, 35.394081, 41.448048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606880, 35.932438, 41.160606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.873127, 35.635597, 41.192177>,  <40.032875, 35.457493, 41.211121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.873127, 35.635597, 41.192177>,  <39.606880, 35.932438, 41.160606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873127, 35.635597, 41.192177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355409, 0.222222, -0.907911,
		0.656226, 0.632376, 0.411666,
		0.665622, -0.742104, 0.078925,
		40.072815, 35.412968, 41.215855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122761, 36.211521, 40.904148>,  <39.606880, 35.932438, 41.160606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122761, 36.211521, 40.904148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205860, 35.820301, 40.897804>,  <40.255722, 35.585567, 40.893997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205860, 35.820301, 40.897804>,  <40.122761, 36.211521, 40.904148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205860, 35.820301, 40.897804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409665, 0.101719, -0.906547,
		0.888265, 0.181839, 0.421806,
		0.207751, -0.978053, -0.015860,
		40.268185, 35.526886, 40.893047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647961, 36.267403, 40.516655>,  <40.122761, 36.211521, 40.904148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647961, 36.267403, 40.516655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544487, 35.881039, 40.520603>,  <40.482403, 35.649220, 40.522972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544487, 35.881039, 40.520603>,  <40.647961, 36.267403, 40.516655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544487, 35.881039, 40.520603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247430, -0.076140, -0.965909,
		0.933735, -0.247422, 0.258692,
		-0.258684, -0.965912, 0.009875,
		40.466881, 35.591267, 40.523567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.809967, 31.147215, 41.063629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.708427, 31.532475, 41.099182>,  <27.647503, 31.763630, 41.120514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.708427, 31.532475, 41.099182>,  <27.809967, 31.147215, 41.063629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708427, 31.532475, 41.099182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238273, 0.151334, -0.959335,
		-0.937436, -0.222348, -0.267909,
		-0.253850, 0.963151, 0.088886,
		27.632273, 31.821421, 41.125847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289021, 31.265224, 40.568378>,  <27.809967, 31.147215, 41.063629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289021, 31.265224, 40.568378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452997, 31.624365, 40.632645>,  <27.551384, 31.839849, 40.671204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452997, 31.624365, 40.632645>,  <27.289021, 31.265224, 40.568378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452997, 31.624365, 40.632645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118655, 0.122157, -0.985393,
		-0.904361, 0.423017, -0.056457,
		0.409941, 0.897850, 0.160667,
		27.575979, 31.893721, 40.680843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954433, 31.744635, 40.212975>,  <27.289021, 31.265224, 40.568378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954433, 31.744635, 40.212975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.317089, 31.904375, 40.267418>,  <27.534681, 32.000221, 40.300083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.317089, 31.904375, 40.267418>,  <26.954433, 31.744635, 40.212975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317089, 31.904375, 40.267418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052210, 0.213937, -0.975451,
		-0.418667, 0.891487, 0.173113,
		0.906638, 0.399351, 0.136113,
		27.589081, 32.024181, 40.308250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871258, 32.408604, 39.918175>,  <26.954433, 31.744635, 40.212975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871258, 32.408604, 39.918175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.261402, 32.321510, 39.932392>,  <27.495489, 32.269253, 39.940922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.261402, 32.321510, 39.932392>,  <26.871258, 32.408604, 39.918175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261402, 32.321510, 39.932392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088280, 0.237539, -0.967358,
		0.202184, 0.946661, 0.250908,
		0.975361, -0.217735, 0.035545,
		27.554010, 32.256191, 39.943054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127094, 32.923874, 39.564812>,  <26.871258, 32.408604, 39.918175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127094, 32.923874, 39.564812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406713, 32.637848, 39.563725>,  <27.574486, 32.466232, 39.563072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406713, 32.637848, 39.563725>,  <27.127094, 32.923874, 39.564812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406713, 32.637848, 39.563725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288529, 0.285534, -0.913904,
		0.654280, 0.638081, 0.405921,
		0.699049, -0.715069, -0.002715,
		27.616428, 32.423328, 39.562908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685555, 33.200218, 39.175274>,  <27.127094, 32.923874, 39.564812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685555, 33.200218, 39.175274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.769918, 32.809216, 39.175133>,  <27.820538, 32.574615, 39.175049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.769918, 32.809216, 39.175133>,  <27.685555, 33.200218, 39.175274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769918, 32.809216, 39.175133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078733, 0.017347, -0.996745,
		0.974329, 0.210196, 0.080621,
		0.210911, -0.977505, -0.000352,
		27.833191, 32.515965, 39.175026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333845, 33.219326, 39.000412>,  <27.685555, 33.200218, 39.175274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333845, 33.219326, 39.000412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.207396, 32.850445, 38.911324>,  <28.131525, 32.629116, 38.857872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.207396, 32.850445, 38.911324>,  <28.333845, 33.219326, 39.000412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207396, 32.850445, 38.911324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230038, 0.153244, -0.961041,
		0.920407, -0.355042, 0.163698,
		-0.316124, -0.922205, -0.222720,
		28.112558, 32.573784, 38.844509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877024, 32.973057, 38.713364>,  <28.333845, 33.219326, 39.000412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877024, 32.973057, 38.713364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571747, 32.739506, 38.602634>,  <28.388580, 32.599377, 38.536198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571747, 32.739506, 38.602634>,  <28.877024, 32.973057, 38.713364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571747, 32.739506, 38.602634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175362, 0.225170, -0.958409,
		0.621924, -0.779991, -0.069457,
		-0.763190, -0.583877, -0.276820,
		28.342791, 32.564342, 38.519588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054092, 32.669567, 38.200676>,  <28.877024, 32.973057, 38.713364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054092, 32.669567, 38.200676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666605, 32.590073, 38.141224>,  <28.434113, 32.542377, 38.105553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666605, 32.590073, 38.141224>,  <29.054092, 32.669567, 38.200676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666605, 32.590073, 38.141224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134271, 0.083940, -0.987383,
		0.208701, -0.976452, -0.054630,
		-0.968718, -0.198733, -0.148628,
		28.375990, 32.530453, 38.096634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963303, 32.181721, 37.583969>,  <29.054092, 32.669567, 38.200676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963303, 32.181721, 37.583969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614489, 32.375137, 37.614285>,  <28.405201, 32.491188, 37.632473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614489, 32.375137, 37.614285>,  <28.963303, 32.181721, 37.583969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614489, 32.375137, 37.614285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027779, 0.203492, -0.978682,
		-0.488654, -0.851340, -0.190885,
		-0.872035, 0.483540, 0.075787,
		28.352879, 32.520199, 37.637020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657074, 32.000664, 37.051117>,  <28.963303, 32.181721, 37.583969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657074, 32.000664, 37.051117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407103, 32.300987, 37.136681>,  <28.257120, 32.481182, 37.188019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407103, 32.300987, 37.136681>,  <28.657074, 32.000664, 37.051117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407103, 32.300987, 37.136681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187899, 0.121288, -0.974671,
		-0.757732, -0.649293, 0.065279,
		-0.624929, 0.750805, 0.213905,
		28.219624, 32.526230, 37.200851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994492, 31.818676, 36.629173>,  <28.657074, 32.000664, 37.051117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994492, 31.818676, 36.629173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007755, 32.211784, 36.701908>,  <28.015713, 32.447651, 36.745548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007755, 32.211784, 36.701908>,  <27.994492, 31.818676, 36.629173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007755, 32.211784, 36.701908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226480, 0.184590, -0.956365,
		-0.973451, -0.009471, 0.228698,
		0.033158, 0.982770, 0.181834,
		28.017702, 32.506615, 36.756458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395760, 32.017296, 36.402100>,  <27.994492, 31.818676, 36.629173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395760, 32.017296, 36.402100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.606110, 32.357452, 36.408966>,  <27.732321, 32.561546, 36.413086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.606110, 32.357452, 36.408966>,  <27.395760, 32.017296, 36.402100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606110, 32.357452, 36.408966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447818, 0.293972, -0.844417,
		-0.723127, 0.436374, 0.535412,
		0.525877, 0.850387, 0.017163,
		27.763872, 32.612568, 36.414116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998241, 32.546703, 36.323776>,  <27.395760, 32.017296, 36.402100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998241, 32.546703, 36.323776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.341831, 32.711136, 36.201675>,  <27.547985, 32.809795, 36.128414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.341831, 32.711136, 36.201675>,  <26.998241, 32.546703, 36.323776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341831, 32.711136, 36.201675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464802, 0.375967, -0.801629,
		-0.214766, 0.830460, 0.514015,
		0.858973, 0.411078, -0.305254,
		27.599524, 32.834457, 36.110100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800901, 33.278896, 36.115837>,  <26.998241, 32.546703, 36.323776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800901, 33.278896, 36.115837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156502, 33.200527, 35.950291>,  <27.369862, 33.153503, 35.850964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156502, 33.200527, 35.950291>,  <26.800901, 33.278896, 36.115837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156502, 33.200527, 35.950291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320927, 0.378103, -0.868357,
		0.326620, 0.904794, 0.273256,
		0.889002, -0.195927, -0.413869,
		27.423203, 33.141750, 35.826130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864727, 33.787823, 35.572674>,  <26.800901, 33.278896, 36.115837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864727, 33.787823, 35.572674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117603, 33.497761, 35.463505>,  <27.269329, 33.323723, 35.398003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117603, 33.497761, 35.463505>,  <26.864727, 33.787823, 35.572674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117603, 33.497761, 35.463505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317924, 0.078447, -0.944865,
		0.706584, 0.684102, -0.180951,
		0.632189, -0.725156, -0.272922,
		27.307261, 33.280212, 35.381630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258535, 34.068977, 34.966122>,  <26.864727, 33.787823, 35.572674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258535, 34.068977, 34.966122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300076, 33.673237, 34.925346>,  <27.324999, 33.435791, 34.900883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300076, 33.673237, 34.925346>,  <27.258535, 34.068977, 34.966122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300076, 33.673237, 34.925346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238001, 0.074793, -0.968381,
		0.965697, 0.124827, -0.227701,
		0.103850, -0.989355, -0.101936,
		27.331230, 33.376431, 34.894764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848171, 33.998425, 34.426243>,  <27.258535, 34.068977, 34.966122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848171, 33.998425, 34.426243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611897, 33.677464, 34.460297>,  <27.470133, 33.484886, 34.480728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611897, 33.677464, 34.460297>,  <27.848171, 33.998425, 34.426243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611897, 33.677464, 34.460297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030269, -0.083404, -0.996056,
		0.806335, -0.590932, 0.024978,
		-0.590684, -0.802399, 0.085138,
		27.434690, 33.436745, 34.485840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078165, 33.691319, 33.882912>,  <27.848171, 33.998425, 34.426243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078165, 33.691319, 33.882912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.758610, 33.460602, 33.951126>,  <27.566877, 33.322170, 33.992054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.758610, 33.460602, 33.951126>,  <28.078165, 33.691319, 33.882912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758610, 33.460602, 33.951126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207876, -0.001286, -0.978154,
		0.564415, -0.816887, -0.118875,
		-0.798888, -0.576797, 0.170538,
		27.518944, 33.287563, 34.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553989, 34.011719, 34.409592>,  <28.078165, 33.691319, 33.882912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553989, 34.011719, 34.409592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371004, 34.316727, 34.226601>,  <28.261213, 34.499733, 34.116806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371004, 34.316727, 34.226601>,  <28.553989, 34.011719, 34.409592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371004, 34.316727, 34.226601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534694, 0.646948, 0.543655,
		0.710515, 0.004090, -0.703671,
		-0.457462, 0.762524, -0.457479,
		28.233767, 34.545483, 34.089355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022676, 34.573299, 34.492561>,  <28.553989, 34.011719, 34.409592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022676, 34.573299, 34.492561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404892, 34.691193, 34.489136>,  <29.634222, 34.761929, 34.487080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404892, 34.691193, 34.489136>,  <29.022676, 34.573299, 34.492561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404892, 34.691193, 34.489136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015073, -0.019813, 0.999690,
		0.294476, -0.955373, -0.023375,
		0.955540, 0.294737, -0.008566,
		29.691553, 34.779613, 34.486565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485008, 34.054871, 34.860329>,  <29.022676, 34.573299, 34.492561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485008, 34.054871, 34.860329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684059, 34.399536, 34.900127>,  <29.803490, 34.606335, 34.924007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684059, 34.399536, 34.900127>,  <29.485008, 34.054871, 34.860329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684059, 34.399536, 34.900127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022953, -0.127747, 0.991541,
		0.867087, -0.491135, -0.083349,
		0.497628, 0.861665, 0.099495,
		29.833347, 34.658035, 34.929977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856806, 33.934772, 35.471325>,  <29.485008, 34.054871, 34.860329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856806, 33.934772, 35.471325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876049, 34.330860, 35.418934>,  <29.887594, 34.568512, 35.387497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876049, 34.330860, 35.418934>,  <29.856806, 33.934772, 35.471325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876049, 34.330860, 35.418934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081470, 0.126807, 0.988576,
		0.995514, -0.058229, -0.074572,
		0.048107, 0.990217, -0.130982,
		29.890482, 34.627926, 35.379639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568903, 34.189690, 35.766369>,  <29.856806, 33.934772, 35.471325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568903, 34.189690, 35.766369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.322557, 34.504810, 35.769897>,  <30.174749, 34.693882, 35.772015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.322557, 34.504810, 35.769897>,  <30.568903, 34.189690, 35.766369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322557, 34.504810, 35.769897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204338, 0.148911, 0.967508,
		0.760892, 0.597656, -0.252687,
		-0.615864, 0.787803, 0.008818,
		30.137798, 34.741150, 35.772545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879595, 34.719860, 36.302544>,  <30.568903, 34.189690, 35.766369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879595, 34.719860, 36.302544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489492, 34.792946, 36.252762>,  <30.255430, 34.836796, 36.222893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489492, 34.792946, 36.252762>,  <30.879595, 34.719860, 36.302544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489492, 34.792946, 36.252762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098627, 0.144256, 0.984613,
		0.197852, 0.972526, -0.122667,
		-0.975258, 0.182710, -0.124459,
		30.196915, 34.847759, 36.215424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664026, 35.336842, 36.633858>,  <30.879595, 34.719860, 36.302544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664026, 35.336842, 36.633858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.309229, 35.159691, 36.581547>,  <30.096350, 35.053398, 36.550159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.309229, 35.159691, 36.581547>,  <30.664026, 35.336842, 36.633858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309229, 35.159691, 36.581547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207803, 0.129906, 0.969507,
		-0.412385, 0.887121, -0.207257,
		-0.886993, -0.442879, -0.130775,
		30.043131, 35.026829, 36.542313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265383, 35.719414, 37.235695>,  <30.664026, 35.336842, 36.633858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265383, 35.719414, 37.235695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059803, 35.395046, 37.123795>,  <29.936455, 35.200424, 37.056656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059803, 35.395046, 37.123795>,  <30.265383, 35.719414, 37.235695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059803, 35.395046, 37.123795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095975, -0.269713, 0.958146,
		-0.852434, 0.519289, 0.060790,
		-0.513950, -0.810922, -0.279751,
		29.905619, 35.151768, 37.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638042, 35.698559, 37.668583>,  <30.265383, 35.719414, 37.235695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638042, 35.698559, 37.668583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728144, 35.325325, 37.556435>,  <29.782204, 35.101383, 37.489147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728144, 35.325325, 37.556435>,  <29.638042, 35.698559, 37.668583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728144, 35.325325, 37.556435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107693, -0.309845, 0.944668,
		-0.968331, -0.182594, -0.170281,
		0.225251, -0.933089, -0.280368,
		29.795719, 35.045399, 37.472324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139997, 35.367252, 38.040581>,  <29.638042, 35.698559, 37.668583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139997, 35.367252, 38.040581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424799, 35.098396, 37.959312>,  <29.595680, 34.937084, 37.910549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424799, 35.098396, 37.959312>,  <29.139997, 35.367252, 38.040581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424799, 35.098396, 37.959312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144248, -0.423185, 0.894487,
		-0.687202, -0.607568, -0.398264,
		0.712001, -0.672142, -0.203173,
		29.638399, 34.896755, 37.898361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890152, 34.675381, 38.319492>,  <29.139997, 35.367252, 38.040581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890152, 34.675381, 38.319492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288818, 34.658478, 38.291580>,  <29.528019, 34.648335, 38.274834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288818, 34.658478, 38.291580>,  <28.890152, 34.675381, 38.319492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288818, 34.658478, 38.291580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044912, -0.429838, 0.901788,
		-0.068102, -0.901917, -0.426507,
		0.996667, -0.042259, -0.069780,
		29.587818, 34.645802, 38.270645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053547, 33.980080, 38.472858>,  <28.890152, 34.675381, 38.319492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053547, 33.980080, 38.472858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367809, 34.212715, 38.557236>,  <29.556368, 34.352295, 38.607864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367809, 34.212715, 38.557236>,  <29.053547, 33.980080, 38.472858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367809, 34.212715, 38.557236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080367, -0.434029, 0.897307,
		0.613419, -0.688023, -0.387739,
		0.785658, 0.581586, 0.210948,
		29.603506, 34.387192, 38.620522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494112, 33.502213, 38.863247>,  <29.053547, 33.980080, 38.472858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494112, 33.502213, 38.863247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.664703, 33.858673, 38.925163>,  <29.767059, 34.072548, 38.962315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.664703, 33.858673, 38.925163>,  <29.494112, 33.502213, 38.863247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664703, 33.858673, 38.925163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095789, -0.214675, 0.971977,
		0.899411, -0.399701, -0.176918,
		0.426480, 0.891153, 0.154794,
		29.792648, 34.126019, 38.971603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205427, 33.435680, 39.155125>,  <29.494112, 33.502213, 38.863247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205427, 33.435680, 39.155125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059010, 33.792519, 39.261086>,  <29.971159, 34.006622, 39.324661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059010, 33.792519, 39.261086>,  <30.205427, 33.435680, 39.155125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059010, 33.792519, 39.261086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221054, -0.193153, 0.955943,
		0.903961, 0.408476, -0.126499,
		-0.366046, 0.892098, 0.264898,
		29.949196, 34.060146, 39.340553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505814, 33.472340, 39.755581>,  <30.205427, 33.435680, 39.155125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505814, 33.472340, 39.755581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264423, 33.790203, 39.781940>,  <30.119589, 33.980919, 39.797756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264423, 33.790203, 39.781940>,  <30.505814, 33.472340, 39.755581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264423, 33.790203, 39.781940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058604, -0.038216, 0.997550,
		0.795226, 0.605858, -0.023507,
		-0.603475, 0.794655, 0.065896,
		30.083382, 34.028599, 39.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854301, 33.978088, 40.151245>,  <30.505814, 33.472340, 39.755581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854301, 33.978088, 40.151245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462614, 34.058075, 40.164780>,  <30.227602, 34.106068, 40.172901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462614, 34.058075, 40.164780>,  <30.854301, 33.978088, 40.151245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462614, 34.058075, 40.164780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022556, -0.058425, 0.998037,
		0.201547, 0.978060, 0.052701,
		-0.979219, 0.199963, 0.033837,
		30.168848, 34.118065, 40.174931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796318, 34.492214, 40.567383>,  <30.854301, 33.978088, 40.151245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796318, 34.492214, 40.567383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430704, 34.329979, 40.564804>,  <30.211336, 34.232639, 40.563255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430704, 34.329979, 40.564804>,  <30.796318, 34.492214, 40.567383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430704, 34.329979, 40.564804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020056, 0.029314, 0.999369,
		-0.405145, 0.913585, -0.034929,
		-0.914033, -0.405590, -0.006446,
		30.156494, 34.208302, 40.562870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359613, 34.933189, 40.986187>,  <30.796318, 34.492214, 40.567383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359613, 34.933189, 40.986187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187645, 34.572052, 40.988811>,  <30.084463, 34.355370, 40.990387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187645, 34.572052, 40.988811>,  <30.359613, 34.933189, 40.986187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187645, 34.572052, 40.988811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243693, 0.123032, 0.962017,
		-0.869357, 0.411993, -0.272911,
		-0.429921, -0.902843, 0.006559,
		30.058668, 34.301201, 40.990780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710655, 35.094444, 41.216709>,  <30.359613, 34.933189, 40.986187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710655, 35.094444, 41.216709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771391, 34.701969, 41.264389>,  <29.807833, 34.466484, 41.292995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771391, 34.701969, 41.264389>,  <29.710655, 35.094444, 41.216709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771391, 34.701969, 41.264389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198827, 0.087808, 0.976093,
		-0.968201, -0.171907, -0.181755,
		0.151838, -0.981192, 0.119195,
		29.816942, 34.407612, 41.300148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058266, 34.787663, 41.551838>,  <29.710655, 35.094444, 41.216709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058266, 34.787663, 41.551838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.364807, 34.538898, 41.616249>,  <29.548733, 34.389641, 41.654896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.364807, 34.538898, 41.616249>,  <29.058266, 34.787663, 41.551838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364807, 34.538898, 41.616249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267940, -0.081611, 0.959973,
		-0.583875, -0.778825, -0.229177,
		0.766354, -0.621910, 0.161028,
		29.594713, 34.352325, 41.664558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867098, 34.492226, 42.143494>,  <29.058266, 34.787663, 41.551838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867098, 34.492226, 42.143494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218985, 34.302586, 42.128929>,  <29.430117, 34.188801, 42.120190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218985, 34.302586, 42.128929>,  <28.867098, 34.492226, 42.143494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218985, 34.302586, 42.128929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097909, -0.255542, 0.961827,
		-0.465309, -0.842570, -0.271224,
		0.879716, -0.474102, -0.036411,
		29.482899, 34.160355, 42.118008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831411, 33.771923, 42.376244>,  <28.867098, 34.492226, 42.143494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831411, 33.771923, 42.376244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196680, 33.921139, 42.441921>,  <29.415840, 34.010670, 42.481327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196680, 33.921139, 42.441921>,  <28.831411, 33.771923, 42.376244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196680, 33.921139, 42.441921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016874, -0.437120, 0.899245,
		0.407228, -0.818393, -0.405460,
		0.913171, 0.373039, 0.164198,
		29.470631, 34.033051, 42.491180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142729, 33.297199, 42.709526>,  <28.831411, 33.771923, 42.376244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142729, 33.297199, 42.709526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.396757, 33.601643, 42.762280>,  <29.549173, 33.784309, 42.793930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.396757, 33.601643, 42.762280>,  <29.142729, 33.297199, 42.709526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396757, 33.601643, 42.762280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114780, -0.261817, 0.958268,
		0.763879, -0.593430, -0.253633,
		0.635071, 0.761113, 0.131883,
		29.587278, 33.829975, 42.801846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.948528, 33.090641, 45.153934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.620567, 32.862453, 45.134682>,  <41.423790, 32.725540, 45.123131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.620567, 32.862453, 45.134682>,  <41.948528, 33.090641, 45.153934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620567, 32.862453, 45.134682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107221, 0.070432, 0.991737,
		-0.562367, 0.818292, -0.118914,
		-0.819907, -0.570471, -0.048130,
		41.374596, 32.691311, 45.120243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411926, 33.423450, 45.460243>,  <41.948528, 33.090641, 45.153934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411926, 33.423450, 45.460243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.302994, 33.039139, 45.481152>,  <41.237633, 32.808552, 45.493698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.302994, 33.039139, 45.481152>,  <41.411926, 33.423450, 45.460243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302994, 33.039139, 45.481152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131430, 0.090959, 0.987144,
		-0.953185, 0.261959, -0.151047,
		-0.272330, -0.960783, 0.052271,
		41.221294, 32.750904, 45.496834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745007, 33.392982, 45.841702>,  <41.411926, 33.423450, 45.460243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745007, 33.392982, 45.841702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904854, 33.027809, 45.874813>,  <41.000763, 32.808704, 45.894680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904854, 33.027809, 45.874813>,  <40.745007, 33.392982, 45.841702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904854, 33.027809, 45.874813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022231, 0.080626, 0.996496,
		-0.916412, -0.400058, 0.011924,
		0.399618, -0.912936, 0.082781,
		41.024738, 32.753929, 45.899647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356907, 33.068367, 46.377190>,  <40.745007, 33.392982, 45.841702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356907, 33.068367, 46.377190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.681122, 32.834103, 46.375160>,  <40.875652, 32.693542, 46.373943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.681122, 32.834103, 46.375160>,  <40.356907, 33.068367, 46.377190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681122, 32.834103, 46.375160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025155, -0.043462, 0.998738,
		-0.585142, -0.809390, -0.049960,
		0.810540, -0.585661, -0.005072,
		40.924286, 32.658405, 46.373638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159821, 32.530308, 46.754799>,  <40.356907, 33.068367, 46.377190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159821, 32.530308, 46.754799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559673, 32.534142, 46.764885>,  <40.799587, 32.536442, 46.770939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559673, 32.534142, 46.764885>,  <40.159821, 32.530308, 46.754799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559673, 32.534142, 46.764885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025241, 0.002237, 0.999679,
		0.009557, -0.999951, 0.002479,
		0.999636, 0.009617, 0.025219,
		40.859566, 32.537018, 46.772449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283047, 31.931337, 47.180878>,  <40.159821, 32.530308, 46.754799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283047, 31.931337, 47.180878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.629765, 32.130486, 47.169662>,  <40.837795, 32.249973, 47.162933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.629765, 32.130486, 47.169662>,  <40.283047, 31.931337, 47.180878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629765, 32.130486, 47.169662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096480, -0.112278, 0.988982,
		0.489235, -0.859954, -0.145357,
		0.866799, 0.497868, -0.028038,
		40.889805, 32.279846, 47.161251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793121, 31.487329, 47.360668>,  <40.283047, 31.931337, 47.180878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793121, 31.487329, 47.360668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905899, 31.858799, 47.457066>,  <40.973564, 32.081680, 47.514904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905899, 31.858799, 47.457066>,  <40.793121, 31.487329, 47.360668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905899, 31.858799, 47.457066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047175, -0.264295, 0.963288,
		0.958271, -0.260223, -0.118326,
		0.281942, 0.928672, 0.240990,
		40.990482, 32.137402, 47.529362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377941, 31.404375, 47.865833>,  <40.793121, 31.487329, 47.360668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377941, 31.404375, 47.865833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.297390, 31.790642, 47.931480>,  <41.249058, 32.022400, 47.970867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.297390, 31.790642, 47.931480>,  <41.377941, 31.404375, 47.865833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297390, 31.790642, 47.931480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210890, -0.120873, 0.970008,
		0.956541, 0.229953, -0.179308,
		-0.201383, 0.965666, 0.164115,
		41.236977, 32.080341, 47.980717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982037, 31.686653, 48.272022>,  <41.377941, 31.404375, 47.865833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982037, 31.686653, 48.272022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.646564, 31.896229, 48.331490>,  <41.445282, 32.021973, 48.367168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.646564, 31.896229, 48.331490>,  <41.982037, 31.686653, 48.272022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646564, 31.896229, 48.331490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244106, 0.117606, 0.962591,
		0.486855, 0.843597, -0.226531,
		-0.838680, 0.523940, 0.148670,
		41.394962, 32.053410, 48.376091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203461, 32.328167, 48.717705>,  <41.982037, 31.686653, 48.272022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203461, 32.328167, 48.717705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.820827, 32.229301, 48.779480>,  <41.591248, 32.169983, 48.816544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.820827, 32.229301, 48.779480>,  <42.203461, 32.328167, 48.717705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820827, 32.229301, 48.779480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186966, -0.113922, 0.975738,
		-0.223577, 0.962253, 0.155188,
		-0.956586, -0.247168, 0.154438,
		41.533852, 32.155151, 48.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031979, 32.937504, 49.181129>,  <42.203461, 32.328167, 48.717705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031979, 32.937504, 49.181129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.733829, 32.671280, 49.196396>,  <41.554939, 32.511547, 49.205555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.733829, 32.671280, 49.196396>,  <42.031979, 32.937504, 49.181129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733829, 32.671280, 49.196396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127126, 0.198102, 0.971902,
		-0.654417, 0.719576, -0.232269,
		-0.745371, -0.665557, 0.038164,
		41.510220, 32.471611, 49.207844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574593, 33.176609, 49.714600>,  <42.031979, 32.937504, 49.181129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574593, 33.176609, 49.714600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.476913, 32.790253, 49.680153>,  <41.418308, 32.558437, 49.659485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.476913, 32.790253, 49.680153>,  <41.574593, 33.176609, 49.714600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476913, 32.790253, 49.680153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032102, -0.080706, 0.996221,
		-0.969195, 0.246037, -0.011299,
		-0.244196, -0.965895, -0.086118,
		41.403656, 32.500484, 49.654316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465012, 32.750366, 50.389946>,  <41.574593, 33.176609, 49.714600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465012, 32.750366, 50.389946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065922, 32.726562, 50.402607>,  <40.826469, 32.712280, 50.410202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065922, 32.726562, 50.402607>,  <41.465012, 32.750366, 50.389946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065922, 32.726562, 50.402607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016113, 0.245346, 0.969302,
		-0.065449, 0.967607, -0.243829,
		-0.997726, -0.059511, 0.031649,
		40.766605, 32.708710, 50.412102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227322, 33.386478, 50.458778>,  <41.465012, 32.750366, 50.389946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227322, 33.386478, 50.458778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.956001, 33.134747, 50.610493>,  <40.793209, 32.983707, 50.701523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.956001, 33.134747, 50.610493>,  <41.227322, 33.386478, 50.458778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956001, 33.134747, 50.610493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152795, 0.384100, 0.910561,
		-0.718726, 0.675584, -0.164376,
		-0.678298, -0.629327, 0.379288,
		40.752514, 32.945950, 50.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727859, 33.824253, 50.840054>,  <41.227322, 33.386478, 50.458778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727859, 33.824253, 50.840054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.492714, 34.135536, 50.928429>,  <40.351627, 34.322304, 50.981453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.492714, 34.135536, 50.928429>,  <40.727859, 33.824253, 50.840054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492714, 34.135536, 50.928429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057589, 0.232165, -0.970970,
		-0.806908, -0.583521, -0.091665,
		-0.587863, 0.778205, 0.220941,
		40.316357, 34.368999, 50.994713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129169, 33.832729, 50.400757>,  <40.727859, 33.824253, 50.840054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129169, 33.832729, 50.400757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.152325, 34.210945, 50.528889>,  <40.166218, 34.437874, 50.605766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.152325, 34.210945, 50.528889>,  <40.129169, 33.832729, 50.400757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152325, 34.210945, 50.528889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172960, 0.325515, -0.929583,
		-0.983226, -0.001589, 0.182385,
		0.057892, 0.945535, 0.320329,
		40.169693, 34.494606, 50.624989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593880, 34.252541, 49.987015>,  <40.129169, 33.832729, 50.400757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593880, 34.252541, 49.987015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.817226, 34.564075, 50.101307>,  <39.951233, 34.750996, 50.169880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.817226, 34.564075, 50.101307>,  <39.593880, 34.252541, 49.987015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817226, 34.564075, 50.101307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131517, 0.423166, -0.896456,
		-0.819103, 0.462974, 0.338712,
		0.558368, 0.778836, 0.285728,
		39.984737, 34.797726, 50.187027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314007, 34.892460, 49.622307>,  <39.593880, 34.252541, 49.987015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314007, 34.892460, 49.622307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676994, 35.017990, 49.734032>,  <39.894787, 35.093307, 49.801067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676994, 35.017990, 49.734032>,  <39.314007, 34.892460, 49.622307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676994, 35.017990, 49.734032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162518, 0.350853, -0.922220,
		-0.387413, 0.882279, 0.267385,
		0.907468, 0.313825, 0.279311,
		39.949234, 35.112137, 49.817825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344212, 35.622402, 49.509457>,  <39.314007, 34.892460, 49.622307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344212, 35.622402, 49.509457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.717365, 35.478397, 49.513809>,  <39.941257, 35.391994, 49.516422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.717365, 35.478397, 49.513809>,  <39.344212, 35.622402, 49.509457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717365, 35.478397, 49.513809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104732, 0.242229, -0.964550,
		0.344617, 0.900952, 0.263676,
		0.932883, -0.360016, 0.010882,
		39.997231, 35.370392, 49.517075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593292, 36.019939, 48.958542>,  <39.344212, 35.622402, 49.509457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593292, 36.019939, 48.958542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.865936, 35.730892, 49.004562>,  <40.029522, 35.557465, 49.032177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.865936, 35.730892, 49.004562>,  <39.593292, 36.019939, 48.958542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865936, 35.730892, 49.004562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155954, -0.010160, -0.987712,
		0.714907, 0.691173, 0.105770,
		0.681606, -0.722618, 0.115055,
		40.070419, 35.514107, 49.039078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194412, 36.296349, 48.708168>,  <39.593292, 36.019939, 48.958542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194412, 36.296349, 48.708168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182476, 35.897243, 48.684208>,  <40.175312, 35.657780, 48.669834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182476, 35.897243, 48.684208>,  <40.194412, 36.296349, 48.708168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182476, 35.897243, 48.684208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318821, 0.047292, -0.946635,
		0.947345, -0.047348, 0.316695,
		-0.029844, -0.997759, -0.059897,
		40.173523, 35.597916, 48.666241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321781, 36.221069, 48.102314>,  <40.194412, 36.296349, 48.708168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321781, 36.221069, 48.102314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.284653, 35.829170, 48.173275>,  <40.262375, 35.594028, 48.215851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.284653, 35.829170, 48.173275>,  <40.321781, 36.221069, 48.102314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284653, 35.829170, 48.173275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081682, -0.185067, -0.979325,
		0.992327, -0.076411, 0.097206,
		-0.092821, -0.979751, 0.177406,
		40.256805, 35.535244, 48.226498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903202, 35.831028, 47.795860>,  <40.321781, 36.221069, 48.102314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903202, 35.831028, 47.795860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.596153, 35.575363, 47.814739>,  <40.411926, 35.421963, 47.826065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.596153, 35.575363, 47.814739>,  <40.903202, 35.831028, 47.795860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596153, 35.575363, 47.814739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094578, -0.185802, -0.978025,
		0.633890, -0.746287, 0.203076,
		-0.767619, -0.639166, 0.047196,
		40.365868, 35.383614, 47.828899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102524, 35.362156, 47.266434>,  <40.903202, 35.831028, 47.795860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102524, 35.362156, 47.266434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.719536, 35.276367, 47.343639>,  <40.489742, 35.224895, 47.389965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.719536, 35.276367, 47.343639>,  <41.102524, 35.362156, 47.266434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719536, 35.276367, 47.343639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177865, -0.088021, -0.980110,
		0.227195, -0.972756, 0.046130,
		-0.957469, -0.214471, 0.193017,
		40.432297, 35.212025, 47.401546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851429, 34.731983, 46.854771>,  <41.102524, 35.362156, 47.266434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851429, 34.731983, 46.854771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.525547, 34.949368, 46.935677>,  <40.330017, 35.079796, 46.984219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.525547, 34.949368, 46.935677>,  <40.851429, 34.731983, 46.854771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525547, 34.949368, 46.935677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244644, -0.005887, -0.969595,
		-0.525743, -0.839416, 0.137750,
		-0.814705, 0.543458, 0.202263,
		40.281136, 35.112404, 46.996357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363396, 34.473465, 46.432880>,  <40.851429, 34.731983, 46.854771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363396, 34.473465, 46.432880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220058, 34.829357, 46.546001>,  <40.134056, 35.042892, 46.613873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220058, 34.829357, 46.546001>,  <40.363396, 34.473465, 46.432880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220058, 34.829357, 46.546001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247459, 0.201566, -0.947700,
		-0.900199, -0.409579, 0.147942,
		-0.358338, 0.889728, 0.282804,
		40.112556, 35.096275, 46.630844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681606, 34.533955, 46.163036>,  <40.363396, 34.473465, 46.432880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681606, 34.533955, 46.163036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787148, 34.916080, 46.216351>,  <39.850471, 35.145355, 46.248337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787148, 34.916080, 46.216351>,  <39.681606, 34.533955, 46.163036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787148, 34.916080, 46.216351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356215, 0.224917, -0.906931,
		-0.896378, 0.191818, 0.399640,
		0.263852, 0.955311, 0.133283,
		39.866302, 35.202675, 46.256336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110977, 34.853313, 45.938663>,  <39.681606, 34.533955, 46.163036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110977, 34.853313, 45.938663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432236, 35.090889, 45.919933>,  <39.624992, 35.233433, 45.908695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432236, 35.090889, 45.919933>,  <39.110977, 34.853313, 45.938663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432236, 35.090889, 45.919933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146633, 0.120889, -0.981776,
		-0.577452, 0.795378, 0.184182,
		0.803149, 0.593936, -0.046821,
		39.673180, 35.269070, 45.905888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632713, 35.361862, 46.308163>,  <39.110977, 34.853313, 45.938663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632713, 35.361862, 46.308163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240807, 35.422115, 46.360878>,  <38.005661, 35.458267, 46.392509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240807, 35.422115, 46.360878>,  <38.632713, 35.361862, 46.308163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240807, 35.422115, 46.360878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135072, 0.011703, 0.990767,
		0.147698, 0.988521, -0.031812,
		-0.979766, 0.150631, 0.131793,
		37.946877, 35.467304, 46.400417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578476, 35.750389, 46.932449>,  <38.632713, 35.361862, 46.308163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578476, 35.750389, 46.932449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200512, 35.621681, 46.908394>,  <37.973736, 35.544456, 46.893959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200512, 35.621681, 46.908394>,  <38.578476, 35.750389, 46.932449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200512, 35.621681, 46.908394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005839, -0.167117, 0.985920,
		-0.327290, 0.931953, 0.156031,
		-0.944906, -0.321770, -0.060138,
		37.917042, 35.525150, 46.890354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279457, 35.964840, 47.467636>,  <38.578476, 35.750389, 46.932449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279457, 35.964840, 47.467636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004692, 35.692066, 47.367153>,  <37.839832, 35.528400, 47.306862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004692, 35.692066, 47.367153>,  <38.279457, 35.964840, 47.467636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004692, 35.692066, 47.367153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134246, -0.220650, 0.966070,
		-0.714230, 0.697333, 0.060020,
		-0.686916, -0.681938, -0.251209,
		37.798618, 35.487484, 47.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729927, 36.045746, 47.947296>,  <38.279457, 35.964840, 47.467636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729927, 36.045746, 47.947296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658207, 35.683693, 47.793106>,  <37.615173, 35.466461, 47.700592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658207, 35.683693, 47.793106>,  <37.729927, 36.045746, 47.947296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658207, 35.683693, 47.793106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150130, -0.362066, 0.919983,
		-0.972272, 0.222826, -0.070968,
		-0.179301, -0.905128, -0.385479,
		37.604416, 35.412155, 47.677464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119892, 35.837395, 48.332840>,  <37.729927, 36.045746, 47.947296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119892, 35.837395, 48.332840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290340, 35.517616, 48.163464>,  <37.392609, 35.325748, 48.061840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290340, 35.517616, 48.163464>,  <37.119892, 35.837395, 48.332840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290340, 35.517616, 48.163464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054879, -0.490042, 0.869970,
		-0.902999, -0.347477, -0.252691,
		0.426124, -0.799449, -0.423438,
		37.418179, 35.277782, 48.036434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636047, 35.372513, 48.379684>,  <37.119892, 35.837395, 48.332840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636047, 35.372513, 48.379684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996613, 35.200630, 48.358463>,  <37.212952, 35.097500, 48.345730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996613, 35.200630, 48.358463>,  <36.636047, 35.372513, 48.379684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996613, 35.200630, 48.358463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157921, -0.440392, 0.883808,
		-0.403137, -0.788296, -0.464833,
		0.901411, -0.429702, -0.053050,
		37.267036, 35.071720, 48.342548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490265, 34.667122, 48.527546>,  <36.636047, 35.372513, 48.379684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490265, 34.667122, 48.527546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882729, 34.711742, 48.590641>,  <37.118206, 34.738514, 48.628498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882729, 34.711742, 48.590641>,  <36.490265, 34.667122, 48.527546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882729, 34.711742, 48.590641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123141, -0.268015, 0.955513,
		0.148866, -0.956935, -0.249229,
		0.981160, 0.111553, 0.157736,
		37.177078, 34.745209, 48.637962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604477, 33.902901, 48.319206>,  <36.490265, 34.667122, 48.527546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604477, 33.902901, 48.319206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431358, 33.545876, 48.268574>,  <36.327488, 33.331661, 48.238194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431358, 33.545876, 48.268574>,  <36.604477, 33.902901, 48.319206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431358, 33.545876, 48.268574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049974, 0.116442, -0.991939,
		0.900106, -0.435633, -0.005791,
		-0.432795, -0.892561, -0.126580,
		36.301521, 33.278107, 48.230598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886059, 33.594563, 47.727009>,  <36.604477, 33.902901, 48.319206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886059, 33.594563, 47.727009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540813, 33.394398, 47.754196>,  <36.333668, 33.274300, 47.770508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540813, 33.394398, 47.754196>,  <36.886059, 33.594563, 47.727009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540813, 33.394398, 47.754196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060533, -0.031109, -0.997681,
		0.501371, -0.865226, -0.003441,
		-0.863112, -0.500416, 0.067972,
		36.281879, 33.244274, 47.774590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903484, 33.002502, 47.244179>,  <36.886059, 33.594563, 47.727009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903484, 33.002502, 47.244179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512146, 33.036228, 47.319782>,  <36.277344, 33.056465, 47.365147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512146, 33.036228, 47.319782>,  <36.903484, 33.002502, 47.244179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512146, 33.036228, 47.319782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201413, -0.177750, -0.963243,
		-0.047619, -0.980457, 0.190884,
		-0.978348, 0.084315, 0.189012,
		36.218643, 33.061523, 47.376484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554958, 32.519726, 46.812889>,  <36.903484, 33.002502, 47.244179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554958, 32.519726, 46.812889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311371, 32.827667, 46.889286>,  <36.165218, 33.012432, 46.935123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311371, 32.827667, 46.889286>,  <36.554958, 32.519726, 46.812889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311371, 32.827667, 46.889286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208403, 0.077038, -0.975004,
		-0.765329, -0.633548, 0.113527,
		-0.608966, 0.769858, 0.190993,
		36.128681, 33.058624, 46.946583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918781, 32.229683, 46.549137>,  <36.554958, 32.519726, 46.812889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918781, 32.229683, 46.549137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883484, 32.626781, 46.581779>,  <35.862305, 32.865040, 46.601364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883484, 32.626781, 46.581779>,  <35.918781, 32.229683, 46.549137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883484, 32.626781, 46.581779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445585, 0.033931, -0.894596,
		-0.890880, -0.115309, 0.439360,
		-0.088247, 0.992750, 0.081609,
		35.857010, 32.924606, 46.606262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317116, 32.373989, 46.293396>,  <35.918781, 32.229683, 46.549137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317116, 32.373989, 46.293396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499043, 32.730202, 46.289680>,  <35.608200, 32.943932, 46.287453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499043, 32.730202, 46.289680>,  <35.317116, 32.373989, 46.293396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499043, 32.730202, 46.289680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571823, 0.284020, -0.769644,
		-0.682758, 0.355358, 0.638406,
		0.454819, 0.890536, -0.009285,
		35.635487, 32.997364, 46.286896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868149, 32.842819, 46.092396>,  <35.317116, 32.373989, 46.293396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868149, 32.842819, 46.092396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223629, 32.999878, 45.997704>,  <35.436916, 33.094112, 45.940887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223629, 32.999878, 45.997704>,  <34.868149, 32.842819, 46.092396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223629, 32.999878, 45.997704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315772, 0.149816, -0.936933,
		-0.332418, 0.907405, 0.257128,
		0.888699, 0.392647, -0.236732,
		35.490238, 33.117672, 45.926685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.664642, 29.016912, 48.905636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.906559, 29.333958, 48.936607>,  <40.051708, 29.524185, 48.955193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.906559, 29.333958, 48.936607>,  <39.664642, 29.016912, 48.905636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906559, 29.333958, 48.936607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088049, 0.163180, -0.982659,
		-0.791504, 0.587483, 0.168478,
		0.604788, 0.792613, 0.077431,
		40.087994, 29.571741, 48.959835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387707, 29.671450, 48.553665>,  <39.664642, 29.016912, 48.905636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387707, 29.671450, 48.553665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.785259, 29.712206, 48.570679>,  <40.023792, 29.736660, 48.580887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.785259, 29.712206, 48.570679>,  <39.387707, 29.671450, 48.553665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785259, 29.712206, 48.570679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005597, 0.431239, -0.902220,
		-0.110270, 0.896466, 0.429173,
		0.993886, 0.101890, 0.042535,
		40.083424, 29.742773, 48.583439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496922, 30.253483, 48.185780>,  <39.387707, 29.671450, 48.553665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496922, 30.253483, 48.185780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.835239, 30.041792, 48.212757>,  <40.038231, 29.914778, 48.228943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.835239, 30.041792, 48.212757>,  <39.496922, 30.253483, 48.185780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835239, 30.041792, 48.212757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129080, 0.080341, -0.988374,
		0.517656, 0.844668, 0.136265,
		0.845796, -0.529227, 0.067441,
		40.088978, 29.883024, 48.232990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971687, 30.711494, 47.773407>,  <39.496922, 30.253483, 48.185780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971687, 30.711494, 47.773407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.158443, 30.357775, 47.775547>,  <40.270496, 30.145542, 47.776833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.158443, 30.357775, 47.775547>,  <39.971687, 30.711494, 47.773407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158443, 30.357775, 47.775547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187169, 0.092903, -0.977925,
		0.864282, 0.457582, 0.208888,
		0.466888, -0.884300, 0.005351,
		40.298512, 30.092485, 47.777153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410053, 30.842220, 47.258224>,  <39.971687, 30.711494, 47.773407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410053, 30.842220, 47.258224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.409161, 30.444065, 47.296589>,  <40.408623, 30.205172, 47.319607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.409161, 30.444065, 47.296589>,  <40.410053, 30.842220, 47.258224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409161, 30.444065, 47.296589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030003, -0.095937, -0.994935,
		0.999547, 0.000654, 0.030079,
		-0.002235, -0.995387, 0.095913,
		40.408489, 30.145449, 47.325363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918442, 30.587250, 46.869205>,  <40.410053, 30.842220, 47.258224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918442, 30.587250, 46.869205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.652157, 30.290657, 46.902756>,  <40.492386, 30.112701, 46.922886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.652157, 30.290657, 46.902756>,  <40.918442, 30.587250, 46.869205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652157, 30.290657, 46.902756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159514, 0.031601, -0.986690,
		0.728961, -0.670230, -0.139314,
		-0.665712, -0.741480, 0.083875,
		40.452442, 30.068213, 46.927917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096008, 30.147984, 46.359829>,  <40.918442, 30.587250, 46.869205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096008, 30.147984, 46.359829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.713665, 30.054811, 46.431465>,  <40.484257, 29.998909, 46.474449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.713665, 30.054811, 46.431465>,  <41.096008, 30.147984, 46.359829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713665, 30.054811, 46.431465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159084, -0.102176, -0.981963,
		0.247026, -0.967111, 0.060611,
		-0.955861, -0.232929, 0.179092,
		40.426907, 29.984934, 46.485191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888714, 29.494553, 45.971821>,  <41.096008, 30.147984, 46.359829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888714, 29.494553, 45.971821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.525589, 29.648943, 46.037430>,  <40.307716, 29.741577, 46.076794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.525589, 29.648943, 46.037430>,  <40.888714, 29.494553, 45.971821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525589, 29.648943, 46.037430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337744, -0.441005, -0.831531,
		-0.248614, -0.810271, 0.530709,
		-0.907811, 0.385974, 0.164024,
		40.253246, 29.764736, 46.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499310, 28.982433, 45.704937>,  <40.888714, 29.494553, 45.971821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499310, 28.982433, 45.704937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.223125, 29.270777, 45.729042>,  <40.057415, 29.443783, 45.743504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.223125, 29.270777, 45.729042>,  <40.499310, 28.982433, 45.704937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223125, 29.270777, 45.729042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372520, -0.282924, -0.883845,
		-0.620076, -0.632709, 0.463881,
		-0.690460, 0.720856, 0.060262,
		40.015987, 29.487034, 45.747120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864208, 28.736952, 45.412716>,  <40.499310, 28.982433, 45.704937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864208, 28.736952, 45.412716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.781849, 29.128183, 45.425163>,  <39.732433, 29.362923, 45.432632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.781849, 29.128183, 45.425163>,  <39.864208, 28.736952, 45.412716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781849, 29.128183, 45.425163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368416, -0.048017, -0.928420,
		-0.906573, -0.202628, 0.370226,
		-0.205901, 0.978078, 0.031120,
		39.720078, 29.421606, 45.434498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181492, 28.897150, 45.315586>,  <39.864208, 28.736952, 45.412716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181492, 28.897150, 45.315586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.399868, 29.203669, 45.180096>,  <39.530895, 29.387579, 45.098801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.399868, 29.203669, 45.180096>,  <39.181492, 28.897150, 45.315586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399868, 29.203669, 45.180096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324224, -0.179559, -0.928783,
		-0.772544, 0.616887, 0.150423,
		0.545944, 0.766296, -0.338726,
		39.563652, 29.433558, 45.078476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789356, 29.280445, 44.837166>,  <39.181492, 28.897150, 45.315586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789356, 29.280445, 44.837166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.155636, 29.409445, 44.741249>,  <39.375404, 29.486845, 44.683701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.155636, 29.409445, 44.741249>,  <38.789356, 29.280445, 44.837166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155636, 29.409445, 44.741249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273831, 0.063983, -0.959647,
		-0.294141, 0.944405, 0.146898,
		0.915695, 0.322497, -0.239787,
		39.430344, 29.506193, 44.669312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406509, 29.865629, 45.040783>,  <38.789356, 29.280445, 44.837166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406509, 29.865629, 45.040783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.008724, 29.906061, 45.029232>,  <37.770054, 29.930321, 45.022301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.008724, 29.906061, 45.029232>,  <38.406509, 29.865629, 45.040783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008724, 29.906061, 45.029232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040050, -0.110354, 0.993085,
		0.097196, 0.988739, 0.113791,
		-0.994459, 0.101081, -0.028873,
		37.710388, 29.936386, 45.020569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178146, 30.444649, 45.474049>,  <38.406509, 29.865629, 45.040783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178146, 30.444649, 45.474049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862137, 30.200741, 45.448612>,  <37.672531, 30.054396, 45.433350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862137, 30.200741, 45.448612>,  <38.178146, 30.444649, 45.474049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862137, 30.200741, 45.448612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061168, -0.024806, 0.997819,
		-0.610019, 0.792189, -0.017701,
		-0.790022, -0.609772, -0.063589,
		37.625130, 30.017809, 45.429535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760193, 30.727257, 46.002876>,  <38.178146, 30.444649, 45.474049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760193, 30.727257, 46.002876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.635910, 30.355221, 45.924500>,  <37.561340, 30.132000, 45.877472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.635910, 30.355221, 45.924500>,  <37.760193, 30.727257, 46.002876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635910, 30.355221, 45.924500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097375, -0.173912, 0.979935,
		-0.945504, 0.323554, -0.036532,
		-0.310709, -0.930090, -0.195940,
		37.542698, 30.076193, 45.865719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162518, 30.639467, 46.433189>,  <37.760193, 30.727257, 46.002876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162518, 30.639467, 46.433189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.284794, 30.274714, 46.323627>,  <37.358162, 30.055862, 46.257893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.284794, 30.274714, 46.323627>,  <37.162518, 30.639467, 46.433189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284794, 30.274714, 46.323627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216158, -0.346627, 0.912757,
		-0.927269, -0.219818, -0.303073,
		0.305694, -0.911882, -0.273901,
		37.376503, 30.001148, 46.241459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689430, 30.151712, 46.659771>,  <37.162518, 30.639467, 46.433189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689430, 30.151712, 46.659771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.028702, 29.942673, 46.625168>,  <37.232265, 29.817249, 46.604404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.028702, 29.942673, 46.625168>,  <36.689430, 30.151712, 46.659771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028702, 29.942673, 46.625168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101905, -0.321249, 0.941496,
		-0.519817, -0.789740, -0.325731,
		0.848178, -0.522599, -0.086513,
		37.283154, 29.785892, 46.599213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497108, 29.477259, 46.982201>,  <36.689430, 30.151712, 46.659771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497108, 29.477259, 46.982201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.895058, 29.517563, 46.978710>,  <37.133827, 29.541746, 46.976616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.895058, 29.517563, 46.978710>,  <36.497108, 29.477259, 46.982201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895058, 29.517563, 46.978710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049977, -0.414743, 0.908565,
		0.087929, -0.904342, -0.417652,
		0.994873, 0.100762, -0.008729,
		37.193520, 29.547791, 46.976093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813770, 28.809679, 47.193398>,  <36.497108, 29.477259, 46.982201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813770, 28.809679, 47.193398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.091816, 29.092327, 47.246307>,  <37.258644, 29.261917, 47.278053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.091816, 29.092327, 47.246307>,  <36.813770, 28.809679, 47.193398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091816, 29.092327, 47.246307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200891, -0.367602, 0.908026,
		0.690256, -0.604612, -0.397480,
		0.695118, 0.706621, 0.132279,
		37.300350, 29.304314, 47.285992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331005, 28.441170, 47.549088>,  <36.813770, 28.809679, 47.193398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331005, 28.441170, 47.549088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399078, 28.829510, 47.616604>,  <37.439922, 29.062513, 47.657116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399078, 28.829510, 47.616604>,  <37.331005, 28.441170, 47.549088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399078, 28.829510, 47.616604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067547, -0.182383, 0.980905,
		0.983094, -0.155536, -0.096617,
		0.170187, 0.970848, 0.168793,
		37.450134, 29.120764, 47.667240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934494, 28.408287, 48.083733>,  <37.331005, 28.441170, 47.549088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934494, 28.408287, 48.083733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.793850, 28.782104, 48.105648>,  <37.709465, 29.006395, 48.118797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.793850, 28.782104, 48.105648>,  <37.934494, 28.408287, 48.083733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793850, 28.782104, 48.105648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240764, 0.033717, 0.969998,
		0.904656, 0.354252, -0.236859,
		-0.351610, 0.934542, 0.054789,
		37.688366, 29.062468, 48.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474178, 28.801588, 48.527180>,  <37.934494, 28.408287, 48.083733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474178, 28.801588, 48.527180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137138, 29.016979, 48.523964>,  <37.934914, 29.146214, 48.522034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137138, 29.016979, 48.523964>,  <38.474178, 28.801588, 48.527180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137138, 29.016979, 48.523964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112963, 0.191324, 0.975005,
		0.526557, 0.820632, -0.222038,
		-0.842602, 0.538477, -0.008042,
		37.884357, 29.178522, 48.521553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637753, 29.352814, 48.848183>,  <38.474178, 28.801588, 48.527180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637753, 29.352814, 48.848183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.238499, 29.348358, 48.872162>,  <37.998947, 29.345684, 48.886551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.238499, 29.348358, 48.872162>,  <38.637753, 29.352814, 48.848183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238499, 29.348358, 48.872162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049238, 0.432765, 0.900161,
		-0.035972, 0.901438, -0.431412,
		-0.998139, -0.011138, 0.059953,
		37.939056, 29.345016, 48.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351772, 30.016945, 49.093788>,  <38.637753, 29.352814, 48.848183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351772, 30.016945, 49.093788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.054359, 29.765644, 49.185402>,  <37.875912, 29.614864, 49.240372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.054359, 29.765644, 49.185402>,  <38.351772, 30.016945, 49.093788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054359, 29.765644, 49.185402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017442, 0.360615, 0.932552,
		-0.668471, 0.689388, -0.279087,
		-0.743533, -0.628252, 0.229037,
		37.831299, 29.577169, 49.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957909, 30.405252, 49.536224>,  <38.351772, 30.016945, 49.093788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957909, 30.405252, 49.536224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.830406, 30.034861, 49.617176>,  <37.753906, 29.812626, 49.665745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.830406, 30.034861, 49.617176>,  <37.957909, 30.405252, 49.536224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830406, 30.034861, 49.617176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115472, 0.249860, 0.961372,
		-0.940778, 0.283072, -0.186568,
		-0.318753, -0.925981, 0.202376,
		37.734779, 29.757067, 49.677887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208252, 30.326252, 49.859833>,  <37.957909, 30.405252, 49.536224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208252, 30.326252, 49.859833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.460495, 30.036604, 49.971535>,  <37.611843, 29.862816, 50.038555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.460495, 30.036604, 49.971535>,  <37.208252, 30.326252, 49.859833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460495, 30.036604, 49.971535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066681, 0.307934, 0.949068,
		-0.773229, -0.617113, 0.145902,
		0.630611, -0.724118, 0.279253,
		37.649677, 29.819368, 50.055309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512478, 30.758455, 50.011871>,  <37.208252, 30.326252, 49.859833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512478, 30.758455, 50.011871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299801, 31.029751, 50.214767>,  <36.172195, 31.192528, 50.336506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299801, 31.029751, 50.214767>,  <36.512478, 30.758455, 50.011871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299801, 31.029751, 50.214767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229809, 0.460908, -0.857176,
		-0.815161, -0.572326, -0.089198,
		-0.531696, 0.678238, 0.507240,
		36.140293, 31.233223, 50.366940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978447, 31.012310, 49.570648>,  <36.512478, 30.758455, 50.011871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978447, 31.012310, 49.570648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.012089, 31.314560, 49.830482>,  <36.032276, 31.495911, 49.986382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.012089, 31.314560, 49.830482>,  <35.978447, 31.012310, 49.570648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012089, 31.314560, 49.830482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028395, 0.649810, -0.759566,
		-0.996052, 0.082329, 0.033197,
		0.084106, 0.755624, 0.649583,
		36.037319, 31.541246, 50.025356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560684, 31.449707, 49.324028>,  <35.978447, 31.012310, 49.570648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560684, 31.449707, 49.324028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810081, 31.662350, 49.553337>,  <35.959721, 31.789936, 49.690922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810081, 31.662350, 49.553337>,  <35.560684, 31.449707, 49.324028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810081, 31.662350, 49.553337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011435, 0.739374, -0.673197,
		-0.781744, 0.413180, 0.467075,
		0.623495, 0.531609, 0.573277,
		35.997131, 31.821833, 49.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154110, 32.084305, 49.453060>,  <35.560684, 31.449707, 49.324028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154110, 32.084305, 49.453060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.549320, 32.130829, 49.493599>,  <35.786446, 32.158745, 49.517921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.549320, 32.130829, 49.493599>,  <35.154110, 32.084305, 49.453060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549320, 32.130829, 49.493599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034054, 0.805176, -0.592058,
		-0.150470, 0.581519, 0.799497,
		0.988028, 0.116312, 0.101352,
		35.845730, 32.165722, 49.524006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143372, 32.762245, 49.265465>,  <35.154110, 32.084305, 49.453060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143372, 32.762245, 49.265465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535263, 32.684795, 49.285988>,  <35.770397, 32.638325, 49.298302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535263, 32.684795, 49.285988>,  <35.143372, 32.762245, 49.265465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535263, 32.684795, 49.285988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186243, 0.786288, -0.589122,
		0.073729, 0.586737, 0.806414,
		0.979733, -0.193624, 0.051304,
		35.829182, 32.626709, 49.301380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447662, 33.383965, 49.250011>,  <35.143372, 32.762245, 49.265465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447662, 33.383965, 49.250011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.720200, 33.125820, 49.111862>,  <35.883720, 32.970932, 49.028973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.720200, 33.125820, 49.111862>,  <35.447662, 33.383965, 49.250011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720200, 33.125820, 49.111862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310790, 0.682267, -0.661756,
		0.662711, 0.343541, 0.665428,
		0.681340, -0.645361, -0.345376,
		35.924603, 32.932213, 49.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003471, 33.738270, 49.013710>,  <35.447662, 33.383965, 49.250011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003471, 33.738270, 49.013710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.074894, 33.389576, 48.831196>,  <36.117748, 33.180359, 48.721687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.074894, 33.389576, 48.831196>,  <36.003471, 33.738270, 49.013710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074894, 33.389576, 48.831196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070111, 0.473827, -0.877822,
		0.981429, 0.124748, 0.145722,
		0.178553, -0.871737, -0.456282,
		36.128460, 33.128056, 48.694313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809727, 33.987965, 49.118217>,  <36.003471, 33.738270, 49.013710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809727, 33.987965, 49.118217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.121098, 34.238552, 49.102299>,  <37.307919, 34.388905, 49.092747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.121098, 34.238552, 49.102299>,  <36.809727, 33.987965, 49.118217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121098, 34.238552, 49.102299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153931, -0.129036, 0.979620,
		0.608569, -0.768689, -0.196879,
		0.778427, 0.626472, -0.039798,
		37.354626, 34.426495, 49.090359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535030, 33.635208, 49.369747>,  <36.809727, 33.987965, 49.118217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535030, 33.635208, 49.369747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.511269, 34.030983, 49.422634>,  <37.497013, 34.268448, 49.454365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.511269, 34.030983, 49.422634>,  <37.535030, 33.635208, 49.369747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511269, 34.030983, 49.422634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264251, -0.112134, 0.957913,
		0.962623, 0.091843, -0.254799,
		-0.059406, 0.989440, 0.132213,
		37.493446, 34.327816, 49.462299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866875, 33.650887, 50.038109>,  <37.535030, 33.635208, 49.369747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866875, 33.650887, 50.038109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.773457, 34.032768, 49.964355>,  <37.717407, 34.261898, 49.920101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.773457, 34.032768, 49.964355>,  <37.866875, 33.650887, 50.038109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773457, 34.032768, 49.964355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161220, 0.225028, 0.960922,
		0.958887, 0.194692, -0.206471,
		-0.233545, 0.954703, -0.184388,
		37.703392, 34.319180, 49.909039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381298, 34.069847, 50.258633>,  <37.866875, 33.650887, 50.038109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381298, 34.069847, 50.258633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.059399, 34.307285, 50.256779>,  <37.866261, 34.449749, 50.255665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.059399, 34.307285, 50.256779>,  <38.381298, 34.069847, 50.258633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059399, 34.307285, 50.256779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101883, 0.145812, 0.984052,
		0.584807, 0.791443, -0.177820,
		-0.804749, 0.593597, -0.004637,
		37.817974, 34.485363, 50.255386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528759, 34.751705, 50.491219>,  <38.381298, 34.069847, 50.258633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528759, 34.751705, 50.491219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.144054, 34.682541, 50.576183>,  <37.913231, 34.641045, 50.627163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.144054, 34.682541, 50.576183>,  <38.528759, 34.751705, 50.491219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144054, 34.682541, 50.576183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232919, -0.108313, 0.966446,
		-0.144099, 0.978964, 0.144444,
		-0.961761, -0.172908, 0.212412,
		37.855526, 34.630669, 50.639908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372242, 35.283787, 51.101120>,  <38.528759, 34.751705, 50.491219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372242, 35.283787, 51.101120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.037159, 35.065342, 51.101154>,  <37.836109, 34.934273, 51.101173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.037159, 35.065342, 51.101154>,  <38.372242, 35.283787, 51.101120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037159, 35.065342, 51.101154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122524, -0.187799, 0.974536,
		-0.532193, 0.816389, 0.224233,
		-0.837711, -0.546114, 0.000082,
		37.785847, 34.901508, 51.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916065, 35.535698, 51.698097>,  <38.372242, 35.283787, 51.101120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916065, 35.535698, 51.698097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.806427, 35.162876, 51.603321>,  <37.740643, 34.939182, 51.546455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.806427, 35.162876, 51.603321>,  <37.916065, 35.535698, 51.698097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806427, 35.162876, 51.603321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226545, -0.176864, 0.957808,
		-0.934637, 0.316213, -0.162675,
		-0.274100, -0.932056, -0.236940,
		37.724197, 34.883259, 51.532238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387295, 35.328453, 52.254025>,  <37.916065, 35.535698, 51.698097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387295, 35.328453, 52.254025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.500221, 34.989502, 52.074139>,  <37.567978, 34.786129, 51.966209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.500221, 34.989502, 52.074139>,  <37.387295, 35.328453, 52.254025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500221, 34.989502, 52.074139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048786, -0.480857, 0.875440,
		-0.958080, -0.225212, -0.177095,
		0.282317, -0.847382, -0.449712,
		37.584915, 34.735287, 51.939224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918491, 34.845028, 52.275738>,  <37.387295, 35.328453, 52.254025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918491, 34.845028, 52.275738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.251068, 34.624744, 52.305214>,  <37.450615, 34.492573, 52.322899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.251068, 34.624744, 52.305214>,  <36.918491, 34.845028, 52.275738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251068, 34.624744, 52.305214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378053, -0.463542, 0.801377,
		-0.407170, -0.694152, -0.593604,
		0.831438, -0.550710, 0.073686,
		37.500500, 34.459530, 52.327320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.319565, 35.988834, 36.320183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623329, 35.754253, 36.207493>,  <36.805588, 35.613506, 36.139877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623329, 35.754253, 36.207493>,  <36.319565, 35.988834, 36.320183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623329, 35.754253, 36.207493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153125, -0.259754, 0.953457,
		-0.632335, -0.767206, -0.107460,
		0.759412, -0.586449, -0.281730,
		36.851154, 35.578320, 36.122974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257645, 35.228371, 36.638832>,  <36.319565, 35.988834, 36.320183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257645, 35.228371, 36.638832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645313, 35.284359, 36.557728>,  <36.877914, 35.317951, 36.509064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645313, 35.284359, 36.557728>,  <36.257645, 35.228371, 36.638832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645313, 35.284359, 36.557728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219004, -0.112395, 0.969229,
		0.112872, -0.983756, -0.139584,
		0.969174, 0.139968, -0.202760,
		36.936066, 35.326347, 36.496899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712448, 34.735256, 37.087936>,  <36.257645, 35.228371, 36.638832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712448, 34.735256, 37.087936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977215, 35.025249, 37.011749>,  <37.136074, 35.199245, 36.966038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977215, 35.025249, 37.011749>,  <36.712448, 34.735256, 37.087936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977215, 35.025249, 37.011749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161230, 0.110445, 0.980717,
		0.732036, -0.679858, -0.043783,
		0.661913, 0.724979, -0.190463,
		37.175789, 35.242744, 36.954609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281940, 34.581295, 37.455147>,  <36.712448, 34.735256, 37.087936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281940, 34.581295, 37.455147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316895, 34.974113, 37.388283>,  <37.337868, 35.209805, 37.348164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316895, 34.974113, 37.388283>,  <37.281940, 34.581295, 37.455147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316895, 34.974113, 37.388283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343683, 0.127783, 0.930352,
		0.935012, -0.138749, -0.326347,
		0.087384, 0.982049, -0.167164,
		37.343109, 35.268726, 37.338135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837761, 34.784039, 37.798203>,  <37.281940, 34.581295, 37.455147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837761, 34.784039, 37.798203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646008, 35.133217, 37.762058>,  <37.530956, 35.342724, 37.740372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646008, 35.133217, 37.762058>,  <37.837761, 34.784039, 37.798203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646008, 35.133217, 37.762058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231193, 0.224943, 0.946547,
		0.846608, 0.432864, -0.309651,
		-0.479380, 0.872943, -0.090364,
		37.502193, 35.395100, 37.734951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321476, 35.186642, 38.117111>,  <37.837761, 34.784039, 37.798203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321476, 35.186642, 38.117111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964424, 35.366631, 38.106304>,  <37.750191, 35.474625, 38.099819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964424, 35.366631, 38.106304>,  <38.321476, 35.186642, 38.117111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964424, 35.366631, 38.106304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073186, 0.203807, 0.976272,
		0.444803, 0.869475, -0.214857,
		-0.892633, 0.449973, -0.027021,
		37.696632, 35.501621, 38.098198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344193, 35.938267, 38.343639>,  <38.321476, 35.186642, 38.117111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344193, 35.938267, 38.343639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965477, 35.823883, 38.402714>,  <37.738247, 35.755253, 38.438160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965477, 35.823883, 38.402714>,  <38.344193, 35.938267, 38.343639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965477, 35.823883, 38.402714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084505, 0.221894, 0.971402,
		-0.310555, 0.932196, -0.185922,
		-0.946792, -0.285962, 0.147686,
		37.681438, 35.738094, 38.447018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177288, 36.408924, 38.880447>,  <38.344193, 35.938267, 38.343639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177288, 36.408924, 38.880447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905571, 36.115391, 38.877594>,  <37.742538, 35.939270, 38.875881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905571, 36.115391, 38.877594>,  <38.177288, 36.408924, 38.880447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905571, 36.115391, 38.877594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087039, 0.070911, 0.993678,
		-0.728684, 0.675623, -0.112042,
		-0.679296, -0.733830, -0.007134,
		37.701782, 35.895241, 38.875454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644440, 36.676414, 39.285103>,  <38.177288, 36.408924, 38.880447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644440, 36.676414, 39.285103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580399, 36.281742, 39.273643>,  <37.541973, 36.044937, 39.266769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580399, 36.281742, 39.273643>,  <37.644440, 36.676414, 39.285103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580399, 36.281742, 39.273643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223172, 0.007915, 0.974747,
		-0.961540, 0.162456, -0.221467,
		-0.160107, -0.986684, -0.028645,
		37.532368, 35.985737, 39.265049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039932, 36.670597, 39.693619>,  <37.644440, 36.676414, 39.285103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039932, 36.670597, 39.693619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136108, 36.282909, 39.672443>,  <37.193813, 36.050297, 39.659737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136108, 36.282909, 39.672443>,  <37.039932, 36.670597, 39.693619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136108, 36.282909, 39.672443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192288, -0.101021, 0.976125,
		-0.951427, -0.224519, -0.210658,
		0.240439, -0.969219, -0.052942,
		37.208241, 35.992142, 39.656563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539429, 36.421196, 40.130066>,  <37.039932, 36.670597, 39.693619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539429, 36.421196, 40.130066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804955, 36.122486, 40.113674>,  <36.964272, 35.943260, 40.103840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804955, 36.122486, 40.113674>,  <36.539429, 36.421196, 40.130066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804955, 36.122486, 40.113674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263666, -0.284949, 0.921566,
		-0.699879, -0.600944, -0.386052,
		0.663814, -0.746774, -0.040981,
		37.004101, 35.898453, 40.101379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227688, 35.856255, 40.346260>,  <36.539429, 36.421196, 40.130066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227688, 35.856255, 40.346260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617809, 35.782990, 40.395626>,  <36.851883, 35.739033, 40.425247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617809, 35.782990, 40.395626>,  <36.227688, 35.856255, 40.346260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617809, 35.782990, 40.395626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153280, -0.159012, 0.975305,
		-0.159012, -0.970138, -0.183160,
		-0.975305, 0.183160, -0.123418,
		36.910400, 35.728043, 40.432652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978668, 35.205841, 40.214542>,  <36.227688, 35.856255, 40.346260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978668, 35.205841, 40.214542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645763, 34.996120, 40.142487>,  <35.446022, 34.870289, 40.099251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645763, 34.996120, 40.142487>,  <35.978668, 35.205841, 40.214542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645763, 34.996120, 40.142487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114893, 0.154765, -0.981248,
		0.542350, -0.837350, -0.068566,
		-0.832259, -0.524302, -0.180143,
		35.396084, 34.838829, 40.088444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111752, 34.849430, 39.604122>,  <35.978668, 35.205841, 40.214542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111752, 34.849430, 39.604122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717232, 34.790401, 39.633606>,  <35.480518, 34.754982, 39.651299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717232, 34.790401, 39.633606>,  <36.111752, 34.849430, 39.604122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717232, 34.790401, 39.633606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089410, 0.102729, -0.990683,
		0.138632, -0.983701, -0.114517,
		-0.986300, -0.147579, 0.073711,
		35.421341, 34.746128, 39.655720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875927, 34.441883, 39.017742>,  <36.111752, 34.849430, 39.604122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875927, 34.441883, 39.017742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522175, 34.586754, 39.135521>,  <35.309925, 34.673676, 39.206188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522175, 34.586754, 39.135521>,  <35.875927, 34.441883, 39.017742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522175, 34.586754, 39.135521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345706, -0.084380, -0.934541,
		-0.313628, -0.928281, 0.199832,
		-0.884378, 0.362182, 0.294448,
		35.256863, 34.695408, 39.223854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400772, 34.052544, 38.670452>,  <35.875927, 34.441883, 39.017742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400772, 34.052544, 38.670452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245785, 34.411358, 38.755482>,  <35.152790, 34.626648, 38.806499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245785, 34.411358, 38.755482>,  <35.400772, 34.052544, 38.670452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245785, 34.411358, 38.755482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296606, 0.097018, -0.950059,
		-0.872864, -0.431171, 0.228475,
		-0.387472, 0.897039, 0.212571,
		35.129543, 34.680470, 38.819252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859863, 34.035404, 38.323418>,  <35.400772, 34.052544, 38.670452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859863, 34.035404, 38.323418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907658, 34.426735, 38.391060>,  <34.936333, 34.661533, 38.431644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907658, 34.426735, 38.391060>,  <34.859863, 34.035404, 38.323418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907658, 34.426735, 38.391060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377876, 0.202321, -0.903480,
		-0.918114, 0.044052, 0.393861,
		0.119487, 0.978328, 0.169107,
		34.943504, 34.720234, 38.441792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146484, 34.169483, 38.174740>,  <34.859863, 34.035404, 38.323418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146484, 34.169483, 38.174740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358982, 34.508270, 38.166538>,  <34.486481, 34.711544, 38.161617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358982, 34.508270, 38.166538>,  <34.146484, 34.169483, 38.174740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358982, 34.508270, 38.166538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449364, 0.261168, -0.854320,
		-0.718230, 0.463065, 0.519343,
		0.531241, 0.846972, -0.020506,
		34.518356, 34.762363, 38.160385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661736, 34.680679, 38.123650>,  <34.146484, 34.169483, 38.174740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661736, 34.680679, 38.123650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008659, 34.831017, 37.993107>,  <34.216816, 34.921219, 37.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008659, 34.831017, 37.993107>,  <33.661736, 34.680679, 38.123650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008659, 34.831017, 37.993107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430825, 0.238416, -0.870372,
		-0.249312, 0.895489, 0.368703,
		0.867314, 0.375841, -0.326359,
		34.268852, 34.943768, 37.895199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508316, 35.310776, 37.780266>,  <33.661736, 34.680679, 38.123650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508316, 35.310776, 37.780266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857513, 35.226166, 37.604473>,  <34.067032, 35.175400, 37.498997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857513, 35.226166, 37.604473>,  <33.508316, 35.310776, 37.780266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857513, 35.226166, 37.604473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426974, 0.104119, -0.898250,
		0.235761, 0.971811, 0.000579,
		0.872989, -0.211525, -0.439485,
		34.119411, 35.162708, 37.472626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494671, 35.840130, 37.351658>,  <33.508316, 35.310776, 37.780266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494671, 35.840130, 37.351658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746925, 35.561699, 37.214382>,  <33.898277, 35.394642, 37.132019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746925, 35.561699, 37.214382>,  <33.494671, 35.840130, 37.351658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746925, 35.561699, 37.214382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364508, 0.124731, -0.922809,
		0.685152, 0.707049, -0.175066,
		0.630635, -0.696077, -0.343185,
		33.936115, 35.352875, 37.111427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681572, 35.999638, 36.598782>,  <33.494671, 35.840130, 37.351658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681572, 35.999638, 36.598782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818447, 35.623787, 36.599133>,  <33.900574, 35.398277, 36.599342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818447, 35.623787, 36.599133>,  <33.681572, 35.999638, 36.598782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818447, 35.623787, 36.599133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388844, -0.142462, -0.910223,
		0.855398, 0.311127, -0.414119,
		0.342191, -0.939630, 0.000882,
		33.921104, 35.341896, 36.599396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094818, 35.837547, 35.980366>,  <33.681572, 35.999638, 36.598782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094818, 35.837547, 35.980366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967201, 35.482246, 36.112564>,  <33.890633, 35.269066, 36.191883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967201, 35.482246, 36.112564>,  <34.094818, 35.837547, 35.980366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967201, 35.482246, 36.112564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356000, -0.210864, -0.910385,
		0.878338, -0.408106, -0.248942,
		-0.319041, -0.888249, 0.330495,
		33.871490, 35.215771, 36.211712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308758, 35.344040, 35.475227>,  <34.094818, 35.837547, 35.980366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308758, 35.344040, 35.475227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006977, 35.191902, 35.689198>,  <33.825909, 35.100620, 35.817581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006977, 35.191902, 35.689198>,  <34.308758, 35.344040, 35.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006977, 35.191902, 35.689198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476738, -0.242627, -0.844898,
		0.451143, -0.892450, 0.001723,
		-0.754448, -0.380348, 0.534924,
		33.780643, 35.077797, 35.849674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294609, 34.646549, 35.254845>,  <34.308758, 35.344040, 35.475227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294609, 34.646549, 35.254845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948414, 34.728001, 35.437920>,  <33.740696, 34.776871, 35.547764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948414, 34.728001, 35.437920>,  <34.294609, 34.646549, 35.254845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948414, 34.728001, 35.437920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493456, -0.503871, -0.708954,
		0.086254, -0.839435, 0.536571,
		-0.865484, 0.203624, 0.457685,
		33.688770, 34.789089, 35.575226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904011, 34.081772, 35.231590>,  <34.294609, 34.646549, 35.254845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904011, 34.081772, 35.231590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622734, 34.349838, 35.326584>,  <33.453968, 34.510677, 35.383579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622734, 34.349838, 35.326584>,  <33.904011, 34.081772, 35.231590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622734, 34.349838, 35.326584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650046, -0.470675, -0.596578,
		-0.288027, -0.573885, 0.766613,
		-0.703193, 0.670165, 0.237485,
		33.411777, 34.550888, 35.397831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726471, 34.058506, 35.092438>,  <33.904011, 34.081772, 35.231590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726471, 34.058506, 35.092438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463436, 34.152126, 35.378876>,  <34.305614, 34.208298, 35.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463436, 34.152126, 35.378876>,  <34.726471, 34.058506, 35.092438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463436, 34.152126, 35.378876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150785, -0.972173, 0.179286,
		0.738133, 0.009920, 0.674582,
		-0.657589, 0.234054, 0.716098,
		34.266159, 34.222343, 35.593704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482819, 33.815338, 35.006023>,  <34.726471, 34.058506, 35.092438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482819, 33.815338, 35.006023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623039, 33.440998, 35.020485>,  <35.707172, 33.216396, 35.029160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623039, 33.440998, 35.020485>,  <35.482819, 33.815338, 35.006023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623039, 33.440998, 35.020485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175566, -0.027749, 0.984076,
		-0.919941, -0.351315, -0.174030,
		0.350550, -0.935846, 0.036151,
		35.728203, 33.160244, 35.031330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112514, 33.392574, 35.524822>,  <35.482819, 33.815338, 35.006023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112514, 33.392574, 35.524822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464176, 33.205631, 35.487591>,  <35.675175, 33.093464, 35.465252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464176, 33.205631, 35.487591>,  <35.112514, 33.392574, 35.524822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464176, 33.205631, 35.487591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044282, -0.274591, 0.960541,
		-0.474473, -0.840343, -0.262104,
		0.879156, -0.467357, -0.093074,
		35.727924, 33.065426, 35.459667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944664, 32.790340, 35.823326>,  <35.112514, 33.392574, 35.524822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944664, 32.790340, 35.823326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343430, 32.819736, 35.812252>,  <35.582687, 32.837376, 35.805607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343430, 32.819736, 35.812252>,  <34.944664, 32.790340, 35.823326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343430, 32.819736, 35.812252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046023, -0.261126, 0.964207,
		0.063636, -0.962503, -0.263702,
		0.996911, 0.073495, -0.027681,
		35.642502, 32.841785, 35.803947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207783, 32.122356, 36.027477>,  <34.944664, 32.790340, 35.823326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207783, 32.122356, 36.027477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480618, 32.408379, 36.088726>,  <35.644318, 32.579990, 36.125477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480618, 32.408379, 36.088726>,  <35.207783, 32.122356, 36.027477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480618, 32.408379, 36.088726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149006, -0.340904, 0.928214,
		0.715926, -0.610310, -0.339075,
		0.682090, 0.715057, 0.153122,
		35.685246, 32.622894, 36.134663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855030, 31.824495, 36.235077>,  <35.207783, 32.122356, 36.027477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855030, 31.824495, 36.235077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878048, 32.194324, 36.385735>,  <35.891857, 32.416222, 36.476128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878048, 32.194324, 36.385735>,  <35.855030, 31.824495, 36.235077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878048, 32.194324, 36.385735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099637, -0.380700, 0.919315,
		0.993358, -0.015374, -0.114029,
		0.057544, 0.924571, 0.376640,
		35.895309, 32.471695, 36.498726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329735, 31.686222, 36.722328>,  <35.855030, 31.824495, 36.235077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329735, 31.686222, 36.722328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184460, 32.049522, 36.805439>,  <36.097294, 32.267502, 36.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184460, 32.049522, 36.805439>,  <36.329735, 31.686222, 36.722328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184460, 32.049522, 36.805439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113255, -0.178318, 0.977434,
		0.924807, 0.378523, -0.038101,
		-0.363187, 0.908253, 0.207779,
		36.075504, 32.321999, 36.867771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883583, 31.945137, 37.076359>,  <36.329735, 31.686222, 36.722328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883583, 31.945137, 37.076359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549496, 32.146423, 37.165073>,  <36.349045, 32.267197, 37.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549496, 32.146423, 37.165073>,  <36.883583, 31.945137, 37.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549496, 32.146423, 37.165073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168585, -0.149580, 0.974271,
		0.523441, 0.851118, 0.040098,
		-0.835217, 0.503214, 0.221782,
		36.298931, 32.297386, 37.231609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045742, 32.507111, 37.671764>,  <36.883583, 31.945137, 37.076359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045742, 32.507111, 37.671764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653793, 32.428928, 37.688038>,  <36.418625, 32.382019, 37.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653793, 32.428928, 37.688038>,  <37.045742, 32.507111, 37.671764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653793, 32.428928, 37.688038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060920, -0.098654, 0.993255,
		-0.190123, 0.975738, 0.108575,
		-0.979868, -0.195455, 0.040686,
		36.359833, 32.370293, 37.700245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825481, 32.936935, 38.211639>,  <37.045742, 32.507111, 37.671764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825481, 32.936935, 38.211639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526165, 32.676933, 38.158634>,  <36.346577, 32.520931, 38.126831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526165, 32.676933, 38.158634>,  <36.825481, 32.936935, 38.211639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526165, 32.676933, 38.158634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007966, -0.208543, 0.977981,
		-0.663325, 0.730757, 0.161229,
		-0.748289, -0.650004, -0.132511,
		36.301678, 32.481934, 38.118881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379181, 33.025600, 38.798588>,  <36.825481, 32.936935, 38.211639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379181, 33.025600, 38.798588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282013, 32.660488, 38.667240>,  <36.223713, 32.441422, 38.588432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282013, 32.660488, 38.667240>,  <36.379181, 33.025600, 38.798588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282013, 32.660488, 38.667240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189216, -0.287419, 0.938929,
		-0.951414, 0.290215, -0.102893,
		-0.242918, -0.912779, -0.328368,
		36.209137, 32.386654, 38.568729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764221, 32.923412, 39.086029>,  <36.379181, 33.025600, 38.798588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764221, 32.923412, 39.086029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902378, 32.560593, 38.989719>,  <35.985271, 32.342903, 38.931934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902378, 32.560593, 38.989719>,  <35.764221, 32.923412, 39.086029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902378, 32.560593, 38.989719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270665, -0.341944, 0.899897,
		-0.898578, -0.245651, -0.363611,
		0.345396, -0.907045, -0.240774,
		36.005997, 32.288479, 38.917488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323311, 32.332684, 39.357124>,  <35.764221, 32.923412, 39.086029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323311, 32.332684, 39.357124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675022, 32.152870, 39.294159>,  <35.886051, 32.044983, 39.256378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675022, 32.152870, 39.294159>,  <35.323311, 32.332684, 39.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675022, 32.152870, 39.294159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121368, -0.531048, 0.838605,
		-0.460576, -0.718266, -0.521501,
		0.879284, -0.449535, -0.157413,
		35.938808, 32.018009, 39.246933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252274, 31.575258, 39.542675>,  <35.323311, 32.332684, 39.357124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252274, 31.575258, 39.542675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646160, 31.644741, 39.547611>,  <35.882492, 31.686430, 39.550571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646160, 31.644741, 39.547611>,  <35.252274, 31.575258, 39.542675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646160, 31.644741, 39.547611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082842, -0.529592, 0.844198,
		0.153176, -0.830276, -0.535890,
		0.984720, 0.173705, 0.012339,
		35.941578, 31.696852, 39.551311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503330, 30.877075, 39.687111>,  <35.252274, 31.575258, 39.542675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503330, 30.877075, 39.687111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772556, 31.156616, 39.783924>,  <35.934093, 31.324341, 39.842010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772556, 31.156616, 39.783924>,  <35.503330, 30.877075, 39.687111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772556, 31.156616, 39.783924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190476, -0.480020, 0.856329,
		0.714630, -0.530267, -0.456202,
		0.673070, 0.698854, 0.242034,
		35.974476, 31.366272, 39.856533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000359, 30.360632, 40.043968>,  <35.503330, 30.877075, 39.687111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000359, 30.360632, 40.043968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110676, 30.736319, 40.125759>,  <36.176868, 30.961731, 40.174835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110676, 30.736319, 40.125759>,  <36.000359, 30.360632, 40.043968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110676, 30.736319, 40.125759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409477, -0.307263, 0.859021,
		0.869635, -0.153185, -0.469329,
		0.275797, 0.939214, 0.204481,
		36.193417, 31.018084, 40.187103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695953, 30.304476, 40.312767>,  <36.000359, 30.360632, 40.043968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695953, 30.304476, 40.312767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579807, 30.668203, 40.431980>,  <36.510120, 30.886440, 40.503510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579807, 30.668203, 40.431980>,  <36.695953, 30.304476, 40.312767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579807, 30.668203, 40.431980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157433, -0.261812, 0.952192,
		0.943876, 0.323405, -0.067136,
		-0.290367, 0.909321, 0.298033,
		36.492699, 30.941000, 40.521389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267876, 30.530598, 40.664612>,  <36.695953, 30.304476, 40.312767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267876, 30.530598, 40.664612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949928, 30.741623, 40.784523>,  <36.759159, 30.868238, 40.856468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949928, 30.741623, 40.784523>,  <37.267876, 30.530598, 40.664612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949928, 30.741623, 40.784523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239967, -0.180454, 0.953862,
		0.557317, 0.830129, 0.016839,
		-0.794867, 0.527563, 0.299774,
		36.711468, 30.899891, 40.874454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544975, 30.961931, 41.231304>,  <37.267876, 30.530598, 40.664612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544975, 30.961931, 41.231304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149124, 30.913847, 41.262764>,  <36.911613, 30.884996, 41.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149124, 30.913847, 41.262764>,  <37.544975, 30.961931, 41.231304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149124, 30.913847, 41.262764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111464, -0.297156, 0.948301,
		-0.090623, 0.947232, 0.307473,
		-0.989628, -0.120211, 0.078653,
		36.852234, 30.877785, 41.286362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426750, 31.126432, 41.908733>,  <37.544975, 30.961931, 41.231304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426750, 31.126432, 41.908733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082104, 30.945715, 41.816212>,  <36.875317, 30.837284, 41.760696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082104, 30.945715, 41.816212>,  <37.426750, 31.126432, 41.908733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082104, 30.945715, 41.816212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148954, -0.210578, 0.966162,
		-0.485215, 0.866913, 0.114140,
		-0.861614, -0.451795, -0.231306,
		36.823620, 30.810177, 41.746819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916504, 31.449120, 42.322990>,  <37.426750, 31.126432, 41.908733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916504, 31.449120, 42.322990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783184, 31.086916, 42.217945>,  <36.703190, 30.869595, 42.154919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783184, 31.086916, 42.217945>,  <36.916504, 31.449120, 42.322990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783184, 31.086916, 42.217945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032179, -0.289299, 0.956698,
		-0.942270, 0.310420, 0.125562,
		-0.333303, -0.905509, -0.262609,
		36.683193, 30.815264, 42.139164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448917, 31.313356, 42.725201>,  <36.916504, 31.449120, 42.322990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448917, 31.313356, 42.725201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531639, 30.942427, 42.600426>,  <36.581272, 30.719870, 42.525562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531639, 30.942427, 42.600426>,  <36.448917, 31.313356, 42.725201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531639, 30.942427, 42.600426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011822, -0.321175, 0.946946,
		-0.978311, -0.192146, -0.077383,
		0.206806, -0.927322, -0.311938,
		36.593681, 30.664230, 42.506844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989025, 30.831408, 43.143093>,  <36.448917, 31.313356, 42.725201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989025, 30.831408, 43.143093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314869, 30.663326, 42.983170>,  <36.510376, 30.562477, 42.887215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314869, 30.663326, 42.983170>,  <35.989025, 30.831408, 43.143093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314869, 30.663326, 42.983170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241689, -0.380695, 0.892557,
		-0.527258, -0.823712, -0.208558,
		0.814607, -0.420202, -0.399806,
		36.559250, 30.537266, 42.863228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986351, 30.141319, 43.412270>,  <35.989025, 30.831408, 43.143093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986351, 30.141319, 43.412270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366096, 30.185877, 43.294765>,  <36.593945, 30.212610, 43.224262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366096, 30.185877, 43.294765>,  <35.986351, 30.141319, 43.412270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366096, 30.185877, 43.294765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311944, -0.445339, 0.839264,
		-0.037334, -0.888406, -0.457538,
		0.949367, 0.111393, -0.293759,
		36.650906, 30.219296, 43.206638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361248, 29.478565, 43.556458>,  <35.986351, 30.141319, 43.412270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361248, 29.478565, 43.556458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652046, 29.752968, 43.544689>,  <36.826527, 29.917610, 43.537628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652046, 29.752968, 43.544689>,  <36.361248, 29.478565, 43.556458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652046, 29.752968, 43.544689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368061, -0.353167, 0.860119,
		0.579657, -0.636135, -0.509244,
		0.727000, 0.686007, -0.029421,
		36.870148, 29.958771, 43.535862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970959, 29.118322, 43.781242>,  <36.361248, 29.478565, 43.556458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970959, 29.118322, 43.781242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073231, 29.504318, 43.804646>,  <37.134594, 29.735916, 43.818687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073231, 29.504318, 43.804646>,  <36.970959, 29.118322, 43.781242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073231, 29.504318, 43.804646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358615, -0.150866, 0.921214,
		0.897789, -0.214554, -0.384633,
		0.255678, 0.964990, 0.058503,
		37.149933, 29.793816, 43.822197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596191, 29.054752, 43.987934>,  <36.970959, 29.118322, 43.781242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596191, 29.054752, 43.987934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481342, 29.420662, 44.101601>,  <37.412434, 29.640207, 44.169800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481342, 29.420662, 44.101601>,  <37.596191, 29.054752, 43.987934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481342, 29.420662, 44.101601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388606, -0.159907, 0.907422,
		0.875526, 0.370970, -0.309573,
		-0.287124, 0.914774, 0.284164,
		37.395206, 29.695093, 44.186852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137867, 29.200062, 44.479721>,  <37.596191, 29.054752, 43.987934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137867, 29.200062, 44.479721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843407, 29.466518, 44.527615>,  <37.666729, 29.626392, 44.556351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843407, 29.466518, 44.527615>,  <38.137867, 29.200062, 44.479721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843407, 29.466518, 44.527615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167021, 0.007360, 0.985926,
		0.655885, 0.745789, -0.116677,
		-0.736152, 0.666141, 0.119735,
		37.622562, 29.666361, 44.563534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622116, 29.620932, 44.209343>,  <38.137867, 29.200062, 44.479721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622116, 29.620932, 44.209343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022083, 29.615988, 44.208160>,  <39.262062, 29.613022, 44.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022083, 29.615988, 44.208160>,  <38.622116, 29.620932, 44.209343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022083, 29.615988, 44.208160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003244, -0.023367, -0.999722,
		0.012286, 0.999651, -0.023405,
		0.999919, -0.012359, -0.002956,
		39.322060, 29.612280, 44.207275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959805, 30.265638, 43.829723>,  <38.622116, 29.620932, 44.209343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959805, 30.265638, 43.829723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227909, 29.969587, 43.807941>,  <39.388771, 29.791956, 43.794872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227909, 29.969587, 43.807941>,  <38.959805, 30.265638, 43.829723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227909, 29.969587, 43.807941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017217, 0.088861, -0.995895,
		0.741929, 0.666569, 0.072303,
		0.670258, -0.740128, -0.054453,
		39.428986, 29.747549, 43.791607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463547, 30.428999, 43.348530>,  <38.959805, 30.265638, 43.829723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463547, 30.428999, 43.348530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561733, 30.041670, 43.366867>,  <39.620644, 29.809273, 43.377869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561733, 30.041670, 43.366867>,  <39.463547, 30.428999, 43.348530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561733, 30.041670, 43.366867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121678, -0.016145, -0.992438,
		0.961739, 0.249185, 0.113861,
		0.245462, -0.968321, 0.045848,
		39.635372, 29.751173, 43.380623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101257, 30.374187, 43.063419>,  <39.463547, 30.428999, 43.348530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101257, 30.374187, 43.063419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965073, 29.998438, 43.047108>,  <39.883362, 29.772987, 43.037319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965073, 29.998438, 43.047108>,  <40.101257, 30.374187, 43.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965073, 29.998438, 43.047108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243935, -0.046359, -0.968683,
		0.908064, -0.339747, 0.244929,
		-0.340462, -0.939373, -0.040780,
		39.862934, 29.716625, 43.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711388, 29.911701, 42.894341>,  <40.101257, 30.374187, 43.063419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711388, 29.911701, 42.894341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375923, 29.713188, 42.804581>,  <40.174644, 29.594080, 42.750725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375923, 29.713188, 42.804581>,  <40.711388, 29.911701, 42.894341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375923, 29.713188, 42.804581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305661, -0.087853, -0.948079,
		0.450800, -0.863705, 0.225373,
		-0.838660, -0.496282, -0.224397,
		40.124325, 29.564304, 42.737263>
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
