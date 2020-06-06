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
	<24.633696, 34.709061, 35.113194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593121, 35.013996, 34.857525>,  <24.568775, 35.196957, 34.704124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593121, 35.013996, 34.857525>,  <24.633696, 34.709061, 35.113194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593121, 35.013996, 34.857525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175805, -0.646114, -0.742717,
		-0.979185, 0.037033, 0.199562,
		-0.101435, 0.762342, -0.639176,
		24.562691, 35.242699, 34.665771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183397, 34.201263, 35.000008>,  <24.633696, 34.709061, 35.113194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183397, 34.201263, 35.000008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488438, 34.301380, 35.238602>,  <25.671461, 34.361450, 35.381760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488438, 34.301380, 35.238602>,  <25.183397, 34.201263, 35.000008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488438, 34.301380, 35.238602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631552, -0.487576, -0.602836,
		0.139944, 0.836434, -0.529900,
		0.762599, 0.250296, 0.596485,
		25.717216, 34.376469, 35.417549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568392, 34.770924, 34.682129>,  <25.183397, 34.201263, 35.000008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568392, 34.770924, 34.682129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775070, 34.543686, 34.938347>,  <25.899076, 34.407345, 35.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775070, 34.543686, 34.938347>,  <25.568392, 34.770924, 34.682129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775070, 34.543686, 34.938347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509887, -0.396827, -0.763245,
		0.687780, 0.720970, 0.084625,
		0.516695, -0.568094, 0.640543,
		25.930079, 34.373257, 35.130508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272970, 34.870785, 34.522953>,  <25.568392, 34.770924, 34.682129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272970, 34.870785, 34.522953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206518, 34.512096, 34.687050>,  <26.166647, 34.296883, 34.785507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206518, 34.512096, 34.687050>,  <26.272970, 34.870785, 34.522953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206518, 34.512096, 34.687050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491682, -0.435943, -0.753792,
		0.854781, 0.076481, 0.513323,
		-0.166129, -0.896719, 0.410240,
		26.156679, 34.243080, 34.810123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918873, 34.472450, 34.415379>,  <26.272970, 34.870785, 34.522953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918873, 34.472450, 34.415379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635622, 34.196369, 34.474937>,  <26.465672, 34.030720, 34.510674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635622, 34.196369, 34.474937>,  <26.918873, 34.472450, 34.415379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635622, 34.196369, 34.474937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499624, -0.638813, -0.585059,
		0.498928, -0.339904, 0.797205,
		-0.708129, -0.690205, 0.148898,
		26.423183, 33.989307, 34.519608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293161, 33.811600, 34.710232>,  <26.918873, 34.472450, 34.415379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293161, 33.811600, 34.710232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967541, 33.772411, 34.481243>,  <26.772169, 33.748898, 34.343849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967541, 33.772411, 34.481243>,  <27.293161, 33.811600, 34.710232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967541, 33.772411, 34.481243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519734, -0.562816, -0.642740,
		-0.259226, -0.820756, 0.509079,
		-0.814051, -0.097971, -0.572471,
		26.723326, 33.743019, 34.309502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109463, 33.051598, 34.600975>,  <27.293161, 33.811600, 34.710232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109463, 33.051598, 34.600975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986526, 33.281895, 34.297909>,  <26.912766, 33.420074, 34.116070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986526, 33.281895, 34.297909>,  <27.109463, 33.051598, 34.600975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986526, 33.281895, 34.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551655, -0.540968, -0.634846,
		-0.775383, -0.613086, -0.151350,
		-0.307340, 0.575742, -0.757670,
		26.894325, 33.454617, 34.070606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723940, 32.659599, 34.100304>,  <27.109463, 33.051598, 34.600975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723940, 32.659599, 34.100304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927092, 32.971195, 33.953209>,  <27.048983, 33.158154, 33.864952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927092, 32.971195, 33.953209>,  <26.723940, 32.659599, 34.100304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927092, 32.971195, 33.953209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592031, -0.625745, -0.507881,
		-0.625745, 0.040230, -0.778990,
		0.507881, 0.778990, -0.367739,
		27.079456, 33.204891, 33.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760376, 32.562672, 33.367455>,  <26.723940, 32.659599, 34.100304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760376, 32.562672, 33.367455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062622, 32.807426, 33.460960>,  <27.243969, 32.954277, 33.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062622, 32.807426, 33.460960>,  <26.760376, 32.562672, 33.367455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062622, 32.807426, 33.460960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618321, -0.548533, -0.562842,
		-0.216164, 0.569835, -0.792819,
		0.755614, 0.611882, 0.233768,
		27.289307, 32.990990, 33.531090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989733, 32.919647, 32.811649>,  <26.760376, 32.562672, 33.367455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989733, 32.919647, 32.811649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310160, 32.889252, 33.049141>,  <27.502417, 32.871014, 33.191635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310160, 32.889252, 33.049141>,  <26.989733, 32.919647, 32.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310160, 32.889252, 33.049141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473641, -0.526036, -0.706365,
		0.365998, 0.847061, -0.385400,
		0.801068, -0.075987, 0.593730,
		27.550480, 32.866455, 33.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570770, 32.949024, 32.341366>,  <26.989733, 32.919647, 32.811649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570770, 32.949024, 32.341366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763840, 32.852192, 32.678040>,  <27.879681, 32.794094, 32.880043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763840, 32.852192, 32.678040>,  <27.570770, 32.949024, 32.341366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763840, 32.852192, 32.678040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589257, -0.621221, -0.516586,
		0.647923, 0.745308, -0.157200,
		0.482672, -0.242077, 0.841681,
		27.908642, 32.779568, 32.930542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325684, 32.916672, 32.180138>,  <27.570770, 32.949024, 32.341366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325684, 32.916672, 32.180138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163628, 32.668621, 32.448856>,  <28.066395, 32.519791, 32.610088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163628, 32.668621, 32.448856>,  <28.325684, 32.916672, 32.180138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163628, 32.668621, 32.448856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381104, -0.782466, -0.492450,
		0.831037, 0.056514, 0.553338,
		-0.405138, -0.620124, 0.671796,
		28.042086, 32.482582, 32.650394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814999, 32.381546, 32.253014>,  <28.325684, 32.916672, 32.180138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814999, 32.381546, 32.253014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443176, 32.276363, 32.356380>,  <28.220083, 32.213253, 32.418400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443176, 32.276363, 32.356380>,  <28.814999, 32.381546, 32.253014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443176, 32.276363, 32.356380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100984, -0.855715, -0.507498,
		0.354580, -0.445652, 0.821990,
		-0.929556, -0.262956, 0.258416,
		28.164309, 32.197475, 32.433907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726978, 31.623606, 32.515335>,  <28.814999, 32.381546, 32.253014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726978, 31.623606, 32.515335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360294, 31.683899, 32.367321>,  <28.140284, 31.720076, 32.278515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360294, 31.683899, 32.367321>,  <28.726978, 31.623606, 32.515335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360294, 31.683899, 32.367321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028232, -0.899359, -0.436299,
		-0.398557, -0.410406, 0.820195,
		-0.916709, 0.150734, -0.370032,
		28.085281, 31.729118, 32.256310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141180, 31.540485, 32.946724>,  <28.726978, 31.623606, 32.515335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141180, 31.540485, 32.946724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426155, 31.816168, 32.999527>,  <28.597139, 31.981577, 33.031208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426155, 31.816168, 32.999527>,  <28.141180, 31.540485, 32.946724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426155, 31.816168, 32.999527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661096, 0.596105, 0.455644,
		0.235342, -0.411888, 0.880320,
		0.712437, 0.689208, 0.132010,
		28.639887, 32.022930, 33.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145998, 31.758764, 33.689220>,  <28.141180, 31.540485, 32.946724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145998, 31.758764, 33.689220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299868, 32.039658, 33.449589>,  <28.392189, 32.208195, 33.305809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299868, 32.039658, 33.449589>,  <28.145998, 31.758764, 33.689220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299868, 32.039658, 33.449589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487507, 0.705679, 0.514154,
		0.783813, 0.094273, 0.613800,
		0.384675, 0.702232, -0.599079,
		28.415270, 32.250328, 33.269867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513086, 32.369900, 33.984497>,  <28.145998, 31.758764, 33.689220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513086, 32.369900, 33.984497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304277, 32.485939, 33.663666>,  <28.178991, 32.555561, 33.471165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304277, 32.485939, 33.663666>,  <28.513086, 32.369900, 33.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304277, 32.485939, 33.663666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473909, 0.683214, 0.555544,
		0.709155, 0.670121, -0.219174,
		-0.522024, 0.290098, -0.802081,
		28.147671, 32.572968, 33.423042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558981, 33.017086, 34.009708>,  <28.513086, 32.369900, 33.984497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558981, 33.017086, 34.009708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246929, 32.960625, 33.765915>,  <28.059698, 32.926750, 33.619640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246929, 32.960625, 33.765915>,  <28.558981, 33.017086, 34.009708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246929, 32.960625, 33.765915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455292, 0.796251, 0.398363,
		0.429074, 0.588269, -0.685445,
		-0.780132, -0.141151, -0.609484,
		28.012890, 32.918278, 33.583069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345257, 33.678036, 33.778114>,  <28.558981, 33.017086, 34.009708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345257, 33.678036, 33.778114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018469, 33.452274, 33.730759>,  <27.822397, 33.316818, 33.702347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018469, 33.452274, 33.730759>,  <28.345257, 33.678036, 33.778114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018469, 33.452274, 33.730759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560214, 0.728028, 0.395140,
		-0.136829, 0.389139, -0.910961,
		-0.816969, -0.564400, -0.118386,
		27.773378, 33.282955, 33.695244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919403, 34.142250, 33.545059>,  <28.345257, 33.678036, 33.778114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919403, 34.142250, 33.545059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653236, 33.866623, 33.659885>,  <27.493536, 33.701248, 33.728779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653236, 33.866623, 33.659885>,  <27.919403, 34.142250, 33.545059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653236, 33.866623, 33.659885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550443, 0.712697, 0.434828,
		-0.504214, 0.131332, -0.853534,
		-0.665417, -0.689069, 0.287061,
		27.453611, 33.659901, 33.746002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279903, 34.235718, 33.260620>,  <27.919403, 34.142250, 33.545059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279903, 34.235718, 33.260620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125435, 33.880348, 33.359882>,  <27.032755, 33.667126, 33.419441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125435, 33.880348, 33.359882>,  <27.279903, 34.235718, 33.260620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125435, 33.880348, 33.359882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779540, 0.458145, 0.427107,
		-0.493143, -0.028514, -0.869481,
		-0.386170, -0.888420, 0.248159,
		27.009584, 33.613823, 33.434330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506502, 34.133354, 33.056469>,  <27.279903, 34.235718, 33.260620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506502, 34.133354, 33.056469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615107, 33.906548, 33.367535>,  <26.680269, 33.770462, 33.554176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615107, 33.906548, 33.367535>,  <26.506502, 34.133354, 33.056469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615107, 33.906548, 33.367535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755303, 0.375253, 0.537311,
		-0.596489, -0.733262, -0.326387,
		0.271512, -0.567021, 0.777669,
		26.696560, 33.736443, 33.600834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844065, 33.805359, 33.336765>,  <26.506502, 34.133354, 33.056469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844065, 33.805359, 33.336765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101761, 33.805992, 33.642693>,  <26.256378, 33.806374, 33.826248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101761, 33.805992, 33.642693>,  <25.844065, 33.805359, 33.336765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101761, 33.805992, 33.642693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738771, 0.260070, 0.621756,
		-0.197922, -0.965588, 0.168719,
		0.644239, 0.001586, 0.764823,
		26.295033, 33.806469, 33.872139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606625, 33.349445, 33.878719>,  <25.844065, 33.805359, 33.336765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606625, 33.349445, 33.878719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843103, 33.644287, 34.009659>,  <25.984991, 33.821194, 34.088223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843103, 33.644287, 34.009659>,  <25.606625, 33.349445, 33.878719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843103, 33.644287, 34.009659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701516, 0.269702, 0.659648,
		0.397946, -0.619623, 0.676540,
		0.591197, 0.737108, 0.327349,
		26.020462, 33.865417, 34.107864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595137, 33.023121, 34.569904>,  <25.606625, 33.349445, 33.878719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595137, 33.023121, 34.569904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867987, 33.315598, 34.573162>,  <26.031696, 33.491085, 34.575119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867987, 33.315598, 34.573162>,  <25.595137, 33.023121, 34.569904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867987, 33.315598, 34.573162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351409, 0.318014, 0.880556,
		0.641263, -0.603513, 0.473871,
		0.682124, 0.731191, 0.008149,
		26.072624, 33.534954, 34.575607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971434, 33.064556, 35.290642>,  <25.595137, 33.023121, 34.569904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971434, 33.064556, 35.290642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016037, 33.430767, 35.136044>,  <26.042799, 33.650494, 35.043285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016037, 33.430767, 35.136044>,  <25.971434, 33.064556, 35.290642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016037, 33.430767, 35.136044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058783, 0.394312, 0.917094,
		0.992023, -0.079545, 0.097787,
		0.111509, 0.915527, -0.386491,
		26.049490, 33.705425, 35.020096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450361, 33.400265, 35.709133>,  <25.971434, 33.064556, 35.290642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450361, 33.400265, 35.709133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255838, 33.709751, 35.546715>,  <26.139124, 33.895443, 35.449265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255838, 33.709751, 35.546715>,  <26.450361, 33.400265, 35.709133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255838, 33.709751, 35.546715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000577, 0.464979, 0.885321,
		0.873787, 0.430304, -0.226570,
		-0.486307, 0.773714, -0.406045,
		26.109945, 33.941864, 35.424900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739773, 34.188747, 35.823147>,  <26.450361, 33.400265, 35.709133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739773, 34.188747, 35.823147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342356, 34.201527, 35.779594>,  <26.103907, 34.209194, 35.753464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342356, 34.201527, 35.779594>,  <26.739773, 34.188747, 35.823147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342356, 34.201527, 35.779594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078960, 0.494499, 0.865584,
		0.081499, 0.868591, -0.488782,
		-0.993541, 0.031950, -0.108885,
		26.044294, 34.211113, 35.746929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043423, 33.773289, 36.427048>,  <26.739773, 34.188747, 35.823147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043423, 33.773289, 36.427048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269707, 33.452805, 36.505051>,  <27.405478, 33.260513, 36.551853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269707, 33.452805, 36.505051>,  <27.043423, 33.773289, 36.427048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269707, 33.452805, 36.505051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095250, 0.298398, 0.949677,
		-0.819086, -0.518665, 0.245121,
		0.565708, -0.801215, 0.195011,
		27.439419, 33.212440, 36.563553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794533, 33.350689, 36.996891>,  <27.043423, 33.773289, 36.427048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794533, 33.350689, 36.996891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183760, 33.261292, 36.974297>,  <27.417295, 33.207653, 36.960739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183760, 33.261292, 36.974297>,  <26.794533, 33.350689, 36.996891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183760, 33.261292, 36.974297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058487, 0.002326, 0.998285,
		-0.222975, -0.974703, 0.015334,
		0.973068, -0.223490, -0.056489,
		27.475679, 33.194244, 36.957352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984861, 32.925106, 37.582298>,  <26.794533, 33.350689, 36.996891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984861, 32.925106, 37.582298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333771, 33.070976, 37.451973>,  <27.543116, 33.158497, 37.373779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333771, 33.070976, 37.451973>,  <26.984861, 32.925106, 37.582298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333771, 33.070976, 37.451973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363757, -0.038566, 0.930695,
		0.326834, -0.930337, -0.166292,
		0.872273, 0.364673, -0.325812,
		27.595453, 33.180378, 37.354229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418095, 32.531494, 37.903603>,  <26.984861, 32.925106, 37.582298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418095, 32.531494, 37.903603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628046, 32.858253, 37.807949>,  <27.754017, 33.054310, 37.750557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628046, 32.858253, 37.807949>,  <27.418095, 32.531494, 37.903603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628046, 32.858253, 37.807949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402834, 0.009089, 0.915228,
		0.749819, -0.576714, -0.324302,
		0.524878, 0.816895, -0.239135,
		27.785509, 33.103321, 37.736210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069252, 32.322918, 38.132584>,  <27.418095, 32.531494, 37.903603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069252, 32.322918, 38.132584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071796, 32.720432, 38.088135>,  <28.073322, 32.958942, 38.061466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071796, 32.720432, 38.088135>,  <28.069252, 32.322918, 38.132584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071796, 32.720432, 38.088135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517814, 0.091796, 0.850554,
		0.855469, -0.062951, -0.514013,
		0.006359, 0.993786, -0.111126,
		28.073704, 33.018570, 38.054798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713900, 32.489227, 38.352951>,  <28.069252, 32.322918, 38.132584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713900, 32.489227, 38.352951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499010, 32.824219, 38.392986>,  <28.370077, 33.025215, 38.417007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499010, 32.824219, 38.392986>,  <28.713900, 32.489227, 38.352951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499010, 32.824219, 38.392986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351462, 0.114405, 0.929186,
		0.766724, 0.534359, -0.355804,
		-0.537224, 0.837480, 0.100089,
		28.337843, 33.075462, 38.423012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166594, 33.015377, 38.538708>,  <28.713900, 32.489227, 38.352951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166594, 33.015377, 38.538708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802675, 33.123173, 38.664978>,  <28.584324, 33.187851, 38.740742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802675, 33.123173, 38.664978>,  <29.166594, 33.015377, 38.538708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802675, 33.123173, 38.664978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385207, 0.264993, 0.883965,
		0.154565, 0.925827, -0.344898,
		-0.909794, 0.269487, 0.315677,
		28.529737, 33.204018, 38.759682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344418, 33.723396, 38.289028>,  <29.166594, 33.015377, 38.538708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344418, 33.723396, 38.289028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974216, 33.773636, 38.431950>,  <28.752096, 33.803780, 38.517704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974216, 33.773636, 38.431950>,  <29.344418, 33.723396, 38.289028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974216, 33.773636, 38.431950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372646, 0.470512, 0.799846,
		-0.067656, 0.873409, -0.482265,
		-0.925504, 0.125600, 0.357305,
		28.696566, 33.811317, 38.539143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282721, 34.316505, 38.634514>,  <29.344418, 33.723396, 38.289028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282721, 34.316505, 38.634514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993376, 34.105381, 38.812572>,  <28.819769, 33.978706, 38.919407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993376, 34.105381, 38.812572>,  <29.282721, 34.316505, 38.634514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993376, 34.105381, 38.812572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402528, 0.201452, 0.892966,
		-0.560995, 0.825125, 0.066736,
		-0.723364, -0.527813, 0.445149,
		28.776367, 33.947037, 38.946117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970640, 34.779175, 39.080605>,  <29.282721, 34.316505, 38.634514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970640, 34.779175, 39.080605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858540, 34.435791, 39.252422>,  <28.791279, 34.229763, 39.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858540, 34.435791, 39.252422>,  <28.970640, 34.779175, 39.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858540, 34.435791, 39.252422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267215, 0.360025, 0.893856,
		-0.921984, 0.365287, 0.128494,
		-0.280253, -0.858456, 0.429547,
		28.774464, 34.178253, 39.381287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554079, 34.785358, 39.610020>,  <28.970640, 34.779175, 39.080605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554079, 34.785358, 39.610020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776686, 34.461628, 39.685146>,  <28.910250, 34.267387, 39.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776686, 34.461628, 39.685146>,  <28.554079, 34.785358, 39.610020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776686, 34.461628, 39.685146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335955, 0.425960, 0.840055,
		-0.759885, -0.404404, 0.508951,
		0.556515, -0.809330, 0.187819,
		28.943640, 34.218830, 39.741493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344532, 34.549637, 40.274208>,  <28.554079, 34.785358, 39.610020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344532, 34.549637, 40.274208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723459, 34.459934, 40.182739>,  <28.950815, 34.406113, 40.127857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723459, 34.459934, 40.182739>,  <28.344532, 34.549637, 40.274208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723459, 34.459934, 40.182739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311805, 0.482491, 0.818523,
		-0.073227, -0.846706, 0.526998,
		0.947320, -0.224259, -0.228676,
		29.007656, 34.392658, 40.114136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103849, 34.349464, 40.611813>,  <28.344532, 34.549637, 40.274208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103849, 34.349464, 40.611813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060362, 33.951836, 40.612309>,  <29.034269, 33.713257, 40.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060362, 33.951836, 40.612309>,  <29.103849, 34.349464, 40.611813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060362, 33.951836, 40.612309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618505, 0.066670, -0.782948,
		0.778224, -0.085884, -0.622087,
		-0.108717, -0.994072, 0.001236,
		29.027746, 33.653614, 40.612679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426905, 33.910881, 40.137871>,  <29.103849, 34.349464, 40.611813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426905, 33.910881, 40.137871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071039, 33.778133, 40.263317>,  <28.857519, 33.698483, 40.338585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071039, 33.778133, 40.263317>,  <29.426905, 33.910881, 40.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071039, 33.778133, 40.263317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361242, 0.091462, -0.927976,
		0.279285, -0.938880, -0.201257,
		-0.889665, -0.331872, 0.313619,
		28.804140, 33.678574, 40.357403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202541, 33.206913, 39.981236>,  <29.426905, 33.910881, 40.137871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202541, 33.206913, 39.981236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892832, 33.456474, 40.023636>,  <28.707006, 33.606213, 40.049076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892832, 33.456474, 40.023636>,  <29.202541, 33.206913, 39.981236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892832, 33.456474, 40.023636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026587, 0.135288, -0.990449,
		-0.632289, -0.769700, -0.088162,
		-0.774276, 0.623907, 0.106006,
		28.660549, 33.643646, 40.055439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454330, 32.976368, 39.771477>,  <29.202541, 33.206913, 39.981236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454330, 32.976368, 39.771477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529644, 33.353405, 39.661148>,  <28.574833, 33.579628, 39.594952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529644, 33.353405, 39.661148>,  <28.454330, 32.976368, 39.771477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529644, 33.353405, 39.661148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261433, -0.222605, -0.939202,
		-0.946679, 0.248945, 0.204511,
		0.188284, 0.942589, -0.275818,
		28.586128, 33.636181, 39.578403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800745, 33.343494, 39.495941>,  <28.454330, 32.976368, 39.771477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800745, 33.343494, 39.495941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116762, 33.524387, 39.330379>,  <28.306374, 33.632923, 39.231041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116762, 33.524387, 39.330379>,  <27.800745, 33.343494, 39.495941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116762, 33.524387, 39.330379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349974, -0.221632, -0.910164,
		-0.503337, 0.863926, -0.016832,
		0.790045, 0.452228, -0.413907,
		28.353775, 33.660057, 39.206207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507620, 33.738197, 38.980644>,  <27.800745, 33.343494, 39.495941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507620, 33.738197, 38.980644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892141, 33.658154, 38.904907>,  <28.122854, 33.610126, 38.859463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892141, 33.658154, 38.904907>,  <27.507620, 33.738197, 38.980644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892141, 33.658154, 38.904907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224277, -0.169324, -0.959703,
		0.159986, 0.965031, -0.207652,
		0.961303, -0.200110, -0.189345,
		28.180532, 33.598122, 38.848103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712669, 34.208233, 38.409721>,  <27.507620, 33.738197, 38.980644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712669, 34.208233, 38.409721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945711, 33.883137, 38.411533>,  <28.085537, 33.688080, 38.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945711, 33.883137, 38.411533>,  <27.712669, 34.208233, 38.409721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945711, 33.883137, 38.411533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252721, -0.186450, -0.949404,
		0.772465, 0.551985, -0.314023,
		0.582607, -0.812742, 0.004528,
		28.120493, 33.639313, 38.412891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285515, 34.331242, 37.973026>,  <27.712669, 34.208233, 38.409721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285515, 34.331242, 37.973026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220276, 33.938076, 38.007137>,  <28.181131, 33.702175, 38.027603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220276, 33.938076, 38.007137>,  <28.285515, 34.331242, 37.973026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220276, 33.938076, 38.007137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213384, -0.049245, -0.975727,
		0.963258, -0.177336, -0.201707,
		-0.163098, -0.982918, 0.085276,
		28.171347, 33.643200, 38.032719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336830, 34.170502, 37.395546>,  <28.285515, 34.331242, 37.973026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336830, 34.170502, 37.395546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220123, 33.808186, 37.518456>,  <28.150099, 33.590797, 37.592201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220123, 33.808186, 37.518456>,  <28.336830, 34.170502, 37.395546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220123, 33.808186, 37.518456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240967, -0.241284, -0.940062,
		0.925639, -0.348322, -0.147867,
		-0.291766, -0.905789, 0.307276,
		28.132593, 33.536449, 37.610638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758686, 33.660942, 37.073704>,  <28.336830, 34.170502, 37.395546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758686, 33.660942, 37.073704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395163, 33.523254, 37.168011>,  <28.177050, 33.440643, 37.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395163, 33.523254, 37.168011>,  <28.758686, 33.660942, 37.073704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395163, 33.523254, 37.168011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188588, -0.165147, -0.968071,
		0.372164, -0.924251, 0.085171,
		-0.908806, -0.344219, 0.235765,
		28.122520, 33.419991, 37.238739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750818, 33.025154, 36.781818>,  <28.758686, 33.660942, 37.073704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750818, 33.025154, 36.781818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363262, 33.101738, 36.844543>,  <28.130728, 33.147690, 36.882179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363262, 33.101738, 36.844543>,  <28.750818, 33.025154, 36.781818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363262, 33.101738, 36.844543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201813, -0.244478, -0.948421,
		-0.143246, -0.950565, 0.275512,
		-0.968892, 0.191460, 0.156816,
		28.072594, 33.159176, 36.891590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504995, 33.246189, 36.847515>,  <28.750818, 33.025154, 36.781818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504995, 33.246189, 36.847515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481354, 33.622551, 36.980904>,  <29.467169, 33.848370, 37.060936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481354, 33.622551, 36.980904>,  <29.504995, 33.246189, 36.847515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481354, 33.622551, 36.980904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114378, -0.338239, 0.934084,
		0.991678, 0.017064, 0.127610,
		-0.059102, 0.940906, 0.333472,
		29.463623, 33.904823, 37.080944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114704, 33.344513, 37.254353>,  <29.504995, 33.246189, 36.847515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114704, 33.344513, 37.254353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772570, 33.523148, 37.359394>,  <29.567289, 33.630329, 37.422421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772570, 33.523148, 37.359394>,  <30.114704, 33.344513, 37.254353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772570, 33.523148, 37.359394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039006, -0.449934, 0.892209,
		0.516601, 0.773383, 0.367426,
		-0.855338, 0.446584, 0.262603,
		29.515968, 33.657124, 37.438175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292402, 33.686260, 37.839584>,  <30.114704, 33.344513, 37.254353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292402, 33.686260, 37.839584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904810, 33.589020, 37.821808>,  <29.672255, 33.530674, 37.811142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904810, 33.589020, 37.821808>,  <30.292402, 33.686260, 37.839584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904810, 33.589020, 37.821808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111941, -0.592081, 0.798066,
		-0.220324, 0.768337, 0.600929,
		-0.968982, -0.243102, -0.044441,
		29.614115, 33.516090, 37.808475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781715, 34.108231, 37.934052>,  <30.292402, 33.686260, 37.839584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781715, 34.108231, 37.934052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009102, 34.170921, 38.257107>,  <31.145535, 34.208534, 38.450939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009102, 34.170921, 38.257107>,  <30.781715, 34.108231, 37.934052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009102, 34.170921, 38.257107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772064, -0.440728, -0.457904,
		0.284184, 0.883853, -0.371541,
		0.568468, 0.156725, 0.807639,
		31.179642, 34.217937, 38.499397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463758, 34.327194, 37.769753>,  <30.781715, 34.108231, 37.934052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463758, 34.327194, 37.769753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529594, 34.176678, 38.134460>,  <31.569096, 34.086369, 38.353283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529594, 34.176678, 38.134460>,  <31.463758, 34.327194, 37.769753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529594, 34.176678, 38.134460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805230, -0.482601, -0.344530,
		0.569662, 0.790887, 0.223567,
		0.164591, -0.376288, 0.911766,
		31.578972, 34.063789, 38.407990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153599, 34.124664, 37.709583>,  <31.463758, 34.327194, 37.769753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153599, 34.124664, 37.709583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054676, 33.934780, 38.047459>,  <31.995323, 33.820850, 38.250183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054676, 33.934780, 38.047459>,  <32.153599, 34.124664, 37.709583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054676, 33.934780, 38.047459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832502, -0.550143, -0.065440,
		0.495762, 0.687018, 0.531250,
		-0.247305, -0.474709, 0.844684,
		31.980484, 33.792366, 38.300865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703270, 33.897808, 38.262016>,  <32.153599, 34.124664, 37.709583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703270, 33.897808, 38.262016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406780, 33.630817, 38.233559>,  <32.228886, 33.470623, 38.216484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406780, 33.630817, 38.233559>,  <32.703270, 33.897808, 38.262016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406780, 33.630817, 38.233559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666730, -0.719784, -0.193346,
		0.077846, -0.190747, 0.978548,
		-0.741223, -0.667478, -0.071145,
		32.184414, 33.430573, 38.212215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832012, 33.313808, 38.682259>,  <32.703270, 33.897808, 38.262016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832012, 33.313808, 38.682259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603916, 33.190655, 38.377621>,  <32.467060, 33.116764, 38.194836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603916, 33.190655, 38.377621>,  <32.832012, 33.313808, 38.682259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603916, 33.190655, 38.377621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674404, -0.704819, -0.220023,
		-0.469047, -0.639090, 0.609556,
		-0.570241, -0.307886, -0.761598,
		32.432842, 33.098289, 38.149143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636707, 32.571445, 38.684307>,  <32.832012, 33.313808, 38.682259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636707, 32.571445, 38.684307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664730, 32.712574, 38.311081>,  <32.681545, 32.797249, 38.087147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664730, 32.712574, 38.311081>,  <32.636707, 32.571445, 38.684307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664730, 32.712574, 38.311081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788578, -0.592438, -0.164808,
		-0.610931, -0.724249, -0.319729,
		0.070058, 0.352818, -0.933066,
		32.685749, 32.818420, 38.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629612, 32.000385, 38.282413>,  <32.636707, 32.571445, 38.684307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629612, 32.000385, 38.282413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822178, 32.300400, 38.101002>,  <32.937717, 32.480408, 37.992153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822178, 32.300400, 38.101002>,  <32.629612, 32.000385, 38.282413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822178, 32.300400, 38.101002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853263, -0.519376, 0.046802,
		-0.200450, -0.409512, -0.890011,
		0.481416, 0.750032, -0.453531,
		32.966602, 32.525410, 37.964943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004032, 31.807138, 37.569420>,  <32.629612, 32.000385, 38.282413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004032, 31.807138, 37.569420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195423, 32.079544, 37.791153>,  <33.310257, 32.242989, 37.924194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195423, 32.079544, 37.791153>,  <33.004032, 31.807138, 37.569420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195423, 32.079544, 37.791153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870627, -0.450119, -0.198498,
		0.114336, 0.577593, -0.808278,
		0.478473, 0.681013, 0.554332,
		33.338966, 32.283848, 37.957451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330425, 32.414085, 37.185268>,  <33.004032, 31.807138, 37.569420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330425, 32.414085, 37.185268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511528, 32.240028, 37.496567>,  <33.620190, 32.135593, 37.683346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511528, 32.240028, 37.496567>,  <33.330425, 32.414085, 37.185268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511528, 32.240028, 37.496567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602476, -0.494133, -0.626782,
		0.657294, 0.752653, 0.038440,
		0.452755, -0.435139, 0.778246,
		33.647354, 32.109486, 37.730042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068272, 32.555695, 37.092094>,  <33.330425, 32.414085, 37.185268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068272, 32.555695, 37.092094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001385, 32.243351, 37.332859>,  <33.961254, 32.055946, 37.477318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001385, 32.243351, 37.332859>,  <34.068272, 32.555695, 37.092094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001385, 32.243351, 37.332859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689547, -0.528978, -0.494680,
		0.704673, 0.332327, 0.626893,
		-0.167217, -0.780859, 0.601911,
		33.951221, 32.009094, 37.513432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673473, 32.233543, 37.428486>,  <34.068272, 32.555695, 37.092094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673473, 32.233543, 37.428486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393433, 31.959494, 37.348026>,  <34.225407, 31.795063, 37.299751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393433, 31.959494, 37.348026>,  <34.673473, 32.233543, 37.428486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393433, 31.959494, 37.348026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624652, -0.451175, -0.637378,
		0.345929, -0.571879, 0.743833,
		-0.700102, -0.685124, -0.201151,
		34.183403, 31.753956, 37.287682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003399, 31.570515, 37.462307>,  <34.673473, 32.233543, 37.428486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003399, 31.570515, 37.462307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675262, 31.544874, 37.235001>,  <34.478382, 31.529490, 37.098618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675262, 31.544874, 37.235001>,  <35.003399, 31.570515, 37.462307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675262, 31.544874, 37.235001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489380, -0.592814, -0.639592,
		-0.295880, -0.802784, 0.517680,
		-0.820343, -0.064100, -0.568269,
		34.429161, 31.525644, 37.064522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852894, 30.896397, 37.445267>,  <35.003399, 31.570515, 37.462307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852894, 30.896397, 37.445267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728218, 31.069687, 37.106998>,  <34.653412, 31.173660, 36.904037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728218, 31.069687, 37.106998>,  <34.852894, 30.896397, 37.445267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728218, 31.069687, 37.106998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460111, -0.709890, -0.533249,
		-0.831352, -0.555313, 0.021935,
		-0.311691, 0.433226, -0.845674,
		34.634712, 31.199654, 36.853294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848984, 30.374670, 36.968178>,  <34.852894, 30.896397, 37.445267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848984, 30.374670, 36.968178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789082, 30.666515, 36.701271>,  <34.753139, 30.841621, 36.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789082, 30.666515, 36.701271>,  <34.848984, 30.374670, 36.968178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789082, 30.666515, 36.701271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194145, -0.640034, -0.743413,
		-0.969474, -0.240879, -0.045799,
		-0.149759, 0.729612, -0.667262,
		34.744152, 30.885399, 36.501091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471558, 30.025490, 36.444309>,  <34.848984, 30.374670, 36.968178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471558, 30.025490, 36.444309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580910, 30.362011, 36.257774>,  <34.646519, 30.563925, 36.145851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580910, 30.362011, 36.257774>,  <34.471558, 30.025490, 36.444309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580910, 30.362011, 36.257774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093472, -0.505748, -0.857603,
		-0.957355, 0.190859, -0.216898,
		0.273377, 0.841304, -0.466340,
		34.662922, 30.614403, 36.117874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068008, 30.042696, 35.841736>,  <34.471558, 30.025490, 36.444309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068008, 30.042696, 35.841736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363251, 30.297691, 35.753365>,  <34.540398, 30.450689, 35.700344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363251, 30.297691, 35.753365>,  <34.068008, 30.042696, 35.841736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363251, 30.297691, 35.753365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015744, -0.343632, -0.938973,
		-0.674502, 0.689582, -0.263673,
		0.738105, 0.637490, -0.220924,
		34.584682, 30.488939, 35.687088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908398, 30.255421, 35.091503>,  <34.068008, 30.042696, 35.841736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908398, 30.255421, 35.091503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297932, 30.302599, 35.169201>,  <34.531654, 30.330906, 35.215820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297932, 30.302599, 35.169201>,  <33.908398, 30.255421, 35.091503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297932, 30.302599, 35.169201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226892, -0.456837, -0.860128,
		-0.012711, 0.881697, -0.471646,
		0.973837, 0.117946, 0.194243,
		34.590084, 30.337982, 35.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134560, 30.731951, 34.635666>,  <33.908398, 30.255421, 35.091503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134560, 30.731951, 34.635666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471027, 30.533550, 34.721844>,  <34.672909, 30.414511, 34.773552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471027, 30.533550, 34.721844>,  <34.134560, 30.731951, 34.635666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471027, 30.533550, 34.721844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160096, -0.152137, -0.975307,
		0.516531, 0.854890, -0.048565,
		0.841169, -0.496001, 0.215448,
		34.723377, 30.384750, 34.786476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533543, 30.936296, 34.089134>,  <34.134560, 30.731951, 34.635666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533543, 30.936296, 34.089134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767250, 30.644497, 34.231380>,  <34.907475, 30.469418, 34.316727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767250, 30.644497, 34.231380>,  <34.533543, 30.936296, 34.089134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767250, 30.644497, 34.231380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595662, 0.087870, -0.798414,
		0.551196, 0.678313, 0.485875,
		0.584268, -0.729500, 0.355612,
		34.942532, 30.425648, 34.338062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239197, 31.218618, 34.050636>,  <34.533543, 30.936296, 34.089134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239197, 31.218618, 34.050636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256207, 30.819008, 34.045937>,  <35.266415, 30.579241, 34.043118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256207, 30.819008, 34.045937>,  <35.239197, 31.218618, 34.050636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256207, 30.819008, 34.045937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549434, 0.033212, -0.834877,
		0.834454, 0.029048, 0.550311,
		0.042528, -0.999026, -0.011754,
		35.268967, 30.519300, 34.042412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828236, 31.101915, 33.829514>,  <35.239197, 31.218618, 34.050636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828236, 31.101915, 33.829514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717365, 30.725565, 33.751617>,  <35.650841, 30.499754, 33.704880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717365, 30.725565, 33.751617>,  <35.828236, 31.101915, 33.829514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717365, 30.725565, 33.751617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417180, 0.064733, -0.906515,
		0.865525, -0.332509, 0.374572,
		-0.277178, -0.940876, -0.194744,
		35.634212, 30.443302, 33.693195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492065, 30.749876, 33.651764>,  <35.828236, 31.101915, 33.829514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492065, 30.749876, 33.651764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168335, 30.570349, 33.500210>,  <35.974094, 30.462633, 33.409279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168335, 30.570349, 33.500210>,  <36.492065, 30.749876, 33.651764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168335, 30.570349, 33.500210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385843, 0.080095, -0.919081,
		0.442846, -0.890027, 0.108350,
		-0.809328, -0.448818, -0.378881,
		35.925537, 30.435703, 33.386547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714439, 30.169270, 33.242733>,  <36.492065, 30.749876, 33.651764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714439, 30.169270, 33.242733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350548, 30.246510, 33.095711>,  <36.132214, 30.292854, 33.007496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350548, 30.246510, 33.095711>,  <36.714439, 30.169270, 33.242733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350548, 30.246510, 33.095711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383154, 0.049455, -0.922360,
		-0.159931, -0.979932, -0.118978,
		-0.909734, 0.193101, -0.367555,
		36.077629, 30.304440, 32.985443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599339, 29.743120, 32.604031>,  <36.714439, 30.169270, 33.242733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599339, 29.743120, 32.604031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331970, 30.037333, 32.559841>,  <36.171551, 30.213860, 32.533329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331970, 30.037333, 32.559841>,  <36.599339, 29.743120, 32.604031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331970, 30.037333, 32.559841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052699, -0.101320, -0.993457,
		-0.741914, -0.669870, 0.028962,
		-0.668421, 0.735533, -0.110472,
		36.131443, 30.257992, 32.526699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160355, 29.513382, 32.025257>,  <36.599339, 29.743120, 32.604031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160355, 29.513382, 32.025257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098488, 29.907909, 32.048080>,  <36.061367, 30.144625, 32.061775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098488, 29.907909, 32.048080>,  <36.160355, 29.513382, 32.025257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098488, 29.907909, 32.048080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024153, 0.053958, -0.998251,
		-0.987671, -0.155776, 0.015477,
		-0.154668, 0.986317, 0.057056,
		36.052086, 30.203804, 32.065197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707626, 29.718248, 31.450747>,  <36.160355, 29.513382, 32.025257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707626, 29.718248, 31.450747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817528, 30.091345, 31.544132>,  <35.883469, 30.315203, 31.600163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817528, 30.091345, 31.544132>,  <35.707626, 29.718248, 31.450747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817528, 30.091345, 31.544132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120246, 0.274232, -0.954116,
		-0.953967, 0.234070, 0.187504,
		0.274749, 0.932742, 0.233462,
		35.899952, 30.371168, 31.614170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188751, 30.099590, 31.257973>,  <35.707626, 29.718248, 31.450747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188751, 30.099590, 31.257973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512550, 30.334440, 31.258863>,  <35.706829, 30.475349, 31.259398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512550, 30.334440, 31.258863>,  <35.188751, 30.099590, 31.257973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512550, 30.334440, 31.258863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169745, 0.237662, -0.956401,
		-0.562056, 0.773823, 0.292047,
		0.809494, 0.587124, 0.002226,
		35.755398, 30.510578, 31.259531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006618, 30.850878, 31.087624>,  <35.188751, 30.099590, 31.257973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006618, 30.850878, 31.087624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382854, 30.748920, 30.997887>,  <35.608597, 30.687746, 30.944044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382854, 30.748920, 30.997887>,  <35.006618, 30.850878, 31.087624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382854, 30.748920, 30.997887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160735, 0.247748, -0.955398,
		0.299103, 0.934693, 0.192058,
		0.940586, -0.254892, -0.224340,
		35.665031, 30.672453, 30.930584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281040, 31.439322, 30.801481>,  <35.006618, 30.850878, 31.087624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281040, 31.439322, 30.801481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487465, 31.120005, 30.677280>,  <35.611320, 30.928415, 30.602760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487465, 31.120005, 30.677280>,  <35.281040, 31.439322, 30.801481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487465, 31.120005, 30.677280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141895, 0.277817, -0.950096,
		0.844717, 0.534367, 0.030097,
		0.516062, -0.798292, -0.310500,
		35.642284, 30.880518, 30.584131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808372, 31.694916, 30.423512>,  <35.281040, 31.439322, 30.801481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808372, 31.694916, 30.423512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732960, 31.317978, 30.312918>,  <35.687714, 31.091816, 30.246561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732960, 31.317978, 30.312918>,  <35.808372, 31.694916, 30.423512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732960, 31.317978, 30.312918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164184, 0.307814, -0.937173,
		0.968245, -0.131294, -0.212751,
		-0.188533, -0.942344, -0.276483,
		35.676399, 31.035275, 30.229973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165005, 31.618614, 29.684971>,  <35.808372, 31.694916, 30.423512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165005, 31.618614, 29.684971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943333, 31.285734, 29.677757>,  <35.810329, 31.086006, 29.673429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943333, 31.285734, 29.677757>,  <36.165005, 31.618614, 29.684971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943333, 31.285734, 29.677757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449449, 0.317392, -0.835020,
		0.700627, -0.454648, -0.549925,
		-0.554181, -0.832200, -0.018032,
		35.777077, 31.036074, 29.672348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255627, 31.365273, 29.052826>,  <36.165005, 31.618614, 29.684971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255627, 31.365273, 29.052826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920757, 31.184046, 29.175379>,  <35.719837, 31.075310, 29.248911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920757, 31.184046, 29.175379>,  <36.255627, 31.365273, 29.052826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920757, 31.184046, 29.175379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402537, 0.131153, -0.905960,
		0.370280, -0.881775, -0.292175,
		-0.837172, -0.453070, 0.306384,
		35.669605, 31.048124, 29.267294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061901, 30.741535, 28.603039>,  <36.255627, 31.365273, 29.052826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061901, 30.741535, 28.603039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725117, 30.874060, 28.773371>,  <35.523045, 30.953575, 28.875570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725117, 30.874060, 28.773371>,  <36.061901, 30.741535, 28.603039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725117, 30.874060, 28.773371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372637, 0.213682, -0.903040,
		-0.390179, -0.919007, -0.056453,
		-0.841963, 0.331311, 0.425830,
		35.472527, 30.973454, 28.901119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591282, 30.424595, 28.249596>,  <36.061901, 30.741535, 28.603039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591282, 30.424595, 28.249596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374741, 30.711588, 28.424938>,  <35.244816, 30.883783, 28.530144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374741, 30.711588, 28.424938>,  <35.591282, 30.424595, 28.249596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374741, 30.711588, 28.424938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515295, 0.128853, -0.847271,
		-0.664385, -0.684557, 0.299959,
		-0.541354, 0.717481, 0.438356,
		35.212334, 30.926832, 28.556444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849216, 30.269749, 28.041267>,  <35.591282, 30.424595, 28.249596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849216, 30.269749, 28.041267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867821, 30.654270, 28.149885>,  <34.878983, 30.884983, 28.215055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867821, 30.654270, 28.149885>,  <34.849216, 30.269749, 28.041267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867821, 30.654270, 28.149885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476552, 0.260261, -0.839740,
		-0.877915, -0.090351, 0.470214,
		0.046507, 0.961302, 0.271544,
		34.881771, 30.942661, 28.231348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190929, 30.602646, 27.754150>,  <34.849216, 30.269749, 28.041267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190929, 30.602646, 27.754150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451122, 30.899267, 27.819843>,  <34.607239, 31.077240, 27.859259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451122, 30.899267, 27.819843>,  <34.190929, 30.602646, 27.754150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451122, 30.899267, 27.819843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105246, 0.302152, -0.947432,
		-0.752194, 0.599003, 0.274590,
		0.650483, 0.741552, 0.164234,
		34.646267, 31.121733, 27.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865147, 31.244455, 27.504332>,  <34.190929, 30.602646, 27.754150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865147, 31.244455, 27.504332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253834, 31.337984, 27.517551>,  <34.487045, 31.394102, 27.525484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253834, 31.337984, 27.517551>,  <33.865147, 31.244455, 27.504332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253834, 31.337984, 27.517551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052686, 0.351091, -0.934858,
		-0.230196, 0.906676, 0.353480,
		0.971717, 0.233824, 0.033051,
		34.545349, 31.408131, 27.527466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874062, 31.978834, 27.335917>,  <33.865147, 31.244455, 27.504332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874062, 31.978834, 27.335917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232594, 31.827724, 27.243063>,  <34.447712, 31.737059, 27.187351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232594, 31.827724, 27.243063>,  <33.874062, 31.978834, 27.335917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232594, 31.827724, 27.243063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007374, 0.510765, -0.859689,
		0.443335, 0.772273, 0.455026,
		0.896325, -0.377775, -0.232135,
		34.501492, 31.714392, 27.173422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292316, 32.542542, 27.042486>,  <33.874062, 31.978834, 27.335917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292316, 32.542542, 27.042486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459431, 32.202137, 26.915216>,  <34.559700, 31.997894, 26.838854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459431, 32.202137, 26.915216>,  <34.292316, 32.542542, 27.042486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459431, 32.202137, 26.915216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110234, 0.395093, -0.912003,
		0.901835, 0.345946, 0.258874,
		0.417783, -0.851013, -0.318174,
		34.584766, 31.946833, 26.819765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815704, 32.738941, 26.522490>,  <34.292316, 32.542542, 27.042486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815704, 32.738941, 26.522490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704739, 32.358440, 26.468578>,  <34.638161, 32.130142, 26.436232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704739, 32.358440, 26.468578>,  <34.815704, 32.738941, 26.522490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704739, 32.358440, 26.468578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009285, 0.142934, -0.989689,
		0.960706, -0.273301, -0.048484,
		-0.277413, -0.951250, -0.134780,
		34.621513, 32.073067, 26.428144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229794, 32.636101, 26.018085>,  <34.815704, 32.738941, 26.522490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229794, 32.636101, 26.018085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946293, 32.354183, 26.005884>,  <34.776192, 32.185032, 25.998564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946293, 32.354183, 26.005884>,  <35.229794, 32.636101, 26.018085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946293, 32.354183, 26.005884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048240, -0.005283, -0.998822,
		0.703803, -0.709392, 0.037744,
		-0.708755, -0.704794, -0.030503,
		34.733665, 32.142746, 25.996733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522835, 32.299793, 25.550367>,  <35.229794, 32.636101, 26.018085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522835, 32.299793, 25.550367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151340, 32.154831, 25.581656>,  <34.928444, 32.067852, 25.600428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151340, 32.154831, 25.581656>,  <35.522835, 32.299793, 25.550367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151340, 32.154831, 25.581656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016558, -0.251314, -0.967764,
		0.370381, -0.897498, 0.239404,
		-0.928732, -0.362406, 0.078221,
		34.872723, 32.046108, 25.605122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523243, 31.684896, 25.170610>,  <35.522835, 32.299793, 25.550367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523243, 31.684896, 25.170610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135990, 31.783335, 25.189192>,  <34.903637, 31.842398, 25.200340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135990, 31.783335, 25.189192>,  <35.523243, 31.684896, 25.170610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135990, 31.783335, 25.189192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098109, -0.202018, -0.974455,
		-0.230424, -0.947959, 0.219724,
		-0.968132, 0.246095, 0.046453,
		34.845551, 31.857162, 25.203127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171307, 31.211153, 24.779894>,  <35.523243, 31.684896, 25.170610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171307, 31.211153, 24.779894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914566, 31.517597, 24.793161>,  <34.760521, 31.701464, 24.801121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914566, 31.517597, 24.793161>,  <35.171307, 31.211153, 24.779894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914566, 31.517597, 24.793161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200295, -0.125744, -0.971633,
		-0.740209, -0.630287, 0.234157,
		-0.641851, 0.766111, 0.033167,
		34.722012, 31.747431, 24.803112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724754, 30.970592, 24.338964>,  <35.171307, 31.211153, 24.779894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724754, 30.970592, 24.338964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643417, 31.361044, 24.369492>,  <34.594616, 31.595314, 24.387808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643417, 31.361044, 24.369492>,  <34.724754, 30.970592, 24.338964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643417, 31.361044, 24.369492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112017, 0.054244, -0.992225,
		-0.972679, -0.210308, 0.098313,
		-0.203340, 0.976129, 0.076320,
		34.582417, 31.653883, 24.392387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053757, 30.954060, 24.008274>,  <34.724754, 30.970592, 24.338964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053757, 30.954060, 24.008274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233833, 31.310568, 23.986506>,  <34.341881, 31.524473, 23.973444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233833, 31.310568, 23.986506>,  <34.053757, 30.954060, 24.008274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233833, 31.310568, 23.986506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011759, -0.066859, -0.997693,
		-0.892853, 0.448516, -0.040580,
		0.450194, 0.891271, -0.054421,
		34.368893, 31.577950, 23.970179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663845, 31.295063, 23.591814>,  <34.053757, 30.954060, 24.008274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663845, 31.295063, 23.591814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998207, 31.512318, 23.560150>,  <34.198826, 31.642670, 23.541151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998207, 31.512318, 23.560150>,  <33.663845, 31.295063, 23.591814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998207, 31.512318, 23.560150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229217, 0.214393, -0.949471,
		-0.498720, 0.811812, 0.303708,
		0.835905, 0.543136, -0.079159,
		34.248978, 31.675259, 23.536402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504223, 31.842463, 23.256496>,  <33.663845, 31.295063, 23.591814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504223, 31.842463, 23.256496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901981, 31.849054, 23.214741>,  <34.140636, 31.853010, 23.189688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901981, 31.849054, 23.214741>,  <33.504223, 31.842463, 23.256496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901981, 31.849054, 23.214741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105679, 0.148282, -0.983282,
		-0.000725, 0.988808, 0.149193,
		0.994400, 0.016480, -0.104389,
		34.200302, 31.853998, 23.183424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632446, 32.481010, 23.104721>,  <33.504223, 31.842463, 23.256496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632446, 32.481010, 23.104721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958736, 32.276119, 22.997232>,  <34.154510, 32.153187, 22.932739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958736, 32.276119, 22.997232>,  <33.632446, 32.481010, 23.104721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958736, 32.276119, 22.997232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127810, 0.293477, -0.947383,
		0.564138, 0.807153, 0.173931,
		0.815729, -0.512225, -0.268724,
		34.203457, 32.122452, 22.916615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029816, 33.005920, 22.784496>,  <33.632446, 32.481010, 23.104721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029816, 33.005920, 22.784496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144745, 32.642544, 22.663052>,  <34.213703, 32.424519, 22.590185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144745, 32.642544, 22.663052>,  <34.029816, 33.005920, 22.784496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144745, 32.642544, 22.663052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156308, 0.268260, -0.950581,
		0.944995, 0.320579, -0.064920,
		0.287321, -0.908441, -0.303613,
		34.230942, 32.370010, 22.571968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529881, 33.084187, 22.287260>,  <34.029816, 33.005920, 22.784496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529881, 33.084187, 22.287260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417553, 32.708206, 22.209669>,  <34.350159, 32.482616, 22.163115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417553, 32.708206, 22.209669>,  <34.529881, 33.084187, 22.287260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417553, 32.708206, 22.209669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281243, 0.273827, -0.919740,
		0.917631, -0.203721, -0.341250,
		-0.280814, -0.939956, -0.193977,
		34.333309, 32.426220, 22.151476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771240, 32.886436, 21.606907>,  <34.529881, 33.084187, 22.287260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771240, 32.886436, 21.606907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477238, 32.618206, 21.647072>,  <34.300835, 32.457268, 21.671171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477238, 32.618206, 21.647072>,  <34.771240, 32.886436, 21.606907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477238, 32.618206, 21.647072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371234, 0.274057, -0.887174,
		0.567404, -0.689357, -0.450377,
		-0.735009, -0.670581, 0.100411,
		34.256733, 32.417030, 21.677195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828911, 32.472389, 20.883566>,  <34.771240, 32.886436, 21.606907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828911, 32.472389, 20.883566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474438, 32.449928, 21.067533>,  <34.261753, 32.436451, 21.177914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474438, 32.449928, 21.067533>,  <34.828911, 32.472389, 20.883566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474438, 32.449928, 21.067533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461495, 0.195301, -0.865378,
		-0.041228, -0.979135, -0.198988,
		-0.886184, -0.056154, 0.459918,
		34.208584, 32.433083, 21.205509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516338, 32.078808, 20.397028>,  <34.828911, 32.472389, 20.883566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516338, 32.078808, 20.397028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240807, 32.244305, 20.635130>,  <34.075485, 32.343601, 20.777990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240807, 32.244305, 20.635130>,  <34.516338, 32.078808, 20.397028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240807, 32.244305, 20.635130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548658, 0.239129, -0.801119,
		-0.473797, -0.878429, 0.062282,
		-0.688833, 0.413740, 0.595256,
		34.034157, 32.368427, 20.813707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745365, 31.825571, 20.249159>,  <34.516338, 32.078808, 20.397028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745365, 31.825571, 20.249159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748875, 32.200382, 20.388819>,  <33.750980, 32.425270, 20.472614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748875, 32.200382, 20.388819>,  <33.745365, 31.825571, 20.249159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748875, 32.200382, 20.388819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599493, 0.284387, -0.748152,
		-0.800332, -0.202746, 0.564237,
		0.008776, 0.937026, 0.349149,
		33.751507, 32.481491, 20.493563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274647, 32.090946, 19.956951>,  <33.745365, 31.825571, 20.249159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274647, 32.090946, 19.956951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373291, 32.435513, 20.134560>,  <33.432476, 32.642250, 20.241125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373291, 32.435513, 20.134560>,  <33.274647, 32.090946, 19.956951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373291, 32.435513, 20.134560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460821, 0.507291, -0.728217,
		-0.852542, -0.025028, 0.522060,
		0.246610, 0.861411, 0.444020,
		33.447273, 32.693935, 20.267765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689438, 32.512833, 20.111530>,  <33.274647, 32.090946, 19.956951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689438, 32.512833, 20.111530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019737, 32.728958, 20.046776>,  <33.217915, 32.858631, 20.007923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019737, 32.728958, 20.046776>,  <32.689438, 32.512833, 20.111530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019737, 32.728958, 20.046776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412000, 0.381759, -0.827355,
		-0.385227, 0.749882, 0.537844,
		0.825746, 0.540311, -0.161887,
		33.267460, 32.891052, 19.998209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921028, 33.285973, 20.052408>,  <32.689438, 32.512833, 20.111530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921028, 33.285973, 20.052408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705143, 33.617531, 19.993576>,  <32.575611, 33.816467, 19.958277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705143, 33.617531, 19.993576>,  <32.921028, 33.285973, 20.052408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705143, 33.617531, 19.993576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143796, -0.081374, -0.986256,
		-0.829476, -0.553446, -0.075274,
		-0.539714, 0.828900, -0.147081,
		32.543228, 33.866199, 19.949451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243435, 33.097923, 19.601057>,  <32.921028, 33.285973, 20.052408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243435, 33.097923, 19.601057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332294, 33.484322, 19.548141>,  <32.385612, 33.716160, 19.516392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332294, 33.484322, 19.548141>,  <32.243435, 33.097923, 19.601057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332294, 33.484322, 19.548141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272066, -0.191705, -0.942990,
		-0.936284, 0.173496, -0.305402,
		0.222152, 0.965996, -0.132288,
		32.398941, 33.774120, 19.508455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996237, 33.364151, 18.949129>,  <32.243435, 33.097923, 19.601057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996237, 33.364151, 18.949129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289726, 33.623035, 19.031843>,  <32.465820, 33.778366, 19.081472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289726, 33.623035, 19.031843>,  <31.996237, 33.364151, 18.949129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289726, 33.623035, 19.031843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159617, 0.131638, -0.978363,
		-0.660432, 0.750856, -0.006720,
		0.733725, 0.647215, 0.206787,
		32.509842, 33.817200, 19.093880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869705, 33.655739, 18.300428>,  <31.996237, 33.364151, 18.949129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869705, 33.655739, 18.300428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106842, 33.929741, 18.131048>,  <32.249123, 34.094143, 18.029421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106842, 33.929741, 18.131048>,  <31.869705, 33.655739, 18.300428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106842, 33.929741, 18.131048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365426, 0.239746, 0.899436,
		0.717637, -0.687962, -0.108187,
		0.592841, 0.685004, -0.423450,
		32.284695, 34.135242, 18.004013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637878, 33.665531, 18.335228>,  <31.869705, 33.655739, 18.300428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637878, 33.665531, 18.335228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484829, 34.034359, 18.358501>,  <32.393002, 34.255657, 18.372465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484829, 34.034359, 18.358501>,  <32.637878, 33.665531, 18.335228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484829, 34.034359, 18.358501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348999, 0.085936, 0.933175,
		0.855454, 0.377356, -0.354683,
		-0.382619, 0.922072, 0.058182,
		32.370045, 34.310982, 18.375956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157814, 34.161812, 18.598495>,  <32.637878, 33.665531, 18.335228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157814, 34.161812, 18.598495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796879, 34.309921, 18.686747>,  <32.580318, 34.398788, 18.739697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796879, 34.309921, 18.686747>,  <33.157814, 34.161812, 18.598495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796879, 34.309921, 18.686747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287457, 0.135564, 0.948151,
		0.321170, 0.918976, -0.228764,
		-0.902340, 0.370278, 0.220626,
		32.526176, 34.421005, 18.752935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131584, 34.762432, 19.116096>,  <33.157814, 34.161812, 18.598495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131584, 34.762432, 19.116096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805450, 34.530849, 19.113922>,  <32.609768, 34.391899, 19.112617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805450, 34.530849, 19.113922>,  <33.131584, 34.762432, 19.116096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805450, 34.530849, 19.113922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206095, 0.281437, 0.937186,
		-0.541064, 0.765244, -0.348787,
		-0.815337, -0.578961, -0.005438,
		32.560848, 34.357162, 19.112291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563812, 35.061951, 19.450918>,  <33.131584, 34.762432, 19.116096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563812, 35.061951, 19.450918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478340, 34.671768, 19.472162>,  <32.427055, 34.437656, 19.484909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478340, 34.671768, 19.472162>,  <32.563812, 35.061951, 19.450918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478340, 34.671768, 19.472162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242318, 0.105590, 0.964434,
		-0.946373, 0.193216, -0.258934,
		-0.213685, -0.975458, 0.053108,
		32.414234, 34.379131, 19.488094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801231, 34.944744, 19.688971>,  <32.563812, 35.061951, 19.450918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801231, 34.944744, 19.688971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026257, 34.628075, 19.784286>,  <32.161270, 34.438072, 19.841476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026257, 34.628075, 19.784286>,  <31.801231, 34.944744, 19.688971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026257, 34.628075, 19.784286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339719, 0.041417, 0.939615,
		-0.753734, -0.609543, -0.245645,
		0.562562, -0.791670, 0.238291,
		32.195026, 34.390575, 19.855774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362001, 34.589054, 20.097504>,  <31.801231, 34.944744, 19.688971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362001, 34.589054, 20.097504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725740, 34.449314, 20.187878>,  <31.943983, 34.365471, 20.242102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725740, 34.449314, 20.187878>,  <31.362001, 34.589054, 20.097504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725740, 34.449314, 20.187878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277238, -0.103907, 0.955166,
		-0.310211, -0.931213, -0.191340,
		0.909345, -0.349349, 0.225935,
		31.998545, 34.344509, 20.255659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201815, 34.017570, 20.415539>,  <31.362001, 34.589054, 20.097504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201815, 34.017570, 20.415539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581932, 34.083477, 20.521212>,  <31.810003, 34.123020, 20.584616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581932, 34.083477, 20.521212>,  <31.201815, 34.017570, 20.415539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581932, 34.083477, 20.521212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234835, -0.177814, 0.955633,
		0.204436, -0.970171, -0.130281,
		0.950294, 0.164771, 0.264181,
		31.867020, 34.132908, 20.600466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366285, 33.469521, 20.857714>,  <31.201815, 34.017570, 20.415539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366285, 33.469521, 20.857714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625246, 33.760769, 20.947788>,  <31.780622, 33.935520, 21.001833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625246, 33.760769, 20.947788>,  <31.366285, 33.469521, 20.857714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625246, 33.760769, 20.947788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220766, -0.103640, 0.969805,
		0.729475, -0.677566, 0.093648,
		0.647402, 0.728123, 0.225186,
		31.819466, 33.979206, 21.015345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839382, 33.220005, 21.428123>,  <31.366285, 33.469521, 20.857714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839382, 33.220005, 21.428123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852884, 33.618328, 21.462124>,  <31.860985, 33.857323, 21.482525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852884, 33.618328, 21.462124>,  <31.839382, 33.220005, 21.428123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852884, 33.618328, 21.462124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018054, -0.085645, 0.996162,
		0.999267, -0.032090, -0.020869,
		0.033754, 0.995809, 0.085003,
		31.863010, 33.917072, 21.487625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002728, 33.321255, 22.024754>,  <31.839382, 33.220005, 21.428123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002728, 33.321255, 22.024754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981331, 33.716347, 21.966063>,  <31.968494, 33.953403, 21.930847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981331, 33.716347, 21.966063>,  <32.002728, 33.321255, 22.024754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981331, 33.716347, 21.966063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184930, 0.154194, 0.970580,
		0.981295, 0.024780, -0.190908,
		-0.053488, 0.987730, -0.146727,
		31.965284, 34.012665, 21.922045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645531, 33.679901, 22.262613>,  <32.002728, 33.321255, 22.024754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645531, 33.679901, 22.262613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356750, 33.956459, 22.251577>,  <32.183483, 34.122395, 22.244955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356750, 33.956459, 22.251577>,  <32.645531, 33.679901, 22.262613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356750, 33.956459, 22.251577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312218, 0.361082, 0.878715,
		0.617504, 0.625772, -0.476549,
		-0.721948, 0.691397, -0.027592,
		32.140167, 34.163879, 22.243299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892128, 34.239365, 22.501114>,  <32.645531, 33.679901, 22.262613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892128, 34.239365, 22.501114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504688, 34.317211, 22.562998>,  <32.272224, 34.363918, 22.600128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504688, 34.317211, 22.562998>,  <32.892128, 34.239365, 22.501114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504688, 34.317211, 22.562998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202022, 0.253419, 0.946026,
		0.144908, 0.947577, -0.284779,
		-0.968601, 0.194619, 0.154709,
		32.214108, 34.375595, 22.609411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890949, 34.930313, 22.720846>,  <32.892128, 34.239365, 22.501114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890949, 34.930313, 22.720846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558189, 34.741409, 22.837408>,  <32.358536, 34.628067, 22.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558189, 34.741409, 22.837408>,  <32.890949, 34.930313, 22.720846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558189, 34.741409, 22.837408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232453, 0.180272, 0.955755,
		-0.503896, 0.862829, -0.040189,
		-0.831898, -0.472259, 0.291406,
		32.308620, 34.599731, 22.924829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632965, 35.374043, 23.198099>,  <32.890949, 34.930313, 22.720846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632965, 35.374043, 23.198099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475910, 35.023113, 23.308472>,  <32.381676, 34.812557, 23.374695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475910, 35.023113, 23.308472>,  <32.632965, 35.374043, 23.198099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475910, 35.023113, 23.308472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102679, 0.256332, 0.961119,
		-0.913942, 0.405707, -0.010563,
		-0.392640, -0.877323, 0.275931,
		32.358120, 34.759918, 23.391251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256573, 35.494469, 23.800890>,  <32.632965, 35.374043, 23.198099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256573, 35.494469, 23.800890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320824, 35.099743, 23.793016>,  <32.359375, 34.862907, 23.788292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320824, 35.099743, 23.793016>,  <32.256573, 35.494469, 23.800890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320824, 35.099743, 23.793016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254256, 0.022097, 0.966884,
		-0.953705, -0.160312, 0.254454,
		0.160626, -0.986819, -0.019686,
		32.369011, 34.803696, 23.787111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631332, 35.225685, 24.169027>,  <32.256573, 35.494469, 23.800890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631332, 35.225685, 24.169027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947256, 34.980564, 24.179441>,  <32.136810, 34.833492, 24.185690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947256, 34.980564, 24.179441>,  <31.631332, 35.225685, 24.169027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947256, 34.980564, 24.179441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118113, 0.193610, 0.973943,
		-0.601872, -0.766154, 0.225294,
		0.789810, -0.612799, 0.026036,
		32.184200, 34.796726, 24.187252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460611, 34.719017, 24.734350>,  <31.631332, 35.225685, 24.169027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460611, 34.719017, 24.734350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854322, 34.660839, 24.694263>,  <32.090549, 34.625931, 24.670212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854322, 34.660839, 24.694263>,  <31.460611, 34.719017, 24.734350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854322, 34.660839, 24.694263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104439, 0.021677, 0.994295,
		-0.142445, -0.989129, 0.036526,
		0.984277, -0.145447, -0.100216,
		32.149605, 34.617207, 24.664198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661928, 34.235329, 25.215189>,  <31.460611, 34.719017, 24.734350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661928, 34.235329, 25.215189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012154, 34.408241, 25.128912>,  <32.222290, 34.511990, 25.077145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012154, 34.408241, 25.128912>,  <31.661928, 34.235329, 25.215189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012154, 34.408241, 25.128912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313545, -0.168810, 0.934448,
		0.367533, -0.885797, -0.283343,
		0.875562, 0.432282, -0.215694,
		32.274822, 34.537926, 25.064203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163570, 33.823647, 25.545996>,  <31.661928, 34.235329, 25.215189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163570, 33.823647, 25.545996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381470, 34.155380, 25.496277>,  <32.512211, 34.354420, 25.466446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381470, 34.155380, 25.496277>,  <32.163570, 33.823647, 25.545996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381470, 34.155380, 25.496277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418675, -0.140543, 0.897195,
		0.726606, -0.540789, -0.423783,
		0.544753, 0.829334, -0.124295,
		32.544895, 34.404179, 25.458988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855839, 33.614120, 25.721172>,  <32.163570, 33.823647, 25.545996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855839, 33.614120, 25.721172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822136, 34.009007, 25.775280>,  <32.801914, 34.245937, 25.807745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822136, 34.009007, 25.775280>,  <32.855839, 33.614120, 25.721172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822136, 34.009007, 25.775280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259039, -0.109382, 0.959653,
		0.962185, 0.115902, -0.246511,
		-0.084261, 0.987220, 0.135269,
		32.796856, 34.305172, 25.815861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442310, 33.742802, 26.097704>,  <32.855839, 33.614120, 25.721172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442310, 33.742802, 26.097704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200191, 34.057438, 26.146523>,  <33.054920, 34.246220, 26.175814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200191, 34.057438, 26.146523>,  <33.442310, 33.742802, 26.097704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200191, 34.057438, 26.146523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190233, -0.005933, 0.981721,
		0.772937, 0.617446, -0.146044,
		-0.605293, 0.786591, 0.122044,
		33.018604, 34.293415, 26.183136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894077, 34.195450, 26.563757>,  <33.442310, 33.742802, 26.097704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894077, 34.195450, 26.563757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513271, 34.309940, 26.607090>,  <33.284786, 34.378635, 26.633089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513271, 34.309940, 26.607090>,  <33.894077, 34.195450, 26.563757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513271, 34.309940, 26.607090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118701, 0.019077, 0.992747,
		0.282082, 0.957973, -0.052136,
		-0.952019, 0.286225, 0.108331,
		33.227665, 34.395809, 26.639589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947697, 34.816063, 26.975986>,  <33.894077, 34.195450, 26.563757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947697, 34.816063, 26.975986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605865, 34.611488, 27.012037>,  <33.400764, 34.488743, 27.033667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605865, 34.611488, 27.012037>,  <33.947697, 34.816063, 26.975986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605865, 34.611488, 27.012037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108169, -0.005560, 0.994117,
		-0.507929, 0.859301, 0.060074,
		-0.854580, -0.511439, 0.090126,
		33.349491, 34.458057, 27.039076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667881, 34.993355, 27.627134>,  <33.947697, 34.816063, 26.975986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667881, 34.993355, 27.627134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449883, 34.666424, 27.552353>,  <33.319084, 34.470264, 27.507484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449883, 34.666424, 27.552353>,  <33.667881, 34.993355, 27.627134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449883, 34.666424, 27.552353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001825, -0.224137, 0.974556,
		-0.838435, 0.530791, 0.123646,
		-0.544999, -0.817327, -0.186956,
		33.286385, 34.421227, 27.496265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319607, 34.877602, 28.282015>,  <33.667881, 34.993355, 27.627134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319607, 34.877602, 28.282015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254616, 34.536373, 28.083675>,  <33.215622, 34.331635, 27.964672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254616, 34.536373, 28.083675>,  <33.319607, 34.877602, 28.282015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254616, 34.536373, 28.083675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095078, -0.486652, 0.868407,
		-0.982120, 0.188242, -0.002038,
		-0.162479, -0.853074, -0.495848,
		33.205872, 34.280453, 27.934921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808399, 34.529617, 28.703629>,  <33.319607, 34.877602, 28.282015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808399, 34.529617, 28.703629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985722, 34.237286, 28.496029>,  <33.092117, 34.061886, 28.371469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985722, 34.237286, 28.496029>,  <32.808399, 34.529617, 28.703629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985722, 34.237286, 28.496029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034646, -0.592538, 0.804797,
		-0.895699, -0.338793, -0.287999,
		0.443310, -0.730834, -0.518998,
		33.118713, 34.018036, 28.340330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505302, 33.971695, 28.986170>,  <32.808399, 34.529617, 28.703629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505302, 33.971695, 28.986170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829670, 33.813332, 28.813814>,  <33.024292, 33.718315, 28.710402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829670, 33.813332, 28.813814>,  <32.505302, 33.971695, 28.986170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829670, 33.813332, 28.813814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122789, -0.604840, 0.786824,
		-0.572129, -0.690959, -0.441863,
		0.810920, -0.395909, -0.430889,
		33.072945, 33.694561, 28.684547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344490, 33.309265, 28.833323>,  <32.505302, 33.971695, 28.986170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344490, 33.309265, 28.833323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738125, 33.354099, 28.888485>,  <32.974304, 33.381001, 28.921583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738125, 33.354099, 28.888485>,  <32.344490, 33.309265, 28.833323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738125, 33.354099, 28.888485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047306, -0.582796, 0.811241,
		0.171300, -0.804852, -0.568216,
		0.984082, 0.112086, 0.137907,
		33.033348, 33.387726, 28.929857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620914, 32.711296, 29.108027>,  <32.344490, 33.309265, 28.833323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620914, 32.711296, 29.108027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922970, 32.948872, 29.219027>,  <33.104202, 33.091415, 29.285627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922970, 32.948872, 29.219027>,  <32.620914, 32.711296, 29.108027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922970, 32.948872, 29.219027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058684, -0.482841, 0.873740,
		0.652938, -0.643506, -0.399465,
		0.755135, 0.593940, 0.277502,
		33.149509, 33.127052, 29.302277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068352, 32.275566, 29.545630>,  <32.620914, 32.711296, 29.108027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068352, 32.275566, 29.545630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176334, 32.651630, 29.628782>,  <33.241123, 32.877270, 29.678675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176334, 32.651630, 29.628782>,  <33.068352, 32.275566, 29.545630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176334, 32.651630, 29.628782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038250, -0.205256, 0.977961,
		0.962113, -0.271957, -0.019449,
		0.269956, 0.940165, 0.207882,
		33.257320, 32.933681, 29.691147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630825, 32.252918, 30.056736>,  <33.068352, 32.275566, 29.545630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630825, 32.252918, 30.056736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480373, 32.623482, 30.063515>,  <33.390102, 32.845821, 30.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480373, 32.623482, 30.063515>,  <33.630825, 32.252918, 30.056736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480373, 32.623482, 30.063515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067718, -0.045725, 0.996656,
		0.924088, 0.373728, 0.079933,
		-0.376133, 0.926411, 0.016946,
		33.367535, 32.901405, 30.068598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060772, 32.617950, 30.420149>,  <33.630825, 32.252918, 30.056736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060772, 32.617950, 30.420149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725201, 32.833916, 30.447529>,  <33.523857, 32.963493, 30.463957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725201, 32.833916, 30.447529>,  <34.060772, 32.617950, 30.420149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725201, 32.833916, 30.447529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116129, 0.054715, 0.991726,
		0.531701, 0.839940, -0.108602,
		-0.838932, 0.539914, 0.068450,
		33.473522, 32.995892, 30.468063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212708, 33.362804, 30.785889>,  <34.060772, 32.617950, 30.420149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212708, 33.362804, 30.785889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827370, 33.266613, 30.833462>,  <33.596169, 33.208897, 30.862005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827370, 33.266613, 30.833462>,  <34.212708, 33.362804, 30.785889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827370, 33.266613, 30.833462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085883, 0.143548, 0.985910,
		-0.254165, 0.959980, -0.117632,
		-0.963340, -0.240481, 0.118931,
		33.538368, 33.194469, 30.869141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010784, 33.790974, 31.314871>,  <34.212708, 33.362804, 30.785889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010784, 33.790974, 31.314871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715744, 33.521118, 31.326227>,  <33.538719, 33.359203, 31.333040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715744, 33.521118, 31.326227>,  <34.010784, 33.790974, 31.314871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715744, 33.521118, 31.326227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011831, 0.054949, 0.998419,
		-0.675136, 0.736096, -0.048512,
		-0.737598, -0.674643, 0.028389,
		33.494465, 33.318726, 31.334743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573219, 34.065517, 31.855541>,  <34.010784, 33.790974, 31.314871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573219, 34.065517, 31.855541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471130, 33.680199, 31.822277>,  <33.409878, 33.449005, 31.802319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471130, 33.680199, 31.822277>,  <33.573219, 34.065517, 31.855541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471130, 33.680199, 31.822277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102019, -0.058700, 0.993049,
		-0.961486, 0.261930, -0.083294,
		-0.255221, -0.963300, -0.083161,
		33.394566, 33.391209, 31.797329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960018, 34.017815, 32.312073>,  <33.573219, 34.065517, 31.855541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960018, 34.017815, 32.312073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129066, 33.655994, 32.289536>,  <33.230495, 33.438900, 32.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129066, 33.655994, 32.289536>,  <32.960018, 34.017815, 32.312073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129066, 33.655994, 32.289536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061095, -0.090461, 0.994024,
		-0.904245, -0.416652, -0.093494,
		0.422620, -0.904554, -0.056343,
		33.255852, 33.384628, 32.272633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759796, 33.692818, 32.834629>,  <32.960018, 34.017815, 32.312073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759796, 33.692818, 32.834629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032360, 33.413158, 32.748024>,  <33.195896, 33.245361, 32.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032360, 33.413158, 32.748024>,  <32.759796, 33.692818, 32.834629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032360, 33.413158, 32.748024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107204, -0.197297, 0.974465,
		-0.724012, -0.687217, -0.059488,
		0.681406, -0.699147, -0.216517,
		33.236782, 33.203415, 32.683067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613678, 33.092865, 33.250393>,  <32.759796, 33.692818, 32.834629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613678, 33.092865, 33.250393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997803, 33.053757, 33.145897>,  <33.228279, 33.030293, 33.083199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997803, 33.053757, 33.145897>,  <32.613678, 33.092865, 33.250393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997803, 33.053757, 33.145897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234515, -0.224050, 0.945941,
		-0.151016, -0.969661, -0.192229,
		0.960311, -0.097771, -0.261235,
		33.285896, 33.024426, 33.067528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760506, 32.416576, 33.451118>,  <32.613678, 33.092865, 33.250393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760506, 32.416576, 33.451118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094494, 32.636242, 33.437050>,  <33.294888, 32.768044, 33.428608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094494, 32.636242, 33.437050>,  <32.760506, 32.416576, 33.451118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094494, 32.636242, 33.437050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097654, -0.084962, 0.991587,
		0.541559, -0.831382, -0.124570,
		0.834972, 0.549168, -0.035176,
		33.344986, 32.800991, 33.426498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195129, 32.026474, 33.877655>,  <32.760506, 32.416576, 33.451118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195129, 32.026474, 33.877655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364326, 32.387844, 33.849667>,  <33.465843, 32.604668, 33.832874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364326, 32.387844, 33.849667>,  <33.195129, 32.026474, 33.877655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364326, 32.387844, 33.849667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311887, -0.072652, 0.947337,
		0.850766, -0.422541, -0.312499,
		0.422993, 0.903427, -0.069975,
		33.491226, 32.658871, 33.828674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808319, 31.992525, 34.307865>,  <33.195129, 32.026474, 33.877655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808319, 31.992525, 34.307865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743660, 32.385784, 34.273708>,  <33.704865, 32.621738, 34.253216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743660, 32.385784, 34.273708>,  <33.808319, 31.992525, 34.307865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743660, 32.385784, 34.273708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192479, 0.116274, 0.974388,
		0.967896, 0.141069, -0.208031,
		-0.161645, 0.983148, -0.085388,
		33.695168, 32.680729, 34.248093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420536, 32.353924, 34.626606>,  <33.808319, 31.992525, 34.307865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420536, 32.353924, 34.626606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122772, 32.620499, 34.610008>,  <33.944115, 32.780441, 34.600048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122772, 32.620499, 34.610008>,  <34.420536, 32.353924, 34.626606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122772, 32.620499, 34.610008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203824, 0.285968, 0.936311,
		0.635857, 0.688539, -0.348712,
		-0.744407, 0.666435, -0.041494,
		33.899448, 32.820431, 34.597561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739567, 33.036987, 34.893120>,  <34.420536, 32.353924, 34.626606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739567, 33.036987, 34.893120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341511, 33.072083, 34.911018>,  <34.102676, 33.093140, 34.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341511, 33.072083, 34.911018>,  <34.739567, 33.036987, 34.893120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341511, 33.072083, 34.911018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076129, 0.396980, 0.914664,
		0.062486, 0.913624, -0.401730,
		-0.995138, 0.087737, 0.044747,
		34.042969, 33.098404, 34.924442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540752, 33.744629, 35.011253>,  <34.739567, 33.036987, 34.893120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540752, 33.744629, 35.011253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220592, 33.549694, 35.150890>,  <34.028496, 33.432732, 35.234673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220592, 33.549694, 35.150890>,  <34.540752, 33.744629, 35.011253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220592, 33.549694, 35.150890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161348, 0.385715, 0.908400,
		-0.577348, 0.783406, -0.230095,
		-0.800397, -0.487338, 0.349093,
		33.980473, 33.403492, 35.255619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021004, 33.557514, 34.439533>,  <34.540752, 33.744629, 35.011253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021004, 33.557514, 34.439533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348751, 33.786171, 34.456779>,  <35.545399, 33.923363, 34.467125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348751, 33.786171, 34.456779>,  <35.021004, 33.557514, 34.439533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348751, 33.786171, 34.456779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381654, 0.600076, -0.703028,
		-0.427748, 0.559588, 0.709854,
		0.819373, 0.571638, 0.043113,
		35.594563, 33.957661, 34.469715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834129, 34.094112, 34.080772>,  <35.021004, 33.557514, 34.439533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834129, 34.094112, 34.080772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228367, 34.161140, 34.089870>,  <35.464909, 34.201359, 34.095329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228367, 34.161140, 34.089870>,  <34.834129, 34.094112, 34.080772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228367, 34.161140, 34.089870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075459, 0.556176, -0.827632,
		-0.151336, 0.813996, 0.560810,
		0.985598, 0.167569, 0.022746,
		35.524048, 34.211411, 34.096695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949432, 34.810013, 34.098518>,  <34.834129, 34.094112, 34.080772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949432, 34.810013, 34.098518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257111, 34.607086, 33.943104>,  <35.441719, 34.485329, 33.849854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257111, 34.607086, 33.943104>,  <34.949432, 34.810013, 34.098518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257111, 34.607086, 33.943104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142510, 0.456526, -0.878223,
		0.622917, 0.730898, 0.278861,
		0.769198, -0.507320, -0.388538,
		35.487869, 34.454891, 33.826542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146603, 35.333763, 33.575592>,  <34.949432, 34.810013, 34.098518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146603, 35.333763, 33.575592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387852, 35.024273, 33.498032>,  <35.532600, 34.838581, 33.451496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387852, 35.024273, 33.498032>,  <35.146603, 35.333763, 33.575592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387852, 35.024273, 33.498032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072620, 0.295340, -0.952628,
		0.794335, 0.560471, 0.234314,
		0.603123, -0.773722, -0.193897,
		35.568790, 34.792156, 33.439861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729424, 35.573044, 33.279514>,  <35.146603, 35.333763, 33.575592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729424, 35.573044, 33.279514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730244, 35.192528, 33.156200>,  <35.730736, 34.964218, 33.082211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730244, 35.192528, 33.156200>,  <35.729424, 35.573044, 33.279514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730244, 35.192528, 33.156200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025833, 0.308131, -0.950993,
		0.999664, 0.009912, -0.023944,
		0.002048, -0.951292, -0.308283,
		35.730858, 34.907139, 33.063717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301472, 35.477867, 32.784641>,  <35.729424, 35.573044, 33.279514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301472, 35.477867, 32.784641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056103, 35.174011, 32.698238>,  <35.908882, 34.991695, 32.646397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056103, 35.174011, 32.698238>,  <36.301472, 35.477867, 32.784641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056103, 35.174011, 32.698238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059897, 0.227973, -0.971823,
		0.787482, -0.609074, -0.094343,
		-0.613420, -0.759642, -0.216007,
		35.872078, 34.946117, 32.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641506, 35.097855, 32.284641>,  <36.301472, 35.477867, 32.784641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641506, 35.097855, 32.284641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257118, 34.994026, 32.246346>,  <36.026485, 34.931728, 32.223370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257118, 34.994026, 32.246346>,  <36.641506, 35.097855, 32.284641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257118, 34.994026, 32.246346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033211, 0.451757, -0.891522,
		0.274664, -0.853544, -0.442744,
		-0.960966, -0.259573, -0.095735,
		35.968830, 34.916153, 32.217625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591045, 34.890362, 31.632088>,  <36.641506, 35.097855, 32.284641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591045, 34.890362, 31.632088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210613, 34.954861, 31.737490>,  <35.982353, 34.993561, 31.800732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210613, 34.954861, 31.737490>,  <36.591045, 34.890362, 31.632088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210613, 34.954861, 31.737490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207142, 0.299947, -0.931195,
		-0.229196, -0.940229, -0.251873,
		-0.951085, 0.161252, 0.263508,
		35.925289, 35.003235, 31.816542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130665, 34.536087, 31.161318>,  <36.591045, 34.890362, 31.632088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130665, 34.536087, 31.161318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925667, 34.837826, 31.325420>,  <35.802666, 35.018867, 31.423882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925667, 34.837826, 31.325420>,  <36.130665, 34.536087, 31.161318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925667, 34.837826, 31.325420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139411, 0.398336, -0.906583,
		-0.847296, -0.521816, -0.098982,
		-0.512498, 0.754345, 0.410256,
		35.771919, 35.064129, 31.448498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537159, 34.624332, 30.759865>,  <36.130665, 34.536087, 31.161318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537159, 34.624332, 30.759865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553490, 34.969921, 30.960619>,  <35.563290, 35.177273, 31.081072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553490, 34.969921, 30.960619>,  <35.537159, 34.624332, 30.759865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553490, 34.969921, 30.960619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188426, 0.499950, -0.845308,
		-0.981238, -0.060057, 0.183206,
		0.040828, 0.863970, 0.501886,
		35.565739, 35.229111, 31.111185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851063, 34.986156, 30.628044>,  <35.537159, 34.624332, 30.759865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851063, 34.986156, 30.628044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074787, 35.286964, 30.767548>,  <35.209023, 35.467449, 30.851250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074787, 35.286964, 30.767548>,  <34.851063, 34.986156, 30.628044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074787, 35.286964, 30.767548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301457, 0.576436, -0.759503,
		-0.772200, 0.319664, 0.549111,
		0.559313, 0.752021, 0.348759,
		35.242580, 35.512569, 30.872175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469719, 35.640488, 30.483538>,  <34.851063, 34.986156, 30.628044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469719, 35.640488, 30.483538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840366, 35.771229, 30.557890>,  <35.062756, 35.849674, 30.602501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840366, 35.771229, 30.557890>,  <34.469719, 35.640488, 30.483538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840366, 35.771229, 30.557890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090962, 0.674515, -0.732635,
		-0.364843, 0.661963, 0.654747,
		0.926615, 0.326854, 0.185879,
		35.118351, 35.869286, 30.613653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359295, 36.265667, 30.681805>,  <34.469719, 35.640488, 30.483538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359295, 36.265667, 30.681805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725975, 36.249218, 30.522821>,  <34.945984, 36.239349, 30.427431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725975, 36.249218, 30.522821>,  <34.359295, 36.265667, 30.681805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725975, 36.249218, 30.522821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328882, 0.487283, -0.808945,
		0.226940, 0.872276, 0.433167,
		0.916698, -0.041122, -0.397460,
		35.000984, 36.236881, 30.403584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537109, 36.922432, 30.362198>,  <34.359295, 36.265667, 30.681805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537109, 36.922432, 30.362198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790466, 36.674767, 30.176535>,  <34.942482, 36.526165, 30.065136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790466, 36.674767, 30.176535>,  <34.537109, 36.922432, 30.362198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790466, 36.674767, 30.176535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360342, 0.294822, -0.885005,
		0.684810, 0.727813, -0.036373,
		0.633395, -0.619167, -0.464159,
		34.980484, 36.489017, 30.037287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747952, 37.324928, 29.807354>,  <34.537109, 36.922432, 30.362198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747952, 37.324928, 29.807354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823708, 36.940048, 29.729067>,  <34.869160, 36.709122, 29.682095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823708, 36.940048, 29.729067>,  <34.747952, 37.324928, 29.807354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823708, 36.940048, 29.729067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291986, 0.135119, -0.946830,
		0.937485, 0.236463, -0.255359,
		0.189386, -0.962200, -0.195716,
		34.880524, 36.651390, 29.670353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182713, 37.359123, 29.253027>,  <34.747952, 37.324928, 29.807354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182713, 37.359123, 29.253027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054092, 36.980610, 29.239450>,  <34.976921, 36.753502, 29.231304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054092, 36.980610, 29.239450>,  <35.182713, 37.359123, 29.253027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054092, 36.980610, 29.239450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155036, 0.087976, -0.983984,
		0.934114, -0.311139, -0.174997,
		-0.321551, -0.946284, -0.033942,
		34.957626, 36.696724, 29.229267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511059, 36.974869, 28.664509>,  <35.182713, 37.359123, 29.253027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511059, 36.974869, 28.664509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155491, 36.800922, 28.722090>,  <34.942150, 36.696556, 28.756638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155491, 36.800922, 28.722090>,  <35.511059, 36.974869, 28.664509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155491, 36.800922, 28.722090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151745, -0.016957, -0.988274,
		0.432203, -0.900338, -0.050915,
		-0.888918, -0.434862, 0.143950,
		34.888817, 36.670464, 28.765274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430470, 36.595974, 28.125050>,  <35.511059, 36.974869, 28.664509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430470, 36.595974, 28.125050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055279, 36.553497, 28.257061>,  <34.830162, 36.528011, 28.336267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055279, 36.553497, 28.257061>,  <35.430470, 36.595974, 28.125050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055279, 36.553497, 28.257061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326658, -0.048227, -0.943912,
		0.116153, -0.993175, 0.010547,
		-0.937978, -0.106193, 0.330030,
		34.773884, 36.521641, 28.356070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159916, 36.007462, 27.748804>,  <35.430470, 36.595974, 28.125050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159916, 36.007462, 27.748804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858627, 36.238941, 27.873871>,  <34.677853, 36.377831, 27.948912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858627, 36.238941, 27.873871>,  <35.159916, 36.007462, 27.748804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858627, 36.238941, 27.873871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403213, -0.030667, -0.914592,
		-0.519686, -0.814963, 0.256439,
		-0.753223, 0.578701, 0.312666,
		34.632660, 36.412552, 27.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514984, 35.721989, 27.486660>,  <35.159916, 36.007462, 27.748804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514984, 35.721989, 27.486660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433937, 36.102806, 27.578363>,  <34.385307, 36.331295, 27.633385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433937, 36.102806, 27.578363>,  <34.514984, 35.721989, 27.486660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433937, 36.102806, 27.578363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484418, 0.106018, -0.868389,
		-0.851049, -0.287010, 0.439705,
		-0.202620, 0.952043, 0.229259,
		34.373150, 36.388420, 27.647141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812531, 35.829033, 27.272480>,  <34.514984, 35.721989, 27.486660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812531, 35.829033, 27.272480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011402, 36.175858, 27.285246>,  <34.130726, 36.383953, 27.292906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011402, 36.175858, 27.285246>,  <33.812531, 35.829033, 27.272480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011402, 36.175858, 27.285246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335241, 0.225892, -0.914651,
		-0.800269, 0.444044, 0.402983,
		0.497176, 0.867063, 0.031913,
		34.160557, 36.435978, 27.294819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338074, 36.402542, 27.181873>,  <33.812531, 35.829033, 27.272480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338074, 36.402542, 27.181873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709328, 36.512093, 27.081028>,  <33.932079, 36.577824, 27.020521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709328, 36.512093, 27.081028>,  <33.338074, 36.402542, 27.181873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709328, 36.512093, 27.081028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325419, 0.268074, -0.906774,
		-0.180762, 0.923648, 0.337933,
		0.928131, 0.273880, -0.252115,
		33.987766, 36.594257, 27.005394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232788, 36.694004, 26.604206>,  <33.338074, 36.402542, 27.181873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232788, 36.694004, 26.604206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631985, 36.681919, 26.581951>,  <33.871502, 36.674667, 26.568598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631985, 36.681919, 26.581951>,  <33.232788, 36.694004, 26.604206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631985, 36.681919, 26.581951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049807, 0.167853, -0.984553,
		0.039087, 0.985349, 0.166011,
		0.997994, -0.030215, -0.055638,
		33.931381, 36.672855, 26.565260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434902, 37.216724, 26.238958>,  <33.232788, 36.694004, 26.604206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434902, 37.216724, 26.238958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779491, 37.016991, 26.202005>,  <33.986244, 36.897148, 26.179834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779491, 37.016991, 26.202005>,  <33.434902, 37.216724, 26.238958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779491, 37.016991, 26.202005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029524, 0.132365, -0.990761,
		0.506952, 0.856237, 0.099286,
		0.861469, -0.499337, -0.092382,
		34.037933, 36.867191, 26.174292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863541, 37.595604, 25.687984>,  <33.434902, 37.216724, 26.238958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863541, 37.595604, 25.687984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997719, 37.218864, 25.695988>,  <34.078224, 36.992821, 25.700788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997719, 37.218864, 25.695988>,  <33.863541, 37.595604, 25.687984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997719, 37.218864, 25.695988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018056, -0.014805, -0.999727,
		0.941888, 0.335711, 0.012040,
		0.335442, -0.941849, 0.020007,
		34.098351, 36.936310, 25.701990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263489, 37.611748, 25.201170>,  <33.863541, 37.595604, 25.687984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263489, 37.611748, 25.201170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214581, 37.216545, 25.238899>,  <34.185234, 36.979424, 25.261536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214581, 37.216545, 25.238899>,  <34.263489, 37.611748, 25.201170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214581, 37.216545, 25.238899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221784, -0.119830, -0.967705,
		0.967399, -0.097404, 0.233775,
		-0.122272, -0.988005, 0.094321,
		34.177898, 36.920143, 25.267195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827549, 37.407433, 24.884552>,  <34.263489, 37.611748, 25.201170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827549, 37.407433, 24.884552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584381, 37.089970, 24.875242>,  <34.438480, 36.899490, 24.869656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584381, 37.089970, 24.875242>,  <34.827549, 37.407433, 24.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584381, 37.089970, 24.875242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263643, -0.174117, -0.948776,
		0.748953, -0.582912, 0.315092,
		-0.607916, -0.793660, -0.023275,
		34.402008, 36.851871, 24.868259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248116, 36.984535, 24.457020>,  <34.827549, 37.407433, 24.884552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248116, 36.984535, 24.457020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877247, 36.835262, 24.443874>,  <34.654724, 36.745697, 24.435987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877247, 36.835262, 24.443874>,  <35.248116, 36.984535, 24.457020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877247, 36.835262, 24.443874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094728, -0.148672, -0.984339,
		0.362452, -0.915769, 0.173196,
		-0.927176, -0.373182, -0.032862,
		34.599094, 36.723309, 24.434015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254116, 36.221813, 24.218372>,  <35.248116, 36.984535, 24.457020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254116, 36.221813, 24.218372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876934, 36.338226, 24.153702>,  <34.650627, 36.408073, 24.114899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876934, 36.338226, 24.153702>,  <35.254116, 36.221813, 24.218372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876934, 36.338226, 24.153702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084561, -0.260327, -0.961811,
		-0.322015, -0.920612, 0.220864,
		-0.942951, 0.291041, -0.161677,
		34.594048, 36.425537, 24.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095428, 35.773613, 23.661816>,  <35.254116, 36.221813, 24.218372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095428, 35.773613, 23.661816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813324, 36.056877, 23.648453>,  <34.644062, 36.226833, 23.640436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813324, 36.056877, 23.648453>,  <35.095428, 35.773613, 23.661816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813324, 36.056877, 23.648453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099172, -0.145205, -0.984419,
		-0.701975, -0.690961, 0.172638,
		-0.705263, 0.708158, -0.033406,
		34.601746, 36.269325, 23.638432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639931, 35.483894, 23.156492>,  <35.095428, 35.773613, 23.661816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639931, 35.483894, 23.156492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541294, 35.871418, 23.166389>,  <34.482113, 36.103931, 23.172329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541294, 35.871418, 23.166389>,  <34.639931, 35.483894, 23.156492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541294, 35.871418, 23.166389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070121, 0.007631, -0.997509,
		-0.966580, -0.247709, 0.066052,
		-0.246588, 0.968805, 0.024745,
		34.467319, 36.162060, 23.173813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019741, 35.627499, 22.743013>,  <34.639931, 35.483894, 23.156492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019741, 35.627499, 22.743013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229683, 35.967953, 22.739195>,  <34.355648, 36.172226, 22.736904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229683, 35.967953, 22.739195>,  <34.019741, 35.627499, 22.743013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229683, 35.967953, 22.739195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055458, -0.045386, -0.997429,
		-0.849382, 0.522978, -0.071023,
		0.524856, 0.851138, -0.009546,
		34.387138, 36.223293, 22.736330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700283, 35.960793, 22.076326>,  <34.019741, 35.627499, 22.743013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700283, 35.960793, 22.076326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029373, 36.163349, 22.179617>,  <34.226830, 36.284885, 22.241590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029373, 36.163349, 22.179617>,  <33.700283, 35.960793, 22.076326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029373, 36.163349, 22.179617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279392, 0.035370, -0.959525,
		-0.495032, 0.861576, -0.112383,
		0.822729, 0.506395, 0.258227,
		34.276192, 36.315269, 22.257086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724773, 36.430908, 21.604134>,  <33.700283, 35.960793, 22.076326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724773, 36.430908, 21.604134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101871, 36.430222, 21.737541>,  <34.328129, 36.429810, 21.817585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101871, 36.430222, 21.737541>,  <33.724773, 36.430908, 21.604134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101871, 36.430222, 21.737541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333516, 0.010821, -0.942682,
		-0.001988, 0.999940, 0.010775,
		0.942742, -0.001720, 0.333517,
		34.384693, 36.429707, 21.837597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149624, 36.875401, 21.117548>,  <33.724773, 36.430908, 21.604134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149624, 36.875401, 21.117548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425922, 36.663296, 21.314198>,  <34.591702, 36.536034, 21.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425922, 36.663296, 21.314198>,  <34.149624, 36.875401, 21.117548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425922, 36.663296, 21.314198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559631, -0.038518, -0.827847,
		0.457912, 0.846959, 0.270144,
		0.690746, -0.530261, 0.491622,
		34.633148, 36.504219, 21.461683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802216, 37.191895, 20.961813>,  <34.149624, 36.875401, 21.117548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802216, 37.191895, 20.961813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890846, 36.818741, 21.075396>,  <34.944027, 36.594849, 21.143545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890846, 36.818741, 21.075396>,  <34.802216, 37.191895, 20.961813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890846, 36.818741, 21.075396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658310, -0.071721, -0.749323,
		0.719396, 0.352967, 0.598234,
		0.221580, -0.932883, 0.283957,
		34.957321, 36.538876, 21.160583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473831, 37.116676, 20.861755>,  <34.802216, 37.191895, 20.961813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473831, 37.116676, 20.861755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384155, 36.731331, 20.920643>,  <35.330349, 36.500126, 20.955976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384155, 36.731331, 20.920643>,  <35.473831, 37.116676, 20.861755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384155, 36.731331, 20.920643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508117, -0.244455, -0.825868,
		0.831598, -0.110346, 0.544305,
		-0.224190, -0.963361, 0.147220,
		35.316898, 36.442322, 20.964809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099499, 36.808666, 20.561375>,  <35.473831, 37.116676, 20.861755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099499, 36.808666, 20.561375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847187, 36.500767, 20.600559>,  <35.695801, 36.316025, 20.624069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847187, 36.500767, 20.600559>,  <36.099499, 36.808666, 20.561375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847187, 36.500767, 20.600559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466383, -0.476989, -0.744962,
		0.620162, -0.424221, 0.659875,
		-0.630782, -0.769752, 0.097961,
		35.657951, 36.269840, 20.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687744, 36.367462, 20.419296>,  <36.099499, 36.808666, 20.561375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687744, 36.367462, 20.419296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082546, 36.431194, 20.410933>,  <37.319427, 36.469433, 20.405914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082546, 36.431194, 20.410933>,  <36.687744, 36.367462, 20.419296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082546, 36.431194, 20.410933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065763, 0.519230, 0.852101,
		0.146621, -0.839652, 0.522960,
		0.987004, 0.159327, -0.020912,
		37.378647, 36.478992, 20.404659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014912, 36.008366, 20.923449>,  <36.687744, 36.367462, 20.419296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014912, 36.008366, 20.923449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254154, 36.319801, 20.847490>,  <37.397701, 36.506664, 20.801914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254154, 36.319801, 20.847490>,  <37.014912, 36.008366, 20.923449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254154, 36.319801, 20.847490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095672, 0.304624, 0.947656,
		0.795685, -0.548632, 0.256687,
		0.598107, 0.778593, -0.189897,
		37.433586, 36.553379, 20.790522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438896, 36.078007, 21.567513>,  <37.014912, 36.008366, 20.923449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438896, 36.078007, 21.567513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514141, 36.421196, 21.376307>,  <37.559288, 36.627110, 21.261583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514141, 36.421196, 21.376307>,  <37.438896, 36.078007, 21.567513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514141, 36.421196, 21.376307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102314, 0.466935, 0.878353,
		0.976803, -0.214139, 0.000055,
		0.188115, 0.857972, -0.478013,
		37.570576, 36.678589, 21.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974510, 36.325871, 21.868153>,  <37.438896, 36.078007, 21.567513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974510, 36.325871, 21.868153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801899, 36.637524, 21.686281>,  <37.698330, 36.824516, 21.577158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801899, 36.637524, 21.686281>,  <37.974510, 36.325871, 21.868153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801899, 36.637524, 21.686281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053835, 0.480883, 0.875130,
		0.900491, 0.402123, -0.165571,
		-0.431531, 0.779133, -0.454679,
		37.672440, 36.871265, 21.549877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343674, 36.763344, 22.204157>,  <37.974510, 36.325871, 21.868153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343674, 36.763344, 22.204157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049755, 36.955837, 22.012959>,  <37.873402, 37.071335, 21.898239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049755, 36.955837, 22.012959>,  <38.343674, 36.763344, 22.204157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049755, 36.955837, 22.012959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048269, 0.740030, 0.670840,
		0.676564, 0.469861, -0.567003,
		-0.734801, 0.481234, -0.477998,
		37.829315, 37.100208, 21.869558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606129, 37.452103, 22.051815>,  <38.343674, 36.763344, 22.204157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606129, 37.452103, 22.051815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206829, 37.450851, 22.075459>,  <37.967251, 37.450100, 22.089643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206829, 37.450851, 22.075459>,  <38.606129, 37.452103, 22.051815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206829, 37.450851, 22.075459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044604, 0.616708, 0.785927,
		-0.038909, 0.787186, -0.615487,
		-0.998247, -0.003127, 0.059108,
		37.907356, 37.449913, 22.093191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414707, 38.106129, 22.171429>,  <38.606129, 37.452103, 22.051815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414707, 38.106129, 22.171429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117435, 37.873199, 22.303236>,  <37.939072, 37.733440, 22.382320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117435, 37.873199, 22.303236>,  <38.414707, 38.106129, 22.171429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117435, 37.873199, 22.303236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110091, 0.379350, 0.918680,
		-0.659973, 0.719022, -0.217816,
		-0.743180, -0.582324, 0.329518,
		37.894482, 37.698502, 22.402092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023048, 38.536865, 22.653044>,  <38.414707, 38.106129, 22.171429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023048, 38.536865, 22.653044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887661, 38.174953, 22.756439>,  <37.806427, 37.957806, 22.818476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887661, 38.174953, 22.756439>,  <38.023048, 38.536865, 22.653044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887661, 38.174953, 22.756439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058599, 0.294434, 0.953874,
		-0.939151, 0.307711, -0.152676,
		-0.338470, -0.904778, 0.258487,
		37.786121, 37.903519, 22.833984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562378, 38.590687, 23.048681>,  <38.023048, 38.536865, 22.653044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562378, 38.590687, 23.048681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688942, 38.226601, 23.155558>,  <37.764881, 38.008148, 23.219685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688942, 38.226601, 23.155558>,  <37.562378, 38.590687, 23.048681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688942, 38.226601, 23.155558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108996, 0.244915, 0.963399,
		-0.942341, -0.333949, -0.021717,
		0.316407, -0.910217, 0.267193,
		37.783863, 37.953537, 23.235716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048607, 38.285988, 23.466999>,  <37.562378, 38.590687, 23.048681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048607, 38.285988, 23.466999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377338, 38.070679, 23.541687>,  <37.574577, 37.941494, 23.586500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377338, 38.070679, 23.541687>,  <37.048607, 38.285988, 23.466999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377338, 38.070679, 23.541687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186656, 0.055268, 0.980869,
		-0.538295, -0.840957, -0.055052,
		0.821826, -0.538273, 0.186720,
		37.623886, 37.909199, 23.597704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848457, 37.693298, 23.848288>,  <37.048607, 38.285988, 23.466999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848457, 37.693298, 23.848288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239902, 37.745911, 23.911549>,  <37.474770, 37.777477, 23.949505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239902, 37.745911, 23.911549>,  <36.848457, 37.693298, 23.848288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239902, 37.745911, 23.911549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150099, -0.069092, 0.986254,
		0.140655, -0.988901, -0.047871,
		0.978615, 0.131536, 0.158151,
		37.533485, 37.785370, 23.958994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026398, 37.143757, 24.413502>,  <36.848457, 37.693298, 23.848288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026398, 37.143757, 24.413502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270233, 37.460842, 24.414934>,  <37.416534, 37.651093, 24.415792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270233, 37.460842, 24.414934>,  <37.026398, 37.143757, 24.413502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270233, 37.460842, 24.414934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111355, -0.090100, 0.989688,
		0.784857, -0.602906, -0.143196,
		0.609590, 0.792709, 0.003579,
		37.453110, 37.698654, 24.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500854, 36.885929, 24.981365>,  <37.026398, 37.143757, 24.413502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500854, 36.885929, 24.981365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534611, 37.283180, 24.948910>,  <37.554863, 37.521530, 24.929438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534611, 37.283180, 24.948910>,  <37.500854, 36.885929, 24.981365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534611, 37.283180, 24.948910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126520, 0.070089, 0.989484,
		0.988368, -0.093767, -0.119735,
		0.084389, 0.993124, -0.081137,
		37.559929, 37.581116, 24.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073978, 37.099434, 25.384918>,  <37.500854, 36.885929, 24.981365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073978, 37.099434, 25.384918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830311, 37.415146, 25.354053>,  <37.684109, 37.604572, 25.335535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830311, 37.415146, 25.354053>,  <38.073978, 37.099434, 25.384918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830311, 37.415146, 25.354053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064732, 0.047488, 0.996772,
		0.790394, 0.612197, 0.022163,
		-0.609169, 0.789278, -0.077163,
		37.647560, 37.651928, 25.330904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340000, 37.605801, 25.876902>,  <38.073978, 37.099434, 25.384918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340000, 37.605801, 25.876902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953648, 37.675774, 25.800512>,  <37.721836, 37.717758, 25.754679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953648, 37.675774, 25.800512>,  <38.340000, 37.605801, 25.876902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953648, 37.675774, 25.800512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167795, 0.138987, 0.975975,
		0.197273, 0.974721, -0.104892,
		-0.965882, 0.174933, -0.190971,
		37.663883, 37.728252, 25.743221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204849, 38.091255, 26.336174>,  <38.340000, 37.605801, 25.876902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204849, 38.091255, 26.336174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833099, 37.979061, 26.240185>,  <37.610050, 37.911743, 26.182590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833099, 37.979061, 26.240185>,  <38.204849, 38.091255, 26.336174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833099, 37.979061, 26.240185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272333, 0.082145, 0.958690,
		-0.249186, 0.956337, -0.152729,
		-0.929377, -0.280486, -0.239972,
		37.554287, 37.894917, 26.168194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800041, 38.650551, 26.489847>,  <38.204849, 38.091255, 26.336174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800041, 38.650551, 26.489847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580166, 38.316708, 26.504107>,  <37.448238, 38.116402, 26.512661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580166, 38.316708, 26.504107>,  <37.800041, 38.650551, 26.489847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580166, 38.316708, 26.504107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184768, 0.163086, 0.969156,
		-0.814678, 0.526150, -0.243855,
		-0.549691, -0.834607, 0.035647,
		37.415260, 38.066326, 26.514801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262592, 38.818054, 27.000402>,  <37.800041, 38.650551, 26.489847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262592, 38.818054, 27.000402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251389, 38.422794, 26.940031>,  <37.244667, 38.185638, 26.903809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251389, 38.422794, 26.940031>,  <37.262592, 38.818054, 27.000402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251389, 38.422794, 26.940031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193406, -0.142777, 0.970674,
		-0.980719, 0.056375, -0.187115,
		-0.028006, -0.988148, -0.150927,
		37.242985, 38.126350, 26.894753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600590, 38.530453, 27.227819>,  <37.262592, 38.818054, 27.000402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600590, 38.530453, 27.227819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829601, 38.202518, 27.224173>,  <36.967007, 38.005756, 27.221985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829601, 38.202518, 27.224173>,  <36.600590, 38.530453, 27.227819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829601, 38.202518, 27.224173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230218, -0.171423, 0.957922,
		-0.786900, -0.546338, -0.286885,
		0.572527, -0.819835, -0.009116,
		37.001358, 37.956570, 27.221437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264519, 38.043648, 27.576462>,  <36.600590, 38.530453, 27.227819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264519, 38.043648, 27.576462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644363, 37.919785, 27.595829>,  <36.872272, 37.845467, 27.607449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644363, 37.919785, 27.595829>,  <36.264519, 38.043648, 27.576462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644363, 37.919785, 27.595829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158531, -0.341295, 0.926491,
		-0.270368, -0.887486, -0.373189,
		0.949615, -0.309655, 0.048419,
		36.929249, 37.826889, 27.610353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217869, 37.341366, 27.759983>,  <36.264519, 38.043648, 27.576462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217869, 37.341366, 27.759983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586849, 37.442368, 27.876823>,  <36.808239, 37.502968, 27.946928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586849, 37.442368, 27.876823>,  <36.217869, 37.341366, 27.759983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586849, 37.442368, 27.876823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184208, -0.377067, 0.907683,
		0.339333, -0.891102, -0.301314,
		0.922453, 0.252503, 0.292099,
		36.863586, 37.518120, 27.964453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433319, 36.752880, 28.222902>,  <36.217869, 37.341366, 27.759983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433319, 36.752880, 28.222902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682140, 37.056019, 28.301605>,  <36.831432, 37.237904, 28.348827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682140, 37.056019, 28.301605>,  <36.433319, 36.752880, 28.222902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682140, 37.056019, 28.301605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000260, -0.251093, 0.967963,
		0.782972, -0.602179, -0.155997,
		0.622056, 0.757848, 0.196755,
		36.868759, 37.283375, 28.360632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034779, 36.471882, 28.633701>,  <36.433319, 36.752880, 28.222902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034779, 36.471882, 28.633701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080929, 36.863625, 28.700089>,  <37.108620, 37.098671, 28.739922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080929, 36.863625, 28.700089>,  <37.034779, 36.471882, 28.633701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080929, 36.863625, 28.700089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378188, -0.197808, 0.904348,
		0.918511, -0.041571, -0.393203,
		0.115374, 0.979359, 0.165967,
		37.115540, 37.157433, 28.749878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766026, 36.572815, 28.835440>,  <37.034779, 36.471882, 28.633701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766026, 36.572815, 28.835440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527603, 36.859848, 28.979546>,  <37.384552, 37.032070, 29.066010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527603, 36.859848, 28.979546>,  <37.766026, 36.572815, 28.835440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527603, 36.859848, 28.979546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398927, -0.124732, 0.908460,
		0.696834, 0.685211, -0.211917,
		-0.596053, 0.717585, 0.360267,
		37.348785, 37.075123, 29.087626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191059, 36.908085, 29.265539>,  <37.766026, 36.572815, 28.835440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191059, 36.908085, 29.265539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815868, 37.001629, 29.367916>,  <37.590752, 37.057755, 29.429342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815868, 37.001629, 29.367916>,  <38.191059, 36.908085, 29.265539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815868, 37.001629, 29.367916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239041, -0.098460, 0.966005,
		0.251105, 0.967273, 0.036452,
		-0.937980, 0.233855, 0.255941,
		37.534473, 37.071785, 29.444698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315643, 37.240391, 29.854721>,  <38.191059, 36.908085, 29.265539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315643, 37.240391, 29.854721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917561, 37.205132, 29.871620>,  <37.678711, 37.183975, 29.881760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917561, 37.205132, 29.871620>,  <38.315643, 37.240391, 29.854721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917561, 37.205132, 29.871620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051616, -0.106856, 0.992934,
		-0.083012, 0.990359, 0.110894,
		-0.995211, -0.088149, 0.042248,
		37.618996, 37.178688, 29.884295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110031, 37.732658, 30.364401>,  <38.315643, 37.240391, 29.854721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110031, 37.732658, 30.364401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845051, 37.433334, 30.378250>,  <37.686062, 37.253742, 30.386560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845051, 37.433334, 30.378250>,  <38.110031, 37.732658, 30.364401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845051, 37.433334, 30.378250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322509, -0.243178, 0.914796,
		-0.676130, 0.617170, 0.402429,
		-0.662447, -0.748308, 0.034623,
		37.646317, 37.208843, 30.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651173, 37.801640, 30.952412>,  <38.110031, 37.732658, 30.364401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651173, 37.801640, 30.952412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650444, 37.410778, 30.867411>,  <37.650005, 37.176262, 30.816410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650444, 37.410778, 30.867411>,  <37.651173, 37.801640, 30.952412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650444, 37.410778, 30.867411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214488, -0.207941, 0.954335,
		-0.976725, -0.043842, 0.209968,
		-0.001821, -0.977158, -0.212505,
		37.649899, 37.117630, 30.803659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351376, 37.491737, 31.589270>,  <37.651173, 37.801640, 30.952412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351376, 37.491737, 31.589270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491863, 37.157490, 31.420326>,  <37.576157, 36.956940, 31.318960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491863, 37.157490, 31.420326>,  <37.351376, 37.491737, 31.589270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491863, 37.157490, 31.420326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264161, -0.344333, 0.900918,
		-0.898257, -0.427988, 0.099803,
		0.351217, -0.835620, -0.422357,
		37.597229, 36.906803, 31.293619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988255, 36.952320, 31.920931>,  <37.351376, 37.491737, 31.589270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988255, 36.952320, 31.920931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323277, 36.776276, 31.791441>,  <37.524292, 36.670650, 31.713747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323277, 36.776276, 31.791441>,  <36.988255, 36.952320, 31.920931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323277, 36.776276, 31.791441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166636, -0.358513, 0.918532,
		-0.520318, -0.823268, -0.226936,
		0.837557, -0.440113, -0.323726,
		37.574543, 36.644241, 31.694323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994293, 36.287666, 32.168022>,  <36.988255, 36.952320, 31.920931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994293, 36.287666, 32.168022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376122, 36.373219, 32.085030>,  <37.605217, 36.424549, 32.035233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376122, 36.373219, 32.085030>,  <36.994293, 36.287666, 32.168022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376122, 36.373219, 32.085030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264326, -0.286307, 0.920956,
		0.137569, -0.933961, -0.329834,
		0.954571, 0.213879, -0.207484,
		37.662495, 36.437382, 32.022785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467060, 35.691120, 32.500500>,  <36.994293, 36.287666, 32.168022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467060, 35.691120, 32.500500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692696, 36.017540, 32.450108>,  <37.828079, 36.213390, 32.419872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692696, 36.017540, 32.450108>,  <37.467060, 35.691120, 32.500500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692696, 36.017540, 32.450108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291769, -0.054258, 0.954949,
		0.772446, -0.575435, -0.268703,
		0.564091, 0.816046, -0.125983,
		37.861923, 36.262352, 32.412312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093647, 35.555431, 32.943264>,  <37.467060, 35.691120, 32.500500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093647, 35.555431, 32.943264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100178, 35.947758, 32.865574>,  <38.104095, 36.183155, 32.818958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100178, 35.947758, 32.865574>,  <38.093647, 35.555431, 32.943264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100178, 35.947758, 32.865574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376734, 0.173905, 0.909850,
		0.926177, -0.088026, -0.366670,
		0.016325, 0.980820, -0.194230,
		38.105076, 36.242004, 32.807304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673195, 35.705963, 33.255386>,  <38.093647, 35.555431, 32.943264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673195, 35.705963, 33.255386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496815, 36.060669, 33.199928>,  <38.390987, 36.273491, 33.166653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496815, 36.060669, 33.199928>,  <38.673195, 35.705963, 33.255386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496815, 36.060669, 33.199928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438701, 0.347704, 0.828640,
		0.783013, 0.304561, -0.542341,
		-0.440946, 0.886761, -0.138645,
		38.364532, 36.326698, 33.158337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214531, 36.271049, 33.283779>,  <38.673195, 35.705963, 33.255386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214531, 36.271049, 33.283779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851734, 36.407539, 33.382515>,  <38.634056, 36.489433, 33.441757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851734, 36.407539, 33.382515>,  <39.214531, 36.271049, 33.283779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851734, 36.407539, 33.382515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361235, 0.329000, 0.872507,
		0.216513, 0.880524, -0.421663,
		-0.906991, 0.341228, 0.246843,
		38.579636, 36.509907, 33.456570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376293, 36.819344, 33.695488>,  <39.214531, 36.271049, 33.283779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376293, 36.819344, 33.695488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992943, 36.729649, 33.766186>,  <38.762932, 36.675831, 33.808605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992943, 36.729649, 33.766186>,  <39.376293, 36.819344, 33.695488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992943, 36.729649, 33.766186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172838, 0.037087, 0.984252,
		-0.227263, 0.973828, 0.003214,
		-0.958373, -0.224239, 0.176743,
		38.705429, 36.662376, 33.819210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087223, 37.535580, 34.023670>,  <39.376293, 36.819344, 33.695488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087223, 37.535580, 34.023670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850746, 37.232185, 34.133354>,  <38.708858, 37.050148, 34.199165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850746, 37.232185, 34.133354>,  <39.087223, 37.535580, 34.023670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850746, 37.232185, 34.133354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252677, 0.148691, 0.956057,
		-0.765928, 0.634501, 0.103747,
		-0.591193, -0.758485, 0.274210,
		38.673389, 37.004639, 34.215618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550766, 37.690533, 34.637867>,  <39.087223, 37.535580, 34.023670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550766, 37.690533, 34.637867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563263, 37.290836, 34.647202>,  <38.570763, 37.051018, 34.652802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563263, 37.290836, 34.647202>,  <38.550766, 37.690533, 34.637867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563263, 37.290836, 34.647202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129508, 0.027197, 0.991205,
		-0.991086, -0.027944, 0.130259,
		0.031241, -0.999239, 0.023335,
		38.572636, 36.991066, 34.654202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291870, 37.571358, 35.166332>,  <38.550766, 37.690533, 34.637867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291870, 37.571358, 35.166332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490211, 37.226048, 35.128639>,  <38.609215, 37.018860, 35.106022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490211, 37.226048, 35.128639>,  <38.291870, 37.571358, 35.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490211, 37.226048, 35.128639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044746, -0.082974, 0.995547,
		-0.867255, -0.497858, -0.002515,
		0.495849, -0.863280, -0.094237,
		38.638966, 36.967064, 35.100368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044388, 37.135498, 35.662109>,  <38.291870, 37.571358, 35.166332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044388, 37.135498, 35.662109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363644, 36.915325, 35.564137>,  <38.555199, 36.783222, 35.505352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363644, 36.915325, 35.564137>,  <38.044388, 37.135498, 35.662109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363644, 36.915325, 35.564137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109049, -0.267852, 0.957269,
		-0.592516, -0.790749, -0.153760,
		0.798144, -0.550429, -0.244937,
		38.603088, 36.750198, 35.490654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041794, 36.521770, 36.192413>,  <38.044388, 37.135498, 35.662109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041794, 36.521770, 36.192413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423775, 36.529316, 36.073948>,  <38.652962, 36.533844, 36.002869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423775, 36.529316, 36.073948>,  <38.041794, 36.521770, 36.192413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423775, 36.529316, 36.073948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289097, -0.284544, 0.914034,
		-0.067033, -0.958477, -0.277178,
		0.954950, 0.018861, -0.296167,
		38.710258, 36.534973, 35.985096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401264, 35.951500, 36.517319>,  <38.041794, 36.521770, 36.192413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401264, 35.951500, 36.517319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710705, 36.182587, 36.413181>,  <38.896370, 36.321239, 36.350700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710705, 36.182587, 36.413181>,  <38.401264, 35.951500, 36.517319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710705, 36.182587, 36.413181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498625, -0.301447, 0.812713,
		0.391042, -0.758530, -0.521267,
		0.773602, 0.577721, -0.260343,
		38.942787, 36.355904, 36.335079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947445, 35.535652, 36.599644>,  <38.401264, 35.951500, 36.517319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947445, 35.535652, 36.599644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098278, 35.906101, 36.603924>,  <39.188778, 36.128368, 36.606491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098278, 35.906101, 36.603924>,  <38.947445, 35.535652, 36.599644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098278, 35.906101, 36.603924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611219, -0.257513, 0.748397,
		0.695860, -0.275665, -0.663165,
		0.377080, 0.926119, 0.010702,
		39.211403, 36.183937, 36.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676800, 35.450016, 36.603481>,  <38.947445, 35.535652, 36.599644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676800, 35.450016, 36.603481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587456, 35.811012, 36.750786>,  <39.533852, 36.027611, 36.839169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587456, 35.811012, 36.750786>,  <39.676800, 35.450016, 36.603481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587456, 35.811012, 36.750786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465870, -0.233020, 0.853620,
		0.856199, 0.362224, -0.368398,
		-0.223357, 0.902494, 0.368261,
		39.520451, 36.081760, 36.861263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194984, 35.598370, 36.865814>,  <39.676800, 35.450016, 36.603481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194984, 35.598370, 36.865814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927753, 35.836861, 37.043884>,  <39.767414, 35.979958, 37.150726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927753, 35.836861, 37.043884>,  <40.194984, 35.598370, 36.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927753, 35.836861, 37.043884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402650, -0.213438, 0.890122,
		0.625736, 0.773920, -0.097479,
		-0.668078, 0.596231, 0.445175,
		39.727329, 36.015732, 37.177437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386677, 35.657051, 37.554199>,  <40.194984, 35.598370, 36.865814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386677, 35.657051, 37.554199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069942, 35.893116, 37.617058>,  <39.879902, 36.034756, 37.654774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069942, 35.893116, 37.617058>,  <40.386677, 35.657051, 37.554199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069942, 35.893116, 37.617058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228063, 0.047042, 0.972509,
		0.566548, 0.805911, -0.171845,
		-0.791840, 0.590164, 0.157147,
		39.832390, 36.070164, 37.664204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592491, 36.317020, 37.970383>,  <40.386677, 35.657051, 37.554199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592491, 36.317020, 37.970383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195827, 36.280605, 38.006866>,  <39.957829, 36.258755, 38.028755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195827, 36.280605, 38.006866>,  <40.592491, 36.317020, 37.970383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195827, 36.280605, 38.006866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075221, 0.165778, 0.983290,
		-0.104639, 0.981952, -0.157548,
		-0.991661, -0.091040, 0.091210,
		39.898331, 36.253292, 38.034229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448425, 36.807537, 38.488968>,  <40.592491, 36.317020, 37.970383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448425, 36.807537, 38.488968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193539, 36.499447, 38.499599>,  <40.040607, 36.314594, 38.505978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193539, 36.499447, 38.499599>,  <40.448425, 36.807537, 38.488968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193539, 36.499447, 38.499599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166250, -0.103704, 0.980615,
		-0.752539, 0.629283, 0.194132,
		-0.637217, -0.770226, 0.026577,
		40.002373, 36.268379, 38.507572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232063, 36.788460, 39.177811>,  <40.448425, 36.807537, 38.488968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232063, 36.788460, 39.177811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104897, 36.430202, 39.053387>,  <40.028599, 36.215248, 38.978733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104897, 36.430202, 39.053387>,  <40.232063, 36.788460, 39.177811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104897, 36.430202, 39.053387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042536, -0.341226, 0.939018,
		-0.947165, 0.285296, 0.146578,
		-0.317915, -0.895640, -0.311062,
		40.009521, 36.161510, 38.960068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900742, 36.337479, 39.686363>,  <40.232063, 36.788460, 39.177811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900742, 36.337479, 39.686363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665428, 36.039478, 39.560570>,  <39.524239, 35.860680, 39.485092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665428, 36.039478, 39.560570>,  <39.900742, 36.337479, 39.686363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665428, 36.039478, 39.560570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125702, -0.468418, 0.874519,
		-0.798825, 0.474934, 0.369211,
		-0.588283, -0.744998, -0.314484,
		39.488945, 35.815979, 39.466225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266773, 36.263454, 40.084869>,  <39.900742, 36.337479, 39.686363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266773, 36.263454, 40.084869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405975, 35.925209, 39.922962>,  <39.489494, 35.722263, 39.825817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405975, 35.925209, 39.922962>,  <39.266773, 36.263454, 40.084869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405975, 35.925209, 39.922962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257778, -0.328800, 0.908538,
		-0.901358, -0.420512, 0.103557,
		0.348001, -0.845612, -0.404765,
		39.510376, 35.671524, 39.801533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920696, 35.536476, 40.307354>,  <39.266773, 36.263454, 40.084869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920696, 35.536476, 40.307354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291599, 35.455788, 40.181179>,  <39.514141, 35.407375, 40.105473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291599, 35.455788, 40.181179>,  <38.920696, 35.536476, 40.307354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291599, 35.455788, 40.181179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265914, -0.238321, 0.934073,
		-0.263610, -0.950004, -0.167340,
		0.927254, -0.201733, -0.315443,
		39.569775, 35.395271, 40.086548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164394, 34.829906, 40.415657>,  <38.920696, 35.536476, 40.307354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164394, 34.829906, 40.415657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473118, 35.084221, 40.419544>,  <39.658352, 35.236809, 40.421875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473118, 35.084221, 40.419544>,  <39.164394, 34.829906, 40.415657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473118, 35.084221, 40.419544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136206, -0.180232, 0.974148,
		0.621097, -0.750531, -0.225702,
		0.771807, 0.635783, 0.009715,
		39.704659, 35.274956, 40.422459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844212, 34.511414, 40.696468>,  <39.164394, 34.829906, 40.415657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844212, 34.511414, 40.696468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754002, 34.900654, 40.715279>,  <39.699875, 35.134197, 40.726562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754002, 34.900654, 40.715279>,  <39.844212, 34.511414, 40.696468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754002, 34.900654, 40.715279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093528, -0.069668, 0.993176,
		0.969738, 0.219586, 0.106724,
		-0.225523, 0.973102, 0.047022,
		39.686344, 35.192585, 40.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343014, 34.874275, 41.020527>,  <39.844212, 34.511414, 40.696468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343014, 34.874275, 41.020527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992901, 35.061462, 41.069321>,  <39.782833, 35.173775, 41.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992901, 35.061462, 41.069321>,  <40.343014, 34.874275, 41.020527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992901, 35.061462, 41.069321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072080, -0.123172, 0.989764,
		0.478204, 0.875119, 0.074079,
		-0.875286, 0.467969, 0.121980,
		39.730316, 35.201855, 41.105915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366817, 35.294228, 41.518742>,  <40.343014, 34.874275, 41.020527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366817, 35.294228, 41.518742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989704, 35.427589, 41.518417>,  <39.763435, 35.507607, 41.518223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989704, 35.427589, 41.518417>,  <40.366817, 35.294228, 41.518742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989704, 35.427589, 41.518417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026861, -0.073535, 0.996931,
		0.332326, 0.939910, 0.078284,
		-0.942782, 0.333409, -0.000810,
		39.706871, 35.527611, 41.518173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180428, 35.950127, 41.821751>,  <40.366817, 35.294228, 41.518742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180428, 35.950127, 41.821751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847614, 35.729874, 41.848675>,  <39.647926, 35.597721, 41.864830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847614, 35.729874, 41.848675>,  <40.180428, 35.950127, 41.821751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847614, 35.729874, 41.848675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204431, -0.191567, 0.959953,
		-0.515683, 0.812472, 0.271956,
		-0.832033, -0.550628, 0.067306,
		39.598003, 35.564686, 41.868866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831097, 36.191788, 42.358986>,  <40.180428, 35.950127, 41.821751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831097, 36.191788, 42.358986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701458, 35.815731, 42.316849>,  <39.623676, 35.590096, 42.291569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701458, 35.815731, 42.316849>,  <39.831097, 36.191788, 42.358986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701458, 35.815731, 42.316849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056334, -0.130332, 0.989869,
		-0.944345, 0.314879, 0.095202,
		-0.324097, -0.940141, -0.105340,
		39.604229, 35.533688, 42.285248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382610, 36.051655, 42.945873>,  <39.831097, 36.191788, 42.358986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382610, 36.051655, 42.945873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462608, 35.679432, 42.823185>,  <39.510605, 35.456100, 42.749573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462608, 35.679432, 42.823185>,  <39.382610, 36.051655, 42.945873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462608, 35.679432, 42.823185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147309, -0.280925, 0.948357,
		-0.968660, -0.234846, 0.080896,
		0.199992, -0.930553, -0.306716,
		39.522606, 35.400265, 42.731171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821213, 35.444130, 43.202015>,  <39.382610, 36.051655, 42.945873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821213, 35.444130, 43.202015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211346, 35.356968, 43.187935>,  <39.445427, 35.304668, 43.179485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211346, 35.356968, 43.187935>,  <38.821213, 35.444130, 43.202015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211346, 35.356968, 43.187935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036792, -0.317740, 0.947464,
		-0.217643, -0.922799, -0.317920,
		0.975335, -0.217906, -0.035202,
		39.503944, 35.291595, 43.177376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910316, 34.739529, 43.405582>,  <38.821213, 35.444130, 43.202015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910316, 34.739529, 43.405582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238495, 34.953671, 43.485847>,  <39.435402, 35.082153, 43.534008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238495, 34.953671, 43.485847>,  <38.910316, 34.739529, 43.405582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238495, 34.953671, 43.485847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012335, -0.334320, 0.942379,
		0.571589, -0.775647, -0.267688,
		0.820447, 0.535352, 0.200662,
		39.484631, 35.114277, 43.546047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505363, 34.345448, 43.752674>,  <38.910316, 34.739529, 43.405582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505363, 34.345448, 43.752674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525654, 34.735840, 43.837414>,  <39.537827, 34.970078, 43.888256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525654, 34.735840, 43.837414>,  <39.505363, 34.345448, 43.752674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525654, 34.735840, 43.837414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005083, -0.212373, 0.977176,
		0.998700, -0.048489, -0.015733,
		0.050724, 0.975985, 0.211850,
		39.540871, 35.028637, 43.900970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068443, 34.247681, 44.168663>,  <39.505363, 34.345448, 43.752674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068443, 34.247681, 44.168663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848808, 34.570950, 44.253860>,  <39.717026, 34.764912, 44.304981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848808, 34.570950, 44.253860>,  <40.068443, 34.247681, 44.168663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848808, 34.570950, 44.253860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149333, -0.155880, 0.976423,
		0.822315, 0.567949, -0.035094,
		-0.549088, 0.808168, 0.212996,
		39.684082, 34.813400, 44.317760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976658, 33.611408, 43.758831>,  <40.068443, 34.247681, 44.168663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976658, 33.611408, 43.758831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111652, 33.261086, 43.620804>,  <40.192650, 33.050892, 43.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111652, 33.261086, 43.620804>,  <39.976658, 33.611408, 43.758831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111652, 33.261086, 43.620804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672935, 0.480794, -0.562135,
		0.658227, -0.042497, 0.751619,
		0.337485, -0.875803, -0.345070,
		40.212898, 32.998344, 43.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972286, 33.700279, 43.008553>,  <39.976658, 33.611408, 43.758831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972286, 33.700279, 43.008553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786774, 33.478165, 43.284687>,  <39.675465, 33.344894, 43.450367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786774, 33.478165, 43.284687>,  <39.972286, 33.700279, 43.008553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786774, 33.478165, 43.284687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832506, -0.539686, 0.125190,
		0.303048, 0.632769, 0.712576,
		-0.463784, -0.555285, 0.690335,
		39.647640, 33.311581, 43.491787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197388, 33.857082, 42.326515>,  <39.972286, 33.700279, 43.008553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197388, 33.857082, 42.326515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322903, 33.857498, 41.946716>,  <40.398212, 33.857750, 41.718838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322903, 33.857498, 41.946716>,  <40.197388, 33.857082, 42.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322903, 33.857498, 41.946716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871295, 0.397093, 0.288379,
		0.377337, -0.917777, 0.123695,
		0.313786, 0.001041, -0.949493,
		40.417038, 33.857811, 41.661869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870396, 34.343971, 42.119366>,  <40.197388, 33.857082, 42.326515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870396, 34.343971, 42.119366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720390, 34.643826, 42.337505>,  <39.630386, 34.823738, 42.468388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720390, 34.643826, 42.337505>,  <39.870396, 34.343971, 42.119366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720390, 34.643826, 42.337505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282059, 0.468119, -0.837441,
		-0.883067, -0.467873, 0.035891,
		-0.375014, 0.749640, 0.545349,
		39.607887, 34.868717, 42.501110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108265, 34.339146, 42.084927>,  <39.870396, 34.343971, 42.119366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108265, 34.339146, 42.084927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238407, 34.710762, 42.155396>,  <39.316490, 34.933731, 42.197678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238407, 34.710762, 42.155396>,  <39.108265, 34.339146, 42.084927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238407, 34.710762, 42.155396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237568, 0.260644, -0.935749,
		-0.915264, 0.262595, 0.305510,
		0.325352, 0.929036, 0.176174,
		39.336014, 34.989471, 42.208248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572670, 34.782852, 41.810215>,  <39.108265, 34.339146, 42.084927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572670, 34.782852, 41.810215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900215, 35.009125, 41.849140>,  <39.096741, 35.144890, 41.872494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900215, 35.009125, 41.849140>,  <38.572670, 34.782852, 41.810215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900215, 35.009125, 41.849140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125651, 0.342087, -0.931229,
		-0.560070, 0.750320, 0.351200,
		0.818861, 0.565682, 0.097314,
		39.145874, 35.178829, 41.878334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529968, 35.399235, 41.309128>,  <38.572670, 34.782852, 41.810215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529968, 35.399235, 41.309128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917782, 35.354916, 41.396519>,  <39.150471, 35.328323, 41.448952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917782, 35.354916, 41.396519>,  <38.529968, 35.399235, 41.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917782, 35.354916, 41.396519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235564, 0.176981, -0.955608,
		0.067215, 0.977957, 0.197689,
		0.969532, -0.110800, 0.218476,
		39.208641, 35.321674, 41.462063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709061, 36.023312, 41.081783>,  <38.529968, 35.399235, 41.309128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709061, 36.023312, 41.081783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024094, 35.780254, 41.122738>,  <39.213112, 35.634418, 41.147312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024094, 35.780254, 41.122738>,  <38.709061, 36.023312, 41.081783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024094, 35.780254, 41.122738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404366, 0.384256, -0.829961,
		0.464980, 0.695063, 0.548344,
		0.787580, -0.607647, 0.102388,
		39.260368, 35.597961, 41.153454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313618, 36.360958, 41.028152>,  <38.709061, 36.023312, 41.081783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313618, 36.360958, 41.028152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407887, 35.988369, 40.917294>,  <39.464447, 35.764816, 40.850777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407887, 35.988369, 40.917294>,  <39.313618, 36.360958, 41.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407887, 35.988369, 40.917294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188361, 0.323554, -0.927272,
		0.953405, 0.166325, 0.251705,
		0.235669, -0.931477, -0.277149,
		39.478588, 35.708927, 40.834148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935307, 36.361286, 40.566017>,  <39.313618, 36.360958, 41.028152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935307, 36.361286, 40.566017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725346, 36.031815, 40.480198>,  <39.599369, 35.834133, 40.428707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725346, 36.031815, 40.480198>,  <39.935307, 36.361286, 40.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725346, 36.031815, 40.480198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115442, 0.180845, -0.976713,
		0.843298, -0.537447, 0.000161,
		-0.524902, -0.823678, -0.214551,
		39.567875, 35.784710, 40.415833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603249, 36.143246, 40.557629>,  <39.935307, 36.361286, 40.566017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603249, 36.143246, 40.557629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318356, 35.872036, 40.484955>,  <40.147419, 35.709309, 40.441353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318356, 35.872036, 40.484955>,  <40.603249, 36.143246, 40.557629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318356, 35.872036, 40.484955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082436, 0.176239, -0.980889,
		0.697090, -0.713595, -0.069629,
		-0.712229, -0.678028, -0.181680,
		40.104687, 35.668629, 40.430450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820004, 35.683903, 40.058109>,  <40.603249, 36.143246, 40.557629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820004, 35.683903, 40.058109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424660, 35.631557, 40.027061>,  <40.187454, 35.600151, 40.008434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424660, 35.631557, 40.027061>,  <40.820004, 35.683903, 40.058109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424660, 35.631557, 40.027061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057759, 0.149264, -0.987109,
		0.140770, -0.980099, -0.139967,
		-0.988356, -0.130870, -0.077622,
		40.128151, 35.592297, 40.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723469, 35.246849, 39.418060>,  <40.820004, 35.683903, 40.058109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723469, 35.246849, 39.418060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393333, 35.454475, 39.506950>,  <40.195251, 35.579052, 39.560284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393333, 35.454475, 39.506950>,  <40.723469, 35.246849, 39.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393333, 35.454475, 39.506950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181134, 0.129372, -0.974912,
		-0.534793, -0.844887, -0.012756,
		-0.825340, 0.519066, 0.222226,
		40.145733, 35.610195, 39.573620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356915, 35.027390, 38.896938>,  <40.723469, 35.246849, 39.418060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356915, 35.027390, 38.896938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160000, 35.337658, 39.054916>,  <40.041851, 35.523819, 39.149704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160000, 35.337658, 39.054916>,  <40.356915, 35.027390, 38.896938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160000, 35.337658, 39.054916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199195, 0.341298, -0.918606,
		-0.847334, -0.530889, -0.013506,
		-0.492287, 0.775676, 0.394944,
		40.012314, 35.570362, 39.173401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725323, 34.998127, 38.427528>,  <40.356915, 35.027390, 38.896938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725323, 34.998127, 38.427528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795387, 35.347088, 38.610058>,  <39.837425, 35.556465, 38.719574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795387, 35.347088, 38.610058>,  <39.725323, 34.998127, 38.427528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795387, 35.347088, 38.610058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286593, 0.488600, -0.824096,
		-0.941904, 0.013572, 0.335609,
		0.175163, 0.872402, 0.456325,
		39.847935, 35.608810, 38.746956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130257, 35.306053, 38.423988>,  <39.725323, 34.998127, 38.427528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130257, 35.306053, 38.423988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394745, 35.603573, 38.463078>,  <39.553436, 35.782085, 38.486530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394745, 35.603573, 38.463078>,  <39.130257, 35.306053, 38.423988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394745, 35.603573, 38.463078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413272, 0.469871, -0.780017,
		-0.626098, 0.475372, 0.618080,
		0.661216, 0.743803, 0.097727,
		39.593109, 35.826714, 38.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652672, 35.838390, 38.311760>,  <39.130257, 35.306053, 38.423988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652672, 35.838390, 38.311760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030342, 35.952934, 38.246597>,  <39.256943, 36.021660, 38.207500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030342, 35.952934, 38.246597>,  <38.652672, 35.838390, 38.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030342, 35.952934, 38.246597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283712, 0.455365, -0.843890,
		-0.167475, 0.842995, 0.511187,
		0.944171, 0.286361, -0.162905,
		39.313595, 36.038841, 38.197727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677608, 36.507160, 38.165749>,  <38.652672, 35.838390, 38.311760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677608, 36.507160, 38.165749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008888, 36.355965, 38.000237>,  <39.207657, 36.265247, 37.900928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008888, 36.355965, 38.000237>,  <38.677608, 36.507160, 38.165749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008888, 36.355965, 38.000237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088114, 0.641318, -0.762199,
		0.553466, 0.667711, 0.497832,
		0.828197, -0.377986, -0.413782,
		39.257347, 36.242569, 37.876102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085449, 37.029888, 37.939034>,  <38.677608, 36.507160, 38.165749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085449, 37.029888, 37.939034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210274, 36.716274, 37.724403>,  <39.285168, 36.528107, 37.595627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210274, 36.716274, 37.724403>,  <39.085449, 37.029888, 37.939034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210274, 36.716274, 37.724403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123506, 0.526504, -0.841154,
		0.942001, 0.328758, 0.067467,
		0.312058, -0.784035, -0.536571,
		39.303890, 36.481064, 37.563431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406052, 37.266090, 37.407383>,  <39.085449, 37.029888, 37.939034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406052, 37.266090, 37.407383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385612, 36.896904, 37.254791>,  <39.373348, 36.675392, 37.163239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385612, 36.896904, 37.254791>,  <39.406052, 37.266090, 37.407383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385612, 36.896904, 37.254791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001116, 0.382027, -0.924150,
		0.998693, -0.046795, -0.020550,
		-0.051096, -0.922966, -0.381476,
		39.370285, 36.620014, 37.140350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657055, 37.367195, 36.780838>,  <39.406052, 37.266090, 37.407383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657055, 37.367195, 36.780838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505875, 37.005161, 36.702892>,  <39.415165, 36.787941, 36.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505875, 37.005161, 36.702892>,  <39.657055, 37.367195, 36.780838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505875, 37.005161, 36.702892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059359, 0.233730, -0.970488,
		0.923921, -0.355230, -0.142064,
		-0.377951, -0.905087, -0.194862,
		39.392490, 36.733635, 36.644432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835358, 37.260487, 36.137085>,  <39.657055, 37.367195, 36.780838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835358, 37.260487, 36.137085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573597, 36.960926, 36.178852>,  <39.416542, 36.781189, 36.203911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573597, 36.960926, 36.178852>,  <39.835358, 37.260487, 36.137085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573597, 36.960926, 36.178852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218645, 0.055221, -0.974241,
		0.723845, -0.660375, -0.199881,
		-0.654402, -0.748903, 0.104417,
		39.377277, 36.736256, 36.210178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903450, 36.733807, 35.571533>,  <39.835358, 37.260487, 36.137085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903450, 36.733807, 35.571533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530991, 36.677113, 35.705925>,  <39.307514, 36.643097, 35.786560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530991, 36.677113, 35.705925>,  <39.903450, 36.733807, 35.571533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530991, 36.677113, 35.705925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295034, -0.248647, -0.922567,
		0.214300, -0.958168, 0.189710,
		-0.931145, -0.141735, 0.335977,
		39.251648, 36.634594, 35.806717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959965, 37.203476, 35.077526>,  <39.903450, 36.733807, 35.571533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959965, 37.203476, 35.077526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224232, 37.022728, 34.837746>,  <40.382790, 36.914280, 34.693878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224232, 37.022728, 34.837746>,  <39.959965, 37.203476, 35.077526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224232, 37.022728, 34.837746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133000, 0.856364, -0.498950,
		0.738806, 0.249911, 0.625867,
		0.660663, -0.451868, -0.599449,
		40.422432, 36.887169, 34.657909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653584, 37.539356, 35.095249>,  <39.959965, 37.203476, 35.077526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653584, 37.539356, 35.095249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623817, 37.362968, 34.737476>,  <40.605957, 37.257133, 34.522812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623817, 37.362968, 34.737476>,  <40.653584, 37.539356, 35.095249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623817, 37.362968, 34.737476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502448, 0.758171, -0.415598,
		0.861398, -0.480334, 0.165143,
		-0.074419, -0.440971, -0.894431,
		40.601490, 37.230679, 34.469147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315395, 37.537174, 34.913914>,  <40.653584, 37.539356, 35.095249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315395, 37.537174, 34.913914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102757, 37.521774, 34.575466>,  <40.975174, 37.512535, 34.372398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102757, 37.521774, 34.575466>,  <41.315395, 37.537174, 34.913914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102757, 37.521774, 34.575466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730234, 0.485306, -0.480869,
		0.429139, -0.873496, -0.229878,
		-0.531599, -0.038495, -0.846121,
		40.943275, 37.510227, 34.321629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686432, 37.427475, 34.199997>,  <41.315395, 37.537174, 34.913914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686432, 37.427475, 34.199997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368923, 37.653214, 34.109268>,  <41.178417, 37.788654, 34.054832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368923, 37.653214, 34.109268>,  <41.686432, 37.427475, 34.199997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368923, 37.653214, 34.109268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596811, 0.650795, -0.469344,
		-0.117256, -0.507920, -0.853387,
		-0.793768, 0.564344, -0.226822,
		41.130795, 37.822517, 34.041222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962364, 37.857731, 33.714146>,  <41.686432, 37.427475, 34.199997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962364, 37.857731, 33.714146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600182, 38.023186, 33.752193>,  <41.382870, 38.122459, 33.775021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600182, 38.023186, 33.752193>,  <41.962364, 37.857731, 33.714146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600182, 38.023186, 33.752193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335524, 0.834833, -0.436437,
		-0.259931, -0.363263, -0.894693,
		-0.905461, 0.413635, 0.095116,
		41.328545, 38.147278, 33.780727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524899, 37.571075, 34.174465>,  <41.962364, 37.857731, 33.714146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524899, 37.571075, 34.174465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664665, 37.294926, 33.921078>,  <42.748528, 37.129234, 33.769047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664665, 37.294926, 33.921078>,  <42.524899, 37.571075, 34.174465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664665, 37.294926, 33.921078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831125, -0.083770, 0.549740,
		-0.432595, -0.718581, 0.544520,
		0.349418, -0.690379, -0.633469,
		42.769489, 37.087811, 33.731037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976639, 37.075031, 34.424564>,  <42.524899, 37.571075, 34.174465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976639, 37.075031, 34.424564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088047, 36.992001, 34.049473>,  <43.154892, 36.942181, 33.824417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088047, 36.992001, 34.049473>,  <42.976639, 37.075031, 34.424564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088047, 36.992001, 34.049473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818205, -0.460019, 0.344852,
		-0.502957, -0.863304, 0.041718,
		0.278521, -0.207580, -0.937729,
		43.171604, 36.929726, 33.768154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939602, 36.322994, 34.314617>,  <42.976639, 37.075031, 34.424564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939602, 36.322994, 34.314617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201740, 36.500984, 34.070480>,  <43.359024, 36.607777, 33.923996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201740, 36.500984, 34.070480>,  <42.939602, 36.322994, 34.314617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201740, 36.500984, 34.070480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725154, -0.596757, 0.343559,
		-0.211353, -0.667744, -0.713756,
		0.655349, 0.444971, -0.610344,
		43.398346, 36.634476, 33.887379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262051, 35.809280, 33.891178>,  <42.939602, 36.322994, 34.314617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262051, 35.809280, 33.891178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512833, 36.118397, 33.930603>,  <43.663303, 36.303867, 33.954258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512833, 36.118397, 33.930603>,  <43.262051, 35.809280, 33.891178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512833, 36.118397, 33.930603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670995, -0.599945, 0.435698,
		0.395838, -0.207027, -0.894680,
		0.626960, 0.772791, 0.098567,
		43.700920, 36.350235, 33.960175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940369, 35.563210, 33.656261>,  <43.262051, 35.809280, 33.891178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940369, 35.563210, 33.656261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936623, 35.861671, 33.922543>,  <43.934376, 36.040749, 34.082310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936623, 35.861671, 33.922543>,  <43.940369, 35.563210, 33.656261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936623, 35.861671, 33.922543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511202, -0.568588, 0.644499,
		0.859409, 0.346348, -0.376110,
		-0.009369, 0.746157, 0.665704,
		43.933811, 36.085518, 34.122253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605251, 35.520428, 33.966763>,  <43.940369, 35.563210, 33.656261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605251, 35.520428, 33.966763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366940, 35.733765, 34.206963>,  <44.223953, 35.861767, 34.351082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366940, 35.733765, 34.206963>,  <44.605251, 35.520428, 33.966763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366940, 35.733765, 34.206963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521453, -0.311792, 0.794275,
		0.610850, 0.786342, -0.092354,
		-0.595777, 0.533341, 0.600498,
		44.188206, 35.893768, 34.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909176, 36.160046, 34.405029>,  <44.605251, 35.520428, 33.966763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909176, 36.160046, 34.405029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779976, 35.834827, 34.598782>,  <44.702457, 35.639694, 34.715034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779976, 35.834827, 34.598782>,  <44.909176, 36.160046, 34.405029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779976, 35.834827, 34.598782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597625, 0.572086, 0.561749,
		-0.733836, -0.108035, -0.670681,
		-0.322998, -0.813047, 0.484381,
		44.683075, 35.590912, 34.744095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361801, 35.929436, 33.793690>,  <44.909176, 36.160046, 34.405029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361801, 35.929436, 33.793690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581284, 35.976692, 33.462639>,  <45.712975, 36.005047, 33.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581284, 35.976692, 33.462639>,  <45.361801, 35.929436, 33.793690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581284, 35.976692, 33.462639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817639, -0.282252, 0.501796,
		-0.174316, -0.952038, -0.251471,
		0.548707, 0.118141, -0.827625,
		45.745895, 36.012135, 33.214352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757351, 35.263657, 33.692871>,  <45.361801, 35.929436, 33.793690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757351, 35.263657, 33.692871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943619, 35.591774, 33.560043>,  <46.055378, 35.788647, 33.480347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943619, 35.591774, 33.560043>,  <45.757351, 35.263657, 33.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943619, 35.591774, 33.560043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841887, -0.294994, 0.451889,
		0.272725, -0.489992, -0.827966,
		0.465668, 0.820296, -0.332066,
		46.083321, 35.837864, 33.460423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509003, 35.080013, 33.527596>,  <45.757351, 35.263657, 33.692871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509003, 35.080013, 33.527596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463848, 35.471481, 33.596245>,  <46.436756, 35.706364, 33.637432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463848, 35.471481, 33.596245>,  <46.509003, 35.080013, 33.527596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463848, 35.471481, 33.596245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817294, -0.006769, 0.576182,
		0.565056, 0.205305, -0.799100,
		-0.112884, 0.978675, 0.171620,
		46.429981, 35.765083, 33.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202572, 35.431957, 33.450584>,  <46.509003, 35.080013, 33.527596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202572, 35.431957, 33.450584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954174, 35.588665, 33.722137>,  <46.805134, 35.682690, 33.885071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954174, 35.588665, 33.722137>,  <47.202572, 35.431957, 33.450584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.954174, 35.588665, 33.722137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761853, 0.098098, 0.640279,
		0.184245, 0.914819, -0.359389,
		-0.620994, 0.391770, 0.678883,
		46.767876, 35.706196, 33.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439186, 35.952492, 33.766144>,  <47.202572, 35.431957, 33.450584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439186, 35.952492, 33.766144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.194286, 35.827156, 34.056515>,  <47.047344, 35.751957, 34.230736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.194286, 35.827156, 34.056515>,  <47.439186, 35.952492, 33.766144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.194286, 35.827156, 34.056515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745890, 0.075679, 0.661756,
		-0.262290, 0.946622, 0.187380,
		-0.612252, -0.313336, 0.725926,
		47.010612, 35.733154, 34.274292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.331745, 36.652199, 34.027977>,  <47.439186, 35.952492, 33.766144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.331745, 36.652199, 34.027977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217709, 36.643005, 34.411266>,  <47.149288, 36.637489, 34.641239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217709, 36.643005, 34.411266>,  <47.331745, 36.652199, 34.027977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217709, 36.643005, 34.411266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360879, -0.928723, 0.085089,
		0.887971, 0.370061, 0.273062,
		-0.285087, -0.022986, 0.958226,
		47.132183, 36.636108, 34.698734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844181, 36.494389, 34.422466>,  <47.331745, 36.652199, 34.027977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844181, 36.494389, 34.422466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534431, 36.362953, 34.638756>,  <47.348583, 36.284092, 34.768528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534431, 36.362953, 34.638756>,  <47.844181, 36.494389, 34.422466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.534431, 36.362953, 34.638756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417497, -0.907491, 0.046434,
		0.475443, 0.261707, 0.839919,
		-0.774371, -0.328587, 0.540722,
		47.302120, 36.264378, 34.800972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.057739, 35.924374, 34.829952>,  <47.844181, 36.494389, 34.422466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.057739, 35.924374, 34.829952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661114, 35.874481, 34.815807>,  <47.423138, 35.844547, 34.807320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661114, 35.874481, 34.815807>,  <48.057739, 35.924374, 34.829952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661114, 35.874481, 34.815807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119349, -0.984731, 0.126730,
		-0.050627, 0.121441, 0.991307,
		-0.991561, -0.124728, -0.035360,
		47.363644, 35.837063, 34.805199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.004696, 35.177185, 35.001244>,  <48.057739, 35.924374, 34.829952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.004696, 35.177185, 35.001244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626305, 35.298077, 34.954277>,  <47.399269, 35.370613, 34.926098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626305, 35.298077, 34.954277>,  <48.004696, 35.177185, 35.001244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626305, 35.298077, 34.954277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312959, -0.945778, 0.086949,
		-0.084767, 0.118997, 0.989270,
		-0.945976, 0.302230, -0.117412,
		47.342510, 35.388744, 34.919052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.604527, 31.464439, 26.931065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307720, 31.209021, 26.849417>,  <38.129635, 31.055769, 26.800428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307720, 31.209021, 26.849417>,  <38.604527, 31.464439, 26.931065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307720, 31.209021, 26.849417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375377, 0.143491, 0.915698,
		-0.555427, 0.756087, -0.346169,
		-0.742019, -0.638548, -0.204119,
		38.085114, 31.017456, 26.788181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049232, 31.756302, 27.221617>,  <38.604527, 31.464439, 26.931065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049232, 31.756302, 27.221617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967167, 31.366358, 27.186846>,  <37.917927, 31.132391, 27.165983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967167, 31.366358, 27.186846>,  <38.049232, 31.756302, 27.221617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967167, 31.366358, 27.186846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309111, -0.019732, 0.950821,
		-0.928633, 0.221940, -0.297292,
		-0.205159, -0.974860, -0.086928,
		37.905621, 31.073900, 27.160767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385193, 31.622313, 27.583643>,  <38.049232, 31.756302, 27.221617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385193, 31.622313, 27.583643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580429, 31.273291, 27.575529>,  <37.697571, 31.063877, 27.570662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580429, 31.273291, 27.575529>,  <37.385193, 31.622313, 27.583643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580429, 31.273291, 27.575529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220900, -0.145982, 0.964309,
		-0.844375, -0.466190, -0.264001,
		0.488091, -0.872557, -0.020282,
		37.726856, 31.011524, 27.569445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030731, 31.098341, 28.089497>,  <37.385193, 31.622313, 27.583643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030731, 31.098341, 28.089497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391335, 30.933260, 28.037399>,  <37.607697, 30.834211, 28.006140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391335, 30.933260, 28.037399>,  <37.030731, 31.098341, 28.089497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391335, 30.933260, 28.037399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119981, -0.050816, 0.991475,
		-0.415802, -0.909447, 0.003705,
		0.901506, -0.412702, -0.130246,
		37.661785, 30.809450, 27.998325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104996, 30.564434, 28.526072>,  <37.030731, 31.098341, 28.089497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104996, 30.564434, 28.526072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493324, 30.621687, 28.449120>,  <37.726322, 30.656038, 28.402948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493324, 30.621687, 28.449120>,  <37.104996, 30.564434, 28.526072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493324, 30.621687, 28.449120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206869, -0.094238, 0.973820,
		0.121255, -0.985207, -0.121098,
		0.970826, 0.143132, -0.192382,
		37.784573, 30.664627, 28.391405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424232, 30.055658, 28.935896>,  <37.104996, 30.564434, 28.526072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424232, 30.055658, 28.935896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715553, 30.324806, 28.884014>,  <37.890347, 30.486296, 28.852884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715553, 30.324806, 28.884014>,  <37.424232, 30.055658, 28.935896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715553, 30.324806, 28.884014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326653, -0.174505, 0.928895,
		0.602393, -0.718882, -0.346888,
		0.728300, 0.672871, -0.129704,
		37.934044, 30.526669, 28.845102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990997, 29.781992, 29.267527>,  <37.424232, 30.055658, 28.935896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990997, 29.781992, 29.267527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045853, 30.177227, 29.239609>,  <38.078766, 30.414368, 29.222858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045853, 30.177227, 29.239609>,  <37.990997, 29.781992, 29.267527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045853, 30.177227, 29.239609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324848, 0.021701, 0.945518,
		0.935771, -0.152341, -0.318003,
		0.137140, 0.988090, -0.069795,
		38.086994, 30.473654, 29.218670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580315, 29.846325, 29.741709>,  <37.990997, 29.781992, 29.267527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580315, 29.846325, 29.741709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426739, 30.214087, 29.707569>,  <38.334591, 30.434744, 29.687086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426739, 30.214087, 29.707569>,  <38.580315, 29.846325, 29.741709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426739, 30.214087, 29.707569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070103, 0.121190, 0.990151,
		0.920692, 0.374178, -0.110983,
		-0.383943, 0.919404, -0.085348,
		38.311558, 30.489908, 29.681965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091106, 30.202940, 30.085342>,  <38.580315, 29.846325, 29.741709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091106, 30.202940, 30.085342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788067, 30.462221, 30.054674>,  <38.606243, 30.617790, 30.036272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788067, 30.462221, 30.054674>,  <39.091106, 30.202940, 30.085342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788067, 30.462221, 30.054674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217537, 0.361493, 0.906642,
		0.615405, 0.670191, -0.414874,
		-0.757598, 0.648203, -0.076673,
		38.560787, 30.656681, 30.031672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322083, 30.850937, 30.294693>,  <39.091106, 30.202940, 30.085342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322083, 30.850937, 30.294693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927769, 30.894630, 30.345743>,  <38.691181, 30.920847, 30.376373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927769, 30.894630, 30.345743>,  <39.322083, 30.850937, 30.294693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927769, 30.894630, 30.345743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164232, 0.466836, 0.868960,
		0.035341, 0.877572, -0.478141,
		-0.985788, 0.109236, 0.127627,
		38.632030, 30.927401, 30.384031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275383, 31.489792, 30.616180>,  <39.322083, 30.850937, 30.294693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275383, 31.489792, 30.616180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936932, 31.293755, 30.699972>,  <38.733860, 31.176132, 30.750246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936932, 31.293755, 30.699972>,  <39.275383, 31.489792, 30.616180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936932, 31.293755, 30.699972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036738, 0.338464, 0.940262,
		-0.531715, 0.803276, -0.268378,
		-0.846126, -0.490092, 0.209477,
		38.683094, 31.146727, 30.762815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879215, 31.988152, 30.924561>,  <39.275383, 31.489792, 30.616180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879215, 31.988152, 30.924561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755104, 31.626894, 31.043259>,  <38.680637, 31.410139, 31.114477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755104, 31.626894, 31.043259>,  <38.879215, 31.988152, 30.924561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755104, 31.626894, 31.043259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094120, 0.281432, 0.954954,
		-0.945976, 0.324228, -0.002317,
		-0.310275, -0.903146, 0.296744,
		38.662022, 31.355949, 31.132282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380165, 32.095459, 31.437860>,  <38.879215, 31.988152, 30.924561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380165, 32.095459, 31.437860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497734, 31.719044, 31.504862>,  <38.568275, 31.493195, 31.545063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497734, 31.719044, 31.504862>,  <38.380165, 32.095459, 31.437860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497734, 31.719044, 31.504862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041253, 0.187568, 0.981385,
		-0.954939, -0.281541, 0.093951,
		0.293922, -0.941038, 0.167501,
		38.585911, 31.436731, 31.555113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084282, 31.940651, 32.040401>,  <38.380165, 32.095459, 31.437860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084282, 31.940651, 32.040401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.362820, 31.653566, 32.040173>,  <38.529942, 31.481316, 32.040035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.362820, 31.653566, 32.040173>,  <38.084282, 31.940651, 32.040401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362820, 31.653566, 32.040173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142040, 0.137027, 0.980331,
		-0.703516, -0.682725, 0.197361,
		0.696340, -0.717712, -0.000573,
		38.571720, 31.438253, 32.040001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861141, 31.447289, 32.473103>,  <38.084282, 31.940651, 32.040401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861141, 31.447289, 32.473103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259365, 31.412664, 32.458263>,  <38.498299, 31.391890, 32.449360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259365, 31.412664, 32.458263>,  <37.861141, 31.447289, 32.473103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259365, 31.412664, 32.458263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043519, 0.073548, 0.996342,
		-0.083515, -0.993528, 0.076988,
		0.995556, -0.086560, -0.037095,
		38.558033, 31.386696, 32.447136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154579, 31.089298, 33.082512>,  <37.861141, 31.447289, 32.473103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154579, 31.089298, 33.082512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491028, 31.269117, 32.962231>,  <38.692898, 31.377008, 32.890060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491028, 31.269117, 32.962231>,  <38.154579, 31.089298, 33.082512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491028, 31.269117, 32.962231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224448, 0.215720, 0.950309,
		0.492078, -0.866817, 0.080546,
		0.841120, 0.449548, -0.300707,
		38.743362, 31.403982, 32.872017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752594, 30.925976, 33.611027>,  <38.154579, 31.089298, 33.082512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752594, 30.925976, 33.611027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870007, 31.261993, 33.428528>,  <38.940456, 31.463604, 33.319027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870007, 31.261993, 33.428528>,  <38.752594, 30.925976, 33.611027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870007, 31.261993, 33.428528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243167, 0.395961, 0.885486,
		0.924503, -0.370867, -0.088042,
		0.293536, 0.840043, -0.456250,
		38.958069, 31.514006, 33.291653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250328, 31.144587, 34.143078>,  <38.752594, 30.925976, 33.611027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250328, 31.144587, 34.143078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195000, 31.462677, 33.906948>,  <39.161804, 31.653532, 33.765270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195000, 31.462677, 33.906948>,  <39.250328, 31.144587, 34.143078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195000, 31.462677, 33.906948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162441, 0.606198, 0.778548,
		0.976975, 0.011796, -0.213027,
		-0.138321, 0.795226, -0.590324,
		39.153503, 31.701244, 33.729851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831654, 31.614004, 34.184216>,  <39.250328, 31.144587, 34.143078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831654, 31.614004, 34.184216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531540, 31.855730, 34.076981>,  <39.351471, 32.000767, 34.012638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531540, 31.855730, 34.076981>,  <39.831654, 31.614004, 34.184216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531540, 31.855730, 34.076981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334166, 0.696558, 0.634933,
		0.570441, 0.386796, -0.724560,
		-0.750287, 0.604315, -0.268091,
		39.306454, 32.037025, 33.996552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192585, 32.322273, 34.020702>,  <39.831654, 31.614004, 34.184216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192585, 32.322273, 34.020702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.805237, 32.347805, 34.117184>,  <39.572826, 32.363125, 34.175072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.805237, 32.347805, 34.117184>,  <40.192585, 32.322273, 34.020702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805237, 32.347805, 34.117184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200966, 0.772480, 0.602401,
		-0.147875, 0.631822, -0.760877,
		-0.968373, 0.063830, 0.241205,
		39.514725, 32.366955, 34.189545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909168, 33.014713, 33.860569>,  <40.192585, 32.322273, 34.020702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909168, 33.014713, 33.860569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664806, 32.859272, 34.136478>,  <39.518188, 32.766006, 34.302025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664806, 32.859272, 34.136478>,  <39.909168, 33.014713, 33.860569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664806, 32.859272, 34.136478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098160, 0.827352, 0.553040,
		-0.785599, 0.405561, -0.467285,
		-0.610900, -0.388599, 0.689776,
		39.481537, 32.742691, 34.343410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608166, 33.642559, 34.117542>,  <39.909168, 33.014713, 33.860569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608166, 33.642559, 34.117542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529003, 33.348995, 34.377453>,  <39.481506, 33.172859, 34.533401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529003, 33.348995, 34.377453>,  <39.608166, 33.642559, 34.117542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529003, 33.348995, 34.377453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358351, 0.562833, 0.744851,
		-0.912368, 0.380263, 0.151606,
		-0.197911, -0.733907, 0.649779,
		39.469631, 33.128822, 34.572388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812843, 34.401123, 34.239582>,  <39.608166, 33.642559, 34.117542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812843, 34.401123, 34.239582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097931, 34.675518, 34.298168>,  <40.268982, 34.840157, 34.333321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097931, 34.675518, 34.298168>,  <39.812843, 34.401123, 34.239582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097931, 34.675518, 34.298168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039221, 0.169509, -0.984748,
		-0.700352, 0.707594, 0.093907,
		0.712719, 0.685987, 0.146469,
		40.311749, 34.881313, 34.342110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594891, 35.031769, 33.865532>,  <39.812843, 34.401123, 34.239582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594891, 35.031769, 33.865532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992653, 35.041344, 33.906677>,  <40.231312, 35.047089, 33.931366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992653, 35.041344, 33.906677>,  <39.594891, 35.031769, 33.865532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992653, 35.041344, 33.906677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097703, 0.161297, -0.982058,
		-0.040101, 0.986615, 0.158056,
		0.994407, 0.023939, 0.102863,
		40.290974, 35.048527, 33.937534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776649, 35.712166, 33.431190>,  <39.594891, 35.031769, 33.865532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776649, 35.712166, 33.431190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.099579, 35.478329, 33.463409>,  <40.293335, 35.338028, 33.482742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.099579, 35.478329, 33.463409>,  <39.776649, 35.712166, 33.431190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099579, 35.478329, 33.463409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137975, 0.054280, -0.988947,
		0.573757, 0.809511, 0.124480,
		0.807320, -0.584590, 0.080549,
		40.341774, 35.302952, 33.487576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086716, 35.897316, 32.935947>,  <39.776649, 35.712166, 33.431190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086716, 35.897316, 32.935947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315659, 35.584099, 33.033318>,  <40.453022, 35.396168, 33.091740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315659, 35.584099, 33.033318>,  <40.086716, 35.897316, 32.935947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315659, 35.584099, 33.033318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271709, -0.098984, -0.957276,
		0.773684, 0.614039, 0.156106,
		0.572353, -0.783044, 0.243422,
		40.487366, 35.349186, 33.106342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696541, 36.021450, 32.612656>,  <40.086716, 35.897316, 32.935947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696541, 36.021450, 32.612656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669914, 35.628036, 32.679859>,  <40.653938, 35.391987, 32.720181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669914, 35.628036, 32.679859>,  <40.696541, 36.021450, 32.612656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669914, 35.628036, 32.679859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141647, -0.175989, -0.974148,
		0.987676, -0.041052, 0.151030,
		-0.066571, -0.983536, 0.168006,
		40.649944, 35.332977, 32.730263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272873, 35.665421, 32.257832>,  <40.696541, 36.021450, 32.612656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272873, 35.665421, 32.257832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991482, 35.383564, 32.294918>,  <40.822647, 35.214451, 32.317169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991482, 35.383564, 32.294918>,  <41.272873, 35.665421, 32.257832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991482, 35.383564, 32.294918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021080, -0.109711, -0.993740,
		0.710405, -0.701028, 0.062325,
		-0.703477, -0.704644, 0.092717,
		40.780437, 35.172173, 32.322735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463867, 35.228210, 31.739429>,  <41.272873, 35.665421, 32.257832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463867, 35.228210, 31.739429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.091595, 35.105450, 31.819075>,  <40.868233, 35.031792, 31.866861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.091595, 35.105450, 31.819075>,  <41.463867, 35.228210, 31.739429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091595, 35.105450, 31.819075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172703, -0.111228, -0.978673,
		0.322507, -0.945218, 0.050514,
		-0.930679, -0.306905, 0.199114,
		40.812389, 35.013378, 31.878809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321960, 34.476028, 31.438732>,  <41.463867, 35.228210, 31.739429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321960, 34.476028, 31.438732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.973930, 34.670696, 31.470041>,  <40.765114, 34.787498, 31.488827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.973930, 34.670696, 31.470041>,  <41.321960, 34.476028, 31.438732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973930, 34.670696, 31.470041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134321, -0.081300, -0.987597,
		-0.474270, -0.869795, 0.136107,
		-0.870073, 0.486669, 0.078274,
		40.712910, 34.816696, 31.493523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781601, 33.959538, 31.101898>,  <41.321960, 34.476028, 31.438732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781601, 33.959538, 31.101898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.599735, 34.315800, 31.100323>,  <40.490616, 34.529556, 31.099379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.599735, 34.315800, 31.100323>,  <40.781601, 33.959538, 31.101898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599735, 34.315800, 31.100323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151170, -0.081525, -0.985140,
		-0.877738, -0.447318, 0.171706,
		-0.454669, 0.890652, -0.003937,
		40.463333, 34.582996, 31.099142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276794, 33.803703, 30.638687>,  <40.781601, 33.959538, 31.101898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276794, 33.803703, 30.638687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.254608, 34.201763, 30.671177>,  <40.241295, 34.440601, 30.690670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.254608, 34.201763, 30.671177>,  <40.276794, 33.803703, 30.638687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254608, 34.201763, 30.671177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256736, 0.064399, -0.964334,
		-0.964889, -0.074340, 0.251920,
		-0.055465, 0.995152, 0.081224,
		40.237968, 34.500309, 30.695543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679989, 33.961739, 30.283161>,  <40.276794, 33.803703, 30.638687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679989, 33.961739, 30.283161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898441, 34.296635, 30.294273>,  <40.029514, 34.497570, 30.300940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898441, 34.296635, 30.294273>,  <39.679989, 33.961739, 30.283161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898441, 34.296635, 30.294273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223094, 0.177328, -0.958532,
		-0.807445, 0.517290, 0.283628,
		0.546134, 0.837237, 0.027779,
		40.062283, 34.547806, 30.302607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381760, 34.403645, 29.863693>,  <39.679989, 33.961739, 30.283161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381760, 34.403645, 29.863693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752953, 34.551022, 29.885960>,  <39.975670, 34.639446, 29.899319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752953, 34.551022, 29.885960>,  <39.381760, 34.403645, 29.863693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752953, 34.551022, 29.885960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011932, 0.119931, -0.992711,
		-0.372428, 0.921884, 0.106898,
		0.927984, 0.368438, 0.055665,
		40.031349, 34.661552, 29.902658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411026, 35.109196, 29.548012>,  <39.381760, 34.403645, 29.863693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411026, 35.109196, 29.548012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762821, 34.919327, 29.534239>,  <39.973900, 34.805405, 29.525974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762821, 34.919327, 29.534239>,  <39.411026, 35.109196, 29.548012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762821, 34.919327, 29.534239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028531, 0.019633, -0.999400,
		0.475066, 0.879942, 0.003724,
		0.879487, -0.474675, -0.034432,
		40.026669, 34.776924, 29.523909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761822, 35.404240, 28.999243>,  <39.411026, 35.109196, 29.548012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761822, 35.404240, 28.999243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963043, 35.064732, 29.064400>,  <40.083775, 34.861027, 29.103493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963043, 35.064732, 29.064400>,  <39.761822, 35.404240, 28.999243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963043, 35.064732, 29.064400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162385, -0.277943, -0.946773,
		0.848863, 0.449826, -0.277647,
		0.503053, -0.848767, 0.162890,
		40.113960, 34.810101, 29.113266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343872, 35.342758, 28.468725>,  <39.761822, 35.404240, 28.999243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343872, 35.342758, 28.468725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304173, 34.970875, 28.610592>,  <40.280354, 34.747746, 28.695711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304173, 34.970875, 28.610592>,  <40.343872, 35.342758, 28.468725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304173, 34.970875, 28.610592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026016, -0.358728, -0.933079,
		0.994723, -0.083376, 0.059789,
		-0.099244, -0.929711, 0.354666,
		40.274399, 34.691963, 28.716991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663471, 34.872559, 28.030756>,  <40.343872, 35.342758, 28.468725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663471, 34.872559, 28.030756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450905, 34.599827, 28.231833>,  <40.323364, 34.436188, 28.352478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450905, 34.599827, 28.231833>,  <40.663471, 34.872559, 28.030756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450905, 34.599827, 28.231833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153521, -0.506075, -0.848716,
		0.833081, -0.528198, 0.164263,
		-0.531420, -0.681832, 0.502692,
		40.291477, 34.395279, 28.382641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930447, 34.218517, 27.887091>,  <40.663471, 34.872559, 28.030756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930447, 34.218517, 27.887091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548946, 34.162071, 27.993252>,  <40.320045, 34.128204, 28.056950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548946, 34.162071, 27.993252>,  <40.930447, 34.218517, 27.887091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548946, 34.162071, 27.993252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182864, -0.428375, -0.884904,
		0.238566, -0.892514, 0.382760,
		-0.953754, -0.141115, 0.265404,
		40.262821, 34.119736, 28.072872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723732, 33.447918, 27.780455>,  <40.930447, 34.218517, 27.887091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723732, 33.447918, 27.780455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.406071, 33.690594, 27.766342>,  <40.215473, 33.836201, 27.757875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.406071, 33.690594, 27.766342>,  <40.723732, 33.447918, 27.780455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406071, 33.690594, 27.766342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286151, -0.424521, -0.859011,
		-0.536133, -0.672090, 0.510740,
		-0.794153, 0.606693, -0.035281,
		40.167824, 33.872601, 27.755758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.201752, 32.961647, 27.574020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048866, 33.329121, 27.534138>,  <39.957134, 33.549603, 27.510208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048866, 33.329121, 27.534138>,  <40.201752, 32.961647, 27.574020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048866, 33.329121, 27.534138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379157, -0.254308, -0.889701,
		-0.842708, -0.302247, 0.445523,
		-0.382209, 0.918681, -0.099708,
		39.934204, 33.604725, 27.504225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509777, 32.885860, 27.437744>,  <40.201752, 32.961647, 27.574020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509777, 32.885860, 27.437744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582657, 33.256474, 27.306086>,  <39.626385, 33.478840, 27.227091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582657, 33.256474, 27.306086>,  <39.509777, 32.885860, 27.437744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582657, 33.256474, 27.306086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300190, -0.266352, -0.915938,
		-0.936316, 0.265694, 0.229606,
		0.182203, 0.926533, -0.329148,
		39.637318, 33.534435, 27.207340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917942, 33.133003, 27.026966>,  <39.509777, 32.885860, 27.437744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917942, 33.133003, 27.026966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.216797, 33.356186, 26.882479>,  <39.396111, 33.490097, 26.795786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.216797, 33.356186, 26.882479>,  <38.917942, 33.133003, 27.026966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216797, 33.356186, 26.882479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333931, -0.154796, -0.929800,
		-0.574703, 0.815306, 0.070666,
		0.747133, 0.557956, -0.361217,
		39.440937, 33.523571, 26.774113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573654, 33.540146, 26.585365>,  <38.917942, 33.133003, 27.026966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573654, 33.540146, 26.585365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956573, 33.564732, 26.472372>,  <39.186325, 33.579483, 26.404577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956573, 33.564732, 26.472372>,  <38.573654, 33.540146, 26.585365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956573, 33.564732, 26.472372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282205, -0.013313, -0.959262,
		-0.062719, 0.998020, 0.004601,
		0.957302, 0.061462, -0.282481,
		39.243763, 33.583172, 26.387629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608067, 33.897030, 25.934551>,  <38.573654, 33.540146, 26.585365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608067, 33.897030, 25.934551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980495, 33.751938, 25.918932>,  <39.203953, 33.664883, 25.909561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980495, 33.751938, 25.918932>,  <38.608067, 33.897030, 25.934551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980495, 33.751938, 25.918932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101347, -0.154341, -0.982806,
		0.350469, 0.919023, -0.180465,
		0.931075, -0.362732, -0.039049,
		39.259819, 33.643120, 25.907217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886585, 34.124580, 25.422459>,  <38.608067, 33.897030, 25.934551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886585, 34.124580, 25.422459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121990, 33.808483, 25.490780>,  <39.263233, 33.618824, 25.531773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121990, 33.808483, 25.490780>,  <38.886585, 34.124580, 25.422459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121990, 33.808483, 25.490780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096975, -0.140740, -0.985286,
		0.802651, 0.596417, -0.006194,
		0.588513, -0.790240, 0.170802,
		39.298546, 33.571411, 25.542021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447517, 34.114494, 24.973721>,  <38.886585, 34.124580, 25.422459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447517, 34.114494, 24.973721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418053, 33.731216, 25.084311>,  <39.400372, 33.501251, 25.150663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418053, 33.731216, 25.084311>,  <39.447517, 34.114494, 24.973721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418053, 33.731216, 25.084311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250878, -0.286116, -0.924769,
		0.965212, 0.001237, 0.261466,
		-0.073666, -0.958194, 0.276473,
		39.395954, 33.443760, 25.167252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023338, 33.700287, 24.690907>,  <39.447517, 34.114494, 24.973721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023338, 33.700287, 24.690907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.741871, 33.425636, 24.764002>,  <39.572990, 33.260845, 24.807859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.741871, 33.425636, 24.764002>,  <40.023338, 33.700287, 24.690907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741871, 33.425636, 24.764002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148848, -0.393929, -0.907008,
		0.694763, -0.611032, 0.379399,
		-0.703668, -0.686629, 0.182737,
		39.530769, 33.219646, 24.818823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225365, 33.190399, 24.368765>,  <40.023338, 33.700287, 24.690907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225365, 33.190399, 24.368765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.843586, 33.091103, 24.434980>,  <39.614517, 33.031525, 24.474709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.843586, 33.091103, 24.434980>,  <40.225365, 33.190399, 24.368765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843586, 33.091103, 24.434980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040696, -0.441308, -0.896432,
		0.295584, -0.862336, 0.411104,
		-0.954450, -0.248241, 0.165537,
		39.557251, 33.016632, 24.484642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219978, 32.510269, 24.049393>,  <40.225365, 33.190399, 24.368765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219978, 32.510269, 24.049393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858456, 32.680588, 24.066500>,  <39.641541, 32.782780, 24.076763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858456, 32.680588, 24.066500>,  <40.219978, 32.510269, 24.049393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858456, 32.680588, 24.066500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079061, -0.067926, -0.994553,
		-0.420577, -0.902264, 0.095056,
		-0.903806, 0.425801, 0.042766,
		39.587315, 32.808327, 24.079329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780838, 31.929991, 23.652836>,  <40.219978, 32.510269, 24.049393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780838, 31.929991, 23.652836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.571148, 32.270615, 23.655245>,  <39.445335, 32.474987, 23.656691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.571148, 32.270615, 23.655245>,  <39.780838, 31.929991, 23.652836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571148, 32.270615, 23.655245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178399, -0.102900, -0.978563,
		-0.832685, -0.514060, 0.205860,
		-0.524224, 0.851559, 0.006025,
		39.413879, 32.526081, 23.657053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224403, 31.841206, 23.319536>,  <39.780838, 31.929991, 23.652836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224403, 31.841206, 23.319536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264523, 32.239063, 23.309551>,  <39.288593, 32.477779, 23.303560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264523, 32.239063, 23.309551>,  <39.224403, 31.841206, 23.319536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264523, 32.239063, 23.309551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071139, -0.017855, -0.997307,
		-0.992410, 0.101808, 0.068967,
		0.100302, 0.994644, -0.024962,
		39.294613, 32.537457, 23.302063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610081, 32.110233, 22.936939>,  <39.224403, 31.841206, 23.319536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610081, 32.110233, 22.936939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880539, 32.404140, 22.915270>,  <39.042816, 32.580486, 22.902267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880539, 32.404140, 22.915270>,  <38.610081, 32.110233, 22.936939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880539, 32.404140, 22.915270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367236, 0.272366, -0.889356,
		-0.638719, 0.621231, 0.453994,
		0.676148, 0.734771, -0.054173,
		39.083382, 32.624573, 22.899017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259510, 32.796734, 22.722755>,  <38.610081, 32.110233, 22.936939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259510, 32.796734, 22.722755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647354, 32.835529, 22.632908>,  <38.880058, 32.858807, 22.578999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647354, 32.835529, 22.632908>,  <38.259510, 32.796734, 22.722755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647354, 32.835529, 22.632908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244296, 0.333386, -0.910589,
		-0.013428, 0.937788, 0.346947,
		0.969608, 0.096985, -0.224621,
		38.938236, 32.864624, 22.565521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211422, 33.475235, 22.362251>,  <38.259510, 32.796734, 22.722755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211422, 33.475235, 22.362251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557312, 33.287041, 22.291943>,  <38.764847, 33.174122, 22.249758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557312, 33.287041, 22.291943>,  <38.211422, 33.475235, 22.362251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557312, 33.287041, 22.291943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019396, 0.318428, -0.947748,
		0.501875, 0.822949, 0.266226,
		0.864723, -0.470487, -0.175773,
		38.816730, 33.145893, 22.239210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592499, 34.005455, 22.153259>,  <38.211422, 33.475235, 22.362251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592499, 34.005455, 22.153259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799042, 33.684959, 22.032331>,  <38.922966, 33.492661, 21.959776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799042, 33.684959, 22.032331>,  <38.592499, 34.005455, 22.153259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799042, 33.684959, 22.032331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047453, 0.325709, -0.944279,
		0.855060, 0.501928, 0.130160,
		0.516354, -0.801238, -0.302318,
		38.953949, 33.444588, 21.941635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248978, 34.220310, 21.790068>,  <38.592499, 34.005455, 22.153259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248978, 34.220310, 21.790068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165657, 33.849148, 21.666389>,  <39.115665, 33.626450, 21.592182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165657, 33.849148, 21.666389>,  <39.248978, 34.220310, 21.790068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165657, 33.849148, 21.666389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126237, 0.287981, -0.949279,
		0.969883, -0.236772, 0.057148,
		-0.208305, -0.927904, -0.309198,
		39.103165, 33.570778, 21.573629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787376, 34.065861, 21.377888>,  <39.248978, 34.220310, 21.790068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787376, 34.065861, 21.377888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476521, 33.835762, 21.275799>,  <39.290005, 33.697704, 21.214544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476521, 33.835762, 21.275799>,  <39.787376, 34.065861, 21.377888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476521, 33.835762, 21.275799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105427, 0.280819, -0.953953,
		0.620429, -0.768266, -0.157590,
		-0.777144, -0.575246, -0.255224,
		39.243378, 33.663189, 21.199232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087429, 33.576710, 20.923622>,  <39.787376, 34.065861, 21.377888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087429, 33.576710, 20.923622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694595, 33.610928, 20.856453>,  <39.458897, 33.631458, 20.816153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694595, 33.610928, 20.856453>,  <40.087429, 33.576710, 20.923622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694595, 33.610928, 20.856453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186829, 0.325120, -0.927034,
		-0.024709, -0.941796, -0.335277,
		-0.982082, 0.085545, -0.167922,
		39.399971, 33.636593, 20.806076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996277, 33.504036, 20.251612>,  <40.087429, 33.576710, 20.923622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996277, 33.504036, 20.251612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.636459, 33.661263, 20.327843>,  <39.420570, 33.755600, 20.373581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.636459, 33.661263, 20.327843>,  <39.996277, 33.504036, 20.251612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636459, 33.661263, 20.327843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020488, 0.397832, -0.917230,
		-0.436349, -0.828993, -0.349814,
		-0.899544, 0.393065, 0.190578,
		39.366596, 33.779182, 20.385015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550465, 33.349785, 19.650484>,  <39.996277, 33.504036, 20.251612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550465, 33.349785, 19.650484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402088, 33.655106, 19.862061>,  <39.313061, 33.838299, 19.989006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402088, 33.655106, 19.862061>,  <39.550465, 33.349785, 19.650484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402088, 33.655106, 19.862061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063960, 0.547224, -0.834539,
		-0.926450, -0.343398, -0.154168,
		-0.370943, 0.763298, 0.528939,
		39.290806, 33.884094, 20.020742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041138, 33.538074, 19.233702>,  <39.550465, 33.349785, 19.650484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041138, 33.538074, 19.233702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160419, 33.859463, 19.439810>,  <39.231987, 34.052296, 19.563475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160419, 33.859463, 19.439810>,  <39.041138, 33.538074, 19.233702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160419, 33.859463, 19.439810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122222, 0.567529, -0.814232,
		-0.946644, 0.179831, 0.267442,
		0.298205, 0.803475, 0.515268,
		39.249882, 34.100506, 19.594391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634163, 33.701099, 19.874687>,  <39.041138, 33.538074, 19.233702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634163, 33.701099, 19.874687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241856, 33.777454, 19.890966>,  <38.006470, 33.823265, 19.900734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241856, 33.777454, 19.890966>,  <38.634163, 33.701099, 19.874687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241856, 33.777454, 19.890966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052414, -0.056721, -0.997013,
		-0.188008, -0.979972, 0.065635,
		-0.980768, 0.190886, 0.040700,
		37.947624, 33.834721, 19.903177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147076, 33.296490, 19.397369>,  <38.634163, 33.701099, 19.874687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147076, 33.296490, 19.397369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999184, 33.664318, 19.450567>,  <37.910446, 33.885014, 19.482485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999184, 33.664318, 19.450567>,  <38.147076, 33.296490, 19.397369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999184, 33.664318, 19.450567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005004, 0.145105, -0.989403,
		-0.929125, -0.365149, -0.058252,
		-0.369732, 0.919571, 0.132993,
		37.888264, 33.940189, 19.490465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413258, 33.440353, 19.310165>,  <38.147076, 33.296490, 19.397369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413258, 33.440353, 19.310165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185963, 33.147274, 19.160362>,  <37.049587, 32.971428, 19.070480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185963, 33.147274, 19.160362>,  <37.413258, 33.440353, 19.310165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185963, 33.147274, 19.160362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328132, -0.215609, 0.919697,
		-0.754609, 0.645496, -0.117905,
		-0.568239, -0.732699, -0.374509,
		37.015491, 32.927464, 19.048010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654778, 33.507412, 19.449810>,  <37.413258, 33.440353, 19.310165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654778, 33.507412, 19.449810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743862, 33.117916, 19.430937>,  <36.797314, 32.884220, 19.419613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743862, 33.117916, 19.430937>,  <36.654778, 33.507412, 19.449810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743862, 33.117916, 19.430937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238600, -0.101370, 0.965812,
		-0.945234, -0.203844, -0.254912,
		0.222715, -0.973741, -0.047181,
		36.810677, 32.825794, 19.416782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982906, 33.234550, 19.765436>,  <36.654778, 33.507412, 19.449810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982906, 33.234550, 19.765436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259033, 32.945168, 19.768875>,  <36.424709, 32.771538, 19.770939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259033, 32.945168, 19.768875>,  <35.982906, 33.234550, 19.765436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259033, 32.945168, 19.768875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318308, -0.293015, 0.901567,
		-0.649724, -0.625104, -0.432555,
		0.690318, -0.723455, 0.008597,
		36.466129, 32.728130, 19.771454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679073, 32.602913, 20.077044>,  <35.982906, 33.234550, 19.765436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679073, 32.602913, 20.077044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061241, 32.489738, 20.110790>,  <36.290543, 32.421833, 20.131039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061241, 32.489738, 20.110790>,  <35.679073, 32.602913, 20.077044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061241, 32.489738, 20.110790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219018, -0.487583, 0.845159,
		-0.197987, -0.825962, -0.527815,
		0.955423, -0.282931, 0.084365,
		36.347866, 32.404858, 20.136099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684616, 32.005676, 20.289795>,  <35.679073, 32.602913, 20.077044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684616, 32.005676, 20.289795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046379, 32.133430, 20.402966>,  <36.263435, 32.210083, 20.470867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046379, 32.133430, 20.402966>,  <35.684616, 32.005676, 20.289795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046379, 32.133430, 20.402966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062370, -0.557009, 0.828161,
		0.422095, -0.766638, -0.483841,
		0.904404, 0.319385, 0.282926,
		36.317699, 32.229244, 20.487843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991989, 31.415825, 20.717384>,  <35.684616, 32.005676, 20.289795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991989, 31.415825, 20.717384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228340, 31.717840, 20.831072>,  <36.370152, 31.899050, 20.899284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228340, 31.717840, 20.831072>,  <35.991989, 31.415825, 20.717384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228340, 31.717840, 20.831072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110298, -0.424593, 0.898641,
		0.799187, -0.499636, -0.334161,
		0.590876, 0.755039, 0.284221,
		36.405602, 31.944351, 20.916338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463741, 31.082077, 21.038637>,  <35.991989, 31.415825, 20.717384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463741, 31.082077, 21.038637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529266, 31.453501, 21.171869>,  <36.568581, 31.676355, 21.251808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529266, 31.453501, 21.171869>,  <36.463741, 31.082077, 21.038637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529266, 31.453501, 21.171869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295530, -0.368328, 0.881474,
		0.941184, -0.045962, -0.334755,
		0.163814, 0.928559, 0.333081,
		36.578411, 31.732069, 21.271793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176846, 31.053074, 21.461821>,  <36.463741, 31.082077, 21.038637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176846, 31.053074, 21.461821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957710, 31.368528, 21.573484>,  <36.826229, 31.557800, 21.640482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957710, 31.368528, 21.573484>,  <37.176846, 31.053074, 21.461821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957710, 31.368528, 21.573484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296525, -0.128975, 0.946276,
		0.782271, 0.601182, -0.163193,
		-0.547836, 0.788635, 0.279159,
		36.793358, 31.605120, 21.657232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625595, 31.396656, 21.859203>,  <37.176846, 31.053074, 21.461821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625595, 31.396656, 21.859203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261177, 31.545763, 21.929668>,  <37.042526, 31.635227, 21.971947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261177, 31.545763, 21.929668>,  <37.625595, 31.396656, 21.859203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261177, 31.545763, 21.929668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155528, -0.084987, 0.984169,
		0.381838, 0.924024, 0.019452,
		-0.911049, 0.372768, 0.176163,
		36.987862, 31.657593, 21.982517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756935, 31.916262, 22.196159>,  <37.625595, 31.396656, 21.859203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756935, 31.916262, 22.196159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388092, 31.793467, 22.290377>,  <37.166786, 31.719790, 22.346907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388092, 31.793467, 22.290377>,  <37.756935, 31.916262, 22.196159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388092, 31.793467, 22.290377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234672, 0.040315, 0.971238,
		-0.307654, 0.950859, 0.034867,
		-0.922105, -0.306987, 0.235543,
		37.111462, 31.701370, 22.361040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671051, 32.221348, 22.853727>,  <37.756935, 31.916262, 22.196159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671051, 32.221348, 22.853727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387981, 31.943434, 22.802395>,  <37.218140, 31.776686, 22.771595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387981, 31.943434, 22.802395>,  <37.671051, 32.221348, 22.853727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387981, 31.943434, 22.802395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015088, -0.196455, 0.980397,
		-0.706376, 0.691867, 0.149510,
		-0.707676, -0.694784, -0.128332,
		37.175678, 31.734999, 22.763895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105022, 32.335587, 23.330706>,  <37.671051, 32.221348, 22.853727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105022, 32.335587, 23.330706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.117508, 31.943605, 23.252003>,  <37.125000, 31.708416, 23.204781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.117508, 31.943605, 23.252003>,  <37.105022, 32.335587, 23.330706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117508, 31.943605, 23.252003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014081, -0.196403, 0.980422,
		-0.999413, -0.033376, 0.007667,
		0.031216, -0.979955, -0.196757,
		37.126873, 31.649618, 23.192976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638603, 32.000137, 23.734461>,  <37.105022, 32.335587, 23.330706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638603, 32.000137, 23.734461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861504, 31.679399, 23.648195>,  <36.995243, 31.486958, 23.596436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861504, 31.679399, 23.648195>,  <36.638603, 32.000137, 23.734461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861504, 31.679399, 23.648195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048633, -0.227766, 0.972500,
		-0.828916, -0.552419, -0.087928,
		0.557255, -0.801845, -0.215665,
		37.028679, 31.438847, 23.583496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506496, 31.569012, 24.287609>,  <36.638603, 32.000137, 23.734461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506496, 31.569012, 24.287609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845661, 31.433023, 24.124901>,  <37.049160, 31.351431, 24.027275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845661, 31.433023, 24.124901>,  <36.506496, 31.569012, 24.287609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845661, 31.433023, 24.124901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368392, -0.173906, 0.913260,
		-0.381222, -0.924217, -0.022215,
		0.847914, -0.339972, -0.406771,
		37.100037, 31.331032, 24.002871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596924, 30.922710, 24.670910>,  <36.506496, 31.569012, 24.287609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596924, 30.922710, 24.670910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951237, 31.017420, 24.511248>,  <37.163826, 31.074245, 24.415451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951237, 31.017420, 24.511248>,  <36.596924, 30.922710, 24.670910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951237, 31.017420, 24.511248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448251, -0.213651, 0.868000,
		0.120240, -0.947782, -0.295383,
		0.885784, 0.236775, -0.399155,
		37.216972, 31.088451, 24.391500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045151, 30.451637, 24.871397>,  <36.596924, 30.922710, 24.670910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045151, 30.451637, 24.871397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294315, 30.757605, 24.805815>,  <37.443813, 30.941185, 24.766464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294315, 30.757605, 24.805815>,  <37.045151, 30.451637, 24.871397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294315, 30.757605, 24.805815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453160, -0.181982, 0.872656,
		0.637673, -0.617887, -0.459989,
		0.622912, 0.764917, -0.163957,
		37.481190, 30.987080, 24.756628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619770, 30.184172, 25.017458>,  <37.045151, 30.451637, 24.871397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619770, 30.184172, 25.017458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665516, 30.577656, 25.072929>,  <37.692963, 30.813747, 25.106213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665516, 30.577656, 25.072929>,  <37.619770, 30.184172, 25.017458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665516, 30.577656, 25.072929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385254, -0.172588, 0.906528,
		0.915697, -0.050247, -0.398716,
		0.114364, 0.983712, 0.138680,
		37.699825, 30.872768, 25.114532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333759, 30.246811, 25.220417>,  <37.619770, 30.184172, 25.017458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333759, 30.246811, 25.220417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131275, 30.567545, 25.347422>,  <38.009785, 30.759985, 25.423624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131275, 30.567545, 25.347422>,  <38.333759, 30.246811, 25.220417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131275, 30.567545, 25.347422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407620, -0.101989, 0.907438,
		0.759997, 0.588780, -0.275216,
		-0.506212, 0.801833, 0.317510,
		37.979412, 30.808094, 25.442675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788715, 30.623062, 25.800962>,  <38.333759, 30.246811, 25.220417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788715, 30.623062, 25.800962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.417179, 30.762728, 25.850508>,  <38.194256, 30.846527, 25.880236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.417179, 30.762728, 25.850508>,  <38.788715, 30.623062, 25.800962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417179, 30.762728, 25.850508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165928, 0.093136, 0.981730,
		0.331247, 0.932422, -0.144444,
		-0.928840, 0.349163, 0.123864,
		38.138527, 30.867477, 25.887667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879795, 31.080059, 26.367870>,  <38.788715, 30.623062, 25.800962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879795, 31.080059, 26.367870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483837, 31.029190, 26.342806>,  <38.246262, 30.998669, 26.327766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483837, 31.029190, 26.342806>,  <38.879795, 31.080059, 26.367870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483837, 31.029190, 26.342806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064852, 0.013141, 0.997808,
		-0.126070, 0.991793, -0.021256,
		-0.989899, -0.127173, -0.062663,
		38.186867, 30.991037, 26.324007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.245274, 35.089741, 29.979210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869045, 34.956421, 29.953167>,  <40.643307, 34.876431, 29.937542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869045, 34.956421, 29.953167>,  <41.245274, 35.089741, 29.979210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869045, 34.956421, 29.953167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180117, 0.327078, 0.927673,
		-0.287898, 0.884269, -0.367673,
		-0.940570, -0.333299, -0.065107,
		40.586876, 34.856430, 29.933636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828419, 35.575470, 30.213293>,  <41.245274, 35.089741, 29.979210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828419, 35.575470, 30.213293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.593174, 35.253574, 30.245598>,  <40.452026, 35.060436, 30.264980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.593174, 35.253574, 30.245598>,  <40.828419, 35.575470, 30.213293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593174, 35.253574, 30.245598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315584, 0.320276, 0.893214,
		-0.744668, 0.499823, -0.442320,
		-0.588113, -0.804736, 0.080763,
		40.416740, 35.012154, 30.269827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338230, 35.771866, 30.608082>,  <40.828419, 35.575470, 30.213293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338230, 35.771866, 30.608082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305038, 35.374901, 30.644369>,  <40.285122, 35.136723, 30.666142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305038, 35.374901, 30.644369>,  <40.338230, 35.771866, 30.608082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305038, 35.374901, 30.644369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094564, 0.098462, 0.990638,
		-0.992055, 0.073624, -0.102017,
		-0.082979, -0.992414, 0.090718,
		40.280144, 35.077175, 30.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818920, 35.680889, 31.147457>,  <40.338230, 35.771866, 30.608082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818920, 35.680889, 31.147457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026402, 35.340210, 31.117643>,  <40.150890, 35.135803, 31.099754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026402, 35.340210, 31.117643>,  <39.818920, 35.680889, 31.147457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026402, 35.340210, 31.117643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085113, -0.035305, 0.995746,
		-0.850706, -0.522843, 0.054178,
		0.518706, -0.851698, -0.074535,
		40.182014, 35.084702, 31.095284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549988, 35.342125, 31.681917>,  <39.818920, 35.680889, 31.147457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549988, 35.342125, 31.681917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908863, 35.179504, 31.612913>,  <40.124187, 35.081932, 31.571510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908863, 35.179504, 31.612913>,  <39.549988, 35.342125, 31.681917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908863, 35.179504, 31.612913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189108, 0.000663, 0.981956,
		-0.399104, -0.913626, 0.077478,
		0.897192, -0.406555, -0.172510,
		40.178020, 35.057537, 31.561161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579136, 34.727299, 32.124996>,  <39.549988, 35.342125, 31.681917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579136, 34.727299, 32.124996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962078, 34.807590, 32.041874>,  <40.191841, 34.855766, 31.992001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962078, 34.807590, 32.041874>,  <39.579136, 34.727299, 32.124996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962078, 34.807590, 32.041874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205937, 0.030399, 0.978093,
		0.202646, -0.979175, -0.012234,
		0.957353, 0.200726, -0.207809,
		40.249283, 34.867809, 31.979530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992809, 34.212547, 32.412506>,  <39.579136, 34.727299, 32.124996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992809, 34.212547, 32.412506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 34.543640, 32.390068>,  <40.350132, 34.742294, 32.376606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 34.543640, 32.390068>,  <39.992809, 34.212547, 32.412506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216137, 34.543640, 32.390068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148153, -0.032948, 0.988416,
		0.816294, -0.560157, -0.141026,
		0.558314, 0.827731, -0.056094,
		40.383633, 34.791958, 32.373241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463524, 34.064198, 32.950871>,  <39.992809, 34.212547, 32.412506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463524, 34.064198, 32.950871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.535244, 34.451000, 32.878487>,  <40.578278, 34.683083, 32.835056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.535244, 34.451000, 32.878487>,  <40.463524, 34.064198, 32.950871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535244, 34.451000, 32.878487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176284, 0.149387, 0.972938,
		0.967872, -0.206348, -0.143683,
		0.179300, 0.967008, -0.180963,
		40.589035, 34.741104, 32.824200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103981, 34.189873, 33.285130>,  <40.463524, 34.064198, 32.950871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103981, 34.189873, 33.285130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918537, 34.539890, 33.229454>,  <40.807270, 34.749901, 33.196049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918537, 34.539890, 33.229454>,  <41.103981, 34.189873, 33.285130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918537, 34.539890, 33.229454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154013, 0.234282, 0.959892,
		0.872553, 0.423575, -0.243382,
		-0.463606, 0.875041, -0.139187,
		40.779457, 34.802402, 33.187698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488667, 34.641582, 33.606037>,  <41.103981, 34.189873, 33.285130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488667, 34.641582, 33.606037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147182, 34.847340, 33.573574>,  <40.942291, 34.970795, 33.554096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147182, 34.847340, 33.573574>,  <41.488667, 34.641582, 33.606037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147182, 34.847340, 33.573574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074820, 0.275385, 0.958418,
		0.515351, 0.812136, -0.273585,
		-0.853707, 0.514391, -0.081156,
		40.891071, 35.001656, 33.549229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538746, 35.254696, 34.037983>,  <41.488667, 34.641582, 33.606037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538746, 35.254696, 34.037983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147038, 35.182438, 34.001328>,  <40.912014, 35.139084, 33.979336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147038, 35.182438, 34.001328>,  <41.538746, 35.254696, 34.037983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147038, 35.182438, 34.001328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115693, 0.127472, 0.985071,
		-0.166264, 0.975253, -0.145729,
		-0.979271, -0.180641, -0.091636,
		40.853256, 35.128246, 33.973835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251396, 35.773945, 34.583023>,  <41.538746, 35.254696, 34.037983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251396, 35.773945, 34.583023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968872, 35.498436, 34.517647>,  <40.799358, 35.333130, 34.478420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968872, 35.498436, 34.517647>,  <41.251396, 35.773945, 34.583023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968872, 35.498436, 34.517647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155777, -0.073998, 0.985017,
		-0.690551, 0.721187, -0.055031,
		-0.706309, -0.688777, -0.163444,
		40.756981, 35.291801, 34.468613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595108, 35.833168, 34.928986>,  <41.251396, 35.773945, 34.583023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595108, 35.833168, 34.928986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657597, 35.442341, 34.871117>,  <40.695091, 35.207844, 34.836395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657597, 35.442341, 34.871117>,  <40.595108, 35.833168, 34.928986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657597, 35.442341, 34.871117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065927, -0.135831, 0.988536,
		-0.985519, -0.163970, 0.043195,
		0.156223, -0.977069, -0.144674,
		40.704464, 35.149220, 34.827713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137375, 35.470886, 35.355118>,  <40.595108, 35.833168, 34.928986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137375, 35.470886, 35.355118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451336, 35.241577, 35.261074>,  <40.639713, 35.103992, 35.204647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451336, 35.241577, 35.261074>,  <40.137375, 35.470886, 35.355118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451336, 35.241577, 35.261074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229397, -0.083629, 0.969733,
		-0.575585, -0.815085, 0.065866,
		0.784907, -0.573273, -0.235114,
		40.686810, 35.069595, 35.190540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756512, 36.176605, 35.152962>,  <40.137375, 35.470886, 35.355118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756512, 36.176605, 35.152962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417171, 36.362267, 35.254829>,  <39.213566, 36.473663, 35.315948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417171, 36.362267, 35.254829>,  <39.756512, 36.176605, 35.152962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417171, 36.362267, 35.254829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349709, -0.130131, -0.927777,
		-0.397495, -0.876141, 0.272717,
		-0.848352, 0.464159, 0.254668,
		39.162666, 36.501514, 35.331230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313053, 35.863163, 34.812332>,  <39.756512, 36.176605, 35.152962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313053, 35.863163, 34.812332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.089619, 36.181934, 34.904320>,  <38.955559, 36.373199, 34.959511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.089619, 36.181934, 34.904320>,  <39.313053, 35.863163, 34.812332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089619, 36.181934, 34.904320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352201, 0.023132, -0.935638,
		-0.750959, -0.603627, 0.267759,
		-0.558583, 0.796931, 0.229970,
		38.922043, 36.421013, 34.973312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580521, 35.719482, 34.783291>,  <39.313053, 35.863163, 34.812332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580521, 35.719482, 34.783291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.609383, 36.116428, 34.743286>,  <38.626701, 36.354595, 34.719284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.609383, 36.116428, 34.743286>,  <38.580521, 35.719482, 34.783291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609383, 36.116428, 34.743286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534261, -0.046219, -0.844055,
		-0.842234, 0.114341, 0.526847,
		0.072160, 0.992366, -0.100015,
		38.631031, 36.414139, 34.713284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874699, 36.077873, 34.647991>,  <38.580521, 35.719482, 34.783291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874699, 36.077873, 34.647991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144630, 36.333504, 34.500374>,  <38.306587, 36.486881, 34.411804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144630, 36.333504, 34.500374>,  <37.874699, 36.077873, 34.647991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144630, 36.333504, 34.500374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576221, 0.143862, -0.804533,
		-0.461065, 0.755571, 0.465329,
		0.674825, 0.639074, -0.369047,
		38.347076, 36.525227, 34.389660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458683, 36.516052, 34.191902>,  <37.874699, 36.077873, 34.647991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458683, 36.516052, 34.191902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836914, 36.567902, 34.072521>,  <38.063854, 36.599010, 34.000893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836914, 36.567902, 34.072521>,  <37.458683, 36.516052, 34.191902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836914, 36.567902, 34.072521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314816, 0.132548, -0.939852,
		-0.082268, 0.982664, 0.166143,
		0.945581, 0.129624, -0.298454,
		38.120586, 36.606789, 33.982986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412037, 37.076054, 33.716465>,  <37.458683, 36.516052, 34.191902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412037, 37.076054, 33.716465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.754971, 36.889175, 33.630020>,  <37.960732, 36.777050, 33.578152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.754971, 36.889175, 33.630020>,  <37.412037, 37.076054, 33.716465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754971, 36.889175, 33.630020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207443, 0.070654, -0.975692,
		0.471104, 0.881328, -0.036342,
		0.857338, -0.467192, -0.216111,
		38.012173, 36.749020, 33.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721375, 37.442585, 33.106262>,  <37.412037, 37.076054, 33.716465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721375, 37.442585, 33.106262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.914417, 37.092266, 33.109562>,  <38.030243, 36.882076, 33.111542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.914417, 37.092266, 33.109562>,  <37.721375, 37.442585, 33.106262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914417, 37.092266, 33.109562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173844, -0.105019, -0.979157,
		0.858409, 0.471117, -0.202935,
		0.482609, -0.875797, 0.008248,
		38.059200, 36.829529, 33.112038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167778, 37.499126, 32.493843>,  <37.721375, 37.442585, 33.106262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167778, 37.499126, 32.493843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120834, 37.114948, 32.594849>,  <38.092667, 36.884441, 32.655453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120834, 37.114948, 32.594849>,  <38.167778, 37.499126, 32.493843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120834, 37.114948, 32.594849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029999, -0.250727, -0.967593,
		0.992637, -0.121131, 0.000613,
		-0.117359, -0.960450, 0.252514,
		38.085625, 36.826813, 32.670605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720245, 37.195992, 32.234055>,  <38.167778, 37.499126, 32.493843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720245, 37.195992, 32.234055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445770, 36.911045, 32.292953>,  <38.281086, 36.740078, 32.328293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445770, 36.911045, 32.292953>,  <38.720245, 37.195992, 32.234055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445770, 36.911045, 32.292953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109180, -0.099268, -0.989053,
		0.719182, -0.694754, -0.009659,
		-0.686190, -0.712364, 0.147245,
		38.239914, 36.697334, 32.337128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908279, 36.655910, 31.689327>,  <38.720245, 37.195992, 32.234055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908279, 36.655910, 31.689327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526016, 36.593582, 31.789280>,  <38.296658, 36.556183, 31.849251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526016, 36.593582, 31.789280>,  <38.908279, 36.655910, 31.689327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526016, 36.593582, 31.789280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235998, -0.102307, -0.966353,
		0.176146, -0.982472, 0.060996,
		-0.955655, -0.155825, 0.249882,
		38.239319, 36.546833, 31.864244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723743, 36.095299, 31.234207>,  <38.908279, 36.655910, 31.689327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723743, 36.095299, 31.234207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393723, 36.277161, 31.368423>,  <38.195709, 36.386276, 31.448954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393723, 36.277161, 31.368423>,  <38.723743, 36.095299, 31.234207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393723, 36.277161, 31.368423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375716, 0.002138, -0.926732,
		-0.422059, -0.890666, 0.169057,
		-0.825048, 0.454653, 0.335540,
		38.146210, 36.413555, 31.469086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285580, 36.007008, 30.751499>,  <38.723743, 36.095299, 31.234207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285580, 36.007008, 30.751499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065319, 36.294968, 30.920513>,  <37.933163, 36.467743, 31.021921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065319, 36.294968, 30.920513>,  <38.285580, 36.007008, 30.751499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065319, 36.294968, 30.920513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557417, 0.059667, -0.828086,
		-0.621348, -0.691512, 0.368427,
		-0.550648, 0.719897, 0.422534,
		37.900124, 36.510937, 31.047274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608715, 35.842590, 30.541225>,  <38.285580, 36.007008, 30.751499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608715, 35.842590, 30.541225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.629494, 36.235268, 30.614529>,  <37.641960, 36.470875, 30.658510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.629494, 36.235268, 30.614529>,  <37.608715, 35.842590, 30.541225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629494, 36.235268, 30.614529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500346, 0.184395, -0.845962,
		-0.864266, -0.047749, 0.500764,
		0.051945, 0.981691, 0.183257,
		37.645077, 36.529774, 30.669506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972412, 36.133717, 30.418556>,  <37.608715, 35.842590, 30.541225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972412, 36.133717, 30.418556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207947, 36.456287, 30.396839>,  <37.349270, 36.649830, 30.383810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207947, 36.456287, 30.396839>,  <36.972412, 36.133717, 30.418556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207947, 36.456287, 30.396839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440250, 0.263682, -0.858284,
		-0.677826, 0.529294, 0.510294,
		0.588840, 0.806424, -0.054291,
		37.384598, 36.698215, 30.380552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265026, 36.391323, 30.595259>,  <36.972412, 36.133717, 30.418556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265026, 36.391323, 30.595259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.898449, 36.234230, 30.625969>,  <35.678501, 36.139977, 30.644394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.898449, 36.234230, 30.625969>,  <36.265026, 36.391323, 30.595259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898449, 36.234230, 30.625969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276628, -0.483124, 0.830703,
		-0.289151, 0.782531, 0.551396,
		-0.916444, -0.392730, 0.076774,
		35.623516, 36.116409, 30.649000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141632, 36.400211, 31.290838>,  <36.265026, 36.391323, 30.595259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141632, 36.400211, 31.290838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863968, 36.145950, 31.155725>,  <35.697369, 35.993393, 31.074657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863968, 36.145950, 31.155725>,  <36.141632, 36.400211, 31.290838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863968, 36.145950, 31.155725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120702, -0.565398, 0.815939,
		-0.709631, 0.525619, 0.469200,
		-0.694158, -0.635649, -0.337781,
		35.655720, 35.955257, 31.054392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597530, 36.356537, 31.831102>,  <36.141632, 36.400211, 31.290838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597530, 36.356537, 31.831102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602482, 36.030724, 31.599108>,  <35.605453, 35.835236, 31.459911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602482, 36.030724, 31.599108>,  <35.597530, 36.356537, 31.831102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602482, 36.030724, 31.599108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024744, -0.580102, 0.814168,
		-0.999617, 0.004271, -0.027336,
		0.012380, -0.814532, -0.579986,
		35.606197, 35.786366, 31.425112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091789, 35.953869, 32.060055>,  <35.597530, 36.356537, 31.831102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091789, 35.953869, 32.060055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310040, 35.689518, 31.853935>,  <35.440990, 35.530907, 31.730263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.310040, 35.689518, 31.853935>,  <35.091789, 35.953869, 32.060055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310040, 35.689518, 31.853935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099866, -0.661794, 0.743004,
		-0.832055, -0.353943, -0.427093,
		0.545629, -0.660873, -0.515302,
		35.473728, 35.491257, 31.699345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776314, 35.388081, 32.217926>,  <35.091789, 35.953869, 32.060055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776314, 35.388081, 32.217926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.136612, 35.270115, 32.090382>,  <35.352791, 35.199333, 32.013855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.136612, 35.270115, 32.090382>,  <34.776314, 35.388081, 32.217926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136612, 35.270115, 32.090382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016449, -0.710443, 0.703562,
		-0.434026, -0.638979, -0.635081,
		0.900750, -0.294918, -0.318861,
		35.406837, 35.181641, 31.994722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755234, 34.632843, 32.235550>,  <34.776314, 35.388081, 32.217926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755234, 34.632843, 32.235550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.148357, 34.700863, 32.206799>,  <35.384232, 34.741673, 32.189548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.148357, 34.700863, 32.206799>,  <34.755234, 34.632843, 32.235550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148357, 34.700863, 32.206799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152142, -0.525496, 0.837082,
		0.104571, -0.833630, -0.542335,
		0.982811, 0.170047, -0.071878,
		35.443199, 34.751877, 32.185234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031483, 34.007961, 32.319389>,  <34.755234, 34.632843, 32.235550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031483, 34.007961, 32.319389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.302345, 34.287041, 32.412918>,  <35.464863, 34.454487, 32.469036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.302345, 34.287041, 32.412918>,  <35.031483, 34.007961, 32.319389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302345, 34.287041, 32.412918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049357, -0.360113, 0.931602,
		0.734181, -0.619300, -0.278290,
		0.677157, 0.697700, 0.233822,
		35.505493, 34.496349, 32.483063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552917, 33.730793, 32.619938>,  <35.031483, 34.007961, 32.319389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552917, 33.730793, 32.619938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627602, 34.098110, 32.759583>,  <35.672413, 34.318501, 32.843369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.627602, 34.098110, 32.759583>,  <35.552917, 33.730793, 32.619938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627602, 34.098110, 32.759583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130610, -0.375413, 0.917609,
		0.973694, -0.125730, -0.190032,
		0.186712, 0.918290, 0.349116,
		35.683617, 34.373596, 32.864319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033955, 33.632984, 33.072655>,  <35.552917, 33.730793, 32.619938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033955, 33.632984, 33.072655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.940212, 34.008537, 33.173512>,  <35.883968, 34.233868, 33.234024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.940212, 34.008537, 33.173512>,  <36.033955, 33.632984, 33.072655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940212, 34.008537, 33.173512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276642, -0.184232, 0.943148,
		0.931958, 0.290785, -0.216559,
		-0.234357, 0.938884, 0.252140,
		35.869904, 34.290203, 33.249153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640961, 33.921616, 33.391006>,  <36.033955, 33.632984, 33.072655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640961, 33.921616, 33.391006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.297729, 34.067699, 33.535412>,  <36.091793, 34.155350, 33.622055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.297729, 34.067699, 33.535412>,  <36.640961, 33.921616, 33.391006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297729, 34.067699, 33.535412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286861, -0.242217, 0.926845,
		0.425934, 0.898864, 0.103077,
		-0.858074, 0.365206, 0.361017,
		36.040306, 34.177261, 33.643719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881508, 34.145145, 34.046730>,  <36.640961, 33.921616, 33.391006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881508, 34.145145, 34.046730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.482670, 34.163696, 34.070873>,  <36.243366, 34.174828, 34.085361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.482670, 34.163696, 34.070873>,  <36.881508, 34.145145, 34.046730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482670, 34.163696, 34.070873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048656, -0.221545, 0.973935,
		0.058537, 0.974047, 0.218646,
		-0.997099, 0.046373, 0.060362,
		36.183540, 34.177608, 34.088982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689369, 34.755344, 34.471832>,  <36.881508, 34.145145, 34.046730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689369, 34.755344, 34.471832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.369732, 34.514957, 34.465141>,  <36.177948, 34.370724, 34.461128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.369732, 34.514957, 34.465141>,  <36.689369, 34.755344, 34.471832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369732, 34.514957, 34.465141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088287, -0.144825, 0.985511,
		-0.594684, 0.786042, 0.168787,
		-0.799097, -0.600969, -0.016728,
		36.130001, 34.334667, 34.460121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.697601, 37.589321, 27.426199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538265, 37.225365, 27.379841>,  <34.442665, 37.006992, 27.352026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538265, 37.225365, 27.379841>,  <34.697601, 37.589321, 27.426199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538265, 37.225365, 27.379841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139183, -0.184847, 0.972862,
		-0.906617, 0.371397, 0.200272,
		-0.398338, -0.909888, -0.115893,
		34.418762, 36.952400, 27.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210369, 37.618797, 27.931042>,  <34.697601, 37.589321, 27.426199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210369, 37.618797, 27.931042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258221, 37.233997, 27.832869>,  <34.286934, 37.003117, 27.773966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258221, 37.233997, 27.832869>,  <34.210369, 37.618797, 27.931042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258221, 37.233997, 27.832869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297008, -0.201208, 0.933435,
		-0.947351, -0.184565, 0.261652,
		0.119633, -0.962004, -0.245432,
		34.294109, 36.945396, 27.759239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848984, 37.324871, 28.463940>,  <34.210369, 37.618797, 27.931042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848984, 37.324871, 28.463940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072685, 37.031353, 28.309650>,  <34.206905, 36.855244, 28.217077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072685, 37.031353, 28.309650>,  <33.848984, 37.324871, 28.463940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072685, 37.031353, 28.309650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175114, -0.350224, 0.920151,
		-0.810289, -0.582146, -0.067368,
		0.559256, -0.733791, -0.385725,
		34.240463, 36.811214, 28.193933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585648, 36.600685, 28.711542>,  <33.848984, 37.324871, 28.463940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585648, 36.600685, 28.711542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965355, 36.541786, 28.600401>,  <34.193180, 36.506447, 28.533716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965355, 36.541786, 28.600401>,  <33.585648, 36.600685, 28.711542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965355, 36.541786, 28.600401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209264, -0.363728, 0.907696,
		-0.234712, -0.919795, -0.314465,
		0.949273, -0.147241, -0.277851,
		34.250137, 36.497612, 28.517046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818993, 35.983589, 28.948240>,  <33.585648, 36.600685, 28.711542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818993, 35.983589, 28.948240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163021, 36.183018, 28.904966>,  <34.369438, 36.302677, 28.879002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163021, 36.183018, 28.904966>,  <33.818993, 35.983589, 28.948240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163021, 36.183018, 28.904966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373572, -0.471039, 0.799103,
		0.347455, -0.727698, -0.591380,
		0.860069, 0.498575, -0.108183,
		34.421043, 36.332592, 28.872511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401684, 35.508423, 29.031683>,  <33.818993, 35.983589, 28.948240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401684, 35.508423, 29.031683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566669, 35.860981, 29.123775>,  <34.665661, 36.072517, 29.179031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566669, 35.860981, 29.123775>,  <34.401684, 35.508423, 29.031683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566669, 35.860981, 29.123775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229307, -0.345049, 0.910143,
		0.881641, -0.322608, -0.344431,
		0.412465, 0.881400, 0.230233,
		34.690411, 36.125401, 29.192846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036430, 35.353573, 29.326571>,  <34.401684, 35.508423, 29.031683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036430, 35.353573, 29.326571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988083, 35.732803, 29.444248>,  <34.959076, 35.960342, 29.514854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988083, 35.732803, 29.444248>,  <35.036430, 35.353573, 29.326571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988083, 35.732803, 29.444248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503122, -0.196973, 0.841469,
		0.855721, 0.249721, -0.453189,
		-0.120866, 0.948072, 0.294194,
		34.951824, 36.017223, 29.532507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702244, 35.582546, 29.428093>,  <35.036430, 35.353573, 29.326571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702244, 35.582546, 29.428093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484447, 35.856281, 29.622087>,  <35.353771, 36.020523, 29.738485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484447, 35.856281, 29.622087>,  <35.702244, 35.582546, 29.428093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484447, 35.856281, 29.622087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532810, -0.164375, 0.830117,
		0.647801, 0.710396, -0.275122,
		-0.544488, 0.684338, 0.484988,
		35.321102, 36.061584, 29.767584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180874, 36.055145, 29.833834>,  <35.702244, 35.582546, 29.428093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180874, 36.055145, 29.833834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831181, 36.101723, 30.022367>,  <35.621365, 36.129669, 30.135489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831181, 36.101723, 30.022367>,  <36.180874, 36.055145, 29.833834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831181, 36.101723, 30.022367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430117, -0.264551, 0.863141,
		0.225203, 0.957315, 0.181193,
		-0.874233, 0.116448, 0.471335,
		35.568913, 36.136658, 30.163769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342976, 36.858994, 29.967148>,  <36.180874, 36.055145, 29.833834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342976, 36.858994, 29.967148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713421, 37.009747, 29.973696>,  <36.935688, 37.100197, 29.977625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713421, 37.009747, 29.973696>,  <36.342976, 36.858994, 29.967148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713421, 37.009747, 29.973696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146682, 0.399743, -0.904815,
		-0.347554, 0.835562, 0.425491,
		0.926116, 0.376884, 0.016370,
		36.991257, 37.122810, 29.978607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301666, 37.521904, 29.863569>,  <36.342976, 36.858994, 29.967148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301666, 37.521904, 29.863569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659363, 37.394070, 29.738220>,  <36.873981, 37.317368, 29.663010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659363, 37.394070, 29.738220>,  <36.301666, 37.521904, 29.863569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659363, 37.394070, 29.738220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196326, 0.349125, -0.916279,
		0.402239, 0.880894, 0.249457,
		0.894237, -0.319589, -0.313374,
		36.927635, 37.298195, 29.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614670, 38.055969, 29.445501>,  <36.301666, 37.521904, 29.863569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614670, 38.055969, 29.445501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849968, 37.750191, 29.339985>,  <36.991146, 37.566723, 29.276674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849968, 37.750191, 29.339985>,  <36.614670, 38.055969, 29.445501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849968, 37.750191, 29.339985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019802, 0.312487, -0.949715,
		0.808437, 0.563893, 0.168683,
		0.588249, -0.764445, -0.263792,
		37.026443, 37.520859, 29.260847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170013, 38.422512, 29.114119>,  <36.614670, 38.055969, 29.445501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170013, 38.422512, 29.114119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147610, 38.040245, 28.998489>,  <37.134167, 37.810886, 28.929111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147610, 38.040245, 28.998489>,  <37.170013, 38.422512, 29.114119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147610, 38.040245, 28.998489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121332, 0.280869, -0.952046,
		0.991031, -0.088396, 0.100223,
		-0.056008, -0.955667, -0.289075,
		37.130806, 37.753544, 28.911766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713081, 38.351353, 28.598749>,  <37.170013, 38.422512, 29.114119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713081, 38.351353, 28.598749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454151, 38.048969, 28.559757>,  <37.298794, 37.867538, 28.536362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454151, 38.048969, 28.559757>,  <37.713081, 38.351353, 28.598749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454151, 38.048969, 28.559757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055719, 0.080619, -0.995187,
		0.760175, -0.649640, -0.010066,
		-0.647325, -0.755956, -0.097481,
		37.259953, 37.822182, 28.530514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075985, 37.895191, 28.153624>,  <37.713081, 38.351353, 28.598749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075985, 37.895191, 28.153624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700474, 37.765034, 28.108356>,  <37.475166, 37.686939, 28.081196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700474, 37.765034, 28.108356>,  <38.075985, 37.895191, 28.153624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700474, 37.765034, 28.108356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155265, -0.106384, -0.982128,
		0.307539, -0.939575, 0.150393,
		-0.938782, -0.325394, -0.113166,
		37.418839, 37.667416, 28.074406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067036, 37.338398, 27.765676>,  <38.075985, 37.895191, 28.153624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067036, 37.338398, 27.765676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698849, 37.480099, 27.699648>,  <37.477936, 37.565121, 27.660030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698849, 37.480099, 27.699648>,  <38.067036, 37.338398, 27.765676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698849, 37.480099, 27.699648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170097, -0.017144, -0.985278,
		-0.351867, -0.934993, -0.044477,
		-0.920466, 0.354252, -0.165072,
		37.422710, 37.586372, 27.650126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828384, 36.962307, 27.212252>,  <38.067036, 37.338398, 27.765676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828384, 36.962307, 27.212252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577011, 37.273449, 27.213039>,  <37.426186, 37.460136, 27.213512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577011, 37.273449, 27.213039>,  <37.828384, 36.962307, 27.212252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577011, 37.273449, 27.213039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002524, 0.000496, -0.999997,
		-0.777856, -0.628440, 0.001651,
		-0.628438, 0.777858, 0.001972,
		37.388481, 37.506805, 27.213631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261776, 36.775169, 26.781654>,  <37.828384, 36.962307, 27.212252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261776, 36.775169, 26.781654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232666, 37.172485, 26.817629>,  <37.215202, 37.410873, 26.839212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232666, 37.172485, 26.817629>,  <37.261776, 36.775169, 26.781654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232666, 37.172485, 26.817629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049023, 0.086502, -0.995045,
		-0.996143, -0.076821, 0.042399,
		-0.072773, 0.993285, 0.089934,
		37.210835, 37.470470, 26.844608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692780, 37.001247, 26.368599>,  <37.261776, 36.775169, 26.781654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692780, 37.001247, 26.368599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907726, 37.335163, 26.416533>,  <37.036694, 37.535511, 26.445293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907726, 37.335163, 26.416533>,  <36.692780, 37.001247, 26.368599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907726, 37.335163, 26.416533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019458, 0.129784, -0.991351,
		-0.843122, 0.535053, 0.053499,
		0.537369, 0.834790, 0.119835,
		37.068935, 37.585602, 26.452482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335346, 37.461670, 25.789026>,  <36.692780, 37.001247, 26.368599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335346, 37.461670, 25.789026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697998, 37.576103, 25.913073>,  <36.915588, 37.644764, 25.987499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697998, 37.576103, 25.913073>,  <36.335346, 37.461670, 25.789026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697998, 37.576103, 25.913073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231437, 0.277353, -0.932476,
		-0.352777, 0.917187, 0.185247,
		0.906634, 0.286083, 0.310115,
		36.969990, 37.661926, 26.006107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439106, 38.167767, 25.574549>,  <36.335346, 37.461670, 25.789026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439106, 38.167767, 25.574549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795414, 37.986305, 25.585377>,  <37.009197, 37.877430, 25.591873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795414, 37.986305, 25.585377>,  <36.439106, 38.167767, 25.574549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795414, 37.986305, 25.585377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200380, 0.338593, -0.919349,
		0.407899, 0.824351, 0.392510,
		0.890767, -0.453653, 0.027072,
		37.062645, 37.850208, 25.593498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832886, 38.687809, 25.220739>,  <36.439106, 38.167767, 25.574549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832886, 38.687809, 25.220739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078892, 38.374374, 25.255936>,  <37.226494, 38.186314, 25.277054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078892, 38.374374, 25.255936>,  <36.832886, 38.687809, 25.220739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078892, 38.374374, 25.255936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229504, 0.071130, -0.970705,
		0.754376, 0.617193, 0.223583,
		0.615016, -0.783590, 0.087989,
		37.263397, 38.139297, 25.282331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433395, 38.847122, 24.875181>,  <36.832886, 38.687809, 25.220739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433395, 38.847122, 24.875181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502594, 38.453266, 24.884563>,  <37.544113, 38.216953, 24.890192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502594, 38.453266, 24.884563>,  <37.433395, 38.847122, 24.875181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502594, 38.453266, 24.884563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431427, 0.054348, -0.900509,
		0.885406, 0.165900, 0.434204,
		0.172993, -0.984644, 0.023453,
		37.554493, 38.157871, 24.891600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.952805, 31.082996, 25.851278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.193214, 31.396162, 25.915543>,  <34.337460, 31.584061, 25.954102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.193214, 31.396162, 25.915543>,  <33.952805, 31.082996, 25.851278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193214, 31.396162, 25.915543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249441, -0.374734, 0.892946,
		0.759305, -0.496610, -0.420517,
		0.601028, 0.782913, 0.160663,
		34.373524, 31.631037, 25.963741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514305, 30.852373, 26.077597>,  <33.952805, 31.082996, 25.851278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514305, 30.852373, 26.077597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533497, 31.232014, 26.202114>,  <34.545013, 31.459799, 26.276825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533497, 31.232014, 26.202114>,  <34.514305, 30.852373, 26.077597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533497, 31.232014, 26.202114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254692, -0.312978, 0.914974,
		0.965831, 0.035382, -0.256746,
		0.047982, 0.949101, 0.311295,
		34.547894, 31.516745, 26.295502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170494, 30.859535, 26.398954>,  <34.514305, 30.852373, 26.077597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170494, 30.859535, 26.398954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996635, 31.190800, 26.540506>,  <34.892323, 31.389559, 26.625439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996635, 31.190800, 26.540506>,  <35.170494, 30.859535, 26.398954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996635, 31.190800, 26.540506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224523, -0.280890, 0.933108,
		0.872167, 0.485024, -0.063854,
		-0.434643, 0.828162, 0.353882,
		34.866241, 31.439249, 26.646671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687660, 31.331032, 26.887905>,  <35.170494, 30.859535, 26.398954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687660, 31.331032, 26.887905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316204, 31.442560, 26.985792>,  <35.093330, 31.509478, 27.044523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316204, 31.442560, 26.985792>,  <35.687660, 31.331032, 26.887905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316204, 31.442560, 26.985792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219127, -0.120023, 0.968286,
		0.299352, 0.952813, 0.050361,
		-0.928640, 0.278823, 0.244716,
		35.037613, 31.526207, 27.059206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752857, 31.758217, 27.501944>,  <35.687660, 31.331032, 26.887905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752857, 31.758217, 27.501944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371307, 31.639334, 27.518892>,  <35.142380, 31.568003, 27.529062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371307, 31.639334, 27.518892>,  <35.752857, 31.758217, 27.501944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371307, 31.639334, 27.518892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056956, -0.040575, 0.997552,
		-0.294763, 0.953950, 0.055631,
		-0.953872, -0.297210, 0.042373,
		35.085144, 31.550171, 27.531605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433277, 32.179623, 27.976004>,  <35.752857, 31.758217, 27.501944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433277, 32.179623, 27.976004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.212273, 31.846624, 27.959579>,  <35.079670, 31.646826, 27.949726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.212273, 31.846624, 27.959579>,  <35.433277, 32.179623, 27.976004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212273, 31.846624, 27.959579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017722, -0.060983, 0.997982,
		-0.833316, 0.550669, 0.048447,
		-0.552512, -0.832493, -0.041059,
		35.046520, 31.596876, 27.947262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050678, 32.190536, 28.625488>,  <35.433277, 32.179623, 27.976004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050678, 32.190536, 28.625488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014923, 31.815395, 28.491358>,  <34.993469, 31.590311, 28.410879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014923, 31.815395, 28.491358>,  <35.050678, 32.190536, 28.625488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014923, 31.815395, 28.491358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067540, -0.341606, 0.937413,
		-0.993704, 0.061148, 0.093878,
		-0.089390, -0.937852, -0.335326,
		34.988106, 31.534040, 28.390760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588024, 31.891544, 29.183931>,  <35.050678, 32.190536, 28.625488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588024, 31.891544, 29.183931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.774971, 31.604385, 28.977556>,  <34.887138, 31.432091, 28.853731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.774971, 31.604385, 28.977556>,  <34.588024, 31.891544, 29.183931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774971, 31.604385, 28.977556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210274, -0.476581, 0.853613,
		-0.858691, -0.507441, -0.071785,
		0.467370, -0.717896, -0.515938,
		34.915180, 31.389017, 28.822775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380634, 31.262024, 29.519329>,  <34.588024, 31.891544, 29.183931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380634, 31.262024, 29.519329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726284, 31.195084, 29.329475>,  <34.933674, 31.154921, 29.215563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726284, 31.195084, 29.329475>,  <34.380634, 31.262024, 29.519329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726284, 31.195084, 29.329475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333515, -0.515855, 0.789089,
		-0.376895, -0.840171, -0.389952,
		0.864128, -0.167350, -0.474633,
		34.985523, 31.144878, 29.187086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488155, 30.506115, 29.581577>,  <34.380634, 31.262024, 29.519329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488155, 30.506115, 29.581577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.837273, 30.686558, 29.507034>,  <35.046745, 30.794825, 29.462309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.837273, 30.686558, 29.507034>,  <34.488155, 30.506115, 29.581577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837273, 30.686558, 29.507034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423737, -0.510835, 0.747994,
		0.242229, -0.731812, -0.637006,
		0.872796, 0.451108, -0.186357,
		35.099110, 30.821890, 29.451128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007172, 30.019444, 29.723854>,  <34.488155, 30.506115, 29.581577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007172, 30.019444, 29.723854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224819, 30.354963, 29.716406>,  <35.355408, 30.556274, 29.711937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224819, 30.354963, 29.716406>,  <35.007172, 30.019444, 29.723854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224819, 30.354963, 29.716406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559644, -0.346324, 0.752899,
		0.625083, -0.420089, -0.657872,
		0.544122, 0.838799, -0.018619,
		35.388058, 30.606604, 29.710819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662086, 29.747808, 30.060148>,  <35.007172, 30.019444, 29.723854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662086, 29.747808, 30.060148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672398, 30.147171, 30.080223>,  <35.678585, 30.386789, 30.092268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672398, 30.147171, 30.080223>,  <35.662086, 29.747808, 30.060148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672398, 30.147171, 30.080223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686344, -0.054177, 0.725257,
		0.726820, 0.015749, -0.686647,
		0.025778, 0.998407, 0.050186,
		35.680130, 30.446693, 30.095280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379604, 29.905136, 30.175589>,  <35.662086, 29.747808, 30.060148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379604, 29.905136, 30.175589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.182308, 30.230980, 30.297651>,  <36.063931, 30.426487, 30.370888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.182308, 30.230980, 30.297651>,  <36.379604, 29.905136, 30.175589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182308, 30.230980, 30.297651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389260, -0.107024, 0.914889,
		0.777938, 0.570048, -0.264306,
		-0.493244, 0.814611, 0.305155,
		36.034336, 30.475363, 30.389198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843750, 30.281631, 30.612322>,  <36.379604, 29.905136, 30.175589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843750, 30.281631, 30.612322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480541, 30.410351, 30.719610>,  <36.262615, 30.487583, 30.783983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480541, 30.410351, 30.719610>,  <36.843750, 30.281631, 30.612322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480541, 30.410351, 30.719610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299734, 0.051741, 0.952619,
		0.292673, 0.945393, -0.143436,
		-0.908021, 0.321799, 0.268223,
		36.208134, 30.506891, 30.800077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306042, 30.911718, 30.499805>,  <36.843750, 30.281631, 30.612322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306042, 30.911718, 30.499805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703773, 30.930759, 30.461784>,  <37.942413, 30.942184, 30.438972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703773, 30.930759, 30.461784>,  <37.306042, 30.911718, 30.499805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703773, 30.930759, 30.461784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083200, -0.208092, -0.974564,
		-0.066171, 0.976950, -0.202953,
		0.994334, 0.047602, -0.095052,
		38.002075, 30.945040, 30.433270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502014, 31.554678, 30.090015>,  <37.306042, 30.911718, 30.499805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502014, 31.554678, 30.090015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.779858, 31.267076, 30.080618>,  <37.946564, 31.094515, 30.074980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.779858, 31.267076, 30.080618>,  <37.502014, 31.554678, 30.090015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779858, 31.267076, 30.080618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046677, -0.012458, -0.998832,
		0.717873, 0.694893, -0.042214,
		0.694607, -0.719005, -0.023492,
		37.988239, 31.051374, 30.073570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908451, 31.734432, 29.543335>,  <37.502014, 31.554678, 30.090015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908451, 31.734432, 29.543335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038361, 31.360504, 29.600790>,  <38.116306, 31.136147, 29.635263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038361, 31.360504, 29.600790>,  <37.908451, 31.734432, 29.543335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038361, 31.360504, 29.600790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140932, -0.102344, -0.984715,
		0.935233, 0.340053, 0.098507,
		0.324774, -0.934821, 0.143640,
		38.135792, 31.080057, 29.643883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411499, 31.726168, 29.153700>,  <37.908451, 31.734432, 29.543335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411499, 31.726168, 29.153700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.290871, 31.345402, 29.175266>,  <38.218494, 31.116941, 29.188206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.290871, 31.345402, 29.175266>,  <38.411499, 31.726168, 29.153700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290871, 31.345402, 29.175266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085602, -0.083352, -0.992837,
		0.949592, -0.294800, 0.106623,
		-0.301575, -0.951917, 0.053915,
		38.200397, 31.059826, 29.191441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818321, 31.476055, 28.699369>,  <38.411499, 31.726168, 29.153700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818321, 31.476055, 28.699369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541134, 31.191755, 28.747749>,  <38.374821, 31.021175, 28.776777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541134, 31.191755, 28.747749>,  <38.818321, 31.476055, 28.699369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541134, 31.191755, 28.747749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015928, -0.182811, -0.983019,
		0.720792, -0.679275, 0.138002,
		-0.692969, -0.710750, 0.120949,
		38.333244, 30.978531, 28.784035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035587, 30.936127, 28.248219>,  <38.818321, 31.476055, 28.699369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035587, 30.936127, 28.248219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648445, 30.846191, 28.293304>,  <38.416161, 30.792231, 28.320356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648445, 30.846191, 28.293304>,  <39.035587, 30.936127, 28.248219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648445, 30.846191, 28.293304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083385, -0.135947, -0.987201,
		0.237284, -0.964866, 0.112829,
		-0.967855, -0.224839, 0.112713,
		38.358089, 30.778740, 28.327118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846344, 30.413654, 27.762384>,  <39.035587, 30.936127, 28.248219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846344, 30.413654, 27.762384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475014, 30.536676, 27.845930>,  <38.252216, 30.610489, 27.896057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475014, 30.536676, 27.845930>,  <38.846344, 30.413654, 27.762384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475014, 30.536676, 27.845930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248136, -0.094220, -0.964132,
		-0.276844, -0.946854, 0.163782,
		-0.928324, 0.307555, 0.208864,
		38.196518, 30.628942, 27.908590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398247, 29.877501, 27.375021>,  <38.846344, 30.413654, 27.762384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398247, 29.877501, 27.375021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165821, 30.186876, 27.476337>,  <38.026363, 30.372501, 27.537127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165821, 30.186876, 27.476337>,  <38.398247, 29.877501, 27.375021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165821, 30.186876, 27.476337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330998, 0.059733, -0.941739,
		-0.743506, -0.631051, 0.221298,
		-0.581067, 0.773438, 0.253289,
		37.991501, 30.418907, 27.552324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738827, 29.804165, 27.088358>,  <38.398247, 29.877501, 27.375021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738827, 29.804165, 27.088358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797493, 30.199778, 27.095381>,  <37.832695, 30.437145, 27.099594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797493, 30.199778, 27.095381>,  <37.738827, 29.804165, 27.088358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797493, 30.199778, 27.095381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046197, 0.024578, -0.998630,
		-0.988106, 0.145657, 0.049295,
		0.146669, 0.989030, 0.017557,
		37.841492, 30.496487, 27.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236809, 30.087217, 26.516575>,  <37.738827, 29.804165, 27.088358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236809, 30.087217, 26.516575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499245, 30.378872, 26.594458>,  <37.656708, 30.553864, 26.641188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499245, 30.378872, 26.594458>,  <37.236809, 30.087217, 26.516575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499245, 30.378872, 26.594458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087648, 0.329869, -0.939949,
		-0.749577, 0.599624, 0.280330,
		0.656088, 0.729135, 0.194706,
		37.696072, 30.597612, 26.652870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845860, 30.701181, 26.326754>,  <37.236809, 30.087217, 26.516575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845860, 30.701181, 26.326754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236649, 30.786135, 26.318571>,  <37.471123, 30.837107, 26.313662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236649, 30.786135, 26.318571>,  <36.845860, 30.701181, 26.326754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236649, 30.786135, 26.318571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120174, 0.468496, -0.875254,
		-0.176307, 0.857557, 0.483231,
		0.976972, 0.212385, -0.020457,
		37.529739, 30.849850, 26.312433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987942, 31.361490, 26.063538>,  <36.845860, 30.701181, 26.326754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987942, 31.361490, 26.063538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351654, 31.200420, 26.021473>,  <37.569881, 31.103779, 25.996235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351654, 31.200420, 26.021473>,  <36.987942, 31.361490, 26.063538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351654, 31.200420, 26.021473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089418, 0.435801, -0.895590,
		0.406462, 0.804941, 0.432272,
		0.909282, -0.402676, -0.105160,
		37.624439, 31.079618, 25.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448254, 31.958525, 25.785355>,  <36.987942, 31.361490, 26.063538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448254, 31.958525, 25.785355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598186, 31.600929, 25.687138>,  <37.688145, 31.386372, 25.628208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598186, 31.600929, 25.687138>,  <37.448254, 31.958525, 25.785355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598186, 31.600929, 25.687138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019676, 0.272462, -0.961965,
		0.926885, 0.355741, 0.119717,
		0.374829, -0.893987, -0.245541,
		37.710636, 31.332733, 25.613476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145447, 32.031826, 25.280540>,  <37.448254, 31.958525, 25.785355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145447, 32.031826, 25.280540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980198, 31.673853, 25.213102>,  <37.881046, 31.459070, 25.172640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980198, 31.673853, 25.213102>,  <38.145447, 32.031826, 25.280540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980198, 31.673853, 25.213102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189682, 0.265635, -0.945229,
		0.890701, -0.358518, -0.279494,
		-0.413125, -0.894932, -0.168597,
		37.856262, 31.405373, 25.162523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781025, 32.176331, 25.134493>,  <38.145447, 32.031826, 25.280540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781025, 32.176331, 25.134493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982094, 32.511395, 25.049036>,  <39.102734, 32.712433, 24.997763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982094, 32.511395, 25.049036>,  <38.781025, 32.176331, 25.134493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982094, 32.511395, 25.049036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209091, 0.121987, 0.970258,
		0.838812, -0.532388, -0.113829,
		0.502668, 0.837665, -0.213642,
		39.132893, 32.762695, 24.984943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453667, 32.159626, 25.559488>,  <38.781025, 32.176331, 25.134493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453667, 32.159626, 25.559488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455399, 32.544006, 25.448814>,  <39.456440, 32.774635, 25.382410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455399, 32.544006, 25.448814>,  <39.453667, 32.159626, 25.559488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455399, 32.544006, 25.448814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293981, 0.263235, 0.918848,
		0.955801, -0.085319, -0.281362,
		0.004331, 0.960952, -0.276682,
		39.456699, 32.832291, 25.365810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097404, 32.534893, 25.849730>,  <39.453667, 32.159626, 25.559488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097404, 32.534893, 25.849730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867229, 32.845028, 25.745634>,  <39.729126, 33.031109, 25.683178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867229, 32.845028, 25.745634>,  <40.097404, 32.534893, 25.849730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867229, 32.845028, 25.745634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051118, 0.351674, 0.934726,
		0.816247, 0.524573, -0.242000,
		-0.575437, 0.775338, -0.260237,
		39.694599, 33.077629, 25.667562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466763, 33.154888, 25.865467>,  <40.097404, 32.534893, 25.849730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466763, 33.154888, 25.865467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087486, 33.271812, 25.915253>,  <39.859921, 33.341965, 25.945124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087486, 33.271812, 25.915253>,  <40.466763, 33.154888, 25.865467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087486, 33.271812, 25.915253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249036, 0.440580, 0.862479,
		0.197272, 0.848791, -0.490549,
		-0.948190, 0.292307, 0.124466,
		39.803028, 33.359505, 25.952593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483448, 33.812313, 26.093761>,  <40.466763, 33.154888, 25.865467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483448, 33.812313, 26.093761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104538, 33.708546, 26.168982>,  <39.877190, 33.646286, 26.214113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104538, 33.708546, 26.168982>,  <40.483448, 33.812313, 26.093761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104538, 33.708546, 26.168982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097404, 0.325967, 0.940350,
		-0.305243, 0.909091, -0.283513,
		-0.947280, -0.259420, 0.188048,
		39.820354, 33.630718, 26.225395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333775, 34.406815, 26.399691>,  <40.483448, 33.812313, 26.093761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333775, 34.406815, 26.399691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.062180, 34.139675, 26.521643>,  <39.899223, 33.979389, 26.594814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.062180, 34.139675, 26.521643>,  <40.333775, 34.406815, 26.399691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062180, 34.139675, 26.521643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005375, 0.410752, 0.911731,
		-0.734131, 0.620693, -0.275305,
		-0.678987, -0.667850, 0.304882,
		39.858482, 33.939320, 26.613108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871025, 34.739716, 26.827251>,  <40.333775, 34.406815, 26.399691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871025, 34.739716, 26.827251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792145, 34.362671, 26.935024>,  <39.744816, 34.136444, 26.999687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792145, 34.362671, 26.935024>,  <39.871025, 34.739716, 26.827251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792145, 34.362671, 26.935024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078629, 0.258736, 0.962742,
		-0.977204, 0.211043, 0.023092,
		-0.197205, -0.942611, 0.269432,
		39.732983, 34.079887, 27.015854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533257, 34.823334, 27.382540>,  <39.871025, 34.739716, 26.827251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533257, 34.823334, 27.382540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628372, 34.435413, 27.404236>,  <39.685444, 34.202660, 27.417253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628372, 34.435413, 27.404236>,  <39.533257, 34.823334, 27.382540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628372, 34.435413, 27.404236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163801, 0.095079, 0.981901,
		-0.957405, -0.224603, 0.181464,
		0.237792, -0.969801, 0.054239,
		39.699711, 34.144474, 27.420507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065605, 34.498886, 27.969803>,  <39.533257, 34.823334, 27.382540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065605, 34.498886, 27.969803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.408428, 34.312958, 27.880905>,  <39.614120, 34.201401, 27.827566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.408428, 34.312958, 27.880905>,  <39.065605, 34.498886, 27.969803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408428, 34.312958, 27.880905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242606, -0.016452, 0.969985,
		-0.454527, -0.885252, 0.098668,
		0.857058, -0.464822, -0.222245,
		39.665546, 34.173512, 27.814232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085903, 34.044281, 28.525810>,  <39.065605, 34.498886, 27.969803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085903, 34.044281, 28.525810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454647, 34.071991, 28.373301>,  <39.675896, 34.088615, 28.281796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454647, 34.071991, 28.373301>,  <39.085903, 34.044281, 28.525810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454647, 34.071991, 28.373301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383987, -0.030812, 0.922824,
		0.052178, -0.997122, -0.055004,
		0.921863, 0.069272, -0.381274,
		39.731205, 34.092773, 28.258919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462513, 33.624134, 28.991272>,  <39.085903, 34.044281, 28.525810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462513, 33.624134, 28.991272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730591, 33.861885, 28.813482>,  <39.891438, 34.004536, 28.706808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730591, 33.861885, 28.813482>,  <39.462513, 33.624134, 28.991272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730591, 33.861885, 28.813482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472545, 0.120074, 0.873088,
		0.572314, -0.795171, -0.200398,
		0.670192, 0.594377, -0.444475,
		39.931648, 34.040199, 28.680140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104942, 33.460369, 29.196917>,  <39.462513, 33.624134, 28.991272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104942, 33.460369, 29.196917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.161156, 33.825905, 29.044527>,  <40.194885, 34.045227, 28.953093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.161156, 33.825905, 29.044527>,  <40.104942, 33.460369, 29.196917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161156, 33.825905, 29.044527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579755, 0.235966, 0.779875,
		0.802580, -0.330472, -0.496643,
		0.140536, 0.913843, -0.380974,
		40.203316, 34.100060, 28.930235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799576, 33.706852, 29.280588>,  <40.104942, 33.460369, 29.196917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799576, 33.706852, 29.280588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.609219, 34.054634, 29.227558>,  <40.495003, 34.263302, 29.195740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.609219, 34.054634, 29.227558>,  <40.799576, 33.706852, 29.280588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609219, 34.054634, 29.227558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177668, 0.242668, 0.953701,
		0.861369, 0.430308, -0.269959,
		-0.475896, 0.869452, -0.132575,
		40.466450, 34.315472, 29.187786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189186, 34.196407, 29.664877>,  <40.799576, 33.706852, 29.280588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189186, 34.196407, 29.664877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836891, 34.375721, 29.603771>,  <40.625515, 34.483311, 29.567108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836891, 34.375721, 29.603771>,  <41.189186, 34.196407, 29.664877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836891, 34.375721, 29.603771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017571, 0.291410, 0.956437,
		0.473276, 0.845056, -0.248779,
		-0.880739, 0.448287, -0.152766,
		40.572670, 34.510208, 29.557941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.491592, 38.487427, 24.341520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181080, 38.237289, 24.373363>,  <37.994774, 38.087208, 24.392469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181080, 38.237289, 24.373363>,  <38.491592, 38.487427, 24.341520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181080, 38.237289, 24.373363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080656, -0.223770, -0.971299,
		0.625209, -0.747578, 0.224145,
		-0.776278, -0.625343, 0.079606,
		37.948196, 38.049686, 24.397245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817612, 37.873947, 24.061420>,  <38.491592, 38.487427, 24.341520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817612, 37.873947, 24.061420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.418930, 37.842030, 24.067299>,  <38.179722, 37.822880, 24.070826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.418930, 37.842030, 24.067299>,  <38.817612, 37.873947, 24.061420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418930, 37.842030, 24.067299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005209, -0.243667, -0.969845,
		0.080969, -0.966571, 0.243279,
		-0.996703, -0.079794, 0.014695,
		38.119919, 37.818092, 24.071707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690533, 37.238071, 23.753328>,  <38.817612, 37.873947, 24.061420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690533, 37.238071, 23.753328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.347736, 37.440948, 23.716839>,  <38.142059, 37.562675, 23.694946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.347736, 37.440948, 23.716839>,  <38.690533, 37.238071, 23.753328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347736, 37.440948, 23.716839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084469, -0.312872, -0.946032,
		-0.508364, -0.803033, 0.310971,
		-0.856990, 0.507196, -0.091221,
		38.090641, 37.593109, 23.689472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211800, 36.782108, 23.446136>,  <38.690533, 37.238071, 23.753328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211800, 36.782108, 23.446136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061161, 37.148125, 23.388353>,  <37.970779, 37.367737, 23.353683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061161, 37.148125, 23.388353>,  <38.211800, 36.782108, 23.446136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061161, 37.148125, 23.388353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218449, -0.239261, -0.946063,
		-0.900254, -0.324724, 0.289995,
		-0.376594, 0.915045, -0.144460,
		37.948181, 37.422638, 23.345015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468189, 36.751457, 23.209255>,  <38.211800, 36.782108, 23.446136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468189, 36.751457, 23.209255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.630966, 37.091171, 23.074726>,  <37.728634, 37.294998, 22.994009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.630966, 37.091171, 23.074726>,  <37.468189, 36.751457, 23.209255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630966, 37.091171, 23.074726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345704, -0.197609, -0.917300,
		-0.845508, 0.489560, 0.213185,
		0.406946, 0.849283, -0.336323,
		37.753052, 37.345955, 22.973829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856865, 36.980862, 22.785320>,  <37.468189, 36.751457, 23.209255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856865, 36.980862, 22.785320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146275, 37.226093, 22.658422>,  <37.319920, 37.373234, 22.582283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146275, 37.226093, 22.658422>,  <36.856865, 36.980862, 22.785320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146275, 37.226093, 22.658422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184714, -0.270870, -0.944728,
		-0.665129, 0.742131, -0.082736,
		0.723522, 0.613083, -0.317245,
		37.363331, 37.410019, 22.563250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587612, 37.474583, 22.307924>,  <36.856865, 36.980862, 22.785320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587612, 37.474583, 22.307924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.978779, 37.444431, 22.229944>,  <37.213478, 37.426342, 22.183157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.978779, 37.444431, 22.229944>,  <36.587612, 37.474583, 22.307924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978779, 37.444431, 22.229944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208205, -0.269353, -0.940266,
		0.018363, 0.960087, -0.279097,
		0.977913, -0.075375, -0.194949,
		37.272152, 37.421818, 22.171459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710224, 37.720478, 21.635315>,  <36.587612, 37.474583, 22.307924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710224, 37.720478, 21.635315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048935, 37.514076, 21.687027>,  <37.252159, 37.390236, 21.718054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048935, 37.514076, 21.687027>,  <36.710224, 37.720478, 21.635315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048935, 37.514076, 21.687027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009540, -0.228262, -0.973553,
		0.531868, 0.825612, -0.188364,
		0.846773, -0.516005, 0.129281,
		37.302967, 37.359276, 21.725811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115116, 37.952789, 21.087141>,  <36.710224, 37.720478, 21.635315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115116, 37.952789, 21.087141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.288868, 37.615158, 21.212902>,  <37.393120, 37.412579, 21.288359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.288868, 37.615158, 21.212902>,  <37.115116, 37.952789, 21.087141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288868, 37.615158, 21.212902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217307, -0.240539, -0.946001,
		0.874121, 0.479250, 0.078936,
		0.434384, -0.844074, 0.314405,
		37.419182, 37.361935, 21.307224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736542, 37.944855, 20.771996>,  <37.115116, 37.952789, 21.087141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736542, 37.944855, 20.771996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660660, 37.569675, 20.888105>,  <37.615131, 37.344566, 20.957771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660660, 37.569675, 20.888105>,  <37.736542, 37.944855, 20.771996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660660, 37.569675, 20.888105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354808, -0.341155, -0.870474,
		0.915490, -0.062143, 0.397512,
		-0.189707, -0.937951, 0.290275,
		37.603748, 37.288292, 20.975187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312546, 37.524281, 20.652054>,  <37.736542, 37.944855, 20.771996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312546, 37.524281, 20.652054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042755, 37.228962, 20.650965>,  <37.880882, 37.051769, 20.650311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042755, 37.228962, 20.650965>,  <38.312546, 37.524281, 20.652054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042755, 37.228962, 20.650965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384905, -0.348479, -0.854641,
		0.630029, -0.577479, 0.519213,
		-0.674472, -0.738295, -0.002723,
		37.840412, 37.007473, 20.650148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638546, 36.780533, 20.410629>,  <38.312546, 37.524281, 20.652054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638546, 36.780533, 20.410629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.247517, 36.697136, 20.422459>,  <38.012897, 36.647099, 20.429556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.247517, 36.697136, 20.422459>,  <38.638546, 36.780533, 20.410629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247517, 36.697136, 20.422459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107371, -0.614335, -0.781705,
		0.181145, -0.761002, 0.622946,
		-0.977577, -0.208489, 0.029574,
		37.954243, 36.634590, 20.431332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252453, 36.564754, 20.652729>,  <38.638546, 36.780533, 20.410629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252453, 36.564754, 20.652729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.651756, 36.566208, 20.629181>,  <39.891338, 36.567081, 20.615051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.651756, 36.566208, 20.629181>,  <39.252453, 36.564754, 20.652729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651756, 36.566208, 20.629181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042153, -0.742102, 0.668960,
		-0.041259, -0.670277, -0.740964,
		0.998259, 0.003634, -0.058872,
		39.951233, 36.567299, 20.611519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514198, 35.853447, 20.697615>,  <39.252453, 36.564754, 20.652729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514198, 35.853447, 20.697615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828274, 36.081821, 20.793535>,  <40.016720, 36.218845, 20.851088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828274, 36.081821, 20.793535>,  <39.514198, 35.853447, 20.697615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828274, 36.081821, 20.793535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370456, -0.743383, 0.556906,
		0.496222, -0.348442, -0.795205,
		0.785191, 0.570938, 0.239801,
		40.063831, 36.253101, 20.865475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480713, 35.181606, 20.380470>,  <39.514198, 35.853447, 20.697615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480713, 35.181606, 20.380470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386501, 34.854790, 20.169958>,  <39.329975, 34.658699, 20.043652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386501, 34.854790, 20.169958>,  <39.480713, 35.181606, 20.380470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386501, 34.854790, 20.169958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128286, -0.510637, 0.850172,
		-0.963364, 0.267752, 0.015453,
		-0.235526, -0.817043, -0.526278,
		39.315842, 34.609676, 20.012075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863346, 34.919224, 20.720608>,  <39.480713, 35.181606, 20.380470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863346, 34.919224, 20.720608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018448, 34.615578, 20.511459>,  <39.111507, 34.433392, 20.385971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018448, 34.615578, 20.511459>,  <38.863346, 34.919224, 20.720608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018448, 34.615578, 20.511459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209677, -0.625019, 0.751923,
		-0.897598, -0.181928, -0.401522,
		0.387755, -0.759114, -0.522870,
		39.134773, 34.387844, 20.354599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406361, 34.409473, 20.843021>,  <38.863346, 34.919224, 20.720608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406361, 34.409473, 20.843021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693920, 34.187943, 20.674994>,  <38.866455, 34.055023, 20.574177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693920, 34.187943, 20.674994>,  <38.406361, 34.409473, 20.843021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693920, 34.187943, 20.674994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198235, -0.742574, 0.639755,
		-0.666246, -0.376648, -0.643625,
		0.718901, -0.553823, -0.420072,
		38.909592, 34.021797, 20.548971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096226, 33.744930, 20.884701>,  <38.406361, 34.409473, 20.843021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096226, 33.744930, 20.884701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488777, 33.721794, 20.811434>,  <38.724308, 33.707912, 20.767473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488777, 33.721794, 20.811434>,  <38.096226, 33.744930, 20.884701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488777, 33.721794, 20.811434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054346, -0.831026, 0.553572,
		-0.184234, -0.553218, -0.812408,
		0.981379, -0.057836, -0.183169,
		38.783192, 33.704445, 20.756483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219601, 32.928078, 20.979179>,  <38.096226, 33.744930, 20.884701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219601, 32.928078, 20.979179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549442, 33.150799, 21.019192>,  <38.747345, 33.284431, 21.043200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549442, 33.150799, 21.019192>,  <38.219601, 32.928078, 20.979179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549442, 33.150799, 21.019192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247903, -0.514601, 0.820811,
		0.508503, -0.652044, -0.562373,
		0.824602, 0.556799, 0.100033,
		38.796822, 33.317837, 21.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792324, 32.452881, 21.064339>,  <38.219601, 32.928078, 20.979179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792324, 32.452881, 21.064339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882397, 32.806965, 21.227160>,  <38.936440, 33.019417, 21.324852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882397, 32.806965, 21.227160>,  <38.792324, 32.452881, 21.064339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882397, 32.806965, 21.227160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150598, -0.444382, 0.883088,
		0.962608, -0.137552, -0.233377,
		0.225179, 0.885214, 0.407051,
		38.949951, 33.072529, 21.349276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522873, 32.411049, 21.355255>,  <38.792324, 32.452881, 21.064339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522873, 32.411049, 21.355255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341019, 32.716835, 21.538078>,  <39.231907, 32.900307, 21.647772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341019, 32.716835, 21.538078>,  <39.522873, 32.411049, 21.355255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341019, 32.716835, 21.538078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301965, -0.350476, 0.886557,
		0.837929, 0.541075, -0.071503,
		-0.454633, 0.764464, 0.457060,
		39.204628, 32.946175, 21.675196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998249, 32.760750, 21.789135>,  <39.522873, 32.411049, 21.355255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998249, 32.760750, 21.789135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635342, 32.847553, 21.933228>,  <39.417599, 32.899635, 22.019684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635342, 32.847553, 21.933228>,  <39.998249, 32.760750, 21.789135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635342, 32.847553, 21.933228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337672, -0.134673, 0.931580,
		0.250678, 0.966834, 0.048906,
		-0.907270, 0.217012, 0.360232,
		39.363159, 32.912659, 22.041298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142689, 33.228828, 22.359449>,  <39.998249, 32.760750, 21.789135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142689, 33.228828, 22.359449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.771332, 33.089607, 22.411522>,  <39.548519, 33.006073, 22.442766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.771332, 33.089607, 22.411522>,  <40.142689, 33.228828, 22.359449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771332, 33.089607, 22.411522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113512, 0.067958, 0.991210,
		-0.353839, 0.935009, -0.023584,
		-0.928393, -0.348052, 0.130181,
		39.492813, 32.985191, 22.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885994, 33.656548, 22.921118>,  <40.142689, 33.228828, 22.359449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885994, 33.656548, 22.921118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636726, 33.344364, 22.900928>,  <39.487164, 33.157055, 22.888815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636726, 33.344364, 22.900928>,  <39.885994, 33.656548, 22.921118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636726, 33.344364, 22.900928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137259, 0.045605, 0.989485,
		-0.769946, 0.623547, -0.135544,
		-0.623172, -0.780455, -0.050474,
		39.449776, 33.110229, 22.885786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314339, 33.826363, 23.300852>,  <39.885994, 33.656548, 22.921118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314339, 33.826363, 23.300852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294540, 33.426876, 23.305056>,  <39.282661, 33.187183, 23.307577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294540, 33.426876, 23.305056>,  <39.314339, 33.826363, 23.300852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294540, 33.426876, 23.305056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169208, 0.018754, 0.985402,
		-0.984337, 0.046996, -0.169920,
		-0.049497, -0.998719, 0.010509,
		39.279690, 33.127262, 23.308208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754948, 33.587234, 23.760494>,  <39.314339, 33.826363, 23.300852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754948, 33.587234, 23.760494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959682, 33.244225, 23.739824>,  <39.082523, 33.038418, 23.727423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959682, 33.244225, 23.739824>,  <38.754948, 33.587234, 23.760494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959682, 33.244225, 23.739824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083080, -0.109278, 0.990533,
		-0.855056, -0.502698, -0.127176,
		0.511836, -0.857527, -0.051675,
		39.113232, 32.986965, 23.724321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288410, 33.139698, 24.068428>,  <38.754948, 33.587234, 23.760494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288410, 33.139698, 24.068428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673691, 33.035206, 24.093714>,  <38.904861, 32.972511, 24.108885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673691, 33.035206, 24.093714>,  <38.288410, 33.139698, 24.068428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673691, 33.035206, 24.093714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068220, -0.010126, 0.997619,
		-0.259969, -0.965223, -0.027574,
		0.963204, -0.261231, 0.063215,
		38.962650, 32.956837, 24.112679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345245, 32.646328, 24.551723>,  <38.288410, 33.139698, 24.068428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345245, 32.646328, 24.551723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729385, 32.756992, 24.537935>,  <38.959869, 32.823391, 24.529661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729385, 32.756992, 24.537935>,  <38.345245, 32.646328, 24.551723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729385, 32.756992, 24.537935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035185, 0.002390, 0.999378,
		0.276573, -0.960964, -0.007439,
		0.960349, 0.276662, -0.034473,
		39.017490, 32.839993, 24.527594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398869, 31.913893, 24.580648>,  <38.345245, 32.646328, 24.551723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398869, 31.913893, 24.580648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115501, 31.633924, 24.616972>,  <37.945480, 31.465942, 24.638767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115501, 31.633924, 24.616972>,  <38.398869, 31.913893, 24.580648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115501, 31.633924, 24.616972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235349, 0.112961, -0.965324,
		0.665394, -0.705229, -0.244750,
		-0.708422, -0.699922, 0.090811,
		37.902973, 31.423948, 24.644215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453049, 31.464348, 24.008787>,  <38.398869, 31.913893, 24.580648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453049, 31.464348, 24.008787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.074234, 31.395235, 24.117060>,  <37.846947, 31.353767, 24.182024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.074234, 31.395235, 24.117060>,  <38.453049, 31.464348, 24.008787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074234, 31.395235, 24.117060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264766, -0.056859, -0.962635,
		0.181715, -0.983318, 0.008101,
		-0.947037, -0.172780, 0.270681,
		37.790123, 31.343401, 24.198263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204636, 30.919720, 23.579393>,  <38.453049, 31.464348, 24.008787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204636, 30.919720, 23.579393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.831200, 31.012907, 23.688301>,  <37.607136, 31.068819, 23.753645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.831200, 31.012907, 23.688301>,  <38.204636, 30.919720, 23.579393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831200, 31.012907, 23.688301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314928, -0.170954, -0.933592,
		-0.170954, -0.957340, 0.232970,
		0.933592, -0.232970, -0.272268,
		37.551121, 31.082798, 23.769981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728058, 30.393129, 23.254356>,  <38.204636, 30.919720, 23.579393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728058, 30.393129, 23.254356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525520, 30.721781, 23.359083>,  <37.403999, 30.918972, 23.421919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525520, 30.721781, 23.359083>,  <37.728058, 30.393129, 23.254356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525520, 30.721781, 23.359083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214967, 0.173763, -0.961039,
		-0.835111, -0.542894, 0.088640,
		-0.506339, 0.821628, 0.261815,
		37.373619, 30.968269, 23.437628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094337, 30.343939, 22.925980>,  <37.728058, 30.393129, 23.254356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094337, 30.343939, 22.925980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134857, 30.732582, 23.011505>,  <37.159168, 30.965769, 23.062820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134857, 30.732582, 23.011505>,  <37.094337, 30.343939, 22.925980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134857, 30.732582, 23.011505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434762, 0.236542, -0.868925,
		-0.894830, -0.004937, 0.446379,
		0.101297, 0.971609, 0.213811,
		37.165245, 31.024065, 23.075649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446575, 30.689840, 22.719812>,  <37.094337, 30.343939, 22.925980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446575, 30.689840, 22.719812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664032, 31.024990, 22.739502>,  <36.794506, 31.226080, 22.751316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664032, 31.024990, 22.739502>,  <36.446575, 30.689840, 22.719812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664032, 31.024990, 22.739502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328543, 0.266405, -0.906139,
		-0.772343, 0.476442, 0.420107,
		0.543641, 0.837873, 0.049224,
		36.827126, 31.276352, 22.754269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904045, 31.360628, 22.691418>,  <36.446575, 30.689840, 22.719812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904045, 31.360628, 22.691418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278126, 31.471657, 22.603455>,  <36.502575, 31.538275, 22.550676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278126, 31.471657, 22.603455>,  <35.904045, 31.360628, 22.691418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278126, 31.471657, 22.603455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293250, 0.258889, -0.920316,
		-0.198522, 0.925165, 0.323510,
		0.935197, 0.277572, -0.219910,
		36.558685, 31.554928, 22.537481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539803, 31.891802, 23.050314>,  <35.904045, 31.360628, 22.691418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539803, 31.891802, 23.050314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.140980, 31.899097, 23.080111>,  <34.901688, 31.903475, 23.097988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.140980, 31.899097, 23.080111>,  <35.539803, 31.891802, 23.050314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140980, 31.899097, 23.080111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076593, 0.285778, 0.955230,
		-0.003866, 0.958122, -0.286334,
		-0.997055, 0.018238, 0.074490,
		34.841862, 31.904570, 23.102457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323666, 32.445107, 23.438372>,  <35.539803, 31.891802, 23.050314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323666, 32.445107, 23.438372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014256, 32.194599, 23.477243>,  <34.828609, 32.044296, 23.500566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014256, 32.194599, 23.477243>,  <35.323666, 32.445107, 23.438372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014256, 32.194599, 23.477243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020377, 0.177838, 0.983849,
		-0.633433, 0.759055, -0.150324,
		-0.773529, -0.626265, 0.097181,
		34.782196, 32.006718, 23.506397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946903, 32.743259, 23.960970>,  <35.323666, 32.445107, 23.438372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946903, 32.743259, 23.960970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763596, 32.387737, 23.959341>,  <34.653610, 32.174423, 23.958363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763596, 32.387737, 23.959341>,  <34.946903, 32.743259, 23.960970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763596, 32.387737, 23.959341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224024, 0.111068, 0.968234,
		-0.860120, 0.444620, -0.250012,
		-0.458264, -0.888806, -0.004074,
		34.626118, 32.121094, 23.958118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402283, 32.884937, 24.396551>,  <34.946903, 32.743259, 23.960970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402283, 32.884937, 24.396551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451435, 32.488003, 24.391224>,  <34.480927, 32.249844, 24.388027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451435, 32.488003, 24.391224>,  <34.402283, 32.884937, 24.396551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451435, 32.488003, 24.391224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153563, -0.032268, 0.987612,
		-0.980469, -0.119309, -0.156351,
		0.122876, -0.992333, -0.013316,
		34.488297, 32.190304, 24.387228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858852, 32.696857, 24.782452>,  <34.402283, 32.884937, 24.396551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858852, 32.696857, 24.782452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123337, 32.397530, 24.803688>,  <34.282028, 32.217934, 24.816431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123337, 32.397530, 24.803688>,  <33.858852, 32.696857, 24.782452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123337, 32.397530, 24.803688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181815, -0.091183, 0.979096,
		-0.727839, -0.657038, -0.196347,
		0.661206, -0.748323, 0.053093,
		34.321697, 32.173031, 24.819616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624470, 32.352543, 25.283981>,  <33.858852, 32.696857, 24.782452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624470, 32.352543, 25.283981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994434, 32.202797, 25.257500>,  <34.216415, 32.112949, 25.241611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994434, 32.202797, 25.257500>,  <33.624470, 32.352543, 25.283981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994434, 32.202797, 25.257500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010193, -0.198491, 0.980050,
		-0.380042, -0.905786, -0.187403,
		0.924913, -0.374370, -0.066202,
		34.271908, 32.090485, 25.237638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625084, 31.703196, 25.577002>,  <33.624470, 32.352543, 25.283981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625084, 31.703196, 25.577002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.009628, 31.812389, 25.591242>,  <34.240353, 31.877907, 25.599785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.009628, 31.812389, 25.591242>,  <33.625084, 31.703196, 25.577002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009628, 31.812389, 25.591242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005236, -0.147421, 0.989060,
		0.275248, -0.950655, -0.143154,
		0.961359, 0.272987, 0.035600,
		34.298035, 31.894285, 25.601921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.701965, 35.387897, 20.458658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.002064, 35.642353, 20.530729>,  <35.182121, 35.795025, 20.573973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.002064, 35.642353, 20.530729>,  <34.701965, 35.387897, 20.458658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002064, 35.642353, 20.530729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308614, 0.095932, 0.946337,
		0.584717, -0.765588, 0.268294,
		0.750242, 0.636139, 0.180178,
		35.227135, 35.833195, 20.584784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079098, 35.188072, 21.032446>,  <34.701965, 35.387897, 20.458658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079098, 35.188072, 21.032446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.141659, 35.582829, 21.016563>,  <35.179195, 35.819683, 21.007034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.141659, 35.582829, 21.016563>,  <35.079098, 35.188072, 21.032446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141659, 35.582829, 21.016563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136857, 0.061468, 0.988682,
		0.978166, -0.149198, 0.144677,
		0.156402, 0.986895, -0.039707,
		35.188580, 35.878899, 21.004652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008835, 35.363728, 21.697989>,  <35.079098, 35.188072, 21.032446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008835, 35.363728, 21.697989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.051651, 35.729614, 21.542124>,  <35.077343, 35.949146, 21.448605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.051651, 35.729614, 21.542124>,  <35.008835, 35.363728, 21.697989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051651, 35.729614, 21.542124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341692, 0.401888, 0.849549,
		0.933696, 0.042205, 0.355570,
		0.107044, 0.914716, -0.389662,
		35.083763, 36.004028, 21.425224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454144, 35.710457, 22.095896>,  <35.008835, 35.363728, 21.697989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454144, 35.710457, 22.095896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226418, 35.981182, 21.909218>,  <35.089783, 36.143616, 21.797211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226418, 35.981182, 21.909218>,  <35.454144, 35.710457, 22.095896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226418, 35.981182, 21.909218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400729, 0.267212, 0.876364,
		0.717839, 0.685948, 0.119089,
		-0.569318, 0.676811, -0.466695,
		35.055622, 36.184227, 21.769209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560635, 36.350498, 22.352583>,  <35.454144, 35.710457, 22.095896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560635, 36.350498, 22.352583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.198833, 36.398884, 22.188999>,  <34.981754, 36.427914, 22.090849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.198833, 36.398884, 22.188999>,  <35.560635, 36.350498, 22.352583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198833, 36.398884, 22.188999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366624, 0.269332, 0.890532,
		0.217864, 0.955421, -0.199264,
		-0.904501, 0.120960, -0.408958,
		34.927483, 36.435173, 22.066311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337399, 36.998734, 22.550602>,  <35.560635, 36.350498, 22.352583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337399, 36.998734, 22.550602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.009182, 36.787376, 22.463413>,  <34.812252, 36.660561, 22.411100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.009182, 36.787376, 22.463413>,  <35.337399, 36.998734, 22.550602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009182, 36.787376, 22.463413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389703, 0.238194, 0.889604,
		-0.418141, 0.814901, -0.401365,
		-0.820542, -0.528393, -0.217971,
		34.763020, 36.628857, 22.398022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902660, 37.409233, 22.856489>,  <35.337399, 36.998734, 22.550602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902660, 37.409233, 22.856489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.723557, 37.053387, 22.820517>,  <34.616093, 36.839878, 22.798933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.723557, 37.053387, 22.820517>,  <34.902660, 37.409233, 22.856489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723557, 37.053387, 22.820517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308917, 0.059529, 0.949224,
		-0.839095, 0.452807, -0.301473,
		-0.447761, -0.889619, -0.089929,
		34.589230, 36.786499, 22.793537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172050, 37.465633, 23.090076>,  <34.902660, 37.409233, 22.856489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172050, 37.465633, 23.090076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.262081, 37.078259, 23.132923>,  <34.316097, 36.845833, 23.158630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.262081, 37.078259, 23.132923>,  <34.172050, 37.465633, 23.090076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262081, 37.078259, 23.132923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258446, 0.046660, 0.964898,
		-0.939440, -0.244856, -0.239786,
		0.225073, -0.968436, 0.107116,
		34.329601, 36.787727, 23.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691051, 37.166637, 23.584816>,  <34.172050, 37.465633, 23.090076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691051, 37.166637, 23.584816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.972355, 36.883667, 23.613060>,  <34.141136, 36.713886, 23.630007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.972355, 36.883667, 23.613060>,  <33.691051, 37.166637, 23.584816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972355, 36.883667, 23.613060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159053, -0.059754, 0.985460,
		-0.692919, -0.704259, -0.154540,
		0.703254, -0.707424, 0.070610,
		34.183331, 36.671440, 23.634243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376022, 36.831326, 23.965504>,  <33.691051, 37.166637, 23.584816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376022, 36.831326, 23.965504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.757534, 36.714001, 23.991623>,  <33.986443, 36.643604, 24.007296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.757534, 36.714001, 23.991623>,  <33.376022, 36.831326, 23.965504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757534, 36.714001, 23.991623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072455, -0.013582, 0.997279,
		-0.291628, -0.955920, -0.034206,
		0.953784, -0.293313, 0.065300,
		34.043671, 36.626007, 24.011213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344009, 36.365883, 24.418669>,  <33.376022, 36.831326, 23.965504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344009, 36.365883, 24.418669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.730728, 36.467251, 24.405508>,  <33.962761, 36.528072, 24.397612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.730728, 36.467251, 24.405508>,  <33.344009, 36.365883, 24.418669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730728, 36.467251, 24.405508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072461, -0.148387, 0.986271,
		0.245061, -0.955907, -0.161823,
		0.966796, 0.253422, -0.032902,
		34.020767, 36.543278, 24.395638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595722, 35.878170, 24.806417>,  <33.344009, 36.365883, 24.418669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595722, 35.878170, 24.806417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.839359, 36.194771, 24.826521>,  <33.985542, 36.384731, 24.838583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.839359, 36.194771, 24.826521>,  <33.595722, 35.878170, 24.806417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839359, 36.194771, 24.826521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215062, 0.103837, 0.971064,
		0.763382, -0.602278, 0.233469,
		0.609094, 0.791504, 0.050260,
		34.022087, 36.432220, 24.841599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396545, 35.145332, 24.688593>,  <33.595722, 35.878170, 24.806417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396545, 35.145332, 24.688593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.068539, 34.953125, 24.812969>,  <32.871735, 34.837799, 24.887594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.068539, 34.953125, 24.812969>,  <33.396545, 35.145332, 24.688593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068539, 34.953125, 24.812969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255542, -0.178737, -0.950132,
		0.512132, -0.858578, 0.023774,
		-0.820012, -0.480517, 0.310940,
		32.822536, 34.808971, 24.906252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415508, 34.448872, 24.452751>,  <33.396545, 35.145332, 24.688593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415508, 34.448872, 24.452751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.026501, 34.518456, 24.514645>,  <32.793095, 34.560207, 24.551781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.026501, 34.518456, 24.514645>,  <33.415508, 34.448872, 24.452751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026501, 34.518456, 24.514645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206392, -0.336632, -0.918739,
		-0.107735, -0.925428, 0.363286,
		-0.972520, 0.173960, 0.154734,
		32.734745, 34.570644, 24.561066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073143, 33.874500, 24.175884>,  <33.415508, 34.448872, 24.452751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073143, 33.874500, 24.175884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.805645, 34.171822, 24.182533>,  <32.645145, 34.350216, 24.186522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.805645, 34.171822, 24.182533>,  <33.073143, 33.874500, 24.175884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805645, 34.171822, 24.182533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326225, -0.273268, -0.904932,
		-0.668098, -0.610592, 0.425232,
		-0.668747, 0.743304, 0.016621,
		32.605022, 34.394814, 24.187519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513390, 33.557980, 23.786682>,  <33.073143, 33.874500, 24.175884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513390, 33.557980, 23.786682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.438583, 33.950497, 23.804943>,  <32.393700, 34.186008, 23.815899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.438583, 33.950497, 23.804943>,  <32.513390, 33.557980, 23.786682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438583, 33.950497, 23.804943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521266, -0.059740, -0.851301,
		-0.832649, -0.183008, 0.522688,
		-0.187020, 0.981294, 0.045653,
		32.382477, 34.244884, 23.818640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804148, 33.652412, 23.693981>,  <32.513390, 33.557980, 23.786682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804148, 33.652412, 23.693981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.986946, 33.996284, 23.602669>,  <32.096626, 34.202606, 23.547880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.986946, 33.996284, 23.602669>,  <31.804148, 33.652412, 23.693981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986946, 33.996284, 23.602669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362444, -0.054397, -0.930417,
		-0.812274, 0.507936, 0.286726,
		0.456995, 0.859676, -0.228283,
		32.124046, 34.254189, 23.534184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236496, 34.059666, 23.402769>,  <31.804148, 33.652412, 23.693981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236496, 34.059666, 23.402769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583904, 34.194523, 23.257439>,  <31.792349, 34.275436, 23.170240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583904, 34.194523, 23.257439>,  <31.236496, 34.059666, 23.402769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583904, 34.194523, 23.257439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429419, 0.145743, -0.891268,
		-0.247533, 0.930103, 0.271357,
		0.868520, 0.337144, -0.363328,
		31.844460, 34.295666, 23.148439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986624, 34.345451, 22.790165>,  <31.236496, 34.059666, 23.402769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986624, 34.345451, 22.790165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383238, 34.389294, 22.762310>,  <31.621206, 34.415600, 22.745598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383238, 34.389294, 22.762310>,  <30.986624, 34.345451, 22.790165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383238, 34.389294, 22.762310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077743, 0.071504, -0.994406,
		-0.104012, 0.991400, 0.079419,
		0.991533, 0.109605, -0.069637,
		31.680698, 34.422176, 22.741419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028669, 34.970959, 22.344742>,  <30.986624, 34.345451, 22.790165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028669, 34.970959, 22.344742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.361151, 34.749859, 22.320833>,  <31.560640, 34.617199, 22.306488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.361151, 34.749859, 22.320833>,  <31.028669, 34.970959, 22.344742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361151, 34.749859, 22.320833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046880, 0.037441, -0.998199,
		0.553988, 0.832509, 0.005208,
		0.831204, -0.552745, -0.059770,
		31.610512, 34.584034, 22.302902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428467, 35.182491, 21.731020>,  <31.028669, 34.970959, 22.344742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428467, 35.182491, 21.731020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.608965, 34.835342, 21.814140>,  <31.717264, 34.627052, 21.864014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.608965, 34.835342, 21.814140>,  <31.428467, 35.182491, 21.731020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608965, 34.835342, 21.814140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166357, -0.146970, -0.975051,
		0.876757, 0.474557, 0.078057,
		0.451245, -0.867869, 0.207803,
		31.744339, 34.574982, 21.876482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918880, 35.253437, 21.394865>,  <31.428467, 35.182491, 21.731020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918880, 35.253437, 21.394865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.919950, 34.855808, 21.438326>,  <31.920593, 34.617229, 21.464401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.919950, 34.855808, 21.438326>,  <31.918880, 35.253437, 21.394865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919950, 34.855808, 21.438326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388531, -0.099081, -0.916093,
		0.921432, 0.044666, 0.385964,
		0.002676, -0.994076, 0.108650,
		31.920753, 34.557587, 21.470921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636787, 35.010841, 21.264616>,  <31.918880, 35.253437, 21.394865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636787, 35.010841, 21.264616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.368992, 34.723698, 21.188231>,  <32.208313, 34.551411, 21.142399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.368992, 34.723698, 21.188231>,  <32.636787, 35.010841, 21.264616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368992, 34.723698, 21.188231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373835, -0.103453, -0.921708,
		0.641899, -0.688461, 0.337621,
		-0.669487, -0.717858, -0.190965,
		32.168144, 34.508339, 21.130941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045349, 34.538059, 20.902168>,  <32.636787, 35.010841, 21.264616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045349, 34.538059, 20.902168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682220, 34.406971, 20.797512>,  <32.464344, 34.328320, 20.734718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682220, 34.406971, 20.797512>,  <33.045349, 34.538059, 20.902168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682220, 34.406971, 20.797512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327743, -0.165240, -0.930205,
		0.261613, -0.930212, 0.257416,
		-0.907824, -0.327720, -0.261642,
		32.409874, 34.308655, 20.719019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164799, 33.911152, 20.533043>,  <33.045349, 34.538059, 20.902168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164799, 33.911152, 20.533043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796318, 34.046539, 20.456272>,  <32.575230, 34.127773, 20.410210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796318, 34.046539, 20.456272>,  <33.164799, 33.911152, 20.533043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796318, 34.046539, 20.456272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169552, -0.094776, -0.980953,
		-0.350211, -0.936193, 0.029919,
		-0.921197, 0.338468, -0.191925,
		32.519958, 34.148079, 20.398695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915863, 33.786457, 20.796286>,  <33.164799, 33.911152, 20.533043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915863, 33.786457, 20.796286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.732140, 33.461243, 20.653172>,  <33.621906, 33.266113, 20.567303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.732140, 33.461243, 20.653172>,  <33.915863, 33.786457, 20.796286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732140, 33.461243, 20.653172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226765, -0.496764, 0.837737,
		-0.858843, 0.303648, 0.412536,
		-0.459310, -0.813034, -0.357785,
		33.594345, 33.217331, 20.545835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607193, 33.513439, 21.321447>,  <33.915863, 33.786457, 20.796286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607193, 33.513439, 21.321447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629990, 33.190941, 21.085915>,  <33.643669, 32.997440, 20.944595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629990, 33.190941, 21.085915>,  <33.607193, 33.513439, 21.321447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629990, 33.190941, 21.085915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164324, -0.574170, 0.802076,
		-0.984759, -0.142471, 0.099763,
		0.056992, -0.806245, -0.588830,
		33.647087, 32.949066, 20.909266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278236, 33.044765, 21.634558>,  <33.607193, 33.513439, 21.321447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278236, 33.044765, 21.634558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.498291, 32.825947, 21.382183>,  <33.630325, 32.694656, 21.230759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.498291, 32.825947, 21.382183>,  <33.278236, 33.044765, 21.634558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498291, 32.825947, 21.382183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240804, -0.619531, 0.747124,
		-0.799599, -0.562956, -0.209098,
		0.550140, -0.547048, -0.630938,
		33.663334, 32.661831, 21.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143898, 32.381401, 21.935787>,  <33.278236, 33.044765, 21.634558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143898, 32.381401, 21.935787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.473709, 32.395901, 21.709921>,  <33.671597, 32.404602, 21.574402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.473709, 32.395901, 21.709921>,  <33.143898, 32.381401, 21.935787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473709, 32.395901, 21.709921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476582, -0.582434, 0.658514,
		-0.305007, -0.812069, -0.497507,
		0.824524, 0.036251, -0.564664,
		33.721066, 32.406776, 21.540522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254063, 31.701731, 21.907246>,  <33.143898, 32.381401, 21.935787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254063, 31.701731, 21.907246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.574581, 31.936201, 21.859388>,  <33.766891, 32.076885, 21.830673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.574581, 31.936201, 21.859388>,  <33.254063, 31.701731, 21.907246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574581, 31.936201, 21.859388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410565, -0.393332, 0.822634,
		0.435151, -0.708297, -0.555840,
		0.801299, 0.586178, -0.119643,
		33.814972, 32.112053, 21.823496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870010, 31.262480, 21.905405>,  <33.254063, 31.701731, 21.907246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870010, 31.262480, 21.905405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.988522, 31.628361, 22.015345>,  <34.059628, 31.847889, 22.081308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.988522, 31.628361, 22.015345>,  <33.870010, 31.262480, 21.905405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988522, 31.628361, 22.015345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336480, -0.369279, 0.866265,
		0.893870, -0.164171, -0.417186,
		0.296274, 0.914702, 0.274848,
		34.077404, 31.902771, 22.097799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658184, 31.243677, 22.102638>,  <33.870010, 31.262480, 21.905405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658184, 31.243677, 22.102638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505424, 31.579954, 22.256201>,  <34.413769, 31.781721, 22.348339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505424, 31.579954, 22.256201>,  <34.658184, 31.243677, 22.102638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505424, 31.579954, 22.256201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561221, -0.119081, 0.819055,
		0.734291, 0.528254, -0.426339,
		-0.381900, 0.840695, 0.383907,
		34.390854, 31.832163, 22.371372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235909, 31.469540, 22.496004>,  <34.658184, 31.243677, 22.102638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235909, 31.469540, 22.496004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.912346, 31.671999, 22.615658>,  <34.718208, 31.793474, 22.687450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.912346, 31.671999, 22.615658>,  <35.235909, 31.469540, 22.496004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912346, 31.671999, 22.615658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352544, 0.010398, 0.935737,
		0.470511, 0.862384, -0.186851,
		-0.808908, 0.506148, 0.299136,
		34.669674, 31.823843, 22.705399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767376, 32.001583, 22.255596>,  <35.235909, 31.469540, 22.496004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767376, 32.001583, 22.255596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.153877, 31.918800, 22.194239>,  <36.385777, 31.869131, 22.157423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.153877, 31.918800, 22.194239>,  <35.767376, 32.001583, 22.255596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153877, 31.918800, 22.194239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046876, 0.444264, -0.894669,
		0.253306, 0.871664, 0.419569,
		0.966250, -0.206958, -0.153395,
		36.443752, 31.856712, 22.148220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083557, 32.618324, 21.976141>,  <35.767376, 32.001583, 22.255596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083557, 32.618324, 21.976141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.301125, 32.298664, 21.873760>,  <36.431667, 32.106869, 21.812332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.301125, 32.298664, 21.873760>,  <36.083557, 32.618324, 21.976141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301125, 32.298664, 21.873760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096433, 0.362523, -0.926972,
		0.833577, 0.479517, 0.274248,
		0.543920, -0.799150, -0.255950,
		36.464302, 32.058918, 21.796976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824291, 32.922699, 21.663092>,  <36.083557, 32.618324, 21.976141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824291, 32.922699, 21.663092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.737137, 32.549908, 21.547207>,  <36.684845, 32.326233, 21.477676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.737137, 32.549908, 21.547207>,  <36.824291, 32.922699, 21.663092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737137, 32.549908, 21.547207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218969, 0.242594, -0.945093,
		0.951093, -0.269363, 0.151216,
		-0.217888, -0.931983, -0.289711,
		36.671772, 32.270313, 21.460293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363258, 32.690685, 21.318186>,  <36.824291, 32.922699, 21.663092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363258, 32.690685, 21.318186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.047546, 32.500580, 21.162666>,  <36.858120, 32.386517, 21.069355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.047546, 32.500580, 21.162666>,  <37.363258, 32.690685, 21.318186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047546, 32.500580, 21.162666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277502, 0.288746, -0.916307,
		0.547752, -0.831113, -0.096014,
		-0.789279, -0.475265, -0.388797,
		36.810764, 32.358002, 21.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584641, 32.488789, 20.721750>,  <37.363258, 32.690685, 21.318186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584641, 32.488789, 20.721750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195621, 32.421627, 20.657305>,  <36.962212, 32.381329, 20.618637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195621, 32.421627, 20.657305>,  <37.584641, 32.488789, 20.721750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195621, 32.421627, 20.657305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117403, 0.243747, -0.962707,
		0.200908, -0.955195, -0.217344,
		-0.972550, -0.167899, -0.161113,
		36.903858, 32.371254, 20.608971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624680, 32.182808, 20.158518>,  <37.584641, 32.488789, 20.721750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624680, 32.182808, 20.158518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228973, 32.240780, 20.151119>,  <36.991550, 32.275562, 20.146681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.228973, 32.240780, 20.151119>,  <37.624680, 32.182808, 20.158518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228973, 32.240780, 20.151119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033044, 0.098629, -0.994575,
		-0.142316, -0.984514, -0.102360,
		-0.989269, 0.144926, -0.018496,
		36.932194, 32.284256, 20.145571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410923, 31.751745, 19.738791>,  <37.624680, 32.182808, 20.158518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410923, 31.751745, 19.738791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.137787, 32.042263, 19.770353>,  <36.973907, 32.216576, 19.789291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.137787, 32.042263, 19.770353>,  <37.410923, 31.751745, 19.738791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137787, 32.042263, 19.770353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083717, 0.029505, -0.996053,
		-0.725757, -0.686749, 0.040656,
		-0.682838, 0.726296, 0.078905,
		36.932934, 32.260151, 19.794025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938427, 31.556438, 19.255447>,  <37.410923, 31.751745, 19.738791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938427, 31.556438, 19.255447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.897141, 31.952646, 19.291698>,  <36.872368, 32.190372, 19.313450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.897141, 31.952646, 19.291698>,  <36.938427, 31.556438, 19.255447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897141, 31.952646, 19.291698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064368, 0.084273, -0.994362,
		-0.992574, -0.108470, 0.055059,
		-0.103218, 0.990521, 0.090629,
		36.866177, 32.249802, 19.318888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461460, 31.797186, 18.810684>,  <36.938427, 31.556438, 19.255447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461460, 31.797186, 18.810684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.705181, 32.104366, 18.889677>,  <36.851414, 32.288673, 18.937073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.705181, 32.104366, 18.889677>,  <36.461460, 31.797186, 18.810684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705181, 32.104366, 18.889677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029175, 0.270598, -0.962250,
		-0.792399, 0.580542, 0.187282,
		0.609305, 0.767950, 0.197484,
		36.887974, 32.334751, 18.948923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.184494, 32.158466, 35.427559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.236568, 32.464218, 35.174965>,  <39.267815, 32.647671, 35.023411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.236568, 32.464218, 35.174965>,  <39.184494, 32.158466, 35.427559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236568, 32.464218, 35.174965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303515, -0.575603, -0.759315,
		-0.943891, 0.290516, 0.157067,
		0.130186, 0.764383, -0.631483,
		39.275623, 32.693535, 34.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540821, 32.274872, 35.067738>,  <39.184494, 32.158466, 35.427559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540821, 32.274872, 35.067738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843021, 32.420635, 34.849957>,  <39.024342, 32.508095, 34.719288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.843021, 32.420635, 34.849957>,  <38.540821, 32.274872, 35.067738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843021, 32.420635, 34.849957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426488, -0.357270, -0.830943,
		-0.497320, 0.859978, -0.114501,
		0.755500, 0.364411, -0.544448,
		39.069672, 32.529957, 34.686623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253754, 32.552700, 34.543648>,  <38.540821, 32.274872, 35.067738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253754, 32.552700, 34.543648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632732, 32.498848, 34.427567>,  <38.860119, 32.466537, 34.357918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632732, 32.498848, 34.427567>,  <38.253754, 32.552700, 34.543648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632732, 32.498848, 34.427567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315213, -0.238044, -0.918681,
		0.054600, 0.961878, -0.267971,
		0.947449, -0.134628, -0.290200,
		38.916965, 32.458458, 34.340508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341175, 32.865845, 33.765366>,  <38.253754, 32.552700, 34.543648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341175, 32.865845, 33.765366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643261, 32.608662, 33.816368>,  <38.824512, 32.454353, 33.846970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643261, 32.608662, 33.816368>,  <38.341175, 32.865845, 33.765366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643261, 32.608662, 33.816368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105846, -0.311588, -0.944304,
		0.646874, 0.699657, -0.303371,
		0.755216, -0.642956, 0.127502,
		38.869827, 32.415775, 33.854618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837135, 32.838650, 33.202980>,  <38.341175, 32.865845, 33.765366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837135, 32.838650, 33.202980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926098, 32.477966, 33.351284>,  <38.979473, 32.261559, 33.440266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926098, 32.477966, 33.351284>,  <38.837135, 32.838650, 33.202980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926098, 32.477966, 33.351284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059007, -0.392041, -0.918054,
		0.973168, 0.182300, -0.140397,
		0.222402, -0.901704, 0.370764,
		38.992817, 32.207455, 33.462513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377003, 32.563114, 32.729164>,  <38.837135, 32.838650, 33.202980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377003, 32.563114, 32.729164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238995, 32.230564, 32.903416>,  <39.156189, 32.031033, 33.007969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238995, 32.230564, 32.903416>,  <39.377003, 32.563114, 32.729164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238995, 32.230564, 32.903416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022539, -0.456658, -0.889357,
		0.938325, -0.316664, 0.138817,
		-0.345019, -0.831377, 0.435631,
		39.135490, 31.981152, 33.034103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817184, 31.999088, 32.456165>,  <39.377003, 32.563114, 32.729164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817184, 31.999088, 32.456165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496155, 31.794973, 32.579769>,  <39.303539, 31.672504, 32.653931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496155, 31.794973, 32.579769>,  <39.817184, 31.999088, 32.456165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496155, 31.794973, 32.579769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010808, -0.530335, -0.847719,
		0.596459, -0.677015, 0.431147,
		-0.802571, -0.510289, 0.309006,
		39.255383, 31.641886, 32.672470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866821, 31.207008, 32.255161>,  <39.817184, 31.999088, 32.456165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866821, 31.207008, 32.255161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483231, 31.301382, 32.318020>,  <39.253075, 31.358007, 32.355736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483231, 31.301382, 32.318020>,  <39.866821, 31.207008, 32.255161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483231, 31.301382, 32.318020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258057, -0.497141, -0.828406,
		-0.117329, -0.834976, 0.537633,
		-0.958979, 0.235936, 0.157143,
		39.195538, 31.372164, 32.365162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581913, 30.623644, 31.992073>,  <39.866821, 31.207008, 32.255161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581913, 30.623644, 31.992073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.259548, 30.859198, 32.016449>,  <39.066128, 31.000530, 32.031075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.259548, 30.859198, 32.016449>,  <39.581913, 30.623644, 31.992073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259548, 30.859198, 32.016449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359536, -0.405051, -0.840636,
		-0.470354, -0.699392, 0.538162,
		-0.805917, 0.588884, 0.060939,
		39.017773, 31.035864, 32.034729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938828, 30.230263, 31.663630>,  <39.581913, 30.623644, 31.992073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938828, 30.230263, 31.663630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842361, 30.617413, 31.635187>,  <38.784481, 30.849703, 31.618122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842361, 30.617413, 31.635187>,  <38.938828, 30.230263, 31.663630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842361, 30.617413, 31.635187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400881, -0.166075, -0.900951,
		-0.883818, -0.188773, 0.428055,
		-0.241164, 0.967876, -0.071104,
		38.770012, 30.907776, 31.613855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156616, 30.160870, 31.471188>,  <38.938828, 30.230263, 31.663630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156616, 30.160870, 31.471188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298153, 30.524405, 31.382812>,  <38.383076, 30.742525, 31.329786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298153, 30.524405, 31.382812>,  <38.156616, 30.160870, 31.471188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298153, 30.524405, 31.382812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345683, -0.092421, -0.933789,
		-0.869082, 0.406784, 0.281467,
		0.353837, 0.908837, -0.220940,
		38.404305, 30.797056, 31.316530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595211, 30.620441, 31.106281>,  <38.156616, 30.160870, 31.471188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595211, 30.620441, 31.106281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947113, 30.764687, 30.982355>,  <38.158257, 30.851234, 30.907999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947113, 30.764687, 30.982355>,  <37.595211, 30.620441, 31.106281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947113, 30.764687, 30.982355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286092, -0.118904, -0.950796,
		-0.379707, 0.925106, -0.001439,
		0.879758, 0.360612, -0.309814,
		38.211040, 30.872869, 30.889410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941677, 30.999216, 31.327536>,  <37.595211, 30.620441, 31.106281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941677, 30.999216, 31.327536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566875, 30.864948, 31.288862>,  <36.341995, 30.784388, 31.265657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566875, 30.864948, 31.288862>,  <36.941677, 30.999216, 31.327536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566875, 30.864948, 31.288862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066762, -0.099589, 0.992786,
		-0.342878, 0.936700, 0.070905,
		-0.937005, -0.335671, -0.096683,
		36.285774, 30.764248, 31.259857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586754, 31.421324, 31.854153>,  <36.941677, 30.999216, 31.327536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586754, 31.421324, 31.854153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377731, 31.093861, 31.758879>,  <36.252319, 30.897383, 31.701714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377731, 31.093861, 31.758879>,  <36.586754, 31.421324, 31.854153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377731, 31.093861, 31.758879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288075, -0.093404, 0.953042,
		-0.802464, 0.566633, -0.187026,
		-0.522555, -0.818659, -0.238186,
		36.220966, 30.848263, 31.687424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883343, 31.488308, 32.173374>,  <36.586754, 31.421324, 31.854153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883343, 31.488308, 32.173374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949001, 31.095621, 32.134827>,  <35.988396, 30.860008, 32.111698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949001, 31.095621, 32.134827>,  <35.883343, 31.488308, 32.173374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949001, 31.095621, 32.134827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321820, -0.145641, 0.935532,
		-0.932463, -0.122555, -0.339843,
		0.164149, -0.981718, -0.096365,
		35.998245, 30.801105, 32.105919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252174, 31.159359, 32.448814>,  <35.883343, 31.488308, 32.173374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252174, 31.159359, 32.448814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527069, 30.869411, 32.467892>,  <35.692005, 30.695442, 32.479340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527069, 30.869411, 32.467892>,  <35.252174, 31.159359, 32.448814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527069, 30.869411, 32.467892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363836, -0.286628, 0.886266,
		-0.628757, -0.626424, -0.460714,
		0.687232, -0.724871, 0.047696,
		35.733238, 30.651951, 32.482201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897717, 30.486151, 32.523617>,  <35.252174, 31.159359, 32.448814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897717, 30.486151, 32.523617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263168, 30.451418, 32.682487>,  <35.482437, 30.430578, 32.777809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263168, 30.451418, 32.682487>,  <34.897717, 30.486151, 32.523617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263168, 30.451418, 32.682487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401735, -0.342840, 0.849158,
		0.062436, -0.935372, -0.348110,
		0.913626, -0.086830, 0.397177,
		35.537254, 30.425369, 32.801640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799923, 29.849319, 32.964485>,  <34.897717, 30.486151, 32.523617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799923, 29.849319, 32.964485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131989, 30.036165, 33.086224>,  <35.331230, 30.148273, 33.159267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131989, 30.036165, 33.086224>,  <34.799923, 29.849319, 32.964485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131989, 30.036165, 33.086224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189640, -0.276749, 0.942044,
		0.524271, -0.839769, -0.141164,
		0.830166, 0.467116, 0.304346,
		35.381039, 30.176300, 33.177528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085999, 29.369505, 33.414989>,  <34.799923, 29.849319, 32.964485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085999, 29.369505, 33.414989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254482, 29.720392, 33.507137>,  <35.355572, 29.930925, 33.562428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254482, 29.720392, 33.507137>,  <35.085999, 29.369505, 33.414989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254482, 29.720392, 33.507137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083839, -0.215255, 0.972952,
		0.903081, -0.429128, -0.017122,
		0.421207, 0.877220, 0.230371,
		35.380844, 29.983559, 33.576248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217915, 29.246397, 34.075798>,  <35.085999, 29.369505, 33.414989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217915, 29.246397, 34.075798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224232, 29.646175, 34.064053>,  <35.228024, 29.886042, 34.057007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224232, 29.646175, 34.064053>,  <35.217915, 29.246397, 34.075798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224232, 29.646175, 34.064053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247810, 0.032364, 0.968268,
		0.968680, -0.008015, 0.248183,
		0.015793, 0.999444, -0.029364,
		35.228970, 29.946009, 34.055244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576389, 29.384996, 34.700111>,  <35.217915, 29.246397, 34.075798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576389, 29.384996, 34.700111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387421, 29.724554, 34.605289>,  <35.274040, 29.928289, 34.548397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387421, 29.724554, 34.605289>,  <35.576389, 29.384996, 34.700111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387421, 29.724554, 34.605289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206635, 0.154792, 0.966096,
		0.856808, 0.505389, 0.102284,
		-0.472421, 0.848894, -0.237058,
		35.245693, 29.979223, 34.534172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910049, 29.879379, 35.110603>,  <35.576389, 29.384996, 34.700111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910049, 29.879379, 35.110603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547821, 30.026840, 35.026661>,  <35.330486, 30.115316, 34.976295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547821, 30.026840, 35.026661>,  <35.910049, 29.879379, 35.110603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547821, 30.026840, 35.026661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080788, 0.335777, 0.938471,
		0.416436, 0.866804, -0.274286,
		-0.905569, 0.368654, -0.209857,
		35.276150, 30.137436, 34.963703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884029, 30.527977, 35.403797>,  <35.910049, 29.879379, 35.110603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884029, 30.527977, 35.403797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489014, 30.494888, 35.350239>,  <35.252007, 30.475035, 35.318104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489014, 30.494888, 35.350239>,  <35.884029, 30.527977, 35.403797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489014, 30.494888, 35.350239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156809, 0.444167, 0.882115,
		-0.013500, 0.892117, -0.451603,
		-0.987537, -0.082724, -0.133896,
		35.192753, 30.470072, 35.310070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650627, 31.234297, 35.642765>,  <35.884029, 30.527977, 35.403797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650627, 31.234297, 35.642765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311714, 31.024355, 35.610172>,  <35.108364, 30.898390, 35.590618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311714, 31.024355, 35.610172>,  <35.650627, 31.234297, 35.642765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311714, 31.024355, 35.610172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370027, 0.473231, 0.799458,
		-0.381038, 0.707518, -0.595171,
		-0.847284, -0.524853, -0.081482,
		35.057529, 30.866899, 35.585728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019905, 31.551117, 35.376808>,  <35.650627, 31.234297, 35.642765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019905, 31.551117, 35.376808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931347, 31.262722, 35.639458>,  <34.878212, 31.089685, 35.797047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931347, 31.262722, 35.639458>,  <35.019905, 31.551117, 35.376808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931347, 31.262722, 35.639458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564577, 0.643781, 0.516525,
		-0.795133, -0.256360, -0.549585,
		-0.221396, -0.720989, 0.656627,
		34.864929, 31.046425, 35.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441135, 31.879776, 35.651348>,  <35.019905, 31.551117, 35.376808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441135, 31.879776, 35.651348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524559, 31.575424, 35.897133>,  <34.574612, 31.392813, 36.044605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524559, 31.575424, 35.897133>,  <34.441135, 31.879776, 35.651348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524559, 31.575424, 35.897133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491216, 0.461787, 0.738552,
		-0.845701, -0.455865, -0.277447,
		0.208559, -0.760881, 0.614462,
		34.587128, 31.347160, 36.081470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795887, 31.712154, 35.904819>,  <34.441135, 31.879776, 35.651348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795887, 31.712154, 35.904819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093018, 31.611811, 36.153103>,  <34.271297, 31.551605, 36.302074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093018, 31.611811, 36.153103>,  <33.795887, 31.712154, 35.904819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093018, 31.611811, 36.153103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432362, 0.528115, 0.730861,
		-0.511147, -0.811274, 0.283837,
		0.742827, -0.250857, 0.620708,
		34.315865, 31.536554, 36.339314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490734, 32.415741, 35.929150>,  <33.795887, 31.712154, 35.904819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490734, 32.415741, 35.929150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534756, 32.806362, 35.855137>,  <33.561169, 33.040733, 35.810730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534756, 32.806362, 35.855137>,  <33.490734, 32.415741, 35.929150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534756, 32.806362, 35.855137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288610, -0.146740, -0.946135,
		-0.951101, 0.157526, 0.265693,
		0.110053, 0.976552, -0.185028,
		33.567772, 33.099327, 35.799629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943020, 32.674187, 35.547142>,  <33.490734, 32.415741, 35.929150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943020, 32.674187, 35.547142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268215, 32.895992, 35.476070>,  <33.463333, 33.029076, 35.433426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268215, 32.895992, 35.476070>,  <32.943020, 32.674187, 35.547142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268215, 32.895992, 35.476070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219927, 0.009871, -0.975466,
		-0.539156, 0.832116, 0.129977,
		0.812984, 0.554514, -0.177683,
		33.512112, 33.062347, 35.422764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734386, 33.187359, 34.999607>,  <32.943020, 32.674187, 35.547142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734386, 33.187359, 34.999607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133602, 33.167885, 34.983829>,  <33.373131, 33.156200, 34.974361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133602, 33.167885, 34.983829>,  <32.734386, 33.187359, 34.999607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133602, 33.167885, 34.983829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044669, -0.111397, -0.992772,
		0.043937, 0.992583, -0.113352,
		0.998035, -0.048683, -0.039444,
		33.433014, 33.153278, 34.971996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923328, 33.680630, 34.503433>,  <32.734386, 33.187359, 34.999607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923328, 33.680630, 34.503433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220108, 33.413895, 34.531258>,  <33.398178, 33.253853, 34.547951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220108, 33.413895, 34.531258>,  <32.923328, 33.680630, 34.503433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220108, 33.413895, 34.531258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093469, 0.000146, -0.995622,
		0.663905, 0.745206, 0.062437,
		0.741953, -0.666834, 0.069557,
		33.442696, 33.213844, 34.552124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366470, 33.931198, 34.029526>,  <32.923328, 33.680630, 34.503433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366470, 33.931198, 34.029526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464272, 33.547977, 34.089333>,  <33.522953, 33.318047, 34.125217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464272, 33.547977, 34.089333>,  <33.366470, 33.931198, 34.029526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464272, 33.547977, 34.089333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175127, -0.108029, -0.978601,
		0.953702, 0.265457, 0.141367,
		0.244505, -0.958051, 0.149516,
		33.537624, 33.260563, 34.134186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075832, 33.883678, 33.684219>,  <33.366470, 33.931198, 34.029526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075832, 33.883678, 33.684219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903980, 33.527199, 33.742432>,  <33.800869, 33.313309, 33.777359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903980, 33.527199, 33.742432>,  <34.075832, 33.883678, 33.684219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903980, 33.527199, 33.742432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161433, -0.234364, -0.958652,
		0.888459, -0.388370, 0.244558,
		-0.429627, -0.891203, 0.145527,
		33.775093, 33.259838, 33.786091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484749, 33.482227, 33.205074>,  <34.075832, 33.883678, 33.684219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484749, 33.482227, 33.205074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146465, 33.285042, 33.286816>,  <33.943493, 33.166733, 33.335861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146465, 33.285042, 33.286816>,  <34.484749, 33.482227, 33.205074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146465, 33.285042, 33.286816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023770, -0.417366, -0.908428,
		0.533109, -0.763411, 0.364689,
		-0.845713, -0.492959, 0.204355,
		33.892750, 33.137154, 33.348122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565453, 32.887779, 32.842758>,  <34.484749, 33.482227, 33.205074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565453, 32.887779, 32.842758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171055, 32.924362, 32.898556>,  <33.934418, 32.946312, 32.932034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171055, 32.924362, 32.898556>,  <34.565453, 32.887779, 32.842758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171055, 32.924362, 32.898556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163664, -0.368978, -0.914915,
		-0.032209, -0.924927, 0.378778,
		-0.985990, 0.091461, 0.139493,
		33.875259, 32.951801, 32.940403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253796, 32.526913, 32.327057>,  <34.565453, 32.887779, 32.842758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253796, 32.526913, 32.327057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927567, 32.722225, 32.451267>,  <33.731831, 32.839413, 32.525795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927567, 32.722225, 32.451267>,  <34.253796, 32.526913, 32.327057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927567, 32.722225, 32.451267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403593, -0.095433, -0.909948,
		-0.414673, -0.867454, 0.274898,
		-0.815573, 0.488278, 0.310525,
		33.682896, 32.868710, 32.544426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690109, 32.197094, 32.078236>,  <34.253796, 32.526913, 32.327057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690109, 32.197094, 32.078236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558811, 32.570389, 32.136642>,  <33.480034, 32.794365, 32.171688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558811, 32.570389, 32.136642>,  <33.690109, 32.197094, 32.078236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558811, 32.570389, 32.136642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349279, 0.023717, -0.936718,
		-0.877646, -0.358471, 0.318176,
		-0.328241, 0.933239, 0.146022,
		33.460339, 32.850361, 32.180450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126831, 32.147228, 31.713633>,  <33.690109, 32.197094, 32.078236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126831, 32.147228, 31.713633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199596, 32.539795, 31.738081>,  <33.243256, 32.775333, 31.752750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199596, 32.539795, 31.738081>,  <33.126831, 32.147228, 31.713633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199596, 32.539795, 31.738081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274884, 0.110436, -0.955114,
		-0.944111, 0.156947, 0.289865,
		0.181914, 0.981413, 0.061122,
		33.254169, 32.834217, 31.756418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512638, 32.471180, 31.398079>,  <33.126831, 32.147228, 31.713633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512638, 32.471180, 31.398079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818714, 32.725666, 31.358658>,  <33.002357, 32.878357, 31.335005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818714, 32.725666, 31.358658>,  <32.512638, 32.471180, 31.398079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818714, 32.725666, 31.358658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190231, 0.077185, -0.978701,
		-0.615061, 0.767638, 0.180089,
		0.765188, 0.636219, -0.098555,
		33.048271, 32.916531, 31.329092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310421, 32.942268, 30.866673>,  <32.512638, 32.471180, 31.398079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310421, 32.942268, 30.866673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700989, 33.027515, 30.880487>,  <32.935329, 33.078663, 30.888777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700989, 33.027515, 30.880487>,  <32.310421, 32.942268, 30.866673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700989, 33.027515, 30.880487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001133, 0.154915, -0.987927,
		-0.215894, 0.964667, 0.151020,
		0.976416, 0.213116, 0.034538,
		32.993912, 33.091450, 30.890848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390720, 33.710289, 30.556839>,  <32.310421, 32.942268, 30.866673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390720, 33.710289, 30.556839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722309, 33.487053, 30.542179>,  <32.921265, 33.353111, 30.533384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722309, 33.487053, 30.542179>,  <32.390720, 33.710289, 30.556839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722309, 33.487053, 30.542179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133031, 0.260400, -0.956292,
		0.543236, 0.787866, 0.290108,
		0.828974, -0.558086, -0.036648,
		32.971001, 33.319626, 30.531185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687798, 34.038872, 30.087498>,  <32.390720, 33.710289, 30.556839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687798, 34.038872, 30.087498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900856, 33.701038, 30.109299>,  <33.028690, 33.498341, 30.122379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900856, 33.701038, 30.109299>,  <32.687798, 34.038872, 30.087498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900856, 33.701038, 30.109299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277676, 0.113561, -0.953939,
		0.799490, 0.523246, 0.295007,
		0.532647, -0.844581, 0.054502,
		33.060650, 33.447662, 30.125648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457306, 34.182312, 29.974150>,  <32.687798, 34.038872, 30.087498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457306, 34.182312, 29.974150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426800, 33.791058, 29.896759>,  <33.408497, 33.556305, 29.850325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426800, 33.791058, 29.896759>,  <33.457306, 34.182312, 29.974150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426800, 33.791058, 29.896759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206067, 0.174391, -0.962873,
		0.975562, -0.113300, 0.188262,
		-0.076262, -0.978137, -0.193476,
		33.403923, 33.497616, 29.838717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124981, 33.960228, 29.511770>,  <33.457306, 34.182312, 29.974150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124981, 33.960228, 29.511770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830406, 33.694256, 29.461906>,  <33.653664, 33.534676, 29.431988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830406, 33.694256, 29.461906>,  <34.124981, 33.960228, 29.511770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830406, 33.694256, 29.461906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059932, 0.119424, -0.991033,
		0.673851, -0.737300, -0.048098,
		-0.736433, -0.664926, -0.124661,
		33.609478, 33.494778, 29.424507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333870, 33.525425, 28.872675>,  <34.124981, 33.960228, 29.511770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333870, 33.525425, 28.872675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938572, 33.466240, 28.888096>,  <33.701393, 33.430729, 28.897348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938572, 33.466240, 28.888096>,  <34.333870, 33.525425, 28.872675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938572, 33.466240, 28.888096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059001, 0.136390, -0.988897,
		0.141109, -0.979536, -0.143518,
		-0.988235, -0.148009, 0.038547,
		33.642101, 33.421848, 28.899662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146954, 33.135208, 28.226109>,  <34.333870, 33.525425, 28.872675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146954, 33.135208, 28.226109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811634, 33.308907, 28.357979>,  <33.610443, 33.413124, 28.437101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811634, 33.308907, 28.357979>,  <34.146954, 33.135208, 28.226109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811634, 33.308907, 28.357979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139092, 0.414330, -0.899436,
		-0.527171, -0.799850, -0.286932,
		-0.838298, 0.434247, 0.329675,
		33.560146, 33.439182, 28.456881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671200, 33.027344, 27.697392>,  <34.146954, 33.135208, 28.226109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671200, 33.027344, 27.697392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498909, 33.335575, 27.885300>,  <33.395535, 33.520515, 27.998045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498909, 33.335575, 27.885300>,  <33.671200, 33.027344, 27.697392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498909, 33.335575, 27.885300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290965, 0.374164, -0.880534,
		-0.854292, -0.515955, 0.063050,
		-0.430725, 0.770579, 0.469770,
		33.369690, 33.566750, 28.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137081, 33.152332, 27.285952>,  <33.671200, 33.027344, 27.697392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137081, 33.152332, 27.285952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135948, 33.489815, 27.500668>,  <33.135269, 33.692307, 27.629498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135948, 33.489815, 27.500668>,  <33.137081, 33.152332, 27.285952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135948, 33.489815, 27.500668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346915, 0.502626, -0.791844,
		-0.937892, -0.188467, 0.291271,
		-0.002836, 0.843711, 0.536791,
		33.135098, 33.742928, 27.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494720, 33.389580, 27.174526>,  <33.137081, 33.152332, 27.285952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494720, 33.389580, 27.174526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734055, 33.696873, 27.265579>,  <32.877655, 33.881248, 27.320211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734055, 33.696873, 27.265579>,  <32.494720, 33.389580, 27.174526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734055, 33.696873, 27.265579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349870, 0.506082, -0.788335,
		-0.720827, 0.392043, 0.571587,
		0.598331, 0.768234, 0.227634,
		32.913555, 33.927341, 27.333870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121048, 33.980034, 27.138796>,  <32.494720, 33.389580, 27.174526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121048, 33.980034, 27.138796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489281, 34.132008, 27.102625>,  <32.710220, 34.223190, 27.080921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489281, 34.132008, 27.102625>,  <32.121048, 33.980034, 27.138796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489281, 34.132008, 27.102625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262473, 0.430426, -0.863621,
		-0.289194, 0.818771, 0.495965,
		0.920584, 0.379931, -0.090429,
		32.765457, 34.245987, 27.075497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995691, 34.705322, 26.769737>,  <32.121048, 33.980034, 27.138796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995691, 34.705322, 26.769737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382492, 34.604572, 26.754438>,  <32.614574, 34.544121, 26.745258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382492, 34.604572, 26.754438>,  <31.995691, 34.705322, 26.769737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382492, 34.604572, 26.754438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022160, 0.232721, -0.972291,
		0.253797, 0.939361, 0.230623,
		0.967004, -0.251875, -0.038248,
		32.672592, 34.529011, 26.742964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320084, 35.289886, 26.498583>,  <31.995691, 34.705322, 26.769737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320084, 35.289886, 26.498583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535934, 34.972668, 26.385527>,  <32.665443, 34.782337, 26.317694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535934, 34.972668, 26.385527>,  <32.320084, 35.289886, 26.498583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535934, 34.972668, 26.385527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055938, 0.368744, -0.927846,
		0.840046, 0.484877, 0.243344,
		0.539623, -0.793046, -0.282639,
		32.697823, 34.734753, 26.300735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896633, 35.571938, 26.018240>,  <32.320084, 35.289886, 26.498583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896633, 35.571938, 26.018240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825726, 35.187862, 25.931877>,  <32.783180, 34.957417, 25.880058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825726, 35.187862, 25.931877>,  <32.896633, 35.571938, 26.018240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825726, 35.187862, 25.931877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070530, 0.206425, -0.975917,
		0.981631, -0.188230, 0.031129,
		-0.177272, -0.960187, -0.215909,
		32.772545, 34.899807, 25.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315823, 35.435108, 25.390352>,  <32.896633, 35.571938, 26.018240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315823, 35.435108, 25.390352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041630, 35.144291, 25.405993>,  <32.877113, 34.969803, 25.415377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041630, 35.144291, 25.405993>,  <33.315823, 35.435108, 25.390352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041630, 35.144291, 25.405993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139942, 0.078860, -0.987014,
		0.714516, -0.682051, -0.155800,
		-0.685481, -0.727040, 0.039101,
		32.835987, 34.926178, 25.417723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988468, 35.680729, 25.457052>,  <33.315823, 35.435108, 25.390352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988468, 35.680729, 25.457052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105591, 36.058147, 25.395113>,  <34.175865, 36.284599, 25.357950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105591, 36.058147, 25.395113>,  <33.988468, 35.680729, 25.457052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105591, 36.058147, 25.395113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152937, 0.113645, 0.981679,
		0.943862, -0.311122, -0.111028,
		0.292804, 0.943551, -0.154847,
		34.193432, 36.341213, 25.348660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434643, 35.704239, 26.031132>,  <33.988468, 35.680729, 25.457052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434643, 35.704239, 26.031132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377975, 36.071602, 25.883373>,  <34.343975, 36.292019, 25.794718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377975, 36.071602, 25.883373>,  <34.434643, 35.704239, 26.031132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377975, 36.071602, 25.883373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226466, 0.393335, 0.891067,
		0.963661, 0.042582, -0.263713,
		-0.141671, 0.918409, -0.369398,
		34.335476, 36.347126, 25.772554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010082, 36.062786, 26.096985>,  <34.434643, 35.704239, 26.031132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010082, 36.062786, 26.096985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700542, 36.315998, 26.105303>,  <34.514820, 36.467926, 26.110292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700542, 36.315998, 26.105303>,  <35.010082, 36.062786, 26.096985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700542, 36.315998, 26.105303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032440, 0.006826, 0.999450,
		0.632543, 0.774095, -0.025818,
		-0.773846, 0.633033, 0.020793,
		34.468388, 36.505909, 26.111542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276917, 36.652710, 26.514044>,  <35.010082, 36.062786, 26.096985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276917, 36.652710, 26.514044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877930, 36.680576, 26.508383>,  <34.638538, 36.697296, 26.504986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877930, 36.680576, 26.508383>,  <35.276917, 36.652710, 26.514044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877930, 36.680576, 26.508383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007608, 0.093346, 0.995605,
		0.070677, 0.993194, -0.092579,
		-0.997470, 0.069662, -0.014153,
		34.578690, 36.701473, 26.504137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118401, 37.210815, 26.965986>,  <35.276917, 36.652710, 26.514044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118401, 37.210815, 26.965986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783428, 36.992371, 26.957312>,  <34.582443, 36.861305, 26.952106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783428, 36.992371, 26.957312>,  <35.118401, 37.210815, 26.965986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783428, 36.992371, 26.957312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006595, -0.049772, 0.998739,
		-0.546500, 0.836234, 0.045282,
		-0.837433, -0.546109, -0.021685,
		34.532200, 36.828537, 26.950806>
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
